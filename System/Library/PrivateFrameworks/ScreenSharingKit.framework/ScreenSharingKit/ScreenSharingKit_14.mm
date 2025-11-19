uint64_t sub_264B202B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B20350, 0, 0);
}

uint64_t sub_264B20350()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_264B41274();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B58788, v6);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B58798, v7);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587A8, v8);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587B8, v9);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587C8, v10);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587D8, v11);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587E8, v12);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);

  v13 = v0[1];

  return v13();
}

uint64_t sub_264B20740(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return sub_264B202B4(a1, a2, v6);
}

uint64_t sub_264B20818()
{
  v1 = v0[2];
  v2 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  v3 = *v2;
  v0[3] = *v2;
  v4 = v0[2];
  if (v3)
  {
    v5 = v2[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_264B209A8;

    return v13(ObjectType, v5);
  }

  else
  {
    v11 = v0[2];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_264B209A8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264B3D208, 0, 0);
  }

  else
  {
    v4 = v3[3];
    swift_unknownObjectRelease();
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264B20AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_2649D046C(a1, v20 - v9, &qword_27FF898C0, &unk_264B44190);
  v11 = sub_264B41274();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2649D04D4(v10, &qword_27FF898C0, &unk_264B44190);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_264B411C4();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264B41264();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_264B20CF4()
{
  v1 = v0[2];
  v2 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  v3 = *v2;
  v0[3] = *v2;
  v4 = v0[2];
  if (v3)
  {
    v5 = v2[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_264B20E84;

    return v13(ObjectType, v5);
  }

  else
  {
    v11 = v0[2];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_264B20E84()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264B20FC0, 0, 0);
  }

  else
  {
    v4 = v3[3];
    swift_unknownObjectRelease();
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_264B20FC0()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_264B21044()
{
  v1 = v0[2];
  v2 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  v3 = *v2;
  v0[3] = *v2;
  v4 = v0[2];
  if (v3)
  {
    v5 = v2[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_264B209A8;

    return v13(ObjectType, v5);
  }

  else
  {
    v11 = v0[2];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_264B211F4()
{
  v1 = v0[2];
  swift_unownedRetainStrong();
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  v0[3] = v3;
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    v11 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_264B209A8;

    return v11(ObjectType, v4);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_264B2139C()
{
  v1 = v0[2];
  swift_unownedRetainStrong();
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  v0[3] = v3;
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    v11 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_264B209A8;

    return v11(ObjectType, v4);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_264B21544()
{
  v1 = v0[2];
  v2 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  v3 = *v2;
  v0[3] = *v2;
  v4 = v0[2];
  if (v3)
  {
    v5 = v2[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_264B209A8;

    return v13(ObjectType, v5);
  }

  else
  {
    v11 = v0[2];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_264B216F4()
{
  v1 = v0[2];
  v2 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  v3 = *v2;
  v0[3] = *v2;
  v4 = v0[2];
  if (v3)
  {
    v5 = v2[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_264B209A8;

    return v13(ObjectType, v5);
  }

  else
  {
    v11 = v0[2];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_264B21884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_264B41274();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v6, a1, v2);
  sub_264B41244();

  v13 = sub_264B41234();
  v14 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = v12;
  (*(v3 + 32))(&v15[v14], v6, v2);

  sub_264A10C20(0, 0, v10, &unk_264B58778, v15);
}

uint64_t sub_264B21AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  sub_264B41244();
  v5[19] = sub_264B41234();
  v11 = sub_264B411C4();
  v5[20] = v11;
  v5[21] = v10;

  return MEMORY[0x2822009F8](sub_264B21BF8, v11, v10);
}

uint64_t sub_264B21BF8()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[18];
    v5 = v0[15];
    v6 = v0[16];
    v7 = v0[14];
    v8 = *(v6 + 16);
    v0[23] = v8;
    v0[24] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v4, v7, v5);
    v9 = *(v6 + 56);
    v0[25] = v9;
    v0[26] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v9(v4, 0, 1, v5);
    v10 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
    v0[27] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
    swift_beginAccess();
    sub_2649FECCC(v4, v3 + v10, &unk_27FF899E0, &qword_264B53440);
    swift_endAccess();
    v11 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
    v0[28] = v11;

    return MEMORY[0x2822009F8](sub_264B21E4C, v11, 0);
  }

  else
  {
    v12 = v0[19];

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FFA71B8);
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, v14, v15, "Self disappeared before the invalidaiton continuation could be retrieved", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    v18 = v0[17];
    v17 = v0[18];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_264B21E4C()
{
  v1 = v0[28];
  sub_264A750BC();
  v0[29] = 0;
  v2 = v0[28];

  v3 = v0[20];
  v4 = v0[21];

  return MEMORY[0x2822009F8](sub_264B21EDC, v3, v4);
}

uint64_t sub_264B21EDC()
{
  v1 = v0[22];
  v2 = v0[19];

  v4 = v0[17];
  v3 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_264B21F58()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);

  *(v0 + 88) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 96);
  if (v4)
  {
    sub_264A78FEC(v4);
    sub_264A78FEC(0);
LABEL_4:
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 232);
    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71B8);
    v7 = v5;
    v8 = sub_264B40944();
    v9 = sub_264B41494();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 232);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = v10;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2649C6000, v8, v9, "Failed to invalidate underlying session, resuming: %{public}@", v11, 0xCu);
      sub_2649D04D4(v12, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);
    }

    goto LABEL_8;
  }

  sub_264A78FEC(0);
  sub_264A78FEC(0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v33 = sub_264B40964();
  __swift_project_value_buffer(v33, qword_27FFA71B8);
  v8 = sub_264B40944();
  v34 = sub_264B41484();
  if (os_log_type_enabled(v8, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2649C6000, v8, v34, "ControlMessageSession is already invalid, resuming continuation", v35, 2u);
    MEMORY[0x266749940](v35, -1, -1);
    sub_264A78FEC(0);
  }

LABEL_8:
  v15 = *(v0 + 216);
  v16 = *(v0 + 176);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);

  v19 = (*(v18 + 48))(v16 + v15, 1, v17);
  v20 = *(v0 + 232);
  if (v19)
  {
  }

  else
  {
    v21 = *(v0 + 192);
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 120);
    (*(v0 + 184))(v22, *(v0 + 176) + *(v0 + 216), v24);
    sub_264B411E4();

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 208);
  v26 = *(v0 + 216);
  v27 = *(v0 + 176);
  v28 = *(v0 + 144);
  (*(v0 + 200))(v28, 1, 1, *(v0 + 120));
  swift_beginAccess();
  sub_2649FECCC(v28, v27 + v26, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();

  v30 = *(v0 + 136);
  v29 = *(v0 + 144);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_264B22330()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71B8);
  v1 = sub_264B40944();
  v2 = sub_264B41484();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2649C6000, v1, v2, "Lowering isActive flag", v3, 2u);
    MEMORY[0x266749940](v3, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264B2245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 26) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  v7 = sub_264B40964();
  *(v6 + 112) = v7;
  v8 = *(v7 - 8);
  *(v6 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  sub_264B41244();
  *(v6 + 136) = sub_264B41234();
  v11 = sub_264B411C4();
  *(v6 + 144) = v11;
  *(v6 + 152) = v10;

  return MEMORY[0x2822009F8](sub_264B22554, v11, v10);
}

uint64_t sub_264B22554()
{
  v39 = v0;
  v1 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  if (*(v0 + 25) == 1)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 112);
    v5 = *(v0 + 26);
    v6 = *(v0 + 96);
    v7 = __swift_project_value_buffer(v4, qword_27FFA71B8);
    (*(v3 + 16))(v2, v7, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v5)
    {
      v10 = *(v0 + 104);
      if (v10)
      {
        if (v8 == 0.0)
        {
          v9 = 0;
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      if (v8 == 0.0)
      {
        v17 = *(v0 + 24);
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
LABEL_20:
        v19 = *(v0 + 128);
        v18 = *(v0 + 136);

        v20 = sub_264B40944();
        v21 = sub_264B41484();
        v22 = os_log_type_enabled(v20, v21);
        v24 = *(v0 + 120);
        v23 = *(v0 + 128);
        v25 = *(v0 + 112);
        if (v22)
        {
          v26 = *(v0 + 26);
          v27 = *(v0 + 104);
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v38 = v29;
          *v28 = 136446210;
          *(v0 + 80) = v27;
          *(v0 + 88) = v26 & 1;
          v30 = sub_264B41064();
          v32 = sub_2649CC004(v30, v31, &v38);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_2649C6000, v20, v21, "Ignoring duplicate interaction state change to %{public}s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x266749940](v29, -1, -1);
          MEMORY[0x266749940](v28, -1, -1);
        }

        (*(v24 + 8))(v23, v25);
        v33 = *(v0 + 128);

        v14 = *(v0 + 8);
        goto LABEL_23;
      }

      v10 = 0;
    }

    else
    {
      v15 = *(v0 + 16);
      if (*(v0 + 104) == v8)
      {
        v16 = *(v0 + 24);
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

      v10 = *(v0 + 104);
    }

LABEL_27:
    v35 = *(v0 + 26);
    *(v0 + 32) = v10;
    *(v0 + 40) = v35 & 1;
    v36 = swift_task_alloc();
    *(v0 + 160) = v36;
    *v36 = v0;
    v36[1] = sub_264B2290C;
    v37 = *(v0 + 96);

    return sub_264B22CD8((v0 + 32));
  }

  v11 = *(v0 + 136);

  sub_264B3CA90();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
  v13 = *(v0 + 128);

  v14 = *(v0 + 8);
LABEL_23:

  return v14();
}

uint64_t sub_264B2290C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 168) = v0;

  v4 = *(v2 + 144);
  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_264B22C24;
  }

  else
  {
    v6 = sub_264B22A20;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_264B22A20()
{
  v25 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 26);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = v5;
  *(v0 + 56) = v3 & 1;

  sub_264B40A94();
  v6 = sub_264B40944();
  v7 = sub_264B41474();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 26);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    *(v0 + 64) = v12;
    *(v0 + 72) = v10 & 1;
    v15 = sub_264B41064();
    v17 = sub_2649CC004(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2649C6000, v6, v7, "Changed interactionState to: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);

    (*(v9 + 8))(v8, v11);
  }

  else
  {
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 128);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_264B22C24()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[21];
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B22CD8(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  *(v2 + 121) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_264B22D04, 0, 0);
}

uint64_t sub_264B22D04()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  if (v2 && !*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle))
  {
    v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer + 8);
    v5 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
    swift_unknownObjectRetain();
    v3 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_2649D85C4((v6 > 1), v7 + 1, 1, v3);
    }

    v3[2] = v7 + 1;
    v8 = &v3[2 * v7];
    v8[4] = v2;
    v8[5] = v4;
    v1 = *(v0 + 144);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v0 + 160) = v3;
  v9 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle))
  {
    v10 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle);

    sub_264B41304();

    v11 = *(v1 + v9);
    v12 = *(v0 + 144);
  }

  else
  {
    v12 = v1;
  }

  *(v1 + v9) = 0;

  v13 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle;
  if (*(v12 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle))
  {
    v14 = *(v12 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle);

    sub_264B41304();

    v15 = *(v12 + v13);
  }

  v16 = *(v0 + 144);
  *(v12 + v13) = 0;

  v17 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle;
  if (*(v16 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle))
  {
    v18 = *(v16 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle);

    sub_264B41304();

    v19 = *(v16 + v17);
  }

  v20 = *(v0 + 144);
  *(v16 + v17) = 0;

  v21 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle;
  if (*(v20 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle))
  {
    v22 = *(v20 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle);

    sub_264B41304();

    v23 = *(v20 + v21);
  }

  v24 = *(v0 + 144);
  *(v20 + v21) = 0;

  v25 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle;
  v127 = v3;
  if (*(v24 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle))
  {

    sub_264B41304();

    v26 = *(v24 + v25);
  }

  v27 = *(v0 + 121);
  v28 = *(v0 + 144);
  *(v24 + v25) = 0;

  v29 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  *(v0 + 168) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  v30 = (v28 + v29);
  v31 = *(v28 + v29);
  *(v0 + 176) = v31;
  v32 = *(v28 + v29 + 8);
  v33 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer;
  *(v0 + 184) = v32;
  *(v0 + 192) = v33;
  v34 = (v28 + v33);
  v35 = *(v28 + v33);
  *(v0 + 200) = v35;
  v36 = *(v28 + v33 + 8);
  v37 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer;
  *(v0 + 208) = v36;
  *(v0 + 216) = v37;
  v38 = (v28 + v37);
  v39 = *(v28 + v37);
  *(v0 + 224) = v39;
  v40 = *(v28 + v37 + 8);
  v41 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer;
  *(v0 + 232) = v40;
  *(v0 + 240) = v41;
  v42 = (v28 + v41);
  v43 = *(v28 + v41);
  *(v0 + 248) = v43;
  v44 = *(v28 + v41 + 8);
  v45 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer;
  *(v0 + 256) = v44;
  *(v0 + 264) = v45;
  v46 = (v28 + v45);
  v47 = *v46;
  *(v0 + 272) = *v46;
  v48 = v46[1];
  *(v0 + 280) = v48;
  if (v27 == 1)
  {
    v124 = v32;
    v125 = v30;
    v121 = v36;
    v122 = v40;
    v123 = v44;
    v120 = v48;
    v49 = v31;
    v50 = *(v0 + 152);
    v51 = qword_27FF883E0;
    v126 = v49;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v50)
    {
      if (v51 != -1)
      {
        swift_once();
      }

      v52 = sub_264B40964();
      __swift_project_value_buffer(v52, qword_27FFA71B8);
      v53 = sub_264B40944();
      v54 = sub_264B41474();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2649C6000, v53, v54, "Playback switched to control", v55, 2u);
        MEMORY[0x266749940](v55, -1, -1);
      }

      v56 = *v125;
      *v125 = 0;
      v125[1] = 0;
      swift_unknownObjectRelease();
      if (v126)
      {
        swift_unknownObjectRetain();
        v57 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
        v59 = v57[2];
        v58 = v57[3];
        if (v59 >= v58 >> 1)
        {
          v57 = sub_2649D85C4((v58 > 1), v59 + 1, 1, v57);
        }

        v57[2] = v59 + 1;
        v60 = &v57[2 * v59];
        v60[4] = v126;
        v60[5] = v124;
      }

      else
      {
        v57 = MEMORY[0x277D84F90];
      }

      *(v0 + 296) = v57;
      sub_264B41244();
      *(v0 + 304) = sub_264B41234();
      v68 = sub_264B411C4();
      v70 = v89;
      v71 = sub_264B23E84;
      goto LABEL_52;
    }

    v118 = v43;
    if (v51 != -1)
    {
      swift_once();
    }

    v119 = v47;
    v72 = sub_264B40964();
    __swift_project_value_buffer(v72, qword_27FFA71B8);
    v73 = sub_264B40944();
    v74 = sub_264B41474();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_2649C6000, v73, v74, "Playback paused locally", v75, 2u);
      MEMORY[0x266749940](v75, -1, -1);
    }

    v76 = *v125;
    *v125 = 0;
    v125[1] = 0;
    swift_unknownObjectRelease();
    v77 = *v34;
    *v34 = 0;
    v34[1] = 0;
    swift_unknownObjectRelease();
    v78 = *v38;
    *v38 = 0;
    v38[1] = 0;
    swift_unknownObjectRelease();
    v79 = *v42;
    *v42 = 0;
    v42[1] = 0;
    swift_unknownObjectRelease();
    if (v126)
    {
      swift_unknownObjectRetain();
      v80 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
      v82 = v80[2];
      v81 = v80[3];
      if (v82 >= v81 >> 1)
      {
        v80 = sub_2649D85C4((v81 > 1), v82 + 1, 1, v80);
      }

      v80[2] = v82 + 1;
      v83 = &v80[2 * v82];
      v83[4] = v126;
      v83[5] = v124;
      if (!v35)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v80 = MEMORY[0x277D84F90];
      if (!v35)
      {
LABEL_61:
        if (v39)
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_2649D85C4(0, v80[2] + 1, 1, v80);
          }

          v94 = v122;
          v96 = v80[2];
          v95 = v80[3];
          if (v96 >= v95 >> 1)
          {
            v116 = sub_2649D85C4((v95 > 1), v96 + 1, 1, v80);
            v94 = v122;
            v80 = v116;
          }

          v80[2] = v96 + 1;
          v97 = &v80[2 * v96];
          v97[4] = v39;
          v97[5] = v94;
        }

        v98 = (*(v0 + 144) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
        v99 = *v98;
        if (*v98)
        {
          v100 = v98[1];
          v101 = *v98;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_2649D85C4(0, v80[2] + 1, 1, v80);
          }

          v103 = v80[2];
          v102 = v80[3];
          if (v103 >= v102 >> 1)
          {
            v80 = sub_2649D85C4((v102 > 1), v103 + 1, 1, v80);
          }

          v80[2] = v103 + 1;
          v104 = &v80[2 * v103];
          v104[4] = v99;
          v104[5] = v100;
        }

        if (v118)
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_2649D85C4(0, v80[2] + 1, 1, v80);
          }

          v105 = v123;
          v107 = v80[2];
          v106 = v80[3];
          if (v107 >= v106 >> 1)
          {
            v117 = sub_2649D85C4((v106 > 1), v107 + 1, 1, v80);
            v105 = v123;
            v80 = v117;
          }

          v80[2] = v107 + 1;
          v108 = &v80[2 * v107];
          v108[4] = v118;
          v108[5] = v105;
        }

        if (v119)
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_2649D85C4(0, v80[2] + 1, 1, v80);
          }

          v110 = v80[2];
          v109 = v80[3];
          if (v110 >= v109 >> 1)
          {
            v80 = sub_2649D85C4((v109 > 1), v110 + 1, 1, v80);
          }

          v80[2] = v110 + 1;
          v111 = &v80[2 * v110];
          v111[4] = v119;
          v111[5] = v120;
        }

        *(v0 + 312) = v127;
        *(v0 + 320) = v80;
        v112 = *(v0 + 121);
        *(v0 + 112) = *(v0 + 152);
        *(v0 + 120) = v112;
        v113 = swift_task_alloc();
        *(v0 + 328) = v113;
        *v113 = v0;
        v113[1] = sub_264B242DC;
        v114 = *(v0 + 144);

        return sub_264B381F8((v0 + 112), v80, v127);
      }
    }

    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_2649D85C4(0, v80[2] + 1, 1, v80);
    }

    v90 = v121;
    v92 = v80[2];
    v91 = v80[3];
    if (v92 >= v91 >> 1)
    {
      v115 = sub_2649D85C4((v91 > 1), v92 + 1, 1, v80);
      v90 = v121;
      v80 = v115;
    }

    v80[2] = v92 + 1;
    v93 = &v80[2 * v92];
    v93[4] = v35;
    v93[5] = v90;
    goto LABEL_61;
  }

  v61 = qword_27FF883E0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v61 != -1)
  {
    swift_once();
  }

  v62 = sub_264B40964();
  __swift_project_value_buffer(v62, qword_27FFA71B8);
  v63 = sub_264B40944();
  v64 = sub_264B41474();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2649C6000, v63, v64, "Playback switched to draw", v65, 2u);
    MEMORY[0x266749940](v65, -1, -1);
  }

  v66 = *(v0 + 144);

  v67 = v66 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(v66 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider + 24))
  {
    sub_2649CB5C0(v67, v0 + 56);
    if (*(v0 + 80))
    {
LABEL_34:
      sub_2649D2AAC((v0 + 56), v0 + 16);
      sub_264B41244();
      *(v0 + 288) = sub_264B41234();
      v68 = sub_264B411C4();
      v70 = v69;
      v71 = sub_264B238BC;
LABEL_52:

      return MEMORY[0x2822009F8](v71, v68, v70);
    }
  }

  else
  {
    v84 = *v67;
    v85 = *(v67 + 16);
    *(v0 + 88) = *(v67 + 32);
    *(v0 + 72) = v85;
    *(v0 + 56) = v84;
    if (*(v0 + 80))
    {
      goto LABEL_34;
    }
  }

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  sub_264B3CA90();
  swift_allocError();
  *v86 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_264B238BC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 144);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264B23974, 0, 0);
}

uint64_t sub_264B23974()
{
  if ((*(v0 + 136) & 1) == 0 && *(v0 + 128) == 2.0 && (v1 = *(v0 + 176), v2 = (*(v0 + 144) + *(v0 + 168)), v3 = *v2, *v2 = 0, v2[1] = 0, swift_unknownObjectRelease(), v1))
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    swift_unknownObjectRetain();
    v6 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2649D85C4((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = *(v0 + 176);
    v6[2] = v8 + 1;
    v10 = &v6[2 * v8];
    v10[4] = v9;
    v10[5] = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 200);
  v12 = *(v0 + 144);
  v13 = (v12 + *(v0 + 240));
  v14 = (v12 + *(v0 + 216));
  v15 = (v12 + *(v0 + 192));
  v16 = *v15;
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectRelease();
  v17 = *v14;
  *v14 = 0;
  v14[1] = 0;
  swift_unknownObjectRelease();
  v18 = *v13;
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectRelease();
  if (v11)
  {
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v22 = v6[2];
    v21 = v6[3];
    if (v22 >= v21 >> 1)
    {
      v6 = sub_2649D85C4((v21 > 1), v22 + 1, 1, v6);
    }

    v23 = *(v0 + 200);
    v6[2] = v22 + 1;
    v24 = &v6[2 * v22];
    v24[4] = v23;
    v24[5] = v20;
  }

  if (*(v0 + 224))
  {
    v25 = *(v0 + 232);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v27 = v6[2];
    v26 = v6[3];
    if (v27 >= v26 >> 1)
    {
      v6 = sub_2649D85C4((v26 > 1), v27 + 1, 1, v6);
    }

    v28 = *(v0 + 224);
    v6[2] = v27 + 1;
    v29 = &v6[2 * v27];
    v29[4] = v28;
    v29[5] = v25;
  }

  v30 = (*(v0 + 144) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  v31 = *v30;
  if (*v30)
  {
    v32 = v30[1];
    v33 = *v30;
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v35 = v6[2];
    v34 = v6[3];
    if (v35 >= v34 >> 1)
    {
      v6 = sub_2649D85C4((v34 > 1), v35 + 1, 1, v6);
    }

    v6[2] = v35 + 1;
    v36 = &v6[2 * v35];
    v36[4] = v31;
    v36[5] = v32;
  }

  if (*(v0 + 248))
  {
    v37 = *(v0 + 256);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v39 = v6[2];
    v38 = v6[3];
    if (v39 >= v38 >> 1)
    {
      v6 = sub_2649D85C4((v38 > 1), v39 + 1, 1, v6);
    }

    v40 = *(v0 + 248);
    v6[2] = v39 + 1;
    v41 = &v6[2 * v39];
    v41[4] = v40;
    v41[5] = v37;
  }

  if (*(v0 + 272))
  {
    v42 = *(v0 + 280);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v44 = v6[2];
    v43 = v6[3];
    if (v44 >= v43 >> 1)
    {
      v6 = sub_2649D85C4((v43 > 1), v44 + 1, 1, v6);
    }

    v45 = *(v0 + 272);
    v6[2] = v44 + 1;
    v46 = &v6[2 * v44];
    v46[4] = v45;
    v46[5] = v42;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 144);
  v50 = *(v0 + 40);
  v51 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
  (*(v51 + 16))(v50, v51);
  v52 = *(v0 + 96);
  v53 = *(v49 + v48);
  *(v49 + v48) = v52;
  v62 = v52;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v55 = sub_2649D85C4(0, v55[2] + 1, 1, *(v0 + 160));
  }

  v57 = v55[2];
  v56 = v55[3];
  if (v57 >= v56 >> 1)
  {
    v55 = sub_2649D85C4((v56 > 1), v57 + 1, 1, v55);
  }

  swift_unknownObjectRelease();
  v55[2] = v57 + 1;
  *&v55[2 * v57 + 4] = v62;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 312) = v55;
  *(v0 + 320) = v6;
  v58 = *(v0 + 121);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 120) = v58;
  v59 = swift_task_alloc();
  *(v0 + 328) = v59;
  *v59 = v0;
  v59[1] = sub_264B242DC;
  v60 = *(v0 + 144);

  return sub_264B381F8((v0 + 112), v6, v55);
}

