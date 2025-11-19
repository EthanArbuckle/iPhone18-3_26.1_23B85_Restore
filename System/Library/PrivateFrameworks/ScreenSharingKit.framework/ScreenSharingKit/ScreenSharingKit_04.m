uint64_t sub_264A2788C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 208);
  v8 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A279E0, v4, v3);
}

uint64_t sub_264A279E0()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];

  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_264A27AD8(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89890, &qword_264B48610);
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v6 = *(v5 + 64) + 15;
  v2[28] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[29] = v7;
  v8 = *(v7 - 8);
  v2[30] = v8;
  v9 = *(v8 + 64) + 15;
  v2[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89898, &unk_264B48618);
  v2[32] = v10;
  v11 = *(v10 - 8);
  v2[33] = v11;
  v12 = *(v11 + 64) + 15;
  v2[34] = swift_task_alloc();
  v13 = sub_264B3FFD4();
  v2[35] = v13;
  v14 = *(v13 - 8);
  v2[36] = v14;
  v15 = *(v14 + 64) + 15;
  v2[37] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A27D34, 0, 0);
}

uint64_t sub_264A27D34()
{
  v68 = v0;
  v67[1] = *MEMORY[0x277D85DE8];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = sub_264B40964();
  v0[38] = __swift_project_value_buffer(v4, qword_27FFA71D0);
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
    v67[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v67);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 204;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6574617669746361, 0xEA00000000002928, v67);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[24];
  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState))
  {
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, v14, v15, "the video stream was already started", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    v17 = 2;
    goto LABEL_10;
  }

  v27 = v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[39] = Strong;
  if (!Strong)
  {
    v17 = 6;
LABEL_10:
    sub_264A02DF0();
    swift_allocError();
    *v18 = v17;
    swift_willThrow();
    v19 = v0[37];
    v20 = v0[34];
    v21 = v0[31];
    v22 = v0[28];
    v23 = v0[25];

    v24 = v0[1];
    v25 = *MEMORY[0x277D85DE8];

    return v24();
  }

  v64 = *(v27 + 8);
  v65 = Strong;
  v29 = v0[34];
  v30 = v0[30];
  v31 = v0[31];
  v33 = v0[28];
  v32 = v0[29];
  v35 = v0[26];
  v34 = v0[27];
  v36 = v0[25];
  v66 = v0[24];
  (*(v34 + 104))(v33, *MEMORY[0x277D858A0], v35);
  sub_264B41344();
  (*(v34 + 8))(v33, v35);
  (*(v30 + 16))(v36, v31, v32);
  (*(v30 + 56))(v36, 0, 1, v32);
  v37 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v36, v66 + v37, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  if (*(v66 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role))
  {
    v38 = *(v0[24] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream);
    v0[2] = v0;
    v0[3] = sub_264A289D4;
    v39 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2649F4D64;
    v0[13] = &block_descriptor_4;
    v0[14] = v39;
    [v38 activateWithCompletion_];
    v40 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x277CE5708]);
    v0[21] = 0;
    v42 = [v41 initWithMode:10 error:v0 + 21];
    v0[40] = v42;
    v43 = v0[21];
    if (v42)
    {
      v44 = v0[24];
      v45 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
      *(v44 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator) = v42;
      v46 = v42;
      v47 = v43;
      v48 = v46;

      v49 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType);
      v50 = [v48 offer];
      v51 = sub_264B40024();
      v53 = v52;

      v0[41] = v51;
      v0[42] = v53;
      v54 = swift_task_alloc();
      v0[43] = v54;
      *v54 = v0;
      v54[1] = sub_264A28544;
      v55 = *MEMORY[0x277D85DE8];

      return sub_264AEA118(v65, v64, v49, v51, v53);
    }

    else
    {
      v56 = v43;
      v57 = sub_264B3FF84();
      v0[45] = v57;

      swift_willThrow();
      v58 = sub_264B40944();
      v59 = sub_264B41494();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2649C6000, v58, v59, "failed to create negotiator for audio stream", v60, 2u);
        MEMORY[0x266749940](v60, -1, -1);
      }

      v61 = swift_task_alloc();
      v0[47] = v61;
      *v61 = v0;
      v61[1] = sub_264A28C64;
      v62 = v0[24];
      v63 = *MEMORY[0x277D85DE8];

      return sub_264ADE41C(v57);
    }
  }
}

uint64_t sub_264A28544()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_264A287DC;
  }

  else
  {
    sub_2649DEF6C(*(v2 + 328), *(v2 + 336));
    v4 = sub_264A28694;
  }

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264A28694()
{
  v16 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v9 = *(v0 + 184);
  v9[3] = v5;
  v9[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_264A287DC()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = v0[44];
  v2 = v0[38];
  sub_2649DEF6C(v0[41], v0[42]);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446210;
    v0[22] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send negotiation offer for audio stream: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[48] = v13;
  *v13 = v0;
  v13[1] = sub_264A28ED4;
  v14 = v0[44];
  v15 = v0[24];
  v16 = *MEMORY[0x277D85DE8];

  return sub_264ADE41C(v14);
}

uint64_t sub_264A289D4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_264A29150;
  }

  else
  {
    v3 = sub_264A28B10;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A28B10()
{
  v16 = *MEMORY[0x277D85DE8];
  *(v0[24] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated) = 1;
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v14 = v0[28];
  v15 = v0[25];
  v9 = v0[23];
  v9[3] = v5;
  v9[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_264A28C64()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 376);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A28D8C, 0, 0);
}

uint64_t sub_264A28D8C()
{
  v16 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v9 = *(v0 + 184);
  v9[3] = v5;
  v9[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_264A28ED4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 384);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A28FFC, 0, 0);
}

uint64_t sub_264A28FFC()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);

  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  v15 = *(v0 + 224);
  v16 = *(v0 + 200);
  v10 = *(v0 + 184);
  v10[3] = v6;
  v10[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  swift_unknownObjectRelease();
  (*(v9 + 8))(v7, v8);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_264A29150()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v2 = v0[39];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = v0[46];
  v10 = v0[37];
  v11 = v0[34];
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[25];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_264A29280()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = sub_264B41244();
  v1[7] = sub_264B41234();
  v6 = sub_264B411C4();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x2822009F8](sub_264A29378, v6, v5);
}

uint64_t sub_264A29378()
{
  v51 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
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
    v50 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v50);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 254;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v50);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState];
  if (v14 == 4)
  {
    v31 = v13;
    v32 = sub_264B40944();
    v33 = sub_264B414B4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[2];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136446210;
      v37 = v34;
      v38 = [v37 description];
      v39 = sub_264B41044();
      v41 = v40;

      v42 = sub_2649CC004(v39, v41, &v50);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_2649C6000, v32, v33, "%{public}s is already invalidating, holding until complete", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x266749940](v36, -1, -1);
      MEMORY[0x266749940](v35, -1, -1);
    }

    v43 = v0[6];
    v44 = v0[2];
    v0[12] = sub_264B41234();
    v45 = swift_task_alloc();
    v0[13] = v45;
    *(v45 + 16) = v44;
    v46 = *(MEMORY[0x277D859E0] + 4);
    v47 = swift_task_alloc();
    v0[14] = v47;
    *v47 = v0;
    v47[1] = sub_264A29AFC;

    return MEMORY[0x2822007B8]();
  }

  else if (v14 == 5)
  {
    v15 = v0[7];

    v16 = v13;
    v17 = sub_264B40944();
    v18 = sub_264B414B4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v50 = v21;
      *v20 = 136446210;
      v22 = v19;
      v23 = [v22 description];
      v24 = sub_264B41044();
      v26 = v25;

      v27 = sub_2649CC004(v24, v26, &v50);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_2649C6000, v17, v18, "%{public}s is already invalidated, bailing", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v28 = v0[5];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState] = 4;
    LOBYTE(v50) = v14;
    sub_264A24930(&v50);
    v48 = swift_task_alloc();
    v0[11] = v48;
    *v48 = v0;
    v48[1] = sub_264A29974;
    v49 = v0[2];

    return sub_264A2A02C();
  }
}

uint64_t sub_264A29974()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_264A29A94, v4, v3);
}

uint64_t sub_264A29A94()
{
  v1 = v0[7];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A29AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_264A29C5C, v6, v5);
}

uint64_t sub_264A29C5C()
{
  v20 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];

  v4 = v3;
  v5 = sub_264B40944();
  v6 = sub_264B414B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = v7;
    v11 = [v10 description];
    v12 = sub_264B41044();
    v14 = v13;

    v15 = sub_2649CC004(v12, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v5, v6, "%{public}s, existing invalidation complete, returning", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_264A29DF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B40944();
  v11 = sub_264B414B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2649C6000, v10, v11, "Adding to tearing down continuations", v12, 2u);
    MEMORY[0x266749940](v12, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations;
  v14 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_2649D8028(0, v14[2] + 1, 1, v14);
    *(a2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_2649D8028(v16 > 1, v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v8, v4);
  *(a2 + v13) = v14;
  return result;
}

uint64_t sub_264A2A02C()
{
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v1[26] = v10;
  v11 = *(v10 - 8);
  v1[27] = v11;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v14 = sub_264B3FFD4();
  v1[31] = v14;
  v15 = *(v14 - 8);
  v1[32] = v15;
  v16 = *(v15 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = sub_264B41244();
  v1[35] = sub_264B41234();
  v18 = sub_264B411C4();
  v1[36] = v18;
  v1[37] = v17;

  return MEMORY[0x2822009F8](sub_264A2A328, v18, v17);
}

uint64_t sub_264A2A328()
{
  v111 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState;
  if (*(v1 + v2) != 4)
  {
    return sub_264B41874();
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = sub_264B40964();
  *(v0 + 312) = __swift_project_value_buffer(v6, qword_27FFA71D0);
  v7 = sub_264B414B4();
  sub_264B3FF94();
  v8 = sub_264B3FFA4();
  v10 = v9;
  (*(v4 + 8))(v3, v5);

  v11 = sub_264B40944();

  if (os_log_type_enabled(v11, v7))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v110 = v13;
    *v12 = 136446722;
    v14 = sub_2649CC004(v8, v10, &v110);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2050;
    *(v12 + 14) = 285;
    *(v12 + 22) = 2082;
    *(v12 + 24) = sub_2649CC004(0x6E776F4472616574, 0xEA00000000002928, &v110);
    _os_log_impl(&dword_2649C6000, v11, v7, "%{public}s:%{public}ld %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 120);
  *(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated) = 0;
  v17 = *(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream);
  *(v0 + 320) = v17;
  if (v17)
  {
    v18 = *(v0 + 120);
    v19 = v17;
    v20 = v18;
    v21 = sub_264B40944();
    v22 = sub_264B414B4();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 120);
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 67240192;
      *(v25 + 4) = v24[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning];

      _os_log_impl(&dword_2649C6000, v21, v22, "Attempting to stop audio stream, isAudioStreamRunning == %{BOOL,public}d", v25, 8u);
      MEMORY[0x266749940](v25, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 272);
    v34 = *(v0 + 120);
    *(v0 + 328) = sub_264B41234();
    v35 = swift_task_alloc();
    *(v0 + 336) = v35;
    *(v35 + 16) = v34;
    *(v35 + 24) = v19;
    v36 = *(MEMORY[0x277D859E0] + 4);
    v37 = swift_task_alloc();
    *(v0 + 344) = v37;
    *v37 = v0;
    v37[1] = sub_264A2AEE4;

    return MEMORY[0x2822007B8]();
  }

  v26 = *(v0 + 240);
  v27 = *(v0 + 208);
  v28 = *(v0 + 216);
  v29 = *(v0 + 120);
  v30 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v29 + v30, v26, &qword_27FF89858, &qword_264B485E8);
  v31 = (*(v28 + 48))(v26, 1, v27);
  v32 = *(v0 + 240);
  if (v31)
  {
    sub_2649D04D4(*(v0 + 240), &qword_27FF89858, &qword_264B485E8);
  }

  else
  {
    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v40 = *(v0 + 208);
    (*(v39 + 16))(v38, *(v0 + 240), v40);
    sub_2649D04D4(v32, &qword_27FF89858, &qword_264B485E8);
    sub_264B412B4();
    (*(v39 + 8))(v38, v40);
  }

  v41 = *(v0 + 232);
  v42 = *(v0 + 120);
  (*(*(v0 + 216) + 56))(v41, 1, 1, *(v0 + 208));
  swift_beginAccess();
  sub_2649FECCC(v41, v29 + v30, &qword_27FF89858, &qword_264B485E8);
  swift_endAccess();
  v43 = v42 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {
    v47 = *(v0 + 280);

    goto LABEL_22;
  }

  v45 = *(v0 + 120);
  if (*(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError))
  {
    v46 = *(v0 + 280);

    swift_unknownObjectRelease();
LABEL_22:
    v48 = *(v0 + 304);
    v49 = *(v0 + 192);
    v50 = *(v0 + 152);
    v51 = *(v0 + 160);
    v52 = *(v0 + 120);
    [*(v52 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
    v53 = *(v52 + v48);
    *(v52 + v48) = 5;
    v109 = v53;
    sub_264A24930(&v109);
    v54 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v52 + v54, v49, &qword_27FF89850, &qword_264B485E0);
    v55 = *(v51 + 48);
    if (v55(v49, 1, v50))
    {
      sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
      v56 = 1;
    }

    else
    {
      v57 = *(v0 + 192);
      v107 = *(v0 + 304);
      v59 = *(v0 + 160);
      v58 = *(v0 + 168);
      v60 = *(v0 + 152);
      v61 = *(v0 + 120);
      (*(v59 + 16))(v58, v57, v60);
      sub_2649D04D4(v57, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 384) = *(v61 + v107);
      sub_264B41374();
      (*(v59 + 8))(v58, v60);
      v56 = 0;
    }

    v62 = *(v0 + 200);
    v63 = *(v0 + 184);
    v64 = *(v0 + 152);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v65 - 8) + 56))(v62, v56, 1, v65);
    sub_2649D04D4(v62, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v52 + v54, v63, &qword_27FF89850, &qword_264B485E0);
    v66 = v55(v63, 1, v64);
    v67 = *(v0 + 184);
    if (v66)
    {
      sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v69 = *(v0 + 160);
      v68 = *(v0 + 168);
      v70 = *(v0 + 152);
      (*(v69 + 16))(v68, *(v0 + 184), v70);
      sub_2649D04D4(v67, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 112) = 0;
      sub_264B41384();
      (*(v69 + 8))(v68, v70);
    }

    v71 = *(v0 + 176);
    v72 = *(v0 + 120);
    (*(*(v0 + 160) + 56))(v71, 1, 1, *(v0 + 152));
    swift_beginAccess();
    sub_2649FECCC(v71, v52 + v54, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v73 = *(v72 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
    *(v72 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = *(v0 + 312);

      v76 = sub_264B40944();
      v77 = sub_264B414B4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 134217984;
        *(v78 + 4) = *(v73 + 16);

        _os_log_impl(&dword_2649C6000, v76, v77, "Resuming %ld waiting invalidations", v78, 0xCu);
        MEMORY[0x266749940](v78, -1, -1);
      }

      else
      {
      }

      v79 = *(v0 + 136);
      v82 = *(v79 + 16);
      v80 = v79 + 16;
      v81 = v82;
      v83 = v73 + ((*(v80 + 64) + 32) & ~*(v80 + 64));
      v84 = *(v80 + 56);
      do
      {
        v85 = *(v0 + 144);
        v86 = *(v0 + 128);
        v81(v85, v83, v86);
        sub_264B411E4();
        (*(v80 - 8))(v85, v86);
        v83 += v84;
        --v74;
      }

      while (v74);
    }

    v87 = *(v0 + 264);
    v88 = *(v0 + 232);
    v89 = *(v0 + 240);
    v90 = *(v0 + 224);
    v92 = *(v0 + 192);
    v91 = *(v0 + 200);
    v94 = *(v0 + 176);
    v93 = *(v0 + 184);
    v95 = *(v0 + 168);
    v96 = *(v0 + 144);

    v97 = *(v0 + 8);

    return v97();
  }

  v98 = *(v43 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 385) = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType);
  v100 = *MEMORY[0x277D44228];
  v101 = sub_264B41044();
  v103 = v102;
  *(v0 + 360) = v102;
  v104 = *(v98 + 144);
  v108 = (v104 + *v104);
  v105 = v104[1];
  v106 = swift_task_alloc();
  *(v0 + 368) = v106;
  *v106 = v0;
  v106[1] = sub_264A2B87C;

  return v108(v0 + 385, v101, v103, ObjectType, v98);
}

uint64_t sub_264A2AEE4()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v8 = *v0;

  v5 = *(v1 + 296);
  v6 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_264A2B044, v6, v5);
}

uint64_t sub_264A2B044()
{
  v86 = v0;
  v1 = *(v0 + 312);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Audio stream did stop cleanly", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 320);

  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 120);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v9 + v10, v6, &qword_27FF89858, &qword_264B485E8);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = *(v0 + 240);
  if (v11)
  {
    sub_2649D04D4(*(v0 + 240), &qword_27FF89858, &qword_264B485E8);
  }

  else
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 208);
    (*(v14 + 16))(v13, *(v0 + 240), v15);
    sub_2649D04D4(v12, &qword_27FF89858, &qword_264B485E8);
    sub_264B412B4();
    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 232);
  v17 = *(v0 + 120);
  (*(*(v0 + 216) + 56))(v16, 1, 1, *(v0 + 208));
  swift_beginAccess();
  sub_2649FECCC(v16, v9 + v10, &qword_27FF89858, &qword_264B485E8);
  swift_endAccess();
  v18 = v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {
    v22 = *(v0 + 280);

    goto LABEL_10;
  }

  v20 = *(v0 + 120);
  if (*(v20 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError))
  {
    v21 = *(v0 + 280);

    swift_unknownObjectRelease();
LABEL_10:
    v23 = *(v0 + 304);
    v24 = *(v0 + 192);
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);
    v27 = *(v0 + 120);
    [*(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
    v28 = *(v27 + v23);
    *(v27 + v23) = 5;
    v85 = v28;
    sub_264A24930(&v85);
    v29 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v27 + v29, v24, &qword_27FF89850, &qword_264B485E0);
    v30 = *(v26 + 48);
    if (v30(v24, 1, v25))
    {
      sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
      v31 = 1;
    }

    else
    {
      v32 = *(v0 + 192);
      v83 = *(v0 + 304);
      v34 = *(v0 + 160);
      v33 = *(v0 + 168);
      v35 = *(v0 + 152);
      v36 = *(v0 + 120);
      (*(v34 + 16))(v33, v32, v35);
      sub_2649D04D4(v32, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 384) = *(v36 + v83);
      sub_264B41374();
      (*(v34 + 8))(v33, v35);
      v31 = 0;
    }

    v37 = *(v0 + 200);
    v38 = *(v0 + 184);
    v39 = *(v0 + 152);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v40 - 8) + 56))(v37, v31, 1, v40);
    sub_2649D04D4(v37, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v27 + v29, v38, &qword_27FF89850, &qword_264B485E0);
    v41 = v30(v38, 1, v39);
    v42 = *(v0 + 184);
    if (v41)
    {
      sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v44 = *(v0 + 160);
      v43 = *(v0 + 168);
      v45 = *(v0 + 152);
      (*(v44 + 16))(v43, *(v0 + 184), v45);
      sub_2649D04D4(v42, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 112) = 0;
      sub_264B41384();
      (*(v44 + 8))(v43, v45);
    }

    v46 = *(v0 + 176);
    v47 = *(v0 + 120);
    (*(*(v0 + 160) + 56))(v46, 1, 1, *(v0 + 152));
    swift_beginAccess();
    sub_2649FECCC(v46, v27 + v29, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v48 = *(v47 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
    *(v47 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = *(v0 + 312);

      v51 = sub_264B40944();
      v52 = sub_264B414B4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        *(v53 + 4) = *(v48 + 16);

        _os_log_impl(&dword_2649C6000, v51, v52, "Resuming %ld waiting invalidations", v53, 0xCu);
        MEMORY[0x266749940](v53, -1, -1);
      }

      else
      {
      }

      v54 = *(v0 + 136);
      v57 = *(v54 + 16);
      v55 = v54 + 16;
      v56 = v57;
      v58 = v48 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v59 = *(v55 + 56);
      do
      {
        v60 = *(v0 + 144);
        v61 = *(v0 + 128);
        v56(v60, v58, v61);
        sub_264B411E4();
        (*(v55 - 8))(v60, v61);
        v58 += v59;
        --v49;
      }

      while (v49);
    }

    v62 = *(v0 + 264);
    v63 = *(v0 + 232);
    v64 = *(v0 + 240);
    v65 = *(v0 + 224);
    v67 = *(v0 + 192);
    v66 = *(v0 + 200);
    v69 = *(v0 + 176);
    v68 = *(v0 + 184);
    v70 = *(v0 + 168);
    v71 = *(v0 + 144);

    v72 = *(v0 + 8);

    return v72();
  }

  v74 = *(v18 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 385) = *(v20 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType);
  v76 = *MEMORY[0x277D44228];
  v77 = sub_264B41044();
  v79 = v78;
  *(v0 + 360) = v78;
  v80 = *(v74 + 144);
  v84 = (v80 + *v80);
  v81 = v80[1];
  v82 = swift_task_alloc();
  *(v0 + 368) = v82;
  *v82 = v0;
  v82[1] = sub_264A2B87C;

  return v84(v0 + 385, v77, v79, ObjectType, v74);
}

