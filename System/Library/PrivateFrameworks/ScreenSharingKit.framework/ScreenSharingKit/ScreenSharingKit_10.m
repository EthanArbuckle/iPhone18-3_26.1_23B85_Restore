uint64_t sub_264ABF3E0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ABF4F0, v2, 0);
}

uint64_t sub_264ABF4F0()
{
  v32 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80) + *(v0 + 88);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v26 = *v3;
  v27 = v4;
  v28 = v5;
  v29 = v2;
  v30 = v1;
  v31 = 5;

  sub_264ACB170(v26, v4, v5);
  v6 = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v26, &v29);
  sub_264AB62DC(v29, v30, v31);
  sub_264AB62DC(v26, v27, v28);
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_264ABF744;
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);

    return sub_264AC03B4(v10, v8);
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    v14 = sub_264B40944();
    v15 = sub_264B41494();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 80) + *(v0 + 88);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136446210;
      v19 = *v16;
      v20 = *(v16 + 8);
      v21 = *(v16 + 16);
      *(v0 + 40) = *v16;
      *(v0 + 48) = v20;
      *(v0 + 56) = v21;
      sub_264ACB170(v19, v20, v21);
      v22 = sub_264B41064();
      v24 = sub_2649CC004(v22, v23, &v29);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v14, v15, "currentState changed to %{public}s before we could setup audio stream", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_264ABF744()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264ABF838(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABF8D8, v2, 0);
}

uint64_t sub_264ABF8D8()
{
  v36 = v0;
  v1 = *(v0 + 240);
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  *(v0 + 256) = v3;
  if (v3)
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v6 = *(v2 + 8);
    v7 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
    v30 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v31 = v8;
    v32 = v9;
    v33 = v4;
    v34 = v5;
    v35 = 5;
    swift_unknownObjectRetain();
    sub_264ACB170(v30, v8, v9);

    LOBYTE(v5) = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v30, &v33);
    sub_264AB62DC(v33, v34, v35);
    sub_264AB62DC(v30, v31, v32);
    if (v5)
    {
      ObjectType = swift_getObjectType();
      *(v0 + 217) = 1;
      v11 = *(v6 + 16);
      v29 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 264) = v13;
      *v13 = v0;
      v13[1] = sub_264ABFC40;

      return v29(v0 + 16, v0 + 217, ObjectType, v6);
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 240);
    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FFA71B8);

    v17 = sub_264B40944();
    v18 = sub_264B41494();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      v21 = *v7;
      v22 = *(v7 + 8);
      v23 = *(v7 + 16);
      *(v0 + 200) = *v7;
      *(v0 + 208) = v22;
      *(v0 + 216) = v23;
      sub_264ACB170(v21, v22, v23);
      v24 = sub_264B41064();
      v26 = sub_2649CC004(v24, v25, &v33);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v17, v18, "currentState changed to %{public}s before we could setup video stream", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  v27 = *(v0 + 248);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_264ABFC40()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_264AC0264;
  }

  else
  {
    v5 = sub_264ABFD58;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264ABFD58()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_264ABFE84;

  return (v7)(v0 + 7, v1, v2);
}

uint64_t sub_264ABFE84()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_264AC0308;
  }

  else
  {
    v6 = sub_264ABFFB0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264ABFFB0()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_264B41274();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2649CB5C0(v0 + 56, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  sub_2649D2AAC((v0 + 96), (v6 + 4));
  v6[9] = v5;
  sub_264A10C20(0, 0, v2, &unk_264B519E8, v6);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2649CB5C0(v0 + 16, v0 + 136);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 136, v3 + v7, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v8 = *(v0 + 248);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264AC0154()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ACD250, v2, 0);
}

uint64_t sub_264AC0264()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  v2 = v0[34];
  v0[37] = v2;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_264AC0154;
  v4 = v0[30];

  return sub_264ABA794(v2);
}

uint64_t sub_264AC0308()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[36];
  v0[37] = v2;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_264AC0154;
  v4 = v0[30];

  return sub_264ABA794(v2);
}

uint64_t sub_264AC03B4(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC0454, v2, 0);
}

uint64_t sub_264AC0454()
{
  v36 = v0;
  v1 = *(v0 + 240);
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  *(v0 + 256) = v3;
  if (v3)
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v6 = *(v2 + 8);
    v7 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
    v30 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v31 = v8;
    v32 = v9;
    v33 = v4;
    v34 = v5;
    v35 = 5;
    swift_unknownObjectRetain();
    sub_264ACB170(v30, v8, v9);

    LOBYTE(v5) = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v30, &v33);
    sub_264AB62DC(v33, v34, v35);
    sub_264AB62DC(v30, v31, v32);
    if (v5)
    {
      ObjectType = swift_getObjectType();
      *(v0 + 217) = 0;
      v11 = *(v6 + 16);
      v29 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 264) = v13;
      *v13 = v0;
      v13[1] = sub_264AC07B8;

      return v29(v0 + 16, v0 + 217, ObjectType, v6);
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 240);
    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FFA71B8);

    v17 = sub_264B40944();
    v18 = sub_264B41494();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      v21 = *v7;
      v22 = *(v7 + 8);
      v23 = *(v7 + 16);
      *(v0 + 200) = *v7;
      *(v0 + 208) = v22;
      *(v0 + 216) = v23;
      sub_264ACB170(v21, v22, v23);
      v24 = sub_264B41064();
      v26 = sub_2649CC004(v24, v25, &v33);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v17, v18, "currentState changed to %{public}s before we could setup video stream", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  v27 = *(v0 + 248);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_264AC07B8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_264AC0E44;
  }

  else
  {
    v5 = sub_264AC08D0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264AC08D0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_264AC09FC;

  return (v7)(v0 + 7, v1, v2);
}

uint64_t sub_264AC09FC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_264AC0EE8;
  }

  else
  {
    v6 = sub_264AC0B28;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264AC0B28()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_264B41274();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2649CB5C0(v0 + 56, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  sub_2649D2AAC((v0 + 96), (v6 + 4));
  v6[9] = v5;
  sub_264A10C20(0, 0, v2, &unk_264B519D8, v6);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2649CB5C0(v0 + 16, v0 + 136);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 136, v3 + v7, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v8 = *(v0 + 248);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264AC0CCC()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AC0DDC, v2, 0);
}

uint64_t sub_264AC0DDC()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AC0E44()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  v2 = v0[34];
  v0[37] = v2;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_264AC0CCC;
  v4 = v0[30];

  return sub_264ABA794(v2);
}

uint64_t sub_264AC0EE8()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[36];
  v0[37] = v2;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_264AC0CCC;
  v4 = v0[30];

  return sub_264ABA794(v2);
}

uint64_t sub_264AC0F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x2822009F8](sub_264AC0FB4, 0, 0);
}

uint64_t sub_264AC0FB4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  swift_beginAccess();
  v8 = v0[5];
  v9 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v8);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_264AC1184;

  return MEMORY[0x282200310](v0 + 24, 0, 0, v0 + 13, v8, v9);
}

uint64_t sub_264AC1184()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_264AC19D0;
  }

  else
  {
    v3 = sub_264AC1294;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264AC1294()
{
  v1 = *(v0 + 192);
  if (v1 == 6 || (v2 = *(v0 + 128), Strong = swift_weakLoadStrong(), (*(v0 + 144) = Strong) == 0))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (v1 > 1)
    {
      if ((v1 - 2) < 2)
      {
        sub_264B41754();

        *(v0 + 193) = v1;
        v4 = sub_264B41064();
        MEMORY[0x266748390](v4);

        return sub_264B41874();
      }

      if (v1 == 4)
      {
        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v12 = sub_264B40964();
        __swift_project_value_buffer(v12, qword_27FFA71B8);
        v13 = sub_264B40944();
        v14 = sub_264B414B4();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_27;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Video stream tearing down";
      }

      else
      {
        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v17 = sub_264B40964();
        __swift_project_value_buffer(v17, qword_27FFA71B8);
        v13 = sub_264B40944();
        v14 = sub_264B414B4();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_27;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Video stream invalidated";
      }

      _os_log_impl(&dword_2649C6000, v13, v14, v16, v15, 2u);
      MEMORY[0x266749940](v15, -1, -1);
LABEL_27:

      goto LABEL_28;
    }

    if (!v1)
    {
LABEL_28:

      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v18);
      v20 = *(MEMORY[0x277D856D8] + 4);
      v21 = swift_task_alloc();
      *(v0 + 136) = v21;
      *v21 = v0;
      v21[1] = sub_264AC1184;

      return MEMORY[0x282200310](v0 + 192, 0, 0, v0 + 104, v18, v19);
    }

    v7 = Strong;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FFA71B8);
    v9 = sub_264B40944();
    v10 = sub_264B414B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v9, v10, "Video stream activated", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    *(v0 + 152) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry;

    return MEMORY[0x2822009F8](sub_264AC16FC, v7, 0);
  }
}

uint64_t sub_264AC1724()
{
  v15 = v0;
  v1 = v0[20];
  v2 = mach_absolute_time();
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer);
  if (v3)
  {
    v4 = v2;
    v5 = v0[18];
    if (v2)
    {
      v6 = __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
      v14 = 11;
      v7 = *v6;

      sub_264A560D4(&v14, v4, 0, 0, 0);
    }
  }

  else
  {
    v8 = v0[18];
  }

  v9 = v0[5];
  v10 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v9);
  v11 = *(MEMORY[0x277D856D8] + 4);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_264AC1184;

  return MEMORY[0x282200310](v0 + 24, 0, 0, v0 + 13, v9, v10);
}

uint64_t sub_264AC186C()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AC1968, 0, 0);
}

uint64_t sub_264AC1968()
{
  v2 = v0[22];
  v1 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264AC19D0()
{
  v18 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v0[22] = v2;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = v2;
    v6 = sub_264B40944();
    v7 = sub_264B41494();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v0[14] = v2;
      v10 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, &v17);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v6, v7, "Video stream interrupted with: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[21] = v14;
    *v14 = v0;
    v14[1] = sub_264AC186C;

    return sub_264ABA794(v2);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_264AC1C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_264AC1C68, 0, 0);
}

uint64_t sub_264AC1C68()
{
  v1 = v0[12];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  v7 = v0[5];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v7);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_264AC1E24;

  return MEMORY[0x282200310](v0 + 18, 0, 0, v0 + 10, v7, v8);
}

uint64_t sub_264AC1E24()
{
  v2 = *(*v1 + 112);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_264AC245C;
  }

  else
  {
    v3 = sub_264AC1F34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264AC1F34()
{
  v1 = *(v0 + 144);
  if (v1 <= 3)
  {
    if (v1 - 2 < 2)
    {
      sub_264B41754();

      *(v0 + 145) = v1;
      v2 = sub_264B41064();
      MEMORY[0x266748390](v2);

      return sub_264B41874();
    }

    if (!*(v0 + 144))
    {
      goto LABEL_21;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (!os_log_type_enabled(v5, v6))
    {
LABEL_20:

LABEL_21:
      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v11);
      v13 = *(MEMORY[0x277D856D8] + 4);
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_264AC1E24;

      return MEMORY[0x282200310](v0 + 144, 0, 0, v0 + 80, v11, v12);
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Audio stream activated";
LABEL_19:
    _os_log_impl(&dword_2649C6000, v5, v6, v8, v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
    goto LABEL_20;
  }

  if (v1 == 4)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Audio stream tearing down";
    goto LABEL_19;
  }

  if (v1 == 5)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Audio stream invalidated";
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_264AC22F8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AC23F4, 0, 0);
}

uint64_t sub_264AC23F4()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264AC245C()
{
  v18 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v0[16] = v2;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = v2;
    v6 = sub_264B40944();
    v7 = sub_264B41494();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v0[11] = v2;
      v10 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, &v17);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v6, v7, "Audio stream interrupted with: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_264AC22F8;

    return sub_264ABA794(v2);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_264AC26D4()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC2794, v0, 0);
}

uint64_t sub_264AC2794()
{
  v24 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
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
    v23 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v23);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 523;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000018, 0x8000000264B5FB70, &v23);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v0[6] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v15 = v13 + v14;
  v16 = *(v15 + 16);
  if ((v16 - 7) < 2 || v16 == 9 && __PAIR128__((*v15 >= 3uLL) + *(v15 + 8) - 1, *v15 - 3) < 2)
  {
    v17 = v0[5];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v0[7] = sub_264AB6BD4();
    v20 = *(MEMORY[0x277D859E0] + 4);
    v21 = swift_task_alloc();
    v0[8] = v21;
    *v21 = v0;
    v21[1] = sub_264AC2AE0;
    v22 = v0[2];

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_264AC2AE0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AC2BF0, v2, 0);
}

uint64_t sub_264AC2BF0()
{
  v1 = v0[2] + v0[6];
  v2 = *(v1 + 16);
  if ((v2 - 7) < 2 || v2 == 9 && __PAIR128__((*v1 >= 3uLL) + *(v1 + 8) - 1, *v1 - 3) < 2)
  {
    v3 = v0[5];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7];
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_264AC2D40;
    v9 = v0[2];

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_264AC2D40()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AC2E50, v2, 0);
}

uint64_t sub_264AC2E50()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AC2EB0()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC2F70, v0, 0);
}

uint64_t sub_264AC2F70()
{
  v22 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
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
    v21 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v21);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 616;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B5FAC0, &v21);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v14 - 7) < 2 || v14 == 9 && __PAIR128__((*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) < 2)
  {
    v15 = v0[5];

    v16 = v0[1];

    return v16();
  }

  else
  {
    sub_264AB6BD4();
    v18 = *(MEMORY[0x277D859E0] + 4);
    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = sub_264AC32B4;
    v20 = v0[2];

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_264AC32B4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264ACD254, v2, 0);
}

uint64_t sub_264AC33C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v7 = type metadata accessor for ContinuityDevice(0);
  v5[17] = v7;
  v8 = *(v7 - 8);
  v5[18] = v8;
  v9 = *(v8 + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v5[21] = v11;
  v12 = *(v11 - 8);
  v5[22] = v12;
  v13 = *(v12 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC3528, a5, 0);
}

uint64_t sub_264AC3528()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  sub_264B412C4();
  v4 = sub_264AB6BD4();
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  v0[24] = v4;
  v0[25] = v5;
  v6 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v0[26] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  v0[27] = v6;
  v0[28] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry;
  swift_beginAccess();
  v7 = v0[24];
  v8 = v0[16];
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_264AC3648;
  v11 = v0[23];
  v12 = v0[21];

  return MEMORY[0x2822003E8](v0 + 13, v8, v7, v12);
}

uint64_t sub_264AC3648()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AC3758, v2, 0);
}