uint64_t sub_264B23E84()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 144);

  sub_264B37F5C(v2);

  return MEMORY[0x2822009F8](sub_264B23F30, 0, 0);
}

uint64_t sub_264B23F30()
{
  v1 = *(v0 + 144);
  v2 = (v1 + *(v0 + 192));
  v3 = *v2;
  v4 = *(v0 + 160);
  if (*v2)
  {
    v5 = v2[1];
    v6 = *v2;
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, *(v0 + 160));
    }

    v9 = v4[2];
    v8 = v4[3];
    if (v9 >= v8 >> 1)
    {
      v4 = sub_2649D85C4((v8 > 1), v9 + 1, 1, v4);
    }

    swift_unknownObjectRelease();
    v4[2] = v9 + 1;
    v10 = &v4[2 * v9];
    v10[4] = v3;
    v10[5] = v5;
    v1 = *(v0 + 144);
  }

  v11 = (v1 + *(v0 + 216));
  v12 = *v11;
  if (*v11)
  {
    v13 = v11[1];
    v14 = *v11;
    swift_unknownObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      v4 = sub_2649D85C4((v15 > 1), v16 + 1, 1, v4);
    }

    swift_unknownObjectRelease();
    v4[2] = v16 + 1;
    v17 = &v4[2 * v16];
    v17[4] = v12;
    v17[5] = v13;
    v1 = *(v0 + 144);
  }

  v18 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  if (v18)
  {
    v19 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer + 8);
    v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v22 = v4[2];
    v21 = v4[3];
    if (v22 >= v21 >> 1)
    {
      v4 = sub_2649D85C4((v21 > 1), v22 + 1, 1, v4);
    }

    v4[2] = v22 + 1;
    v23 = &v4[2 * v22];
    v23[4] = v18;
    v23[5] = v19;
    v1 = *(v0 + 144);
  }

  v24 = (v1 + *(v0 + 240));
  v25 = *v24;
  if (*v24)
  {
    v26 = v24[1];
    v27 = *v24;
    swift_unknownObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v29 = v4[2];
    v28 = v4[3];
    if (v29 >= v28 >> 1)
    {
      v4 = sub_2649D85C4((v28 > 1), v29 + 1, 1, v4);
    }

    swift_unknownObjectRelease();
    v4[2] = v29 + 1;
    v30 = &v4[2 * v29];
    v30[4] = v25;
    v30[5] = v26;
    v1 = *(v0 + 144);
  }

  v31 = (v1 + *(v0 + 264));
  v32 = *v31;
  if (*v31)
  {
    v33 = v31[1];
    v34 = *v31;
    swift_unknownObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v36 = v4[2];
    v35 = v4[3];
    if (v36 >= v35 >> 1)
    {
      v4 = sub_2649D85C4((v35 > 1), v36 + 1, 1, v4);
    }

    swift_unknownObjectRelease();
    v4[2] = v36 + 1;
    v37 = &v4[2 * v36];
    v37[4] = v32;
    v37[5] = v33;
  }

  v38 = *(v0 + 296);
  *(v0 + 312) = v4;
  *(v0 + 320) = v38;
  v39 = *(v0 + 121);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 120) = v39;
  v40 = swift_task_alloc();
  *(v0 + 328) = v40;
  *v40 = v0;
  v40[1] = sub_264B242DC;
  v41 = *(v0 + 144);

  return sub_264B381F8((v0 + 112), v38, v4);
}

uint64_t sub_264B242DC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v8 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_264B2449C;
  }

  else
  {
    v5 = *(v2 + 312);
    v6 = *(v2 + 320);

    v4 = sub_264B24400;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B24400()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[22];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_264B2449C()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v8 = v0[42];
  v9 = v0[1];

  return v9();
}

uint64_t sub_264B24554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v4[25] = v12;
  v13 = *(v12 - 8);
  v4[26] = v13;
  v14 = *(v13 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = sub_264B41244();
  v4[29] = sub_264B41234();
  v16 = sub_264B411C4();
  v4[30] = v16;
  v4[31] = v15;

  return MEMORY[0x2822009F8](sub_264B2476C, v16, v15);
}

uint64_t sub_264B2476C()
{
  v1 = v0[16];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v4 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
    v0[33] = v4;

    return MEMORY[0x2822009F8](sub_264B24984, v4, 0);
  }

  else
  {
    v5 = v0[29];

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71B8);
    v7 = sub_264B40944();
    v8 = sub_264B41484();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Self went away before session could activate, drop events", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v10 = v0[27];
    v11 = v0[24];
    v12 = v0[21];
    v14 = v0[17];
    v13 = v0[18];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_264B24984()
{
  v1 = v0[33];
  sub_264A74A68(v0[27]);
  v0[34] = 0;
  v2 = v0[33];

  v3 = v0[30];
  v4 = v0[31];

  return MEMORY[0x2822009F8](sub_264B24A18, v3, v4);
}

uint64_t sub_264B24A18()
{
  v1 = v0[32];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  sub_264B412C4();
  v5 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v0[35] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v0[36] = v5;
  swift_beginAccess();
  v6 = v0[28];
  v7 = sub_264B41234();
  v0[37] = v7;
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = sub_264B24B0C;
  v10 = v0[24];
  v11 = v0[22];
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 15, v7, v12, v11);
}

uint64_t sub_264B24B0C()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v7 = *v0;

  v4 = *(v1 + 248);
  v5 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_264B24C50, v5, v4);
}

uint64_t sub_264B24C50()
{
  v1 = *(v0 + 120);
  *(v0 + 312) = v1;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = *(v0 + 256);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264B40A84();

        v3 = *(v0 + 96);
        *(v0 + 104) = *(v0 + 88);
        *(v0 + 112) = v3;
        v4 = swift_task_alloc();
        *(v0 + 336) = v4;
        *v4 = v0;
        v4[1] = sub_264B25550;
        v5 = *(v0 + 256);

        return sub_264B22CD8((v0 + 104));
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v1 == 2)
  {
LABEL_12:
    v21 = *(v0 + 152);
    v22 = *(v0 + 160);
    v23 = *(v0 + 144);
    sub_2649D046C(*(v0 + 256) + *(v0 + 288), v23, &unk_27FF899E0, &qword_264B53440);
    if ((*(v22 + 48))(v23, 1, v21) == 1)
    {
      sub_2649D04D4(*(v0 + 144), &unk_27FF899E0, &qword_264B53440);
      v24 = swift_task_alloc();
      *(v0 + 360) = v24;
      *v24 = v0;
      v24[1] = sub_264B25894;
      v25 = *(v0 + 256);

      return PlaybackServer.invalidate(waitsForSession:)(0);
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v26 = sub_264B40964();
      __swift_project_value_buffer(v26, qword_27FFA71B8);
      v27 = sub_264B40944();
      v28 = sub_264B41484();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2649C6000, v27, v28, "Session is invalidated, resuming continuation", v29, 2u);
        MEMORY[0x266749940](v29, -1, -1);
      }

      v30 = *(v0 + 288);
      v31 = *(v0 + 256);
      v33 = *(v0 + 160);
      v32 = *(v0 + 168);
      v34 = *(v0 + 152);
      v35 = *(v0 + 136);

      sub_264B411E4();
      sub_264A794B4(v1);
      (*(v33 + 8))(v32, v34);
      (*(v33 + 56))(v35, 1, 1, v34);
      swift_beginAccess();
      sub_2649FECCC(v35, v31 + v30, &unk_27FF899E0, &qword_264B53440);
      swift_endAccess();
      v36 = *(v0 + 224);
      v37 = sub_264B41234();
      *(v0 + 296) = v37;
      v38 = *(MEMORY[0x277D85798] + 4);
      v39 = swift_task_alloc();
      *(v0 + 304) = v39;
      *v39 = v0;
      v39[1] = sub_264B24B0C;
      v40 = *(v0 + 192);
      v41 = *(v0 + 176);
      v42 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 120, v37, v42, v41);
    }
  }

  if (v1 != 3)
  {
LABEL_16:
    sub_264A1EE08(v1);

    return MEMORY[0x2822009F8](sub_264B25194, 0, 0);
  }

  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);

  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);
  v15 = *(v0 + 216);
  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_264B25194()
{
  v1 = *(v0 + 224);
  *(v0 + 320) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B25220, v3, v2);
}

uint64_t sub_264B25220()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 99) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_264B2530C;
  v4 = *(v0 + 256);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2530C()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B25408, 0, 0);
}

uint64_t sub_264B25408()
{
  v1 = v0[32] + v0[35];
  v2 = *(v1 + 8);
  (*v1)(v0[39]);
  v3 = v0[30];
  v4 = v0[31];

  return MEMORY[0x2822009F8](sub_264B25480, v3, v4);
}

uint64_t sub_264B25480()
{
  v1 = v0[39];
  sub_264A794B4(v1);
  sub_264A794B4(v1);
  v2 = v0[28];
  v3 = sub_264B41234();
  v0[37] = v3;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_264B24B0C;
  v6 = v0[24];
  v7 = v0[22];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 15, v3, v8, v7);
}

uint64_t sub_264B25550()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;

  if (v0)
  {
    v4 = v3[30];
    v5 = v3[31];

    return MEMORY[0x2822009F8](sub_264B25E40, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[44] = v6;
    *v6 = v3;
    v6[1] = sub_264B256B8;
    v7 = v3[32];

    return sub_264B25EE4();
  }
}

uint64_t sub_264B256B8()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v6 = *v0;

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_264B257D8, v4, v3);
}

uint64_t sub_264B257D8()
{
  v1 = v0[28];
  v2 = sub_264B41234();
  v0[37] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_264B24B0C;
  v5 = v0[24];
  v6 = v0[22];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 15, v2, v7, v6);
}

uint64_t sub_264B25894()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v6 = *v0;

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_264B259B4, v4, v3);
}

uint64_t sub_264B259B4()
{
  sub_264A794B4(*(v0 + 312));
  v1 = *(v0 + 224);
  v2 = sub_264B41234();
  *(v0 + 296) = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_264B24B0C;
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 120, v2, v7, v6);
}

uint64_t sub_264B25A78()
{
  v1 = *(v0 + 224);
  *(v0 + 376) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B25B04, v3, v2);
}

uint64_t sub_264B25B04()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 256);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 98) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_264B25BF0;
  v4 = *(v0 + 256);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B25BF0()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B25CEC, 0, 0);
}

uint64_t sub_264B25CEC()
{
  v1 = v0[32] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v2 = *(v1 + 8);
  (*v1)(v0[46]);
  v3 = v0[30];
  v4 = v0[31];

  return MEMORY[0x2822009F8](sub_264B25D68, v3, v4);
}

uint64_t sub_264B25D68()
{
  v1 = v0[46];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_264B25E40()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v2 + 8))(v1, v3);
  v0[46] = v0[43];

  return MEMORY[0x2822009F8](sub_264B25A78, 0, 0);
}

uint64_t sub_264B25F04()
{
  *(v0 + 24) = sub_264B41244();
  *(v0 + 32) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B25F9C, v2, v1);
}

uint64_t sub_264B25F9C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264B26054, 0, 0);
}

uint64_t sub_264B26054()
{
  v1 = *(MEMORY[0x277D858E8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_264B26120;
  v3 = *(v0 + 16);

  return MEMORY[0x282200600]();
}

uint64_t sub_264B26120()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2621C, 0, 0);
}

uint64_t sub_264B2621C()
{
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer))
  {
    v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer + 8);
    v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
    v4 = swift_unknownObjectRetain();
    sub_264B27BA0(v4, v2, sub_264B3B300, &OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription);
    swift_unknownObjectRelease();
    v1 = v0[2];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer))
  {
    v5 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer + 8);
    v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
    v7 = swift_unknownObjectRetain();
    sub_264B27BA0(v7, v5, sub_264B3D274, &OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription);
    swift_unknownObjectRelease();
  }

  v8 = v0[3];
  v0[6] = sub_264B41234();
  v10 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B26350, v10, v9);
}

uint64_t sub_264B26350()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 57) = 1;

  sub_264B40A94();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264B26404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B264A0, 0, 0);
}

uint64_t sub_264B264A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_264B41274();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  sub_264B01A0C(v1, &unk_264B58528, v6);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  sub_264B01A0C(v1, &unk_264B58538, v7);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v5(v1, 1, 1, v4);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  sub_264B01A0C(v1, &unk_264B58548, v8);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264B266E0()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264B26778;
  v3 = *(v0 + 16);

  return sub_264B26888();
}

uint64_t sub_264B26778()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264B268A8()
{
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  v0[3] = v3;
  if (!v3)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v6 = sub_264B40944();
    v10 = sub_264B41484();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v6, v10, "Caller did not provide a client status consumer, skipping monitoring", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle))
  {
    v4 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v6 = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "Already monitoring client status events, skipping", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v12 = v0[1];

    return v12();
  }

  v14 = *(v2 + 8);
  v15 = swift_task_alloc();
  v0[4] = v15;
  v15[2] = v1;
  v15[3] = v3;
  v15[4] = v14;
  v16 = *(MEMORY[0x277D859E0] + 4);
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_264B26B90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B26B90()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264B3D270, 0, 0);
}

uint64_t sub_264B26CC8()
{
  v1 = *(v0 + 48);
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  sub_264B41244();
  *(v0 + 56) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B26D68, v3, v2);
}

uint64_t sub_264B26D68()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  v3 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_264B26E6C;
  v5 = *(v0 + 48);

  return sub_264B26F7C(v0 + 32);
}

uint64_t sub_264B26E6C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264B26F7C(uint64_t a1)
{
  *(v2 + 16) = v1;
  if (*(a1 + 8) != 1)
  {
    v3 = sub_264B26FD4;
    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  if (*a1)
  {
    v3 = sub_264B271A4;
    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  return (*(v2 + 8))();
}

uint64_t sub_264B26FD4()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_264B270A8;
  v3 = *(v0 + 16);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B270A8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

uint64_t sub_264B271A4()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_264B27278;
  v3 = *(v0 + 16);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B27278()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B27374, 0, 0);
}

uint64_t sub_264B27374()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_264B27448;
  v3 = *(v0 + 16);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B27448()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B27544, 0, 0);
}

uint64_t sub_264B27544()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_264B275D4;
  v2 = *(v0 + 16);

  return sub_264B27EB4();
}

uint64_t sub_264B275D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_264B27714;
  v5 = *(v1 + 16);

  return sub_264B281BC();
}

uint64_t sub_264B27714()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_264B27854;
  v5 = *(v1 + 16);

  return sub_264B284C4();
}

uint64_t sub_264B27854()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264B27968()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_264B27A44;
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B27A44()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B27B40, 0, 0);
}

uint64_t sub_264B27B40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264B27BA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21[2] = a3;
  v22 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA60, &unk_264B58500);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  ObjectType = swift_getObjectType();
  v24 = (*(a2 + 8))(ObjectType, a2);
  sub_2649CB2F0();
  v15 = sub_264B41554();
  v23 = v15;
  v16 = sub_264B41514();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA68, &unk_264B4CC00);
  sub_2649CB4C8(&unk_27FF8AA70, &qword_27FF8AA68, &unk_264B4CC00);
  sub_264B3B85C(&qword_27FF887B8, sub_2649CB2F0);
  sub_264B40B14();
  sub_2649D04D4(v8, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  v17 = v21[1];
  swift_weakInit();
  sub_2649CB4C8(&unk_27FF8AA80, &qword_27FF8AA60, &unk_264B58500);
  v18 = sub_264B40B54();

  (*(v10 + 8))(v13, v9);
  v19 = *(v17 + *v22);
  *(v17 + *v22) = v18;
}

uint64_t sub_264B27ED4()
{
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  v0[3] = v3;
  if (!v3)
  {
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE58);
    v6 = sub_264B40944();
    v10 = sub_264B41484();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v6, v10, "Caller did not provide an accessibility message consumer, skipping monitoring", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle))
  {
    v4 = qword_27FF88400;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AE58);
    v6 = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "Already monitoring accessibility messages, skipping", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v12 = v0[1];

    return v12();
  }

  v14 = *(v2 + 8);
  v15 = swift_task_alloc();
  v0[4] = v15;
  v15[2] = v1;
  v15[3] = v3;
  v15[4] = v14;
  v16 = *(MEMORY[0x277D859E0] + 4);
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_264B26B90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B281DC()
{
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  v0[3] = v3;
  if (!v3)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v6 = sub_264B40944();
    v10 = sub_264B41484();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v6, v10, "Caller did not provide a drag and drop event consumer, skipping monitoring", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle))
  {
    v4 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v6 = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "Already monitoring drag and drop events, skipping", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v12 = v0[1];

    return v12();
  }

  v14 = *(v2 + 8);
  v15 = swift_task_alloc();
  v0[4] = v15;
  v15[2] = v1;
  v15[3] = v3;
  v15[4] = v14;
  v16 = *(MEMORY[0x277D859E0] + 4);
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_264B26B90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B284E4()
{
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  v0[3] = v3;
  if (!v3)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AEB8);
    v6 = sub_264B40944();
    v10 = sub_264B414B4();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v6, v10, "currentRTIMessageConsumer is missing, we don't have a vendor - skipping monitoring", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle))
  {
    v4 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v6 = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "Already monitoring RTI events, skipping", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v12 = v0[1];

    return v12();
  }

  v14 = *(v2 + 8);
  v15 = swift_task_alloc();
  v0[4] = v15;
  v15[2] = v1;
  v15[3] = v3;
  v15[4] = v14;
  v16 = *(MEMORY[0x277D859E0] + 4);
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_264B287CC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B287CC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264B288E4, 0, 0);
}

uint64_t sub_264B288E4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264B28944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDA0, &qword_264B58598);
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDA8, &qword_264B585A0);
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB0, &qword_264B585A8);
  v5[25] = v12;
  v13 = *(v12 - 8);
  v5[26] = v13;
  v14 = *(v13 + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B28AE0, 0, 0);
}

uint64_t sub_264B28AE0()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 224) = v1;
  return MEMORY[0x2822009F8](sub_264B28B0C, v1, 0);
}

uint64_t sub_264B28B0C()
{
  v1 = v0[27];
  v2 = v0[28];
  (*(v0[23] + 104))(v0[24], *MEMORY[0x277D85778], v0[22]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B28BD0, 0, 0);
}

uint64_t sub_264B28BD0()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v0[29] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_264B28CC8;
  v7 = v0[21];
  v8 = v0[19];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v8);
}

uint64_t sub_264B28CC8()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B28DC4, 0, 0);
}

uint64_t sub_264B28DC4()
{
  v34 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  if (v2 == 255)
  {
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    (*(v16 + 8))(v15, v17);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = (*(v0 + 136) + *(v0 + 232));
    v7 = *v6;
    *(v0 + 248) = *v6;
    if (v7)
    {
      v8 = v6[1];
      ObjectType = swift_getObjectType();
      *(v0 + 40) = &type metadata for DrawEvent;
      *(v0 + 48) = &off_28765B2B0;
      v10 = swift_allocObject();
      *(v0 + 16) = v10;
      *(v10 + 16) = v1;
      *(v10 + 24) = v3;
      *(v10 + 32) = v4;
      *(v10 + 40) = v5;
      *(v10 + 48) = v2 & 1;
      v11 = *(v8 + 32);
      swift_unknownObjectRetain();
      v31 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 256) = v13;
      *v13 = v0;
      v13[1] = sub_264B291C8;

      return v31(v0 + 16, ObjectType, v8);
    }

    else
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v20 = sub_264B40964();
      __swift_project_value_buffer(v20, qword_27FFA71B8);
      v21 = sub_264B40944();
      v22 = sub_264B41484();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v23 = 136315138;
        *(v0 + 96) = v1;
        *(v0 + 104) = v3;
        *(v0 + 112) = v4;
        *(v0 + 120) = v5;
        *(v0 + 128) = v2 & 1;
        v24 = sub_264B41064();
        v26 = sub_2649CC004(v24, v25, &v33);

        *(v23 + 4) = v26;
        _os_log_impl(&dword_2649C6000, v21, v22, "Received draw event %s, but consumer is not available. Dropping event.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x266749940](v32, -1, -1);
        MEMORY[0x266749940](v23, -1, -1);
      }

      v27 = *(MEMORY[0x277D85798] + 4);
      v28 = swift_task_alloc();
      *(v0 + 240) = v28;
      *v28 = v0;
      v28[1] = sub_264B28CC8;
      v29 = *(v0 + 168);
      v30 = *(v0 + 152);

      return MEMORY[0x2822003E8](v0 + 56, 0, 0, v30);
    }
  }
}

uint64_t sub_264B291C8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_264B29394;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264B292E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B292E4()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_264B28CC8;
  v4 = v0[21];
  v5 = v0[19];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_264B29394()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume draw event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[34] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B29564, v12, v11);
}

uint64_t sub_264B29564()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 89) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *v3 = v0;
  v3[1] = sub_264B29650;
  v4 = *(v0 + 136);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B29650()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2974C, 0, 0);
}

uint64_t sub_264B2974C()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[17] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v4 = *(v3 + 8);
  (*v3)(v1);
  swift_unknownObjectRelease();

  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264B29840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for HIDMessage();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B590, &qword_264B50D78) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE88, &qword_264B586E0);
  v5[15] = v10;
  v11 = *(v10 - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE90, &qword_264B586E8);
  v5[18] = v13;
  v14 = *(v13 - 8);
  v5[19] = v14;
  v15 = *(v14 + 64) + 15;
  v5[20] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE98, &qword_264B586F0);
  v5[21] = v16;
  v17 = *(v16 - 8);
  v5[22] = v17;
  v18 = *(v17 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B29A88, 0, 0);
}