uint64_t sub_264A2B87C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_264A2BE98;
  }

  else
  {
    v7 = v2[45];

    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_264A2B998;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_264A2B998()
{
  v56 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);

  swift_unknownObjectRelease();
  v3 = *(v0 + 304);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 120);
  [*(v7 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
  v8 = *(v7 + v3);
  *(v7 + v3) = 5;
  v55 = v8;
  sub_264A24930(&v55);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v7 + v9, v4, &qword_27FF89850, &qword_264B485E0);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 192);
    v54 = *(v0 + 304);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 152);
    v16 = *(v0 + 120);
    (*(v14 + 16))(v13, v12, v15);
    sub_2649D04D4(v12, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v16 + v54);
    sub_264B41374();
    (*(v14 + 8))(v13, v15);
    v11 = 0;
  }

  v17 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 152);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v20 - 8) + 56))(v17, v11, 1, v20);
  sub_2649D04D4(v17, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v7 + v9, v18, &qword_27FF89850, &qword_264B485E0);
  v21 = v10(v18, 1, v19);
  v22 = *(v0 + 184);
  if (v21)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = *(v0 + 152);
    (*(v24 + 16))(v23, *(v0 + 184), v25);
    sub_2649D04D4(v22, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v24 + 8))(v23, v25);
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v26, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v26, v7 + v9, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v28 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v0 + 312);

    v31 = sub_264B40944();
    v32 = sub_264B414B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = *(v28 + 16);

      _os_log_impl(&dword_2649C6000, v31, v32, "Resuming %ld waiting invalidations", v33, 0xCu);
      MEMORY[0x266749940](v33, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 136);
    v37 = *(v34 + 16);
    v35 = v34 + 16;
    v36 = v37;
    v38 = v28 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    do
    {
      v40 = *(v0 + 144);
      v41 = *(v0 + 128);
      v36(v40, v38, v41);
      sub_264B411E4();
      (*(v35 - 8))(v40, v41);
      v38 += v39;
      --v29;
    }

    while (v29);
  }

  v42 = *(v0 + 264);
  v43 = *(v0 + 232);
  v44 = *(v0 + 240);
  v45 = *(v0 + 224);
  v47 = *(v0 + 192);
  v46 = *(v0 + 200);
  v49 = *(v0 + 176);
  v48 = *(v0 + 184);
  v50 = *(v0 + 168);
  v51 = *(v0 + 144);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_264A2BE98()
{
  v68 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);

  v5 = v1;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 376);
  v10 = *(v0 + 352);
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2649C6000, v6, v7, "Failed to send stream invalidation message: %{public}@", v11, 0xCu);
    sub_2649D04D4(v12, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 304);
  v16 = *(v0 + 192);
  v17 = *(v0 + 152);
  v18 = *(v0 + 160);
  v19 = *(v0 + 120);
  [*(v19 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
  v20 = *(v19 + v15);
  *(v19 + v15) = 5;
  v67 = v20;
  sub_264A24930(&v67);
  v21 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v19 + v21, v16, &qword_27FF89850, &qword_264B485E0);
  v22 = *(v18 + 48);
  if (v22(v16, 1, v17))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v23 = 1;
  }

  else
  {
    v24 = *(v0 + 192);
    v66 = *(v0 + 304);
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);
    v27 = *(v0 + 152);
    v28 = *(v0 + 120);
    (*(v26 + 16))(v25, v24, v27);
    sub_2649D04D4(v24, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v28 + v66);
    sub_264B41374();
    (*(v26 + 8))(v25, v27);
    v23 = 0;
  }

  v29 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 152);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v32 - 8) + 56))(v29, v23, 1, v32);
  sub_2649D04D4(v29, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v19 + v21, v30, &qword_27FF89850, &qword_264B485E0);
  v33 = v22(v30, 1, v31);
  v34 = *(v0 + 184);
  if (v33)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);
    v37 = *(v0 + 152);
    (*(v36 + 16))(v35, *(v0 + 184), v37);
    sub_2649D04D4(v34, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v36 + 8))(v35, v37);
  }

  v38 = *(v0 + 176);
  v39 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v38, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v38, v19 + v21, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v40 = *(v39 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
  *(v39 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v0 + 312);

    v43 = sub_264B40944();
    v44 = sub_264B414B4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = *(v40 + 16);

      _os_log_impl(&dword_2649C6000, v43, v44, "Resuming %ld waiting invalidations", v45, 0xCu);
      MEMORY[0x266749940](v45, -1, -1);
    }

    else
    {
    }

    v46 = *(v0 + 136);
    v49 = *(v46 + 16);
    v47 = v46 + 16;
    v48 = v49;
    v50 = v40 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
    v51 = *(v47 + 56);
    do
    {
      v52 = *(v0 + 144);
      v53 = *(v0 + 128);
      v48(v52, v50, v53);
      sub_264B411E4();
      (*(v47 - 8))(v52, v53);
      v50 += v51;
      --v41;
    }

    while (v41);
  }

  v54 = *(v0 + 264);
  v55 = *(v0 + 232);
  v56 = *(v0 + 240);
  v57 = *(v0 + 224);
  v59 = *(v0 + 192);
  v58 = *(v0 + 200);
  v61 = *(v0 + 176);
  v60 = *(v0 + 184);
  v62 = *(v0 + 168);
  v63 = *(v0 + 144);

  v64 = *(v0 + 8);

  return v64();
}

id sub_264A2C4A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamDidStopContinuation;
  swift_beginAccess();
  sub_2649FECCC(v9, a2 + v12, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  return [a3 stop];
}

void sub_264A2C638()
{
  sub_264A2C814(319, &qword_27FF897C0, &qword_27FF897C8, &unk_264B50B00);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_264A2C814(319, &qword_27FF897D0, &qword_27FF88DA8, &qword_264B48500);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_264B40104();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_264A2C814(319, &unk_27FF897E0, &qword_27FF893A0, &unk_264B44E60);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_264A2C814(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264B41614();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_264A2C868()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
  v2 = v1;
  return v1;
}

uint64_t sub_264A2C898(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_264A2C8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  return sub_2649D046C(v1 + v3, a1, &qword_27FF89850, &qword_264B485E0);
}

uint64_t sub_264A2C928(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(a1, v1 + v3, &qword_27FF89850, &qword_264B485E0);
  return swift_endAccess();
}

void *sub_264A2C9A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError);
  v2 = v1;
  return v1;
}

void sub_264A2C9DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError) = a1;
}

uint64_t sub_264A2C9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264A26C3C();
}

uint64_t sub_264A2CA98(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return sub_264A27AD8(a1);
}

uint64_t sub_264A2CB34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CD850;

  return sub_264A29280();
}

uint64_t sub_264A2CBC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89860, &qword_264B485F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v16, v11, &qword_27FF89858, &qword_264B485E8);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_2649D04D4(v11, &qword_27FF89858, &qword_264B485E8);
    v17 = 1;
LABEL_5:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89868, &qword_264B485F8);
    (*(*(v19 - 8) + 56))(v15, v17, 1, v19);
    return sub_2649D04D4(v15, &qword_27FF89860, &qword_264B485F0);
  }

  (*(v4 + 16))(v7, v11, v3);
  result = sub_2649D04D4(v11, &qword_27FF89858, &qword_264B485E8);
  if (a1)
  {
    v20[0] = [a1 streamToken];
    v20[1] = 0;
    v21 = 0;
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v17 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit25MediaTransportAudioStreamC16AVCDelegateEvent33_1825A694C248769AA3E0F65C44D678FELLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_264A2D004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264A2D04C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_264A2D090(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_264A2D0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = 0;
  if (v8(a1, 1, v6) != 1)
  {
    v9 = sub_264B400B4();
    (*(v7 + 8))(a1, v6);
  }

  if (v8(a2, 1, v6) == 1)
  {
    v10 = 0;
    if (a3)
    {
LABEL_5:
      v11 = sub_264B40F54();

      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_264B400B4();
    (*(v7 + 8))(a2, v6);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  v18[0] = 0;
  v12 = [v17 initWithRTPNWConnectionClientID:v9 rtcpNWConnectionClientID:v10 options:v11 error:v18];

  if (v12)
  {
    v13 = v18[0];
  }

  else
  {
    v14 = v18[0];
    sub_264B3FF84();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_264A2D2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_264A5B830(&v38);
  if (!*(&v39 + 1))
  {
LABEL_18:
    sub_264A0E7A0();
  }

  while (1)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_264A23FD8(&v41, v34);
    v15 = *a5;
    v16 = sub_264A20A44(&v35);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_264A21CC8(v21, a4 & 1);
      v23 = *a5;
      v16 = sub_264A20A44(&v35);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v16;
    sub_264A2395C();
    v16 = v31;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_2649C964C(*(*a5 + 56) + 32 * v16, v33);
      __swift_destroy_boxed_opaque_existential_0(v34);
      sub_2649C95C0(&v35);
      v14 = *(v12 + 56);
      __swift_destroy_boxed_opaque_existential_0((v14 + v13));
      sub_264A23FD8(v33, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v35;
    v28 = v36;
    *(v26 + 32) = v37;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_264A23FD8(v34, (v25[7] + 32 * v16));
    v29 = v25[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
LABEL_7:
    sub_264A5B830(&v38);
    a4 = 1;
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

uint64_t sub_264A2D510(uint64_t a1, void *a2)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89860, &qword_264B485F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v17, v12, &qword_27FF89858, &qword_264B485E8);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_2649D04D4(v12, &qword_27FF89858, &qword_264B485E8);
    v18 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_2649D04D4(v12, &qword_27FF89858, &qword_264B485E8);
    v24 = v23 & 1;
    v25 = a2;
    v26 = 1;
    v19 = a2;
    sub_264B412A4();
    (*(v5 + 8))(v8, v4);
    v18 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89868, &qword_264B485F8);
  (*(*(v20 - 8) + 56))(v16, v18, 1, v20);
  return sub_2649D04D4(v16, &qword_27FF89860, &qword_264B485F0);
}

uint64_t sub_264A2D7D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89860, &qword_264B485F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  v14 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v0 + v14, v9, &qword_27FF89858, &qword_264B485E8);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2649D04D4(v9, &qword_27FF89858, &qword_264B485E8);
    v15 = 1;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2649D04D4(v9, &qword_27FF89858, &qword_264B485E8);
    v18[0] = 0;
    v18[1] = 0;
    v19 = 2;
    sub_264B412A4();
    (*(v2 + 8))(v5, v1);
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89868, &qword_264B485F8);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  return sub_2649D04D4(v13, &qword_27FF89860, &qword_264B485F0);
}

unint64_t sub_264A2DAB0()
{
  result = qword_27FF898B0;
  if (!qword_27FF898B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89898, &unk_264B48618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF898B0);
  }

  return result;
}

uint64_t sub_264A2DB14()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A2DB4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A2DC30(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A25774(a1, v6, v7, v1 + v5, v8);
}

void sub_264A2DD5C(int a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_264A2DD70(a1, a2, a3);
  }
}

void sub_264A2DD70(int a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }
}

id sub_264A2DD88(int a1, id a2, char a3)
{
  if (a3 == 1)
  {
    return a2;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264A2DDF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_264A2DE40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_264A2DEA0(void *a1@<X8>)
{
  v2 = sub_264B41014();
  v3 = [objc_opt_self() interfaceWithIdentifier_];

  v4 = [objc_opt_self() protocolForProtocol_];
  [v3 setServer_];

  [v3 setClientMessagingExpectation_];
  [v3 copy];
  sub_264B41664();
  swift_unknownObjectRelease();
  sub_264A2E090();
  if (swift_dynamicCast())
  {
    v5 = [objc_opt_self() userInteractive];

    *a1 = 0xD000000000000028;
    a1[1] = 0x8000000264B5B6E0;
    a1[2] = 0xD000000000000030;
    a1[3] = 0x8000000264B5B710;
    a1[4] = v5;
    a1[5] = v6;
    a1[6] = 0xD000000000000019;
    a1[7] = 0x8000000264B5B7D0;
  }

  else
  {
    sub_264B41874();
    __break(1u);
  }
}

unint64_t sub_264A2E090()
{
  result = qword_27FF898F8;
  if (!qword_27FF898F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF898F8);
  }

  return result;
}

uint64_t RTIPayload.data.getter()
{
  v1 = *(v0 + 8);
  sub_2649DEF18(v1, *(v0 + 16));
  return v1;
}

uint64_t static RTIPayload.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_264A2E750(a1[1], a1[2], a2[1], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264A2E194()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_264A2E1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

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

uint64_t sub_264A2E2A4(uint64_t a1)
{
  v2 = sub_264A2E8B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A2E2E0(uint64_t a1)
{
  v2 = sub_264A2E8B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RTIPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89900, &qword_264B48760);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v13[0] = v1[1];
  v9 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A2E8B8();
  sub_264B41BD4();
  LOBYTE(v14) = 0;
  v11 = v13[1];
  sub_264B41A14();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_2649DEF18(v13[0], v9);
    sub_264A2E90C();
    sub_264B41A24();
    sub_2649DEF6C(v14, v15);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RTIPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89918, &qword_264B48768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A2E8B8();
  sub_264B41BC4();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    v11 = sub_264B41974();
    v15 = 1;
    sub_264A2E960();
    sub_264B41984();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_264A2E6A8(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_264A2E750(a1[1], a1[2], a2[1], a2[2]);
  }

  else
  {
    return 0;
  }
}

void RTIPayload.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 version];
  v5 = [a1 data];
  if (v5)
  {
    v6 = v5;
    v7 = sub_264B40024();
    v9 = v8;

    *a2 = v4;
    a2[1] = v7;
    a2[2] = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_264A2E750(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2649DEF18(a3, a4);
          return sub_264A18170(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_264A2E8B8()
{
  result = qword_27FF89908;
  if (!qword_27FF89908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89908);
  }

  return result;
}

unint64_t sub_264A2E90C()
{
  result = qword_27FF89910;
  if (!qword_27FF89910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89910);
  }

  return result;
}

unint64_t sub_264A2E960()
{
  result = qword_27FF89920;
  if (!qword_27FF89920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89920);
  }

  return result;
}

uint64_t sub_264A2E9B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264A2EA08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_264A2EA7C()
{
  result = qword_27FF89928;
  if (!qword_27FF89928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89928);
  }

  return result;
}

unint64_t sub_264A2EAD4()
{
  result = qword_27FF89930;
  if (!qword_27FF89930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89930);
  }

  return result;
}

unint64_t sub_264A2EB2C()
{
  result = qword_27FF89938;
  if (!qword_27FF89938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89938);
  }

  return result;
}

id AppleAccountBackedAccountStorePrimitives.isiCloudSignedIn.getter()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
    }

    return (v2 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264A2EC24()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
    }

    return (v2 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264A2ED1C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
  v1 = sub_264B41014();
  v2 = sub_264B41014();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_264B41144();
  v4 = sub_264B41014();
  [v0 setValue:v3 forKey:v4];

  return v0;
}

id sub_264A2EE18()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
  v1 = sub_264B41014();
  v2 = sub_264B41014();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_264B413F4();
  v4 = sub_264B41014();
  [v0 setValue:v3 forKey:v4];

  v5 = sub_264B41454();
  v6 = sub_264B41014();
  [v0 setValue:v5 forKey:v6];

  v7 = sub_264B415B4();
  v8 = sub_264B41014();
  [v0 setValue:v7 forKey:v8];

  v9 = sub_264B413F4();
  v10 = sub_264B41014();
  [v0 setValue:v9 forKey:v10];

  if (qword_27FF883D8 != -1)
  {
    swift_once();
  }

  v11 = sub_264B413F4();
  v12 = sub_264B41014();
  [v0 setValue:v11 forKey:v12];

  v13 = sub_264B413F4();
  v14 = sub_264B41014();
  [v0 setValue:v13 forKey:v14];

  v15 = sub_264B413F4();
  v16 = sub_264B41014();
  [v0 setValue:v15 forKey:v16];

  v17 = sub_264B413F4();
  v18 = sub_264B41014();
  [v0 setValue:v17 forKey:v18];

  return v0;
}

uint64_t sub_264A2F15C()
{
  v1 = v0[2];

  sub_264A2F51C(v0 + OBJC_IVAR____TtC16ScreenSharingKit26MockLaunchRequestAuthority_currentLaunchRequest);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockLaunchRequestAuthority()
{
  result = qword_27FF89940;
  if (!qword_27FF89940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A2F21C()
{
  sub_264A2F2BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264A2F2BC()
{
  if (!qword_27FF89950)
  {
    sub_264B40744();
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF89950);
    }
  }
}

uint64_t sub_264A2F314@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit26MockLaunchRequestAuthority_currentLaunchRequest;
  swift_beginAccess();
  return sub_2649D35CC(v3 + v4, a1);
}

uint64_t sub_264A2F370()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89958, &qword_264B48A58);
  sub_264A2F4B8();
  return sub_264B40AB4();
}

uint64_t sub_264A2F3CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = sub_264B40744();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit26MockLaunchRequestAuthority_currentLaunchRequest;
  swift_beginAccess();
  sub_2649D36FC(v4, v5 + v7);
  return swift_endAccess();
}