uint64_t sub_264AC3758()
{
  v64 = v0;
  v2 = v0 + 13;
  v1 = v0[13];
  v0[30] = v1;
  if (v1 == 3)
  {
    v3 = v0[20];
    v4 = v0[19];
    (*(v0[22] + 8))(v0[23], v0[21]);

    v5 = v0[1];

    return v5();
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71B8);
  sub_264A1EE08(v1);
  v8 = sub_264B40944();
  v9 = sub_264B41484();
  sub_264A794B4(v1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v63 = v11;
    *v10 = 136446210;
    v0[14] = v1;
    sub_264A1EE08(v1);
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v63);

    *(v10 + 4) = v14;
    v2 = v0 + 13;
    _os_log_impl(&dword_2649C6000, v8, v9, "controlMessageSession state transitioned to: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  if (!v1)
  {
    goto LABEL_33;
  }

  if (v1 == 1)
  {
    v23 = v0[20];
    v25 = v0[17];
    v24 = v0[18];
    sub_2649D046C(v0[16] + v0[26], v23, &unk_27FF89E30, &qword_264B44270);
    v26 = (*(v24 + 48))(v23, 1, v25);
    v27 = v0[20];
    if (v26)
    {
      sub_2649D04D4(v27, &unk_27FF89E30, &qword_264B44270);
      v28 = 0xE700000000000000;
      v29 = v0;
      v30 = 0x6E776F6E6B6E55;
    }

    else
    {
      v33 = v0[19];
      v34 = v0[20];
      sub_264ACB1F0(v27, v33, type metadata accessor for ContinuityDevice);
      sub_2649D04D4(v34, &unk_27FF89E30, &qword_264B44270);
      v29 = v0;
      v30 = *(v33 + 16);
      v28 = *(v33 + 24);

      sub_264ACB258(v33, type metadata accessor for ContinuityDevice);
    }

    v35 = v29[28];
    v36 = v29[16];
    v37 = v36 + v29[27];
    v38 = *v37;
    v39 = *(v37 + 8);
    *v37 = v30;
    *(v37 + 8) = v28;
    v40 = *(v37 + 16);
    *(v37 + 16) = 1;
    sub_264ACB170(v38, v39, v40);
    sub_264AB62DC(v38, v39, v40);
    v29[10] = v38;
    v29[11] = v39;
    *(v29 + 96) = v40;
    sub_264AB5690((v2 - 3));
    sub_264AB62DC(v38, v39, v40);
    v41 = *(*(v36 + v35) + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers);
    v0 = v29;
    v61 = *(v41 + 16);
    if (v61)
    {
      v42 = v2 - 11;
      v59 = v41 + 32;

      v43 = 0;
      v60 = v29;
      do
      {
        v44 = v59 + 40 * v43++;
        sub_2649CB5C0(v44, v42);
        v45 = v0[5];
        v46 = v0[6];
        __swift_project_boxed_opaque_existential_1(v42, v45);
        v47 = (*(v46 + 8))(v45, v46);
        v48 = *(v47 + 16);
        v49 = (v47 + 32);
        while (2)
        {
          if (v48)
          {
            switch(*v49)
            {
              case 8:

                break;
              default:
                v50 = sub_264B41AA4();

                ++v49;
                --v48;
                if ((v50 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            v0 = v60;
            v51 = v60[5];
            v52 = v60[6];
            v42 = v2 - 11;
            __swift_project_boxed_opaque_existential_1(v2 - 11, v51);
            v62 = 8;
            (*(v52 + 16))(&v62, 0, v51, v52);
          }

          else
          {

            v0 = v60;
            v42 = v2 - 11;
          }

          break;
        }

        __swift_destroy_boxed_opaque_existential_0(v42);
      }

      while (v43 != v61);

      sub_264A794B4(1);
    }

    else
    {
      sub_264A794B4(1);
    }

    goto LABEL_33;
  }

  if (v1 == 2)
  {
    v15 = sub_264B40944();
    v16 = sub_264B41474();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2649C6000, v15, v16, "Control stream invalidated", v17, 2u);
      MEMORY[0x266749940](v17, -1, -1);
      sub_264A794B4(2);
    }

    v18 = v0;
    v19 = v0[25];
    v20 = v18[16];

    v21 = (v20 + v19);
    v0 = v18;
    v22 = *v21;
    *v21 = 0;
    v21[1] = 0;
    swift_unknownObjectRelease();
LABEL_33:
    v53 = v0[24];
    v54 = v0[16];
    v55 = *(MEMORY[0x277D85798] + 4);
    v56 = swift_task_alloc();
    v0[29] = v56;
    *v56 = v0;
    v56[1] = sub_264AC3648;
    v57 = v0[23];
    v58 = v0[21];

    return MEMORY[0x2822003E8](v2, v54, v53, v58);
  }

  sub_264A1EE08(v1);
  v31 = swift_task_alloc();
  v0[31] = v31;
  *v31 = v0;
  v31[1] = sub_264AC40D8;
  v32 = v0[16];

  return sub_264ABA794(v1);
}

uint64_t sub_264AC40D8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AC41E8, v2, 0);
}

uint64_t sub_264AC41E8()
{
  v1 = v0[30];
  sub_264A794B4(v1);
  sub_264A794B4(v1);
  v2 = v0[24];
  v3 = v0[16];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_264AC3648;
  v6 = v0[23];
  v7 = v0[21];

  return MEMORY[0x2822003E8](v0 + 13, v3, v2, v7);
}

uint64_t sub_264AC42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[126] = a5;
  v5[125] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B0, &qword_264B51958);
  v5[127] = v6;
  v7 = *(v6 - 8);
  v5[128] = v7;
  v8 = *(v7 + 64) + 15;
  v5[129] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B8, &qword_264B51960);
  v5[130] = v9;
  v10 = *(v9 - 8);
  v5[131] = v10;
  v11 = *(v10 + 64) + 15;
  v5[132] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8C0, &qword_264B51968);
  v5[133] = v12;
  v13 = *(v12 - 8);
  v5[134] = v13;
  v14 = *(v13 + 64) + 15;
  v5[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC4454, 0, 0);
}

uint64_t sub_264AC4454()
{
  v1 = v0[125];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[136] = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = v0[126];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();
    v5 = v0[135];
    v6 = v0[132];
    v7 = v0[129];

    v8 = v0[1];

    return v8();
  }

  v3 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  return MEMORY[0x2822009F8](sub_264AC4560, v3, 0);
}

uint64_t sub_264AC4560()
{
  *(v0 + 1096) = *(*(v0 + 1088) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);

  return MEMORY[0x2822009F8](sub_264AC45DC, 0, 0);
}

uint64_t sub_264AC45DC()
{
  if (!v0[137])
  {
    return sub_264B41874();
  }

  v1 = sub_264B41314();
  v2 = v0[137];
  if (v1)
  {
    v3 = v0[136];
    v4 = v0[126];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v5 = v0[135];
    v6 = v0[132];
    v7 = v0[129];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[137];

    return MEMORY[0x2822009F8](sub_264AC473C, v10, 0);
  }
}

uint64_t sub_264AC473C()
{
  v1 = v0[137];
  v2 = v0[135];
  (*(v0[131] + 104))(v0[132], *MEMORY[0x277D85778], v0[130]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264AC4808, 0, 0);
}

uint64_t sub_264AC4808()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[138] = __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Monitoring incoming events", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[126];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  if (sub_264B41314())
  {
    v6 = v0[137];
    v7 = v0[136];
    (*(v0[134] + 8))(v0[135], v0[133]);

    v8 = v0[135];
    v9 = v0[132];
    v10 = v0[129];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[135];
    v14 = v0[133];
    v15 = v0[129];
    sub_264B412C4();
    v16 = *(MEMORY[0x277D85798] + 4);
    v17 = swift_task_alloc();
    v0[139] = v17;
    *v17 = v0;
    v17[1] = sub_264AC4A30;
    v18 = v0[129];
    v19 = v0[127];

    return MEMORY[0x2822003E8](v0 + 15, 0, 0, v19);
  }
}

uint64_t sub_264AC4A30()
{
  v1 = *(*v0 + 1112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AC4B2C, 0, 0);
}

uint64_t sub_264AC4B2C()
{
  v57 = v0;
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = *(v0 + 168);
  *(v0 + 48) = *(v0 + 152);
  *(v0 + 64) = v2;
  v3 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v3;
  *(v0 + 112) = *(v0 + 216);
  v4 = *(v0 + 72);
  if ((v4 & 0x3FFFFFFFFFFFFF1ELL) == 0xFFFFFFF1ELL)
  {
    v5 = *(v0 + 1096);
    v6 = *(v0 + 1088);

LABEL_5:
    v16 = *(v0 + 1080);
    v17 = *(v0 + 1072);
    v18 = *(v0 + 1064);
    (*(*(v0 + 1024) + 8))(*(v0 + 1032), *(v0 + 1016));
    (*(v17 + 8))(v16, v18);
    v19 = *(v0 + 1080);
    v20 = *(v0 + 1056);
    v21 = *(v0 + 1032);

    v22 = *(v0 + 8);

    return v22();
  }

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  if (sub_264B41314())
  {
    v14 = *(v0 + 1096);
    v15 = *(v0 + 1088);

    sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
    goto LABEL_5;
  }

  v24 = *(v0 + 1104);
  if ((v4 & 0x2000000000000000) != 0)
  {
    v39 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v39;
    *(v0 + 320) = *(v0 + 112);
    v40 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v40;
    v41 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v41;
    sub_264A7D664(v0 + 224, v0 + 328);
    v42 = sub_264B40944();
    v43 = sub_264B41494();
    sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_2649CC004(0x7645737574617453, 0xEB00000000746E65, &v56);
      _os_log_impl(&dword_2649C6000, v42, v43, "Received unknown type from server (%{public}s, ignoring", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x266749940](v45, -1, -1);
      MEMORY[0x266749940](v44, -1, -1);
    }

    sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
    v46 = *(MEMORY[0x277D85798] + 4);
    v47 = swift_task_alloc();
    *(v0 + 1112) = v47;
    *v47 = v0;
    v47[1] = sub_264AC4A30;
    v48 = *(v0 + 1032);
    v49 = *(v0 + 1016);

    return MEMORY[0x2822003E8](v0 + 120, 0, 0, v49);
  }

  else
  {
    v55 = v9;
    v25 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v25;
    *(v0 + 528) = *(v0 + 112);
    v26 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v26;
    v27 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v27;
    sub_264A7D664(v0 + 432, v0 + 536);
    v28 = sub_264B40944();
    v29 = sub_264B41484();
    sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
    v54 = v29;
    v30 = v29;
    v31 = v28;
    if (os_log_type_enabled(v28, v30))
    {
      buf = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *buf = 136446210;
      *(v0 + 912) = v7;
      *(v0 + 920) = v8;
      *(v0 + 928) = v10;
      *(v0 + 936) = v55;
      *(v0 + 944) = v11;
      *(v0 + 952) = v12;
      *(v0 + 960) = v13;
      *(v0 + 968) = v4;
      v32 = *(v0 + 96);
      *(v0 + 704) = *(v0 + 80);
      *(v0 + 720) = v32;
      *(v0 + 736) = *(v0 + 112);
      v33 = *(v0 + 32);
      *(v0 + 640) = *(v0 + 16);
      *(v0 + 656) = v33;
      v34 = *(v0 + 64);
      *(v0 + 672) = *(v0 + 48);
      *(v0 + 688) = v34;
      sub_264A7D664(v0 + 640, v0 + 744);
      v35 = sub_264B41064();
      v37 = v12;
      v38 = sub_2649CC004(v35, v36, &v56);

      *(buf + 4) = v38;
      v12 = v37;
      _os_log_impl(&dword_2649C6000, v31, v54, "Received server event: %{public}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x266749940](v53, -1, -1);
      MEMORY[0x266749940](buf, -1, -1);
    }

    else
    {
    }

    *(v0 + 848) = v7;
    *(v0 + 856) = v8;
    *(v0 + 864) = v10;
    *(v0 + 872) = v55;
    *(v0 + 880) = v11;
    *(v0 + 888) = v12;
    *(v0 + 896) = v13;
    *(v0 + 904) = v4;
    v50 = swift_task_alloc();
    *(v0 + 1120) = v50;
    *v50 = v0;
    v50[1] = sub_264AC50A8;
    v51 = *(v0 + 1088);

    return sub_264AC5264((v0 + 848));
  }
}

uint64_t sub_264AC50A8()
{
  v1 = *(*v0 + 1120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AC51A4, 0, 0);
}

uint64_t sub_264AC51A4()
{
  sub_2649D04D4((v0 + 2), &qword_27FF8B8C8, &qword_264B51970);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[139] = v2;
  *v2 = v0;
  v2[1] = sub_264AC4A30;
  v3 = v0[129];
  v4 = v0[127];

  return MEMORY[0x2822003E8](v0 + 15, 0, 0, v4);
}

uint64_t sub_264AC5264(_OWORD *a1)
{
  *(v2 + 312) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0) - 8) + 64) + 15;
  *(v2 + 320) = swift_task_alloc();
  v5 = type metadata accessor for ContinuityDevice(0);
  *(v2 + 328) = v5;
  v6 = *(v5 - 8);
  *(v2 + 336) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 344) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270) - 8) + 64) + 15;
  *(v2 + 352) = swift_task_alloc();
  v9 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v9;
  *(v2 + 48) = a1[2];
  *(v2 + 57) = *(a1 + 41);

  return MEMORY[0x2822009F8](sub_264AC53B0, v1, 0);
}