uint64_t sub_264B29A88()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](sub_264B29AB4, v1, 0);
}

uint64_t sub_264B29AB4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[9];
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277D85778], v0[18]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B29B78, 0, 0);
}

uint64_t sub_264B29B78()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v0[25] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_264B29C6C;
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t sub_264B29C6C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B29D68, 0, 0);
}

uint64_t sub_264B29D68()
{
  v45 = v0;
  v1 = v0[14];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v5 = v0[20];
    v4 = v0[21];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[25];
    v12 = v0[7];
    sub_264B3C650(v1, v0[13], type metadata accessor for HIDMessage);
    v13 = *(v12 + v11);
    v0[27] = v13;
    if (v13)
    {
      v14 = v0[13];
      v15 = v0[9];
      v16 = *(v0[7] + v0[25] + 8);
      ObjectType = swift_getObjectType();
      v0[5] = v15;
      v0[6] = &off_28765E6C8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      sub_264B3C4B0(v14, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
      v19 = *(v16 + 32);
      swift_unknownObjectRetain();
      v43 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      v0[28] = v21;
      *v21 = v0;
      v21[1] = sub_264B2A25C;

      return (v43)(v0 + 2, ObjectType, v16);
    }

    else
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v22 = v0[12];
      v23 = v0[13];
      v24 = sub_264B40964();
      __swift_project_value_buffer(v24, qword_27FFA71B8);
      sub_264B3C4B0(v23, v22, type metadata accessor for HIDMessage);
      v25 = sub_264B40944();
      v26 = sub_264B41484();
      v27 = os_log_type_enabled(v25, v26);
      v29 = v0[12];
      v28 = v0[13];
      if (v27)
      {
        v30 = v0[11];
        v31 = v0[9];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v44 = v33;
        *v32 = 136315138;
        sub_264B3C4B0(v29, v30, type metadata accessor for HIDMessage);
        v34 = sub_264B41064();
        v36 = v35;
        sub_264B3C518(v29, type metadata accessor for HIDMessage);
        v37 = sub_2649CC004(v34, v36, &v44);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_2649C6000, v25, v26, "Received control event %s, but consumer is not available. Dropping event.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x266749940](v33, -1, -1);
        MEMORY[0x266749940](v32, -1, -1);
      }

      else
      {

        sub_264B3C518(v29, type metadata accessor for HIDMessage);
      }

      sub_264B3C518(v28, type metadata accessor for HIDMessage);
      v38 = *(MEMORY[0x277D85798] + 4);
      v39 = swift_task_alloc();
      v0[26] = v39;
      *v39 = v0;
      v39[1] = sub_264B29C6C;
      v40 = v0[17];
      v41 = v0[14];
      v42 = v0[15];

      return MEMORY[0x2822003E8](v41, 0, 0, v42);
    }
  }
}

uint64_t sub_264B2A25C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_264B2A444;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264B2A378;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B2A378()
{
  v1 = v0[27];
  v2 = v0[13];
  swift_unknownObjectRelease();
  sub_264B3C518(v2, type metadata accessor for HIDMessage);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_264B29C6C;
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_264B2A444()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume control event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[30] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2A614, v12, v11);
}

uint64_t sub_264B2A614()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 56);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 256) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_264B2A6FC;
  v4 = *(v0 + 56);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2A6FC()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2A7F8, 0, 0);
}

uint64_t sub_264B2A7F8()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[13];
  v4 = v0[7] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v5 = *(v4 + 8);
  (*v4)(v1);
  swift_unknownObjectRelease();

  sub_264B3C518(v3, type metadata accessor for HIDMessage);
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[14];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v7 + 8))(v6, v8);

  v14 = v0[1];

  return v14();
}

uint64_t sub_264B2A944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_264B41274();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  (*(v10 + 32))(&v20[v19], v13, v9);

  v21 = sub_264A10C20(0, 0, v17, a4, v20);
  v22 = *(a2 + *a5);
  *(a2 + *a5) = v21;
}

uint64_t sub_264B2AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE50, &qword_264B58698);
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE58, &qword_264B586A0);
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE60, &qword_264B586A8);
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2ACDC, 0, 0);
}

uint64_t sub_264B2ACDC()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 240) = v1;
  return MEMORY[0x2822009F8](sub_264B2AD08, v1, 0);
}

uint64_t sub_264B2AD08()
{
  v1 = v0[29];
  v2 = v0[30];
  (*(v0[25] + 104))(v0[26], *MEMORY[0x277D85778], v0[24]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2ADCC, 0, 0);
}

uint64_t sub_264B2ADCC()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v0[31] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_264B2AEC4;
  v7 = v0[23];
  v8 = v0[21];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v8);
}

uint64_t sub_264B2AEC4()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2AFC0, 0, 0);
}

uint64_t sub_264B2AFC0()
{
  v47 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v0[33] = v2;
  v0[34] = v1;
  v0[35] = v3;
  v0[36] = v4;
  if (v1 == 4)
  {
    v6 = v0[28];
    v5 = v0[29];
    v8 = v0[26];
    v7 = v0[27];
    (*(v0[22] + 8))(v0[23], v0[21]);
    (*(v6 + 8))(v5, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = (v0[19] + v0[31]);
    v12 = *v11;
    v0[37] = *v11;
    if (v12)
    {
      v13 = v11[1];
      v14 = qword_27FF883E0;
      swift_unknownObjectRetain();
      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_264B40964();
      v0[38] = __swift_project_value_buffer(v15, qword_27FFA71B8);
      sub_264A18774(v2, v1, v3, v4);
      v16 = sub_264B40944();
      v17 = sub_264B41484();
      sub_264A187C4(v2, v1, v3, v4);
      if (os_log_type_enabled(v16, v17))
      {
        v44 = v17;
        buf = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46 = v41;
        *buf = 136315138;
        v0[15] = v2;
        v0[16] = v1;
        v0[17] = v3;
        v0[18] = v4;
        sub_264A18774(v2, v1, v3, v4);
        v18 = sub_264B41064();
        v20 = v16;
        v21 = v13;
        v22 = sub_2649CC004(v18, v19, &v46);

        *(buf + 4) = v22;
        v13 = v21;
        _os_log_impl(&dword_2649C6000, v20, v44, "system event consumer available, consuming event: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x266749940](v41, -1, -1);
        MEMORY[0x266749940](buf, -1, -1);
      }

      else
      {
      }

      ObjectType = swift_getObjectType();
      v0[5] = &type metadata for SystemGestureEvent;
      v0[6] = &off_28765C718;
      v32 = swift_allocObject();
      v0[2] = v32;
      v32[2] = v2;
      v32[3] = v1;
      v32[4] = v3;
      v32[5] = v4;
      v33 = *(v13 + 32);
      sub_264A18774(v2, v1, v3, v4);
      v43 = v33 + *v33;
      v34 = v33[1];
      v35 = swift_task_alloc();
      v0[39] = v35;
      *v35 = v0;
      v35[1] = sub_264B2B5D4;

      return (v43)(v0 + 2, ObjectType, v13);
    }

    else
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FFA71B8);
      sub_264A18774(v2, v1, v3, v4);
      v24 = sub_264B40944();
      v25 = sub_264B41484();
      sub_264A187C4(v2, v1, v3, v4);
      if (os_log_type_enabled(v24, v25))
      {
        v42 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v45;
        *v42 = 136315138;
        v0[11] = v2;
        v0[12] = v1;
        v0[13] = v3;
        v0[14] = v4;
        sub_264A18774(v2, v1, v3, v4);
        v26 = sub_264B41064();
        v28 = v24;
        v29 = v25;
        v30 = sub_2649CC004(v26, v27, &v46);

        *(v42 + 4) = v30;
        _os_log_impl(&dword_2649C6000, v28, v29, "Received system event %s, but consumer is not available. Dropping event.", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x266749940](v45, -1, -1);
        MEMORY[0x266749940](v42, -1, -1);
        sub_264A187C4(v2, v1, v3, v4);
      }

      else
      {

        sub_264A187C4(v2, v1, v3, v4);
      }

      v36 = *(MEMORY[0x277D85798] + 4);
      v37 = swift_task_alloc();
      v0[32] = v37;
      *v37 = v0;
      v37[1] = sub_264B2AEC4;
      v38 = v0[23];
      v39 = v0[21];

      return MEMORY[0x2822003E8](v0 + 7, 0, 0, v39);
    }
  }
}

uint64_t sub_264B2B5D4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_264B2B7C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264B2B6F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B2B6F0()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  swift_unknownObjectRelease();
  sub_264A187C4(v5, v4, v3, v2);
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_264B2AEC4;
  v8 = v0[23];
  v9 = v0[21];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v9);
}

uint64_t sub_264B2B7C4()
{
  v1 = v0[40];
  v2 = v0[38];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[40];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume system event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[41] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2B950, v12, v11);
}

uint64_t sub_264B2B950()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 152);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 344) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *v3 = v0;
  v3[1] = sub_264B2BA38;
  v4 = *(v0 + 152);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2BA38()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2BB34, 0, 0);
}

uint64_t sub_264B2BB34()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[19] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v8 = *(v7 + 8);
  (*v7)(v1);
  swift_unknownObjectRelease();

  sub_264A187C4(v6, v5, v4, v3);
  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[26];
  v11 = v0[27];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_264B2BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[139] = a7;
  v7[138] = a6;
  v7[137] = a5;
  v7[136] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B0, &qword_264B51958);
  v7[140] = v8;
  v9 = *(v8 - 8);
  v7[141] = v9;
  v10 = *(v9 + 64) + 15;
  v7[142] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B8, &qword_264B51960);
  v7[143] = v11;
  v12 = *(v11 - 8);
  v7[144] = v12;
  v13 = *(v12 + 64) + 15;
  v7[145] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8C0, &qword_264B51968);
  v7[146] = v14;
  v15 = *(v14 - 8);
  v7[147] = v15;
  v16 = *(v15 + 64) + 15;
  v7[148] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2BDF4, 0, 0);
}

uint64_t sub_264B2BDF4()
{
  v1 = *(*(v0 + 1088) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 1192) = v1;
  return MEMORY[0x2822009F8](sub_264B2BE20, v1, 0);
}

uint64_t sub_264B2BE20()
{
  v1 = v0[149];
  v2 = v0[148];
  (*(v0[144] + 104))(v0[145], *MEMORY[0x277D85778], v0[143]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2BEEC, 0, 0);
}

uint64_t sub_264B2BEEC()
{
  v1 = v0[148];
  v2 = v0[146];
  v3 = v0[142];
  v4 = v0[137];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[150] = v6;
  *v6 = v0;
  v6[1] = sub_264B2BFD8;
  v7 = v0[142];
  v8 = v0[140];

  return MEMORY[0x2822003E8](v0 + 15, 0, 0, v8);
}

uint64_t sub_264B2BFD8()
{
  v1 = *(*v0 + 1200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2C0D4, 0, 0);
}

uint64_t sub_264B2C0D4()
{
  v48 = v0;
  v1 = *(v0 + 168);
  v2 = (v0 + 952);
  v3 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v3;
  *(v0 + 112) = *(v0 + 216);
  v4 = *(v0 + 120);
  v5 = *(v0 + 136);
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  v6 = *(v0 + 152);
  *(v0 + 48) = v6;
  *(v0 + 64) = v1;
  *(v0 + 968) = v5;
  *(v0 + 984) = v6;
  *(v0 + 952) = v4;
  v7 = *(v0 + 72);
  *(v0 + 1000) = *(v0 + 64);
  *(v0 + 1040) = *(v0 + 112);
  v8 = *(v0 + 96);
  *(v0 + 1008) = *(v0 + 80);
  *(v0 + 1024) = v8;
  if ((v7 & 0x3FFFFFFFFFFFFF1ELL) == 0xFFFFFFF1ELL)
  {
    v9 = *(v0 + 1184);
    v10 = *(v0 + 1176);
    v11 = *(v0 + 1168);
    v12 = *(v0 + 1160);
    (*(*(v0 + 1128) + 8))(*(v0 + 1136), *(v0 + 1120));
    (*(v10 + 8))(v9, v11);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v15 = (v0 + 1008);
    v16 = sub_264B40964();
    *(v0 + 1208) = __swift_project_value_buffer(v16, qword_27FFA71B8);
    v17 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v17;
    *(v0 + 320) = *(v0 + 112);
    v18 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v18;
    v19 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v19;
    sub_264A7D664(v0 + 224, v0 + 328);
    v20 = sub_264B40944();
    v21 = sub_264B41484();
    sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v22 = 136315138;
      v23 = *(v0 + 968);
      *(v0 + 744) = *v2;
      *(v0 + 760) = v23;
      *(v0 + 776) = *(v0 + 984);
      *(v0 + 792) = *(v0 + 1000);
      *(v0 + 800) = v7;
      v24 = *(v0 + 1024);
      *(v0 + 808) = *v15;
      *(v0 + 824) = v24;
      *(v0 + 840) = *(v0 + 1040);
      v25 = *(v0 + 96);
      *(v0 + 704) = *(v0 + 80);
      *(v0 + 720) = v25;
      *(v0 + 736) = *(v0 + 112);
      v26 = *(v0 + 32);
      *(v0 + 640) = *(v0 + 16);
      *(v0 + 656) = v26;
      v27 = *(v0 + 64);
      *(v0 + 672) = *(v0 + 48);
      *(v0 + 688) = v27;
      sub_264A7D664(v0 + 640, v0 + 848);
      v28 = sub_264B41064();
      v30 = sub_2649CC004(v28, v29, &v47);

      *(v22 + 4) = v30;
      _os_log_impl(&dword_2649C6000, v20, v21, "Consuming client status event: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x266749940](v45, -1, -1);
      MEMORY[0x266749940](v22, -1, -1);
    }

    v46 = *(v0 + 1112);
    v31 = *(v0 + 1104);
    ObjectType = swift_getObjectType();
    *(v0 + 1072) = &type metadata for StatusEvent;
    *(v0 + 1080) = &off_28765B558;
    v33 = swift_allocObject();
    *(v0 + 1048) = v33;
    v34 = *(v0 + 968);
    *(v33 + 16) = *v2;
    *(v33 + 32) = v34;
    *(v33 + 48) = *(v0 + 984);
    *(v33 + 64) = *(v0 + 1000);
    *(v33 + 72) = v7;
    v35 = *(v0 + 1024);
    *(v33 + 80) = *v15;
    *(v33 + 96) = v35;
    *(v33 + 112) = *(v0 + 1040);
    v36 = *(v46 + 32);
    v37 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v37;
    *(v0 + 528) = *(v0 + 112);
    v38 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v38;
    v39 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v39;
    sub_264A7D664(v0 + 432, v0 + 536);
    v44 = (v36 + *v36);
    v40 = v36[1];
    v41 = swift_task_alloc();
    *(v0 + 1216) = v41;
    *v41 = v0;
    v41[1] = sub_264B2C570;
    v42 = *(v0 + 1112);
    v43 = *(v0 + 1104);

    return v44(v0 + 1048, ObjectType, v42);
  }
}

uint64_t sub_264B2C570()
{
  v2 = *v1;
  v3 = *(*v1 + 1216);
  v6 = *v1;
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v4 = sub_264B2C74C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 1048));
    v4 = sub_264B2C68C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B2C68C()
{
  sub_2649D04D4((v0 + 2), &qword_27FF8B8C8, &qword_264B51970);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[150] = v2;
  *v2 = v0;
  v2[1] = sub_264B2BFD8;
  v3 = v0[142];
  v4 = v0[140];

  return MEMORY[0x2822003E8](v0 + 15, 0, 0, v4);
}

uint64_t sub_264B2C74C()
{
  v1 = v0[153];
  v2 = v0[151];
  __swift_destroy_boxed_opaque_existential_0(v0 + 131);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[153];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume client status event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[154] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2C8D8, v12, v11);
}

uint64_t sub_264B2C8D8()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1088);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1248) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 1240) = v3;
  *v3 = v0;
  v3[1] = sub_264B2C9C0;
  v4 = *(v0 + 1088);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2C9C0()
{
  v1 = *(*v0 + 1240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2CABC, 0, 0);
}

uint64_t sub_264B2CABC()
{
  v1 = v0[153];
  v2 = v0[136] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v3 = *(v2 + 8);
  (*v2)(v1);

  sub_2649D04D4((v0 + 2), &qword_27FF8B8C8, &qword_264B51970);
  v4 = v0[148];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[145];
  (*(v0[141] + 8))(v0[142], v0[140]);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_264B2CBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B880, &qword_264B51908);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B888, &qword_264B51910);
  v7[18] = v11;
  v12 = *(v11 - 8);
  v7[19] = v12;
  v13 = *(v12 + 64) + 15;
  v7[20] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B890, &qword_264B51918);
  v7[21] = v14;
  v15 = *(v14 - 8);
  v7[22] = v15;
  v16 = *(v15 + 64) + 15;
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2CD68, 0, 0);
}

uint64_t sub_264B2CD68()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](sub_264B2CD94, v1, 0);
}

uint64_t sub_264B2CD94()
{
  v1 = v0[23];
  v2 = v0[24];
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277D85778], v0[18]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2CE58, 0, 0);
}

uint64_t sub_264B2CE58()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_264B2CF44;
  v7 = v0[17];
  v8 = v0[15];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v8);
}

uint64_t sub_264B2CF44()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2D040, 0, 0);
}

uint64_t sub_264B2D040()
{
  v27 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v0[26] = v1;
  v0[27] = v2;
  if ((~v2 & 0x3000000000000000) != 0)
  {
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    v0[28] = __swift_project_value_buffer(v9, qword_27FF8AE58);
    sub_264A5448C(v1, v2);
    v10 = sub_264B40944();
    v11 = sub_264B41484();
    sub_264ACCBB4(v1, v2);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      v0[9] = v1;
      v0[10] = v2;
      sub_264A5448C(v1, v2);
      v14 = sub_264B41064();
      v16 = sub_2649CC004(v14, v15, &v26);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2649C6000, v10, v11, "Consuming accessibility message: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v17 = v0[13];
    v25 = v0[14];
    ObjectType = swift_getObjectType();
    v0[5] = &type metadata for AccessibilityMessage;
    v0[6] = &off_28765A468;
    v0[2] = v1;
    v0[3] = v2;
    v19 = *(v25 + 32);
    sub_264A5448C(v1, v2);
    v24 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[29] = v21;
    *v21 = v0;
    v21[1] = sub_264B2D394;
    v23 = v0[13];
    v22 = v0[14];

    return (v24)(v0 + 2, ObjectType, v22);
  }

  else
  {
    v4 = v0[22];
    v3 = v0[23];
    v6 = v0[20];
    v5 = v0[21];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v4 + 8))(v3, v5);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_264B2D394()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v6 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_264B2D560;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264B2D4B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B2D4B0()
{
  sub_264ACCBB4(v0[26], v0[27]);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_264B2CF44;
  v3 = v0[17];
  v4 = v0[15];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v4);
}

uint64_t sub_264B2D560()
{
  v1 = v0[30];
  v2 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume accessibility message, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[31] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2D6EC, v12, v11);
}

uint64_t sub_264B2D6EC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 264) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_264B2D7D4;
  v4 = *(v0 + 88);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2D7D4()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2D8D0, 0, 0);
}

uint64_t sub_264B2D8D0()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[11] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v5 = *(v4 + 8);
  (*v4)(v1);

  sub_264ACCBB4(v3, v2);
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_264B2D9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A960, &unk_264B58510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9 - 8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
    swift_beginAccess();
    if (!(*(v3 + 48))(v12 + v13, 1, v2))
    {
      (*(v3 + 16))(v6, v12 + v13, v2);

      sub_2649CB5C0(a1, v18);
      sub_264B412A4();
      (*(v3 + 8))(v6, v2);
      v14 = 0;
      goto LABEL_6;
    }
  }

  v14 = 1;
LABEL_6:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8A968, &qword_264B4CB00);
  (*(*(v15 - 8) + 56))(v10, v14, 1, v15);
  return sub_2649D04D4(v10, &qword_27FF8A960, &unk_264B58510);
}

uint64_t sub_264B2DC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B898, &unk_264B51930);
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v10 = *(v9 + 64) + 15;
  v7[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A0, &unk_264B58630);
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A8, &qword_264B51940);
  v7[27] = v14;
  v15 = *(v14 - 8);
  v7[28] = v15;
  v16 = *(v15 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2DDB4, 0, 0);
}

uint64_t sub_264B2DDB4()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 240) = v1;
  return MEMORY[0x2822009F8](sub_264B2DDE0, v1, 0);
}

uint64_t sub_264B2DDE0()
{
  v1 = v0[29];
  v2 = v0[30];
  (*(v0[25] + 104))(v0[26], *MEMORY[0x277D85778], v0[24]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2DEA4, 0, 0);
}

uint64_t sub_264B2DEA4()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_264B2DF90;
  v7 = v0[23];
  v8 = v0[21];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v8);
}

uint64_t sub_264B2DF90()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2E08C, 0, 0);
}

uint64_t sub_264B2E08C()
{
  v35 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 256) = v1;
  *(v0 + 264) = v2;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 272) = v4;
  *(v0 + 280) = v3;
  v5 = *(v0 + 88);
  *(v0 + 90) = v5;
  if (v3)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v6 = v5 & 0x100;
    v7 = sub_264B40964();
    *(v0 + 288) = __swift_project_value_buffer(v7, qword_27FFA71B8);
    sub_2649DEF18(v1, v2);

    v8 = sub_264B40944();
    v9 = sub_264B41484();
    sub_264ACCD54(v1, v2, v4, v3);
    if (os_log_type_enabled(v8, v9))
    {
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v14 = 136446210;
      *(v0 + 96) = v1;
      *(v0 + 104) = v2;
      *(v0 + 112) = v4;
      *(v0 + 120) = v3;
      *(v0 + 128) = v5 & 1;
      v30 = v6 >> 8;
      *(v0 + 129) = BYTE1(v6);
      sub_2649DEF18(v1, v2);

      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, &v34);

      *(v14 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v8, v9, "Consuming drag and drop event: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x266749940](v31, -1, -1);
      v13 = v14;
      LOBYTE(v14) = v30;
      MEMORY[0x266749940](v13, -1, -1);

      v15 = v5 & 1;
    }

    else
    {

      v15 = v5 & 1;
      LODWORD(v14) = v6 >> 8;
    }

    v22 = *(v0 + 152);
    v33 = *(v0 + 160);
    ObjectType = swift_getObjectType();
    *(v0 + 40) = &type metadata for DragAndDropEvent;
    *(v0 + 48) = &off_28765F610;
    v24 = swift_allocObject();
    *(v0 + 16) = v24;
    *(v24 + 16) = v1;
    *(v24 + 24) = v2;
    *(v24 + 32) = v4;
    *(v24 + 40) = v3;
    *(v24 + 48) = v15;
    *(v24 + 49) = v14;
    v25 = *(v33 + 32);
    sub_2649DEF18(v1, v2);

    v32 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 296) = v27;
    *v27 = v0;
    v27[1] = sub_264B2E468;
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);

    return v32(v0 + 16, ObjectType, v28);
  }

  else
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v17 + 8))(v16, v18);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_264B2E468()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v6 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_264B2E63C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264B2E584;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B2E584()
{
  v1 = *(v0 + 90);
  sub_264ACCD54(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280));
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_264B2DF90;
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v5);
}