unint64_t sub_264A2F4B8()
{
  result = qword_27FF89960;
  if (!qword_27FF89960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89958, &qword_264B48A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89960);
  }

  return result;
}

uint64_t sub_264A2F51C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of iCloudHealthPrimitives.iCloudHealthNeedsRepair()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264A2F69C;

  return v9(a1, a2);
}

uint64_t sub_264A2F69C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_264A2F798(void *a1)
{
  v2 = v1;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = a1;
  v6 = sub_264B40944();
  v7 = sub_264B41484();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getObjectType();
    swift_getWitnessTable();
    v10 = sub_264A543FC();
    v12 = sub_2649CC004(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v6, v7, "Removing connection %{public}s...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v13 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineConnections;
  swift_beginAccess();
  v14 = v5;
  v15 = sub_264A31A48((v2 + v13), v14);

  v16 = *(v2 + v13);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v19 = *(v2 + v13);
    }

    v17 = sub_264B41884();
    if (v17 >= v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v15)
    {
LABEL_7:
      sub_264AD3DAC(v15, v17);
      return swift_endAccess();
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_264A2F9CC(void *a1)
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = a1;
  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    swift_getObjectType();
    swift_getWitnessTable();
    v8 = sub_264A543FC();
    v10 = sub_2649CC004(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Connection %{public}s did interrupt", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  [v3 invalidate];
  return sub_264A2F798(v3);
}

uint64_t sub_264A2FB7C(void *a1)
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = a1;
  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    swift_getObjectType();
    swift_getWitnessTable();
    v8 = sub_264A543FC();
    v10 = sub_2649CC004(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Connection %{public}s did invalidate", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  return sub_264A2F798(v3);
}

void sub_264A2FD28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_264B41014();
  [a1 setUserInfo_];

  [a1 setInterface_];
  Strong = swift_unknownObjectUnownedLoadStrong();
  [a1 setInterfaceTarget_];

  [a1 setServiceQuality_];
  v8 = swift_unknownObjectUnownedLoadStrong();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v21 = sub_264A3297C;
  v22 = v9;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2649F5890;
  v20 = &block_descriptor_56;
  v10 = _Block_copy(&v17);

  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v21 = sub_264A32984;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2649F5890;
  v20 = &block_descriptor_62;
  v13 = _Block_copy(&v17);

  [a1 setInvalidationHandler_];
  _Block_release(v13);
  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v21 = sub_264A329A8;
  v22 = v15;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2649F5890;
  v20 = &block_descriptor_68;
  v16 = _Block_copy(&v17);

  [a1 setInterruptionHandler_];
  _Block_release(v16);
}

void sub_264A2FFC8(void *a1)
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = a1;
  oslog = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getObjectType();
    swift_getWitnessTable();
    v7 = sub_264A543FC();
    v9 = sub_2649CC004(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, oslog, v4, "Connection %{public}s did activate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264A30214()
{
  *(v1 + 24) = v0;
  sub_264B41244();
  *(v1 + 32) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A302AC, v3, v2);
}

void sub_264A302AC()
{
  v25 = v0;
  v1 = v0[4];

  v2 = [objc_opt_self() currentContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 remoteToken];
  }

  else
  {
    v4 = 0;
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = v4;
  v7 = sub_264B40944();
  v8 = sub_264B41474();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    v0[2] = v4;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF899D8, &qword_264B48AB8);
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v7, v8, "Received ping from %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v15 = v0[3];
  v16 = *(v15 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_pongNumber);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_pongNumber) = v18;
    v23 = 0x2320676E6F50;
    v24 = 0xE600000000000000;
    v0[2] = v18;
    v19 = sub_264B41A64();
    MEMORY[0x266748390](v19);

    v20 = v23;
    v21 = v24;
    v22 = v0[1];

    v22(v20, v21);
  }
}

uint64_t sub_264A30690(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_264B41244();
  v2[4] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A30728, v4, v3);
}

uint64_t sub_264A30728()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_264A329CC;
  v6 = v0[3];

  return sub_264A30214();
}

uint64_t sub_264A307D8()
{
  v1[3] = v0;
  v1[4] = sub_264B41244();
  v1[5] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_264A30874, v3, v2);
}

uint64_t sub_264A30874()
{
  v21 = v0;
  v1 = [objc_opt_self() currentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 remoteToken];
  }

  else
  {
    v3 = 0;
  }

  v0[8] = v3;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  v5 = v3;
  v6 = sub_264B40944();
  v7 = sub_264B41484();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v0[2] = v3;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF899D8, &qword_264B48AB8);
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v6, v7, "Received stopCommandLineSession from %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v15 = v0[3];
  v14 = v0[4];
  v0[9] = sub_264B41234();
  v16 = swift_task_alloc();
  v0[10] = v16;
  *(v16 + 16) = v15;
  v17 = *(MEMORY[0x277D859E0] + 4);
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_264A30B10;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A30B10()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_264A30C70, v6, v5);
}

uint64_t sub_264A30C70()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A30CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v9 = 0;
  v10 = -4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_264A380B0(&v9, v5);
  return sub_264A32674(v5);
}

uint64_t sub_264A30F78(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_264B41244();
  v2[4] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A31010, v4, v3);
}

uint64_t sub_264A31010()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_264A310C0;
  v6 = v0[3];

  return sub_264A307D8();
}

uint64_t sub_264A310C0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 24);
  v7 = *v1;

  v8 = *(v3 + 40);
  if (v2)
  {
    v9 = sub_264B3FF74();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 40));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_264A31244()
{
  *(v1 + 24) = v0;
  sub_264B41244();
  *(v1 + 32) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A312DC, v3, v2);
}

uint64_t sub_264A312DC()
{
  v22 = v0;
  v1 = v0[4];

  v2 = [objc_opt_self() currentContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 remoteToken];
  }

  else
  {
    v4 = 0;
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = v4;
  v7 = sub_264B40944();
  v8 = sub_264B41484();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    v0[2] = v4;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF899D8, &qword_264B48AB8);
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v7, v8, "Received currentCommandLineSessionState from %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v15 = *(v0[3] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  v0[2] = v15;
  sub_264A32420(v15);
  v16 = sub_264B41064();
  v18 = v17;

  v19 = v0[1];

  return v19(v16, v18);
}

uint64_t sub_264A31690(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_264B41244();
  v2[4] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A31728, v4, v3);
}

uint64_t sub_264A31728()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_264A317D8;
  v6 = v0[3];

  return sub_264A31244();
}

uint64_t sub_264A317D8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 24);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_264B3FF74();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_264B41014();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 40);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

unint64_t sub_264A31968(unint64_t a1, id a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_264B41884();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x266748A70](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;

    if (v8 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_264A31A48(unint64_t *a1, id a2)
{
  v7 = *a1;
  v8 = sub_264A31968(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_264B41884();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_264B41884())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x266748A70](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
LABEL_17:
    v16 = v15;

    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x266748A70](v10, v7);
          v17 = MEMORY[0x266748A70](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v18)
          {
            goto LABEL_47;
          }

          if (v11 >= v18)
          {
            goto LABEL_48;
          }

          v19 = *(v7 + 32 + 8 * v11);
          v3 = *(v7 + 32 + 8 * v10);
          v17 = v19;
        }

        v20 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_264AD39BC(v7);
          v21 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v21) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v20;

        if ((v7 & 0x8000000000000000) != 0 || v21)
        {
          v7 = sub_264AD39BC(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
    }
  }

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
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_264B41884();
}

void sub_264A31C84(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [a1 remoteToken];
  v7 = sub_264B41014();
  v8 = [v6 hasEntitlement_];

  if (v8)
  {
    v9 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 16);
    v48 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification);
    v49 = v9;
    v10 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 48);
    v50 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 32);
    v51 = v10;
    v11 = sub_264B41014();
    v12 = [a2 decodeStringForKey_];

    if (v12)
    {
      v13 = sub_264B41044();
      v15 = v14;

      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v16 = sub_264B40964();
      __swift_project_value_buffer(v16, qword_27FF8AE70);
      v17 = a1;

      v18 = sub_264B40944();
      v19 = sub_264B41484();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v46[0] = v21;
        *v20 = 136446722;
        aBlock[0] = v17;
        swift_getWitnessTable();
        v22 = sub_264A543FC();
        v24 = sub_2649CC004(v22, v23, v46);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2082;
        *(v20 + 14) = sub_2649CC004(v13, v15, v46);
        *(v20 + 22) = 2082;
        v25 = [objc_opt_self() currentContext];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 remoteProcess];
        }

        else
        {
          v27 = 0;
        }

        aBlock[0] = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89A50, qword_264B48B18);
        v35 = sub_264B41064();
        v37 = sub_2649CC004(v35, v36, v46);

        *(v20 + 24) = v37;
        _os_log_impl(&dword_2649C6000, v18, v19, "Received incoming connection %{public}s with identifier %{public}s from process: %{public}s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v21, -1, -1);
        MEMORY[0x266749940](v20, -1, -1);
      }

      v38 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v39 = swift_allocObject();
      *(v39 + 16) = v13;
      *(v39 + 24) = v15;
      v40 = v49;
      *(v39 + 32) = v48;
      *(v39 + 48) = v40;
      v41 = v51;
      *(v39 + 64) = v50;
      *(v39 + 80) = v41;
      *(v39 + 96) = v38;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_264A328A8;
      *(v42 + 24) = v39;
      aBlock[4] = sub_264A328C8;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264AD75DC;
      aBlock[3] = &block_descriptor_5;
      v43 = _Block_copy(aBlock);
      sub_264A328E8(&v48, v46);

      [v17 configureConnection_];
      _Block_release(v43);
      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

      if (v43)
      {
        __break(1u);
      }

      else
      {
        v44 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineConnections;
        swift_beginAccess();
        v17 = v17;
        MEMORY[0x266748430]();
        if (*((*(v3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_26:
          sub_264B41194();
          swift_endAccess();
          [v17 activate];

          return;
        }
      }

      sub_264B41174();
      goto LABEL_26;
    }

    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v32 = sub_264B40964();
    __swift_project_value_buffer(v32, qword_27FF8AE70);
    oslog = sub_264B40944();
    v33 = sub_264B41494();
    if (os_log_type_enabled(oslog, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v33, "Failed to decode context identifier, dropping event", v34, 2u);
      MEMORY[0x266749940](v34, -1, -1);
    }
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v28 = sub_264B40964();
    __swift_project_value_buffer(v28, qword_27FF8AE70);
    v29 = sub_264B40944();
    v30 = sub_264B41494();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2649C6000, v29, v30, "Incoming connection missing required entitlement, ignoring", v31, 2u);
      MEMORY[0x266749940](v31, -1, -1);
    }

    [a1 invalidate];
  }
}

uint64_t sub_264A32374()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2649E0EE4;

  return sub_264A31690(v2, v3);
}

id sub_264A32420(id result)
{
  if (result >= 7)
  {
    return result;
  }

  return result;
}

uint64_t sub_264A32430()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2649CD850;

  return sub_264A30F78(v2, v3);
}

uint64_t sub_264A324E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2649E0EE4;

  return sub_264A9F788(v2, v3, v5);
}

uint64_t sub_264A325A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_264A9F870(a1, v4, v5, v7);
}

uint64_t sub_264A32674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A3271C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2649E0EE4;

  return sub_264A30690(v2, v3);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A32808()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A32840()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264A32944()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.isDevicePairedForMacUnlock()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264A2F69C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.isDeviceAvailableForPairing()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.pairDeviceForMacUnlock()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.unlockWithAuthenticationToken(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2649CD850;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.disablePairedDevice()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.startListeningForAuthApprovalRequests(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2649E0EE4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AuthApprovalRequestDelegate.didReceiveApprovalRequest(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_264A33224;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_264A33224(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of AuthApprovalRequestDelegate.approvalRequestDidFail(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2649CD850;

  return v11(a1, a2, a3);
}

uint64_t sub_264A334B8()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver_notificationToken;
  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + v1)))
  {
    notify_cancel(*(v0 + v1));
  }

  v2 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver__sensorsInUse;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MediaExperienceBackedMicrophoneDeviceSensorObserver()
{
  result = qword_27FF89AD0;
  if (!qword_27FF89AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A335E8()
{
  sub_2649DAE24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264A33694()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A33708()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = v24 - v4;
  v25 = sub_264B41544();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264B414F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_264B40EE4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2649CB2F0();
  v24[0] = "notificationToken";
  v24[1] = v13;
  sub_264B40EC4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264A346F4(&qword_27FF88CA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_2649CB4C8(&qword_27FF88CB0, &qword_27FF88CA8, &unk_264B471C0);
  sub_264B41684();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v25);
  *(v0 + 16) = sub_264B41574();
  v14 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver__sensorsInUse;
  v15 = sub_2649E5670();
  aBlock[0] = MEMORY[0x266748730](1, &type metadata for DeviceSensorType, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  v16 = v26;
  sub_264B40A44();
  (*(v27 + 32))(v1 + v14, v16, v28);
  v17 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver_notificationToken;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver_notificationToken) = -1;
  v18 = *(v1 + 16);
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_264A3473C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264A33BD0;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);
  v21 = v18;

  v22 = sub_264B41074();
  swift_beginAccess();
  notify_register_dispatch((v22 + 32), (v1 + v17), v21, v20);
  swift_endAccess();

  _Block_release(v20);

  return v1;
}

uint64_t sub_264A33B70(int a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264A33C24(a1);
  }

  return result;
}

uint64_t sub_264A33BD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_264A33C24(int a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_264B40EB4();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_264B40EE4();
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264B40F14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v14 = sub_264B40964();
  __swift_project_value_buffer(v14, qword_27FF8AE70);
  v15 = sub_264B40944();
  v16 = sub_264B414B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2649C6000, v15, v16, "Received notification from MediaExperience regarding attempted microphone use", v17, 2u);
    MEMORY[0x266749940](v17, -1, -1);
  }

  v18 = *(v1 + 16);
  *v13 = v18;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v18;
  LOBYTE(v18) = sub_264B40F34();
  (*(v10 + 8))(v13, v9);
  if ((v18 & 1) == 0)
  {
    __break(1u);
  }

  state64 = 0;
  if (notify_get_state(a1, &state64))
  {
    v19 = sub_264B40944();
    v20 = sub_264B414A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2649C6000, v19, v20, "Unable to parse MediaExperience Darwin notification, ignoring", v21, 2u);
      MEMORY[0x266749940](v21, -1, -1);
    }
  }

  else
  {
    v22 = state64;
    v23 = sub_264B40944();
    if (v22 == 1)
    {
      v24 = sub_264B41474();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v23, v24, "MediaExperience notification state indicates recording was attempted", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v26 = sub_264B40A74();
      sub_264A12A64(&v39, 1);
      v26(aBlock, 0);

      v27 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_264A346D4;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2649D68F4;
      aBlock[3] = &block_descriptor_6;
      v28 = _Block_copy(aBlock);

      sub_264B40EC4();
      v39 = MEMORY[0x277D84F90];
      sub_264A346F4(&qword_27FF892C0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
      sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
      v29 = v35;
      v30 = v38;
      sub_264B41684();
      MEMORY[0x266748860](0, v8, v29, v28);
      _Block_release(v28);
      (*(v37 + 8))(v29, v30);
      (*(v34 + 8))(v8, v36);
    }

    else
    {
      v31 = sub_264B414A4();
      if (os_log_type_enabled(v23, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2649C6000, v23, v31, "Unknown MediaExperience notification state, ignoring", v32, 2u);
        MEMORY[0x266749940](v32, -1, -1);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t sub_264A342A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v1 = sub_264B40964();
    __swift_project_value_buffer(v1, qword_27FF8AE70);
    v2 = sub_264B40944();
    v3 = sub_264B41484();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2649C6000, v2, v3, "Resetting microphone sensor use", v4, 2u);
      MEMORY[0x266749940](v4, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v5 = sub_264B40A74();
    v7 = v6;
    v8 = *v6;

    *v7 = MEMORY[0x277D84FA0];
    v5(v9, 0);
  }

  return result;
}

uint64_t sub_264A34434()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF88C80, &unk_264B455A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF88C90, &unk_27FF88C80, &unk_264B455A0);
  v7 = sub_264B40AB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_264A34598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264A34618(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A3469C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264A346F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264A34760(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_264B40C54();
  sub_264A347C4();
  return swift_getWitnessTable();
}

unint64_t sub_264A347C4()
{
  result = qword_27FF89AE0;
  if (!qword_27FF89AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89AE0);
  }

  return result;
}

uint64_t sub_264A34868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89AE8, &qword_264B48D88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89AF0, &qword_264B48D90) + 36);
  sub_264B40DE4();
  v9 = &v7[*(v4 + 36)];
  *v9 = 0x405E000000000000;
  v9[8] = 1;
  v12[0] = xmmword_264B48CD0;
  v12[1] = xmmword_264B48CE0;
  v12[2] = xmmword_264B48CF0;
  v13 = 1106334188;
  v15 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 1065353216;
  sub_264A34A24();
  sub_264B40DC4();
  sub_264A34AE0(v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89B00, &qword_264B48D98);
  return (*(*(v10 - 8) + 16))(a2, a1, v10);
}

unint64_t sub_264A34A24()
{
  result = qword_27FF89AF8;
  if (!qword_27FF89AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89AE8, &qword_264B48D88);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89AF8);
  }

  return result;
}

uint64_t sub_264A34AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89AE8, &qword_264B48D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264A34B4C()
{
  result = qword_27FF89B08;
  if (!qword_27FF89B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89AF0, &qword_264B48D90);
    sub_2649CB4C8(&qword_27FF89B10, &qword_27FF89B00, &qword_264B48D98);
    sub_2649CB4C8(&qword_27FF89B18, &qword_27FF89B20, &unk_264B48DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B08);
  }

  return result;
}

uint64_t sub_264A34C30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264A34CB0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A34D24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A34DA0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

void (*sub_264A34E10(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_264B40A74();
  return sub_264A34EB4;
}

void sub_264A34EB4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264A34F1C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A34F94(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A64();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264A35118()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A3518C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264A352C4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  return sub_264A35434;
}

void sub_264A35434(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_264B40A64();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_264B40A64();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CoreWiFiBackedLocalWiFiPrimitives.init()();
  return v3;
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.init()()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - v5;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  LOBYTE(aBlock[0]) = 0;
  sub_264B40A44();
  (*(v3 + 32))(v1 + v7, v6, v2);
  v8 = [objc_allocWithZone(MEMORY[0x277D02B18]) init];
  v9 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) = v8;
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_264A35AF0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649F5890;
  aBlock[3] = &block_descriptor_7;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 setEventHandler_];
  _Block_release(v11);

  [*(v1 + v9) activate];
  LOBYTE(v12) = [*(v1 + v9) powerOn];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v12;

  sub_264B40A94();
  v13 = *(v1 + v9);
  aBlock[0] = 0;
  if ([v13 startMonitoringEventType:1 error:aBlock])
  {
    v14 = aBlock[0];
  }

  else
  {
    v15 = aBlock[0];
    v16 = sub_264B3FF84();

    swift_willThrow();
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FFA71B8);
    v18 = v16;
    v19 = sub_264B40944();
    v20 = sub_264B41494();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      v29[1] = v16;
      v23 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
      v24 = sub_264B41064();
      v26 = sub_2649CC004(v24, v25, aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v19, v20, "Failed to start monitoring core WiFi events: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x266749940](v22, -1, -1);
      MEMORY[0x266749940](v21, -1, -1);
    }

    else
    {
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_264A359EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A35A24(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([a1 type] == 1)
    {
      [*(v3 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) powerOn];
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_264B40A94();
    }

    else
    {
    }
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface;
  [*(v0 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) invalidate];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface;
  [*(v0 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) invalidate];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.wifiPoweredOnPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  sub_264A35F48();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_264A35DA0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v3;
}

uint64_t sub_264A35E18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  sub_264A35F48();
  v7 = sub_264B40AB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

unint64_t sub_264A35F48()
{
  result = qword_27FF89B38;
  if (!qword_27FF89B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF89F00, &unk_264B48E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B38);
  }

  return result;
}