uint64_t sub_264AC53B0()
{
  v191 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649D046C(v4 + v5, v1, &unk_27FF89E30, &qword_264B44270);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = *(v0 + 352);
  if (v6)
  {
    sub_2649D04D4(v7, &unk_27FF89E30, &qword_264B44270);
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
  }

  else
  {
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    sub_264ACB1F0(v7, v10, type metadata accessor for ContinuityDevice);
    sub_2649D04D4(v11, &unk_27FF89E30, &qword_264B44270);
    v12 = *(v10 + 16);
    v8 = *(v10 + 24);

    sub_264ACB258(v10, type metadata accessor for ContinuityDevice);
    v9 = v12;
  }

  *(v0 + 360) = v8;
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = v20 >> 5;
  if (v20 >> 5 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {

        v22 = *(v0 + 16);
        v23 = qword_27FF883E0;

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = sub_264B40964();
        __swift_project_value_buffer(v24, qword_27FFA71B8);
        v25 = *(v0 + 16);

        v26 = sub_264B40944();
        v27 = sub_264B414B4();
        sub_264A52520(v0 + 16);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *&v184 = v29;
          *v28 = 136446210;
          sub_264A54FD4();
          v30 = sub_264B41424();
          v32 = sub_2649CC004(v30, v31, &v184);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_2649C6000, v26, v27, "Received blocked serverStatusEvent, reasons: %{public}s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x266749940](v29, -1, -1);
          MEMORY[0x266749940](v28, -1, -1);
        }

        v33 = *(v0 + 312) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
        v34 = *v33;
        v35 = *(v33 + 8);
        *v33 = v13;
        *(v33 + 8) = 0;
        v36 = *(v33 + 16);
        *(v33 + 16) = 6;
        sub_264ACB170(v34, v35, v36);
        sub_264AB62DC(v34, v35, v36);
        *&v184 = v34;
        *(&v184 + 1) = v35;
        LOBYTE(v185) = v36;
        sub_264AB5690(&v184);
        sub_264AB62DC(v34, v35, v36);
      }

      else
      {

        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v66 = sub_264B40964();
        __swift_project_value_buffer(v66, qword_27FFA71B8);
        v67 = sub_264B40944();
        v68 = sub_264B414B4();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v184 = v70;
          *v69 = 136446210;
          *(v0 + 272) = v13;
          *(v0 + 280) = v14;
          v71 = sub_264B41064();
          v73 = v14;
          v74 = sub_2649CC004(v71, v72, &v184);

          *(v69 + 4) = v74;
          v14 = v73;
          _os_log_impl(&dword_2649C6000, v67, v68, "Received orientation status update from server: %{public}s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x266749940](v70, -1, -1);
          MEMORY[0x266749940](v69, -1, -1);
        }

        v75 = *(v0 + 312);
        v76 = *(v75 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
        LOBYTE(v184) = 13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_264B44150;
        *(v77 + 32) = 0x7461746E6569724FLL;
        v78 = v77 + 32;
        *(v77 + 40) = 0xEB000000006E6F69;
        *(v77 + 72) = &type metadata for SceneInteractorOrientationStatus;
        *(v77 + 48) = v13;
        *(v77 + 56) = v14;
        v79 = sub_264A24308(v77);
        swift_setDeallocating();
        sub_2649D04D4(v78, &qword_27FF89220, &qword_264B48430);
        swift_deallocClassInstance();
        sub_264A9113C(&v184, v79);

        v80 = *(v75 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_orientationStatusSubject);
        *(v0 + 256) = v13;
        *(v0 + 264) = v14;
        sub_264B409F4();
      }
    }

    else
    {
      v181 = v9;
      v182 = v8;
      v183 = *(v0 + 24);
      v180 = v20 & 0x1F;
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v47 = sub_264B40964();
      __swift_project_value_buffer(v47, qword_27FFA71B8);
      *(v0 + 121) = *(v0 + 57);
      v48 = *(v0 + 32);
      *(v0 + 80) = *(v0 + 16);
      *(v0 + 96) = v48;
      *(v0 + 112) = *(v0 + 48);
      *(v0 + 136) &= 0x1Fu;
      sub_2649D046C(v0 + 80, v0 + 144, &qword_27FF8B8D0, &qword_264B51990);
      v49 = sub_264B40944();
      v50 = sub_264B414B4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = v13;
        v52 = swift_slowAlloc();
        *v52 = 134349056;
        *(v52 + 4) = v51;
        sub_264A52520(v0 + 16);
        _os_log_impl(&dword_2649C6000, v49, v50, "Connected to remote device using protocol version: %{public}lu", v52, 0xCu);
        v53 = v52;
        v13 = v51;
        MEMORY[0x266749940](v53, -1, -1);
      }

      else
      {
        sub_264A52520(v0 + 16);
      }

      v88 = *(v0 + 312);

      *&v184 = v13;
      *(&v184 + 1) = v183;
      v185 = v15;
      v186 = v16;
      v187 = v17;
      v188 = v18;
      v189 = v19;
      v190 = v180;
      sub_264AC8A90(&v184, v181, v182);
    }

    goto LABEL_59;
  }

  if (v21 == 3)
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v54 = sub_264B40964();
    __swift_project_value_buffer(v54, qword_27FFA71B8);
    v55 = *(v0 + 16);

    v56 = sub_264B40944();
    v57 = sub_264B414B4();
    sub_264A52520(v0 + 16);
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v184 = v59;
      *v58 = 136446210;
      sub_2649E5670();
      v60 = sub_264B41424();
      v62 = sub_2649CC004(v60, v61, &v184);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_2649C6000, v56, v57, "Sensors in use on server: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x266749940](v59, -1, -1);
      MEMORY[0x266749940](v58, -1, -1);
    }

    if (sub_264AABDA8(0, v13))
    {
      v63 = *(*(v0 + 312) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
      LOBYTE(v184) = 14;
      sub_264A9113C(&v184, 0);
    }

    if (sub_264AABDA8(1, v13))
    {
      v64 = *(*(v0 + 312) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
      LOBYTE(v184) = 15;
      sub_264A9113C(&v184, 0);
    }

    v65 = *(*(v0 + 312) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_deviceSensorsInUseSubject);
    *(v0 + 304) = v13;
    sub_264B409F4();
    goto LABEL_59;
  }

  if (v21 == 4)
  {

    v37 = v14;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v38 = sub_264B40964();
    __swift_project_value_buffer(v38, qword_27FFA71B8);
    sub_2649E124C(*(v0 + 16), *(v0 + 24));
    v39 = sub_264B40944();
    v40 = sub_264B41494();
    sub_264A52520(v0 + 16);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v184 = v42;
      *v41 = 136446210;
      v43 = v13;
      *(v0 + 288) = v13;
      *(v0 + 296) = v14;
      sub_2649E124C(*(v0 + 16), *(v0 + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v44 = sub_264B41064();
      v46 = v14;
      v14 = sub_2649CC004(v44, v45, &v184);

      *(v41 + 4) = v14;
      LOBYTE(v14) = v46;
      _os_log_impl(&dword_2649C6000, v39, v40, "Received serverExiting serverStatusEvent, error: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x266749940](v42, -1, -1);
      MEMORY[0x266749940](v41, -1, -1);
    }

    else
    {
      v43 = v13;
    }

    if (v37 <= 0xFB)
    {
      sub_264A52574();
      v101 = swift_allocError();
      v102 = v43;
      *v103 = v43;
      *(v103 + 8) = v37;
    }

    else
    {
      v101 = 0;
      v102 = v43;
    }

    v104 = *(v0 + 312);
    sub_2649E124C(*(v0 + 16), *(v0 + 24));
    v105 = telemetryPayload(_:_:)(0xD000000000000010, 0x8000000264B5FBE0, v101);

    v106 = *(v104 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry);
    LOBYTE(v184) = 10;
    sub_264A9113C(&v184, v105);

    if (v37 > 0xFB)
    {
      goto LABEL_59;
    }

    if ((v37 & 0xC0) != 0x80)
    {
      goto LABEL_94;
    }

    if (__PAIR128__(-128, 15) >= __PAIR128__(v14, v102))
    {
      if (v14 == 128 && v102 == 11)
      {
        v167 = *(v0 + 312) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
        v168 = *v167;
        v169 = *(v167 + 8);
        *v167 = xmmword_264B47380;
        v170 = *(v167 + 16);
        *(v167 + 16) = 9;
        sub_264ACB170(v168, v169, v170);
        sub_264AB62DC(v168, v169, v170);
        *&v184 = v168;
        *(&v184 + 1) = v169;
        LOBYTE(v185) = v170;
        sub_264AB5690(&v184);
        sub_264AB62DC(v168, v169, v170);
        v121 = swift_task_alloc();
        *(v0 + 392) = v121;
        *v121 = v0;
        v122 = sub_264AC6DE4;
      }

      else
      {
        if (v14 != 128 || v102 != 15)
        {
LABEL_94:
          sub_264A52574();
          v146 = swift_allocError();
          *(v0 + 400) = v146;
          *v147 = v102;
          *(v147 + 8) = v37;
          sub_2649E124C(*(v0 + 16), *(v0 + 24));
          v148 = swift_task_alloc();
          *(v0 + 408) = v148;
          *v148 = v0;
          v148[1] = sub_264AC6F34;
          v149 = *(v0 + 312);

          return sub_264ABA794(v146);
        }

        v114 = *(v0 + 312);
        sub_264A52574();
        v115 = swift_allocError();
        *v116 = v102;
        *(v116 + 8) = v37;
        v117 = v114 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
        v118 = *(v114 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
        v119 = *(v114 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
        *v117 = v115;
        *(v117 + 8) = 0;
        v120 = *(v117 + 16);
        *(v117 + 16) = 8;
        sub_264ACB170(v118, v119, v120);
        sub_264AB62DC(v118, v119, v120);
        *&v184 = v118;
        *(&v184 + 1) = v119;
        LOBYTE(v185) = v120;
        sub_264AB5690(&v184);
        sub_264AB62DC(v118, v119, v120);
        v121 = swift_task_alloc();
        *(v0 + 376) = v121;
        *v121 = v0;
        v122 = sub_264AC6B44;
      }

      goto LABEL_116;
    }

    if (v14 == 128 && v102 == 16)
    {
      v171 = *(v0 + 312);
      sub_264A52574();
      v172 = swift_allocError();
      *v173 = v102;
      *(v173 + 8) = v37;
      v174 = v171 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
      v175 = *(v171 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
      v176 = *(v171 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
      *v174 = v172;
      *(v174 + 8) = 0;
      v177 = *(v174 + 16);
      *(v174 + 16) = 8;
      sub_264ACB170(v175, v176, v177);
      sub_264AB62DC(v175, v176, v177);
      *&v184 = v175;
      *(&v184 + 1) = v176;
      LOBYTE(v185) = v177;
      sub_264AB5690(&v184);
      sub_264AB62DC(v175, v176, v177);
      v121 = swift_task_alloc();
      *(v0 + 384) = v121;
      *v121 = v0;
      v122 = sub_264AC6C94;
LABEL_116:
      v121[1] = v122;
      v178 = *(v0 + 312);

      return sub_264AB7F20();
    }

    if (v14 != 128 || v102 != 19)
    {
      goto LABEL_94;
    }

    v138 = *(v0 + 312);
    sub_264A52574();
    v139 = swift_allocError();
    *v140 = v102;
    *(v140 + 8) = v37;
    v141 = v138 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v142 = *(v138 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v143 = *(v138 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    *v141 = v139;
    *(v141 + 8) = 0;
    v144 = *(v141 + 16);
    v145 = 8;
    goto LABEL_105;
  }

  v81 = v15 | v14;
  v82 = v17 | v18 | v19;
  if (v20 == 160 && !(v81 | v13 | v16 | v82))
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v83 = sub_264B40964();
    __swift_project_value_buffer(v83, qword_27FFA71B8);
    v84 = sub_264B40944();
    v85 = sub_264B41484();
    if (!os_log_type_enabled(v84, v85))
    {
      goto LABEL_43;
    }

    v86 = swift_slowAlloc();
    *v86 = 0;
    v87 = "Received unknown serverStatusEvent, ignoring";
    goto LABEL_42;
  }

  v89 = v81 | v16 | v82;
  if (v20 == 160 && v13 == 1 && !v89)
  {
    v90 = v9;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v91 = v8;
    v92 = sub_264B40964();
    __swift_project_value_buffer(v92, qword_27FFA71B8);
    v93 = sub_264B40944();
    v94 = sub_264B414B4();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_2649C6000, v93, v94, "Received readyForUnlock serverStatusEvent", v95, 2u);
      MEMORY[0x266749940](v95, -1, -1);
    }

    v96 = *(v0 + 312);

    v97 = v96 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v98 = *(v96 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v99 = *(v96 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    *v97 = v90;
    *(v97 + 8) = v91;
    v100 = *(v97 + 16);
    *(v97 + 16) = 3;
    sub_264ACB170(v98, v99, v100);
    sub_264AB62DC(v98, v99, v100);
    *&v184 = v98;
    *(&v184 + 1) = v99;
    LOBYTE(v185) = v100;
    sub_264AB5690(&v184);
    sub_264AB62DC(v98, v99, v100);
    goto LABEL_59;
  }

  if (v20 != 160 || v13 != 2 || v89)
  {
    if (v20 == 160 && v13 == 3 && !v89)
    {

      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v150 = sub_264B40964();
      __swift_project_value_buffer(v150, qword_27FFA71B8);
      v151 = sub_264B40944();
      v152 = sub_264B414B4();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        *v153 = 0;
        _os_log_impl(&dword_2649C6000, v151, v152, "Received awaitingRendering serverStatusEvent", v153, 2u);
        MEMORY[0x266749940](v153, -1, -1);
      }

      v154 = *(v0 + 312);

      v141 = v154 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
      v142 = *(v154 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
      v143 = *(v154 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
      *v141 = xmmword_264B4A5F0;
      v144 = *(v141 + 16);
      v145 = 9;
LABEL_105:
      *(v141 + 16) = v145;
      sub_264ACB170(v142, v143, v144);
      sub_264AB62DC(v142, v143, v144);
      *&v184 = v142;
      *(&v184 + 1) = v143;
      LOBYTE(v185) = v144;
      sub_264AB5690(&v184);
      sub_264AB62DC(v142, v143, v144);
      goto LABEL_59;
    }

    if (v20 == 160 && v13 == 4 && !v89)
    {

      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v155 = sub_264B40964();
      __swift_project_value_buffer(v155, qword_27FFA71B8);
      v156 = sub_264B40944();
      v157 = sub_264B414B4();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_2649C6000, v156, v157, "Received active serverStatusEvent", v158, 2u);
        MEMORY[0x266749940](v158, -1, -1);
      }

      v160 = *(v0 + 312);
      v159 = *(v0 + 320);

      v161 = v160 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
      v162 = *(v160 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
      v163 = *(v160 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
      *v161 = xmmword_264B51560;
      v164 = *(v161 + 16);
      *(v161 + 16) = 9;
      sub_264ACB170(v162, v163, v164);
      sub_264AB62DC(v162, v163, v164);
      *&v184 = v162;
      *(&v184 + 1) = v163;
      LOBYTE(v185) = v164;
      sub_264AB5690(&v184);
      sub_264AB62DC(v162, v163, v164);
      v165 = sub_264B40744();
      (*(*(v165 - 8) + 56))(v159, 1, 1, v165);
      v166 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest;
      swift_beginAccess();
      sub_2649FECCC(v159, v160 + v166, &qword_27FF889E0, &qword_264B449C0);
      swift_endAccess();
      goto LABEL_59;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v179 = sub_264B40964();
    __swift_project_value_buffer(v179, qword_27FFA71B8);
    v84 = sub_264B40944();
    v85 = sub_264B414B4();
    if (!os_log_type_enabled(v84, v85))
    {
LABEL_43:

LABEL_59:
      v108 = *(v0 + 344);
      v107 = *(v0 + 352);
      v109 = *(v0 + 320);

      v110 = *(v0 + 8);

      return v110();
    }

    v86 = swift_slowAlloc();
    *v86 = 0;
    v87 = "Received invalidated serverStatusEvent";
LABEL_42:
    _os_log_impl(&dword_2649C6000, v84, v85, v87, v86, 2u);
    MEMORY[0x266749940](v86, -1, -1);
    goto LABEL_43;
  }

  v123 = v9;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v124 = v8;
  v125 = sub_264B40964();
  __swift_project_value_buffer(v125, qword_27FFA71B8);
  v126 = sub_264B40944();
  v127 = sub_264B414B4();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&dword_2649C6000, v126, v127, "Received readyForVideo serverStatusEvent", v128, 2u);
    MEMORY[0x266749940](v128, -1, -1);
  }

  v129 = *(v0 + 312);

  v130 = v129 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v131 = *(v129 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
  v132 = *(v129 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
  *v130 = v123;
  *(v130 + 8) = v124;
  v133 = *(v130 + 16);
  *(v130 + 16) = 5;

  sub_264ACB170(v131, v132, v133);
  sub_264AB62DC(v131, v132, v133);
  *&v184 = v131;
  *(&v184 + 1) = v132;
  LOBYTE(v185) = v133;
  sub_264AB5690(&v184);
  sub_264AB62DC(v131, v132, v133);
  v134 = swift_task_alloc();
  *(v0 + 368) = v134;
  *v134 = v0;
  v134[1] = sub_264AC69D8;
  v135 = *(v0 + 312);

  return sub_264ABF07C(v123, v124);
}

uint64_t sub_264AC69D8()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v9 = *v0;

  v4 = v1[44];
  v5 = v1[43];
  v6 = v1[40];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_264AC6B44()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v8 = *v0;

  v3 = v1[44];
  v4 = v1[43];
  v5 = v1[40];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_264AC6C94()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v8 = *v0;

  v3 = v1[44];
  v4 = v1[43];
  v5 = v1[40];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_264AC6DE4()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v8 = *v0;

  v3 = v1[44];
  v4 = v1[43];
  v5 = v1[40];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_264AC6F34()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v9 = *v0;

  v4 = v1[44];
  v5 = v1[43];
  v6 = v1[40];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_264AC70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B898, &unk_264B51930);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A0, &unk_264B58630);
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A8, &qword_264B51940);
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v14 = *(v13 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC723C, 0, 0);
}

uint64_t sub_264AC723C()
{
  v1 = v0[15];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();
    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[19];

    v8 = v0[1];

    return v8();
  }

  v3 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  return MEMORY[0x2822009F8](sub_264AC7348, v3, 0);
}

uint64_t sub_264AC7348()
{
  *(v0 + 216) = *(*(v0 + 208) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);

  return MEMORY[0x2822009F8](sub_264AC73C4, 0, 0);
}

uint64_t sub_264AC73C4()
{
  if (!v0[27])
  {
    return sub_264B41874();
  }

  v1 = sub_264B41314();
  v2 = v0[27];
  if (v1)
  {
    v3 = v0[26];
    v4 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[19];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[27];

    return MEMORY[0x2822009F8](sub_264AC7524, v10, 0);
  }
}

uint64_t sub_264AC7524()
{
  v1 = v0[27];
  v2 = v0[25];
  (*(v0[21] + 104))(v0[22], *MEMORY[0x277D85778], v0[20]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264AC75EC, 0, 0);
}

uint64_t sub_264AC75EC()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Monitoring incoming drag and drop events", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  if (sub_264B41314())
  {
    v6 = v0[26];
    v7 = v0[27];
    (*(v0[24] + 8))(v0[25], v0[23]);

    v8 = v0[25];
    v9 = v0[22];
    v10 = v0[19];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[25];
    v14 = v0[23];
    v15 = v0[19];
    sub_264B412C4();
    v0[28] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventSubject;
    v16 = *(MEMORY[0x277D85798] + 4);
    v17 = swift_task_alloc();
    v0[29] = v17;
    *v17 = v0;
    v17[1] = sub_264AC7814;
    v18 = v0[19];
    v19 = v0[17];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v19);
  }
}

uint64_t sub_264AC7814()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AC7910, 0, 0);
}

uint64_t sub_264AC7910()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 240) = v2;
  *(v0 + 248) = v1;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  *(v0 + 50) = *(v0 + 48);
  if (!v4)
  {
    v7 = *(v0 + 208);

    v8 = *(v0 + 216);
    goto LABEL_5;
  }

  if (sub_264B41314())
  {
    v5 = *(v0 + 216);

    sub_264ACCD54(v2, v1, v3, v4);
    v6 = *(v0 + 208);
LABEL_5:
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 184);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_264AC7A74, v20, 0);
}

uint64_t sub_264AC7AA0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;
  *(v0 + 72) = v3;
  *(v0 + 80) = v1;
  v6 = *(v0 + 50);
  *(v0 + 88) = v6 & 1;
  *(v0 + 89) = HIBYTE(v6) & 1;
  sub_264B409C4();
  sub_264ACCD54(v5, v4, v3, v1);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_264AC7814;
  v9 = *(v0 + 152);
  v10 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v10);
}

uint64_t sub_264AC7BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v18 - 7) < 2 || v18 == 9 && __PAIR128__((*(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) < 2)
  {
    return sub_264B411E4();
  }

  v20 = sub_264B41274();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v28 = a5;
  v22 = v21;
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v23 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v22;
  (*(v10 + 32))(&v24[v23], v13, v9);
  v25 = sub_264A10C20(0, 0, v17, a4, v24);
  v26 = *(a2 + *v28);
  *(a2 + *v28) = v25;
}

uint64_t sub_264AC7E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B880, &qword_264B51908);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B888, &qword_264B51910);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B890, &qword_264B51918);
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC7FB4, 0, 0);
}

uint64_t sub_264AC7FB4()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();
    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }

  v3 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  return MEMORY[0x2822009F8](sub_264AC80C0, v3, 0);
}

uint64_t sub_264AC80C0()
{
  *(v0 + 168) = *(*(v0 + 160) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);

  return MEMORY[0x2822009F8](sub_264AC813C, 0, 0);
}

uint64_t sub_264AC813C()
{
  if (!v0[21])
  {
    return sub_264B41874();
  }

  v1 = sub_264B41314();
  v2 = v0[21];
  if (v1)
  {
    v3 = v0[20];
    v4 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[21];

    return MEMORY[0x2822009F8](sub_264AC829C, v10, 0);
  }
}

uint64_t sub_264AC829C()
{
  v1 = v0[21];
  v2 = v0[19];
  (*(v0[15] + 104))(v0[16], *MEMORY[0x277D85778], v0[14]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264AC8364, 0, 0);
}

uint64_t sub_264AC8364()
{
  if (qword_27FF88400 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[22] = __swift_project_value_buffer(v1, qword_27FF8AE58);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Monitoring incoming accessibility messages", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  if (sub_264B41314())
  {
    v6 = v0[20];
    v7 = v0[21];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v8 = v0[19];
    v9 = v0[16];
    v10 = v0[13];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[19];
    v14 = v0[17];
    v15 = v0[13];
    sub_264B412C4();
    v0[23] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessbilityDataSubject;
    v16 = *(MEMORY[0x277D85798] + 4);
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_264AC8590;
    v18 = v0[13];
    v19 = v0[11];

    return MEMORY[0x2822003E8](v0 + 5, 0, 0, v19);
  }
}

uint64_t sub_264AC8590()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264AC868C, 0, 0);
}