uint64_t sub_264B2E63C()
{
  v1 = v0[38];
  v2 = v0[36];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume drag and drop event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[39] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2E7C8, v12, v11);
}

uint64_t sub_264B2E7C8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 92) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *v3 = v0;
  v3[1] = sub_264B2E8B4;
  v4 = *(v0 + 136);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2E8B4()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2E9B0, 0, 0);
}

uint64_t sub_264B2E9B0()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 136) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v7 = *(v6 + 8);
  v8 = *(v0 + 90);
  (*v6)(v1);

  sub_264ACCD54(v5, v4, v3, v2);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  (*(v10 + 8))(v9, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_264B2EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v30 = a6;
  v31 = a7;
  v29 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = sub_264B41274();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  (*(v11 + 32))(&v22[v20], v14, v10);
  v23 = &v22[v21];
  v24 = v29;
  *v23 = a3;
  *(v23 + 1) = v24;

  swift_unknownObjectRetain();
  v25 = sub_264A10C20(0, 0, v18, v30, v22);
  v26 = *(a2 + *v31);
  *(a2 + *v31) = v25;
}

uint64_t sub_264B2ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for RTIMessage();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A330, &qword_264B4A7A0) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDE8, &qword_264B585E8);
  v7[17] = v12;
  v13 = *(v12 - 8);
  v7[18] = v13;
  v14 = *(v13 + 64) + 15;
  v7[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8E0, &unk_264B585F0);
  v7[20] = v15;
  v16 = *(v15 - 8);
  v7[21] = v16;
  v17 = *(v16 + 64) + 15;
  v7[22] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A08, &qword_264B449F0);
  v7[23] = v18;
  v19 = *(v18 - 8);
  v7[24] = v19;
  v20 = *(v19 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2EF38, 0, 0);
}

uint64_t sub_264B2EF38()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 208) = v1;
  return MEMORY[0x2822009F8](sub_264B2EF64, v1, 0);
}

uint64_t sub_264B2EF64()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[11];
  (*(v0[21] + 104))(v0[22], *MEMORY[0x277D85778], v0[20]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2F028, 0, 0);
}

uint64_t sub_264B2F028()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_264B2F110;
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[17];

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t sub_264B2F110()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2F20C, 0, 0);
}

uint64_t sub_264B2F20C()
{
  v39 = v0;
  v1 = v0[16];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    v3 = v0[24];
    v2 = v0[25];
    v5 = v0[22];
    v4 = v0[23];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    (*(v0[18] + 8))(v0[19], v0[17]);
    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_264B3C650(v1, v0[15], type metadata accessor for RTIMessage);
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v11 = v0[14];
    v12 = v0[15];
    v13 = sub_264B40964();
    v0[28] = __swift_project_value_buffer(v13, qword_27FFA71B8);
    sub_264B3C4B0(v12, v11, type metadata accessor for RTIMessage);
    v14 = sub_264B40944();
    v15 = sub_264B41484();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[14];
    if (v16)
    {
      v18 = v0[13];
      v19 = v0[11];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136446210;
      sub_264B3C4B0(v17, v18, type metadata accessor for RTIMessage);
      v22 = sub_264B41064();
      v24 = v23;
      sub_264B3C518(v17, type metadata accessor for RTIMessage);
      v25 = sub_2649CC004(v22, v24, &v38);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2649C6000, v14, v15, "Consuming RTI event: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    else
    {

      sub_264B3C518(v17, type metadata accessor for RTIMessage);
    }

    v26 = v0[15];
    v27 = v0[11];
    v37 = v0[10];
    v28 = v0[9];
    ObjectType = swift_getObjectType();
    v0[5] = v27;
    v0[6] = &off_28765CD50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_264B3C4B0(v26, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
    v31 = *(v37 + 32);
    v36 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    v0[29] = v33;
    *v33 = v0;
    v33[1] = sub_264B2F634;
    v35 = v0[9];
    v34 = v0[10];

    return (v36)(v0 + 2, ObjectType, v34);
  }
}

uint64_t sub_264B2F634()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v6 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_264B2F810;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264B2F750;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B2F750()
{
  sub_264B3C518(v0[15], type metadata accessor for RTIMessage);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_264B2F110;
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_264B2F810()
{
  v1 = v0[30];
  v2 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume RTI event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[31] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2F99C, v12, v11);
}

uint64_t sub_264B2F99C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 56);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 264) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_264B2FA84;
  v4 = *(v0 + 56);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2FA84()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B2FB80, 0, 0);
}

uint64_t sub_264B2FB80()
{
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[7] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v4 = *(v3 + 8);
  (*v3)(v1);

  sub_264B3C518(v2, type metadata accessor for RTIMessage);
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[16];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v6 + 8))(v5, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_264B2FCC0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v49 = *(v2 - 8);
  v50 = v2;
  v51 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA00, &unk_264B4CBA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA18, &qword_264B4CBD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v16 = *(v52 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v52);
  v19 = &v40 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v20 = *(v43 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v43);
  v42 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v54 = &v40 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
  (*(v12 + 104))(v15, *MEMORY[0x277D85778], v11);
  v45 = v19;
  sub_264B41284();
  (*(v12 + 8))(v15, v11);
  v44 = v16;
  v24 = v52;
  (*(v16 + 16))(v10, v19, v52);
  (*(v16 + 56))(v10, 0, 1, v24);
  v25 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v26 = v46;
  swift_beginAccess();
  sub_2649FECCC(v10, v26 + v25, &unk_27FF8AA00, &unk_264B4CBA0);
  swift_endAccess();
  v27 = v53;
  sub_264B41254();
  v28 = sub_264B41274();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v41 = swift_allocObject();
  swift_weakInit();
  v29 = v49;
  v30 = v47;
  v31 = v50;
  (*(v49 + 16))(v47, v48, v50);
  v32 = v42;
  v33 = v43;
  (*(v20 + 16))(v42, v54, v43);
  v34 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v35 = (v51 + *(v20 + 80) + v34) & ~*(v20 + 80);
  v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  (*(v29 + 32))(v37 + v34, v30, v31);
  (*(v20 + 32))(v37 + v35, v32, v33);
  *(v37 + v36) = v41;
  v38 = v53;
  sub_2649F62D0(0, 0, v53, &unk_264B58560, v37);

  sub_2649D04D4(v38, &qword_27FF898C0, &unk_264B44190);
  (*(v44 + 8))(v45, v52);
  return (*(v20 + 8))(v54, v33);
}

uint64_t sub_264B3029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = type metadata accessor for ControlMessage();
  v6[21] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA40, &qword_264B4CBF8);
  v6[23] = v9;
  v10 = *(v9 - 8);
  v6[24] = v10;
  v11 = *(v10 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B3039C, 0, 0);
}

uint64_t sub_264B3039C()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  sub_264B412C4();
  swift_beginAccess();
  v0[26] = 0;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_264B304AC;
  v7 = v0[25];
  v8 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v8);
}

uint64_t sub_264B304AC()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B305A8, 0, 0);
}

uint64_t sub_264B305A8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 160);
    sub_2649D2AAC((v0 + 16), v0 + 56);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
      *(v0 + 224) = v3;

      return MEMORY[0x2822009F8](sub_264B3073C, v3, 0);
    }

    else
    {
      v7 = *(v0 + 208);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      *(v0 + 208) = v7;
      v8 = *(MEMORY[0x277D85798] + 4);
      v9 = swift_task_alloc();
      *(v0 + 216) = v9;
      *v9 = v0;
      v9[1] = sub_264B304AC;
      v10 = *(v0 + 200);
      v11 = *(v0 + 184);

      return MEMORY[0x2822003E8](v0 + 16, 0, 0, v11);
    }
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    v4 = *(v0 + 200);
    v5 = *(v0 + 176);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_264B3073C()
{
  v1 = *(v0 + 224);
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  ObjectType = swift_getObjectType();
  v5 = (*(v2 + 32))(ObjectType, v2);
  if (!*(v5 + 16) || (v6 = *(v5 + 40), v7 = v5, sub_264B41B84(), MEMORY[0x266748E90](0), v8 = sub_264B41BB4(), v9 = -1 << *(v7 + 32), v10 = v8 & ~v9, ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_6:
    v12 = *(v0 + 224);

    sub_264A78FFC();
    v13 = swift_allocError();
    *v14 = 3;
    swift_willThrow();
LABEL_7:

    *(v0 + 264) = v13;

    return MEMORY[0x2822009F8](sub_264B30D70, 0, 0);
  }

  v11 = ~v9;
  while ((*(*(v7 + 48) + v10) & 1) != 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);

  v19 = *(v15 + 136);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v20);
  (*(v21 + 8))(v20, v21);
  sub_264B3B85C(&qword_27FF8A5E0, type metadata accessor for ControlMessage);
  v23 = sub_264B3FF44();
  *(v0 + 232) = v23;
  *(v0 + 240) = v22;
  v24 = *(v0 + 176);
  if (v16)
  {
    v13 = v16;
    v25 = *(v0 + 224);
    sub_264B3C518(v24, type metadata accessor for ControlMessage);
    goto LABEL_7;
  }

  v26 = v23;
  v27 = v22;
  sub_264B3C518(v24, type metadata accessor for ControlMessage);
  v28 = *(v1 + 120);
  v29 = *(v1 + 128);
  v30 = swift_getObjectType();
  *(v0 + 297) = 0;
  v31 = *(v29 + 40);
  v35 = (v31 + *v31);
  v32 = v31[1];
  v33 = swift_task_alloc();
  *(v0 + 248) = v33;
  *v33 = v0;
  v33[1] = sub_264B30AAC;

  return v35(v26, v27, v0 + 297, v30, v29);
}

uint64_t sub_264B30AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_264B30CF0;
  }

  else
  {
    v5 = sub_264B30BC4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264B30BC4()
{
  v1 = v0[28];
  sub_2649DEF6C(v0[29], v0[30]);

  return MEMORY[0x2822009F8](sub_264B30C38, 0, 0);
}

uint64_t sub_264B30C38()
{
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v0[26] = v1;
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_264B304AC;
  v4 = v0[25];
  v5 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_264B30CF0()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];

  sub_2649DEF6C(v1, v2);
  v0[33] = v0[32];

  return MEMORY[0x2822009F8](sub_264B30D70, 0, 0);
}

uint64_t sub_264B30D70()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send event, interrupting for: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = *(v0 + 160);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    sub_264B41244();
    *(v0 + 280) = sub_264B41234();
    v14 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B30FDC, v14, v13);
  }

  else
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 184);

    (*(v16 + 8))(v15, v17);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v18 = *(v0 + 200);
    v19 = *(v0 + 176);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_264B30FDC()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 296) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  *v3 = v0;
  v3[1] = sub_264B310C0;
  v4 = *(v0 + 272);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B310C0()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B311BC, 0, 0);
}

uint64_t sub_264B311BC()
{
  v1 = *(v0 + 272);
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler + 8);
  (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(*(v0 + 264));

  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_264B31284(uint64_t a1)
{
  v2[63] = a1;
  v2[64] = v1;
  v3 = type metadata accessor for RTIMessage();
  v2[65] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v5 = type metadata accessor for HIDMessage();
  v2[67] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[68] = swift_task_alloc();
  v7 = type metadata accessor for ControlMessage();
  v2[69] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B31384, 0, 0);
}

uint64_t sub_264B31384()
{
  v1 = *(*(v0 + 504) + 16);
  *(v0 + 576) = v1;
  if (!v1)
  {
LABEL_27:
    v51 = *(v0 + 568);
    v52 = *(v0 + 560);
    v53 = *(v0 + 544);
    v54 = *(v0 + 528);

    v55 = *(v0 + 8);

    return v55();
  }

  v2 = 0;
  *(v0 + 584) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer;
  *(v0 + 592) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer;
  *(v0 + 600) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer;
  *(v0 + 608) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer;
  *(v0 + 616) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer;
  *(v0 + 624) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer;
  *(v0 + 632) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  while (1)
  {
    *(v0 + 640) = v2;
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    v7 = (*(v0 + 504) + 40 * v2);
    v8 = v7[7];
    v9 = v7[8];
    __swift_project_boxed_opaque_existential_1(v7 + 4, v8);
    (*(v9 + 8))(v8, v9);
    sub_264B3C4B0(v4, v5, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v38 = *(v0 + 616);
          v39 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v40 = *(v39 + v38);
          *(v0 + 728) = v40;
          if (v40)
          {
            v66 = *(v0 + 544);
            v67 = *(v0 + 536);
            v59 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v67;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v66, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v69 = *(v59 + 32);
            swift_unknownObjectRetain();
            v108 = (v69 + *v69);
            v70 = v69[1];
            v71 = swift_task_alloc();
            *(v0 + 736) = v71;
            *v71 = v0;
            v71[1] = sub_264B33950;
            v65 = v0 + 384;
            goto LABEL_37;
          }

          v27 = *(v0 + 568);
          v41 = *(v0 + 544);
          v42 = type metadata accessor for HIDMessage;
          goto LABEL_3;
        }

        v19 = *(v0 + 624);
        v20 = *(v0 + 560);
        v21 = *(v0 + 512);
        v22 = *v20;
        *(v0 + 672) = *v20;
        v23 = v20[1];
        *(v0 + 680) = v23;
        v24 = v20[2];
        *(v0 + 688) = v24;
        v25 = v20[3];
        *(v0 + 696) = v25;
        v26 = *(v21 + v19);
        *(v0 + 704) = v26;
        if (v26)
        {
          v59 = *(v21 + v19 + 8);
          v72 = v22;
          v73 = v23;
          v74 = v24;
          v75 = v25;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v76 = swift_allocObject();
          *&v77 = v72;
          *(&v77 + 1) = v73;
          *&v78 = v74;
          *(&v78 + 1) = v75;
          *(v0 + 424) = v76;
          *(v76 + 16) = v77;
          *(v76 + 32) = v78;
          v79 = *(v59 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v72, v73, v74, v75);
          v108 = (v79 + *v79);
          v80 = v79[1];
          v81 = swift_task_alloc();
          *(v0 + 712) = v81;
          *v81 = v0;
          v81[1] = sub_264B32C6C;
          v65 = v0 + 424;
          goto LABEL_37;
        }

        v27 = *(v0 + 568);
        sub_264A187D4(v22, v23, v24, v25);
LABEL_4:
        v3 = v27;
      }

      else
      {
        v35 = *(v0 + 632);
        v36 = *(v0 + 512);
        v37 = *(v36 + v35);
        *(v0 + 648) = v37;
        if (v37)
        {
          v93 = *(v0 + 560);
          v59 = *(v36 + v35 + 8);
          v94 = *(v93 + 32);
          ObjectType = swift_getObjectType();
          v109 = v93[1];
          v110 = *v93;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v95 = swift_allocObject();
          *(v0 + 464) = v95;
          *(v95 + 16) = v110;
          *(v95 + 32) = v109;
          *(v95 + 48) = v94;
          v96 = *(v59 + 32);
          swift_unknownObjectRetain();
          v108 = (v96 + *v96);
          v97 = v96[1];
          v98 = swift_task_alloc();
          *(v0 + 656) = v98;
          *v98 = v0;
          v98[1] = sub_264B31F98;
          v65 = v0 + 464;
          goto LABEL_37;
        }

        v3 = *(v0 + 568);
      }

      sub_264B3C518(v3, type metadata accessor for ControlMessage);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v11 = *(v0 + 608);
      v12 = *(v0 + 560);
      v13 = *(v0 + 512);
      v15 = v12[1];
      v14 = v12[2];
      *(v0 + 16) = *v12;
      *(v0 + 32) = v15;
      *(v0 + 48) = v14;
      v17 = v12[4];
      v16 = v12[5];
      v18 = v12[3];
      *(v0 + 112) = *(v12 + 12);
      *(v0 + 80) = v17;
      *(v0 + 96) = v16;
      *(v0 + 64) = v18;
      if (*(v13 + v11))
      {
        v59 = *(v13 + v11 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v82 = swift_allocObject();
        *(v0 + 344) = v82;
        memmove((v82 + 16), v12, 0x68uLL);
        v83 = *(v59 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v108 = (v83 + *v83);
        v84 = v83[1];
        v85 = swift_task_alloc();
        *(v0 + 752) = v85;
        *v85 = v0;
        v85[1] = sub_264B34620;
        v65 = v0 + 344;
        goto LABEL_37;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v43 = *(v0 + 600);
      v44 = *(v0 + 560);
      v45 = *(v0 + 512);
      v46 = *v44;
      *(v0 + 768) = *v44;
      v47 = v44[1];
      *(v0 + 776) = v47;
      if (*(v45 + v43))
      {
        v86 = *(v45 + v43 + 8);
        v87 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v46;
        *(v0 + 312) = v47;
        v88 = *(v86 + 32);
        sub_264A5448C(v46, v47);
        v108 = (v88 + *v88);
        v89 = v88[1];
        v90 = swift_task_alloc();
        *(v0 + 784) = v90;
        *v90 = v0;
        v90[1] = sub_264B35324;
        v65 = v0 + 304;
        v91 = v87;
        v92 = v86;
        goto LABEL_38;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v46, v47);
    }

LABEL_6:
    v2 = *(v0 + 640) + 1;
    if (v2 == *(v0 + 576))
    {
      goto LABEL_27;
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    v48 = *(v0 + 584);
    v49 = *(v0 + 512);
    sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
    v50 = *(v49 + v48);
    *(v0 + 848) = v50;
    if (v50)
    {
      v57 = *(v0 + 528);
      v58 = *(v0 + 520);
      v59 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v58;
      *(v0 + 256) = &off_28765CD50;
      v61 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v57, v61, type metadata accessor for RTIMessage);
      v62 = *(v59 + 32);
      swift_unknownObjectRetain();
      v108 = (v62 + *v62);
      v63 = v62[1];
      v64 = swift_task_alloc();
      *(v0 + 856) = v64;
      *v64 = v0;
      v64[1] = sub_264B36D10;
      v65 = v0 + 224;
      goto LABEL_37;
    }

    v27 = *(v0 + 568);
    v41 = *(v0 + 528);
    v42 = type metadata accessor for RTIMessage;
LABEL_3:
    sub_264B3C518(v41, v42);
    goto LABEL_4;
  }

  v28 = *(v0 + 592);
  v29 = *(v0 + 560);
  v30 = *(v0 + 512);
  v31 = *v29;
  *(v0 + 800) = *v29;
  v32 = *(v29 + 8);
  *(v0 + 808) = v32;
  v33 = *(v29 + 24);
  *(v0 + 816) = v33;
  v34 = *(v30 + v28);
  *(v0 + 824) = v34;
  if (!v34)
  {
    v27 = *(v0 + 568);
    sub_2649DEF6C(v31, v32);

    goto LABEL_4;
  }

  v59 = *(v30 + v28 + 8);
  v99 = *(v29 + 33);
  v100 = *(v29 + 32);
  v101 = *(v29 + 16);
  v102 = v31;
  v103 = v32;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v104 = swift_allocObject();
  *(v0 + 264) = v104;
  *(v104 + 16) = v102;
  *(v104 + 24) = v103;
  *(v104 + 32) = v101;
  *(v104 + 40) = v33;
  *(v104 + 48) = v100;
  *(v104 + 49) = v99;
  v105 = *(v59 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v102, v103);

  v108 = (v105 + *v105);
  v106 = v105[1];
  v107 = swift_task_alloc();
  *(v0 + 832) = v107;
  *v107 = v0;
  v107[1] = sub_264B3602C;
  v65 = v0 + 264;
LABEL_37:
  v91 = ObjectType;
  v92 = v59;
LABEL_38:

  return v108(v65, v91, v92);
}

uint64_t sub_264B31F98()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v7 = *v1;
  *(*v1 + 664) = v0;

  v4 = *(v2 + 648);
  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_264B379E0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 464));
    v5 = sub_264B320C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264B320C4()
{
LABEL_1:
  v1 = *(v0 + 568);
  while (2)
  {
    sub_264B3C518(v1, type metadata accessor for ControlMessage);
    while (1)
    {
      while (1)
      {
        v2 = *(v0 + 640) + 1;
        if (v2 == *(v0 + 576))
        {
          v59 = *(v0 + 568);
          v60 = *(v0 + 560);
          v61 = *(v0 + 544);
          v62 = *(v0 + 528);

          v63 = *(v0 + 8);

          return v63();
        }

        *(v0 + 640) = v2;
        v3 = *(v0 + 568);
        v4 = *(v0 + 560);
        v5 = *(v0 + 552);
        v6 = (*(v0 + 504) + 40 * v2);
        v7 = v6[7];
        v8 = v6[8];
        __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
        (*(v8 + 8))(v7, v8);
        sub_264B3C4B0(v3, v4, type metadata accessor for ControlMessage);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 3)
        {
          break;
        }

        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v31 = *(v0 + 624);
            v32 = *(v0 + 560);
            v33 = *(v0 + 512);
            v34 = *v32;
            *(v0 + 672) = *v32;
            v35 = v32[1];
            *(v0 + 680) = v35;
            v36 = v32[2];
            *(v0 + 688) = v36;
            v37 = v32[3];
            *(v0 + 696) = v37;
            v38 = *(v33 + v31);
            *(v0 + 704) = v38;
            if (!v38)
            {
              v30 = *(v0 + 568);
              sub_264A187D4(v34, v35, v36, v37);
              goto LABEL_3;
            }

            v51 = *(v33 + v31 + 8);
            v82 = v34;
            v83 = v35;
            v84 = v36;
            v85 = v37;
            ObjectType = swift_getObjectType();
            *(v0 + 448) = &type metadata for SystemGestureEvent;
            *(v0 + 456) = &off_28765C718;
            v86 = swift_allocObject();
            *&v87 = v82;
            *(&v87 + 1) = v83;
            *&v88 = v84;
            *(&v88 + 1) = v85;
            *(v0 + 424) = v86;
            *(v86 + 16) = v87;
            *(v86 + 32) = v88;
            v89 = *(v51 + 32);
            swift_unknownObjectRetain();
            sub_264A18774(v82, v83, v84, v85);
            v108 = (v89 + *v89);
            v90 = v89[1];
            v91 = swift_task_alloc();
            *(v0 + 712) = v91;
            *v91 = v0;
            v91[1] = sub_264B32C6C;
            v58 = v0 + 424;
            goto LABEL_35;
          }

          v47 = *(v0 + 632);
          v48 = *(v0 + 512);
          v49 = *(v48 + v47);
          *(v0 + 648) = v49;
          if (v49)
          {
            v50 = *(v0 + 560);
            v51 = *(v48 + v47 + 8);
            v52 = *(v50 + 32);
            ObjectType = swift_getObjectType();
            v107 = v50[1];
            v109 = *v50;
            *(v0 + 488) = &type metadata for DrawEvent;
            *(v0 + 496) = &off_28765B2B0;
            v54 = swift_allocObject();
            *(v0 + 464) = v54;
            *(v54 + 16) = v109;
            *(v54 + 32) = v107;
            *(v54 + 48) = v52;
            v55 = *(v51 + 32);
            swift_unknownObjectRetain();
            v108 = (v55 + *v55);
            v56 = v55[1];
            v57 = swift_task_alloc();
            *(v0 + 656) = v57;
            *v57 = v0;
            v57[1] = sub_264B31F98;
            v58 = v0 + 464;
            goto LABEL_35;
          }

          goto LABEL_1;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v44 = *(v0 + 616);
          v45 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v46 = *(v45 + v44);
          *(v0 + 728) = v46;
          if (v46)
          {
            v92 = *(v0 + 544);
            v93 = *(v0 + 536);
            v51 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v93;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v92, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v95 = *(v51 + 32);
            swift_unknownObjectRetain();
            v108 = (v95 + *v95);
            v96 = v95[1];
            v97 = swift_task_alloc();
            *(v0 + 736) = v97;
            *v97 = v0;
            v97[1] = sub_264B33950;
            v58 = v0 + 384;
            goto LABEL_35;
          }

          v30 = *(v0 + 568);
          v42 = *(v0 + 544);
          v43 = type metadata accessor for HIDMessage;
          goto LABEL_2;
        }

        v10 = *(v0 + 608);
        v11 = *(v0 + 560);
        v12 = *(v0 + 512);
        v14 = v11[1];
        v13 = v11[2];
        *(v0 + 16) = *v11;
        *(v0 + 32) = v14;
        *(v0 + 48) = v13;
        v16 = v11[4];
        v15 = v11[5];
        v17 = v11[3];
        *(v0 + 112) = *(v11 + 12);
        *(v0 + 80) = v16;
        *(v0 + 96) = v15;
        *(v0 + 64) = v17;
        if (*(v12 + v10))
        {
          v51 = *(v12 + v10 + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 368) = &type metadata for StatusEvent;
          *(v0 + 376) = &off_28765B558;
          v65 = swift_allocObject();
          *(v0 + 344) = v65;
          memmove((v65 + 16), v11, 0x68uLL);
          v66 = *(v51 + 32);
          sub_264A7D664(v0 + 16, v0 + 120);
          v108 = (v66 + *v66);
          v67 = v66[1];
          v68 = swift_task_alloc();
          *(v0 + 752) = v68;
          *v68 = v0;
          v68[1] = sub_264B34620;
          v58 = v0 + 344;
          goto LABEL_35;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_264A7DB74(v0 + 16);
      }

      if (EnumCaseMultiPayload != 4)
      {
        break;
      }

      v18 = *(v0 + 600);
      v19 = *(v0 + 560);
      v20 = *(v0 + 512);
      v21 = *v19;
      *(v0 + 768) = *v19;
      v22 = v19[1];
      *(v0 + 776) = v22;
      if (*(v20 + v18))
      {
        v69 = *(v20 + v18 + 8);
        v70 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v21;
        *(v0 + 312) = v22;
        v71 = *(v69 + 32);
        sub_264A5448C(v21, v22);
        v108 = (v71 + *v71);
        v72 = v71[1];
        v73 = swift_task_alloc();
        *(v0 + 784) = v73;
        *v73 = v0;
        v73[1] = sub_264B35324;
        v58 = v0 + 304;
        v74 = v70;
        v75 = v69;
        goto LABEL_36;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v21, v22);
    }

    if (EnumCaseMultiPayload != 5)
    {
      v39 = *(v0 + 584);
      v40 = *(v0 + 512);
      sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
      v41 = *(v40 + v39);
      *(v0 + 848) = v41;
      if (v41)
      {
        v76 = *(v0 + 528);
        v77 = *(v0 + 520);
        v51 = *(*(v0 + 512) + *(v0 + 584) + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 248) = v77;
        *(v0 + 256) = &off_28765CD50;
        v78 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
        sub_264B3C4B0(v76, v78, type metadata accessor for RTIMessage);
        v79 = *(v51 + 32);
        swift_unknownObjectRetain();
        v108 = (v79 + *v79);
        v80 = v79[1];
        v81 = swift_task_alloc();
        *(v0 + 856) = v81;
        *v81 = v0;
        v81[1] = sub_264B36D10;
        v58 = v0 + 224;
        goto LABEL_35;
      }

      v30 = *(v0 + 568);
      v42 = *(v0 + 528);
      v43 = type metadata accessor for RTIMessage;
LABEL_2:
      sub_264B3C518(v42, v43);
LABEL_3:
      v1 = v30;
      continue;
    }

    break;
  }

  v23 = *(v0 + 592);
  v24 = *(v0 + 560);
  v25 = *(v0 + 512);
  v26 = *v24;
  *(v0 + 800) = *v24;
  v27 = *(v24 + 8);
  *(v0 + 808) = v27;
  v28 = *(v24 + 24);
  *(v0 + 816) = v28;
  v29 = *(v25 + v23);
  *(v0 + 824) = v29;
  if (!v29)
  {
    v30 = *(v0 + 568);
    sub_2649DEF6C(v26, v27);

    goto LABEL_3;
  }

  v51 = *(v25 + v23 + 8);
  v98 = *(v24 + 33);
  v99 = *(v24 + 32);
  v100 = *(v24 + 16);
  v101 = v26;
  v102 = v27;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v103 = swift_allocObject();
  *(v0 + 264) = v103;
  *(v103 + 16) = v101;
  *(v103 + 24) = v102;
  *(v103 + 32) = v100;
  *(v103 + 40) = v28;
  *(v103 + 48) = v99;
  *(v103 + 49) = v98;
  v104 = *(v51 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v101, v102);

  v108 = (v104 + *v104);
  v105 = v104[1];
  v106 = swift_task_alloc();
  *(v0 + 832) = v106;
  *v106 = v0;
  v106[1] = sub_264B3602C;
  v58 = v0 + 264;