uint64_t type metadata accessor for CoreWiFiBackedLocalWiFiPrimitives()
{
  result = qword_27FF89B40;
  if (!qword_27FF89B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A36008()
{
  sub_264A361A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264A361A8()
{
  if (!qword_27FF8A990)
  {
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8A990);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaTransportStreamError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaTransportStreamError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264A3635C()
{
  result = qword_27FF89B50;
  if (!qword_27FF89B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B50);
  }

  return result;
}

unint64_t sub_264A363B4()
{
  result = qword_27FF89B58;
  if (!qword_27FF89B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B58);
  }

  return result;
}

uint64_t sub_264A36408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    v5 = type metadata accessor for RTIMessageConsumer(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();

    v8 = sub_264A68EA4(a1, a2);

    v9 = &unk_27FF89B68;
    v10 = type metadata accessor for RTIMessageConsumer;
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AEB8);
    v12 = sub_264B40944();
    v13 = sub_264B414B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2649C6000, v12, v13, "Client (Mac) does not support RTI returning EmptyRTIMessageConsumer", v14, 2u);
      MEMORY[0x266749940](v14, -1, -1);
    }

    type metadata accessor for EmptyRTIMessageConsumer();
    v8 = swift_allocObject();
    swift_defaultActor_initialize();
    v9 = &unk_27FF89B60;
    v10 = type metadata accessor for EmptyRTIMessageConsumer;
  }

  sub_264A365E8(v9, v10);
  return v8;
}

uint64_t sub_264A365B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = sub_264A36408(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_264A365E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_264A36640(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_264A36698()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_264A366DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_264A36774(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

void *sub_264A367CC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_264A36810(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_264A368A8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 states];

      if (v4)
      {
        v5 = sub_264B41154();

        v6 = sub_264A36970(v5);

        if (v6)
        {
          return v6;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_264A36970(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_264B417F4();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2649C964C(i, v6);
    sub_2649D8B90(0, &qword_27FF89B78, 0x277CD9FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_264B417D4();
    v4 = *(v7 + 16);
    sub_264B41804();
    sub_264B41814();
    sub_264B417E4();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_264A36A7C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_264A36AD4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_264A36B18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id sub_264A36BB0()
{
  swift_beginAccess();
  v1 = [*(v0 + 24) rootLayer];

  return v1;
}

uint64_t CABackedMicaAnimationPrimitives.__allocating_init(packageName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  CABackedMicaAnimationPrimitives.init(packageName:bundle:)(a1, a2, a3);
  return v6;
}

void *CABackedMicaAnimationPrimitives.init(packageName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[4] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v5 = sub_264A37530(a1, a2, a3);

  swift_beginAccess();
  v6 = v3[3];
  v3[3] = v5;
  v7 = v5;

  v8 = [v7 rootLayer];
  v9 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];

  swift_beginAccess();
  v10 = v3[2];
  v3[2] = v9;

  return v3;
}

id sub_264A36D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = sub_264B3FFB4();
  v7 = sub_264B41014();

  if (a4)
  {
    v8 = sub_264B40F54();
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_264B3FFD4();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_264B3FF84();

    swift_willThrow();
    v15 = sub_264B3FFD4();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_264A36F24(float a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (v3)
  {
    swift_beginAccess();
    v4 = v1[4];
    swift_beginAccess();
    v5 = v1[3];
    v6 = v4;
    v7 = v3;
    v8 = [v5 rootLayer];
    *&v9 = a1;
    [v7 setState:v6 ofLayer:v8 transitionSpeed:v9];
  }
}

void sub_264A37000(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v27 = v2;
  v5 = *(v2 + 24);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v5 rootLayer];
  if (!v6 || (v7 = v6, v8 = [v6 states], v7, !v8) || (v9 = sub_264B41154(), v8, v10 = sub_264A36970(v9), , !v10))
  {
LABEL_5:

    v10 = MEMORY[0x277D84F90];
  }

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264B41884())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x266748A70](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 name];
      if (v16)
      {
        v17 = v16;
        v18 = a1;
        v19 = a2;
        v20 = sub_264B41044();
        v22 = v21;

        v23 = v20;
        a2 = v19;
        if (v23 == v18 && v22 == v19)
        {

LABEL_23:

          goto LABEL_28;
        }

        a1 = v18;
        v25 = sub_264B41AA4();

        if (v25)
        {
          goto LABEL_23;
        }
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v14 = 0;
LABEL_28:
  swift_beginAccess();
  v26 = *(v27 + 32);
  *(v27 + 32) = v14;
}

void sub_264A37248(float a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    swift_beginAccess();
    v4 = *(v1 + 24);
    v5 = v3;
    v6 = [v4 rootLayer];
    *&v7 = a1;
    [v5 setInitialStatesOfLayer:v6 transitionSpeed:v7];
  }
}

uint64_t CABackedMicaAnimationPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_264A37394()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = v2;
  return v2;
}

id sub_264A373DC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 24) rootLayer];

  return v2;
}

void sub_264A37484(float a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (v4)
  {
    swift_beginAccess();
    v5 = *(v3 + 24);
    v6 = v4;
    v7 = [v5 rootLayer];
    *&v8 = a1;
    [v6 setInitialStatesOfLayer:v7 transitionSpeed:v8];
  }
}

id sub_264A37530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v23[-v13];
  v15 = sub_264B41014();
  v16 = sub_264B41014();
  v17 = [a3 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    return 0;
  }

  sub_264B3FFC4();

  (*(v5 + 32))(v14, v12, v4);
  sub_2649D8B90(0, &qword_27FF89B70, 0x277CD9F28);
  (*(v5 + 16))(v9, v14, v4);
  v18 = *MEMORY[0x277CDA7F8];
  v19 = sub_264B41044();
  v22 = sub_264A36D5C(v9, v19, v20, 0);
  (*(v5 + 8))(v14, v4);
  result = v22;
  if (!v22)
  {
    return 0;
  }

  return result;
}

id sub_264A37770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

id sub_264A377CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

id sub_264A37828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

ScreenSharingKit::SignpostCode_optional __swiftcall SignpostCode.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = rawValue - 4;
  if (rawValue - 4 >= 0xF)
  {
    v2 = 15;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_264A37B14()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

uint64_t sub_264A37B8C()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

const char *SignpostCode.signpostName.getter()
{
  result = "DTHStart";
  switch(*v0)
  {
    case 1:
      result = "DTHHandoff";
      break;
    case 2:
      result = "SSKHIDEventReceived";
      break;
    case 3:
      result = "SSKHIDEventHandoff";
      break;
    case 4:
      result = "SSKMessageSendBegin";
      break;
    case 5:
      result = "SSKMessageSendDone";
      break;
    case 6:
      result = "SSKMessageReceivedBegin";
      break;
    case 7:
      result = "SSKMessageReceivedDone";
      break;
    case 8:
      result = "SSKAppStart";
      break;
    case 9:
      result = "SSKSessionStartup";
      break;
    case 0xA:
      result = "SSKSessionRunning";
      break;
    case 0xB:
      result = "SSKFirstFrame";
      break;
    case 0xC:
      result = "SSKAngelActive";
      break;
    case 0xD:
      result = "SSKAngelSessionStart";
      break;
    case 0xE:
      result = "SSKAngelSessionRunning";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_264A37E00()
{
  result = qword_27FF89B80;
  if (!qword_27FF89B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B80);
  }

  return result;
}

unint64_t sub_264A37E64()
{
  result = qword_27FF89B88;
  if (!qword_27FF89B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B88);
  }

  return result;
}

uint64_t AccessibilityControlTransportError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A37F48()
{
  result = qword_27FF89B90;
  if (!qword_27FF89B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B90);
  }

  return result;
}

uint64_t sub_264A37FAC(uint64_t a1)
{
  sub_2649D046C(a1, &v6, &qword_27FF89FB0, &qword_264B496A0);
  if (!v7)
  {
    return sub_2649D04D4(&v6, &qword_27FF89FB0, &qword_264B496A0);
  }

  sub_2649D2AAC(&v6, v8);
  sub_2649CB5C0(v8, &v6);
  v2 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2649D834C(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2649D834C((v3 > 1), v4 + 1, 1, v2);
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  v2[2] = v4 + 1;
  result = sub_2649D2AAC(&v6, &v2[5 * v4 + 4]);
  *v1 = v2;
  return result;
}

uint64_t sub_264A380B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v41[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41[-v13];
  v15 = *a1;
  v16 = *(a1 + 8);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FF8AE70);
  sub_2649E124C(v15, v16);
  v18 = sub_264B40944();
  v19 = sub_264B414B4();
  sub_2649E1290(v15, v16);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v8;
    v21 = v20;
    v43 = v20;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v21 = 136446210;
    v46 = v15;
    v47 = v16;
    sub_2649E124C(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
    v22 = sub_264B41064();
    v42 = v16;
    LOBYTE(v21) = v19;
    v24 = v15;
    v25 = v7;
    v26 = v3;
    v27 = sub_2649CC004(v22, v23, &v48);
    LOBYTE(v16) = v42;

    v28 = v43;
    *(v43 + 4) = v27;
    v3 = v26;
    v7 = v25;
    v15 = v24;
    v29 = v18;
    v30 = v18;
    v31 = v28;
    _os_log_impl(&dword_2649C6000, v29, v21, "Preparing to tear down the session due to: %{public}s", v28, 0xCu);
    v32 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x266749940](v32, -1, -1);
    v8 = v45;
    MEMORY[0x266749940](v31, -1, -1);
  }

  else
  {
  }

  v33 = sub_264B41274();
  (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  sub_2649D046C(a2, v10, &unk_27FF899E0, &qword_264B53440);
  sub_264B41244();
  sub_2649E124C(v15, v16);
  v34 = v3;
  v35 = sub_264B41234();
  v36 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v37 = (v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D85700];
  *(v38 + 16) = v35;
  *(v38 + 24) = v39;
  *(v38 + 32) = v15;
  *(v38 + 40) = v16;
  sub_264A52368(v10, v38 + v36);
  *(v38 + v37) = v34;
  sub_2649CD944(0, 0, v14, &unk_264B494B8, v38);
}

id sub_264A38480()
{
  result = sub_264A384A0();
  qword_27FF89BA0 = result;
  return result;
}

id sub_264A384A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  v87 = *(v0 - 8);
  v88 = v0;
  v1 = *(v87 + 64);
  MEMORY[0x28223BE20](v0);
  v86 = &v68 - v2;
  v133 = &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor;
  v134 = &off_28765EC78;
  v135 = &type metadata for FeatureFlagsBackedFeatureFlagPrimitives;
  v136 = &protocol witness table for FeatureFlagsBackedFeatureFlagPrimitives;
  MobileGestaltBackedLocalDeviceInformationPrimitives.init()(&v131);
  v85 = type metadata accessor for AVSystemControllerBackedMicrophoneDeviceSensorObserver();
  v3 = *(v85 + 12);
  v4 = *(v85 + 26);
  swift_allocObject();
  v94 = sub_2649E41EC();
  v84 = type metadata accessor for MediaExperienceBackedMicrophoneDeviceSensorObserver();
  v5 = *(v84 + 48);
  v6 = *(v84 + 52);
  swift_allocObject();
  v93 = sub_264A33708();
  v82 = type metadata accessor for FigCameraBackedDeviceSensorObserver();
  v96 = [objc_allocWithZone(v82) init];
  v83 = type metadata accessor for AXPBackedAccessibilityServerPrimitives();
  v95 = [objc_allocWithZone(v83) &selRef_initWithOffer_error_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A068, &unk_264B49720);
  v7 = swift_allocObject();
  v90 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v7 + 16) = sub_264B409D4();
  v11 = type metadata accessor for ScreenContinuityServicesBackedContinuityDevicePrimitives();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v81 = ScreenContinuityServicesBackedContinuityDevicePrimitives.init(fetchUnlockabilityStatus:)(0);
  v80 = type metadata accessor for SignpostingTelemetryVendor();
  v79 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A078, &unk_264B49730);
  v14 = swift_allocObject();
  v89 = v14;
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  swift_allocObject();
  *(v14 + 16) = sub_264B409D4();
  v76 = type metadata accessor for iOSTelemetryVendor();
  v75 = swift_allocObject();
  v78 = sub_264B408B4();
  v77 = sub_264B408A4();
  v74 = type metadata accessor for MediaExperienceBackedMediaPlaybackStatusPrimitives();
  swift_allocObject();
  v92 = sub_264AFA780();
  v91 = type metadata accessor for TimeBackedTaskSleepPrimitives();
  v73 = swift_allocObject();
  v17 = [objc_opt_self() standardUserDefaults];
  v69 = type metadata accessor for FoundationBackedUserDefaultsPrimitives();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v70 = type metadata accessor for UIDeviceBackedPowerPrimitives();
  swift_allocObject();
  v19 = sub_264B0E248();
  v68 = v19;
  v20 = MEMORY[0x277D83B88];
  v123[3] = MEMORY[0x277D83B88];
  v124 = sub_264A556EC();
  v123[0] = 5;
  v126 = v20;
  v125 = 10;
  v129 = v20;
  v130 = v124;
  v127 = v124;
  v128 = 60;
  LOBYTE(v20) = v131.platform;
  countAndFlagsBits = v131.osBuild._countAndFlagsBits;
  object = v131.osBuild._object;
  v24 = v131.userAssignedDeviceName._countAndFlagsBits;
  v23 = v131.userAssignedDeviceName._object;
  v71 = v131.osBuild._object;
  v72 = v131.userAssignedDeviceName._object;
  LOBYTE(v14) = v131.isDeviceSupported;
  v122[3] = &type metadata for SpringBoardUIServicesBackedSceneInteractorVendor;
  v122[4] = &off_281EE1F38;
  v122[0] = swift_allocObject();
  sub_264A55780(v132, v122[0] + 16);
  v121[3] = &type metadata for MobileGestaltBackedLocalDeviceInformationPrimitives;
  v121[4] = &protocol witness table for MobileGestaltBackedLocalDeviceInformationPrimitives;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  *(v25 + 32) = object;
  *(v25 + 40) = v24;
  *(v25 + 56) = v14;
  *(v25 + 24) = countAndFlagsBits;
  v121[0] = v25;
  *(v25 + 48) = v23;
  v120[4] = &off_287657B18;
  v119[3] = v84;
  v119[4] = &off_2876599F8;
  v118[3] = v82;
  v118[4] = &off_287657218;
  v117[3] = &type metadata for CDPStateControllerBackediCloudHealthPrimitives;
  v117[4] = &protocol witness table for CDPStateControllerBackediCloudHealthPrimitives;
  v116[3] = &type metadata for ScreenContinuityServicesBackedLocalDeviceEligibilityPrimitives;
  v116[4] = &protocol witness table for ScreenContinuityServicesBackedLocalDeviceEligibilityPrimitives;
  v115[3] = &type metadata for ManagedConfigurationBackedDeviceRestrictionPrimitives;
  v115[4] = &protocol witness table for ManagedConfigurationBackedDeviceRestrictionPrimitives;
  v114[3] = v83;
  v114[4] = &off_28765D228;
  v113[3] = v11;
  v113[4] = &protocol witness table for ScreenContinuityServicesBackedContinuityDevicePrimitives;
  v112[4] = &protocol witness table for SignpostingTelemetryVendor;
  v112[3] = v80;
  v112[0] = v79;
  v111[4] = &protocol witness table for iOSTelemetryVendor;
  v111[3] = v76;
  v111[0] = v75;
  v107[3] = v74;
  v107[4] = &off_281EE4E98;
  v104[0] = v73;
  v103[3] = v69;
  v103[4] = &protocol witness table for FoundationBackedUserDefaultsPrimitives;
  v103[0] = v18;
  v102[4] = &off_281EE57E0;
  v101[3] = &type metadata for FeatureFlagsBackedFeatureFlagPrimitives;
  v120[3] = v85;
  v105 = v91;
  v120[0] = v94;
  v119[0] = v93;
  v118[0] = v96;
  v114[0] = v95;
  v113[0] = v81;
  v101[4] = &protocol witness table for FeatureFlagsBackedFeatureFlagPrimitives;
  v110 = &off_28765F1A8;
  v26 = v78;
  v109 = v78;
  v108[0] = v77;
  v107[0] = v92;
  v102[3] = v70;
  v106 = &off_28765C058;
  v102[0] = v19;
  v85 = type metadata accessor for AngelServer();
  v27 = objc_allocWithZone(v85);
  v28 = v109;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = v105;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = (&v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v32;
  v41 = *v38;
  v100[3] = v26;
  v100[4] = &off_28765F1A8;
  v100[0] = v40;
  v99[3] = v91;
  v99[4] = &off_28765C058;
  v99[0] = v41;
  v42 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification;

  v96 = v96;
  v43 = v95;

  sub_264A2DEA0(&v27[v42]);
  v44 = MEMORY[0x277D84F90];
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineConnections] = MEMORY[0x277D84F90];
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_pongNumber] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations] = v44;
  v45 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  v46 = sub_264B40104();
  (*(*(v46 - 8) + 56))(&v27[v45], 1, 1, v46);
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener] = 0;
  v47 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor];
  *v47 = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 4) = 0;
  v48 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_screenContinuityLiveActivityVendor];
  *(v48 + 4) = 0;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask] = 0;
  v49 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer__bringUpDeviceSensorsInUse;
  v50 = sub_2649E5670();
  v98 = MEMORY[0x266748730](2, &type metadata for DeviceSensorType, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  v51 = v86;
  sub_264B40A44();
  (*(v87 + 32))(&v27[v49], v51, v88);
  v52 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v54 - 8) + 56))(&v27[v53], 1, 1, v54);
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables] = v44;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription] = 0;
  v55 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration];
  *v55 = 0u;
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  *(v55 + 3) = 0u;
  *(v55 + 4) = 0u;
  *(v55 + 5) = 0u;
  *(v55 + 12) = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneObservationSubscriptions] = v44;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription] = 0;
  v56 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration];
  *v56 = 0u;
  *(v56 + 1) = 0u;
  *(v56 + 4) = 0;
  v57 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor];
  *(v57 + 4) = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  v58 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity];
  *v58 = 0u;
  *(v58 + 1) = 0u;
  *(v58 + 4) = 0;
  v59 = &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractorStep];
  *v59 = 0;
  v59[8] = -1;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator] = 0;
  v60 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubject;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  *&v27[v60] = sub_264B409D4();
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubscriptions] = v44;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts] = 0;
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry] = 0;
  v64 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_dragAndDropShieldWindowSceneContainer;
  type metadata accessor for DragAndDropSceneContainer();
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *&v27[v64] = v65;
  sub_2649CB5C0(v122, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor]);
  sub_2649CB5C0(v121, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceInformationPrimitives]);
  sub_2649CB5C0(v120, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives]);
  sub_2649CB5C0(v119, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives]);
  sub_2649CB5C0(v118, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives]);
  sub_2649CB5C0(v117, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_iCloudHealthPrimitives]);
  sub_2649CB5C0(v116, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceEligibilityPrimitives]);
  sub_2649CB5C0(v115, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceRestrictionPrimitives]);
  sub_2649CB5C0(v114, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives]);
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_statusEventProxy] = v90;
  sub_2649CB5C0(v113, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_continuityDevicePrimitives]);
  sub_2649CB5C0(v112, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor]);
  sub_2649CB5C0(v111, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor]);
  sub_2649CB5C0(v100, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker]);
  sub_2649CB5C0(v107, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaPlaybackStatusPrimitives]);
  sub_2649CB5C0(v99, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_taskSleepPrimitives]);
  sub_2649CB5C0(v103, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives]);
  sub_2649CB5C0(v102, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_powerPrimitives]);
  *&v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityMessageProducer] = v89;
  sub_264A5581C(v123, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_timeoutPrimitives]);
  sub_2649CB5C0(v101, &v27[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives]);
  v97.receiver = v27;
  v97.super_class = v85;
  v66 = objc_msgSendSuper2(&v97, sel_init);

  sub_2649D2BB4(v123);
  __swift_destroy_boxed_opaque_existential_0(v101);
  __swift_destroy_boxed_opaque_existential_0(v102);
  __swift_destroy_boxed_opaque_existential_0(v103);
  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v113);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v115);
  __swift_destroy_boxed_opaque_existential_0(v116);
  __swift_destroy_boxed_opaque_existential_0(v117);
  __swift_destroy_boxed_opaque_existential_0(v118);
  __swift_destroy_boxed_opaque_existential_0(v119);
  __swift_destroy_boxed_opaque_existential_0(v120);
  __swift_destroy_boxed_opaque_existential_0(v121);
  __swift_destroy_boxed_opaque_existential_0(v122);
  __swift_destroy_boxed_opaque_existential_0(v99);
  __swift_destroy_boxed_opaque_existential_0(v100);
  __swift_destroy_boxed_opaque_existential_0(v104);
  __swift_destroy_boxed_opaque_existential_0(v108);
  sub_264A55878(v132);
  return v66;
}