uint64_t sub_264AC868C()
{
  v26 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v0[25] = v2;
  v0[26] = v1;
  if ((~v1 & 0x3000000000000000) == 0)
  {
    v3 = v0[20];
    v4 = v0[21];

LABEL_5:
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v8 + 8))(v7, v9);
    v10 = v0[19];
    v11 = v0[16];
    v12 = v0[13];

    v13 = v0[1];

    return v13();
  }

  if (sub_264B41314())
  {
    v5 = v0[20];
    v6 = v0[21];

    sub_264ACCBB4(v2, v1);
    goto LABEL_5;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v16 = v0[22];
    v17 = sub_264B40944();
    v18 = sub_264B41494();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2649CC004(0xD000000000000014, 0x8000000264B5FB50, &v25);
      _os_log_impl(&dword_2649C6000, v17, v18, "Received unknown type from server (%s, ignoring", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v21 = *(MEMORY[0x277D85798] + 4);
    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_264AC8590;
    v23 = v0[13];
    v24 = v0[11];

    return MEMORY[0x2822003E8](v0 + 5, 0, 0, v24);
  }

  else
  {
    v15 = v0[20];
    sub_264A5448C(v2, v1);

    return MEMORY[0x2822009F8](sub_264AC8950, v15, 0);
  }
}

uint64_t sub_264AC8950()
{
  v1 = *(*(v0 + 160) + *(v0 + 184));
  *(v0 + 56) = *(v0 + 200);
  sub_264B409C4();

  return MEMORY[0x2822009F8](sub_264AC89CC, 0, 0);
}

uint64_t sub_264AC89CC()
{
  v1 = v0[25];
  v2 = v0[26];
  sub_264ACCBB4(v1, v2);
  sub_264ACCBB4(v1, v2);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_264AC8590;
  v5 = v0[13];
  v6 = v0[11];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v6);
}

uint64_t sub_264AC8A90(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = a1[1];
  v37 = *a1;
  v38 = v12;
  v39[0] = a1[2];
  *(v39 + 9) = *(a1 + 41);
  v13 = v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v14 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
  v15 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
  *v13 = a2;
  *(v13 + 8) = a3;
  LOBYTE(a2) = *(v13 + 16);
  *(v13 + 16) = 2;

  sub_264ACB170(v14, v15, a2);
  sub_264AB62DC(v14, v15, a2);
  *&v34 = v14;
  *(&v34 + 1) = v15;
  LOBYTE(v35) = a2;
  sub_264AB5690(&v34);
  sub_264AB62DC(v14, v15, a2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FFA71B8);
  sub_264A186B4(&v37, &v34);
  v17 = sub_264B40944();
  v18 = sub_264B414B4();
  sub_264A18710(&v37);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136446210;
    v34 = v37;
    v35 = v38;
    v36[0] = v39[0];
    *(v36 + 9) = *(v39 + 9);
    sub_264A186B4(&v37, v33);
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v32);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2649C6000, v17, v18, "Connecting to server with configuration: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  v24 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v25 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16);
  v34 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v35 = v25;
  v36[0] = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 32);
  *(v36 + 9) = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 41);
  v26 = v38;
  *v24 = v37;
  v24[1] = v26;
  v24[2] = v39[0];
  *(v24 + 41) = *(v39 + 9);
  sub_264A186B4(&v37, v33);
  sub_2649D04D4(&v34, &qword_27FF8B820, &unk_264B51648);
  v27 = sub_264B41274();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  sub_264A10C20(0, 0, v11, &unk_264B519A0, v29);
}

uint64_t sub_264AC8E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0) - 8) + 64) + 15;
  v4[53] = swift_task_alloc();
  v6 = sub_264B40744();
  v4[54] = v6;
  v7 = *(v6 - 8);
  v4[55] = v7;
  v8 = *(v7 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v9 = *(*(type metadata accessor for ScreenSharingSession.Config(0) - 8) + 64) + 15;
  v4[59] = swift_task_alloc();
  v10 = type metadata accessor for HIDUpdateInputDevicesMessage();
  v4[60] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC8F80, 0, 0);
}

uint64_t sub_264AC8F80()
{
  v1 = v0[52];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[62] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[63] = v3;
    *v3 = v0;
    v3[1] = sub_264AC90BC;

    return sub_264ACA544();
  }

  else
  {
    v5 = v0[61];
    v6 = v0[58];
    v7 = v0[59];
    v9 = v0[56];
    v8 = v0[57];
    v10 = v0[53];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_264AC90BC()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v4 = *v0;

  *(v1 + 512) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_localDevicePrimitives;
  *(v1 + 520) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives;

  return MEMORY[0x2822009F8](sub_264AC91D0, 0, 0);
}

uint64_t sub_264AC91D0()
{
  v17 = v0;
  v1 = *(v0 + 496);
  v2 = (v1 + *(v0 + 520));
  v3 = (v1 + *(v0 + 512));
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v15 = 0;
  *(v0 + 857) = (*(v5 + 8))(&v15, v4, v5) & 1;
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  (*(v7 + 8))(&v16, v6, v7);
  *(v0 + 858) = v16;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  *(v0 + 528) = (*(v9 + 16))(v8, v9);
  *(v0 + 536) = v10;
  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v11);
  *(v0 + 544) = (*(v12 + 32))(v11, v12);
  *(v0 + 552) = v13;
  *(v0 + 856) = 0;
  *(v0 + 859) = 0;
  *(v0 + 560) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_hidServicePrimitives;

  return MEMORY[0x2822009F8](sub_264AC9354, 0, 0);
}

uint64_t sub_264AC9354()
{
  v1 = (v0[62] + v0[70]);
  v2 = v1[3];
  v0[71] = v2;
  v3 = v1[4];
  v0[72] = v3;
  v0[73] = __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[74] = *(v3 + 8);
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x5571000000000000;
  v0[76] = sub_264B41244();
  v0[77] = sub_264B41234();
  v5 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264AC9420, v5, v4);
}

uint64_t sub_264AC9420()
{
  v1 = v0[77];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];

  v0[78] = v3(v6, v5);

  return MEMORY[0x2822009F8](sub_264AC94BC, 0, 0);
}

uint64_t sub_264AC94BC()
{
  v1 = v0[76];
  v2 = (v0[62] + v0[70]);
  v3 = v2[3];
  v0[79] = v3;
  v0[80] = v2[4];
  v0[81] = __swift_project_boxed_opaque_existential_1(v2, v3);
  v0[82] = sub_264B41234();
  v5 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264AC956C, v5, v4);
}

uint64_t sub_264AC956C()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];

  v0[83] = HIDServicePrimitives.basicKeyboardAndMouseServiceProperties()(v4, v3);

  return MEMORY[0x2822009F8](sub_264AC95F8, 0, 0);
}

uint64_t sub_264AC95F8()
{
  v1 = v0[62];
  sub_264AB5590(v0[83], v0[78]);
  v0[84] = v2;
  v0[85] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config;

  return MEMORY[0x2822009F8](sub_264AC9678, v1, 0);
}

uint64_t sub_264AC9678()
{
  sub_264ACB1F0(v0[62] + v0[85], v0[59], type metadata accessor for ScreenSharingSession.Config);

  return MEMORY[0x2822009F8](sub_264AC9700, 0, 0);
}

uint64_t sub_264AC9700()
{
  v12 = v0;
  v1 = v0[84];
  v2 = v0[61];
  v3 = v0[59];
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 32))(v2, v3, v4);
  v5 = *(v1 + 16);
  v6 = v0[84];
  if (v5)
  {
    v7 = sub_264B152BC(v5, 0);
    v8 = sub_264B15EEC(&v11, v7 + 4, v5, v6);
    sub_264A0E7A0();
    if (v8 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = v0[62];
  *(v0[61] + *(v0[60] + 20)) = v7;

  return MEMORY[0x2822009F8](sub_264AC981C, v9, 0);
}

uint64_t sub_264AC981C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 424);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest;
  swift_beginAccess();
  sub_2649D046C(v1 + v3, v2, &qword_27FF889E0, &qword_264B449C0);

  return MEMORY[0x2822009F8](sub_264AC98C4, 0, 0);
}

uint64_t sub_264AC98C4()
{
  v55 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(v3, &qword_27FF889E0, &qword_264B449C0);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 4;
  }

  else
  {
    (*(v2 + 32))(*(v0 + 464), v3, v1);
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 456);
    v9 = *(v0 + 464);
    v10 = *(v0 + 432);
    v11 = *(v0 + 440);
    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FFA71B8);
    v51 = *(v11 + 16);
    v51(v8, v9, v10);
    v13 = sub_264B40944();
    v14 = sub_264B414B4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 456);
    v17 = *(v0 + 432);
    v18 = *(v0 + 440);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v19 = 136446210;
      v47 = sub_264B40724();
      v21 = v20;
      v22 = *(v18 + 8);
      v22(v16, v17);
      v23 = v22;
      v24 = sub_2649CC004(v47, v21, &v54);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v13, v14, "Including launch request of type %{public}s as part of client configuration", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x266749940](v49, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    else
    {

      v25 = *(v18 + 8);
      v25(v16, v17);
      v23 = v25;
    }

    v26 = *(v0 + 464);
    v27 = *(v0 + 448);
    v28 = *(v0 + 432);
    v51(v27, v26, v28);
    v4 = sub_264B40724();
    v7 = v29;
    v5 = sub_264B40734();
    v6 = v30;
    v23(v27, v28);
    v23(v26, v28);
  }

  *(v0 + 712) = v6;
  *(v0 + 704) = v5;
  *(v0 + 696) = v7;
  *(v0 + 688) = v4;
  v53 = *(v0 + 859);
  v50 = *(v0 + 544);
  v52 = *(v0 + 552);
  v48 = *(v0 + 528);
  v46 = *(v0 + 858);
  v31 = *(v0 + 488);
  if (*(v0 + 857))
  {
    v32 = 7;
  }

  else
  {
    v32 = 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8D8, &unk_264B519B0);
  v33 = *(type metadata accessor for HIDMessage() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_264B44150;
  sub_264ACB1F0(v31, v36 + v35, type metadata accessor for HIDUpdateInputDevicesMessage);
  swift_storeEnumTagMultiPayload();
  *(v0 + 16) = 3;
  *(v0 + 24) = v46;
  *(v0 + 32) = v48;
  *(v0 + 48) = v50;
  *(v0 + 56) = v52;
  *(v0 + 64) = v32;
  *(v0 + 72) = v53;
  *(v0 + 80) = v36;
  *(v0 + 88) = v4;
  *(v0 + 96) = v7;
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  sub_264A18764(v4, v7, v5, v6);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v37 = sub_264B40964();
  *(v0 + 720) = __swift_project_value_buffer(v37, qword_27FFA71B8);
  v38 = sub_264B40944();
  v39 = sub_264B41484();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2649C6000, v38, v39, "Sending client configuration to server", v40, 2u);
    MEMORY[0x266749940](v40, -1, -1);
  }

  v41 = *(v0 + 496);

  v42 = *(v0 + 32);
  *(v0 + 728) = *(v0 + 16);
  *(v0 + 744) = v42;
  v43 = *(v0 + 64);
  *(v0 + 760) = *(v0 + 48);
  *(v0 + 776) = v43;
  v44 = *(v0 + 96);
  *(v0 + 792) = *(v0 + 80);
  *(v0 + 808) = v44;
  *(v0 + 824) = *(v0 + 112);
  sub_264A189F8(v0 + 16, v0 + 120);

  return MEMORY[0x2822009F8](sub_264AC9E08, v41, 0);
}

uint64_t sub_264AC9E08()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 776);
  v3 = *(v0 + 728);
  v4 = *(v0 + 736) & 3;
  v5 = *(v0 + 784) & 1 | 0x2000000000000000;
  *(v0 + 352) = &type metadata for StatusEvent;
  *(v0 + 360) = &off_28765B558;
  v6 = swift_allocObject();
  *(v0 + 328) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = *(v0 + 760);
  *(v6 + 32) = *(v0 + 744);
  *(v6 + 48) = v7;
  *(v6 + 64) = v2;
  *(v6 + 72) = v5;
  v8 = *(v0 + 808);
  *(v6 + 80) = *(v0 + 792);
  *(v6 + 96) = v8;
  *(v6 + 112) = v1;
  sub_264A189F8(v0 + 16, v0 + 224);
  v9 = swift_task_alloc();
  *(v0 + 832) = v9;
  *v9 = v0;
  v9[1] = sub_264AC9F28;
  v10 = *(v0 + 496);

  return sub_264ABA344(v0 + 328);
}

uint64_t sub_264AC9F28()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v7 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v4 = *(v2 + 496);
    v5 = sub_264ACA14C;
  }

  else
  {
    sub_264A18A30(v2 + 16);
    __swift_destroy_boxed_opaque_existential_0((v2 + 328));
    v5 = sub_264ACA054;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264ACA054()
{
  v1 = v0[62];

  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[61];
  sub_264A18A30((v0 + 2));
  sub_264A187C4(v5, v4, v3, v2);
  sub_264ACB258(v6, type metadata accessor for HIDUpdateInputDevicesMessage);
  v7 = v0[61];
  v8 = v0[58];
  v9 = v0[59];
  v11 = v0[56];
  v10 = v0[57];
  v12 = v0[53];

  v13 = v0[1];

  return v13();
}

uint64_t sub_264ACA14C()
{
  sub_264A18A30(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));

  return MEMORY[0x2822009F8](sub_264ACA1BC, 0, 0);
}

uint64_t sub_264ACA1BC()
{
  v1 = v0[105];
  v2 = v0[90];
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[105];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Unable to send client configuration, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[106] = v11;
  *v11 = v0;
  v11[1] = sub_264ACA344;
  v12 = v0[105];
  v13 = v0[62];

  return sub_264ABA794(v12);
}

uint64_t sub_264ACA344()
{
  v1 = *(*v0 + 848);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264ACA440, 0, 0);
}

uint64_t sub_264ACA440()
{
  v1 = v0[105];
  v2 = v0[62];

  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[61];
  sub_264A18A30((v0 + 2));
  sub_264A187C4(v6, v5, v4, v3);
  sub_264ACB258(v7, type metadata accessor for HIDUpdateInputDevicesMessage);
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[59];
  v12 = v0[56];
  v11 = v0[57];
  v13 = v0[53];

  v14 = v0[1];

  return v14();
}

uint64_t sub_264ACA544()
{
  v1[45] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8E0, &unk_264B585F0);
  v1[46] = v2;
  v3 = *(v2 - 8);
  v1[47] = v3;
  v4 = *(v3 + 64) + 15;
  v1[48] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B740, &unk_264B51580) - 8) + 64) + 15;
  v1[49] = swift_task_alloc();
  v6 = sub_264B3FFD4();
  v1[50] = v6;
  v7 = *(v6 - 8);
  v1[51] = v7;
  v8 = *(v7 + 64) + 15;
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ACA6A4, v0, 0);
}

uint64_t sub_264ACA6A4()
{
  v45 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
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
    v44 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v44);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 901;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001BLL, 0x8000000264B5FC00, &v44);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = (*(v0 + 360) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v43 = 0;
  v16 = (*(v15 + 8))(&v43, v14, v15);
  v17 = *(v0 + 360);
  if ((v16 & 1) == 0)
  {
    sub_264ACAE64(0);
    v32 = sub_264B40944();
    v33 = sub_264B414B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "RemoteTextInput feature flag is not enabled, not monitoring incoming RTI messages";
LABEL_24:
      _os_log_impl(&dword_2649C6000, v32, v33, v35, v34, 2u);
      MEMORY[0x266749940](v34, -1, -1);
    }

LABEL_25:

    goto LABEL_26;
  }

  v18 = v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion;
  v19 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v20 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16);
  v21 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 32);
  *(v0 + 57) = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 41);
  *(v0 + 32) = v20;
  *(v0 + 48) = v21;
  *(v0 + 16) = v19;
  v22 = *(v0 + 40);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  if (!v22)
  {
    v36 = *(v18 + 16);
    *(v0 + 208) = *v18;
    *(v0 + 224) = v36;
    *(v0 + 232) = 0;
    *(v0 + 240) = *(v18 + 32);
    *(v0 + 256) = v23;
    *(v0 + 264) = v24;
    sub_2649D046C(v0 + 16, v0 + 272, &qword_27FF8B820, &unk_264B51648);
    sub_2649D04D4(v0 + 208, &qword_27FF8B820, &unk_264B51648);
    goto LABEL_22;
  }

  v25 = *(v18 + 16);
  *(v0 + 80) = *v18;
  *(v0 + 96) = v25;
  *(v0 + 104) = v22;
  *(v0 + 112) = *(v18 + 32);
  *(v0 + 128) = v23;
  *(v0 + 136) = v24;
  sub_2649D046C(v0 + 16, v0 + 144, &qword_27FF8B820, &unk_264B51648);
  sub_2649D04D4(v0 + 80, &qword_27FF8B820, &unk_264B51648);
  if ((v24 & 1) != 0 || (v23 & 4) == 0)
  {
LABEL_22:
    v37 = *(v0 + 360);
    sub_264ACAE64(0);
    v32 = sub_264B40944();
    v33 = sub_264B414B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Server does not support RemoteTextInput, not monitoring incoming RTI messages";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v26 = sub_264B40944();
  v27 = sub_264B414B4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2649C6000, v26, v27, "Server supports RemoteTextInput, setting up RTI messages monitor", v28, 2u);
    MEMORY[0x266749940](v28, -1, -1);
  }

  v29 = *(v0 + 360);

  v30 = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v30 - 7) >= 2 && (v30 != 9 || __PAIR128__((*(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) >= 2))
  {
    v31 = *(*(v0 + 360) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);
    *(v0 + 424) = v31;
    if (!v31)
    {
      return sub_264B41874();
    }

    return MEMORY[0x2822009F8](sub_264ACAC84, v31, 0);
  }

LABEL_26:
  v38 = *(v0 + 416);
  v39 = *(v0 + 384);
  v40 = *(v0 + 392);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_264ACAC84()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[45];
  (*(v0[47] + 104))(v0[48], *MEMORY[0x277D85778], v0[46]);
  type metadata accessor for RTIMessage();
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264ACAD4C, v3, 0);
}