LABEL_35:
  v74 = ObjectType;
  v75 = v51;
LABEL_36:

  return v108(v58, v74, v75);
}

uint64_t sub_264B32C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v7 = *v1;
  *(*v1 + 720) = v0;

  v4 = *(v2 + 704);
  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_264B37A94;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 424));
    v5 = sub_264B32D98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264B32D98()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  do
  {
    v5 = *(v0 + 568);
    sub_264A187D4(v4, v3, v2, v1);
LABEL_4:
    v6 = v5;
    while (2)
    {
      sub_264B3C518(v6, type metadata accessor for ControlMessage);
      while (1)
      {
        while (1)
        {
          v7 = *(v0 + 640) + 1;
          if (v7 == *(v0 + 576))
          {
            v63 = *(v0 + 568);
            v64 = *(v0 + 560);
            v65 = *(v0 + 544);
            v66 = *(v0 + 528);

            v67 = *(v0 + 8);

            return v67();
          }

          *(v0 + 640) = v7;
          v8 = *(v0 + 568);
          v9 = *(v0 + 560);
          v10 = *(v0 + 552);
          v11 = (*(v0 + 504) + 40 * v7);
          v12 = v11[7];
          v13 = v11[8];
          __swift_project_boxed_opaque_existential_1(v11 + 4, v12);
          (*(v13 + 8))(v12, v13);
          sub_264B3C4B0(v8, v9, type metadata accessor for ControlMessage);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 3)
          {
            break;
          }

          if (EnumCaseMultiPayload != 4)
          {
            if (EnumCaseMultiPayload != 5)
            {
              v38 = *(v0 + 584);
              v39 = *(v0 + 512);
              sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
              v40 = *(v39 + v38);
              *(v0 + 848) = v40;
              if (v40)
              {
                v80 = *(v0 + 528);
                v81 = *(v0 + 520);
                v50 = *(*(v0 + 512) + *(v0 + 584) + 8);
                ObjectType = swift_getObjectType();
                *(v0 + 248) = v81;
                *(v0 + 256) = &off_28765CD50;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
                sub_264B3C4B0(v80, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
                v83 = *(v50 + 32);
                swift_unknownObjectRetain();
                v107 = (v83 + *v83);
                v84 = v83[1];
                v85 = swift_task_alloc();
                *(v0 + 856) = v85;
                *v85 = v0;
                v85[1] = sub_264B36D10;
                v62 = v0 + 224;
                goto LABEL_36;
              }

              v5 = *(v0 + 568);
              v41 = *(v0 + 528);
              v42 = type metadata accessor for RTIMessage;
LABEL_3:
              sub_264B3C518(v41, v42);
              goto LABEL_4;
            }

            v31 = *(v0 + 592);
            v32 = *(v0 + 560);
            v33 = *(v0 + 512);
            v34 = *v32;
            *(v0 + 800) = *v32;
            v35 = *(v32 + 8);
            *(v0 + 808) = v35;
            v36 = *(v32 + 24);
            *(v0 + 816) = v36;
            v37 = *(v33 + v31);
            *(v0 + 824) = v37;
            if (v37)
            {
              v50 = *(v33 + v31 + 8);
              v92 = *(v32 + 33);
              v93 = *(v32 + 32);
              v94 = *(v32 + 16);
              v95 = v34;
              v96 = v35;
              ObjectType = swift_getObjectType();
              *(v0 + 288) = &type metadata for DragAndDropEvent;
              *(v0 + 296) = &off_28765F610;
              v97 = swift_allocObject();
              *(v0 + 264) = v97;
              *(v97 + 16) = v95;
              *(v97 + 24) = v96;
              *(v97 + 32) = v94;
              *(v97 + 40) = v36;
              *(v97 + 48) = v93;
              *(v97 + 49) = v92;
              v98 = *(v50 + 32);
              swift_unknownObjectRetain();
              sub_2649DEF18(v95, v96);

              v107 = (v98 + *v98);
              v99 = v98[1];
              v100 = swift_task_alloc();
              *(v0 + 832) = v100;
              *v100 = v0;
              v100[1] = sub_264B3602C;
              v62 = v0 + 264;
              goto LABEL_36;
            }

            v5 = *(v0 + 568);
            sub_2649DEF6C(v34, v35);

            goto LABEL_4;
          }

          v23 = *(v0 + 600);
          v24 = *(v0 + 560);
          v25 = *(v0 + 512);
          v26 = *v24;
          *(v0 + 768) = *v24;
          v27 = v24[1];
          *(v0 + 776) = v27;
          if (*(v25 + v23))
          {
            v73 = *(v25 + v23 + 8);
            v74 = swift_getObjectType();
            *(v0 + 328) = &type metadata for AccessibilityMessage;
            *(v0 + 336) = &off_28765A468;
            *(v0 + 304) = v26;
            *(v0 + 312) = v27;
            v75 = *(v73 + 32);
            sub_264A5448C(v26, v27);
            v107 = (v75 + *v75);
            v76 = v75[1];
            v77 = swift_task_alloc();
            *(v0 + 784) = v77;
            *v77 = v0;
            v77[1] = sub_264B35324;
            v62 = v0 + 304;
            v78 = v74;
            v79 = v73;
            goto LABEL_37;
          }

          sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
          sub_2649E7004(v26, v27);
        }

        if (EnumCaseMultiPayload <= 1)
        {
          break;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v43 = *(v0 + 616);
          v44 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v45 = *(v44 + v43);
          *(v0 + 728) = v45;
          if (v45)
          {
            v86 = *(v0 + 544);
            v87 = *(v0 + 536);
            v50 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v87;
            *(v0 + 416) = &off_28765E6C8;
            v88 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v86, v88, type metadata accessor for HIDMessage);
            v89 = *(v50 + 32);
            swift_unknownObjectRetain();
            v107 = (v89 + *v89);
            v90 = v89[1];
            v91 = swift_task_alloc();
            *(v0 + 736) = v91;
            *v91 = v0;
            v91[1] = sub_264B33950;
            v62 = v0 + 384;
            goto LABEL_36;
          }

          v5 = *(v0 + 568);
          v41 = *(v0 + 544);
          v42 = type metadata accessor for HIDMessage;
          goto LABEL_3;
        }

        v15 = *(v0 + 608);
        v16 = *(v0 + 560);
        v17 = *(v0 + 512);
        v19 = v16[1];
        v18 = v16[2];
        *(v0 + 16) = *v16;
        *(v0 + 32) = v19;
        *(v0 + 48) = v18;
        v21 = v16[4];
        v20 = v16[5];
        v22 = v16[3];
        *(v0 + 112) = *(v16 + 12);
        *(v0 + 80) = v21;
        *(v0 + 96) = v20;
        *(v0 + 64) = v22;
        if (*(v17 + v15))
        {
          v50 = *(v17 + v15 + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 368) = &type metadata for StatusEvent;
          *(v0 + 376) = &off_28765B558;
          v69 = swift_allocObject();
          *(v0 + 344) = v69;
          memmove((v69 + 16), v16, 0x68uLL);
          v70 = *(v50 + 32);
          sub_264A7D664(v0 + 16, v0 + 120);
          v107 = (v70 + *v70);
          v71 = v70[1];
          v72 = swift_task_alloc();
          *(v0 + 752) = v72;
          *v72 = v0;
          v72[1] = sub_264B34620;
          v62 = v0 + 344;
          goto LABEL_36;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_264A7DB74(v0 + 16);
      }

      if (!EnumCaseMultiPayload)
      {
        v28 = *(v0 + 632);
        v29 = *(v0 + 512);
        v30 = *(v29 + v28);
        *(v0 + 648) = v30;
        if (v30)
        {
          v101 = *(v0 + 560);
          v50 = *(v29 + v28 + 8);
          v102 = *(v101 + 32);
          ObjectType = swift_getObjectType();
          v108 = v101[1];
          v109 = *v101;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v103 = swift_allocObject();
          *(v0 + 464) = v103;
          *(v103 + 16) = v109;
          *(v103 + 32) = v108;
          *(v103 + 48) = v102;
          v104 = *(v50 + 32);
          swift_unknownObjectRetain();
          v107 = (v104 + *v104);
          v105 = v104[1];
          v106 = swift_task_alloc();
          *(v0 + 656) = v106;
          *v106 = v0;
          v106[1] = sub_264B31F98;
          v62 = v0 + 464;
          goto LABEL_36;
        }

        v6 = *(v0 + 568);
        continue;
      }

      break;
    }

    v46 = *(v0 + 624);
    v47 = *(v0 + 560);
    v48 = *(v0 + 512);
    v4 = *v47;
    *(v0 + 672) = *v47;
    v3 = v47[1];
    *(v0 + 680) = v3;
    v2 = v47[2];
    *(v0 + 688) = v2;
    v1 = v47[3];
    *(v0 + 696) = v1;
    v49 = *(v48 + v46);
    *(v0 + 704) = v49;
  }

  while (!v49);
  v50 = *(v48 + v46 + 8);
  v51 = v4;
  v52 = v1;
  v53 = v2;
  v54 = v3;
  ObjectType = swift_getObjectType();
  *(v0 + 448) = &type metadata for SystemGestureEvent;
  *(v0 + 456) = &off_28765C718;
  v56 = swift_allocObject();
  *&v57 = v51;
  *(&v57 + 1) = v54;
  *&v58 = v53;
  *(&v58 + 1) = v52;
  *(v0 + 424) = v56;
  *(v56 + 16) = v57;
  *(v56 + 32) = v58;
  v59 = *(v50 + 32);
  swift_unknownObjectRetain();
  sub_264A18774(v51, v54, v53, v52);
  v107 = (v59 + *v59);
  v60 = v59[1];
  v61 = swift_task_alloc();
  *(v0 + 712) = v61;
  *v61 = v0;
  v61[1] = sub_264B32C6C;
  v62 = v0 + 424;
LABEL_36:
  v78 = ObjectType;
  v79 = v50;
LABEL_37:

  return v107(v62, v78, v79);
}