id static AngelServer.sharedInstance.getter()
{
  if (qword_27FF883D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FF89BA0;

  return v1;
}

uint64_t sub_264A39240(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener);
LABEL_5:
    v11 = v3;
    return v4;
  }

  MEMORY[0x28223BE20](a1);
  v12[2] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_264A55694;
  *(v5 + 24) = v12;
  aBlock[4] = sub_264A556AC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264A39498;
  aBlock[3] = &block_descriptor_8;
  v6 = _Block_copy(aBlock);
  v7 = objc_opt_self();

  v8 = [v7 listenerWithConfigurator_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    v10 = *(v1 + v2);
    *(v1 + v2) = v8;
    v4 = v8;

    v3 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_264A393E4(void *a1, uint64_t a2)
{
  v4 = sub_264B41014();
  [a1 setDomain_];

  v5 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 16);
  v6 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 24);
  v7 = sub_264B41014();
  [a1 setService_];

  return [a1 setDelegate_];
}

uint64_t sub_264A39498(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall AngelServer.startUp()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor + 24);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor), v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts);
  *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts) = v4;

  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AE70);
  v7 = sub_264B40944();
  v8 = sub_264B41474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2649C6000, v7, v8, "AngelServer starting...", v9, 2u);
    MEMORY[0x266749940](v9, -1, -1);
  }

  if (os_variant_allows_internal_security_policies())
  {
    v10 = sub_264B40944();
    v11 = sub_264B41484();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "Internal security policies detected, activating commandline listener", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v14 = sub_264A39240(v13);
    [v14 activate];
  }

  v15 = sub_264B40944();
  v16 = sub_264B41474();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2649C6000, v15, v16, "AngelServer started", v17, 2u);
    MEMORY[0x266749940](v17, -1, -1);
  }

  v18 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState) = 1;

  sub_264A51DF8(v18);
}

uint64_t AngelServer.bootstrapSession()()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_264B41244();
  v1[6] = sub_264B41234();
  v6 = sub_264B411C4();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_264A39884, v6, v5);
}

uint64_t sub_264A39884()
{
  v17 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
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
    v16 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v16);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 239;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000012, 0x8000000264B5BE10, &v16);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_264A39AF8;
  v14 = v0[2];

  return sub_264A39D0C();
}

uint64_t sub_264A39AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_264A39CA0;
  }

  else
  {
    v7 = sub_264A39C34;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264A39C34()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A39CA0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_264A39D0C()
{
  v1[38] = v0;
  v1[39] = sub_264B41244();
  v1[40] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[41] = v3;
  v1[42] = v2;

  return MEMORY[0x2822009F8](sub_264A39DA8, v3, v2);
}

uint64_t sub_264A39DA8()
{
  v89 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Starting Session...", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  type metadata accessor for AngelServerAssertion();
  swift_allocObject();
  *(v0 + 352) = sub_264A19218();
  v7 = *(v0 + 304);
  v8 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts;
  *(v0 + 360) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts;
  v9 = *(v7 + v8);
  if (v9)
  {
    v10 = v9;
    v11 = mach_absolute_time();
    v12 = *&v10[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v12 && (v13 = v11) != 0)
    {
      v14 = __swift_project_boxed_opaque_existential_1((v12 + 24), *(v12 + 48));
      v87 = 12;
      v15 = *v14;

      sub_264A560D4(&v87, v13, 0, 0, 0);
    }

    else
    {
    }
  }

  v16 = *(v0 + 304);
  v17 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  *(v0 + 368) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v18 = (v16 + v17);
  v19 = *v18;
  *(v0 + 376) = *v18;
  v20 = v18[1];
  *(v0 + 384) = v20;
  if (v20)
  {
    swift_retain_n();
    v21 = sub_264B40944();
    v22 = sub_264B41474();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v19;

      _os_log_impl(&dword_2649C6000, v21, v22, "Existing session #%{public}ld underway, tearing down that session first.", v23, 0xCu);
      MEMORY[0x266749940](v23, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 304);
    v38 = *(v0 + 312);
    *(v0 + 392) = sub_264B41234();
    v40 = swift_task_alloc();
    *(v0 + 400) = v40;
    *(v40 + 16) = v39;
    v41 = *(MEMORY[0x277D859E0] + 4);
    v42 = swift_task_alloc();
    *(v0 + 408) = v42;
    *v42 = v0;
    v42[1] = sub_264A3A6F8;

    return MEMORY[0x2822007B8]();
  }

  v24 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    return MEMORY[0x2822007B8]();
  }

  v25 = *(v0 + 344);
  v26 = sub_264B40944();
  v27 = sub_264B41474();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    *(v28 + 4) = v24;
    _os_log_impl(&dword_2649C6000, v26, v27, "Starting session #%{public}ld", v28, 0xCu);
    MEMORY[0x266749940](v28, -1, -1);
  }

  v29 = *(v0 + 360);
  v30 = *(v0 + 304);

  v31 = *(v30 + v29);
  if (v31)
  {
    v32 = v31;
    v33 = mach_absolute_time();
    v34 = *&v32[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v34 && (v35 = v33) != 0)
    {
      v36 = __swift_project_boxed_opaque_existential_1((v34 + 24), *(v34 + 48));
      v88[0] = 13;
      v37 = *v36;

      sub_264A560D4(v88, v35, 0, 0, 0);
    }

    else
    {
    }
  }

  v43 = *(v0 + 304);
  v44 = *(v43 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  *(v43 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState) = 2;
  sub_264A51DF8(v44);
  v45 = v43 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor;
  swift_beginAccess();
  if (*(v45 + 24))
  {
    sub_2649CB5C0(v45, v0 + 136);
    if (*(v0 + 160))
    {
LABEL_31:
      v46 = *(v0 + 344);
      sub_2649D2AAC((v0 + 136), v0 + 96);
      v47 = sub_264B40944();
      v48 = sub_264B41484();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134349056;
        *(v49 + 4) = v24;
        _os_log_impl(&dword_2649C6000, v47, v48, "Vending display registration for session #%{public}ld", v49, 0xCu);
        MEMORY[0x266749940](v49, -1, -1);
      }

      v50 = *(v0 + 344);

      v51 = *(v0 + 120);
      v52 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v51);
      (*(v52 + 16))(v51, v52);
      v53 = sub_264B40944();
      v54 = sub_264B41484();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134349056;
        *(v55 + 4) = v24;
        _os_log_impl(&dword_2649C6000, v53, v54, "Activating display registration for session #%{public}ld", v55, 0xCu);
        MEMORY[0x266749940](v55, -1, -1);
      }

      v56 = *(v0 + 344);

      v57 = *(v0 + 200);
      v58 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v57);
      (*(v58 + 8))(v57, v58);
      v59 = sub_264B40944();
      v60 = sub_264B41474();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134349056;
        *(v61 + 4) = v24;
        _os_log_impl(&dword_2649C6000, v59, v60, "Activated display registration for session #%{public}ld", v61, 0xCu);
        MEMORY[0x266749940](v61, -1, -1);
      }

      v62 = *(v0 + 368);
      v63 = *(v0 + 352);
      v64 = *(v0 + 304);

      v65 = (v64 + v62);
      sub_2649CB5C0(v0 + 176, v0 + 216);
      v66 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
      swift_beginAccess();
      sub_2649FECCC(v0 + 216, v64 + v66, &qword_27FF89DA0, &qword_264B49490);
      swift_endAccess();
      v67 = *(v64 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion);
      *(v64 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = v63;

      v68 = type metadata accessor for MediaTransportServerSession();
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      swift_allocObject();
      v71 = sub_2649E793C(0xD000000000000026, 0x8000000264B5C510);
      *(v0 + 416) = v71;
      v72 = v65[1];
      *v65 = v24;
      v65[1] = v71;
      swift_retain_n();

      v73 = *(v64 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 24);
      v74 = *(v64 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 32);
      __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor), v73);
      v75 = (*(v74 + 8))(v73, v74);
      v76 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      *(v0 + 424) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      v77 = *(v64 + v76);
      *(v64 + v76) = v75;

      v78 = sub_264A54920(&qword_27FF89DD8, type metadata accessor for MediaTransportServerSession);

      v79 = swift_task_alloc();
      *(v0 + 432) = v79;
      *v79 = v0;
      v79[1] = sub_264A3AF1C;
      v80 = *(v0 + 304);

      return sub_264A3BB24(v71, v78, v24);
    }
  }

  else
  {
    v81 = *v45;
    v82 = *(v45 + 16);
    *(v0 + 168) = *(v45 + 32);
    *(v0 + 152) = v82;
    *(v0 + 136) = v81;
    if (*(v0 + 160))
    {
      goto LABEL_31;
    }
  }

  v83 = *(v0 + 320);

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  v84 = *(v0 + 384);
  v85 = *(v0 + 352);
  sub_264A52574();
  swift_allocError();
  *v86 = 7;
  *(v86 + 8) = 0x80;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264A3A6F8()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 392);
  v8 = *v0;

  v5 = *(v1 + 336);
  v6 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_264A3A858, v6, v5);
}

void sub_264A3A858()
{
  v70 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);

  v3 = sub_264B40944();
  v4 = sub_264B41474();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 384);
  if (v5)
  {
    v7 = *(v0 + 376);
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = v7;

    _os_log_impl(&dword_2649C6000, v3, v4, "Prior session #%{public}ld torn down, continuing with session start", v8, 0xCu);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 376);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    return;
  }

  v11 = *(v0 + 344);
  v12 = sub_264B40944();
  v13 = sub_264B41474();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v12, v13, "Starting session #%{public}ld", v14, 0xCu);
    MEMORY[0x266749940](v14, -1, -1);
  }

  v15 = *(v0 + 360);
  v16 = *(v0 + 304);

  v17 = *(v16 + v15);
  if (v17)
  {
    v18 = v17;
    v19 = mach_absolute_time();
    v20 = *&v18[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v20 && (v21 = v19) != 0)
    {
      v22 = __swift_project_boxed_opaque_existential_1((v20 + 24), *(v20 + 48));
      v69[0] = 13;
      v23 = *v22;

      sub_264A560D4(v69, v21, 0, 0, 0);
    }

    else
    {
    }
  }

  v24 = *(v0 + 304);
  v25 = *(v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  *(v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState) = 2;
  sub_264A51DF8(v25);
  v26 = v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor;
  swift_beginAccess();
  if (*(v26 + 24))
  {
    sub_2649CB5C0(v26, v0 + 136);
    if (*(v0 + 160))
    {
LABEL_14:
      v27 = *(v0 + 344);
      sub_2649D2AAC((v0 + 136), v0 + 96);
      v28 = sub_264B40944();
      v29 = sub_264B41484();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134349056;
        *(v30 + 4) = v10;
        _os_log_impl(&dword_2649C6000, v28, v29, "Vending display registration for session #%{public}ld", v30, 0xCu);
        MEMORY[0x266749940](v30, -1, -1);
      }

      v31 = *(v0 + 344);

      v32 = *(v0 + 120);
      v33 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v32);
      (*(v33 + 16))(v32, v33);
      v34 = sub_264B40944();
      v35 = sub_264B41484();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134349056;
        *(v36 + 4) = v10;
        _os_log_impl(&dword_2649C6000, v34, v35, "Activating display registration for session #%{public}ld", v36, 0xCu);
        MEMORY[0x266749940](v36, -1, -1);
      }

      v37 = *(v0 + 344);

      v38 = *(v0 + 200);
      v39 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v38);
      (*(v39 + 8))(v38, v39);
      v40 = sub_264B40944();
      v41 = sub_264B41474();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134349056;
        *(v42 + 4) = v10;
        _os_log_impl(&dword_2649C6000, v40, v41, "Activated display registration for session #%{public}ld", v42, 0xCu);
        MEMORY[0x266749940](v42, -1, -1);
      }

      v43 = *(v0 + 368);
      v44 = *(v0 + 352);
      v45 = *(v0 + 304);

      v46 = (v45 + v43);
      sub_2649CB5C0(v0 + 176, v0 + 216);
      v47 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
      swift_beginAccess();
      sub_2649FECCC(v0 + 216, v45 + v47, &qword_27FF89DA0, &qword_264B49490);
      swift_endAccess();
      v48 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion);
      *(v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = v44;

      v49 = type metadata accessor for MediaTransportServerSession();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v52 = sub_2649E793C(0xD000000000000026, 0x8000000264B5C510);
      *(v0 + 416) = v52;
      v53 = v46[1];
      *v46 = v10;
      v46[1] = v52;
      swift_retain_n();

      v54 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 24);
      v55 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 32);
      __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor), v54);
      v56 = (*(v55 + 8))(v54, v55);
      v57 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      *(v0 + 424) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      v58 = *(v45 + v57);
      *(v45 + v57) = v56;

      v59 = sub_264A54920(&qword_27FF89DD8, type metadata accessor for MediaTransportServerSession);

      v60 = swift_task_alloc();
      *(v0 + 432) = v60;
      *v60 = v0;
      v60[1] = sub_264A3AF1C;
      v61 = *(v0 + 304);

      sub_264A3BB24(v52, v59, v10);
      return;
    }
  }

  else
  {
    v62 = *v26;
    v63 = *(v26 + 16);
    *(v0 + 168) = *(v26 + 32);
    *(v0 + 152) = v63;
    *(v0 + 136) = v62;
    if (*(v0 + 160))
    {
      goto LABEL_14;
    }
  }

  v64 = *(v0 + 320);

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  v65 = *(v0 + 384);
  v66 = *(v0 + 352);
  sub_264A52574();
  swift_allocError();
  *v67 = 7;
  *(v67 + 8) = 0x80;
  swift_willThrow();

  v68 = *(v0 + 8);

  v68();
}

uint64_t sub_264A3AF1C()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v9 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = v2[41];
    v5 = v2[42];
    v6 = sub_264A3B344;
  }

  else
  {
    v7 = v2[52];

    v4 = v2[41];
    v5 = v2[42];
    v6 = sub_264A3B038;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_264A3B038()
{
  v30 = v0;
  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[38];

  v4 = *(v3 + v1);
  if (v4)
  {
    v5 = v4;
    v6 = mach_absolute_time();
    v7 = *&v5[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v7 && (v8 = v6) != 0)
    {
      v9 = __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
      v28 = 14;
      v10 = *v9;

      sub_264A560D4(&v28, v8, 0, 0, 0);
    }

    else
    {
    }
  }

  v11 = v0[38];
  v12 = *(v11 + v0[53]);
  if (v12)
  {
    v29 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44150;
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    strcpy((inited + 48), "remoteRequest");
    *(inited + 62) = -4864;
    v14 = v12;
    v15 = sub_264A24308(inited);
    swift_setDeallocating();
    sub_2649D04D4(inited + 32, &qword_27FF89220, &qword_264B48430);
    sub_264A9113C(&v29, v15);

    v11 = v0[38];
  }

  v16 = v0[52];
  v17 = v0[48];
  v18 = v0[44];
  v19 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives + 24);
  v20 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives + 32);
  v21 = __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives), v19);
  v22 = *(v19 - 8);
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  (*(v22 + 16))(v24, v21, v19);
  v25 = (*(v20 + 32))(v19, v20);
  (*(v22 + 8))(v24, v19);
  sub_264A3C244(v25);

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v26 = v0[1];

  return v26();
}

uint64_t sub_264A3B344()
{
  v1 = v0[52];
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[40];

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v5 = v0[55];
  v6 = v0[1];

  return v6();
}

uint64_t AngelServer.tearDown()()
{
  v1[2] = v0;
  v1[3] = sub_264B41244();
  v1[4] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_264A3B48C, v3, v2);
}

uint64_t sub_264A3B48C()
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
    _os_log_impl(&dword_2649C6000, v2, v3, "External tear down requested", v4, 2u);
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
  v9[1] = sub_264A3B644;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A3B644()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_264A558EC, v6, v5);
}

void AngelServer.provideDisplayRegistrarVendorIfNeeded(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor;
  swift_beginAccess();
  if (!*(v3 + 24))
  {
    v8 = *(v3 + 16);
    v11 = *v3;
    v12 = v8;
    v13 = *(v3 + 32);
    if (*(&v8 + 1))
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_2649CB5C0(a1, &v11);
    swift_beginAccess();
    v9 = *(&v12 + 1);
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      if (v9)
      {
LABEL_11:
        sub_2649D2AAC(&v11, v3);
LABEL_14:
        swift_endAccess();
        return;
      }
    }

    else if (*(&v12 + 1))
    {
      goto LABEL_11;
    }

    v10 = v12;
    *v3 = v11;
    *(v3 + 16) = v10;
    *(v3 + 32) = v13;
    goto LABEL_14;
  }

  sub_2649CB5C0(v3, &v11);
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_0(&v11);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B40944();
  v6 = sub_264B41494();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Display registrar vendor has already been provided, ignoring update", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }
}