uint64_t sub_264ACAD4C()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[45];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A08, &qword_264B449F0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  sub_2649FECCC(v2, v3 + v5, &qword_27FF8B740, &unk_264B51580);
  swift_endAccess();
  v6 = v0[52];
  v7 = v0[48];
  v8 = v0[49];

  v9 = v0[1];

  return v9();
}

uint64_t sub_264ACAE64(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_264ACB060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264ACB0A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264AB74B8(a1, v4, v5, v6, v7, v8);
}

id sub_264ACB170(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 2u && a3 != 3)
    {
      return result;
    }
  }

  if (a3 <= 5u)
  {
    if (a3 != 4 && a3 != 5)
    {
      return result;
    }
  }

  if (a3 == 6)
  {
  }

  if (a3 == 7 || a3 == 8)
  {
    return result;
  }

  return result;
}

uint64_t sub_264ACB1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264ACB258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264ACB2B8()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264ACB300()
{
  sub_264A52680(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_264ACB35C()
{
  sub_2649DEF6C(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264ACB39C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  return sub_2649D046C(v3 + v4, a2, &qword_27FF8B740, &unk_264B51580);
}

void sub_264ACB414()
{
  v0 = type metadata accessor for ScreenSharingSession.Config(319);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_264ACC2D0(319, &qword_27FF89950, MEMORY[0x277D4B790]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_264ACC2D0(319, &qword_27FF8B840, type metadata accessor for ContinuityDevice);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_264A2C814(319, &qword_27FF8B848, &qword_27FF889E8, &qword_264B449C8);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_264A2C814(319, &qword_27FF8B850, &qword_27FF88A08, &qword_264B449F0);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of ScreenSharingSession.invalidate(_:)(uint64_t a1)
{
  v4 = *(*v1 + 776);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return v8(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendHIDReport(sender:reportData:eventID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *(*v5 + 784);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2649E0EE4;

  return (v16)(a1, a2, a3, a4, a5 & 1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendHIDInputDevices(deviceID:inputDevices:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 792);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2649E0EE4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ScreenSharingSession.sendHIDResetGestureStateMessage()()
{
  v2 = *(*v0 + 800);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2649E0EE4;

  return v6();
}

uint64_t dispatch thunk of ScreenSharingSession.sendSystemGestureEvent(_:)(uint64_t a1)
{
  v4 = *(*v1 + 808);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return v8(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendWindowRecordingEvent(_:)(uint64_t a1)
{
  v4 = *(*v1 + 816);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return v8(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendAccessibilityMessage(_:)(uint64_t a1)
{
  v4 = *(*v1 + 832);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return v8(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendDragAndDropEvent(_:)(uint64_t a1)
{
  v4 = *(*v1 + 840);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649CD850;

  return v8(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendRTIMessage(_:)(uint64_t a1)
{
  v4 = *(*v1 + 856);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return v8(a1);
}

void sub_264ACC2D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264B41614();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264ACC348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264ACC414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264B40104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_264ACC4CC()
{
  result = sub_264B40104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_264ACC558()
{
  result = qword_27FF8B868;
  if (!qword_27FF8B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B868);
  }

  return result;
}

uint64_t sub_264ACC5AC()
{
  v1 = type metadata accessor for ContinuityDevice(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);
  swift_unknownObjectRelease();
  v7 = *(v0 + 6);

  v8 = &v0[v3];
  v9 = *&v0[v3 + 8];

  v10 = *&v0[v3 + 24];

  v11 = *(v1 + 24);
  v12 = sub_264B406C4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(&v0[v3 + v11], 1, v12))
  {
    (*(v13 + 8))(&v8[v11], v12);
  }

  v14 = *&v8[*(v1 + 28) + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264ACC710(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuityDevice(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2649E0EE4;

  return sub_264ABD118(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_264ACC81C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
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

uint64_t sub_264ACC900(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC33C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264ACCA6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264ACCAA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC7E18(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264ACCBB4(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_2649E7004(a1, a2);
  }

  return a1;
}

uint64_t sub_264ACCC48(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC70A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264ACCD54(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2649DEF6C(result, a2);
  }

  return result;
}

uint64_t objectdestroy_129Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264ACCE6C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC42B4(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264ACCFB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AC8E14(a1, v4, v5, v6);
}

uint64_t sub_264ACD078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AC1C48(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_169Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264ACD180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AC0F94(a1, v4, v5, (v1 + 4), v6);
}

id sub_264ACD27C()
{
  type metadata accessor for ScreenSharingKitBundleMarkerClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FFA7218 = result;
  return result;
}

uint64_t sub_264ACD2D4()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264ACD338(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264ACD35C, v2, 0);
}

uint64_t sub_264ACD35C()
{
  v1 = v0[4];
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 16);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_264A1B27C;
  v9 = v0[2];
  v8 = v0[3];

  return v11(v9, v8, ObjectType, v2);
}

uint64_t sub_264ACD4A8()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_264ACD5CC;

  return v9(ObjectType, v2);
}

uint64_t sub_264ACD5CC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264ACD6C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264ACD6E0, v1, 0);
}

uint64_t sub_264ACD6E0()
{
  v1 = v0[3];
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 32);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_264ACD80C;
  v8 = v0[2];

  return v10(v8, ObjectType, v2);
}

uint64_t sub_264ACD80C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_264ACD958, v8, 0);
  }
}

uint64_t sub_264ACD958()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(*(v0 + 24) + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
    sub_264ACDA78();
    sub_264B40A34();
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_264ACD9FC(uint64_t a1)
{
  result = sub_264ACDA24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264ACDA24()
{
  result = qword_27FF8B8E8;
  if (!qword_27FF8B8E8)
  {
    type metadata accessor for NotifyingPlaybackEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B8E8);
  }

  return result;
}

unint64_t sub_264ACDA78()
{
  result = qword_27FF89EB8;
  if (!qword_27FF89EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89E80, &unk_264B51AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89EB8);
  }

  return result;
}

uint64_t sub_264ACDADC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = *(v0 + 16);

  v8 = sub_264B40544();

  if (v8)
  {
    v9 = *(v1 + 16);

    sub_264B404C4();
  }

  v10 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventContinuation, v2);
  sub_264B412B4();
  v11 = *(v3 + 8);
  v11(v6, v2);
  if (*(v1 + 24))
  {
    v12 = *(v1 + 24);

    sub_264B41304();
  }

  v13 = *(v1 + 16);

  v14 = *(v1 + 24);

  v15 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventStream;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v11((v1 + v10), v2);
  v17 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData);

  v18 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_messageSender + 8);

  v19 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_shieldWindowSceneContainer);

  v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8);

  v21 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking + 8);
  sub_2649CB67C(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking));
  v22 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish + 8);
  sub_2649CB67C(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish));
  return v1;
}

uint64_t sub_264ACDD38()
{
  sub_264ACDADC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_264ACDDB8()
{
  sub_264ACFD80(319, &qword_27FF8B930, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264ACFD80(319, &qword_27FF8B938, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_264ACDF24(uint64_t result, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished))
  {
    return result;
  }

  v4 = result;
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AEA0);

  sub_2649DEF18(v4, a2);
  v6 = sub_264B40944();
  v7 = sub_264B414B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    result = sub_2649CC004(*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v21);
    *(v8 + 4) = result;
    *(v8 + 12) = 2050;
    v10 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_16;
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (!v14)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(a2);
LABEL_16:
      *(v8 + 14) = v11;
      sub_2649DEF6C(v4, a2);
      _os_log_impl(&dword_2649C6000, v6, v7, "Drag %{public}s: Surrogate session received drag data of size %{public}ld bytes", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
      goto LABEL_17;
    }

    LODWORD(v11) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_16;
  }

  sub_2649DEF6C(v4, a2);
LABEL_17:

  v15 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData;
  swift_beginAccess();
  v16 = *(v2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_2649D7E18(0, *(v16 + 2) + 1, 1, v16);
    *(v2 + v15) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_2649D7E18((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v4;
  *(v20 + 5) = a2;
  *(v2 + v15) = v16;
  swift_endAccess();
  sub_2649DEF18(v4, a2);
  return sub_264ACE1C4();
}

uint64_t sub_264ACE1C4()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData) != 1)
  {
    return result;
  }

  v8 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData;
  swift_beginAccess();
  v10 = *(v1 + v8);
  *(v1 + v8) = MEMORY[0x277D84F90];
  v27 = v10;
  v11 = *(v10 + 16);
  if (!v11)
  {
  }

  v31 = v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier;
  v12 = *(v1 + 16);
  v32 = (v3 + 8);
  v13 = (v27 + 40);
  *&v9 = 136446466;
  v30 = v9;
  v28 = v2;
  v29 = v1;
  while (1)
  {
    v15 = *(v13 - 1);
    v14 = *v13;
    sub_2649DEF18(v15, *v13);
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FF8AEA0);
    sub_2649DEF18(v15, v14);

    v17 = sub_264B40944();
    v18 = sub_264B414B4();

    if (os_log_type_enabled(v17, v18))
    {
      break;
    }

    sub_2649DEF6C(v15, v14);

LABEL_5:
    v13 += 2;
    sub_264B404B4();
    sub_264B40484();
    sub_2649DEF6C(v15, v14);
    (*v32)(v7, v2);
    if (!--v11)
    {
    }
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v33 = v20;
  *v19 = v30;
  result = sub_2649CC004(*v31, *(v31 + 8), &v33);
  *(v19 + 4) = result;
  *(v19 + 12) = 2050;
  v21 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (v21)
    {
      LODWORD(v22) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_22;
      }

      v22 = v22;
    }

    else
    {
      v22 = BYTE6(v14);
    }

    goto LABEL_19;
  }

  if (v21 != 2)
  {
    v22 = 0;
LABEL_19:
    *(v19 + 14) = v22;
    sub_2649DEF6C(v15, v14);
    _os_log_impl(&dword_2649C6000, v17, v18, "Drag %{public}s: Surrogate session is processing received drag data of size %{public}ld bytes", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);

    v2 = v28;
    goto LABEL_5;
  }

  v24 = *(v15 + 16);
  v23 = *(v15 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (!v25)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_264ACE504()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventStream;
  v12 = sub_264B41274();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v6, v1 + v11, v2);
  sub_264B41244();

  v14 = sub_264B41234();
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  (*(v3 + 32))(v17 + v15, v6, v2);
  *(v17 + v16) = v13;

  v19 = sub_264A10C20(0, 0, v10, &unk_264B51C18, v17);
  v20 = *(v1 + 24);
  *(v1 + 24) = v19;
}

uint64_t sub_264ACE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B988, &qword_264B51C20) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B990, &qword_264B51C28);
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = sub_264B41244();
  v5[16] = sub_264B41234();
  v14 = sub_264B411C4();
  v5[17] = v14;
  v5[18] = v13;

  return MEMORY[0x2822009F8](sub_264ACE900, v14, v13);
}

uint64_t sub_264ACE900()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  sub_264B412C4();
  swift_beginAccess();
  v4 = v0[15];
  v5 = sub_264B41234();
  v0[19] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_264ACE9F8;
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v9, v5, v11, v10);
}

uint64_t sub_264ACE9F8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_264ACEB3C, v5, v4);
}

uint64_t sub_264ACEB3C()
{
  v1 = v0[11];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v2 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_8:
    v13 = v0[14];
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[9];

    v17 = v0[1];

    return v17();
  }

  v3 = v0[6];
  sub_264AD0E78(v1, v0[10]);
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (!Strong)
  {
    v8 = v0[16];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    v12 = v0[10];

    sub_264AD0EDC(v12);
    (*(v10 + 8))(v9, v11);
    goto LABEL_8;
  }

  v5 = v0[15];
  v0[22] = sub_264B41234();
  v7 = sub_264B411C4();
  v0[23] = v7;
  v0[24] = v6;

  return MEMORY[0x2822009F8](sub_264ACECD0, v7, v6);
}

uint64_t sub_264ACECD0()
{
  v35 = v0;
  v1 = *(v0 + 56);
  sub_264AD0F38(*(v0 + 80), *(v0 + 72));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *(v0 + 168);
      v3 = *(v0 + 176);
      v5 = *(v0 + 72);

      if ((*(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) & 1) == 0)
      {
        v6 = *v5;
        if (qword_27FF88418 != -1)
        {
          swift_once();
        }

        v7 = *(v0 + 168);
        v8 = sub_264B40964();
        __swift_project_value_buffer(v8, qword_27FF8AEA0);

        v9 = sub_264B40944();
        v10 = sub_264B414B4();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = *(v0 + 168);
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v34 = v13;
          *v12 = 136446466;
          *(v12 + 4) = sub_2649CC004(*(v11 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v11 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v34);
          *(v12 + 12) = 1026;
          *(v12 + 14) = v6;
          _os_log_impl(&dword_2649C6000, v9, v10, "Drag %{public}s: Surrogate session did end tracking. Success: %{BOOL,public}d", v12, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v13);
          MEMORY[0x266749940](v13, -1, -1);
          MEMORY[0x266749940](v12, -1, -1);
        }

        v14 = *(v0 + 168);
        *(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_didEndTracking) = 1;
        v15 = v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking;
        v16 = *v15;
        if (*v15)
        {
          v17 = *(v15 + 8);

          v16(v18);
          sub_2649CB67C(v16);
        }
      }
    }

    else
    {
      v28 = *(v0 + 168);
      v27 = *(v0 + 176);
      v29 = *(v0 + 72);

      v30 = *v29;
      v31 = *(v29 + 8);
      sub_264ACFA34(v30, v31);
    }

    v32 = *(v0 + 136);
    v33 = *(v0 + 144);

    return MEMORY[0x2822009F8](sub_264ACF1D0, v32, v33);
  }

  else
  {
    v19 = *(v0 + 72);
    v20 = *v19;
    *(v0 + 200) = *v19;
    v21 = v19[1];
    *(v0 + 208) = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB20, &qword_264B4CEB0);
    *(v0 + 232) = *(v22 + 48);
    v23 = *(v19 + *(v22 + 64));
    *(v0 + 216) = v23;
    v24 = swift_task_alloc();
    *(v0 + 224) = v24;
    *v24 = v0;
    v24[1] = sub_264ACEFE0;
    v25 = *(v0 + 168);

    return sub_264ACF29C(v20, v21, v23);
  }
}

uint64_t sub_264ACEFE0()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_264ACF100, v4, v3);
}

uint64_t sub_264ACF100()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 72);

  sub_2649DEF6C(v4, v1);
  v7 = sub_264B40104();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_264ACF1D0, v8, v9);
}

uint64_t sub_264ACF1D0()
{
  v1 = v0[21];
  v2 = v0[10];

  sub_264AD0EDC(v2);
  v3 = v0[15];
  v4 = sub_264B41234();
  v0[19] = v4;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_264ACE9F8;
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v8, v4, v10, v9);
}

uint64_t sub_264ACF29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_264B41244();
  v4[11] = sub_264B41234();
  v6 = sub_264B411C4();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_264ACF338, v6, v5);
}