uint64_t sub_264B33950()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v7 = *v1;
  *(*v1 + 744) = v0;

  v4 = *(v2 + 728);
  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_264B37B60;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 384));
    v5 = sub_264B33A7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264B33A7C()
{
LABEL_1:
  v1 = *(v0 + 568);
  v2 = *(v0 + 544);
  v3 = type metadata accessor for HIDMessage;
LABEL_2:
  sub_264B3C518(v2, v3);
LABEL_3:
  v4 = v1;
LABEL_4:
  sub_264B3C518(v4, type metadata accessor for ControlMessage);
  while (1)
  {
    v5 = *(v0 + 640) + 1;
    if (v5 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 640) = v5;
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = (*(v0 + 504) + 40 * v5);
    v10 = v9[7];
    v11 = v9[8];
    __swift_project_boxed_opaque_existential_1(v9 + 4, v10);
    (*(v11 + 8))(v10, v11);
    sub_264B3C4B0(v6, v7, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v29 = *(v0 + 592);
          v30 = *(v0 + 560);
          v31 = *(v0 + 512);
          v32 = *v30;
          *(v0 + 800) = *v30;
          v33 = *(v30 + 8);
          *(v0 + 808) = v33;
          v34 = *(v30 + 24);
          *(v0 + 816) = v34;
          v35 = *(v31 + v29);
          *(v0 + 824) = v35;
          if (!v35)
          {
            v1 = *(v0 + 568);
            sub_2649DEF6C(v32, v33);

            goto LABEL_3;
          }

          v52 = *(v31 + v29 + 8);
          v76 = *(v30 + 33);
          v77 = *(v30 + 32);
          v78 = *(v30 + 16);
          v79 = v32;
          v80 = v33;
          ObjectType = swift_getObjectType();
          *(v0 + 288) = &type metadata for DragAndDropEvent;
          *(v0 + 296) = &off_28765F610;
          v81 = swift_allocObject();
          *(v0 + 264) = v81;
          *(v81 + 16) = v79;
          *(v81 + 24) = v80;
          *(v81 + 32) = v78;
          *(v81 + 40) = v34;
          *(v81 + 48) = v77;
          *(v81 + 49) = v76;
          v82 = *(v52 + 32);
          swift_unknownObjectRetain();
          sub_2649DEF18(v79, v80);

          v107 = (v82 + *v82);
          v83 = v82[1];
          v84 = swift_task_alloc();
          *(v0 + 832) = v84;
          *v84 = v0;
          v84[1] = sub_264B3602C;
          v58 = v0 + 264;
        }

        else
        {
          v44 = *(v0 + 584);
          v45 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
          v46 = *(v45 + v44);
          *(v0 + 848) = v46;
          if (!v46)
          {
            v1 = *(v0 + 568);
            v2 = *(v0 + 528);
            v3 = type metadata accessor for RTIMessage;
            goto LABEL_2;
          }

          v95 = *(v0 + 528);
          v96 = *(v0 + 520);
          v52 = *(*(v0 + 512) + *(v0 + 584) + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 248) = v96;
          *(v0 + 256) = &off_28765CD50;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
          sub_264B3C4B0(v95, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
          v98 = *(v52 + 32);
          swift_unknownObjectRetain();
          v107 = (v98 + *v98);
          v99 = v98[1];
          v100 = swift_task_alloc();
          *(v0 + 856) = v100;
          *v100 = v0;
          v100[1] = sub_264B36D10;
          v58 = v0 + 224;
        }

        goto LABEL_35;
      }

      v21 = *(v0 + 600);
      v22 = *(v0 + 560);
      v23 = *(v0 + 512);
      v24 = *v22;
      *(v0 + 768) = *v22;
      v25 = v22[1];
      *(v0 + 776) = v25;
      if (*(v23 + v21))
      {
        v65 = *(v23 + v21 + 8);
        v66 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v24;
        *(v0 + 312) = v25;
        v67 = *(v65 + 32);
        sub_264A5448C(v24, v25);
        v107 = (v67 + *v67);
        v68 = v67[1];
        v69 = swift_task_alloc();
        *(v0 + 784) = v69;
        *v69 = v0;
        v69[1] = sub_264B35324;
        v58 = v0 + 304;
        v70 = v66;
        v71 = v65;
LABEL_36:

        return v107(v58, v70, v71);
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v24, v25);
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v36 = *(v0 + 624);
          v37 = *(v0 + 560);
          v38 = *(v0 + 512);
          v39 = *v37;
          *(v0 + 672) = *v37;
          v40 = v37[1];
          *(v0 + 680) = v40;
          v41 = v37[2];
          *(v0 + 688) = v41;
          v42 = v37[3];
          *(v0 + 696) = v42;
          v43 = *(v38 + v36);
          *(v0 + 704) = v43;
          if (!v43)
          {
            v1 = *(v0 + 568);
            sub_264A187D4(v39, v40, v41, v42);
            goto LABEL_3;
          }

          v52 = *(v38 + v36 + 8);
          v85 = v39;
          v86 = v40;
          v87 = v41;
          v88 = v42;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v89 = swift_allocObject();
          *&v90 = v85;
          *(&v90 + 1) = v86;
          *&v91 = v87;
          *(&v91 + 1) = v88;
          *(v0 + 424) = v89;
          *(v89 + 16) = v90;
          *(v89 + 32) = v91;
          v92 = *(v52 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v85, v86, v87, v88);
          v107 = (v92 + *v92);
          v93 = v92[1];
          v94 = swift_task_alloc();
          *(v0 + 712) = v94;
          *v94 = v0;
          v94[1] = sub_264B32C6C;
          v58 = v0 + 424;
        }

        else
        {
          v26 = *(v0 + 632);
          v27 = *(v0 + 512);
          v28 = *(v27 + v26);
          *(v0 + 648) = v28;
          if (!v28)
          {
            v4 = *(v0 + 568);
            goto LABEL_4;
          }

          v101 = *(v0 + 560);
          v52 = *(v27 + v26 + 8);
          v102 = *(v101 + 32);
          ObjectType = swift_getObjectType();
          v108 = v101[1];
          v109 = *v101;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v103 = swift_allocObject();
          *(v0 + 464) = v103;
          *(v103 + 16) = v109;
          *(v103 + 32) = v108;
          *(v103 + 48) = v102;
          v104 = *(v52 + 32);
          swift_unknownObjectRetain();
          v107 = (v104 + *v104);
          v105 = v104[1];
          v106 = swift_task_alloc();
          *(v0 + 656) = v106;
          *v106 = v0;
          v106[1] = sub_264B31F98;
          v58 = v0 + 464;
        }

        goto LABEL_35;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v47 = *(v0 + 616);
        v48 = *(v0 + 512);
        sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
        v49 = *(v48 + v47);
        *(v0 + 728) = v49;
        if (!v49)
        {
          goto LABEL_1;
        }

        v50 = *(v0 + 544);
        v51 = *(v0 + 536);
        v52 = *(*(v0 + 512) + *(v0 + 616) + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 408) = v51;
        *(v0 + 416) = &off_28765E6C8;
        v54 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
        sub_264B3C4B0(v50, v54, type metadata accessor for HIDMessage);
        v55 = *(v52 + 32);
        swift_unknownObjectRetain();
        v107 = (v55 + *v55);
        v56 = v55[1];
        v57 = swift_task_alloc();
        *(v0 + 736) = v57;
        *v57 = v0;
        v57[1] = sub_264B33950;
        v58 = v0 + 384;
        goto LABEL_35;
      }

      v13 = *(v0 + 608);
      v14 = *(v0 + 560);
      v15 = *(v0 + 512);
      v17 = v14[1];
      v16 = v14[2];
      *(v0 + 16) = *v14;
      *(v0 + 32) = v17;
      *(v0 + 48) = v16;
      v19 = v14[4];
      v18 = v14[5];
      v20 = v14[3];
      *(v0 + 112) = *(v14 + 12);
      *(v0 + 80) = v19;
      *(v0 + 96) = v18;
      *(v0 + 64) = v20;
      if (*(v15 + v13))
      {
        v52 = *(v15 + v13 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v72 = swift_allocObject();
        *(v0 + 344) = v72;
        memmove((v72 + 16), v14, 0x68uLL);
        v73 = *(v52 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v107 = (v73 + *v73);
        v74 = v73[1];
        v75 = swift_task_alloc();
        *(v0 + 752) = v75;
        *v75 = v0;
        v75[1] = sub_264B34620;
        v58 = v0 + 344;
LABEL_35:
        v70 = ObjectType;
        v71 = v52;
        goto LABEL_36;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }
  }

  v59 = *(v0 + 568);
  v60 = *(v0 + 560);
  v61 = *(v0 + 544);
  v62 = *(v0 + 528);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_264B34620()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v6 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = sub_264B37C34;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 344));
    v4 = sub_264B3473C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B3473C()
{
  v1 = *(v0 + 568);
  sub_264A7DB74(v0 + 16);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  v2 = *(v0 + 640) + 1;
  if (v2 == *(v0 + 576))
  {
LABEL_2:
    v3 = *(v0 + 568);
    v4 = *(v0 + 560);
    v5 = *(v0 + 544);
    v6 = *(v0 + 528);

    v7 = *(v0 + 8);

    return v7();
  }

  while (1)
  {
    *(v0 + 640) = v2;
    v10 = *(v0 + 568);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = (*(v0 + 504) + 40 * v2);
    v14 = v13[7];
    v15 = v13[8];
    __swift_project_boxed_opaque_existential_1(v13 + 4, v14);
    (*(v15 + 8))(v14, v15);
    sub_264B3C4B0(v10, v11, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v44 = *(v0 + 616);
          v45 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v46 = *(v45 + v44);
          *(v0 + 728) = v46;
          if (v46)
          {
            v66 = *(v0 + 544);
            v67 = *(v0 + 536);
            v59 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v67;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v66, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v69 = *(v59 + 32);
            swift_unknownObjectRetain();
            v108 = (v69 + *v69);
            v70 = v69[1];
            v71 = swift_task_alloc();
            *(v0 + 736) = v71;
            *v71 = v0;
            v71[1] = sub_264B33950;
            v65 = v0 + 384;
            goto LABEL_37;
          }

          v33 = *(v0 + 568);
          v47 = *(v0 + 544);
          v48 = type metadata accessor for HIDMessage;
          goto LABEL_6;
        }

        v25 = *(v0 + 624);
        v26 = *(v0 + 560);
        v27 = *(v0 + 512);
        v28 = *v26;
        *(v0 + 672) = *v26;
        v29 = v26[1];
        *(v0 + 680) = v29;
        v30 = v26[2];
        *(v0 + 688) = v30;
        v31 = v26[3];
        *(v0 + 696) = v31;
        v32 = *(v27 + v25);
        *(v0 + 704) = v32;
        if (v32)
        {
          v59 = *(v27 + v25 + 8);
          v72 = v28;
          v73 = v29;
          v74 = v30;
          v75 = v31;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v76 = swift_allocObject();
          *&v77 = v72;
          *(&v77 + 1) = v73;
          *&v78 = v74;
          *(&v78 + 1) = v75;
          *(v0 + 424) = v76;
          *(v76 + 16) = v77;
          *(v76 + 32) = v78;
          v79 = *(v59 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v72, v73, v74, v75);
          v108 = (v79 + *v79);
          v80 = v79[1];
          v81 = swift_task_alloc();
          *(v0 + 712) = v81;
          *v81 = v0;
          v81[1] = sub_264B32C6C;
          v65 = v0 + 424;
          goto LABEL_37;
        }

        v33 = *(v0 + 568);
        sub_264A187D4(v28, v29, v30, v31);
LABEL_7:
        v9 = v33;
      }

      else
      {
        v41 = *(v0 + 632);
        v42 = *(v0 + 512);
        v43 = *(v42 + v41);
        *(v0 + 648) = v43;
        if (v43)
        {
          v93 = *(v0 + 560);
          v59 = *(v42 + v41 + 8);
          v94 = *(v93 + 32);
          ObjectType = swift_getObjectType();
          v109 = v93[1];
          v110 = *v93;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v95 = swift_allocObject();
          *(v0 + 464) = v95;
          *(v95 + 16) = v110;
          *(v95 + 32) = v109;
          *(v95 + 48) = v94;
          v96 = *(v59 + 32);
          swift_unknownObjectRetain();
          v108 = (v96 + *v96);
          v97 = v96[1];
          v98 = swift_task_alloc();
          *(v0 + 656) = v98;
          *v98 = v0;
          v98[1] = sub_264B31F98;
          v65 = v0 + 464;
          goto LABEL_37;
        }

        v9 = *(v0 + 568);
      }

      sub_264B3C518(v9, type metadata accessor for ControlMessage);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v17 = *(v0 + 608);
      v18 = *(v0 + 560);
      v19 = *(v0 + 512);
      v21 = v18[1];
      v20 = v18[2];
      *(v0 + 16) = *v18;
      *(v0 + 32) = v21;
      *(v0 + 48) = v20;
      v23 = v18[4];
      v22 = v18[5];
      v24 = v18[3];
      *(v0 + 112) = *(v18 + 12);
      *(v0 + 80) = v23;
      *(v0 + 96) = v22;
      *(v0 + 64) = v24;
      if (*(v19 + v17))
      {
        v59 = *(v19 + v17 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v82 = swift_allocObject();
        *(v0 + 344) = v82;
        memmove((v82 + 16), v18, 0x68uLL);
        v83 = *(v59 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v108 = (v83 + *v83);
        v84 = v83[1];
        v85 = swift_task_alloc();
        *(v0 + 752) = v85;
        *v85 = v0;
        v85[1] = sub_264B34620;
        v65 = v0 + 344;
        goto LABEL_37;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v49 = *(v0 + 600);
      v50 = *(v0 + 560);
      v51 = *(v0 + 512);
      v52 = *v50;
      *(v0 + 768) = *v50;
      v53 = v50[1];
      *(v0 + 776) = v53;
      if (*(v51 + v49))
      {
        v86 = *(v51 + v49 + 8);
        v87 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v52;
        *(v0 + 312) = v53;
        v88 = *(v86 + 32);
        sub_264A5448C(v52, v53);
        v108 = (v88 + *v88);
        v89 = v88[1];
        v90 = swift_task_alloc();
        *(v0 + 784) = v90;
        *v90 = v0;
        v90[1] = sub_264B35324;
        v65 = v0 + 304;
        v91 = v87;
        v92 = v86;
        goto LABEL_38;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v52, v53);
    }

LABEL_9:
    v2 = *(v0 + 640) + 1;
    if (v2 == *(v0 + 576))
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    v54 = *(v0 + 584);
    v55 = *(v0 + 512);
    sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
    v56 = *(v55 + v54);
    *(v0 + 848) = v56;
    if (v56)
    {
      v57 = *(v0 + 528);
      v58 = *(v0 + 520);
      v59 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v58;
      *(v0 + 256) = &off_28765CD50;
      v61 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v57, v61, type metadata accessor for RTIMessage);
      v62 = *(v59 + 32);
      swift_unknownObjectRetain();
      v108 = (v62 + *v62);
      v63 = v62[1];
      v64 = swift_task_alloc();
      *(v0 + 856) = v64;
      *v64 = v0;
      v64[1] = sub_264B36D10;
      v65 = v0 + 224;
      goto LABEL_37;
    }

    v33 = *(v0 + 568);
    v47 = *(v0 + 528);
    v48 = type metadata accessor for RTIMessage;
LABEL_6:
    sub_264B3C518(v47, v48);
    goto LABEL_7;
  }

  v34 = *(v0 + 592);
  v35 = *(v0 + 560);
  v36 = *(v0 + 512);
  v37 = *v35;
  *(v0 + 800) = *v35;
  v38 = *(v35 + 8);
  *(v0 + 808) = v38;
  v39 = *(v35 + 24);
  *(v0 + 816) = v39;
  v40 = *(v36 + v34);
  *(v0 + 824) = v40;
  if (!v40)
  {
    v33 = *(v0 + 568);
    sub_2649DEF6C(v37, v38);

    goto LABEL_7;
  }

  v59 = *(v36 + v34 + 8);
  v99 = *(v35 + 33);
  v100 = *(v35 + 32);
  v101 = *(v35 + 16);
  v102 = v37;
  v103 = v38;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v104 = swift_allocObject();
  *(v0 + 264) = v104;
  *(v104 + 16) = v102;
  *(v104 + 24) = v103;
  *(v104 + 32) = v101;
  *(v104 + 40) = v39;
  *(v104 + 48) = v100;
  *(v104 + 49) = v99;
  v105 = *(v59 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v102, v103);

  v108 = (v105 + *v105);
  v106 = v105[1];
  v107 = swift_task_alloc();
  *(v0 + 832) = v107;
  *v107 = v0;
  v107[1] = sub_264B3602C;
  v65 = v0 + 264;
LABEL_37:
  v91 = ObjectType;
  v92 = v59;
LABEL_38:

  return v108(v65, v91, v92);
}

uint64_t sub_264B35324()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v6 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v4 = sub_264B37CF4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 304));
    v4 = sub_264B35440;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B35440()
{
  v1 = *(v0 + 568);
  sub_2649E7004(*(v0 + 768), *(v0 + 776));
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  v2 = *(v0 + 640) + 1;
  if (v2 == *(v0 + 576))
  {
LABEL_2:
    v3 = *(v0 + 568);
    v4 = *(v0 + 560);
    v5 = *(v0 + 544);
    v6 = *(v0 + 528);

    v7 = *(v0 + 8);

    return v7();
  }

  while (1)
  {
    *(v0 + 640) = v2;
    v10 = *(v0 + 568);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = (*(v0 + 504) + 40 * v2);
    v14 = v13[7];
    v15 = v13[8];
    __swift_project_boxed_opaque_existential_1(v13 + 4, v14);
    (*(v15 + 8))(v14, v15);
    sub_264B3C4B0(v10, v11, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v44 = *(v0 + 616);
          v45 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v46 = *(v45 + v44);
          *(v0 + 728) = v46;
          if (v46)
          {
            v66 = *(v0 + 544);
            v67 = *(v0 + 536);
            v59 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v67;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v66, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v69 = *(v59 + 32);
            swift_unknownObjectRetain();
            v108 = (v69 + *v69);
            v70 = v69[1];
            v71 = swift_task_alloc();
            *(v0 + 736) = v71;
            *v71 = v0;
            v71[1] = sub_264B33950;
            v65 = v0 + 384;
            goto LABEL_37;
          }

          v33 = *(v0 + 568);
          v47 = *(v0 + 544);
          v48 = type metadata accessor for HIDMessage;
          goto LABEL_6;
        }

        v25 = *(v0 + 624);
        v26 = *(v0 + 560);
        v27 = *(v0 + 512);
        v28 = *v26;
        *(v0 + 672) = *v26;
        v29 = v26[1];
        *(v0 + 680) = v29;
        v30 = v26[2];
        *(v0 + 688) = v30;
        v31 = v26[3];
        *(v0 + 696) = v31;
        v32 = *(v27 + v25);
        *(v0 + 704) = v32;
        if (v32)
        {
          v59 = *(v27 + v25 + 8);
          v72 = v28;
          v73 = v29;
          v74 = v30;
          v75 = v31;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v76 = swift_allocObject();
          *&v77 = v72;
          *(&v77 + 1) = v73;
          *&v78 = v74;
          *(&v78 + 1) = v75;
          *(v0 + 424) = v76;
          *(v76 + 16) = v77;
          *(v76 + 32) = v78;
          v79 = *(v59 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v72, v73, v74, v75);
          v108 = (v79 + *v79);
          v80 = v79[1];
          v81 = swift_task_alloc();
          *(v0 + 712) = v81;
          *v81 = v0;
          v81[1] = sub_264B32C6C;
          v65 = v0 + 424;
          goto LABEL_37;
        }

        v33 = *(v0 + 568);
        sub_264A187D4(v28, v29, v30, v31);
LABEL_7:
        v9 = v33;
      }

      else
      {
        v41 = *(v0 + 632);
        v42 = *(v0 + 512);
        v43 = *(v42 + v41);
        *(v0 + 648) = v43;
        if (v43)
        {
          v93 = *(v0 + 560);
          v59 = *(v42 + v41 + 8);
          v94 = *(v93 + 32);
          ObjectType = swift_getObjectType();
          v109 = v93[1];
          v110 = *v93;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v95 = swift_allocObject();
          *(v0 + 464) = v95;
          *(v95 + 16) = v110;
          *(v95 + 32) = v109;
          *(v95 + 48) = v94;
          v96 = *(v59 + 32);
          swift_unknownObjectRetain();
          v108 = (v96 + *v96);
          v97 = v96[1];
          v98 = swift_task_alloc();
          *(v0 + 656) = v98;
          *v98 = v0;
          v98[1] = sub_264B31F98;
          v65 = v0 + 464;
          goto LABEL_37;
        }

        v9 = *(v0 + 568);
      }

      sub_264B3C518(v9, type metadata accessor for ControlMessage);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v17 = *(v0 + 608);
      v18 = *(v0 + 560);
      v19 = *(v0 + 512);
      v21 = v18[1];
      v20 = v18[2];
      *(v0 + 16) = *v18;
      *(v0 + 32) = v21;
      *(v0 + 48) = v20;
      v23 = v18[4];
      v22 = v18[5];
      v24 = v18[3];
      *(v0 + 112) = *(v18 + 12);
      *(v0 + 80) = v23;
      *(v0 + 96) = v22;
      *(v0 + 64) = v24;
      if (*(v19 + v17))
      {
        v59 = *(v19 + v17 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v82 = swift_allocObject();
        *(v0 + 344) = v82;
        memmove((v82 + 16), v18, 0x68uLL);
        v83 = *(v59 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v108 = (v83 + *v83);
        v84 = v83[1];
        v85 = swift_task_alloc();
        *(v0 + 752) = v85;
        *v85 = v0;
        v85[1] = sub_264B34620;
        v65 = v0 + 344;
        goto LABEL_37;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v49 = *(v0 + 600);
      v50 = *(v0 + 560);
      v51 = *(v0 + 512);
      v52 = *v50;
      *(v0 + 768) = *v50;
      v53 = v50[1];
      *(v0 + 776) = v53;
      if (*(v51 + v49))
      {
        v86 = *(v51 + v49 + 8);
        v87 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v52;
        *(v0 + 312) = v53;
        v88 = *(v86 + 32);
        sub_264A5448C(v52, v53);
        v108 = (v88 + *v88);
        v89 = v88[1];
        v90 = swift_task_alloc();
        *(v0 + 784) = v90;
        *v90 = v0;
        v90[1] = sub_264B35324;
        v65 = v0 + 304;
        v91 = v87;
        v92 = v86;
        goto LABEL_38;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v52, v53);
    }

LABEL_9:
    v2 = *(v0 + 640) + 1;
    if (v2 == *(v0 + 576))
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    v54 = *(v0 + 584);
    v55 = *(v0 + 512);
    sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
    v56 = *(v55 + v54);
    *(v0 + 848) = v56;
    if (v56)
    {
      v57 = *(v0 + 528);
      v58 = *(v0 + 520);
      v59 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v58;
      *(v0 + 256) = &off_28765CD50;
      v61 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v57, v61, type metadata accessor for RTIMessage);
      v62 = *(v59 + 32);
      swift_unknownObjectRetain();
      v108 = (v62 + *v62);
      v63 = v62[1];
      v64 = swift_task_alloc();
      *(v0 + 856) = v64;
      *v64 = v0;
      v64[1] = sub_264B36D10;
      v65 = v0 + 224;
      goto LABEL_37;
    }

    v33 = *(v0 + 568);
    v47 = *(v0 + 528);
    v48 = type metadata accessor for RTIMessage;
LABEL_6:
    sub_264B3C518(v47, v48);
    goto LABEL_7;
  }

  v34 = *(v0 + 592);
  v35 = *(v0 + 560);
  v36 = *(v0 + 512);
  v37 = *v35;
  *(v0 + 800) = *v35;
  v38 = *(v35 + 8);
  *(v0 + 808) = v38;
  v39 = *(v35 + 24);
  *(v0 + 816) = v39;
  v40 = *(v36 + v34);
  *(v0 + 824) = v40;
  if (!v40)
  {
    v33 = *(v0 + 568);
    sub_2649DEF6C(v37, v38);

    goto LABEL_7;
  }

  v59 = *(v36 + v34 + 8);
  v99 = *(v35 + 33);
  v100 = *(v35 + 32);
  v101 = *(v35 + 16);
  v102 = v37;
  v103 = v38;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v104 = swift_allocObject();
  *(v0 + 264) = v104;
  *(v104 + 16) = v102;
  *(v104 + 24) = v103;
  *(v104 + 32) = v101;
  *(v104 + 40) = v39;
  *(v104 + 48) = v100;
  *(v104 + 49) = v99;
  v105 = *(v59 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v102, v103);

  v108 = (v105 + *v105);
  v106 = v105[1];
  v107 = swift_task_alloc();
  *(v0 + 832) = v107;
  *v107 = v0;
  v107[1] = sub_264B3602C;
  v65 = v0 + 264;
LABEL_37:
  v91 = ObjectType;
  v92 = v59;
LABEL_38:

  return v108(v65, v91, v92);
}

uint64_t sub_264B3602C()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v7 = *v1;
  *(*v1 + 840) = v0;

  v4 = *(v2 + 824);
  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_264B37DB8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 264));
    v5 = sub_264B36158;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264B36158()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  while (2)
  {
    v4 = *(v0 + 568);
    sub_2649DEF6C(v3, v2);

LABEL_6:
    v10 = v4;
LABEL_7:
    sub_264B3C518(v10, type metadata accessor for ControlMessage);
    while (1)
    {
      v11 = *(v0 + 640) + 1;
      if (v11 == *(v0 + 576))
      {
        v64 = *(v0 + 568);
        v65 = *(v0 + 560);
        v66 = *(v0 + 544);
        v67 = *(v0 + 528);

        v68 = *(v0 + 8);

        return v68();
      }

      *(v0 + 640) = v11;
      v12 = *(v0 + 568);
      v13 = *(v0 + 560);
      v14 = *(v0 + 552);
      v15 = (*(v0 + 504) + 40 * v11);
      v16 = v15[7];
      v17 = v15[8];
      __swift_project_boxed_opaque_existential_1(v15 + 4, v16);
      (*(v17 + 8))(v16, v17);
      sub_264B3C4B0(v12, v13, type metadata accessor for ControlMessage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v35 = *(v0 + 624);
            v36 = *(v0 + 560);
            v37 = *(v0 + 512);
            v38 = *v36;
            *(v0 + 672) = *v36;
            v39 = v36[1];
            *(v0 + 680) = v39;
            v40 = v36[2];
            *(v0 + 688) = v40;
            v41 = v36[3];
            *(v0 + 696) = v41;
            v42 = *(v37 + v35);
            *(v0 + 704) = v42;
            if (!v42)
            {
              v4 = *(v0 + 568);
              sub_264A187D4(v38, v39, v40, v41);
              goto LABEL_6;
            }

            v51 = *(v37 + v35 + 8);
            v81 = v38;
            v82 = v39;
            v83 = v40;
            v84 = v41;
            ObjectType = swift_getObjectType();
            *(v0 + 448) = &type metadata for SystemGestureEvent;
            *(v0 + 456) = &off_28765C718;
            v85 = swift_allocObject();
            *&v86 = v81;
            *(&v86 + 1) = v82;
            *&v87 = v83;
            *(&v87 + 1) = v84;
            *(v0 + 424) = v85;
            *(v85 + 16) = v86;
            *(v85 + 32) = v87;
            v88 = *(v51 + 32);
            swift_unknownObjectRetain();
            sub_264A18774(v81, v82, v83, v84);
            v109 = (v88 + *v88);
            v89 = v88[1];
            v90 = swift_task_alloc();
            *(v0 + 712) = v90;
            *v90 = v0;
            v90[1] = sub_264B32C6C;
            v62 = v0 + 424;
          }

          else
          {
            v5 = *(v0 + 616);
            v6 = *(v0 + 512);
            sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
            v7 = *(v6 + v5);
            *(v0 + 728) = v7;
            if (!v7)
            {
              v4 = *(v0 + 568);
              v8 = *(v0 + 544);
              v9 = type metadata accessor for HIDMessage;
LABEL_5:
              sub_264B3C518(v8, v9);
              goto LABEL_6;
            }

            v91 = *(v0 + 544);
            v92 = *(v0 + 536);
            v51 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v92;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v91, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v94 = *(v51 + 32);
            swift_unknownObjectRetain();
            v109 = (v94 + *v94);
            v95 = v94[1];
            v96 = swift_task_alloc();
            *(v0 + 736) = v96;
            *v96 = v0;
            v96[1] = sub_264B33950;
            v62 = v0 + 384;
          }
        }

        else
        {
          v32 = *(v0 + 632);
          v33 = *(v0 + 512);
          v34 = *(v33 + v32);
          *(v0 + 648) = v34;
          if (!v34)
          {
            v10 = *(v0 + 568);
            goto LABEL_7;
          }

          v103 = *(v0 + 560);
          v51 = *(v33 + v32 + 8);
          v104 = *(v103 + 32);
          ObjectType = swift_getObjectType();
          v110 = v103[1];
          v111 = *v103;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v105 = swift_allocObject();
          *(v0 + 464) = v105;
          *(v105 + 16) = v111;
          *(v105 + 32) = v110;
          *(v105 + 48) = v104;
          v106 = *(v51 + 32);
          swift_unknownObjectRetain();
          v109 = (v106 + *v106);
          v107 = v106[1];
          v108 = swift_task_alloc();
          *(v0 + 656) = v108;
          *v108 = v0;
          v108[1] = sub_264B31F98;
          v62 = v0 + 464;
        }

        goto LABEL_36;
      }

      if (EnumCaseMultiPayload > 4)
      {
        break;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v19 = *(v0 + 608);
        v20 = *(v0 + 560);
        v21 = *(v0 + 512);
        v23 = v20[1];
        v22 = v20[2];
        *(v0 + 16) = *v20;
        *(v0 + 32) = v23;
        *(v0 + 48) = v22;
        v25 = v20[4];
        v24 = v20[5];
        v26 = v20[3];
        *(v0 + 112) = *(v20 + 12);
        *(v0 + 80) = v25;
        *(v0 + 96) = v24;
        *(v0 + 64) = v26;
        if (*(v21 + v19))
        {
          v51 = *(v21 + v19 + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 368) = &type metadata for StatusEvent;
          *(v0 + 376) = &off_28765B558;
          v71 = swift_allocObject();
          *(v0 + 344) = v71;
          memmove((v71 + 16), v20, 0x68uLL);
          v72 = *(v51 + 32);
          sub_264A7D664(v0 + 16, v0 + 120);
          v109 = (v72 + *v72);
          v73 = v72[1];
          v74 = swift_task_alloc();
          *(v0 + 752) = v74;
          *v74 = v0;
          v74[1] = sub_264B34620;
          v62 = v0 + 344;
          goto LABEL_36;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_264A7DB74(v0 + 16);
      }

      else
      {
        v27 = *(v0 + 600);
        v28 = *(v0 + 560);
        v29 = *(v0 + 512);
        v30 = *v28;
        *(v0 + 768) = *v28;
        v31 = v28[1];
        *(v0 + 776) = v31;
        if (*(v29 + v27))
        {
          v75 = *(v29 + v27 + 8);
          v76 = swift_getObjectType();
          *(v0 + 328) = &type metadata for AccessibilityMessage;
          *(v0 + 336) = &off_28765A468;
          *(v0 + 304) = v30;
          *(v0 + 312) = v31;
          v77 = *(v75 + 32);
          sub_264A5448C(v30, v31);
          v109 = (v77 + *v77);
          v78 = v77[1];
          v79 = swift_task_alloc();
          *(v0 + 784) = v79;
          *v79 = v0;
          v79[1] = sub_264B35324;
          v62 = v0 + 304;
          v63 = v76;
          v80 = v75;
          goto LABEL_38;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_2649E7004(v30, v31);
      }
    }

    if (EnumCaseMultiPayload == 6)
    {
      v43 = *(v0 + 584);
      v44 = *(v0 + 512);
      sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
      v45 = *(v44 + v43);
      *(v0 + 848) = v45;
      if (!v45)
      {
        v4 = *(v0 + 568);
        v8 = *(v0 + 528);
        v9 = type metadata accessor for RTIMessage;
        goto LABEL_5;
      }

      v97 = *(v0 + 528);
      v98 = *(v0 + 520);
      v51 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v98;
      *(v0 + 256) = &off_28765CD50;
      v99 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v97, v99, type metadata accessor for RTIMessage);
      v100 = *(v51 + 32);
      swift_unknownObjectRetain();
      v109 = (v100 + *v100);
      v101 = v100[1];
      v102 = swift_task_alloc();
      *(v0 + 856) = v102;
      *v102 = v0;
      v102[1] = sub_264B36D10;
      v62 = v0 + 224;
LABEL_36:
      v63 = ObjectType;
      goto LABEL_37;
    }

    v46 = *(v0 + 592);
    v47 = *(v0 + 560);
    v48 = *(v0 + 512);
    v3 = *v47;
    *(v0 + 800) = *v47;
    v2 = *(v47 + 8);
    *(v0 + 808) = v2;
    v49 = *(v47 + 24);
    *(v0 + 816) = v49;
    v50 = *(v48 + v46);
    *(v0 + 824) = v50;
    if (!v50)
    {
      continue;
    }

    break;
  }

  v51 = *(v48 + v46 + 8);
  v52 = *(v47 + 33);
  v53 = *(v47 + 32);
  v54 = *(v47 + 16);
  v55 = v3;
  v56 = v2;
  v57 = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v58 = swift_allocObject();
  *(v0 + 264) = v58;
  *(v58 + 16) = v55;
  *(v58 + 24) = v56;
  *(v58 + 32) = v54;
  *(v58 + 40) = v49;
  *(v58 + 48) = v53;
  *(v58 + 49) = v52;
  v59 = *(v51 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v55, v56);

  v109 = (v59 + *v59);
  v60 = v59[1];
  v61 = swift_task_alloc();
  *(v0 + 832) = v61;
  *v61 = v0;
  v61[1] = sub_264B3602C;
  v62 = v0 + 264;
  v63 = v57;