uint64_t AngelServer.provideLiveActivityVendor(_:)(uint64_t a1)
{
  sub_2649CB5C0(a1, &v6);
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_screenContinuityLiveActivityVendor;
  swift_beginAccess();
  v3 = *(&v7 + 1);
  if (!*(v2 + 24))
  {
    if (*(&v7 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = v7;
    *v2 = v6;
    *(v2 + 16) = v4;
    *(v2 + 32) = v8;
    return swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2649D2AAC(&v6, v2);
  return swift_endAccess();
}

uint64_t sub_264A3B9E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v14 = a3;
  v15 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_264A380B0(&v14, v10);
  return sub_2649D04D4(v10, &unk_27FF899E0, &qword_264B53440);
}

uint64_t sub_264A3BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_264B41244();
  v4[12] = sub_264B41234();
  v6 = sub_264B411C4();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_264A3BBC4, v6, v5);
}

uint64_t sub_264A3BBC4()
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
    v4 = v0[9];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2649C6000, v2, v3, "Starting MediaTransportSession #%{public}ld", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[8];

  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  v10 = *(v9 + 16);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_264A3BDC0;
  v13 = v0[7];

  return (v15)(v0 + 2, ObjectType, v9);
}

uint64_t sub_264A3BDC0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_264A3C1E0;
  }

  else
  {
    v7 = sub_264A3BEFC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264A3BEFC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[17] = sub_264B41234();
  v4 = swift_task_alloc();
  v0[18] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v3;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_264A3C014;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A3C014()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v8 = *v0;

  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264A3C174, v6, v5);
}

uint64_t sub_264A3C174()
{
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_264A3C1E0()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_264A3C244(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE8, &qword_264B494F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v18[1] = a1;
  sub_2649CB2F0();
  v13 = sub_264B41554();
  v18[0] = v13;
  v14 = sub_264B41514();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DF8, &qword_264B494F8);
  sub_2649CB4C8(&unk_27FF89E00, &qword_27FF89DF8, &qword_264B494F8);
  sub_264A54920(&qword_27FF887B8, sub_2649CB2F0);
  sub_264B40B14();
  sub_2649D04D4(v7, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2649CB4C8(&unk_27FF89E10, &qword_27FF89DE8, &qword_264B494F0);
  v15 = sub_264B40B54();

  (*(v9 + 8))(v12, v8);
  v16 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription);
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription) = v15;
}

uint64_t sub_264A3C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 776) = a7;
  *(v7 + 768) = a6;
  *(v7 + 177) = a5;
  *(v7 + 760) = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140) - 8) + 64) + 15;
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  v9 = sub_264B40104();
  *(v7 + 800) = v9;
  v10 = *(v9 - 8);
  *(v7 + 808) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  v12 = sub_264B41844();
  *(v7 + 832) = v12;
  v13 = *(v12 - 8);
  *(v7 + 840) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 848) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  *(v7 + 856) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  *(v7 + 864) = v16;
  v17 = *(v16 - 8);
  *(v7 + 872) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  sub_264B41244();
  *(v7 + 904) = sub_264B41234();
  v20 = sub_264B411C4();
  *(v7 + 912) = v20;
  *(v7 + 920) = v19;

  return MEMORY[0x2822009F8](sub_264A3C798, v20, v19);
}

uint64_t sub_264A3C798()
{
  v99 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 760);
  v2 = *(v0 + 177);
  v3 = sub_264B40964();
  *(v0 + 928) = __swift_project_value_buffer(v3, qword_27FF8AE70);
  sub_2649E124C(v1, v2);
  v4 = sub_264B40944();
  v5 = sub_264B414B4();
  sub_2649E1290(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 760);
    v7 = *(v0 + 177);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v97[0] = v9;
    *v8 = 136446210;
    *(v0 + 744) = v6;
    *(v0 + 752) = v7;
    sub_2649E124C(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, v97);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Inside Task for %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v13 = *(v0 + 872);
  v14 = *(v0 + 864);
  v15 = *(v0 + 856);
  sub_2649D046C(*(v0 + 768), v15, &unk_27FF899E0, &qword_264B53440);
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    sub_2649D04D4(*(v0 + 856), &unk_27FF899E0, &qword_264B53440);
  }

  else
  {
    v16 = *(v0 + 896);
    v17 = *(v0 + 888);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 776);
    v96 = *(v18 + 32);
    v96(v16, *(v0 + 856), v19);
    (*(v18 + 16))(v17, v16, v19);
    v21 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations;
    v22 = *(v20 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + v21) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2649D8028(0, *(v22 + 2) + 1, 1, v22);
      *(v20 + v21) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2649D8028(v24 > 1, v25 + 1, 1, v22);
    }

    v26 = *(v0 + 896);
    v27 = *(v0 + 888);
    v28 = *(v0 + 872);
    v29 = *(v0 + 864);
    *(v22 + 2) = v25 + 1;
    v96(&v22[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25], v27, v29);
    *(v20 + v21) = v22;
    (*(v28 + 8))(v26, v29);
  }

  v30 = *(v0 + 776);
  v31 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  *(v0 + 936) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  if (*(v30 + v31) > 4uLL)
  {
    v34 = *(v0 + 904);
    v35 = *(v0 + 760);
    v36 = *(v0 + 177);

    sub_2649E124C(v35, v36);
    v37 = sub_264B40944();
    v38 = sub_264B414B4();
    sub_2649E1290(v35, v36);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 760);
      v40 = *(v0 + 177);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v97[0] = v42;
      *v41 = 136446210;
      *(v0 + 696) = v39;
      *(v0 + 704) = v40;
      sub_2649E124C(v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v43 = sub_264B41064();
      v45 = sub_2649CC004(v43, v44, v97);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2649C6000, v37, v38, "Already tearing down, ignoring teardown due to: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x266749940](v42, -1, -1);
      MEMORY[0x266749940](v41, -1, -1);
    }

    v46 = *(v0 + 896);
    v47 = *(v0 + 888);
    v48 = *(v0 + 880);
    v49 = *(v0 + 856);
    v50 = *(v0 + 848);
    v51 = *(v0 + 824);
    v52 = *(v0 + 816);
    v53 = *(v0 + 792);
    v54 = *(v0 + 784);

    v55 = *(v0 + 8);

    return v55();
  }

  else
  {
    v32 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
    *(v0 + 944) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
    v33 = *(v30 + v32 + 8);
    *(v0 + 952) = v33;
    if (v33)
    {

      return MEMORY[0x2822009F8](sub_264A3D16C, v33, 0);
    }

    else
    {
      v56 = *(v0 + 928);
      v57 = *(v0 + 760);
      v58 = *(v30 + v31);
      v59 = *(v0 + 177);
      *(v30 + v31) = 5;
      sub_264A51DF8(v58);
      sub_2649E124C(v57, v59);
      v60 = sub_264B40944();
      v61 = sub_264B41494();
      sub_2649E1290(v57, v59);
      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 760);
        v63 = *(v0 + 177);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v97[0] = v65;
        *v64 = 136446210;
        *(v0 + 712) = v62;
        *(v0 + 720) = v63;
        sub_2649E124C(v62, v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
        v66 = sub_264B41064();
        v68 = sub_2649CC004(v66, v67, v97);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_2649C6000, v60, v61, "AngelServer should tear down session due to: %{public}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x266749940](v65, -1, -1);
        MEMORY[0x266749940](v64, -1, -1);
      }

      v69 = *(v0 + 776);
      v70 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask;
      if (*(v69 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask))
      {
        v71 = *(v69 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask);

        sub_264B41304();

        v72 = *(v69 + v70);
      }

      v73 = *(v0 + 776);
      *(v69 + v70) = 0;

      sub_264A3FC74();
      sub_264A3FDC0();
      sub_264A3FEAC();
      v74 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription;
      if (*(v73 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription))
      {
        v75 = *(v73 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription);

        sub_264B40994();

        v76 = *(v73 + v74);
      }

      v77 = *(v0 + 776);
      *(v73 + v74) = 0;

      v78 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
      *(v0 + 968) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
      swift_beginAccess();
      sub_2649D046C(v77 + v78, v0 + 224, &qword_27FF89DA8, &qword_264B49498);
      if (*(v0 + 248))
      {
        v79 = *(v0 + 928);
        sub_2649D2AAC((v0 + 224), v0 + 184);
        v80 = sub_264B40944();
        v81 = sub_264B41484();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_2649C6000, v80, v81, "Invalidating current scene interactor", v82, 2u);
          MEMORY[0x266749940](v82, -1, -1);
        }

        v83 = *__swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
        sub_264A7E5F0();
        __swift_destroy_boxed_opaque_existential_0((v0 + 184));
      }

      else
      {
        sub_2649D04D4(v0 + 224, &qword_27FF89DA8, &qword_264B49498);
      }

      v84 = *(v0 + 928);
      v85 = sub_264B40944();
      v86 = sub_264B41484();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_2649C6000, v85, v86, "Notifying client that we are winding down", v87, 2u);
        MEMORY[0x266749940](v87, -1, -1);
      }

      v88 = *(v0 + 848);
      v89 = *(v0 + 776);
      v90 = *(v0 + 760);
      v91 = *(v0 + 177);

      *&v97[0] = v90;
      *(&v97[0] + 1) = v91;
      v98[24] = 0x80;
      sub_2649E124C(v90, v91);
      sub_264A40100(v97);
      v92 = v97[1];
      *(v0 + 120) = v97[0];
      *(v0 + 136) = v92;
      *(v0 + 152) = *v98;
      *(v0 + 161) = *&v98[9];
      sub_264A52520(v0 + 120);
      sub_264B41B14();
      v93 = swift_task_alloc();
      *(v0 + 976) = v93;
      *v93 = v0;
      v93[1] = sub_264A3D884;
      v94 = *(v0 + 848);

      return sub_2649FE7A8(100000000000000000, 0, 0, 0, 1);
    }
  }
}

uint64_t sub_264A3D16C()
{
  v1 = *(v0[119] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  v0[120] = v1;
  sub_2649DDB20(v1);
  v2 = v0[115];
  v3 = v0[114];

  return MEMORY[0x2822009F8](sub_264A3D1E8, v3, v2);
}

uint64_t sub_264A3D1E8()
{
  v72 = v0;
  v1 = *(v0 + 960);
  if (v1 == 2)
  {
    v2 = *(v0 + 928);
    v3 = *(v0 + 904);
    v4 = *(v0 + 760);
    v5 = *(v0 + 177);
    sub_2649FE684(2);
    sub_2649FE684(2);

    sub_2649E124C(v4, v5);
    v6 = sub_264B40944();
    v7 = sub_264B414B4();
    sub_2649E1290(v4, v5);
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 952);
    if (v8)
    {
      v10 = *(v0 + 760);
      v11 = *(v0 + 177);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v70[0] = v13;
      *v12 = 136446210;
      *(v0 + 728) = v10;
      *(v0 + 736) = v11;
      sub_2649E124C(v10, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v14 = sub_264B41064();
      v16 = sub_2649CC004(v14, v15, v70);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2649C6000, v6, v7, "Tear down requested for %{public}s, but MediaTransport is already tearing down, deferring to MediaTransport as the cause of tear down", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v17 = *(v0 + 896);
    v18 = *(v0 + 888);
    v19 = *(v0 + 880);
    v20 = *(v0 + 856);
    v21 = *(v0 + 848);
    v22 = *(v0 + 824);
    v23 = *(v0 + 816);
    v24 = *(v0 + 792);
    v25 = *(v0 + 784);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 952);
    sub_2649FE684(v1);
    sub_2649FE684(2);

    v29 = *(v0 + 936);
    v30 = *(v0 + 928);
    v31 = *(v0 + 776);
    v32 = *(v0 + 760);
    v33 = *(v31 + v29);
    v34 = *(v0 + 177);
    *(v31 + v29) = 5;
    sub_264A51DF8(v33);
    sub_2649E124C(v32, v34);
    v35 = sub_264B40944();
    v36 = sub_264B41494();
    sub_2649E1290(v32, v34);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 760);
      v38 = *(v0 + 177);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v70[0] = v40;
      *v39 = 136446210;
      *(v0 + 712) = v37;
      *(v0 + 720) = v38;
      sub_2649E124C(v37, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v41 = sub_264B41064();
      v43 = sub_2649CC004(v41, v42, v70);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2649C6000, v35, v36, "AngelServer should tear down session due to: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x266749940](v40, -1, -1);
      MEMORY[0x266749940](v39, -1, -1);
    }

    v44 = *(v0 + 776);
    v45 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask;
    if (*(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask))
    {
      v46 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask);

      sub_264B41304();

      v47 = *(v44 + v45);
    }

    v48 = *(v0 + 776);
    *(v44 + v45) = 0;

    sub_264A3FC74();
    sub_264A3FDC0();
    sub_264A3FEAC();
    v49 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription;
    if (*(v48 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription))
    {
      v50 = *(v48 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription);

      sub_264B40994();

      v51 = *(v48 + v49);
    }

    v52 = *(v0 + 776);
    *(v48 + v49) = 0;

    v53 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
    *(v0 + 968) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
    swift_beginAccess();
    sub_2649D046C(v52 + v53, v0 + 224, &qword_27FF89DA8, &qword_264B49498);
    if (*(v0 + 248))
    {
      v54 = *(v0 + 928);
      sub_2649D2AAC((v0 + 224), v0 + 184);
      v55 = sub_264B40944();
      v56 = sub_264B41484();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2649C6000, v55, v56, "Invalidating current scene interactor", v57, 2u);
        MEMORY[0x266749940](v57, -1, -1);
      }

      v58 = *__swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
      sub_264A7E5F0();
      __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    }

    else
    {
      sub_2649D04D4(v0 + 224, &qword_27FF89DA8, &qword_264B49498);
    }

    v59 = *(v0 + 928);
    v60 = sub_264B40944();
    v61 = sub_264B41484();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2649C6000, v60, v61, "Notifying client that we are winding down", v62, 2u);
      MEMORY[0x266749940](v62, -1, -1);
    }

    v63 = *(v0 + 848);
    v64 = *(v0 + 776);
    v65 = *(v0 + 760);
    v66 = *(v0 + 177);

    *&v70[0] = v65;
    *(&v70[0] + 1) = v66;
    v71[24] = 0x80;
    sub_2649E124C(v65, v66);
    sub_264A40100(v70);
    v67 = v70[1];
    *(v0 + 120) = v70[0];
    *(v0 + 136) = v67;
    *(v0 + 152) = *v71;
    *(v0 + 161) = *&v71[9];
    sub_264A52520(v0 + 120);
    sub_264B41B14();
    v68 = swift_task_alloc();
    *(v0 + 976) = v68;
    *v68 = v0;
    v68[1] = sub_264A3D884;
    v69 = *(v0 + 848);

    return sub_2649FE7A8(100000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_264A3D884()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *(*v1 + 848);
  v5 = *(*v1 + 840);
  v6 = *(*v1 + 832);
  v7 = *v1;
  *(*v1 + 984) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 920);
  v9 = *(v2 + 912);
  if (v0)
  {
    v10 = sub_264A3DC78;
  }

  else
  {
    v10 = sub_264A3DA1C;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_264A3DA1C()
{
  v24 = v0;
  v1 = *(v0 + 776);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription))
  {
    v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription);

    sub_264B40994();

    v4 = *(v1 + v2);
  }

  v5 = *(v0 + 776);
  *(v1 + v2) = 0;

  v6 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer;
  *(v0 + 992) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer;
  v7 = *(v5 + v6);
  *(v0 + 1000) = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    *(v0 + 1008) = v8;
    *v8 = v0;
    v8[1] = sub_264A3DD68;

    return PlaybackServer.invalidate(waitsForSession:)(1);
  }

  else
  {
    v10 = *(v0 + 177);
    if (v10 <= 0xFB)
    {
      v14 = *(v0 + 760);
      sub_264A52574();
      v11 = swift_allocError();
      *v15 = v14;
      *(v15 + 8) = v10;
      LOBYTE(v10) = *(v0 + 177);
      v12 = 0xE500000000000000;
      v13 = 0x726F727265;
    }

    else
    {
      v11 = 0;
      v12 = 0xEB00000000646E65;
      v13 = 0x206E6F6973736573;
    }

    v16 = *(v0 + 776);
    sub_2649E124C(*(v0 + 760), v10);
    v17 = telemetryPayload(_:_:)(v13, v12, v11);

    v18 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
    *(v0 + 1016) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
    v19 = *(v16 + v18);
    if (v19)
    {
      v23 = 10;
      v20 = v19;
      sub_264A9113C(&v23, v17);
    }

    v21 = swift_task_alloc();
    *(v0 + 1024) = v21;
    *v21 = v0;
    v21[1] = sub_264A3E02C;
    v22 = *(v0 + 776);

    return sub_264A403A8();
  }
}

uint64_t sub_264A3DC78()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[107];
  v6 = v0[106];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[99];
  v10 = v0[98];

  v11 = v0[1];
  v12 = v0[123];

  return v11();
}

uint64_t sub_264A3DD68()
{
  v1 = *v0;
  v2 = *(*v0 + 1008);
  v3 = *(*v0 + 1000);
  v7 = *v0;

  v4 = *(v1 + 920);
  v5 = *(v1 + 912);

  return MEMORY[0x2822009F8](sub_264A3DEAC, v5, v4);
}

uint64_t sub_264A3DEAC()
{
  v16 = v0;
  v1 = *(v0 + 177);
  if (v1 <= 0xFB)
  {
    v5 = *(v0 + 760);
    sub_264A52574();
    v2 = swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v1;
    LOBYTE(v1) = *(v0 + 177);
    v3 = 0xE500000000000000;
    v4 = 0x726F727265;
  }

  else
  {
    v2 = 0;
    v3 = 0xEB00000000646E65;
    v4 = 0x206E6F6973736573;
  }

  v7 = *(v0 + 776);
  sub_2649E124C(*(v0 + 760), v1);
  v8 = telemetryPayload(_:_:)(v4, v3, v2);

  v9 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  *(v0 + 1016) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  v10 = *(v7 + v9);
  if (v10)
  {
    v15 = 10;
    v11 = v10;
    sub_264A9113C(&v15, v8);
  }

  v12 = swift_task_alloc();
  *(v0 + 1024) = v12;
  *v12 = v0;
  v12[1] = sub_264A3E02C;
  v13 = *(v0 + 776);

  return sub_264A403A8();
}

uint64_t sub_264A3E02C()
{
  v1 = *v0;
  v2 = *(*v0 + 1024);
  v6 = *v0;

  v3 = *(v1 + 920);
  v4 = *(v1 + 912);

  return MEMORY[0x2822009F8](sub_264A3E14C, v4, v3);
}