uint64_t sub_264ACF338()
{
  v42 = v0;
  if (*(*(v0 + 80) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 72);

    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v2 + 24);

      v3(v5);
      sub_2649CB67C(v3);
      v6 = *(v2 + 16);
    }

    else
    {
      v6 = 0;
    }

    v19 = *(v2 + 24);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    sub_2649CB67C(v6);
    v20 = *(v0 + 8);

    return v20();
  }

  if (qword_27FF88418 != -1)
  {
    swift_once();
    v39 = *(v0 + 80);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = sub_264B40964();
  *(v0 + 112) = __swift_project_value_buffer(v9, qword_27FF8AEA0);

  sub_2649DEF18(v7, v8);
  v10 = sub_264B40944();
  v11 = sub_264B414B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = v15;
    *v14 = 136446466;
    result = sub_2649CC004(*(v12 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v12 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v41);
    *(v14 + 4) = result;
    *(v14 + 12) = 2050;
    v17 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v18 = 0;
        goto LABEL_22;
      }

      v21 = *(*(v0 + 56) + 16);
      v22 = *(*(v0 + 56) + 24);
      v23 = __OFSUB__(v22, v21);
      v18 = v22 - v21;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = *(v0 + 70);
LABEL_22:
      v26 = *(v0 + 56);
      v27 = *(v0 + 64);
      *(v14 + 14) = v18;
      sub_2649DEF6C(v26, v27);
      _os_log_impl(&dword_2649C6000, v10, v11, "Drag %{public}s: Surrogate session sending drag data of size %{public}ld bytes", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);
      goto LABEL_23;
    }

    v24 = *(v0 + 56);
    v25 = *(v0 + 60);
    v23 = __OFSUB__(v25, v24);
    LODWORD(v18) = v25 - v24;
    if (v23)
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_22;
  }

  sub_2649DEF6C(*(v0 + 56), *(v0 + 64));
LABEL_23:

  v28 = *(v0 + 80);
  v30 = *(v0 + 56);
  v29 = *(v0 + 64);
  v32 = *(v28 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_messageSender);
  v31 = *(v28 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_messageSender + 8);
  v33 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier);
  v34 = *v33;
  *(v0 + 120) = *v33;
  v35 = v33[1];
  *(v0 + 128) = v35;
  *(v0 + 40) = &type metadata for DragAndDropEvent;
  *(v0 + 48) = &off_28765F610;
  v36 = swift_allocObject();
  *(v0 + 16) = v36;
  *(v36 + 16) = v30;
  *(v36 + 24) = v29;
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  *(v36 + 48) = 0;
  sub_2649DEF18(v30, v29);

  v40 = (v32 + *v32);
  v37 = v32[1];
  v38 = swift_task_alloc();
  *(v0 + 136) = v38;
  *v38 = v0;
  v38[1] = sub_264ACF704;

  return v40(v0 + 16);
}

uint64_t sub_264ACF704()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v8 = *v1;
  (*v1)[18] = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_264ACF820;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_264A8A624;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_264ACF820()
{
  v26 = v0;
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v1;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  if (v8)
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136446466;
    *(v12 + 4) = sub_2649CC004(v11, v10, &v25);
    *(v12 + 12) = 2114;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_2649C6000, v6, v7, "Drag %{public}s: Surrogate session failed to send drag event: %{public}@", v12, 0x16u);
    sub_2649E5608(v13);
    MEMORY[0x266749940](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[9];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 24);

    v18(v20);
    sub_2649CB67C(v18);
    v21 = *(v17 + 16);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v17 + 24);
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_2649CB67C(v21);
  v23 = v0[1];

  return v23();
}

void sub_264ACFA34(char a1, void *a2)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished;
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished))
  {
    return;
  }

  v4 = v2;
  if (a1)
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AEA0);

    v6 = sub_264B40944();
    v7 = sub_264B414B4();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2649CC004(*(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v24);
    _os_log_impl(&dword_2649C6000, v6, v7, "Drag %{public}s: Surrogate session succeeded", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    v10 = v9;
  }

  else
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FF8AEA0);

    v13 = a2;
    v6 = sub_264B40944();
    v14 = sub_264B41494();

    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v8 = 136446466;
    *(v8 + 4) = sub_2649CC004(*(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v24);
    *(v8 + 12) = 2114;
    if (a2)
    {
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v8 + 14) = v18;
    *v15 = v19;
    _os_log_impl(&dword_2649C6000, v6, v14, "Drag %{public}s: Surrogate session failed: %{public}@", v8, 0x16u);
    sub_2649E5608(v15);
    MEMORY[0x266749940](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v10 = v16;
  }

  MEMORY[0x266749940](v10, -1, -1);
  MEMORY[0x266749940](v8, -1, -1);
LABEL_15:

  *(v4 + v3) = 1;
  v20 = v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish;
  v21 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  if (v21)
  {
    v22 = *(v20 + 8);

    v21(v23);

    sub_2649CB67C(v21);
  }
}

void sub_264ACFD80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_264ACFDE0()
{
  sub_264A8A9FC();
  if (v0 <= 0x3F)
  {
    sub_264ACFE68();
    if (v1 <= 0x3F)
    {
      sub_264ACFE98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_264ACFE68()
{
  result = qword_27FF8B950;
  if (!qword_27FF8B950)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27FF8B950);
  }

  return result;
}

void sub_264ACFE98()
{
  if (!qword_27FF8B958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF8BF90, &unk_264B53450);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FF8B958);
    }
  }
}

uint64_t sub_264ACFF28(uint64_t a1, char a2)
{
  v3 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B960, &qword_264B51BE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  *v6 = a2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  sub_264B412A4();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_264AD008C(uint64_t a1, char a2, void *a3)
{
  v5 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B960, &qword_264B51BE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  *v8 = a2;
  *(v8 + 1) = a3;
  swift_storeEnumTagMultiPayload();
  v14 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  sub_264B412A4();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_264AD0208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_shieldWindowSceneContainer) + 16);
  if (v3)
  {
    v4 = v3;
    sub_264B405A4();
    v5 = sub_264B405B4();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 0, 1, v5);
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

id sub_264AD02EC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_shieldWindowSceneContainer) + 16);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264AD0378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B970, &qword_264B51C00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  v16 = *(v36 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v36);
  v19 = &v36 - v18;
  v20 = sub_264B40564();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v5 + 16) = sub_264B40554();
  *(v5 + 24) = 0;
  v23 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventStream;
  v24 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventContinuation;
  type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(v8 + 104))(v11, *MEMORY[0x277D85778], v7);
  sub_264B41284();
  (*(v8 + 8))(v11, v7);
  (*(v16 + 32))(v5 + v23, v19, v36);
  (*(v37 + 32))(v5 + v24, v15, v38);
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData) = 0;
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_didEndTracking) = 0;
  v25 = (v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking);
  *v25 = 0;
  v25[1] = 0;
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) = 0;
  v26 = (v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_opt_self() processInfo];
  [v27 systemUptime];
  v29 = v28;

  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) = v29;
  v30 = (v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier);
  v31 = v40;
  *v30 = v39;
  v30[1] = v31;
  v32 = (v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_messageSender);
  v33 = v42;
  *v32 = v41;
  v32[1] = v33;
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_shieldWindowSceneContainer) = v43;
  v34 = *(v6 + 16);
  sub_264AD0B98();

  sub_264B40534();

  sub_264ACE504();
  return v6;
}

uint64_t sub_264AD0738(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v35 = a3;
  v40 = a1;
  v41 = a2;
  v36 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B960, &qword_264B51BE8);
  v37 = *(v42 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v35 - v9;
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AEA0);
  v17 = sub_264B41484();
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v12 + 8))(v15, v11);

  v21 = sub_264B40944();

  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136446722;
    v24 = sub_2649CC004(v18, v20, &v43);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = 215;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B5DEF0, &v43);
    _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }

  type metadata accessor for GuaranteedCalledCompletion();
  v25 = swift_allocObject();
  v26 = v38;
  v27 = v39;
  *(v25 + 16) = v38;
  *(v25 + 24) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB20, &qword_264B4CEB0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 64);
  v32 = v40;
  v31 = v41;
  *v7 = v40;
  *(v7 + 1) = v31;
  v33 = sub_264B40104();
  (*(*(v33 - 8) + 16))(&v7[v29], v35, v33);
  *&v7[v30] = v25;
  swift_storeEnumTagMultiPayload();
  sub_264A8B0E0(v26);
  sub_2649DEF18(v32, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  sub_264B412A4();

  return (*(v37 + 8))(v10, v42);
}

unint64_t sub_264AD0B98()
{
  result = qword_27FF8B980;
  if (!qword_27FF8B980)
  {
    type metadata accessor for ServerDragSurrogateSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B980);
  }

  return result;
}

uint64_t sub_264AD0BF0()
{
  sub_2649DEF6C(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264AD0C30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AD0C68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
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

uint64_t sub_264AD0D4C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264ACE75C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264AD0E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264AD0EDC(uint64_t a1)
{
  v2 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264AD0F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GuaranteedCalledCompletion.__allocating_init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t GuaranteedCalledCompletion.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + 24);

    v2(v5);
    sub_2649CB67C(v2);
    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 24);
  sub_2649CB67C(v6);
  return v1;
}

uint64_t GuaranteedCalledCompletion.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + 24);

    v2(v5);
    sub_2649CB67C(v2);
    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 24);
  sub_2649CB67C(v6);

  return swift_deallocClassInstance();
}

uint64_t GuaranteedCalledCompletion.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_264AD10D0()
{
  v1 = v0;
  v3 = (v0 + 16);
  v2 = *(v0 + 16);
  if (v2)
  {
    v4 = *(v0 + 24);
    v5 = *(v1 + 24);

    v2(v6);
    sub_2649CB67C(v2);
    v7 = *(v1 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 24);
  *v3 = 0;
  v3[1] = 0;

  return sub_2649CB67C(v7);
}

uint64_t sub_264AD11BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventContinuation;
  (*(v3 + 16))(&v19 - v5, v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventContinuation, v2);
  sub_264B412B4();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask))
  {
    v10 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask);

    sub_264B41304();
  }

  sub_264A0DF98(v1 + 16);
  v11 = *(v1 + 32);

  v12 = *(v1 + 40);

  v13 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventStream;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v8((v1 + v7), v2);
  v15 = *(v1 + v9);

  v16 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_messageSender + 8);

  v17 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_shieldWindowSceneContainer);

  return v1;
}

uint64_t sub_264AD13A8()
{
  sub_264AD11BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerDragForwardingManager()
{
  result = qword_27FF8B9E0;
  if (!qword_27FF8B9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AD1454()
{
  sub_264AD35A8(319, &qword_27FF8B9F0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264AD35A8(319, &qword_27FF8B9F8, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_264AD15B0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v4 + 40);
    if (v8 >> 62)
    {
      goto LABEL_23;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x266748A70](v10, v8);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_18:
            __break(1u);
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_23:
            v9 = sub_264B41884();
            goto LABEL_4;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_18;
          }
        }

        v13 = *(v11 + 32) == a3 && *(v11 + 40) == a4;
        if (v13 || (sub_264B41AA4() & 1) != 0)
        {

          sub_264A88940(v7, a2);
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  return result;
}

void sub_264AD172C()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v2 = v0;
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AEA0);

    v4 = sub_264B40944();
    v5 = sub_264B414B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v2;
      v21 = v7;
      *v6 = 136446210;
      type metadata accessor for ServerDragForwardingManager();

      v8 = sub_264B41064();
      v10 = sub_2649CC004(v8, v9, &v21);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s: Invalidating", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v2 + v1) = 0;
    swift_beginAccess();
    v11 = *(v2 + 40);
    if (v11 >> 62)
    {
      v12 = sub_264B41884();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x266748A70](i, v11);
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        if (*(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState))
        {
          if (*(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
          {
            *(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) = 2;

            v15 = sub_264B40944();
            v16 = sub_264B414B4();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v18 = swift_slowAlloc();
              v20 = v18;
              *v17 = 136446210;
              *(v17 + 4) = sub_2649CC004(v14[4], v14[5], &v20);
              _os_log_impl(&dword_2649C6000, v15, v16, "Drag %{public}s: Canceling forwarding dragController", v17, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v18);
              MEMORY[0x266749940](v18, -1, -1);
              MEMORY[0x266749940](v17, -1, -1);
            }

            v19 = v14[10];
            sub_264B404C4();
          }
        }

        else
        {
          *(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) = 2;
        }
      }
    }
  }
}

uint64_t sub_264AD1A78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventStream;
  v12 = sub_264B41274();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v6, v1 + v11, v2);
  sub_264B41244();

  v14 = sub_264B41234();
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  (*(v3 + 32))(v17 + v15, v6, v2);
  *(v17 + v16) = v13;

  v19 = sub_264A10C20(0, 0, v10, &unk_264B51E18, v17);
  v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask) = v19;
}

uint64_t sub_264AD1CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA50, &unk_264B51E20);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = sub_264B41244();
  v5[12] = sub_264B41234();
  v10 = sub_264B411C4();
  v5[13] = v10;
  v5[14] = v9;

  return MEMORY[0x2822009F8](sub_264AD1DDC, v10, v9);
}

uint64_t sub_264AD1DDC()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  sub_264B412C4();
  swift_beginAccess();
  v4 = v0[11];
  v5 = sub_264B41234();
  v0[15] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_264AD1ED8;
  v8 = v0[10];
  v9 = v0[8];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v5, v10, v9);
}

uint64_t sub_264AD1ED8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264AD201C, v5, v4);
}

uint64_t sub_264AD201C()
{
  v1 = v0[5];
  if ((~v1 & 0xF000000000000007) == 0)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_7:
    v3 = v0[12];
    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  v2 = v0[7];
  if (!swift_weakLoadStrong())
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_264AD442C(v1);
    goto LABEL_7;
  }

  if (v1 < 0)
  {
    sub_264AD2A4C(v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_264AD21B4(v1);
  }

  sub_264AD442C(v1);
  v7 = v0[11];
  v8 = sub_264B41234();
  v0[15] = v8;
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_264AD1ED8;
  v11 = v0[10];
  v12 = v0[8];
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v8, v13, v12);
}

void sub_264AD21B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA28, &unk_264B51DF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v64 - v18;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v74 = v17;
    v75 = v16;
    if (sub_264AD33F0())
    {
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v20 = sub_264B40964();
      __swift_project_value_buffer(v20, qword_27FF8AEA0);

      v75 = sub_264B40944();
      v21 = sub_264B41494();

      if (os_log_type_enabled(v75, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v76 = v23;
        *v22 = 136446466;
        v78 = v2;
        type metadata accessor for ServerDragForwardingManager();

        v24 = sub_264B41064();
        v26 = sub_2649CC004(v24, v25, &v76);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        v78 = a1;
        sub_264B40474();

        v27 = sub_264B41064();
        v29 = sub_2649CC004(v27, v28, &v76);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_2649C6000, v75, v21, "%{public}s: Not forwarding drag %{public}s because a surrogate session is active", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v23, -1, -1);
        MEMORY[0x266749940](v22, -1, -1);
      }

      else
      {
        v62 = v75;
      }
    }

    else
    {
      v70 = v10;
      v71 = v9;
      v69 = v4;
      v76 = 0x4344726576726553;
      v77 = 0xE90000000000003DLL;
      v30 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragCounter;
      v78 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragCounter);
      v31 = sub_264B41A64();
      MEMORY[0x266748390](v31);

      v33 = v76;
      v32 = v77;
      ++*(v1 + v30);
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v72 = a1;
      v34 = sub_264B40964();
      __swift_project_value_buffer(v34, qword_27FF8AEA0);

      v35 = sub_264B40944();
      v36 = sub_264B414B4();
      v37 = v32;
      v38 = v36;
      v73 = v37;

      v39 = os_log_type_enabled(v35, v38);
      v68 = v33;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v76 = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_2649CC004(v33, v73, &v76);
        _os_log_impl(&dword_2649C6000, v35, v38, "Drag %{public}s: Adding forwarding session", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x266749940](v41, -1, -1);
        MEMORY[0x266749940](v40, -1, -1);
      }

      v42 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_messageSender);
      v65 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_messageSender + 8);
      v66 = v42;
      v67 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_shieldWindowSceneContainer);
      v43 = type metadata accessor for ServerDragForwardingSession(0);
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      v46 = swift_allocObject();
      v47 = sub_264B40564();
      *(v46 + 2) = 0;
      *(v46 + 3) = 0;
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      *(v46 + 10) = sub_264B40554();
      v50 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventStream;
      v51 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation;
      type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
      v52 = v69;
      (*(v5 + 104))(v8, *MEMORY[0x277D85778], v69);
      sub_264B41284();
      (*(v5 + 8))(v8, v52);
      (*(v74 + 32))(&v46[v50], v19, v75);
      (*(v70 + 32))(&v46[v51], v13, v71);
      *&v46[OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask] = 0;
      v46[OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState] = 0;
      v46[OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_hasSentFirstMessage] = 0;
      v53 = v65;
      *(v46 + 8) = v66;
      *(v46 + 9) = v53;
      v54 = v67;
      v56 = v72;
      v55 = v73;
      *(v46 + 4) = v68;
      *(v46 + 5) = v55;
      *(v46 + 6) = v56;
      *(v46 + 7) = v54;
      v57 = *(v46 + 10);
      sub_264AD4194(&unk_27FF8BA40, type metadata accessor for ServerDragForwardingSession);

      sub_264B40534();

      sub_264A88BD8();
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = *(v46 + 2);
      v60 = *(v46 + 3);
      *(v46 + 2) = sub_264AD4214;
      *(v46 + 3) = v58;

      sub_2649CB67C(v59);

      swift_beginAccess();

      MEMORY[0x266748430](v61);
      if (*((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_264B41174();
      }

      sub_264B41194();
      swift_endAccess();
      sub_264A884E8();
    }
  }
}