LABEL_37:
  v80 = v51;
LABEL_38:

  return v109(v62, v63, v80);
}

uint64_t sub_264B36D10()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v7 = *v1;
  *(*v1 + 864) = v0;

  v4 = *(v2 + 848);
  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_264B37E88;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 224));
    v5 = sub_264B36E3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264B36E3C()
{
LABEL_1:
  v1 = *(v0 + 568);
  v2 = *(v0 + 528);
  v3 = type metadata accessor for RTIMessage;
LABEL_2:
  sub_264B3C518(v2, v3);
LABEL_3:
  v4 = v1;
LABEL_4:
  sub_264B3C518(v4, type metadata accessor for ControlMessage);
  while (1)
  {
    v5 = *(v0 + 640) + 1;
    if (v5 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 640) = v5;
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = (*(v0 + 504) + 40 * v5);
    v10 = v9[7];
    v11 = v9[8];
    __swift_project_boxed_opaque_existential_1(v9 + 4, v10);
    (*(v11 + 8))(v10, v11);
    sub_264B3C4B0(v6, v7, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v29 = *(v0 + 624);
          v30 = *(v0 + 560);
          v31 = *(v0 + 512);
          v32 = *v30;
          *(v0 + 672) = *v30;
          v33 = v30[1];
          *(v0 + 680) = v33;
          v34 = v30[2];
          *(v0 + 688) = v34;
          v35 = v30[3];
          *(v0 + 696) = v35;
          v36 = *(v31 + v29);
          *(v0 + 704) = v36;
          if (!v36)
          {
            v1 = *(v0 + 568);
            sub_264A187D4(v32, v33, v34, v35);
            goto LABEL_3;
          }

          v52 = *(v31 + v29 + 8);
          v76 = v32;
          v77 = v33;
          v78 = v34;
          v79 = v35;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v80 = swift_allocObject();
          *&v81 = v76;
          *(&v81 + 1) = v77;
          *&v82 = v78;
          *(&v82 + 1) = v79;
          *(v0 + 424) = v80;
          *(v80 + 16) = v81;
          *(v80 + 32) = v82;
          v83 = *(v52 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v76, v77, v78, v79);
          v107 = (v83 + *v83);
          v84 = v83[1];
          v85 = swift_task_alloc();
          *(v0 + 712) = v85;
          *v85 = v0;
          v85[1] = sub_264B32C6C;
          v58 = v0 + 424;
        }

        else
        {
          v44 = *(v0 + 616);
          v45 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v46 = *(v45 + v44);
          *(v0 + 728) = v46;
          if (!v46)
          {
            v1 = *(v0 + 568);
            v2 = *(v0 + 544);
            v3 = type metadata accessor for HIDMessage;
            goto LABEL_2;
          }

          v86 = *(v0 + 544);
          v87 = *(v0 + 536);
          v52 = *(*(v0 + 512) + *(v0 + 616) + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 408) = v87;
          *(v0 + 416) = &off_28765E6C8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
          sub_264B3C4B0(v86, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
          v89 = *(v52 + 32);
          swift_unknownObjectRetain();
          v107 = (v89 + *v89);
          v90 = v89[1];
          v91 = swift_task_alloc();
          *(v0 + 736) = v91;
          *v91 = v0;
          v91[1] = sub_264B33950;
          v58 = v0 + 384;
        }
      }

      else
      {
        v26 = *(v0 + 632);
        v27 = *(v0 + 512);
        v28 = *(v27 + v26);
        *(v0 + 648) = v28;
        if (!v28)
        {
          v4 = *(v0 + 568);
          goto LABEL_4;
        }

        v101 = *(v0 + 560);
        v52 = *(v27 + v26 + 8);
        v102 = *(v101 + 32);
        ObjectType = swift_getObjectType();
        v108 = v101[1];
        v109 = *v101;
        *(v0 + 488) = &type metadata for DrawEvent;
        *(v0 + 496) = &off_28765B2B0;
        v103 = swift_allocObject();
        *(v0 + 464) = v103;
        *(v103 + 16) = v109;
        *(v103 + 32) = v108;
        *(v103 + 48) = v102;
        v104 = *(v52 + 32);
        swift_unknownObjectRetain();
        v107 = (v104 + *v104);
        v105 = v104[1];
        v106 = swift_task_alloc();
        *(v0 + 656) = v106;
        *v106 = v0;
        v106[1] = sub_264B31F98;
        v58 = v0 + 464;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v37 = *(v0 + 592);
        v38 = *(v0 + 560);
        v39 = *(v0 + 512);
        v40 = *v38;
        *(v0 + 800) = *v38;
        v41 = *(v38 + 8);
        *(v0 + 808) = v41;
        v42 = *(v38 + 24);
        *(v0 + 816) = v42;
        v43 = *(v39 + v37);
        *(v0 + 824) = v43;
        if (!v43)
        {
          v1 = *(v0 + 568);
          sub_2649DEF6C(v40, v41);

          goto LABEL_3;
        }

        v52 = *(v39 + v37 + 8);
        v92 = *(v38 + 33);
        v93 = *(v38 + 32);
        v94 = *(v38 + 16);
        v95 = v40;
        v96 = v41;
        ObjectType = swift_getObjectType();
        *(v0 + 288) = &type metadata for DragAndDropEvent;
        *(v0 + 296) = &off_28765F610;
        v97 = swift_allocObject();
        *(v0 + 264) = v97;
        *(v97 + 16) = v95;
        *(v97 + 24) = v96;
        *(v97 + 32) = v94;
        *(v97 + 40) = v42;
        *(v97 + 48) = v93;
        *(v97 + 49) = v92;
        v98 = *(v52 + 32);
        swift_unknownObjectRetain();
        sub_2649DEF18(v95, v96);

        v107 = (v98 + *v98);
        v99 = v98[1];
        v100 = swift_task_alloc();
        *(v0 + 832) = v100;
        *v100 = v0;
        v100[1] = sub_264B3602C;
        v58 = v0 + 264;
      }

      else
      {
        v47 = *(v0 + 584);
        v48 = *(v0 + 512);
        sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
        v49 = *(v48 + v47);
        *(v0 + 848) = v49;
        if (!v49)
        {
          goto LABEL_1;
        }

        v50 = *(v0 + 528);
        v51 = *(v0 + 520);
        v52 = *(*(v0 + 512) + *(v0 + 584) + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 248) = v51;
        *(v0 + 256) = &off_28765CD50;
        v54 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
        sub_264B3C4B0(v50, v54, type metadata accessor for RTIMessage);
        v55 = *(v52 + 32);
        swift_unknownObjectRetain();
        v107 = (v55 + *v55);
        v56 = v55[1];
        v57 = swift_task_alloc();
        *(v0 + 856) = v57;
        *v57 = v0;
        v57[1] = sub_264B36D10;
        v58 = v0 + 224;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v13 = *(v0 + 608);
      v14 = *(v0 + 560);
      v15 = *(v0 + 512);
      v17 = v14[1];
      v16 = v14[2];
      *(v0 + 16) = *v14;
      *(v0 + 32) = v17;
      *(v0 + 48) = v16;
      v19 = v14[4];
      v18 = v14[5];
      v20 = v14[3];
      *(v0 + 112) = *(v14 + 12);
      *(v0 + 80) = v19;
      *(v0 + 96) = v18;
      *(v0 + 64) = v20;
      if (*(v15 + v13))
      {
        v52 = *(v15 + v13 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v72 = swift_allocObject();
        *(v0 + 344) = v72;
        memmove((v72 + 16), v14, 0x68uLL);
        v73 = *(v52 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v107 = (v73 + *v73);
        v74 = v73[1];
        v75 = swift_task_alloc();
        *(v0 + 752) = v75;
        *v75 = v0;
        v75[1] = sub_264B34620;
        v58 = v0 + 344;
LABEL_35:
        v70 = ObjectType;
        v71 = v52;
        goto LABEL_36;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v21 = *(v0 + 600);
      v22 = *(v0 + 560);
      v23 = *(v0 + 512);
      v24 = *v22;
      *(v0 + 768) = *v22;
      v25 = v22[1];
      *(v0 + 776) = v25;
      if (*(v23 + v21))
      {
        v65 = *(v23 + v21 + 8);
        v66 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v24;
        *(v0 + 312) = v25;
        v67 = *(v65 + 32);
        sub_264A5448C(v24, v25);
        v107 = (v67 + *v67);
        v68 = v67[1];
        v69 = swift_task_alloc();
        *(v0 + 784) = v69;
        *v69 = v0;
        v69[1] = sub_264B35324;
        v58 = v0 + 304;
        v70 = v66;
        v71 = v65;
LABEL_36:

        return v107(v58, v70, v71);
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v24, v25);
    }
  }

  v59 = *(v0 + 568);
  v60 = *(v0 + 560);
  v61 = *(v0 + 544);
  v62 = *(v0 + 528);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_264B379E0()
{
  sub_264B3C518(v0[71], type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 58);
  v1 = v0[83];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[68];
  v5 = v0[66];

  v6 = v0[1];

  return v6();
}

uint64_t sub_264B37A94()
{
  v1 = v0[71];
  sub_264A187D4(v0[84], v0[85], v0[86], v0[87]);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 53);
  v2 = v0[90];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[66];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B37B60()
{
  v1 = v0[71];
  sub_264B3C518(v0[68], type metadata accessor for HIDMessage);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  v2 = v0[93];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[66];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B37C34()
{
  v1 = v0[71];
  sub_264A7DB74((v0 + 2));
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  v2 = v0[95];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[66];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B37CF4()
{
  v1 = v0[71];
  sub_2649E7004(v0[96], v0[97]);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  v2 = v0[99];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[66];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B37DB8()
{
  v1 = v0[102];
  v2 = v0[71];
  sub_2649DEF6C(v0[100], v0[101]);

  sub_264B3C518(v2, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  v3 = v0[105];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[68];
  v7 = v0[66];

  v8 = v0[1];

  return v8();
}

uint64_t sub_264B37E88()
{
  v1 = v0[71];
  sub_264B3C518(v0[66], type metadata accessor for RTIMessage);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  v2 = v0[108];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[66];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B37F5C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  sub_2649CB5C0(a1 + v2, &v29);
  v4 = *(&v30 + 1);
  v3 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  (*(*(v3 + 8) + 16))(&v28, v4);
  v5 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer) = v28;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v6 = a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider + 24))
  {
    sub_2649CB5C0(v6, &v29);
    v7 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
LABEL_3:
      v8 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, v7);
      (*(v8 + 16))(&v28, v7, v8);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(&v29);
      v9 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *(v6 + 16);
    v29 = *v6;
    v30 = v10;
    v31 = *(v6 + 32);
    v7 = *(&v10 + 1);
    if (*(&v10 + 1))
    {
      goto LABEL_3;
    }
  }

  v9 = 0uLL;
LABEL_6:
  v11 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer) = v9;
  swift_unknownObjectRelease();
  v12 = a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider + 24))
  {
    sub_2649CB5C0(v12, &v29);
    v13 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
LABEL_8:
      v14 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, v13);
      (*(v14 + 16))(&v28, v13, v14);
      v26 = v28;
      __swift_destroy_boxed_opaque_existential_0(&v29);
      v15 = v26;
      goto LABEL_11;
    }
  }

  else
  {
    v16 = *(v12 + 16);
    v29 = *v12;
    v30 = v16;
    v31 = *(v12 + 32);
    v13 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_8;
    }
  }

  v15 = 0uLL;
LABEL_11:
  v17 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer) = v15;
  swift_unknownObjectRelease();
  v18 = a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (!*(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider + 24))
  {
    v22 = *(v18 + 16);
    v29 = *v18;
    v30 = v22;
    v31 = *(v18 + 32);
    v19 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      goto LABEL_13;
    }

LABEL_15:
    v21 = 0uLL;
    goto LABEL_16;
  }

  sub_2649CB5C0(v18, &v29);
  v19 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, v19);
  (*(v20 + 16))(&v28, v19, v20);
  v27 = v28;
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v21 = v27;
LABEL_16:
  v23 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer) = v21;
  return swift_unknownObjectRelease();
}

uint64_t sub_264B381F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  v5 = *a1;
  *(v4 + 120) = v3;
  *(v4 + 128) = v5;
  *(v4 + 81) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_264B38228, 0, 0);
}

uint64_t sub_264B38228()
{
  v43 = v0;
  v1 = v0[13];
  v2 = v1[2];
  v0[17] = v2;
  if (v2)
  {
    v0[18] = 0;
    v3 = v1[4];
    v0[19] = v3;
    v4 = v1[5];
    v5 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71B8);
    swift_unknownObjectRetain();
    v7 = sub_264B40944();
    v8 = sub_264B41484();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v42 = v10;
      *v9 = 136446210;
      v0[7] = v3;
      v0[8] = v4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, &v42);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v7, v8, "invalidating consumer: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v15 = *(v4 + 24);
    v41 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_264B38800;

    return v41(ObjectType, v4);
  }

  else
  {
    v19 = v0[14];
    v20 = v19[2];
    v0[22] = v20;
    if (v20)
    {
      v0[23] = 0;
      v21 = v19[4];
      v0[24] = v21;
      v22 = v19[5];
      v23 = qword_27FF883E0;
      swift_unknownObjectRetain();
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = sub_264B40964();
      __swift_project_value_buffer(v24, qword_27FFA71B8);
      swift_unknownObjectRetain();
      v25 = sub_264B40944();
      v26 = sub_264B41484();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136446210;
        v0[5] = v21;
        v0[6] = v22;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
        v29 = sub_264B41064();
        v31 = sub_2649CC004(v29, v30, &v42);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_2649C6000, v25, v26, "activating consumer: %{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x266749940](v28, -1, -1);
        MEMORY[0x266749940](v27, -1, -1);
      }

      v32 = v0[15];
      v33 = swift_getObjectType();
      v34 = swift_allocObject();
      v0[25] = v34;
      swift_weakInit();
      v35 = *(v22 + 16);

      v40 = (v35 + *v35);
      v36 = v35[1];
      v37 = swift_task_alloc();
      v0[26] = v37;
      *v37 = v0;
      v37[1] = sub_264B38F04;

      return v40(sub_264B3CAE4, v34, v33, v22);
    }

    else
    {
      v0[28] = sub_264B41244();
      v0[29] = sub_264B41234();
      v39 = sub_264B411C4();

      return MEMORY[0x2822009F8](sub_264B393CC, v39, v38);
    }
  }
}

uint64_t sub_264B38800()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_264B399F8;
  }

  else
  {
    v3 = sub_264B38914;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B38914()
{
  v46 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = v0[14];
    v5 = v4[2];
    v0[22] = v5;
    if (v5)
    {
      v0[23] = 0;
      v6 = v4[4];
      v0[24] = v6;
      v7 = v4[5];
      v8 = qword_27FF883E0;
      swift_unknownObjectRetain();
      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_264B40964();
      __swift_project_value_buffer(v9, qword_27FFA71B8);
      swift_unknownObjectRetain();
      v10 = sub_264B40944();
      v11 = sub_264B41484();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v45 = v13;
        *v12 = 136446210;
        v0[5] = v6;
        v0[6] = v7;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
        v14 = sub_264B41064();
        v16 = sub_2649CC004(v14, v15, &v45);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_2649C6000, v10, v11, "activating consumer: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x266749940](v13, -1, -1);
        MEMORY[0x266749940](v12, -1, -1);
      }

      v17 = v0[15];
      ObjectType = swift_getObjectType();
      v19 = swift_allocObject();
      v0[25] = v19;
      swift_weakInit();
      v20 = *(v7 + 16);

      v43 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      v0[26] = v22;
      *v22 = v0;
      v22[1] = sub_264B38F04;

      return v43(sub_264B3CAE4, v19, ObjectType, v7);
    }

    else
    {
      v0[28] = sub_264B41244();
      v0[29] = sub_264B41234();
      v42 = sub_264B411C4();

      return MEMORY[0x2822009F8](sub_264B393CC, v42, v41);
    }
  }

  else
  {
    v24 = v0[18] + 1;
    v0[18] = v24;
    v25 = v0[13] + 16 * v24;
    v26 = *(v25 + 32);
    v0[19] = v26;
    v27 = *(v25 + 40);
    v28 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = sub_264B40964();
    __swift_project_value_buffer(v29, qword_27FFA71B8);
    swift_unknownObjectRetain();
    v30 = sub_264B40944();
    v31 = sub_264B41484();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v32 = 136446210;
      v0[7] = v26;
      v0[8] = v27;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
      v34 = sub_264B41064();
      v36 = sub_2649CC004(v34, v35, &v45);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2649C6000, v30, v31, "invalidating consumer: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x266749940](v33, -1, -1);
      MEMORY[0x266749940](v32, -1, -1);
    }

    v37 = swift_getObjectType();
    v38 = *(v27 + 24);
    v44 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    v0[20] = v40;
    *v40 = v0;
    v40[1] = sub_264B38800;

    return v44(v37, v27);
  }
}

uint64_t sub_264B38F04()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);

  if (v0)
  {
    v6 = sub_264B39A5C;
  }

  else
  {

    v6 = sub_264B39044;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_264B39044()
{
  v28 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v0[28] = sub_264B41244();
    v0[29] = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B393CC, v5, v4);
  }

  else
  {
    v6 = v0[23] + 1;
    v0[23] = v6;
    v7 = v0[14] + 16 * v6;
    v8 = *(v7 + 32);
    v0[24] = v8;
    v9 = *(v7 + 40);
    v10 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FFA71B8);
    swift_unknownObjectRetain();
    v12 = sub_264B40944();
    v13 = sub_264B41484();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446210;
      v0[5] = v8;
      v0[6] = v9;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
      v16 = sub_264B41064();
      v18 = sub_2649CC004(v16, v17, &v27);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2649C6000, v12, v13, "activating consumer: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);
    }

    v19 = v0[15];
    ObjectType = swift_getObjectType();
    v21 = swift_allocObject();
    v0[25] = v21;
    swift_weakInit();
    v22 = *(v9 + 16);

    v26 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_264B38F04;

    return v26(sub_264B3CAE4, v21, ObjectType, v9);
  }
}

uint64_t sub_264B393CC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 120);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264B39484, 0, 0);
}

uint64_t sub_264B39484()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 128);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 81);
  }

  v4 = *(v0 + 80) == 1 && *(v0 + 72) == 0;
  if (!v4 || (v3 & 1) != 0)
  {
    *(v0 + 88) = v2;
    *(v0 + 96) = v1;
    v8 = swift_task_alloc();
    *(v0 + 288) = v8;
    *v8 = v0;
    v8[1] = sub_264B39900;
    v9 = *(v0 + 120);

    return sub_264B26F7C(v0 + 88);
  }

  else
  {
    v5 = *(v0 + 224);
    *(v0 + 240) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue;
    *(v0 + 248) = sub_264B41234();
    v7 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B395BC, v7, v6);
  }
}