uint64_t sub_264A3E14C()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 776);
  v3 = *(v2 + v1);
  *(v2 + v1) = 6;
  sub_264A51DF8(v3);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
  *(v0 + 1032) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
  swift_beginAccess();
  sub_2649D046C(v2 + v4, v0 + 304, &unk_27FF89DB0, &unk_264B494A0);
  if (*(v0 + 328))
  {
    sub_2649D2AAC((v0 + 304), v0 + 264);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_1((v0 + 264), v5);
    v7 = *(v6 + 16);
    v75 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 1040) = v9;
    *v9 = v0;
    v9[1] = sub_264A3E8BC;

    return v75(v5, v6);
  }

  else
  {
    sub_2649D04D4(v0 + 304, &unk_27FF89DB0, &unk_264B494A0);
    v11 = *(v0 + 808);
    v12 = *(v0 + 800);
    v13 = *(v0 + 792);
    v14 = *(v0 + 776);
    v15 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
    *(v0 + 1048) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
    swift_beginAccess();
    sub_2649D046C(v14 + v15, v13, &unk_27FF8BFC0, &qword_264B47140);
    v16 = (*(v11 + 48))(v13, 1, v12);
    v17 = *(v0 + 792);
    if (v16 == 1)
    {
      v18 = *(v0 + 928);
      v19 = *(v0 + 904);

      sub_2649D04D4(v17, &unk_27FF8BFC0, &qword_264B47140);
      v20 = sub_264B40944();
      v21 = sub_264B41494();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2649C6000, v20, v21, "Cannot record end of session because transport session lacks device ID", v22, 2u);
        MEMORY[0x266749940](v22, -1, -1);
      }

      v23 = *(v0 + 1048);
      v24 = *(v0 + 1016);
      v25 = *(v0 + 992);
      v26 = *(v0 + 968);
      v27 = *(v0 + 784);
      v28 = *(v0 + 776);
      (*(*(v0 + 808) + 56))(v27, 1, 1, *(v0 + 800));
      swift_beginAccess();
      sub_2649FECCC(v27, v28 + v23, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      v29 = *(v28 + v25);
      *(v28 + v25) = 0;

      v30 = *(v28 + v24);
      *(v28 + v24) = 0;

      *(v0 + 376) = 0;
      *(v0 + 344) = 0u;
      *(v0 + 360) = 0u;
      swift_beginAccess();
      sub_2649FECCC(v0 + 344, v28 + v26, &qword_27FF89DA8, &qword_264B49498);
      swift_endAccess();
      v31 = v28 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
      swift_beginAccess();
      if (*(v31 + 24))
      {
        sub_2649CB5C0(v31, v0 + 424);
        v32 = *(v0 + 448);
        v33 = *(v0 + 456);
        __swift_project_boxed_opaque_existential_1((v0 + 424), v32);
        (*(v33 + 16))(v32, v33);
        __swift_destroy_boxed_opaque_existential_0((v0 + 424));
      }

      v34 = *(v0 + 776);
      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 416) = 0;
      swift_beginAccess();
      sub_2649FECCC(v0 + 384, v31, &qword_27FF89DA0, &qword_264B49490);
      swift_endAccess();
      v35 = v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
      v37 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
      v36 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
      *(v0 + 16) = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
      *(v0 + 32) = v37;
      *(v0 + 48) = v36;
      v39 = *(v35 + 64);
      v38 = *(v35 + 80);
      v40 = *(v35 + 48);
      *(v0 + 112) = *(v35 + 96);
      *(v0 + 80) = v39;
      *(v0 + 96) = v38;
      *(v0 + 64) = v40;
      *(v35 + 96) = 0;
      *(v35 + 64) = 0u;
      *(v35 + 80) = 0u;
      *(v35 + 32) = 0u;
      *(v35 + 48) = 0u;
      *v35 = 0u;
      *(v35 + 16) = 0u;
      sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
      v41 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
      *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = *(v0 + 872);
        v46 = *(v43 + 16);
        v44 = v43 + 16;
        v45 = v46;
        v47 = v41 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
        v48 = *(v44 + 56);
        do
        {
          v49 = *(v0 + 880);
          v50 = *(v0 + 864);
          v45(v49, v47, v50);
          sub_264B411E4();
          (*(v44 - 8))(v49, v50);
          v47 += v48;
          --v42;
        }

        while (v42);
      }

      v51 = *(v0 + 928);
      v52 = *(v0 + 776);
      v53 = sub_264B40944();
      v54 = sub_264B414B4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 944);
        v56 = *(v0 + 776);
        v57 = swift_slowAlloc();
        *v57 = 134349056;
        *(v57 + 4) = *&v56[v55];

        _os_log_impl(&dword_2649C6000, v53, v54, "Droppping keepAliveAssertion for session #%{public}ld", v57, 0xCu);
        MEMORY[0x266749940](v57, -1, -1);
        v58 = *(v0 + 776);
      }

      else
      {

        v58 = *(v0 + 776);
        v53 = v58;
      }

      v64 = *(&v58->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion);
      *(&v58->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

      v65 = *(v0 + 896);
      v66 = *(v0 + 888);
      v67 = *(v0 + 880);
      v68 = *(v0 + 856);
      v69 = *(v0 + 848);
      v70 = *(v0 + 824);
      v71 = *(v0 + 816);
      v72 = *(v0 + 792);
      v73 = *(v0 + 784);

      v74 = *(v0 + 8);

      return v74();
    }

    else
    {
      v59 = *(v0 + 776);
      (*(*(v0 + 808) + 32))(*(v0 + 824), *(v0 + 792), *(v0 + 800));
      v60 = *__swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker), *(v59 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker + 24));
      v61 = *(MEMORY[0x277D4B7E0] + 4);
      v76 = (*MEMORY[0x277D4B7E0] + MEMORY[0x277D4B7E0]);
      v62 = swift_task_alloc();
      *(v0 + 1056) = v62;
      *v62 = v0;
      v62[1] = sub_264A3F01C;
      v63 = *(v0 + 824);

      return v76(v63);
    }
  }
}

uint64_t sub_264A3E8BC()
{
  v1 = *v0;
  v2 = *(*v0 + 1040);
  v6 = *v0;

  v3 = *(v1 + 920);
  v4 = *(v1 + 912);

  return MEMORY[0x2822009F8](sub_264A3E9DC, v4, v3);
}

uint64_t sub_264A3E9DC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 776);
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0;
  swift_beginAccess();
  sub_2649FECCC(v0 + 464, v2 + v1, &unk_27FF89DB0, &unk_264B494A0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 776);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  *(v0 + 1048) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  swift_beginAccess();
  sub_2649D046C(v6 + v7, v5, &unk_27FF8BFC0, &qword_264B47140);
  v8 = (*(v3 + 48))(v5, 1, v4);
  v9 = *(v0 + 792);
  if (v8 == 1)
  {
    v10 = *(v0 + 928);
    v11 = *(v0 + 904);

    sub_2649D04D4(v9, &unk_27FF8BFC0, &qword_264B47140);
    v12 = sub_264B40944();
    v13 = sub_264B41494();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2649C6000, v12, v13, "Cannot record end of session because transport session lacks device ID", v14, 2u);
      MEMORY[0x266749940](v14, -1, -1);
    }

    v15 = *(v0 + 1048);
    v16 = *(v0 + 1016);
    v17 = *(v0 + 992);
    v18 = *(v0 + 968);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    (*(*(v0 + 808) + 56))(v19, 1, 1, *(v0 + 800));
    swift_beginAccess();
    sub_2649FECCC(v19, v20 + v15, &unk_27FF8BFC0, &qword_264B47140);
    swift_endAccess();
    v21 = *(v20 + v17);
    *(v20 + v17) = 0;

    v22 = *(v20 + v16);
    *(v20 + v16) = 0;

    *(v0 + 376) = 0;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    swift_beginAccess();
    sub_2649FECCC(v0 + 344, v20 + v18, &qword_27FF89DA8, &qword_264B49498);
    swift_endAccess();
    v23 = v20 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
    swift_beginAccess();
    if (*(v23 + 24))
    {
      sub_2649CB5C0(v23, v0 + 424);
      v24 = *(v0 + 448);
      v25 = *(v0 + 456);
      __swift_project_boxed_opaque_existential_1((v0 + 424), v24);
      (*(v25 + 16))(v24, v25);
      __swift_destroy_boxed_opaque_existential_0((v0 + 424));
    }

    v26 = *(v0 + 776);
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0;
    swift_beginAccess();
    sub_2649FECCC(v0 + 384, v23, &qword_27FF89DA0, &qword_264B49490);
    swift_endAccess();
    v27 = v26 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
    v29 = *(v26 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
    v28 = *(v26 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
    *(v0 + 16) = *(v26 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
    *(v0 + 32) = v29;
    *(v0 + 48) = v28;
    v31 = *(v27 + 64);
    v30 = *(v27 + 80);
    v32 = *(v27 + 48);
    *(v0 + 112) = *(v27 + 96);
    *(v0 + 80) = v31;
    *(v0 + 96) = v30;
    *(v0 + 64) = v32;
    *(v27 + 96) = 0;
    *(v27 + 64) = 0u;
    *(v27 + 80) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
    v33 = *(v26 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
    *(v26 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = *(v0 + 872);
      v38 = *(v35 + 16);
      v36 = v35 + 16;
      v37 = v38;
      v39 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      v40 = *(v36 + 56);
      do
      {
        v41 = *(v0 + 880);
        v42 = *(v0 + 864);
        v37(v41, v39, v42);
        sub_264B411E4();
        (*(v36 - 8))(v41, v42);
        v39 += v40;
        --v34;
      }

      while (v34);
    }

    v43 = *(v0 + 928);
    v44 = *(v0 + 776);
    v45 = sub_264B40944();
    v46 = sub_264B414B4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 944);
      v48 = *(v0 + 776);
      v49 = swift_slowAlloc();
      *v49 = 134349056;
      *(v49 + 4) = *&v48[v47];

      _os_log_impl(&dword_2649C6000, v45, v46, "Droppping keepAliveAssertion for session #%{public}ld", v49, 0xCu);
      MEMORY[0x266749940](v49, -1, -1);
      v50 = *(v0 + 776);
    }

    else
    {

      v50 = *(v0 + 776);
      v45 = v50;
    }

    v57 = *(&v50->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion);
    *(&v50->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

    v58 = *(v0 + 896);
    v59 = *(v0 + 888);
    v60 = *(v0 + 880);
    v61 = *(v0 + 856);
    v62 = *(v0 + 848);
    v63 = *(v0 + 824);
    v64 = *(v0 + 816);
    v65 = *(v0 + 792);
    v66 = *(v0 + 784);

    v67 = *(v0 + 8);

    return v67();
  }

  else
  {
    v51 = *(v0 + 776);
    (*(*(v0 + 808) + 32))(*(v0 + 824), *(v0 + 792), *(v0 + 800));
    v52 = *__swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker), *(v51 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker + 24));
    v53 = *(MEMORY[0x277D4B7E0] + 4);
    v68 = (*MEMORY[0x277D4B7E0] + MEMORY[0x277D4B7E0]);
    v54 = swift_task_alloc();
    *(v0 + 1056) = v54;
    *v54 = v0;
    v54[1] = sub_264A3F01C;
    v55 = *(v0 + 824);

    return v68(v55);
  }
}

uint64_t sub_264A3F01C()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v4 = *v1;
  *(*v1 + 1064) = v0;

  v5 = *(v2 + 920);
  v6 = *(v2 + 912);
  if (v0)
  {
    v7 = sub_264A3F734;
  }

  else
  {
    v7 = sub_264A3F158;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264A3F158()
{
  v74 = v0;
  v1 = v0 + 344;
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 808);
  v7 = *(v0 + 800);

  (*(v6 + 16))(v5, v4, v7);
  v8 = sub_264B40944();
  v9 = sub_264B414B4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 824);
  v12 = *(v0 + 816);
  v13 = *(v0 + 808);
  v14 = *(v0 + 800);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v73 = v71;
    *v15 = 136315138;
    sub_264A54920(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v16 = sub_264B41A64();
    v72 = v11;
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_2649CC004(v16, v18, &v73);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2649C6000, v8, v9, "Ended session for device: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x266749940](v71, -1, -1);
    v21 = v15;
    v1 = v0 + 344;
    MEMORY[0x266749940](v21, -1, -1);

    v19(v72, v14);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    v22(v11, v14);
  }

  v23 = *(v0 + 1048);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 992);
  v26 = *(v0 + 968);
  v27 = *(v0 + 784);
  v28 = *(v0 + 776);
  (*(*(v0 + 808) + 56))(v27, 1, 1, *(v0 + 800));
  swift_beginAccess();
  sub_2649FECCC(v27, v28 + v23, &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  v29 = *(v28 + v25);
  *(v28 + v25) = 0;

  v30 = *(v28 + v24);
  *(v28 + v24) = 0;

  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  sub_2649FECCC(v1, v28 + v26, &qword_27FF89DA8, &qword_264B49498);
  swift_endAccess();
  v31 = v28 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
  swift_beginAccess();
  if (*(v31 + 24))
  {
    sub_2649CB5C0(v31, v0 + 424);
    v32 = *(v0 + 448);
    v33 = *(v0 + 456);
    __swift_project_boxed_opaque_existential_1((v0 + 424), v32);
    (*(v33 + 16))(v32, v33);
    __swift_destroy_boxed_opaque_existential_0((v0 + 424));
  }

  v34 = *(v0 + 776);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0;
  swift_beginAccess();
  sub_2649FECCC(v0 + 384, v31, &qword_27FF89DA0, &qword_264B49490);
  swift_endAccess();
  v35 = v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  v37 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
  v36 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
  *(v0 + 16) = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
  *(v0 + 32) = v37;
  *(v0 + 48) = v36;
  v39 = *(v35 + 64);
  v38 = *(v35 + 80);
  v40 = *(v35 + 48);
  *(v0 + 112) = *(v35 + 96);
  *(v0 + 80) = v39;
  *(v0 + 96) = v38;
  *(v0 + 64) = v40;
  *(v35 + 96) = 0;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 0u;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
  v41 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = *(v0 + 872);
    v46 = *(v43 + 16);
    v44 = v43 + 16;
    v45 = v46;
    v47 = v41 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
    v48 = *(v44 + 56);
    do
    {
      v49 = *(v0 + 880);
      v50 = *(v0 + 864);
      v45(v49, v47, v50);
      sub_264B411E4();
      (*(v44 - 8))(v49, v50);
      v47 += v48;
      --v42;
    }

    while (v42);
  }

  v51 = *(v0 + 928);
  v52 = *(v0 + 776);
  v53 = sub_264B40944();
  v54 = sub_264B414B4();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 944);
    v56 = *(v0 + 776);
    v57 = swift_slowAlloc();
    *v57 = 134349056;
    *(v57 + 4) = *&v56[v55];

    _os_log_impl(&dword_2649C6000, v53, v54, "Droppping keepAliveAssertion for session #%{public}ld", v57, 0xCu);
    MEMORY[0x266749940](v57, -1, -1);
    v58 = *(v0 + 776);
  }

  else
  {

    v58 = *(v0 + 776);
    v53 = v58;
  }

  v59 = *(&v58->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion);
  *(&v58->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

  v60 = *(v0 + 896);
  v61 = *(v0 + 888);
  v62 = *(v0 + 880);
  v63 = *(v0 + 856);
  v64 = *(v0 + 848);
  v65 = *(v0 + 824);
  v66 = *(v0 + 816);
  v67 = *(v0 + 792);
  v68 = *(v0 + 784);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_264A3F734()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);

  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1064);
  v9 = *(v0 + 824);
  v10 = *(v0 + 808);
  v11 = *(v0 + 800);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2649C6000, v5, v6, "Unable to record end of session: %{public}@", v12, 0xCu);
    sub_2649D04D4(v13, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v16 = *(v0 + 1048);
  v17 = *(v0 + 1016);
  v18 = *(v0 + 992);
  v19 = *(v0 + 968);
  v20 = *(v0 + 784);
  v21 = *(v0 + 776);
  (*(*(v0 + 808) + 56))(v20, 1, 1, *(v0 + 800));
  swift_beginAccess();
  sub_2649FECCC(v20, v21 + v16, &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  v22 = *(v21 + v18);
  *(v21 + v18) = 0;

  v23 = *(v21 + v17);
  *(v21 + v17) = 0;

  *(v0 + 376) = 0;
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  swift_beginAccess();
  sub_2649FECCC(v0 + 344, v21 + v19, &qword_27FF89DA8, &qword_264B49498);
  swift_endAccess();
  v24 = v21 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
  swift_beginAccess();
  if (*(v24 + 24))
  {
    sub_2649CB5C0(v24, v0 + 424);
    v25 = *(v0 + 448);
    v26 = *(v0 + 456);
    __swift_project_boxed_opaque_existential_1((v0 + 424), v25);
    (*(v26 + 16))(v25, v26);
    __swift_destroy_boxed_opaque_existential_0((v0 + 424));
  }

  v27 = *(v0 + 776);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0;
  swift_beginAccess();
  sub_2649FECCC(v0 + 384, v24, &qword_27FF89DA0, &qword_264B49490);
  swift_endAccess();
  v28 = v27 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  v30 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
  v29 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
  *(v0 + 16) = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
  *(v0 + 32) = v30;
  *(v0 + 48) = v29;
  v32 = *(v28 + 64);
  v31 = *(v28 + 80);
  v33 = *(v28 + 48);
  *(v0 + 112) = *(v28 + 96);
  *(v0 + 80) = v32;
  *(v0 + 96) = v31;
  *(v0 + 64) = v33;
  *(v28 + 96) = 0;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
  v34 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v0 + 872);
    v39 = *(v36 + 16);
    v37 = v36 + 16;
    v38 = v39;
    v40 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    do
    {
      v42 = *(v0 + 880);
      v43 = *(v0 + 864);
      v38(v42, v40, v43);
      sub_264B411E4();
      (*(v37 - 8))(v42, v43);
      v40 += v41;
      --v35;
    }

    while (v35);
  }

  v44 = *(v0 + 928);
  v45 = *(v0 + 776);
  v46 = sub_264B40944();
  v47 = sub_264B414B4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 944);
    v49 = *(v0 + 776);
    v50 = swift_slowAlloc();
    *v50 = 134349056;
    *(v50 + 4) = *&v49[v48];

    _os_log_impl(&dword_2649C6000, v46, v47, "Droppping keepAliveAssertion for session #%{public}ld", v50, 0xCu);
    MEMORY[0x266749940](v50, -1, -1);
    v51 = *(v0 + 776);
  }

  else
  {

    v51 = *(v0 + 776);
    v46 = v51;
  }

  v52 = *(&v51->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion);
  *(&v51->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

  v53 = *(v0 + 896);
  v54 = *(v0 + 888);
  v55 = *(v0 + 880);
  v56 = *(v0 + 856);
  v57 = *(v0 + 848);
  v58 = *(v0 + 824);
  v59 = *(v0 + 816);
  v60 = *(v0 + 792);
  v61 = *(v0 + 784);

  v62 = *(v0 + 8);

  return v62();
}

void sub_264A3FC74()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator))
  {
    v2 = v0;
    v3 = qword_27FF88408;

    if (v3 != -1)
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
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Stopping policy application", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    sub_264B3F87C();

    v8 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine);
    *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine) = 0;

    v9 = *(v2 + v1);
    *(v2 + v1) = 0;
  }
}