uint64_t sub_264AD29AC()
{
  sub_264B41244();
  sub_264B41704();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264AD2CCC();
  }

  return result;
}

uint64_t sub_264AD2A4C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v1 + 40);
    if (v3 >> 62)
    {
      goto LABEL_25;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x266748A70](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_25:
            v4 = sub_264B41884();
            goto LABEL_4;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        if (v6[6] == v2)
        {

          v9 = v6[4];
          v8 = v6[5];

          goto LABEL_17;
        }

        ++v5;
      }

      while (v7 != v4);
    }

    v8 = 0x8000000264B60060;
    v9 = 0xD000000000000012;
LABEL_17:
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FF8AEA0);

    v11 = sub_264B40944();
    v12 = sub_264B414B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      v15 = sub_2649CC004(v9, v8, &v16);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_2649C6000, v11, v12, "Drag %{public}s: Underlying drag session proxy did end", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    else
    {
    }
  }

  return result;
}

void sub_264AD2CCC()
{
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) != 1)
  {
    return;
  }

  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_81:
    v5 = sub_264B41884();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = &qword_27FF8A000;
  while (v5 != v6)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x266748A70](v6, v2);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v8 = *(v2 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 2)
    {
      v43 = v1;
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v10 = sub_264B40964();
      v11 = __swift_project_value_buffer(v10, qword_27FF8AEA0);

      v4 = sub_264B40944();
      v12 = sub_264B414B4();

      if (os_log_type_enabled(v4, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v45 = v14;
        *v13 = 136446210;
        v15 = v2;
        v17 = *(v8 + 32);
        v16 = *(v8 + 40);

        v18 = sub_2649CC004(v17, v16, &v45);

        *(v13 + 4) = v18;
        v2 = v15;
        _os_log_impl(&dword_2649C6000, v4, v12, "Drag %{public}s: Removing forwarding session", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        v19 = v14;
        v7 = &qword_27FF8A000;
        MEMORY[0x266749940](v19, -1, -1);
        MEMORY[0x266749940](v13, -1, -1);
      }

      v20 = v6 + 1;
      v1 = v43;
      if (!__OFADD__(v6, 1))
      {
        while (1)
        {
          if (v2 >> 62)
          {
            if (v20 == sub_264B41884())
            {
              goto LABEL_60;
            }
          }

          else if (v20 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v3 = v2 & 0xC000000000000001;
          if ((v2 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x266748A70](v20, v2);
          }

          else
          {
            if ((v20 & 0x8000000000000000) != 0)
            {
              goto LABEL_71;
            }

            if (v20 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_72;
            }

            v21 = *(v2 + 8 * v20 + 32);
          }

          if (*(v21 + v7[344]) == 2)
          {
            v44 = v2;

            v22 = sub_264B40944();
            v23 = sub_264B414B4();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v45 = v25;
              *v24 = 136446210;
              v26 = *(v21 + 32);
              v4 = *(v21 + 40);

              v3 = sub_2649CC004(v26, v4, &v45);

              *(v24 + 4) = v3;
              _os_log_impl(&dword_2649C6000, v22, v23, "Drag %{public}s: Removing forwarding session", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v25);
              v27 = v25;
              v1 = v43;
              MEMORY[0x266749940](v27, -1, -1);
              MEMORY[0x266749940](v24, -1, -1);
            }

            v2 = v44;
            v7 = &qword_27FF8A000;
          }

          else
          {

            if (v6 != v20)
            {
              if (v3)
              {
                v28 = MEMORY[0x266748A70](v6, v2);
                v29 = MEMORY[0x266748A70](v20, v2);
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_78;
                }

                v30 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v30)
                {
                  goto LABEL_79;
                }

                if (v20 >= v30)
                {
                  goto LABEL_80;
                }

                v28 = *(v2 + 32 + 8 * v6);
                v29 = *(v2 + 32 + 8 * v20);
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v1 + 40) = v2;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_264AD39C0(v2);
                *(v1 + 40) = v2;
              }

              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_75;
              }

              v3 = v2 & 0xFFFFFFFFFFFFFF8;
              if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_76;
              }

              v32 = v3 + 8 * v6;
              v33 = *(v32 + 32);
              *(v32 + 32) = v29;

              *(v1 + 40) = v2;
              if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_264AD39C0(v2);
                *(v1 + 40) = v2;
                v3 = v2 & 0xFFFFFFFFFFFFFF8;
                v7 = &qword_27FF8A000;
                if ((v20 & 0x8000000000000000) != 0)
                {
LABEL_58:
                  __break(1u);
LABEL_59:
                  v6 = sub_264B41884();
                  goto LABEL_60;
                }
              }

              else
              {
                v7 = &qword_27FF8A000;
                if ((v20 & 0x8000000000000000) != 0)
                {
                  goto LABEL_58;
                }
              }

              if (v20 >= *(v3 + 16))
              {
                goto LABEL_77;
              }

              v34 = v3 + 8 * v20;
              v35 = *(v34 + 32);
              *(v34 + 32) = v28;

              *(v1 + 40) = v2;
            }

            v9 = __OFADD__(v6++, 1);
            if (v9)
            {
              goto LABEL_74;
            }
          }

          v9 = __OFADD__(v20++, 1);
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      __break(1u);
LABEL_86:
      v42 = sub_264B41884();
      goto LABEL_66;
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_70;
    }
  }

  if (v4)
  {
    goto LABEL_59;
  }

  v6 = *(v3 + 16);
LABEL_60:
  if (!(v2 >> 62))
  {
    v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36 >= v6)
    {
      goto LABEL_62;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v36 = sub_264B41884();
  if (v36 < v6)
  {
    goto LABEL_83;
  }

LABEL_62:
  sub_264AD40BC(v6, v36);
  swift_endAccess();
  if (qword_27FF88418 != -1)
  {
LABEL_84:
    swift_once();
  }

  v37 = sub_264B40964();
  __swift_project_value_buffer(v37, qword_27FF8AEA0);
  swift_retain_n();
  v11 = sub_264B40944();
  LOBYTE(v6) = sub_264B414B4();
  if (os_log_type_enabled(v11, v6))
  {
    v4 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45 = v1;
    v46[0] = v20;
    *v4 = 136446466;
    type metadata accessor for ServerDragForwardingManager();

    v38 = sub_264B41064();
    v40 = sub_2649CC004(v38, v39, v46);

    *(v4 + 4) = v40;
    *(v4 + 12) = 2050;
    v41 = *(v1 + 40);
    if (v41 >> 62)
    {
      goto LABEL_86;
    }

    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:

    *(v4 + 14) = v42;

    _os_log_impl(&dword_2649C6000, v11, v6, "%{public}s: %{public}ld forwarding sessions still exist", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);

    return;
  }
}

BOOL sub_264AD33F0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);
    swift_beginAccess();
    v4 = *(*(v3 + 40) + 16);
    swift_unknownObjectRelease();
    return v4 != 0;
  }

  else
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AEA0);

    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v14[3] = v1;
      type metadata accessor for ServerDragForwardingManager();

      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v7, v8, "%{public}s: Can't check if surrogate session is active because the delegate is nil", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    return 0;
  }
}

void sub_264AD35A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ServerDragForwardingManager.DragObserverEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264AD3608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264AD3664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_264AD36E8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA20, &qword_264B51DE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v9 - v6;
  v9[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  sub_264B412A4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_264AD37F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA20, &qword_264B51DE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v9 - v6;
  v9[1] = a2 | 0x8000000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  sub_264B412A4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_264AD3908(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_264B41884();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_264B41784();
  *v1 = result;
  return result;
}

uint64_t sub_264AD39C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_264B41884();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_264B41784();
}

void *sub_264AD3A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA00, &qword_264B51DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v31);
  v13 = &v29 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v30);
  v17 = &v29 - v16;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v18 = sub_264B40594();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_264B40574();
  v22 = MEMORY[0x277D84F90];
  v3[4] = v21;
  v3[5] = v22;
  v23 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventStream;
  v24 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventContinuation;
  (*(v6 + 104))(v9, *MEMORY[0x277D85778], v5);
  sub_264B41284();
  (*(v6 + 8))(v9, v5);
  (*(v14 + 32))(v4 + v23, v17, v30);
  (*(v10 + 32))(v4 + v24, v13, v31);
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask) = 0;
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragCounter) = 1;
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) = 1;
  v25 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_messageSender);
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_shieldWindowSceneContainer) = v34;
  v27 = v4[4];
  sub_264AD4194(&qword_27FF8BA18, type metadata accessor for ServerDragForwardingManager);

  sub_264B40584();

  sub_264AD1A78();
  return v4;
}

uint64_t sub_264AD3DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_264B41884();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_264B41884();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_264AD3ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_264B41884();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_264B41884();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_264AD3908(result);
    return sub_264AD3DC0(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_264AD3FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ServerDragForwardingSession(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_264B41884();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_264B41884();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_264AD40BC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_264B41884();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_264B41884();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_264AD3908(result);

  return sub_264AD3FBC(v4, v2, 0);
}

uint64_t sub_264AD4194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264AD41DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AD421C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
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

uint64_t sub_264AD4300(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264AD1CD8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264AD442C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_264A0E7A0();
  }

  return result;
}

uint64_t sub_264AD4440()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

uint64_t sub_264AD44B4()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

uint64_t sub_264AD44F8@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_264AD52E0(*a1);
  *a2 = result;
  return result;
}

void sub_264AD4530(unsigned __int8 *a1, unint64_t a2)
{
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = sub_264A24308(MEMORY[0x277D84F90]);
  }

  v11 = *(v10 + 16);

  if (v11 && (v12 = sub_264A20ACC(0x6E6F73616572, 0xE600000000000000), (v13 & 1) != 0))
  {
    sub_2649C964C(*(v10 + 56) + 32 * v12, v79);

    v14 = swift_dynamicCast();
    v15 = v14 == 0;
    if (v14)
    {
      v16 = v77;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v78;
    }
  }

  else
  {

    v16 = 0;
    v17 = 0;
  }

  v75 = sub_264AD4FB8(v16, v17);

  v76 = sub_264A24664(MEMORY[0x277D84F90]);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v18 = sub_264B40964();
  v19 = __swift_project_value_buffer(v18, qword_27FF8AE40);
  v74 = v9;
  LOBYTE(v79[0]) = v9;
  v20 = TelemetryEvent.rawValue.getter();
  v22 = v21;
  v23 = sub_264B41484();
  sub_264B3FF94();
  v24 = sub_264B3FFA4();
  v26 = v25;
  (*(v5 + 8))(v8, v4);
  v72 = v19;
  v27 = sub_264B40944();
  if (os_log_type_enabled(v27, v23))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v79[0] = v29;
    *v28 = 136446978;
    v30 = sub_2649CC004(v24, v26, v79);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2050;
    *(v28 + 14) = 66;
    *(v28 + 22) = 2082;
    *(v28 + 24) = sub_2649CC004(0xD00000000000001DLL, 0x8000000264B60180, v79);
    *(v28 + 32) = 2082;
    *(v28 + 34) = sub_2649CC004(v20, v22, v79);
    _os_log_impl(&dword_2649C6000, v27, v23, "%{public}s:%{public}ld %{public}s %{public}s", v28, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v29, -1, -1);
    MEMORY[0x266749940](v28, -1, -1);
  }

  else
  {
  }

  v31 = v74;
  v32 = v75;
  if (v74 <= 7)
  {
    if (!v74)
    {

      *(v73 + 64) = v32;
      return;
    }

    if (v74 == 1)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v34 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v34;
      sub_264A22DF0(v33, 0x746E657665, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      v36 = v79[0];
      v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v36;
      sub_264A22DF0(v37, 0x6E6F73616572, 0xE600000000000000, v38);
      v39 = v79[0];
      v40 = v73;
      if ((*(v73 + 65) & 1) == 0)
      {

        return;
      }

      goto LABEL_26;
    }

LABEL_27:

    v47 = sub_264B40944();
    v48 = sub_264B41494();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136315138;
      LOBYTE(v77) = v31;
      v51 = TelemetryEvent.rawValue.getter();
      v53 = sub_2649CC004(v51, v52, v79);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_2649C6000, v47, v48, "PLC %s:unknown telemetry event", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      v54 = v50;
LABEL_38:
      MEMORY[0x266749940](v54, -1, -1);
      MEMORY[0x266749940](v49, -1, -1);
    }

LABEL_39:

    return;
  }

  if (v74 == 8)
  {
    v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v56 = v76;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v56;
    sub_264A22DF0(v55, 0x746E657665, 0xE500000000000000, v57);
    v58 = v79[0];
    v40 = v73;
    if (!v32)
    {
      v32 = *(v73 + 64);
    }

    v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v58;
    sub_264A22DF0(v59, 0x6E6F73616572, 0xE600000000000000, v60);
    v39 = v79[0];
    if (*(v40 + 65) != 1)
    {
      *(v40 + 65) = 1;
      goto LABEL_41;
    }

    v47 = sub_264B40944();
    v61 = sub_264B41494();
    if (!os_log_type_enabled(v47, v61))
    {
      goto LABEL_39;
    }

    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79[0] = v62;
    *v49 = 136315138;
    LOBYTE(v77) = 8;
    v63 = TelemetryEvent.rawValue.getter();
    v65 = sub_2649CC004(v63, v64, v79);

    *(v49 + 4) = v65;
    v66 = "%s:extra sessionStart event, not logged";
LABEL_37:
    _os_log_impl(&dword_2649C6000, v47, v61, v66, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v54 = v62;
    goto LABEL_38;
  }

  if (v74 != 10)
  {
    goto LABEL_27;
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v42 = v76;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v79[0] = v42;
  sub_264A22DF0(v41, 0x746E657665, 0xE500000000000000, v43);
  v44 = v79[0];
  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v79[0] = v44;
  sub_264A22DF0(v45, 0x6E6F73616572, 0xE600000000000000, v46);
  v39 = v79[0];
  v40 = v73;
  if ((*(v73 + 65) & 1) == 0)
  {

    v47 = sub_264B40944();
    v61 = sub_264B41494();
    if (!os_log_type_enabled(v47, v61))
    {
      goto LABEL_39;
    }

    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79[0] = v62;
    *v49 = 136315138;
    LOBYTE(v77) = 10;
    v67 = TelemetryEvent.rawValue.getter();
    v69 = sub_2649CC004(v67, v68, v79);

    *(v49 + 4) = v69;
    v66 = "%s:extra sessionEnd event, not logged";
    goto LABEL_37;
  }

LABEL_26:
  *(v40 + 65) = 0;
LABEL_41:
  v70 = *(v40 + 48);
  v71 = *(v40 + 56);
  __swift_project_boxed_opaque_existential_1((v40 + 24), v70);
  (*(v71 + 8))(0, 0, v39, v70, v71);
}

uint64_t sub_264AD4D7C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for StartStopReasons(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StartStopReasons(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264AD4F34()
{
  result = qword_27FF8BA70;
  if (!qword_27FF8BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BA70);
  }

  return result;
}

uint64_t sub_264AD4FB8(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AE40);
    v6 = sub_264B40944();
    v7 = sub_264B41474();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "PowerlogConsumer: missing reason in event", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    return 0;
  }

  if (a1 == 0x7453726577656976 && a2 == 0xED00006465747261 || (sub_264B41AA4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x7075727265746E69 && a2 == 0xEB00000000646574 || (sub_264B41AA4() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0xD000000000000010 && 0x8000000264B5FBE0 == a2 || (sub_264B41AA4() & 1) != 0)
  {
    return 4;
  }

  if ((a1 != 0xD000000000000015 || 0x8000000264B58990 != a2) && (sub_264B41AA4() & 1) == 0)
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE40);

    v10 = sub_264B40944();
    v11 = sub_264B41494();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2649CC004(a1, a2, &v14);
      _os_log_impl(&dword_2649C6000, v10, v11, "PowerlogConsumer: can't convert %s to reasonCode", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    return 0;
  }

  return 3;
}

uint64_t sub_264AD52E0(uint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t AngelClient.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AngelClient.init()();
  return v3;
}

void *AngelClient.init()()
{
  v1 = v0;
  v59 = *v0;
  v60 = sub_264B40104();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v60);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionIdentifier;
  sub_264B400F4();
  v7 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification);
  sub_264A2DEA0((v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification));
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_isActivated) = 0;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy) = 0;
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  v12 = sub_264B41014();

  v13 = sub_264B41014();

  v14 = [objc_opt_self() endpointForMachName:v12 service:v13 instance:0];

  v15 = &qword_27FF8B000;
  v58 = v6;
  if (!v14)
  {
    goto LABEL_7;
  }

  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionEndpoint) = v14;
  v16 = v1 + v6;
  v17 = v60;
  (*(v2 + 16))(v5, v16, v60);
  v57 = v14;
  v18 = v14;
  sub_264B400A4();
  v54[0] = *(v2 + 8);
  v54[1] = v2 + 8;
  (v54[0])(v5, v17);
  v19 = sub_264B41014();

  v20 = v7[6];
  v21 = v7[7];
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_264AD71BC;
  *(v23 + 24) = v22;
  *&v64 = sub_264A556AC;
  *(&v64 + 1) = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v63 = sub_264AD75DC;
  *(&v63 + 1) = &block_descriptor_14;
  v24 = _Block_copy(&aBlock);
  v25 = objc_opt_self();

  v14 = v19;

  v56 = v18;
  v15 = [v25 connectionWithEndpoint:v18 clientContextBuilder:v24];
  _Block_release(v24);

  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
    goto LABEL_18;
  }

  v26 = v7;
  v55 = v14;
  v14 = v57;
  if (v15)
  {
    v61 = &unk_28767DD38;
    v27 = swift_dynamicCastObjCProtocolConditional();
    if (v27)
    {
      v28 = v27;
      *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceConnection) = v27;
      swift_unownedRetainStrong();
      v29 = v15;
      swift_unownedRetain();

      v7 = swift_allocObject();
      v7[2] = v1;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_264AD7288;
      *(v30 + 24) = v7;
      *&v64 = sub_264AD75E0;
      *(&v64 + 1) = v30;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v63 = sub_264AD75DC;
      *(&v63 + 1) = &block_descriptor_12_0;
      v31 = _Block_copy(&aBlock);

      [v28 configureConnection_];

      _Block_release(v31);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      v2 = v54[2];
      if ((v28 & 1) == 0)
      {
        return v1;
      }

      __break(1u);
LABEL_7:
      v18 = v2;
      if (qword_27FF88408 == -1)
      {
LABEL_8:
        v32 = sub_264B40964();
        __swift_project_value_buffer(v32, qword_27FF8AE70);

        v33 = sub_264B40944();
        v34 = sub_264B41494();

        v26 = v7;
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v57 = v14;
          v37 = v36;
          *&aBlock = v36;
          *v35 = 136446466;
          v38 = *v7;
          v39 = v7[1];
          v40 = v26[1];

          v41 = sub_2649CC004(v38, v39, &aBlock);

          *(v35 + 4) = v41;
          *(v35 + 12) = 2082;
          v42 = v26[2];
          v43 = v26[3];

          v44 = sub_2649CC004(v42, v43, &aBlock);

          *(v35 + 14) = v44;
          v15 = &qword_27FF8B000;
          _os_log_impl(&dword_2649C6000, v33, v34, "Failed to lookup endpoint with machName=%{public}s service=%{public}s", v35, 0x16u);
          swift_arrayDestroy();
          v45 = v37;
          v14 = v57;
          MEMORY[0x266749940](v45, -1, -1);
          MEMORY[0x266749940](v35, -1, -1);
        }

        sub_264AD5B0C();
        swift_allocError();
        *v46 = 0;
        swift_willThrow();
        (*(v18 + 1))(v1 + v58, v60);
        goto LABEL_13;
      }