uint64_t sub_264B395BC()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[15];

  swift_beginAccess();
  v4 = *(v3 + v2);
  v0[32] = v4;

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_264B3968C;
  v6 = v0[15];

  return sub_264B31284(v4);
}

uint64_t sub_264B3968C()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_264B39AC8;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_264B397A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264B397A8()
{
  v1 = *(v0 + 224);
  *(v0 + 280) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B39834, v3, v2);
}

uint64_t sub_264B39834()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 120);

  v4 = *(v3 + v2);
  *(v3 + v2) = MEMORY[0x277D84F90];

  v5 = *(v0 + 81);
  *(v0 + 88) = *(v0 + 128);
  *(v0 + 96) = v5;
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_264B39900;
  v7 = *(v0 + 120);

  return sub_264B26F7C(v0 + 88);
}

uint64_t sub_264B39900()
{
  v1 = *(*v0 + 288);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264B399F8()
{
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t sub_264B39A5C()
{
  v2 = v0[24];
  v1 = v0[25];

  swift_unknownObjectRelease();
  v3 = v0[27];
  v4 = v0[1];

  return v4();
}

uint64_t sub_264B39AC8()
{
  v1 = v0[32];

  v2 = v0[34];
  v3 = v0[1];

  return v3();
}

uint64_t sub_264B39B2C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264B39BA8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_264B39BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71B8);
  swift_unknownObjectRetain();
  v11 = a3;
  v12 = sub_264B40944();
  v13 = sub_264B41484();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446466;
    swift_getObjectType();
    v16 = sub_264B41C44();
    v18 = sub_2649CC004(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v26 = a3;
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v20 = sub_264B41064();
    v22 = sub_2649CC004(v20, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2649C6000, v12, v13, "%{public}s interrupted with error %{public}s, switching interaction state to pause", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v15, -1, -1);
    MEMORY[0x266749940](v14, -1, -1);
  }

  v23 = sub_264B41274();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v4;

  sub_264A10C20(0, 0, v9, &unk_264B58760, v24);
}

uint64_t sub_264B39E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B39F08, 0, 0);
}

uint64_t sub_264B39F08()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_264B41274();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v0[4] = sub_264B41244();

  v4 = sub_264B41234();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = 0;
  *(v5 + 48) = 1;
  v7 = sub_2649CD944(0, 0, v1, &unk_264B58768, v5);
  v0[5] = v7;
  v8 = *(MEMORY[0x277D857C8] + 4);
  v9 = swift_task_alloc();
  v0[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  *v9 = v0;
  v9[1] = sub_264B3A094;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, v7, v12, v10, v11);
}

uint64_t sub_264B3A094()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_264B3A210;
  }

  else
  {
    v3 = sub_264B3A1A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B3A1A8()
{
  v1 = v0[5];

  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264B3A210()
{
  v2 = v0[4];
  v1 = v0[5];

  v0[8] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B3A2A0, v4, v3);
}

uint64_t sub_264B3A2A0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;

  sub_264B40A94();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_264B3A38C;
  v4 = *(v0 + 16);

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B3A38C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B3A488, 0, 0);
}

uint64_t sub_264B3A488()
{
  v1 = v0[7];
  v2 = v0[2] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v3 = *(v2 + 8);
  (*v2)(v1);

  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

uint64_t PlaybackServer.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);

  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider));
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider));
  }

  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider));
  }

  v7 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  swift_unknownObjectRelease();
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider));
  }

  v9 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
  swift_unknownObjectRelease();

  v10 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
  swift_unknownObjectRelease();
  v11 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler + 8);

  v12 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue);

  v13 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  swift_unknownObjectRelease();
  v14 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  swift_unknownObjectRelease();
  v15 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  swift_unknownObjectRelease();
  v16 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  swift_unknownObjectRelease();
  v17 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  swift_unknownObjectRelease();
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation, &unk_27FF8AA00, &unk_264B4CBA0);
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation, &unk_27FF899E0, &qword_264B53440);
  v18 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle);

  v19 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle);

  v20 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle);

  v21 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle);

  v22 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle);

  v23 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle);

  v24 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle);

  v25 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription);

  v26 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription);

  return v0;
}

uint64_t PlaybackServer.__deallocating_deinit()
{
  PlaybackServer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264B3A840(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CED8, &qword_264B58738);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-v5 - 8];
  v7 = a1[3];
  v8 = a1[5];
  v26 = a1[4];
  v27 = v8;
  v9 = a1[1];
  v23[0] = *a1;
  v23[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v24 = a1[2];
  v25 = v10;
  v13 = a1[5];
  v20 = v26;
  v21 = v13;
  *&v16[104] = v12;
  v17 = v11;
  v28 = *(a1 + 12);
  v22 = *(a1 + 12);
  v18 = v24;
  v19 = v7;
  sub_264A7D664(v23, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC0, &qword_264B58728);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3A998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE28, &qword_264B58650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = *(a1 + 24);
  LOBYTE(v5) = *(a1 + 32);
  v8 = *(a1 + 33);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = v7;
  v14 = v5;
  v15 = v8;
  sub_2649DEF18(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE10, &qword_264B58640);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3AAC8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE48, &qword_264B58680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  sub_264A5448C(v9[0], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE30, &qword_264B58670);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3ABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v9 = 0uLL;
    v10 = -1;
    v11 = 0uLL;
  }

  else
  {
    v9 = *v7;
    v11 = *(v7 + 1);
    v10 = v7[32];
  }

  *a2 = v9;
  *(a2 + 16) = v11;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_264B3ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDE0, &qword_264B585C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  LOBYTE(v5) = *(a1 + 32);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB8, &qword_264B585B0);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3ADBC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE80, &qword_264B586C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  sub_264A18774(v11[0], v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE68, &qword_264B586B0);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3AEC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B3AF1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t type metadata accessor for PlaybackServer()
{
  result = qword_27FF8CD80;
  if (!qword_27FF8CD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264B3B028()
{
  sub_2649DC850(319, &qword_27FF8CD90);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2649DC850(319, &qword_27FF8A990);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_264A2C814(319, &qword_27FF8A998, &qword_27FF8A940, &qword_264B4CAE0);
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

uint64_t sub_264B3B254(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2649E0EE4;

  return sub_264B26404(a1, a2, v2);
}

uint64_t sub_264B3B31C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B266C0(a1, v4, v5, v6);
}

uint64_t sub_264B3B3D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B26CA8(a1, v4, v5, v6);
}

uint64_t sub_264B3B484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B27948(a1, v4, v5, v6);
}

uint64_t sub_264B3B540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_264B3B6BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B3029C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_264B3B85C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264B3B964(uint64_t a1)
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

  return sub_264B28944(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3BAA8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB8, &qword_264B585B0) - 8) + 80);

  return sub_264B3ACB4(a1);
}

uint64_t sub_264B3BB68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2ECEC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3BD48(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2DC14(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3BE90()
{
  sub_2649DEF6C(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264B3BEF8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE10, &qword_264B58640) - 8) + 80);

  return sub_264B3A998(a1);
}

uint64_t sub_264B3BFB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2CBC8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3C128(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE30, &qword_264B58670) - 8) + 80);

  return sub_264B3AAC8(a1);
}

uint64_t sub_264B3C1AC(uint64_t a1)
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

  return sub_264B2AB40(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3C2B8()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264B3C328(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE68, &qword_264B586B0) - 8) + 80);

  return sub_264B3ADBC(a1);
}

uint64_t sub_264B3C3A4(uint64_t a1)
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

  return sub_264B29840(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3C4B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264B3C518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264B3C5C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_264B3C650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_92Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_264B3C7E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2BC4C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3C930()
{
  sub_264A52680(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_264B3C9B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  return sub_264B412B4();
}

uint64_t sub_264B3CA14(__int128 *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC0, &qword_264B58728) - 8) + 80);

  return sub_264B3A840(a1);
}

unint64_t sub_264B3CA90()
{
  result = qword_27FF8CEE0;
  if (!qword_27FF8CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CEE0);
  }

  return result;
}

uint64_t sub_264B3CAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B39E6C(a1, v4, v5, v6);
}

uint64_t sub_264B3CBA0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264B21AC0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3CCC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B207F8(a1, v4, v5, v6);
}

uint64_t sub_264B3CD74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B20CD4(a1, v4, v5, v6);
}

uint64_t sub_264B3CE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B21024(a1, v4, v5, v6);
}

uint64_t sub_264B3CEDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B211D4(a1, v4, v5, v6);
}

uint64_t sub_264B3CF90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B2137C(a1, v4, v5, v6);
}

uint64_t sub_264B3D044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B21524(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_264B3D154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B216D4(a1, v4, v5, v6);
}

uint64_t sub_264B3D2CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264B3D340()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit32MockAccessibilityStatePrimitives__currentStateNeedsAccessibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockAccessibilityStatePrimitives()
{
  result = qword_27FF8CEF0;
  if (!qword_27FF8CEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264B3D43C()
{
  sub_264A361A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264B3D4CC()
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

uint64_t sub_264B3D5FC()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v3;
}

uint64_t sub_264B3D674@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264B3D6F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

void sub_264B3D7A8(void *a1, uint64_t *a2, void *a3, const char **a4)
{
  v7 = *a2;
  v8 = *(v4 + *a2);
  *(v4 + *a2) = a1;
  v13 = a1;

  v9 = *(v4 + *a3);
  if (v9)
  {
    v10 = *(v4 + v7);
    v11 = *a4;
    v12 = v9;
    [v12 v11];
  }
}

id sub_264B3D848()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer;
  v3 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer];
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer] = v1;
  v4 = v1;

  if (v4)
  {
    [v0 bounds];
    [v4 setFrame_];
  }

  result = *&v0[v2];
  if (!result)
  {
    goto LABEL_23;
  }

  [result setLineWidth_];
  result = *&v0[v2];
  if (!result)
  {
    goto LABEL_23;
  }

  result = [result setLineCap_];
  v6 = *&v0[v2];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 whiteColor];
  v10 = [v9 CGColor];

  [v8 setStrokeColor_];
  result = *&v0[v2];
  if (!result)
  {
    goto LABEL_23;
  }

  result = [result setFillColor_];
  if (*&v0[v2])
  {
    [v0 addSublayer_];
    v11 = [objc_allocWithZone(MEMORY[0x277CD9E80]) init];
    v12 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell;
    v13 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell];
    *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell] = v11;
    v14 = v11;

    if (v14)
    {
      if (qword_27FF88428 != -1)
      {
        swift_once();
      }

      v16 = qword_27FFA7218;
      v17 = sub_264B41014();
      v18 = [objc_opt_self() imageNamed:v17 inBundle:v16 compatibleWithTraitCollection:0];

      if (v18)
      {
        v19 = [v18 CGImage];

        if (v19)
        {
          type metadata accessor for CGImage(0);
          v18 = sub_264B41A94();
        }

        else
        {
          v18 = 0;
        }
      }

      [v14 setContents_];

      swift_unknownObjectRelease();
    }

    result = *&v0[v12];
    if (result)
    {
      LODWORD(v15) = 1067030938;
      [result setLifetime_];
      result = *&v0[v12];
      if (result)
      {
        LODWORD(v20) = 1.0;
        [result setLifetimeRange_];
        result = *&v0[v12];
        if (result)
        {
          [result setEmissionRange_];
          result = *&v0[v12];
          if (result)
          {
            [result setVelocity_];
            result = *&v0[v12];
            if (result)
            {
              return [result setVelocityRange_];
            }
          }
        }
      }
    }
  }

  else
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_264B3DB7C()
{
  [v0 bounds];
  Width = CGRectGetWidth(v17);
  [v0 bounds];
  Height = CGRectGetHeight(v18);
  v3 = &v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = Width;
  *(v3 + 3) = Height;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer;
  v5 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer];
  if (v5)
  {
    [v5 setFrame_];
    v6 = *&v0[v4];
    if (v6)
    {
      [v6 setPath_];
    }
  }

  v7 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer;
  v8 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer];
  if (v8)
  {
    v9 = v8;
    [v0 bounds];
    [v9 setFrame_];

    v10 = *&v0[v7];
    if (v10)
    {
      v11 = v10;
      [v0 bounds];
      MidX = CGRectGetMidX(v19);
      [v0 bounds];
      [v11 setEmitterPosition_];

      v13 = *&v0[v7];
      if (v13)
      {
        v15 = v13;
        [v0 bounds];
        v14 = CGRectGetWidth(v21);
        [v0 bounds];
        [v15 setEmitterSize_];
      }
    }
  }
}

uint64_t sub_264B3DD88(float a1)
{
  v3 = sub_264B40EB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40EE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v13 = sub_264B41554();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_264B3F044;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_26;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_264B40EC4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264AD8AC8();
  sub_264B41684();
  MEMORY[0x266748860](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_264B3E02C(float a1)
{
  v2 = v1;
  v4 = sub_264B40EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264B40EE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40F04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell];
  if (v22)
  {
    v88 = &v84 - v21;
    v87 = v15;
    v95 = v20;
    v89 = v13;
    v90 = v10;
    v91 = v8;
    v92 = v9;
    v93 = v5;
    v23 = objc_allocWithZone(MEMORY[0x277CD9E88]);
    v24 = v22;
    v25 = [v23 init];
    v26 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer;
    v27 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer];
    *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer] = v25;
    v28 = v25;

    if (v28)
    {
      [v28 setFrame_];
    }

    v29 = *&v2[v26];
    if (!v29)
    {
      goto LABEL_29;
    }

    [v29 setEmitterShape_];
    v30 = *&v2[v26];
    if (!v30)
    {
      goto LABEL_29;
    }

    [v30 setEmitterPath_];
    v31 = *&v2[v26];
    if (!v31)
    {
      goto LABEL_29;
    }

    [v31 setEmitterMode_];
    v32 = *&v2[v26];
    if (!v32)
    {
      goto LABEL_29;
    }

    v33 = &v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
    v34 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
    v35 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 8];
    v36 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 16];
    v37 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 24];
    v38 = v32;
    v98.origin.x = v34;
    v98.origin.y = v35;
    v98.size.width = v36;
    v98.size.height = v37;
    MidX = CGRectGetMidX(v98);
    [v38 setEmitterPosition_];

    v40 = *&v2[v26];
    if (!v40)
    {
      goto LABEL_29;
    }

    v41 = &v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
    v42 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
    v43 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 8];
    v44 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 16];
    v45 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 24];
    v46 = v40;
    v99.origin.x = v42;
    v99.origin.y = v43;
    v99.size.width = v44;
    v99.size.height = v45;
    Width = CGRectGetWidth(v99);
    [v46 setEmitterSize_];

    v48 = *&v2[v26];
    if (!v48)
    {
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_264B44CE0;
    *(v49 + 32) = v24;
    sub_2649D8B90(0, &qword_27FF8CF30, 0x277CD9E80);
    v94 = v24;
    v50 = v48;
    v51 = sub_264B41144();

    [v50 setEmitterCells_];

    v52 = *&v2[v26];
    if (!v52)
    {
      goto LABEL_29;
    }

    aBlock[0] = 0;
    v53 = v52;
    MEMORY[0x266749950](aBlock, 8);
    [v53 setSeed_];

    if (*&v2[v26])
    {
      [v2 addSublayer_];
      v54 = MEMORY[0x277D84F90];
      v97 = MEMORY[0x277D84F90];
      sub_264A2ECE8();
      MEMORY[0x266748430]();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v81 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_264B41174();
      }

      v85 = v19;
      sub_264B41194();
      sub_264A2ED08();
      MEMORY[0x266748430]();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v82 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_264B41174();
      }

      sub_264B41194();
      v55 = *&v2[v26];
      if (v55)
      {
        sub_2649D8B90(0, &qword_27FF8CF38, 0x277CD9E78);
        v56 = v55;
        v57 = sub_264B41144();

        [v56 setEmitterBehaviors_];
      }

      else
      {
      }

      v58 = swift_allocObject();
      *(v58 + 16) = v54;
      v59 = (v58 + 16);
      v60 = &v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
      CGRectGetMidX(*&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds]);
      CGRectGetMidY(*v60);
      sub_264A2EE18();
      MEMORY[0x266748430]();
      if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264B41174();
      }

      sub_264B41194();
      v61 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
      v62 = sub_264B413F4();
      v63 = sub_264B41014();
      [v61 setValue:v62 forKey:v63];

      MEMORY[0x266748430]();
      if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v83 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_264B41174();
      }

      v86 = v4;
      sub_264B41194();
      v64 = *v59;
      sub_2649D8B90(0, &qword_27FF8CF38, 0x277CD9E78);

      v65 = sub_264B41144();

      v66 = v94;
      [v94 asc_279B7A0F8];

      [v66 setBeginTime_];
      *&v67 = a1 * 100.0;
      [v66 setBirthRate_];
      v68 = objc_opt_self();
      [v68 begin];
      [v68 setAnimationDuration_];
      v69 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer];
      if (v69)
      {
        [v69 setOpacity_];
      }

      [v68 commit];
      [v68 begin];
      [v68 setAnimationDuration_];
      v71 = *&v2[v26];
      if (v71)
      {
        LODWORD(v70) = 1.0;
        [v71 setOpacity_];
      }

      [v68 commit];
      sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
      v72 = sub_264B41554();
      v73 = v85;
      sub_264B40EF4();
      v74 = v88;
      sub_264B40F24();
      v87 = *(v87 + 8);
      (v87)(v73, v95);
      v75 = swift_allocObject();
      *(v75 + 16) = v58;
      *(v75 + 24) = v2;
      aBlock[4] = sub_264B3EFEC;
      aBlock[5] = v75;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2649D68F4;
      aBlock[3] = &block_descriptor_18;
      v76 = _Block_copy(aBlock);

      v77 = v2;

      v78 = v89;
      sub_264B40EC4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264A1EF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
      sub_264AD8AC8();
      v79 = v91;
      v80 = v86;
      sub_264B41684();
      MEMORY[0x266748800](v74, v78, v79, v76);
      _Block_release(v76);

      (*(v93 + 8))(v79, v80);
      (*(v90 + 8))(v78, v92);
      (v87)(v74, v95);
    }

    else
    {
LABEL_29:
      __break(1u);
    }
  }
}

id sub_264B3EA70(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
  v5 = sub_264B413F4();
  v6 = sub_264B41014();
  [v4 setValue:v5 forKey:v6];

  v7 = swift_beginAccess();
  MEMORY[0x266748430](v7);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_264B41174();
  }

  sub_264B41194();
  v8 = *(a1 + 16);
  swift_endAccess();
  v9 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell);
  if (v9)
  {
    sub_2649D8B90(0, &qword_27FF8CF38, 0x277CD9E78);
    v10 = v9;

    v11 = sub_264B41144();

    [v10 setEmitterBehaviors_];
  }

  result = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer);
  if (result)
  {
    return [result setBirthRate_];
  }

  return result;
}

id sub_264B3ECA4(uint64_t *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer] = 0;
  v3 = &v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_path] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_normalizedPath] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_264B41A94();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StrokeLayer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_264B3EDC0(void *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer] = 0;
  v3 = &v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_path] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_normalizedPath] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StrokeLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_264B3EEA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrokeLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264B3EF74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B3EFAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264B3F00C()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

void sub_264B3F044()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_264B3E02C(v1);
}

void sub_264B3F07C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v6 = *&a1[OBJC_IVAR____TtC16ScreenSharingKit24CaptureGestureRecognizer_eventHandler];
    v5 = *&a1[OBJC_IVAR____TtC16ScreenSharingKit24CaptureGestureRecognizer_eventHandler + 8];
    v8 = a1;
    v7 = a4;

    v6(v7);
  }
}

id sub_264B3F160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaptureGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264B3F1DC()
{
  v1 = v0;
  if (v0[3])
  {

    sub_264B40994();
  }

  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[5];

  v5 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
  v6 = sub_264B40104();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerPolicyApplicator()
{
  result = qword_27FF8CF50;
  if (!qword_27FF8CF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264B3F304()
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

uint64_t sub_264B3F3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CF60, &qword_264B58958);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = sub_264B40104();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  if (!*(v0 + 24))
  {
    v39 = v14;
    v40 = v5;
    v17 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
    v36 = v9;
    swift_beginAccess();
    v37 = *(v10 + 16);
    v33 = v10 + 16;
    v37(v16, v0 + v17, v9);
    v38 = v10;
    v43 = *(v0 + 16);
    sub_2649CB2F0();

    v34 = v0;
    v18 = sub_264B41554();
    v42 = v18;
    v19 = sub_264B41514();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v35 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CF68, &unk_264B58960);
    sub_2649CB4C8(&qword_27FF8CF70, &qword_27FF8CF68, &unk_264B58960);
    sub_2649CB384();
    sub_264B40B14();
    sub_2649CB3DC(v4);

    v20 = swift_allocObject();
    v21 = v34;
    swift_weakInit();
    v22 = v39;
    v23 = v16;
    v24 = v16;
    v25 = v36;
    v37(v39, v24, v36);
    v26 = v38;
    v27 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    (*(v26 + 32))(v28 + v27, v22, v25);
    sub_2649CB4C8(&qword_27FF8CF78, &qword_27FF8CF60, &qword_264B58958);
    v29 = v40;
    v30 = v35;
    v31 = sub_264B40B54();

    (*(v41 + 8))(v30, v29);
    (*(v26 + 8))(v23, v25);
    v32 = *(v21 + 24);
    *(v21 + 24) = v31;
  }

  return result;
}

uint64_t sub_264B3F800(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v1;
    v5 = v2;
    sub_264B3F9A4(&v4);
  }

  return result;
}

uint64_t sub_264B3F87C()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {

    sub_264B40994();

    v7 = *(v0 + 24);
  }

  *(v0 + 24) = 0;

  sub_264B400F4();
  v8 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v8, v6, v2);
  return swift_endAccess();
}

void sub_264B3F9A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v11, v4);
  v12 = sub_264B400C4();
  (*(v5 + 8))(v8, v4);
  if (v12)
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FF8AE70);
    sub_2649E124C(v9, v10);
    v14 = sub_264B40944();
    v15 = sub_264B414B4();
    sub_2649E1290(v9, v10);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      if (v10 <= 0xFB)
      {
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_264B41754();
        MEMORY[0x266748390](0xD000000000000013, 0x8000000264B59720);
        v23 = v9;
        v24 = v10;
        sub_264B41864();
        v19 = v25;
        v18 = v26;
      }

      else
      {
        v18 = 0xE700000000000000;
        v19 = 0x64656D75736572;
      }

      v20 = sub_2649CC004(v19, v18, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2649C6000, v14, v15, "Policy applicator: Applying policy result %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }

    if (v10 <= 0xFB)
    {
      v21 = *(v2 + 32);
      v22 = *(v2 + 40);
      v25 = v9;
      LOBYTE(v26) = v10;
      v21(&v25);
    }
  }
}

uint64_t sub_264B3FCA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B3FCD8()
{
  v1 = sub_264B40104();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264B3FD9C(uint64_t *a1)
{
  v3 = *(*(sub_264B40104() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_264B3F800(a1);
}