uint64_t sub_264A3FDC0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubscriptions;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  result = sub_264B41884();
  v4 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266748A70](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      sub_264B40994();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264A3FEAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription))
  {

    sub_264B40994();
  }

  v3 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription))
  {
    v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription);

    sub_264B40994();
  }

  v5 = *(v0 + v2);
  *(v0 + v2) = 0;

  v6 = *(v0 + v3);
  *(v0 + v3) = 0;

  v7 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneObservationSubscriptions;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_264B41884())
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FF8AE70);
    v11 = sub_264B40944();
    v12 = sub_264B41484();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v11, v12, "Throwing away scene observation cancellables", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v14 = *(v1 + v7);
    *(v1 + v7) = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      v1 = sub_264B41884();
      if (!v1)
      {
      }
    }

    else
    {
      v1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
      }
    }

    v15 = 0;
    v7 = v14 & 0xC000000000000001;
    while (v7)
    {
      MEMORY[0x266748A70](v15, v14);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_21;
      }

LABEL_17:
      sub_264B40994();

      ++v15;
      if (v17 == v1)
      {
      }
    }

    if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v16 = *(v14 + 8 * v15 + 32);

    v17 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_17;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return result;
}

void sub_264A40100(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  *v29 = a1[2];
  *&v29[9] = *(a1 + 41);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  if ((*&v1[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v22 = *v29;
    v5 = *&v29[16];
    v6 = v29[24] & 0xE1;
    v7 = *(*&v1[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_statusEventProxy] + 16);
    v23[3] = &type metadata for StatusEvent;
    v23[4] = &off_28765B558;
    v8 = swift_allocObject();
    v23[0] = v8;
    v9 = v28;
    *(v8 + 16) = v27;
    *(v8 + 32) = v9;
    *(v8 + 48) = v22;
    *(v8 + 64) = v5;
    *(v8 + 72) = v6;
    sub_264A525C8(&v27, v25);
    sub_264B409C4();
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FF8AE70);
    sub_264A525C8(&v27, v25);
    v11 = v1;
    v12 = sub_264B40944();
    v13 = sub_264B41484();
    sub_264A52520(&v27);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446466;
      v25[0] = v27;
      v25[1] = v28;
      v26[0] = *v29;
      *(v26 + 9) = *&v29[9];
      sub_264A525C8(&v27, v23);
      v16 = sub_264B41064();
      v18 = sub_2649CC004(v16, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *&v25[0] = *&v2[v4];
      sub_264A32420(*&v25[0]);
      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, &v24);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_2649C6000, v12, v13, "Cannot send status event: %{public}s, invalid state: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);
    }
  }
}

uint64_t sub_264A403A8()
{
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_264B41244();
  v1[11] = sub_264B41234();
  v4 = sub_264B411C4();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_264A40478, v4, v3);
}

uint64_t sub_264A40478()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v0[14] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v3 = (v1 + v2);
  v5 = *v3;
  v4 = v3[1];
  v0[15] = v4;
  v6 = qword_27FF88408;

  if (v6 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v7 = sub_264B40964();
    v0[16] = __swift_project_value_buffer(v7, qword_27FF8AE70);

    v8 = sub_264B40944();
    v9 = sub_264B41474();
    if (!os_log_type_enabled(v8, v9))
    {
      break;
    }

    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = v5;

    _os_log_impl(&dword_2649C6000, v8, v9, "Stopping MediaTransport session #%{public}ld...", v10, 0xCu);
    MEMORY[0x266749940](v10, -1, -1);

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_4:
    v11 = v0[9];
    v12 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables;
    swift_beginAccess();
    v13 = *(v11 + v12);
    *(v11 + v12) = MEMORY[0x277D84F90];
    v5 = *(v13 + 16);
    if (!v5)
    {
LABEL_8:

      return MEMORY[0x2822009F8](sub_264A40770, v4, 0);
    }

    v14 = 0;
    while (v14 < *(v13 + 16))
    {
      v15 = v14 + 1;
      v16 = *(v13 + 32 + 8 * v14);

      sub_264B41304();

      v14 = v15;
      if (v5 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_12:
  v17 = v0[11];

  v18 = sub_264B40944();
  v19 = sub_264B414B4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134349056;
    *(v20 + 4) = v5;
    _os_log_impl(&dword_2649C6000, v18, v19, "No MediaTransport session for session #%{public}ld to stop, bailing out early", v20, 0xCu);
    MEMORY[0x266749940](v20, -1, -1);
  }

  v21 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_264A40770()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  v0[17] = v1;
  sub_2649DDB20(v1);
  v2 = v0[12];
  v3 = v0[13];

  return MEMORY[0x2822009F8](sub_264A407E8, v2, v3);
}

uint64_t sub_264A407E8()
{
  v31 = v0;
  v1 = *(v0 + 136);
  sub_2649DDB20(v1);
  sub_2649FE684(v1);
  sub_2649FE684(2);
  if (v1 > 1)
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 88);

    sub_2649DDB20(v6);
    v8 = sub_264B40944();
    v9 = sub_264B414B4();
    sub_2649FE684(v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 136);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136446210;
      *(v0 + 64) = v10;
      sub_2649DDB20(v10);
      v13 = sub_264B41064();
      v15 = sub_2649CC004(v13, v14, &v30);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2649C6000, v8, v9, "MediaTransportServerSession is in state: %{public}s, not tearing it down again", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);
    }

    v16 = *(v0 + 72);
    v17 = v16 + *(v0 + 112);
    v18 = *(v17 + 8);
    *(v17 + 8) = 0;

    v19 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable;
    v20 = *(v0 + 136);
    if (*(v16 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable))
    {
      v21 = *(v16 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable);

      sub_264B41304();
      sub_2649FE684(v20);
    }

    else
    {
      sub_2649FE684(*(v0 + 136));
    }

    v22 = *(v0 + 120);
    v23 = *(v0 + 72);
    v24 = *(v0 + 80);

    v25 = *(v16 + v19);
    *(v16 + v19) = 0;

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    v27 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
    swift_beginAccess();
    sub_2649FECCC(v24, v23 + v27, &unk_27FF899E0, &qword_264B53440);
    swift_endAccess();
    v28 = *(v0 + 80);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v2 = *(v0 + 120);
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_264A40B04;

    return sub_2649E912C();
  }
}

uint64_t sub_264A40B04()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_264A40C24, v4, v3);
}

uint64_t sub_264A40C24()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 72);
  v3 = v2 + *(v0 + 112);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable;
  v6 = *(v0 + 136);
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable))
  {
    v7 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable);

    sub_264B41304();
    sub_2649FE684(v6);
  }

  else
  {
    sub_2649FE684(*(v0 + 136));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);

  v11 = *(v2 + v5);
  *(v2 + v5) = 0;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  swift_beginAccess();
  sub_2649FECCC(v10, v9 + v13, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  v14 = *(v0 + 80);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_264A40DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  swift_beginAccess();
  sub_2649FECCC(v11, a2 + v14, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  return sub_264A40F14(a3, a4);
}

uint64_t sub_264A40F14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_264B41254();
  v9 = sub_264B41274();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_2649CB5C0(a1, v18);
  sub_264B41244();
  v10 = v2;
  v11 = sub_264B41234();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  sub_2649D2AAC(v18, (v12 + 4));
  v12[9] = a2;
  v12[10] = v10;
  v14 = sub_264A10C20(0, 0, v8, &unk_264B49548, v12);
  v15 = *&v10[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable];
  *&v10[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable] = v14;
}

uint64_t sub_264A41084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[31] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v6[34] = v7;
  v8 = *(v7 - 8);
  v6[35] = v8;
  v9 = *(v8 + 64) + 15;
  v6[36] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = sub_264B41244();
  v6[43] = sub_264B41234();
  v13 = sub_264B411C4();
  v6[44] = v13;
  v6[45] = v12;

  return MEMORY[0x2822009F8](sub_264A41220, v13, v12);
}

uint64_t sub_264A41220()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  v8 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v0[46] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  v0[47] = v8;
  v9 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  v0[48] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables;
  v0[49] = v9;
  swift_beginAccess();
  v0[50] = 0;
  v10 = v0[42];
  v11 = sub_264B41234();
  v0[51] = v11;
  v12 = v0[5];
  v13 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v12);
  v14 = *(MEMORY[0x277D856D8] + 4);
  v16 = swift_task_alloc();
  v0[52] = v16;
  *v16 = v0;
  v16[1] = sub_264A41434;
  v17 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 28, v11, v17, v15, v12, v13);
}

uint64_t sub_264A41434()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[51];

    v6 = v2[44];
    v7 = v2[45];

    return MEMORY[0x2822009F8](sub_264A41548, v6, v7);
  }

  return result;
}

uint64_t sub_264A41548()
{
  v128 = v0;
  v2 = v0 + 224;
  v3 = *(v0 + 224);
  v4 = v0 + 16;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_33;
      }

      v14 = *(v0 + 400);
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v16 = sub_264B40964();
      __swift_project_value_buffer(v16, qword_27FF8AE70);
      v17 = sub_264B40944();
      v18 = sub_264B414B4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 256);
        v20 = swift_slowAlloc();
        *v20 = 134349312;
        *(v20 + 4) = v19;
        *(v20 + 12) = 2050;
        *(v20 + 14) = v15;
        _os_log_impl(&dword_2649C6000, v17, v18, "2. MediaTransportServerSession #%{public}ld state: Activated #%{public}ld", v20, 0x16u);
        MEMORY[0x266749940](v20, -1, -1);
      }

      v22 = *(v0 + 368);
      v21 = *(v0 + 376);
      v23 = *(v0 + 264);

      v24 = *(v23 + v22);
      *(v23 + v22) = 4;
      sub_264A51DF8(v24);
      v25 = *(v23 + v21 + 8);
      if (v25)
      {
        v121 = v15;
        v27 = *(v0 + 328);
        v26 = *(v0 + 336);
        v28 = *(v0 + 264);
        v122 = *(v0 + 320);
        v124 = *&v28[*(v0 + 376)];
        v29 = sub_264B41274();
        v30 = *(v29 - 8);
        v120 = *(v30 + 56);
        v120(v27, 1, 1, v29);
        swift_retain_n();
        v31 = v28;
        v32 = sub_264B41234();
        v33 = swift_allocObject();
        v34 = MEMORY[0x277D85700];
        v33[2] = v32;
        v33[3] = v34;
        v35 = v122;
        v33[4] = v124;
        v33[5] = v25;
        v33[6] = v25;
        v33[7] = v31;
        sub_2649D046C(v27, v122, &qword_27FF898C0, &unk_264B44190);
        v123 = *(v30 + 48);
        LODWORD(v31) = v123(v35, 1, v29);

        v36 = *(v0 + 320);
        if (v31 == 1)
        {
          sub_2649D04D4(v36, &qword_27FF898C0, &unk_264B44190);
        }

        else
        {
          sub_264B41264();
          (*(v30 + 8))(v36, v29);
        }

        v119 = v30;
        v86 = v33[2];
        v87 = v33[3];
        swift_unknownObjectRetain();

        if (v86)
        {
          swift_getObjectType();
          v88 = sub_264B411C4();
          v90 = v89;
          swift_unknownObjectRelease();
        }

        else
        {
          v88 = 0;
          v90 = 0;
        }

        sub_2649D04D4(*(v0 + 328), &qword_27FF898C0, &unk_264B44190);
        v91 = swift_allocObject();
        *(v91 + 16) = &unk_264B49560;
        *(v91 + 24) = v33;
        if (v90 | v88)
        {
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v88;
          *(v0 + 80) = v90;
        }

        v92 = *(v0 + 264) + *(v0 + 376);
        swift_task_create();

        v93 = *(v92 + 8);
        if (v93)
        {
          v94 = *(v0 + 336);
          v96 = *(v0 + 304);
          v95 = *(v0 + 312);
          v97 = *(v0 + 264);
          v126 = *&v97[*(v0 + 376)];
          v120(v95, 1, 1, v29);
          swift_retain_n();
          v98 = v97;
          v99 = sub_264B41234();
          v100 = swift_allocObject();
          v100[2] = v99;
          v100[3] = MEMORY[0x277D85700];
          v100[4] = v126;
          v100[5] = v93;
          v100[6] = v93;
          v100[7] = v98;
          sub_2649D046C(v95, v96, &qword_27FF898C0, &unk_264B44190);
          LODWORD(v95) = v123(v96, 1, v29);

          v101 = *(v0 + 304);
          if (v95 == 1)
          {
            sub_2649D04D4(*(v0 + 304), &qword_27FF898C0, &unk_264B44190);
          }

          else
          {
            sub_264B41264();
            (*(v119 + 8))(v101, v29);
          }

          v102 = v100[2];
          v103 = v100[3];
          swift_unknownObjectRetain();

          if (v102)
          {
            swift_getObjectType();
            v104 = sub_264B411C4();
            v106 = v105;
            swift_unknownObjectRelease();
          }

          else
          {
            v104 = 0;
            v106 = 0;
          }

          sub_2649D04D4(*(v0 + 312), &qword_27FF898C0, &unk_264B44190);
          v107 = swift_allocObject();
          *(v107 + 16) = &unk_264B49578;
          *(v107 + 24) = v100;
          if (v106 | v104)
          {
            *(v0 + 88) = 0;
            *(v0 + 96) = 0;
            *(v0 + 104) = v104;
            *(v0 + 112) = v106;
          }

          v4 = v0 + 16;
          v108 = *(v0 + 384);
          v109 = *(v0 + 264);
          v110 = swift_task_create();
          swift_beginAccess();
          v111 = *(v109 + v108);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v109 + v108) = v111;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v117 = *(v0 + 384);
            v118 = *(v0 + 264);
            v111 = sub_2649D8218(0, v111[2] + 1, 1, v111);
            *(v118 + v117) = v111;
          }

          v114 = v111[2];
          v113 = v111[3];
          if (v114 >= v113 >> 1)
          {
            v111 = sub_2649D8218((v113 > 1), v114 + 1, 1, v111);
          }

          v115 = *(v0 + 384);
          v116 = *(v0 + 264);
          v111[2] = v114 + 1;
          v111[v114 + 4] = v110;
          *(v116 + v115) = v111;
          swift_endAccess();

          v69 = v121;
          goto LABEL_39;
        }
      }
    }

    else
    {
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v51 = sub_264B40964();
      __swift_project_value_buffer(v51, qword_27FF8AE70);
      v52 = sub_264B40944();
      v53 = sub_264B41484();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v0 + 256);
        v55 = swift_slowAlloc();
        *v55 = 134349056;
        *(v55 + 4) = v54;
        _os_log_impl(&dword_2649C6000, v52, v53, "MediaTransportServerSession #%{public}ld state: Unactivated", v55, 0xCu);
        MEMORY[0x266749940](v55, -1, -1);
      }

      v56 = *(v0 + 256);

      v127[0] = 0;
      v127[1] = 0xE000000000000000;
      sub_264B41754();
      MEMORY[0x266748390](0xD000000000000017, 0x8000000264B5C5F0);
      *(v0 + 240) = v56;
      v57 = sub_264B41A64();
      MEMORY[0x266748390](v57);

      MEMORY[0x266748390](0xD00000000000002BLL, 0x8000000264B5C610);
    }

    return sub_264B41874();
  }

  switch(v3)
  {
    case 2:
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v37 = sub_264B40964();
      __swift_project_value_buffer(v37, qword_27FF8AE70);
      v38 = sub_264B40944();
      v39 = sub_264B414B4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 256);
        v41 = swift_slowAlloc();
        *v41 = 134349056;
        *(v41 + 4) = v40;
        _os_log_impl(&dword_2649C6000, v38, v39, "MediaTransportServerSession #%{public}ld state: Tearing Down", v41, 0xCu);
        MEMORY[0x266749940](v41, -1, -1);
      }

      goto LABEL_38;
    case 3:
      v1 = v0 + 208;
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v42 = sub_264B40964();
      __swift_project_value_buffer(v42, qword_27FF8AE70);
      v43 = sub_264B40944();
      v44 = sub_264B414B4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = *(v0 + 256);
        v46 = swift_slowAlloc();
        *v46 = 134349056;
        *(v46 + 4) = v45;
        _os_log_impl(&dword_2649C6000, v43, v44, "MediaTransportServerSession #%{public}ld state: Invalidated", v46, 0xCu);
        MEMORY[0x266749940](v46, -1, -1);
      }

      v47 = *(v0 + 296);
      v48 = *(v0 + 272);
      v49 = *(v0 + 280);
      v50 = *(v0 + 264);

      *(v0 + 208) = 0;
      *(v0 + 216) = -4;
      (*(v49 + 56))(v47, 1, 1, v48);
      goto LABEL_37;
    case 4:
      v5 = *(v0 + 344);
      v6 = *(v0 + 320);
      v7 = *(v0 + 328);
      v9 = *(v0 + 304);
      v8 = *(v0 + 312);
      v11 = *(v0 + 288);
      v10 = *(v0 + 296);

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v12 = *(v0 + 8);

      return v12();
  }

LABEL_33:
  v1 = v0 + 192;
  if (qword_27FF88408 != -1)
  {
LABEL_68:
    swift_once();
  }

  v58 = sub_264B40964();
  __swift_project_value_buffer(v58, qword_27FF8AE70);
  sub_2649DDB20(v3);
  v59 = sub_264B40944();
  v60 = sub_264B414B4();
  sub_264A545B0(v3);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = *(v0 + 256);
    v62 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v127[0] = v125;
    *v62 = 134349314;
    *(v62 + 4) = v61;
    *(v62 + 12) = 2082;
    *(v0 + 232) = v3;
    sub_2649DDB20(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v63 = sub_264B41064();
    v65 = sub_2649CC004(v63, v64, v127);

    *(v62 + 14) = v65;
    v4 = v0 + 16;
    v2 = v0 + 224;
    _os_log_impl(&dword_2649C6000, v59, v60, "MediaTransportServerSession #%{public}ld state: Interrupted with error: %{public}s", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x266749940](v125, -1, -1);
    MEMORY[0x266749940](v62, -1, -1);
  }

  v47 = *(v0 + 296);
  v66 = *(v0 + 272);
  v67 = *(v0 + 280);
  v68 = *(v0 + 264);
  *(v0 + 192) = 3;
  *(v0 + 200) = 0x80;
  (*(v67 + 56))(v47, 1, 1, v66);
LABEL_37:
  sub_264A380B0(v1, v47);
  sub_2649D04D4(v47, &unk_27FF899E0, &qword_264B53440);
LABEL_38:
  v69 = *(v0 + 400);
LABEL_39:
  v70 = *(v0 + 392);
  v72 = *(v0 + 272);
  v71 = *(v0 + 280);
  v73 = *(v0 + 264);
  if ((*(v71 + 48))(v73 + v70, 1, v72))
  {
    sub_264A545B0(v3);
  }

  else
  {
    v74 = *(v0 + 288);
    (*(v71 + 16))(v74, v73 + v70, v72);
    sub_264B411E4();
    sub_264A545B0(v3);
    (*(v71 + 8))(v74, v72);
  }

  v75 = *(v0 + 392);
  v76 = *(v0 + 296);
  v77 = *(v0 + 264);
  (*(*(v0 + 280) + 56))(v76, 1, 1, *(v0 + 272));
  swift_beginAccess();
  sub_2649FECCC(v76, v77 + v75, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  *(v0 + 400) = v69;
  v78 = *(v0 + 336);
  v79 = sub_264B41234();
  *(v0 + 408) = v79;
  v80 = *(v0 + 40);
  v81 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v80);
  v82 = *(MEMORY[0x277D856D8] + 4);
  v84 = swift_task_alloc();
  *(v0 + 416) = v84;
  *v84 = v0;
  v84[1] = sub_264A41434;
  v85 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v2, v79, v85, v83, v80, v81);
}