LABEL_18:
      swift_once();
      goto LABEL_8;
    }
  }

  sub_264AD5B0C();
  swift_allocError();
  *v47 = 1;
  swift_willThrow();

  v15 = &qword_27FF8B000;
  (v54[0])(v1 + v58, v60);
LABEL_13:
  v48 = *(v26 + 1);
  aBlock = *v26;
  v63 = v48;
  v49 = *(v26 + 3);
  v64 = *(v26 + 2);
  v65 = v49;
  sub_264AD5B60(&aBlock);
  if (v14)
  {
  }

  v50 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy);
  swift_unknownObjectRelease();
  v51 = *(*v1 + 48);
  v52 = *(*v1 + 52);
  swift_deallocPartialClassInstance();
  return v1;
}

unint64_t sub_264AD5B0C()
{
  result = qword_27FF8BAA0;
  if (!qword_27FF8BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BAA0);
  }

  return result;
}

void sub_264AD5BB8(void *a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v4 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 40);

  [a1 setInterface_];

  swift_unownedRetainStrong();
  v5 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 32);

  [a1 setServiceQuality_];

  swift_unownedRetainStrong();
  v12 = sub_264AD7468;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2649F5890;
  v11 = &block_descriptor_33;
  v6 = _Block_copy(&v8);

  [a1 setInvalidationHandler_];
  _Block_release(v6);
  swift_unownedRetainStrong();
  v12 = sub_264AD7488;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2649F5890;
  v11 = &block_descriptor_36;
  v7 = _Block_copy(&v8);

  [a1 setInterruptionHandler_];
  _Block_release(v7);
}

uint64_t AngelClient.ping()()
{
  v1[20] = v0;
  sub_264B41244();
  v1[21] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_264AD5E94, v3, v2);
}

uint64_t sub_264AD5E94()
{
  v1 = v0[20];
  v2 = sub_264AD61F0();
  v0[24] = v2;
  v3 = v2;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Sending ping to Angel", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264AD60C0;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB18, &qword_264B51F78);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264AD6500;
  v0[13] = &block_descriptor_15;
  v0[14] = v8;
  [v3 pingWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264AD60C0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_264AD75D8;
  }

  else
  {
    v6 = sub_264AD75E4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

id sub_264AD61F0()
{
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_isActivated) != 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy;
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy);
  if (v2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy);
    swift_unknownObjectRetain();
    return v2;
  }

  v6 = sub_264B41014();
  v7 = sub_264B41014();
  v8 = [objc_opt_self() attributeWithDomain:v6 name:v7];

  v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_264B44CE0;
  *(v10 + 32) = v8;
  sub_264A192D0();
  v0 = v8;
  v11 = sub_264B41144();

  v2 = [v9 remoteTargetWithLaunchingAssertionAttributes_];

  if (v2)
  {
    sub_264B41664();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (!*(&v21 + 1))
  {
    sub_2649D3A14(v22);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB68, qword_264B52100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_264AD5B0C();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    return v2;
  }

  v3 = v1;
  v2 = v19;
  if (qword_27FF88408 != -1)
  {
LABEL_17:
    swift_once();
  }

  v12 = sub_264B40964();
  __swift_project_value_buffer(v12, qword_27FF8AE70);
  v13 = sub_264B40944();
  v14 = sub_264B41484();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2649C6000, v13, v14, "Created launching proxy", v15, 2u);
    MEMORY[0x266749940](v15, -1, -1);
  }

  v16 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_264AD6500(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_264B41044();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t AngelClient.stopSession()()
{
  v1[18] = v0;
  sub_264B41244();
  v1[19] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_264AD666C, v3, v2);
}

uint64_t sub_264AD666C()
{
  v1 = v0[18];
  v2 = sub_264AD61F0();
  v0[22] = v2;
  v3 = v2;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Stopping session on Angel", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v0[2] = v0;
  v0[3] = sub_264AD6890;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2649F4D64;
  v0[13] = &block_descriptor_19_0;
  v0[14] = v8;
  [v3 stopCommandLineSessionWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264AD6890()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_264AD6A30;
  }

  else
  {
    v6 = sub_264AD69C0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_264AD69C0()
{
  v1 = v0[22];
  v2 = v0[19];

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_264AD6A30()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];

  swift_willThrow();
  swift_unknownObjectRelease();
  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

uint64_t AngelClient.currentSessionState()()
{
  v1[20] = v0;
  sub_264B41244();
  v1[21] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_264AD6B44, v3, v2);
}

uint64_t sub_264AD6B44()
{
  v1 = v0[20];
  v2 = sub_264AD61F0();
  v0[24] = v2;
  v3 = v2;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Getting current session state from Angel", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264AD6D70;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB18, &qword_264B51F78);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264AD6500;
  v0[13] = &block_descriptor_23;
  v0[14] = v8;
  [v3 currentCommandLineSessionStateWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264AD6D70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_264AD6F14;
  }

  else
  {
    v6 = sub_264AD6EA0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_264AD6EA0()
{
  v1 = v0[24];
  v2 = v0[21];

  swift_unknownObjectRelease();
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_264AD6F14()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];

  swift_willThrow();
  swift_unknownObjectRelease();
  v4 = v0[25];
  v5 = v0[1];

  return v5();
}

uint64_t AngelClient.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 8);
  v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 24);
  v5 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 32);
  v6 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 40);
  v7 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 56);

  v8 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AngelClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 8);
  v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 24);
  v5 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 32);
  v6 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 40);
  v7 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 56);

  v8 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy);
  swift_unknownObjectRelease();
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264AD717C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_264AD71BC(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = sub_264B41014();
  [a1 encodeObject:v4 forKey:v6];
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_264AD7250()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for AngelClient()
{
  result = qword_27FF8BB30;
  if (!qword_27FF8BB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AD72FC()
{
  result = sub_264B40104();
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

unint64_t sub_264AD7414()
{
  result = qword_27FF8BB40;
  if (!qword_27FF8BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BB40);
  }

  return result;
}

uint64_t sub_264AD74A8(const char *a1)
{
  v3 = v1;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, a1, v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v8 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy);
  *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy) = 0;

  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.startAnnotationService()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.stopAnnotationService()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.sendTapEvent(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a3 + 24);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2649E0EE4;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;

  return v17(a1, a2, a3, v14, v15);
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.sendDragEvent(_:point:telemetryEventID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = *(a5 + 32);
  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2649E0EE4;
  v18.n128_f64[0] = a6;
  v19.n128_f64[0] = a7;

  return v21(a1, a2, a3, a4, a5, v18, v19);
}

uint64_t LocalScreenActivityType.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264AD7B3C()
{
  result = qword_27FF8BB70;
  if (!qword_27FF8BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BB70);
  }

  return result;
}

uint64_t DemoModeRemoteAuthenticationPrimitives.__allocating_init(authenticationResponseDelay:)(double a1)
{
  v2 = swift_allocObject();
  DemoModeRemoteAuthenticationPrimitives.init(authenticationResponseDelay:)(a1);
  return v2;
}

uint64_t DemoModeRemoteAuthenticationPrimitives.init(authenticationResponseDelay:)(double a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);
  v4 = sub_264B40944();
  v5 = sub_264B41484();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2649C6000, v4, v5, "Demo mode: all remote authentication operations will succeed for demo purposes", v6, 2u);
    MEMORY[0x266749940](v6, -1, -1);
  }

  return v2;
}

uint64_t sub_264AD7D44()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264AD7E18;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264AD7E18()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_264AD8C50;
  }

  else
  {
    v3 = sub_264AD8C44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264AD7F4C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264AD8020;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264AD8020()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_264AD814C;
  }

  else
  {
    v3 = sub_264AD8134;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264AD8184()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264AD7E18;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264AD8258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v36 = a1;
  v37 = a3;
  v35 = a2;
  v41 = sub_264B40EB4();
  v44 = *(v41 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264B40EE4();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = sub_264B40F04();
  v34 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  sub_2649CB2F0();
  v33 = sub_264B41554();
  sub_264B40EF4();
  v24 = *(v35 + 16);
  sub_264B40F24();
  v25 = *(v17 + 8);
  v25(v21, v16);
  (*(v12 + 16))(v15, v36, v11);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = swift_allocObject();
  (*(v12 + 32))(v27 + v26, v15, v11);
  aBlock[4] = v38;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = v39;
  v28 = _Block_copy(aBlock);
  sub_264B40EC4();
  v45 = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264AD8AC8();
  v30 = v40;
  v29 = v41;
  sub_264B41684();
  v31 = v33;
  MEMORY[0x266748800](v23, v10, v30, v28);
  _Block_release(v28);

  (*(v44 + 8))(v30, v29);
  (*(v42 + 8))(v10, v43);
  v25(v23, v34);
}

uint64_t sub_264AD86D8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264AD7E18;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264AD87D0()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264AD7E18;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264AD88C8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264AD7E18;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264AD8AC8()
{
  result = qword_27FF892D0;
  if (!qword_27FF892D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88A78, &qword_264B473A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF892D0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264AD8BC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_264B411E4();
}

uint64_t sub_264AD8CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_264AD8D28(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 4 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264AD8DA8(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 56) & 1 | (a2 << 62);
    *(result + 8) &= 3uLL;
    *(result + 56) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x8000000000000000;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0;
  }

  return result;
}

uint64_t sub_264AD8E08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBC8, &qword_264B524C8);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v27 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBD0, &qword_264B524D0);
  v36 = *(v37 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v27 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBD8, &qword_264B524D8);
  v34 = *(v35 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v27 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBE0, &qword_264B524E0);
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v27 - v14;
  v16 = *v1;
  v33 = v1[1];
  v41 = v16;
  v17 = *(v1 + 5);
  v30 = *(v1 + 4);
  v29 = v17;
  v18 = *(v1 + 7);
  v28 = *(v1 + 6);
  v19 = v1[4];
  v31 = v1[5];
  v32 = v19;
  v27 = *(v1 + 12);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AD9C60();
  sub_264B41BD4();
  if (!(v18 >> 62))
  {
    LOBYTE(v43) = 1;
    sub_264AD9D5C();
    v22 = v42;
    sub_264B419B4();
    v43 = v41;
    v44 = v33;
    v45 = v30;
    v46 = v29;
    v47 = v28;
    v48 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v49 = v32;
    v50 = v31;
    v51 = v27;
    sub_264AD9EAC();
    v24 = v37;
    sub_264B41A24();
    (*(v36 + 8))(v8, v24);
    return (*(v12 + 8))(v15, v22);
  }

  if (v18 >> 62 == 1)
  {
    LOBYTE(v43) = 2;
    sub_264AD9CB4();
    v21 = v38;
    v22 = v42;
    sub_264B419B4();
    LOBYTE(v43) = v41;
    sub_264AD9E58();
    v23 = v40;
    sub_264B41A24();
    (*(v39 + 8))(v21, v23);
    return (*(v12 + 8))(v15, v22);
  }

  LOBYTE(v43) = 0;
  sub_264AD9E04();
  v26 = v42;
  sub_264B419B4();
  (*(v34 + 8))(v11, v35);
  return (*(v12 + 8))(v15, v26);
}

uint64_t sub_264AD92DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB78, &qword_264B524A0);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v55 = &v48 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB80, &qword_264B524A8);
  v52 = *(v51 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB88, &qword_264B524B0);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB90, &unk_264B524B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_264AD9C60();
  v19 = v57;
  sub_264B41BC4();
  if (!v19)
  {
    v20 = v54;
    v49 = 0;
    v57 = v13;
    v21 = v56;
    v22 = sub_264B419A4();
    v23 = (2 * *(v22 + 16)) | 1;
    v67 = v22;
    v68 = v22 + 32;
    v69 = 0;
    v70 = v23;
    v24 = sub_2649E0EDC();
    if (v24 == 3 || v69 != v70 >> 1)
    {
      v38 = sub_264B417A4();
      swift_allocError();
      v39 = v16;
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v41 = &type metadata for ClientStatusEvent;
      sub_264B41904();
      sub_264B41794();
      (*(*(v38 - 8) + 104))(v41, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v57 + 8))(v39, v12);
    }

    else
    {
      if (v24)
      {
        if (v24 != 1)
        {
          LOBYTE(v58) = 2;
          sub_264AD9CB4();
          v45 = v49;
          sub_264B418F4();
          v46 = v57;
          if (!v45)
          {
            v37 = v21;
            sub_264AD9D08();
            v47 = v50;
            sub_264B41984();
            (*(v53 + 8))(0, v47);
            (*(v46 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v35 = 0;
            v28 = v58;
            v36 = 0x4000000000000000;
            goto LABEL_18;
          }

          (*(v57 + 8))(v16, v12);
          goto LABEL_9;
        }

        LOBYTE(v58) = 1;
        sub_264AD9D5C();
        v25 = v49;
        sub_264B418F4();
        v26 = v57;
        if (!v25)
        {
          sub_264AD9DB0();
          v27 = v51;
          sub_264B41984();
          (*(v52 + 8))(v7, v27);
          (*(v26 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v28 = v58;
          v29 = v60;
          v30 = v61;
          v31 = v62;
          v32 = v64;
          v33 = v65;
          v34 = v66;
          v35 = v59 & 3;
          v36 = v63 & 1;
          v37 = v21;
LABEL_18:
          *v37 = v28;
          *(v37 + 8) = v35;
          *(v37 + 16) = v29;
          *(v37 + 32) = v30;
          *(v37 + 48) = v31;
          *(v37 + 56) = v36;
          *(v37 + 64) = v32;
          *(v37 + 80) = v33;
          *(v37 + 96) = v34;
          return __swift_destroy_boxed_opaque_existential_0(v71);
        }
      }

      else
      {
        LOBYTE(v58) = 0;
        sub_264AD9E04();
        v44 = v49;
        sub_264B418F4();
        if (!v44)
        {
          (*(v20 + 8))(v11, v8);
          (*(v57 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v28 = 0;
          v35 = 0;
          v31 = 0;
          v34 = 0;
          v29 = 0uLL;
          v30 = 0uLL;
          v36 = 0x8000000000000000;
          v32 = 0uLL;
          v33 = 0uLL;
          v37 = v21;
          goto LABEL_18;
        }

        v26 = v57;
      }

      (*(v26 + 8))(v16, v12);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v71);
}