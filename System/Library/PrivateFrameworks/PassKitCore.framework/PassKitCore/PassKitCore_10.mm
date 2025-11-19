uint64_t sub_1AD457038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1AD3D0E9C(a3, v25 - v10, &qword_1EB598840);
  v12 = sub_1ADB06720();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AD3D0E3C(v11, &qword_1EB598840);
  }

  else
  {
    sub_1ADB06710();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1ADB066C0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1ADB06430() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1AD3D0E3C(a3, &qword_1EB598840);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AD3D0E3C(a3, &qword_1EB598840);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id ProvisioningSEStorageSheetHandle.__allocating_init(context:snapshot:appletTypes:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1AD459424(a1, a2, a3);

  return v8;
}

id ProvisioningSEStorageSheetHandle.init(context:snapshot:appletTypes:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1AD459424(a1, a2, a3);

  return v4;
}

id ProvisioningSEStorageSheetHandle.__deallocating_deinit()
{
  sub_1AD4583EC();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningSEStorageSheetHandle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AD4574E4()
{
  v1 = sub_1ADB061E0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_context);
  if (*(v8 + 40) || (swift_beginAccess(), *(v8 + 64) != 1))
  {
    v9 = MEMORY[0x1E69C86A0];
  }

  else
  {
    v9 = MEMORY[0x1E69C86A8];
  }

  v10 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_snapshot);
  *v5 = v10;
  (*(v2 + 104))(v5, *v9, v1);
  v11 = v10;
  (*(v2 + 32))(v7, v5, v1);
  LOBYTE(v10) = MEMORY[0x1B26F62A0](v7);
  (*(v2 + 8))(v7, v1);
  return v10 & 1;
}

void sub_1AD457674(uint64_t a1, uint64_t a2, char a3, void (*a4)(void, id), uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27[-v13];
  v15 = *&v5[OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_lock];
  v31 = v5;
  v28 = sub_1AD4595E4;
  v29 = &v30;
  os_unfair_lock_lock(v15 + 4);
  sub_1AD45961C(&v32);
  os_unfair_lock_unlock(v15 + 4);
  if (v32 == 1 && (v16 = [objc_opt_self() mainBundle], v17 = objc_msgSend(v16, sel_bundleIdentifier), v16, v17))
  {
    v18 = sub_1ADB063B0();
    v20 = v19;

    v21 = sub_1ADB06720();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = v6;
    *(v22 + 40) = a1;
    *(v22 + 48) = a2;
    *(v22 + 56) = v18;
    *(v22 + 64) = v20;
    *(v22 + 72) = a3 & 1;
    *(v22 + 80) = a4;
    *(v22 + 88) = a5;
    v23 = v6;

    sub_1AD457038(0, 0, v14, &unk_1ADB81D10, v22);
  }

  else
  {
    v24 = [objc_opt_self() errorWithSeverity_];
    v25 = sub_1ADB06370();
    [v24 addInternalDebugDescription_];

    v26 = v24;
    a4(0, v24);
  }
}

uint64_t sub_1AD45794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v16;
  *(v8 + 112) = v17;
  *(v8 + 248) = v15;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = sub_1ADB06220();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_1ADB061C0();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5F0);
  *(v8 + 168) = swift_task_alloc();
  v11 = sub_1ADB061E0();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_1ADB06230();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AD457B80, 0, 0);
}

uint64_t sub_1AD457B80()
{
  v1 = *(v0 + 64);
  sub_1AD459BDC(*(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_appletTypes));
  v2 = *(v1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_context);
  v3 = MEMORY[0x1E69C86A0];
  if (!*(v2 + 40))
  {
    swift_beginAccess();
    if (*(v2 + 64) == 1)
    {
      v3 = MEMORY[0x1E69C86A8];
    }
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v24 = *(v0 + 224);
  v25 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v27 = *(v0 + 152);
  v28 = *(v0 + 144);
  v29 = *(v0 + 160);
  v10 = *(v0 + 64);
  v11 = *(v10 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_snapshot);
  v26 = *(v0 + 248);
  *v7 = v11;
  (*(v6 + 104))(v7, *v3, v9);
  v12 = *(v6 + 32);
  v13 = v11;
  v12(v5, v7, v9);
  sub_1ADB061B0();
  (*(v4 + 16))(v8, v24, v25);
  (*(v4 + 56))(v8, 0, 1, v25);
  v14 = OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_sheet;
  swift_beginAccess();
  sub_1AD459AB4(v8, v10 + v14);
  swift_endAccess();
  v15 = MEMORY[0x1E69C8688];
  if (!v26)
  {
    v15 = MEMORY[0x1E69C8680];
  }

  (*(v27 + 104))(v29, *v15, v28);
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_1AD457DE4;
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);

  return MEMORY[0x1EEE32E38](v22, v21, v19, v20, v17, v18);
}

uint64_t sub_1AD457DE4(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 249) = a1;
  v4[30] = v1;

  (*(v3[19] + 8))(v3[20], v3[18]);
  if (v1)
  {
    v5 = sub_1AD4580C4;
  }

  else
  {
    v5 = sub_1AD457F58;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AD457F58()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 64);
  v3 = *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_lock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1AD45A478;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_1AD433ED4(v6);
  os_unfair_lock_unlock(v3 + 4);

  if (!v1)
  {
    v8 = *(v0 + 249);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    v12 = *(v0 + 104);

    v12(v8, 0);
    (*(v10 + 8))(v9, v11);

    v13 = *(v0 + 8);

    return v13();
  }

  return result;
}

uint64_t sub_1AD4580C4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  sub_1AD459A5C();
  v5 = swift_allocError();
  (*(v2 + 32))(v6, v1, v3);
  v7 = *(v4 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_lock);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_1AD45A45C;
  *(v9 + 24) = v8;
  v10 = v5;
  os_unfair_lock_lock(v7 + 4);
  sub_1AD433B74(v11);
  os_unfair_lock_unlock(v7 + 4);

  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];
  v15 = v0[13];

  v16 = v5;
  v17 = sub_1ADB05CB0();

  v18 = [objc_opt_self() errorWithUnderlyingError:v17 defaultSeverity:4];
  v19 = v18;
  v15(0, v18);

  (*(v13 + 8))(v12, v14);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1AD4582EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  *(a1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_presented) = 0;
  v5 = sub_1ADB06230();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_sheet;
  swift_beginAccess();
  sub_1AD459AB4(v4, a1 + v6);
  return swift_endAccess();
}

uint64_t sub_1AD4583EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v24 - v2;
  v3 = sub_1ADB06230();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5F0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_lock);
  v31 = v0;
  v28 = sub_1AD459760;
  v29 = &v30;
  os_unfair_lock_lock(v15 + 4);
  sub_1AD433B74(v16);
  os_unfair_lock_unlock(v15 + 4);
  sub_1AD3D0E9C(v14, v12, &qword_1EB59A5F0);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_1AD3D0E3C(v14, &qword_1EB59A5F0);
  }

  else
  {
    v25 = *(v4 + 32);
    v17 = v8;
    v25(v8, v12, v3);
    v18 = sub_1ADB06720();
    v19 = v27;
    (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
    v20 = v26;
    (*(v4 + 16))(v26, v17, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v25((v22 + v21), v20, v3);
    sub_1AD458BF8(0, 0, v19, &unk_1ADB81D28, v22);

    (*(v4 + 8))(v17, v3);
    v12 = v14;
  }

  return sub_1AD3D0E3C(v12, &qword_1EB59A5F0);
}

uint64_t sub_1AD45876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  if (*(a1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_presented) == 1 && *(a1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_valid) == 1)
  {
    v7 = OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_sheet;
    swift_beginAccess();
    sub_1AD3D0E9C(a1 + v7, a2, &qword_1EB59A5F0);
  }

  else
  {
    v8 = sub_1ADB06230();
    (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  v9 = sub_1ADB06230();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_sheet;
  swift_beginAccess();
  sub_1AD459AB4(v6, a1 + v10);
  result = swift_endAccess();
  *(a1 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_valid) = 0;
  return result;
}

uint64_t sub_1AD45891C()
{
  v1 = sub_1ADB06220();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1AD458A14;

  return MEMORY[0x1EEE32E30](v2);
}

uint64_t sub_1AD458A14()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AD458B4C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AD458B4C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1AD459A5C();
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AD458BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AD3D0E9C(a3, v22 - v9, &qword_1EB598840);
  v11 = sub_1ADB06720();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AD3D0E3C(v10, &qword_1EB598840);
  }

  else
  {
    sub_1ADB06710();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1ADB066C0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1ADB06430() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1AD3D0E3C(a3, &qword_1EB598840);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AD3D0E3C(a3, &qword_1EB598840);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1AD458EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AD3D0E9C(a3, v22 - v9, &qword_1EB598840);
  v11 = sub_1ADB06720();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AD3D0E3C(v10, &qword_1EB598840);
  }

  else
  {
    sub_1ADB06710();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1ADB066C0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1ADB06430() + 32;
      type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1AD3D0E3C(a3, &qword_1EB598840);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AD3D0E3C(a3, &qword_1EB598840);
  type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id ProvisioningSEStorageSheetHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1AD4591F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AD4592E8;

  return v6(a1);
}

uint64_t sub_1AD4592E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1AD4593E0@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id sub_1AD459424(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59A810);
  v8 = swift_allocObject();
  *&v3[v7] = v8;
  *(v8 + 16) = 0;
  v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_valid] = 1;
  v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_presented] = 0;
  v9 = OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_sheet;
  v10 = sub_1ADB06230();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_context] = a1;
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_appletTypes] = a3;

  v11 = [a2 underlyingSESnapshot];
  sub_1ADB06AC0();
  swift_unknownObjectRelease();
  sub_1ADB06170();
  swift_dynamicCast();
  *&v3[OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_snapshot] = v14;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ProvisioningSEStorageSheetHandle();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t type metadata accessor for ProvisioningSEStorageSheetHandle()
{
  result = qword_1EB59A618;
  if (!qword_1EB59A618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AD4595E4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_presented))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_valid);
  }

  *(v2 + OBJC_IVAR____TtC11PassKitCore32ProvisioningSEStorageSheetHandle_presented) = 1;
  *a1 = v3;
}

void *sub_1AD45961C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AD459660(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AD3CF220;

  return sub_1AD45794C(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1AD45977C()
{
  sub_1ADB06230();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AD3CF220;

  return sub_1AD45891C();
}

void sub_1AD459874()
{
  sub_1AD459A04();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AD459A04()
{
  if (!qword_1EB59A628)
  {
    sub_1ADB06230();
    v0 = sub_1ADB06A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB59A628);
    }
  }
}

unint64_t sub_1AD459A5C()
{
  result = qword_1EB59A630;
  if (!qword_1EB59A630)
  {
    sub_1ADB06220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A630);
  }

  return result;
}

uint64_t sub_1AD459AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD459B24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AD3D0F70;

  return sub_1AD4591F0(a1, v4);
}

uint64_t sub_1AD459BDC(uint64_t a1)
{
  v2 = sub_1ADB061D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    v29 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A598);
    v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1ADB78CE0;
    v31 = *MEMORY[0x1E69C8518];
    v32 = sub_1ADB060A0();
    (*(*(v32 - 8) + 104))(v21 + v30, v31, v32);
    (*(v3 + 13))(v21 + v30, *MEMORY[0x1E69C8690], v29);
    return v21;
  }

  v81 = v6;
  v82 = v3;
  v76 = v5;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v11;
    v11 = (a1 + 40 + 16 * v10);
    v13 = v10;
    while (1)
    {
      if (v13 >= v9)
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v10 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_54;
      }

      v15 = *(v11 - 1);
      v14 = *v11;

      v16._countAndFlagsBits = v15;
      v16._object = v14;
      ProvisioningSEStorageAppletType.init(rawValue:)(v16);
      v17 = v83[0];
      if (LOBYTE(v83[0]) != 27)
      {
        break;
      }

      v13 = (v13 + 1);
      v11 += 16;
      if (v10 == v9)
      {
        v11 = v12;
        v20 = *(v12 + 2);
        goto LABEL_14;
      }
    }

    v11 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AD425558(0, *(v12 + 2) + 1, 1, v12);
    }

    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v11 = sub_1AD425558((v18 > 1), v19 + 1, 1, v11);
    }

    *(v11 + 2) = v20;
    v11[v19 + 32] = v17;
  }

  while (v10 != v9);
LABEL_14:
  v13 = MEMORY[0x1E69C8518];
  v12 = MEMORY[0x1E69C8690];
  if (v20 != v9)
  {
    v10 = v82;
    if (qword_1EB5981C0 == -1)
    {
LABEL_48:
      v33 = sub_1ADB05FA0();
      __swift_project_value_buffer(v33, qword_1EB59AB68);

      v34 = sub_1ADB05F80();
      v35 = sub_1ADB06860();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v83[0] = v37;
        *v36 = 136315394;
        v38 = MEMORY[0x1B26F66B0](a1, MEMORY[0x1E69E6158]);
        v40 = v11;
        v41 = sub_1AD3CA88C(v38, v39, v83);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        v42 = MEMORY[0x1B26F66B0](v40, &type metadata for ProvisioningSEStorageAppletType);
        v44 = v43;

        v45 = sub_1AD3CA88C(v42, v44, v83);

        *(v36 + 14) = v45;
        _os_log_impl(&dword_1AD337000, v34, v35, "SEStorage: Warning: Unable to map payment application types to credentials. \nGiven: %s \nCreated: %s", v36, 0x16u);
        swift_arrayDestroy();
        v46 = v37;
        v12 = MEMORY[0x1E69C8690];
        MEMORY[0x1B26F9F20](v46, -1, -1);
        MEMORY[0x1B26F9F20](v36, -1, -1);
      }

      else
      {
      }

      v47 = *v13;
      v48 = sub_1ADB060A0();
      v49 = v81;
      (*(*(v48 - 8) + 104))(v81, v47, v48);
      (*(v10 + 13))(v49, *v12, v76);
      return sub_1AD504BF8(v49, v9);
    }

LABEL_55:
    swift_once();
    goto LABEL_48;
  }

  v81 = v11;
  v83[0] = MEMORY[0x1E69E7CC0];
  sub_1AD450768(0, v9, 0);
  v21 = v83[0];
  v75 = *v13;
  v74 = *MEMORY[0x1E69C84A0];
  v73 = *MEMORY[0x1E69C8510];
  v72 = *MEMORY[0x1E69C8508];
  v71 = *MEMORY[0x1E69C8478];
  v70 = *MEMORY[0x1E69C84E0];
  v69 = *MEMORY[0x1E69C84D0];
  v68 = *MEMORY[0x1E69C84C0];
  v67 = *MEMORY[0x1E69C84F8];
  v66 = *MEMORY[0x1E69C84D8];
  v65 = *MEMORY[0x1E69C84C8];
  v64 = *MEMORY[0x1E69C8468];
  v63 = *MEMORY[0x1E69C8470];
  v62 = *MEMORY[0x1E69C8458];
  v61 = *MEMORY[0x1E69C8460];
  v60 = *MEMORY[0x1E69C84F0];
  v59 = *MEMORY[0x1E69C84B8];
  v58 = *MEMORY[0x1E69C84E8];
  v57 = *MEMORY[0x1E69C8490];
  v56 = *MEMORY[0x1E69C84B0];
  v55 = *MEMORY[0x1E69C8520];
  v54 = *MEMORY[0x1E69C8488];
  v53 = *MEMORY[0x1E69C84A8];
  v52 = *MEMORY[0x1E69C8500];
  HIDWORD(v51) = *MEMORY[0x1E69C8480];
  v80 = *MEMORY[0x1E69C8498];
  v22 = (v82 + 26);
  v79 = v82 + 8;
  v78 = *v12;
  v23 = sub_1ADB060A0();
  v77 = *(*(v23 - 8) + 104);
  v24 = 32;
  v25 = v76;
  do
  {
    v26 = v80;
    switch(v81[v24])
    {
      case 1:
        v26 = HIDWORD(v51);
        break;
      case 2:
        v26 = v52;
        break;
      case 3:
        v26 = v53;
        break;
      case 4:
        v26 = v54;
        break;
      case 5:
        v26 = v55;
        break;
      case 6:
        v26 = v56;
        break;
      case 7:
        v26 = v57;
        break;
      case 8:
        v26 = v58;
        break;
      case 9:
        v26 = v59;
        break;
      case 10:
        v26 = v60;
        break;
      case 11:
        v26 = v61;
        break;
      case 12:
        v26 = v62;
        break;
      case 13:
        v26 = v63;
        break;
      case 14:
        v26 = v64;
        break;
      case 15:
        v26 = v65;
        break;
      case 16:
        v26 = v66;
        break;
      case 17:
        v26 = v67;
        break;
      case 18:
        v26 = v68;
        break;
      case 19:
        v26 = v69;
        break;
      case 20:
        v26 = v70;
        break;
      case 21:
        v26 = v71;
        break;
      case 22:
        v26 = v72;
        break;
      case 23:
        v26 = v73;
        break;
      case 24:
        v26 = v74;
        break;
      case 25:
      case 26:
        v26 = v75;
        break;
      default:
        break;
    }

    v77(v8, v26, v23);
    (*v22)(v8, v78, v25);
    v83[0] = v21;
    v28 = *(v21 + 16);
    v27 = *(v21 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1AD450768(v27 > 1, v28 + 1, 1);
      v21 = v83[0];
    }

    *(v21 + 16) = v28 + 1;
    (*(v82 + 4))(v21 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 9) * v28, v8, v25);
    ++v24;
    --v9;
  }

  while (v9);

  return v21;
}

uint64_t sub_1AD45A490(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v4 = sub_1ADB06D00();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v12 = 0;
LABEL_4:
  if (v5 != v4)
  {
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B26F6CC0](v5, a1);
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if ([v6 isIdentityPass])
      {
        v9 = PKAddIdentityDocumentTypeFrom([v7 identityType]);

        if (v9 == a2)
        {
          ++v5;
          if (!__OFADD__(v12++, 1))
          {
            goto LABEL_4;
          }

          __break(1u);
          return v12;
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v8 != v4);
  }

  return v12;
}

uint64_t Sequence.count(where:)()
{
  result = sub_1ADB06580();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t RandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  sub_1ADB067D0();
  sub_1ADB067E0();
  swift_getAssociatedConformanceWitness();
  v9 = sub_1ADB06360();
  v10 = *(v3 + 8);
  v10(v6, AssociatedTypeWitness);
  v10(v8, AssociatedTypeWitness);
  if (v9 & 1) == 0 && (sub_1ADB067D0(), v11 = sub_1ADB06310(), v10(v8, AssociatedTypeWitness), (v11) && (sub_1ADB067E0(), v12 = sub_1ADB06300(), v10(v8, AssociatedTypeWitness), (v12))
  {
    v13 = sub_1ADB06820();
    v15 = v14;
    v16 = swift_getAssociatedTypeWitness();
    v17 = *(v16 - 8);
    v18 = v22;
    (*(v17 + 16))(v22, v15, v16);
    v13(v23, 0);
    return (*(v17 + 56))(v18, 0, 1, v16);
  }

  else
  {
    v20 = swift_getAssociatedTypeWitness();
    return (*(*(v20 - 8) + 56))(v22, 1, 1, v20);
  }
}

uint64_t Array.appendSafely(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1ADB06A20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 32))(v14, v8, v3);
  (*(v9 + 16))(v12, v14, v3);
  sub_1ADB06680();
  return (*(v9 + 8))(v14, v3);
}

uint64_t sub_1AD45AB90(void *a1, uint64_t a2)
{
  result = (*(v2 + 32))(a2);
  if (!v3 && (result & 1) != 0)
  {
    if (__OFADD__(*a1, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a1;
    }
  }

  return result;
}

unsigned __int8 *sub_1AD45AC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_1AD45C070();

  result = sub_1ADB06540();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1AD49781C();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1ADB06C70();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1AD45B1F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1ADB06C70();
  }

  result = sub_1AD45B360(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

uint64_t sub_1AD45B2C4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1ADB06490();

    return sub_1ADB06550();
  }

  return result;
}

uint64_t sub_1AD45B360(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1AD497C14(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1ADB064E0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1AD497C14(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1AD497C14(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1ADB064E0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_1AD45B7F4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1ADB06490();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1ADB06550();
}

uint64_t sub_1AD45B8A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A638);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v81 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A640);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v81 - v15;
  if (sub_1ADB06470() != 32)
  {

    sub_1AD45BF50();
    swift_allocError();
    v22 = 0;
LABEL_30:
    *v21 = v22;
    return swift_willThrow();
  }

  v84 = v8;
  v81 = a3;
  sub_1ADB05F40();
  v85 = a2;
  v86 = a1;
  sub_1ADB06550();
  v82 = v3;
  sub_1AD45BFA4();
  sub_1ADB05F30();
  v83 = v16;
  v17 = v82;
  sub_1ADB05F50();
  if (v17)
  {

    v18 = *(v84 + 8);
    v18(v11, v7);
    v18(v13, v7);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A658);
    v20 = v83;
    (*(*(v19 - 8) + 56))(v83, 1, 1, v19);
  }

  else
  {

    v23 = *(v84 + 8);
    v23(v11, v7);
    v23(v13, v7);
    v20 = v83;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A658);
  v25 = (*(*(v24 - 8) + 48))(v20, 1, v24);
  v27 = v85;
  v26 = v86;
  if (v25 != 1)
  {

    sub_1AD45C008(v20);
LABEL_29:
    sub_1AD45BF50();
    swift_allocError();
    v22 = 1;
    goto LABEL_30;
  }

  sub_1AD45C008(v20);

  v28 = sub_1AD45B2C4(2);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  if ((v28 ^ v30) < 0x4000)
  {
LABEL_27:

    goto LABEL_28;
  }

  v35 = sub_1AD45B1F4(v28, v30, v32, v34, 16);
  if ((v35 & 0x10000) == 0)
  {
    v36 = v35;

    if ((v36 & 0x100) == 0)
    {
      v37 = v36;
      goto LABEL_14;
    }

LABEL_28:

    goto LABEL_29;
  }

  v38 = sub_1AD45AC14(v28, v30, v32, v34, 16);

  if ((v38 & 0x100) != 0)
  {
    goto LABEL_28;
  }

  v37 = v38;
LABEL_14:

  v39 = sub_1AD45B7F4(2uLL, v26, v27);
  v41 = v40;

  result = sub_1ADB06A40();
  if (v43)
  {
    v44 = v41;
  }

  else
  {
    v44 = result;
  }

  if (v44 >> 14 >= v39 >> 14)
  {
    v45 = sub_1ADB06A70();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    if ((v45 ^ v47) >= 0x4000)
    {
      v52 = sub_1AD45B1F4(v45, v47, v49, v51, 16);
      if ((v52 & 0x10000) != 0)
      {
        LOWORD(v52) = sub_1AD45AC14(v45, v47, v49, v51, 16);
      }

      v53 = v52;

      if ((v53 & 0x100) == 0)
      {
        v87 = v37 != 0;

        v54 = sub_1AD45B7F4(4uLL, v26, v27);
        v56 = v55;
        result = sub_1ADB06A40();
        if (v57)
        {
          v58 = v56;
        }

        else
        {
          v58 = result;
        }

        if (v58 >> 14 >= v54 >> 14)
        {
          v59 = sub_1ADB06A70();
          v61 = v60;
          v63 = v62;
          v65 = v64;

          v84 = MEMORY[0x1B26F64D0](v59, v61, v63, v65);
          v67 = v66;

          v68 = v86;
          v69 = sub_1AD45B7F4(6uLL, v86, v27);
          v71 = v70;
          v73 = v72;
          v75 = v74;

          v76 = MEMORY[0x1B26F64D0](v69, v71, v73, v75);
          v78 = v77;

          v79 = v87;
          v80 = v81;
          *v81 = v68;
          v80[1] = v27;
          *(v80 + 16) = v53;
          *(v80 + 17) = v79;
          v80[3] = v84;
          v80[4] = v67;
          v80[5] = v76;
          v80[6] = v78;
          return result;
        }

        goto LABEL_32;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1AD45BF50()
{
  result = qword_1EB59A648;
  if (!qword_1EB59A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A648);
  }

  return result;
}

unint64_t sub_1AD45BFA4()
{
  result = qword_1EB59A650;
  if (!qword_1EB59A650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A650);
  }

  return result;
}

uint64_t sub_1AD45C008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AD45C070()
{
  result = qword_1EB59A660;
  if (!qword_1EB59A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteNetworkPaymentIdentifier.RequestType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteNetworkPaymentIdentifier.RequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AD45C244()
{
  result = qword_1EB59A668;
  if (!qword_1EB59A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A668);
  }

  return result;
}

uint64_t sub_1AD45C298(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AD42564C(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_1AD42564C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[3 * v10];
  *(v11 + 32) = a1;
  v11[5] = a2;
  v11[6] = a3;
  *v3 = v7;
  return result;
}

void static ProvisioningComposerFactory.createCarKeyComposer(with:context:credential:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  sub_1AD46B26C(a2, a3, a4, ObjectType, a5);
}

id *static ProvisioningComposerFactory.createFieldsComposer(with:skipSteps:context:credential:coordinator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_1AD46AA04(a1, a2, a3, a4, a5, ObjectType, a6);
}

uint64_t sub_1AD45C430(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, id a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, void *a9, char a10, uint64_t a11)
{
  if (a7 || ![a4 isHomeKeyCredential])
  {
    v107 = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = a9;
    *(v19 + 24) = a8;

    v106 = a9;
    v119 = sub_1AD45DD8C(4, sub_1AD46B8F8, v19, a1, a2);

    sub_1AD45E024(5, sub_1AD46B928, a8, a1, a2);

    sub_1AD45E2CC(6, sub_1AD46B930, a8, a1, a2);

    if (!a7 && (([a4 isAccountCredential] & 1) != 0 || (objc_msgSend(a4, sel_isAccountReferenceCredential) & 1) != 0 || objc_msgSend(a4, sel_isPeerPaymentCredential)))
    {

      sub_1AD45E574(8, sub_1AD46BC4C, a8, a1, a2);
    }

    sub_1AD45E81C(16, sub_1AD46B968, a8, a1, a2);

    sub_1AD45EAC4(9, sub_1AD46B970, a8, a1, a2);

    v120 = a1;
    if (a10)
    {

      v20 = sub_1AD45ED6C(7, sub_1AD46BC3C, a8, a1, a2);

      v100 = sub_1AD43FACC(&qword_1EB59A708, &qword_1EB59A710);

      v21 = sub_1AD461FDC(11, v20, sub_1AD46BC44, a8, a1, a2);

      v122 = v20;

      LOBYTE(v124) = 7;
      v22 = sub_1AD43FACC(&qword_1EB59A690, &qword_1EB59A698);
      swift_retain_n();
      a2(&v129, &v124);
      swift_unownedRetainStrong();
      sub_1AD46A098(v21, v129);
    }

    else
    {
      v124 = a4;
      v125 = a5;
      v126 = a6;
      v127 = a7;
      v23 = sub_1AD46B040(&v124);
      if (v23)
      {
        v24 = v23;
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        *(v25 + 24) = a8;

        swift_unknownObjectRetain();
        v21 = sub_1AD45EFFC(11, sub_1AD46BC34, v25, a1, a2);

        v22 = sub_1AD43FACC(&qword_1EB59A690, &qword_1EB59A698);
        LOBYTE(v124) = 16;
        swift_retain_n();
        a2(&v129, &v124);
        swift_unownedRetainStrong();
        sub_1AD46A098(v21, v129);

        swift_unknownObjectRelease();
      }

      else
      {
        if (a7 == 5)
        {
          swift_unownedRetainStrong();
          v26 = swift_allocObject();
          v26[2] = sub_1AD46C794;
          v26[3] = 0;
          v26[4] = a2;
          v26[5] = a3;
          swift_retain_n();
          swift_unownedRetain();

          v27 = swift_allocObject();
          v27[2] = a1;
          v27[3] = sub_1AD46BBB0;
          v27[4] = v26;
          v27[5] = a8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6F8);
          v28 = swift_allocObject();
          *(v28 + 16) = sub_1AD46BC20;
          *(v28 + 24) = v27;
          *(v28 + 32) = sub_1AD3CD77C;
          *(v28 + 40) = 0;
          *(v28 + 48) = xmmword_1ADB81F00;
          *(v28 + 64) = 0x80000001ADB9FA30;
          *(v28 + 72) = 0;

          swift_unownedRetain();

          LOBYTE(v129) = 0;
          sub_1AD364EDC(&v129, &v128);
          v29 = a1;
          v96 = a2;
          a2(&v124, &v128);
          v30 = v124;
          v124 = 32;
          v125 = 0xE100000000000000;
          swift_unownedRetainStrong();
          v31 = sub_1AD469DB8(v30, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
          v33 = v32;

          MEMORY[0x1B26F6530](v31, v33);

          v34 = v124;
          v35 = v125;
          swift_beginAccess();
          MEMORY[0x1B26F6530](v34, v35);
          swift_endAccess();

          swift_unownedRetainStrong();
          v98 = sub_1AD43FACC(&qword_1EB59A700, &qword_1EB59A6F8);
          v36 = *(a1 + 72);

          os_unfair_lock_lock(v36 + 4);
          swift_beginAccess();
          v37 = *(a1 + 112);
          v38 = v28;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v29 + 112) = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = sub_1AD42564C(0, v37[2] + 1, 1, v37);
            *(v120 + 112) = v37;
          }

          v41 = v37[2];
          v40 = v37[3];
          if (v41 >= v40 >> 1)
          {
            v37 = sub_1AD42564C((v40 > 1), v41 + 1, 1, v37);
          }

          v37[2] = v41 + 1;
          v42 = &v37[3 * v41];
          *(v42 + 32) = v30;
          v42[5] = v38;
          v42[6] = v98;
          *(v120 + 112) = v37;
          swift_endAccess();
          os_unfair_lock_unlock((*(v120 + 72) + 16));

          swift_unownedRelease();

          v43 = swift_allocObject();
          *(v43 + 16) = v106;
          *(v43 + 24) = a8;

          v44 = v106;
          v105 = v38;
          v45 = v38;
          a2 = v96;
          a1 = v120;
          v21 = sub_1AD464448(11, v45, sub_1AD46BC2C, v43, v120, v96);

          v22 = sub_1AD43FACC(&qword_1EB59A690, &qword_1EB59A698);
          LOBYTE(v124) = 0;
          swift_retain_n();
          v96(&v129, &v124);
          swift_unownedRetainStrong();
          sub_1AD46A098(v21, v129);

          v122 = 0;
          v100 = 0;
          goto LABEL_29;
        }

        v46 = *(a11 + 16);
        v47 = (a11 + 32);
        while (v46)
        {
          v48 = *v47++;
          --v46;
          if (v48 == 10)
          {
            goto LABEL_26;
          }
        }

        v49 = swift_allocObject();
        *(v49 + 16) = v106;
        *(v49 + 24) = a8;

        v50 = v106;
        sub_1AD45F28C(10, sub_1AD46BB80, v49, a1, a2);

LABEL_26:
        v51 = swift_allocObject();
        *(v51 + 16) = v106;
        *(v51 + 24) = a8;

        v52 = v106;
        v21 = sub_1AD45EFFC(11, sub_1AD46B9A0, v51, a1, a2);

        v22 = sub_1AD43FACC(&qword_1EB59A690, &qword_1EB59A698);
      }

      v122 = 0;
      v100 = 0;
    }

    v105 = 0;
    v98 = 0;
LABEL_29:
    ObjectType = swift_getObjectType();
    LOBYTE(v124) = 12;
    v54 = type metadata accessor for ProvisioningStepAuthorization();
    v55 = sub_1AD46BA00();
    swift_unknownObjectRetain_n();

    sub_1AD49DAAC(&v124, v21, sub_1AD46B9D0, a8, a1, a2, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v54, ObjectType, v55, v55, &protocol witness table for ProvisioningStepAuthorization, v22);

    swift_unknownObjectRelease();

    LOBYTE(v124) = 13;
    v56 = type metadata accessor for ProvisioningStepValidatePreconditions();

    sub_1AD49DAAC(&v124, v21, sub_1AD46BA54, a8, a1, a2, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v56, ObjectType, v55, v55, &protocol witness table for ProvisioningStepValidatePreconditions, v22);

    swift_unknownObjectRelease();

    LOBYTE(v124) = 14;
    v57 = type metadata accessor for ProvisioningStepSEStorage();

    sub_1AD49DAAC(&v124, v21, sub_1AD46BA5C, a8, a1, a2, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v57, ObjectType, v55, v55, &protocol witness table for ProvisioningStepSEStorage, v22);

    swift_unknownObjectRelease();

    v58 = *(a11 + 16);
    v59 = (a11 + 32);
    v111 = v55;
    while (v58)
    {
      v60 = *v59++;
      --v58;
      if (v60 == 15)
      {
        goto LABEL_36;
      }
    }

    LOBYTE(v124) = 15;
    v61 = type metadata accessor for ProvisioningStepTerms();

    v62 = v55;
    v63 = v22;
    v64 = sub_1AD49DAAC(&v124, v21, sub_1AD46BB50, a8, a1, a2, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v61, ObjectType, v62, v62, &protocol witness table for ProvisioningStepTerms, v22);

    if (v107 != 5)
    {
      LOBYTE(v124) = 11;
      a2(&v129, &v124);
      swift_unownedRetainStrong();
      sub_1AD46A098(v64, v129);
    }

    v22 = v63;
    v55 = v111;
LABEL_36:
    v112 = sub_1AD45F51C(18, sub_1AD46BA64, 0, a1, a2);
    LOBYTE(v124) = 17;
    Keys = type metadata accessor for ProvisioningStepGenerateKeys();

    v66 = sub_1AD49DAAC(&v124, v21, sub_1AD46BA90, a8, a1, a2, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, Keys, ObjectType, v55, v55, &protocol witness table for ProvisioningStepGenerateKeys, v22);

    v104 = v22;
    v113 = ObjectType;
    v103 = v66;
    v121 = v21;
    if ((a10 & 1) != 0 && v122)
    {
      v115 = swift_getObjectType();
      LOBYTE(v124) = 19;
      v108 = type metadata accessor for ProvisioningStepEnable();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v67 = a2;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6A8);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6B0);
      v69 = sub_1AD43FACC(&qword_1EB59A6B8, &qword_1EB59A6A8);
      v70 = v111;
      v71 = v120;
      v72 = sub_1AD43FACC(&qword_1EB59A6C0, &qword_1EB59A6B0);
      v73 = v67;
      v74 = sub_1AD49DE50(&v124, v122, v121, v66, v119, sub_1AD46BB48, a8, v120, v67, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v108, v115, v113, v99, v68, v70, v70, &protocol witness table for ProvisioningStepEnable, v100, v22, v69, v72);
    }

    else
    {
      v97 = a2;
      if (!v105)
      {
        LOBYTE(v124) = 19;
        v89 = swift_allocObject();
        *(v89 + 16) = v106;
        *(v89 + 24) = a8;
        v90 = type metadata accessor for ProvisioningStepEnable();

        v91 = v106;
        swift_unknownObjectRetain();
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6A8);
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6B0);
        v93 = sub_1AD43FACC(&qword_1EB59A6B8, &qword_1EB59A6A8);
        v94 = sub_1AD43FACC(&qword_1EB59A6C0, &qword_1EB59A6B0);
        v70 = v111;
        v95 = v90;
        v71 = v120;
        v73 = v97;
        v74 = sub_1AD49E26C(&v124, v21, v103, v119, sub_1AD46BA98, v89, v120, v97, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v95, ObjectType, v118, v92, v111, v111, &protocol witness table for ProvisioningStepEnable, v104, v93, v94);

        goto LABEL_42;
      }

      v101 = swift_getObjectType();
      LOBYTE(v124) = 19;
      v75 = swift_allocObject();
      *(v75 + 16) = v106;
      *(v75 + 24) = a8;
      v116 = type metadata accessor for ProvisioningStepEnable();

      v76 = v106;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6A8);
      v77 = v21;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6B0);
      v79 = sub_1AD43FACC(&qword_1EB59A6B8, &qword_1EB59A6A8);
      v80 = sub_1AD43FACC(&qword_1EB59A6C0, &qword_1EB59A6B0);
      v70 = v111;
      v73 = a2;
      v71 = v120;
      v74 = sub_1AD49DE50(&v124, v77, v103, v119, v105, sub_1AD46BB20, v75, v120, v97, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v116, ObjectType, v109, v78, v101, v111, v111, &protocol witness table for ProvisioningStepEnable, v104, v79, v80, v98);
    }

    swift_unknownObjectRelease();
LABEL_42:
    v117 = sub_1AD43FACC(&qword_1EB59A6C8, &qword_1EB59A6D0);
    v110 = swift_getObjectType();
    LOBYTE(v124) = 11;
    v81 = swift_unknownObjectRetain_n();
    sub_1AD49DD44(v81, &v124, v71, v73, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v110, v70, v70, v117);
    LOBYTE(v124) = 21;
    v82 = swift_allocObject();
    *(v82 + 16) = v106;
    *(v82 + 24) = a8;
    v102 = type metadata accessor for ProvisioningStepIngestPass();

    v83 = v106;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6D8);
    v85 = sub_1AD43FACC(&qword_1EB59A6E0, &qword_1EB59A6D8);
    v114 = sub_1AD49E26C(&v124, v74, v121, v112, sub_1AD46BAA0, v82, v120, v73, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v102, v110, v113, v84, v70, v70, &protocol witness table for ProvisioningStepIngestPass, v117, v104, v85);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LOBYTE(v124) = 20;
    v86 = type metadata accessor for ProvisioningStepStoreSupportData();

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6E8);
    v88 = sub_1AD43FACC(&qword_1EB59A6F0, &qword_1EB59A6E8);
    sub_1AD49E5D8(&v124, v74, v114, sub_1AD46BAA8, a8, v120, v73, a3, &type metadata for ProvisioningStep, &type metadata for ProvisioningStep, v86, v110, v87, v70, v70, &protocol witness table for ProvisioningStepStoreSupportData, v117, v88);

    swift_unknownObjectRelease();

    sub_1AD45F7B8(22, sub_1AD46BAB0, a8, v120, v73);

    sub_1AD45FA60(23, sub_1AD46BAB8, a8, v120, v73);

    sub_1AD462324(24, v114, sub_1AD46BAE8, a8, v120, v73);

    sub_1AD45FD08(25, sub_1AD46BB18, a8, v120, v73);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  sub_1AD45DAFC(19, sub_1AD46BC7C, a8, a1, a2);
}

uint64_t sub_1AD45DAFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A718);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F10;
  *(v9 + 64) = 0x80000001ADB9F970;
  *(v9 + 72) = 0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A720, &qword_1EB59A718);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45DD8C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6B0);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F20;
  *(v9 + 64) = 0x80000001ADB9FC50;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A6C0, &qword_1EB59A6B0);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45E024(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A800);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD00000000000001ALL;
  *(v9 + 64) = 0x80000001ADB9FC30;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A808, &qword_1EB59A800);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45E2CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A7F0);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000027;
  *(v9 + 64) = 0x80000001ADB9FC00;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A7F8, &qword_1EB59A7F0);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45E574(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A728);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD00000000000001ELL;
  *(v9 + 64) = 0x80000001ADB9F990;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A730, &qword_1EB59A728);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45E81C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A7E0);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000022;
  *(v9 + 64) = 0x80000001ADB9FBD0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A7E8, &qword_1EB59A7E0);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45EAC4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A7D0);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD00000000000001FLL;
  *(v9 + 64) = 0x80000001ADB9FBB0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A7D8, &qword_1EB59A7D0);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45ED6C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A710);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F30;
  *(v9 + 64) = 0x80000001ADB9F9D0;
  *(v9 + 72) = 0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A708, &qword_1EB59A710);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45EFFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A698);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F40;
  *(v9 + 64) = 0x80000001ADB9F9B0;
  *(v9 + 72) = 0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A690, &qword_1EB59A698);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45F28C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A758);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F50;
  *(v9 + 64) = 0x80000001ADB9FA50;
  *(v9 + 72) = 0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A760, &qword_1EB59A758);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45F51C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A6D8);
  v9 = swift_allocObject();
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F60;
  *(v9 + 64) = 0x80000001ADB9FB80;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A6E0, &qword_1EB59A6D8);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45F7B8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A7A0);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000020;
  *(v9 + 64) = 0x80000001ADB9FB00;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A7A8, &qword_1EB59A7A0);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45FA60(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A790);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000022;
  *(v9 + 64) = 0x80000001ADB9FAD0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A798, &qword_1EB59A790);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45FD08(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A768);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000027;
  *(v9 + 64) = 0x80000001ADB9FA70;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningStep.description.getter, sub_1AD46A6C0);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&unk_1EB59A770, &qword_1EB59A768);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD42564C(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD42564C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD45FFB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A958);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000027;
  *(v9 + 64) = 0x80000001ADB9FC00;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&unk_1EB59A960, &qword_1EB59A958);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD425794(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD425794((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD460258(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A898);
  v9 = swift_allocObject();
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = -1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000022;
  *(v9 + 64) = 0x80000001ADB9FCE0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A890, &qword_1EB59A898);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD425794(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD425794((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD46050C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A850);
  v9 = swift_allocObject();
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F60;
  *(v9 + 64) = 0x80000001ADB9FB80;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A848, &qword_1EB59A850);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD425794(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD425794((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD4607A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A948);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD000000000000023;
  *(v9 + 64) = 0x80000001ADB9FEA0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A950, &qword_1EB59A948);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD425794(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD425794((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD460A50(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A8C8);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F20;
  *(v9 + 64) = 0x80000001ADB9FD70;
  *(v9 + 72) = 0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A8C0, &qword_1EB59A8C8);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD425794(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD425794((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD460CE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A938);
  v9 = swift_allocObject();
  *(v9 + 72) = 1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 56) = 0xD00000000000001CLL;
  *(v9 + 64) = 0x80000001ADB9FE80;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A940, &qword_1EB59A938);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD425794(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD425794((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD460F88(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A8E0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = sub_1AD3CD77C;
  *(v9 + 40) = 0;
  *(v9 + 48) = xmmword_1ADB81F70;
  *(v9 + 64) = 0x80000001ADB9FE50;
  *(v9 + 72) = 0;

  a5(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  v10 = v22;
  v11 = sub_1AD469DB8(v22, MEMORY[0x1E69E7CC0], ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v13 = v12;

  MEMORY[0x1B26F6530](v11, v13);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v14 = sub_1AD43FACC(&qword_1EB59A8D8, &qword_1EB59A8E0);
  v15 = *(a4 + 72);

  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(a4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 112) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AD425794(0, v16[2] + 1, 1, v16);
    *(a4 + 112) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1AD425794((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  *(v20 + 32) = v10;
  v20[5] = v9;
  v20[6] = v14;
  *(a4 + 112) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((*(a4 + 72) + 16));

  return v9;
}

uint64_t sub_1AD461218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 72))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD4612C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  v9 = v7 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepLostMode_credential;
  v10 = *(v7 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepLostMode_credential);
  v11 = *(v7 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepLostMode_credential + 8);
  v12 = *(v7 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepLostMode_credential + 16);
  v13 = *(v7 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepLostMode_credential + 24);
  if (v13 == 3)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;

      sub_1AD3DF24C(v10, v11, v12, 3u);
      v17 = [v16 metadatas];
      if (!v17)
      {
        sub_1AD3D3200(0, &unk_1EB59A7C0);
        sub_1ADB06610();
        v17 = sub_1ADB06600();
      }

      v14 = [objc_allocWithZone(PKAddShareablePassConfiguration) initWithPrimaryAction:0 credentialsMetadata:v17];

      sub_1AD3CC2E0(v10, v11, v12, 3u);
LABEL_8:
      v18 = PKRequiresUnifiedAccessCapableDeviceForPushableConfiguration(v14);
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      v20 = [*(v7 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepLostMode_sharedState) sid];
      v21 = sub_1ADB063B0();
      v23 = v22;

      v24 = *(v7 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepLostMode_secureElement);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v21;
      v26[4] = v23;
      v26[5] = sub_1AD46BFD4;
      v26[6] = v8;
      v30[4] = sub_1AD46C038;
      v30[5] = v26;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 1107296256;
      v30[2] = sub_1AD471E08;
      v30[3] = &block_descriptor_201;
      v27 = _Block_copy(v30);

      [v24 areAnyAppletsSuspendedWithCompletionHandler_];

      _Block_release(v27);
      return;
    }

    v13 = *(v9 + 24);
  }

  else if (v13 == 2)
  {

    sub_1AD3DF24C(v10, v11, v12, 2u);
    v14 = v10;
    goto LABEL_8;
  }

  if (v13)
  {

    goto LABEL_15;
  }

  v19 = *v9;

  if ([v19 cardType] == 4)
  {
    goto LABEL_14;
  }

LABEL_15:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(0, a2, a3, ObjectType, v28);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1AD461670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD461714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD4617C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 48);
  if (v9 == 3)
  {
    v11 = *(v7 + 32);
    v12 = *(v7 + 40);
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = v8;
    v16 = [v14 metadatas];
    if (!v16)
    {
      sub_1AD3D3200(0, &unk_1EB59A7C0);
      sub_1ADB06610();
      v16 = sub_1ADB06600();
    }

    v10 = [objc_allocWithZone(PKAddShareablePassConfiguration) initWithPrimaryAction:0 credentialsMetadata:v16];

    sub_1AD3CC2E0(v8, v11, v12, 3u);
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRetain();
    v10 = v8;
  }

  v17 = [v10 identityDocumentConfiguration];
  swift_unknownObjectRelease();
  if (v17)
  {
    if ([v17 configurationType] == 4)
    {
      v18 = [v17 metadata];
      v19 = [v18 underlyingPreview];

      if (v19)
      {
        v20 = [v19 localizedDescription];

        if (v20)
        {
          v21 = sub_1ADB063B0();
          v19 = v22;
        }

        else
        {
          v21 = 0;
          v19 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(a4 + 24);
        ObjectType = swift_getObjectType();
        (*(v26 + 144))(v21, v19, 0, a2, a3, ObjectType, v26);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

LABEL_14:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(a4 + 24);
    v25 = swift_getObjectType();
    (*(v24 + 144))(0, 0, 2, a2, a3, v25, v24);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD461AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD461B54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  if (*(v7 + 48) - 2 < 4)
  {

LABEL_3:
    v9 = [objc_opt_self() errorWithCommonType:1 severity:4];
    v10 = sub_1ADB06370();
    [v9 addInternalDebugDescription_];

    [v9 setUnderlyingError_];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(a4 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 48))(v9, 1, a2, a3, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v13 = *(v7 + 24);
  if (*(v7 + 48))
  {

    v17 = v13;
  }

  else
  {

    v14 = [v13 issuerProvisioningExtensionCredential];
    if (!v14)
    {
      goto LABEL_3;
    }

    v15 = v14;
    v16 = [v14 entry];

    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = [v16 addRequestConfiguration];

    if (!v17)
    {
      goto LABEL_3;
    }
  }

  v18 = [*(v7 + 56) sid];
  v19 = sub_1ADB063B0();
  v21 = v20;

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_1AD46BCCC;
  v23[4] = v8;
  v23[5] = v19;
  v23[6] = v21;
  v23[7] = v17;

  v24 = v17;
  sub_1AD50A07C(v24, sub_1AD46BCDC, v23);
}

uint64_t sub_1AD461E74(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 48))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD461F20(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a3;
  v9[4] = a4;

  sub_1AD41942C(v8);
  v11 = v10;
  sub_1AD419258(v10, sub_1AD46BCAC, v9);
}

uint64_t sub_1AD461FDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A738);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 40) = a2;
  *(v11 + 48) = xmmword_1ADB81F40;
  *(v11 + 64) = 0x80000001ADB9F9B0;
  *(v11 + 72) = 0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A708, &qword_1EB59A710);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningStep.description.getter, sub_1AD46A6C0);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A748, &qword_1EB59A738);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD42564C(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD42564C((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD462324(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A780);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 72) = 1;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 56) = 0xD000000000000023;
  *(v11 + 64) = 0x80000001ADB9FAA0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A6F0, &qword_1EB59A6E8);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningStep.description.getter, sub_1AD46A6C0);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A788, &qword_1EB59A780);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD42564C(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD42564C((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD46267C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A888);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 16) = sub_1AD46C40C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C418;
  *(v11 + 40) = a2;
  *(v11 + 48) = xmmword_1ADB81F80;
  *(v11 + 64) = 0x80000001ADB9FCB0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A890, &qword_1EB59A898);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A8A0, &qword_1EB59A888);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD4629C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A868);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 72) = 1;
  *(v11 + 16) = sub_1AD46C3C4;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C3D0;
  *(v11 + 56) = 0xD00000000000002BLL;
  *(v11 + 64) = 0x80000001ADB9FC80;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A870, &qword_1EB59A878);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A880, &qword_1EB59A868);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD462D20(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A8B8);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 40) = a2;
  *(v11 + 48) = xmmword_1ADB81F30;
  *(v11 + 64) = 0x80000001ADB9FD40;
  *(v11 + 72) = 0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A8C0, &qword_1EB59A8C8);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A8D0, &qword_1EB59A8B8);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD463068(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A8A8);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 72) = 1;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 56) = 0xD000000000000020;
  *(v11 + 64) = 0x80000001ADB9FD10;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A838, &qword_1EB59A840);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A8B0, &qword_1EB59A8A8);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD4633C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A8E8);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 72) = 1;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 56) = 0xD000000000000026;
  *(v11 + 64) = 0x80000001ADB9FDA0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A8F0, &qword_1EB59A8F8);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A900, &qword_1EB59A8E8);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD463718(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A8B8);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 40) = a2;
  *(v11 + 48) = xmmword_1ADB81F30;
  *(v11 + 64) = 0x80000001ADB9FD40;
  *(v11 + 72) = 0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A8D8, &qword_1EB59A8E0);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A8D0, &qword_1EB59A8B8);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD463A60(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A928);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 72) = 1;
  *(v11 + 16) = sub_1AD46C63C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C65C;
  *(v11 + 56) = 0xD000000000000022;
  *(v11 + 64) = 0x80000001ADB9FE20;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A8D8, &qword_1EB59A8E0);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A930, &qword_1EB59A928);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD463DB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A918);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 40) = a2;
  *(v11 + 48) = xmmword_1ADB81F90;
  *(v11 + 64) = 0x80000001ADB9FDF0;
  *(v11 + 72) = 0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A8D8, &qword_1EB59A8E0);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A920, &qword_1EB59A918);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD464100(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v27) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A8B8);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 40) = a2;
  *(v11 + 48) = xmmword_1ADB81F30;
  *(v11 + 64) = 0x80000001ADB9FD40;
  *(v11 + 72) = 0;
  swift_retain_n();

  a6(&v27, &v27 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A908, &qword_1EB59A910);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v27;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A8D0, &qword_1EB59A8B8);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();
  v21 = *(a5 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 112) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AD425794(0, v21[2] + 1, 1, v21);
    *(a5 + 112) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1AD425794((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[3 * v24];
  *(v25 + 32) = v15;
  v25[5] = v11;
  v25[6] = v19;
  *(a5 + 112) = v21;
  swift_endAccess();
  os_unfair_lock_unlock((*(a5 + 72) + 16));

  return v11;
}

uint64_t sub_1AD464448(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  BYTE1(v22) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A738);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  *(v11 + 16) = sub_1AD46C75C;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AD46C6F0;
  *(v11 + 40) = a2;
  *(v11 + 48) = xmmword_1ADB81F40;
  *(v11 + 64) = 0x80000001ADB9F9B0;
  *(v11 + 72) = 0;
  swift_retain_n();

  a6(&v22, &v22 + 1);
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  v14 = sub_1AD43FACC(&qword_1EB59A700, &qword_1EB59A6F8);
  *(inited + 32) = a2;
  *(inited + 40) = v14;
  v15 = v22;

  v16 = sub_1AD469DB8(v15, inited, ProvisioningStep.description.getter, sub_1AD46A6C0);
  v18 = v17;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v16, v18);

  swift_beginAccess();
  MEMORY[0x1B26F6530](32, 0xE100000000000000);
  swift_endAccess();

  swift_unownedRetainStrong();
  v19 = sub_1AD43FACC(&qword_1EB59A748, &qword_1EB59A738);
  v20 = *(a5 + 72);

  os_unfair_lock_lock(v20 + 4);
  swift_beginAccess();

  sub_1AD45C298(v15, v11, v19);
  swift_endAccess();
  os_unfair_lock_unlock(v20 + 4);

  return v11;
}

uint64_t sub_1AD464720(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a2;
  v9[4] = a3;

  sub_1AD41960C(a4, sub_1AD46C758, v9);
}

uint64_t sub_1AD4647C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();
  swift_retain_n();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a5;
  *(v14 + 32) = a6;
  *(v14 + 40) = 1;
  v15 = (v12 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidStartPolling);
  swift_beginAccess();
  v16 = *v15;
  *v15 = sub_1AD46BCF0;
  v15[1] = v14;
  sub_1AD3C5FB8(v16);
  v17 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = 2;
  v19 = (v12 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onDidFindCard);
  swift_beginAccess();
  v20 = *v19;
  *v19 = sub_1AD46C740;
  v19[1] = v18;
  sub_1AD3C5FB8(v20);
  v21 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a5;
  *(v22 + 32) = a6;
  *(v22 + 40) = 3;
  v23 = (v12 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_onFailedToReadCard);
  swift_beginAccess();
  v24 = *v23;
  *v23 = sub_1AD46C740;
  v23[1] = v22;
  sub_1AD3C5FB8(v24);
  v25 = swift_allocObject();
  *(v25 + 2) = a7;
  *(v25 + 3) = a2;
  *(v25 + 4) = a3;
  v26 = (v12 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_commonCompletion);
  v27 = *(v12 + OBJC_IVAR____TtC11PassKitCore24ProvisioningStepReadCard_commonCompletion);
  *v26 = sub_1AD46BD08;
  v26[1] = v25;

  sub_1AD3C5FB8(v27);
  sub_1AD4D15D4();
}

uint64_t sub_1AD464A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 64))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD464B20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = *a2;
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a3;
  v11[4] = a4;

  v12 = sub_1AD418C38(a5, 9);
  [v12 setTapToProvisionData_];
  sub_1AD419258(v12, sub_1AD46C758, v11);
}

uint64_t sub_1AD464BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 56))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD464C98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;

  a6(a4, v11, a5, a2, a3);
}

uint64_t sub_1AD464D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 80))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD464DCC(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a2;
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  v11 = objc_allocWithZone(type metadata accessor for ProvisioningRequirementOracle());

  v12 = [v11 init];
  v13 = *(v8 + 16);
  swift_beginAccess();
  v14 = *(v13 + 72);
  v15 = sub_1AD50F58C(v9, v14);

  sub_1AD45601C(v15, v8, sub_1AD46BFB4, v10);
}

uint64_t sub_1AD464EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1AD464F90(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = [*a2 paymentApplications];
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = v9;
  sub_1AD3D3200(0, &qword_1EB599EC8);
  v12 = sub_1ADB06610();

  if (v12 >> 62)
  {
    v13 = sub_1ADB06D00();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = sub_1AD4506A8(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    return result;
  }

  v25 = v8;
  v26 = a3;
  v15 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B26F6CC0](v15, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = [v17 appletTypeIdentifier];
    v19 = sub_1ADB063B0();
    v21 = v20;

    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1AD4506A8((v22 > 1), v23 + 1, 1);
    }

    ++v15;
    *(v10 + 16) = v23 + 1;
    v24 = v10 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
  }

  while (v13 != v15);

  v8 = v25;
  a3 = v26;
LABEL_15:

  sub_1AD427F88(v10, v8, a5, a3, a4);
}

uint64_t sub_1AD4651A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 88))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD465254(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a3;
  v9[4] = a4;

  sub_1AD4C4BC4(v8, sub_1AD46BFA4, v9);
}

uint64_t sub_1AD4652F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 112))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD4653A4(uint64_t *a1, void **a2, uint64_t *a3, void **a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a6;
  v16[4] = a7;
  v17 = swift_allocObject();
  v17[2] = v11;
  v17[3] = sub_1AD46BD38;
  v17[4] = v16;

  sub_1AD4B58B8(v14, 0, v12, v13, v15, 0, sub_1AD46BD5C, v17);
}

void sub_1AD4654C0(uint64_t *a1, void **a2, void **a3, void **a4, void **a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v12 = *a1;
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a6;
  v17[4] = a7;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v12;
  v21 = v19;
  v19[2] = v18;
  v19[3] = v14;
  v22 = a8;
  v19[4] = a8;
  v19[5] = v13;
  v19[6] = v15;
  v19[7] = v16;
  v19[8] = sub_1AD46C798;
  v19[9] = v17;
  if (!*(v20 + 48))
  {
    v32 = v15;
    v33 = *(v20 + 24);
    v58 = *(v20 + 32);
    v34 = *(v20 + 40);
    v55 = v32;
    v35 = v32;
    v56 = v13;
    v36 = v13;
    v37 = v34;
    v38 = v33;
    v57 = v36;
    v39 = v22;
    v40 = v14;

    v41 = v16;
    sub_1AD3DF24C(v33, v58, v37, 0);
    v42 = [v33 isAppleBalanceCredential];
    v28 = v17;
    if (v42)
    {
      v60 = v17;

      sub_1AD3CC2E0(v38, v58, v37, 0);
    }

    else
    {
      v59 = v14;
      v43 = [v38 credentialType];
      sub_1AD3CC2E0(v38, v58, v37, 0);
      v13 = v56;
      v15 = v55;
      if (v43 != 135)
      {
        goto LABEL_3;
      }

      v60 = v17;
    }

    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v45 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
    v65 = sub_1AD46BD70;
    v66 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1AD433EF4;
    v64 = &block_descriptor_104_0;
    v46 = _Block_copy(&aBlock);

    [v45 addOperation_];
    _Block_release(v46);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = v57;
    v48[4] = v44;
    v65 = sub_1AD46BD78;
    v66 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1AD433EF4;
    v64 = &block_descriptor_111;
    v49 = _Block_copy(&aBlock);
    v50 = v57;

    [v45 addOperation_];
    _Block_release(v49);
    v51 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v52 = swift_allocObject();
    v52[2] = v44;
    v52[3] = sub_1AD46C798;
    v52[4] = v60;
    v52[5] = sub_1AD46BD6C;
    v52[6] = v21;
    v65 = sub_1AD46BD84;
    v66 = v52;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1AD434CF8;
    v64 = &block_descriptor_117;
    v53 = _Block_copy(&aBlock);

    v54 = [v45 evaluateWithInput:v51 completion:v53];

    _Block_release(v53);

    swift_unknownObjectRelease();
    return;
  }

  v23 = v15;
  v24 = v13;
  v25 = a8;
  v59 = v14;
  v26 = v14;

  v27 = v16;
  v28 = v17;
LABEL_3:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = sub_1AD46C798;
    v31[4] = v28;

    sub_1AD4B58B8(v59, v22, 0, v13, v15, v16, sub_1AD46BD5C, v31);
  }
}

void sub_1AD465A78(uint64_t *a1, void **a2, void **a3, void **a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v12 = *a1;
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a5;
  v16[4] = a6;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v14;
  v18[4] = a7;
  v18[5] = v13;
  v18[6] = v15;
  v18[7] = 0;
  v18[8] = sub_1AD46C798;
  v18[9] = v16;
  if (!*(v12 + 48))
  {
    v27 = v15;
    v51 = v16;
    v28 = v14;
    v29 = *(v12 + 24);
    v30 = *(v12 + 32);
    v31 = *(v12 + 40);
    v48 = v27;
    v32 = v27;
    v50 = v13;
    v49 = a7;
    v33 = a7;
    v34 = v30;
    v14 = v28;
    v16 = v51;
    v35 = v14;

    sub_1AD3DF24C(v29, v34, v31, 0);
    if ([v29 isAppleBalanceCredential])
    {

      sub_1AD3CC2E0(v29, v34, v31, 0);
    }

    else
    {
      v36 = [v29 credentialType];
      sub_1AD3CC2E0(v29, v34, v31, 0);
      a7 = v49;
      v15 = v48;
      if (v36 != 135)
      {
        goto LABEL_3;
      }
    }

    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
    v56 = sub_1AD46C73C;
    v57 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1AD433EF4;
    v55 = &block_descriptor_165;
    v39 = _Block_copy(&aBlock);

    [v38 addOperation_];
    _Block_release(v39);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = v50;
    v41[4] = v37;
    v56 = sub_1AD46C748;
    v57 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1AD433EF4;
    v55 = &block_descriptor_173;
    v42 = _Block_copy(&aBlock);
    v43 = v50;

    [v38 addOperation_];
    _Block_release(v42);
    v44 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v45 = swift_allocObject();
    v45[2] = v37;
    v45[3] = sub_1AD46C798;
    v45[4] = v51;
    v45[5] = sub_1AD46C744;
    v45[6] = v18;
    v56 = sub_1AD46C72C;
    v57 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1AD434CF8;
    v55 = &block_descriptor_180;
    v46 = _Block_copy(&aBlock);

    v47 = [v38 evaluateWithInput:v44 completion:v46];

    _Block_release(v46);

    swift_unknownObjectRelease();
    return;
  }

  v19 = v15;
  v20 = v13;
  v21 = a7;
  v22 = v14;

LABEL_3:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = a7;
    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = sub_1AD46C798;
    v26[4] = v16;

    sub_1AD4B58B8(v14, v25, 0, v13, v15, 0, sub_1AD46C7A0, v26);
  }
}

uint64_t sub_1AD466010(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 128))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD4660BC(uint64_t *a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a1;
  v43 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *(a4 + 16);
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a5;
  v42 = v16;
  v16[4] = a6;
  v17 = *(v11 + 64);
  v18 = *(v11 + 72);
  v19 = *(v11 + 80);
  *(v11 + 64) = v13;
  *(v11 + 72) = v14;
  *(v11 + 80) = v15;
  v20 = v15;

  v21 = v13;
  v22 = v14;
  sub_1AD440D2C(v17, v18, v19);
  v23 = *(v11 + 96);
  *(v11 + 96) = v12;
  v24 = v12;

  v25 = *(v11 + 88);
  *(v11 + 88) = a7;

  v26 = *(v11 + 56);
  v27 = a7;
  v28 = [v26 sid];
  if (!v28)
  {
    sub_1ADB063B0();
    v28 = sub_1ADB06370();
  }

  v29 = *(v11 + 16);
  swift_beginAccess();
  v30 = 0;
  v31 = *(v29 + 16);
  if (!*(v11 + 48))
  {
    v30 = *(v11 + 24);
  }

  [v31 setState:5 forCredential:v30];

  v32 = *(v11 + 16);
  swift_beginAccess();
  v33 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v32 + 72) managingWebService:*(v32 + 48)];
  swift_beginAccess();
  aBlock[9] = &unk_1F241AC40;
  v34 = swift_dynamicCastObjCProtocolConditional();
  if (v34)
  {
    [v33 setDataProvider_];
  }

  v35 = *(v11 + 16);
  swift_beginAccess();
  v36 = [*(v35 + 16) cloudStoreCoordinator];
  v37 = sub_1AD506284();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_1AD46BEA0;
  v39[4] = v42;
  aBlock[4] = sub_1AD46BEC4;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD3C8BB0;
  aBlock[3] = &block_descriptor_148;
  v40 = _Block_copy(aBlock);

  [v33 downloadAndIngestPassesForResponse:v43 cloudStoreCoordinatorDelegate:v36 ingestionProperties:v37 sid:v28 completion:v40];
  _Block_release(v40);

  swift_unknownObjectRelease();
}

uint64_t sub_1AD466414(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 136))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD4664C0(_BYTE **a1, void **a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;

  sub_1AD42ED78(v10, v11, v9, a6, a4, a5);
}

void sub_1AD46654C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  if (*(v7 + 48))
  {

    goto LABEL_3;
  }

  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v13 = *(v7 + 40);

  sub_1AD3DF24C(v11, v12, v13, 0);
  if ([v11 isAppleBalanceCredential])
  {
    sub_1AD3CC2E0(v11, v12, v13, 0);
  }

  else
  {
    v14 = [v11 credentialType];
    sub_1AD3CC2E0(v11, v12, v13, 0);
    if (v14 != 135)
    {
LABEL_3:
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(a4 + 24);
        ObjectType = swift_getObjectType();
        (*(v9 + 8))(0, 0, a2, a3, ObjectType, v9);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  v15 = [objc_opt_self() sharedInstance];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1AD46BE74;
    *(v17 + 24) = v8;
    v19[4] = sub_1AD46BE98;
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1AD46A960;
    v19[3] = &block_descriptor_136;
    v18 = _Block_copy(v19);

    [v16 updateAccountsWithCompletion_];

    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

id sub_1AD4667C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29[-v9];
  v11 = *a1;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a2;
  v12[4] = a3;
  v13 = *(v11 + 16);
  swift_beginAccess();
  v14 = *(v13 + 16);

  v15 = [v14 paymentOffersController];
  if (!v15)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(a4 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(0, 0, a2, a3, ObjectType, v19);

      return swift_unknownObjectRelease();
    }
  }

  v16 = v15;
  v17 = *(v11 + 24);
  if (*(v11 + 48) > 3u)
  {
    v18 = v17;
  }

  else
  {
    if (*(v11 + 48) - 1 >= 3)
    {
      result = [v17 state];
      v22 = result;
      if (!result)
      {
        __break(1u);
        return result;
      }

      goto LABEL_9;
    }

    v18 = [objc_allocWithZone(PKSecureElementProvisioningState) init];
  }

  v22 = v18;
LABEL_9:
  v23 = [v22 sid];

  v24 = sub_1ADB063B0();
  v26 = v25;

  v27 = sub_1ADB06720();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v11;
  v28[5] = sub_1AD46C79C;
  v28[6] = v12;
  v28[7] = v24;
  v28[8] = v26;
  v28[9] = v16;

  sub_1AD457038(0, 0, v10, &unk_1ADB820D0, v28);
}

uint64_t sub_1AD466A88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD466B34(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{

  sub_1AD45FFB0(5, sub_1AD46C048, a4, a1, a2);

  if (a5)
  {

    v14 = sub_1AD460258(0, sub_1AD46C384, a4, a1, a2);

    v15 = sub_1AD46267C(1, v14, sub_1AD46C3B4, a4, a1, a2);

    LOBYTE(v88) = 0;
    a2((&v90 + 1), &v88);
    swift_unownedRetainStrong();
    sub_1AD469FB0(v15, SBYTE1(v90));

    sub_1AD4629C8(4, v15, sub_1AD46C3BC, a4, a1, a2);
  }

  v16 = sub_1AD46050C(6, sub_1AD46C080, 0, a1, a2);

  sub_1AD4607A8(4, sub_1AD46C0AC, a4, a1, a2);

  v87 = v16;
  v86 = a2;
  if (a6)
  {
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;

    swift_unownedRetain();

    v18 = sub_1AD460A50(3, sub_1AD46C268, v17, a1, a2);

    v19 = sub_1AD462D20(12, v18, sub_1AD46C274, a4, a1, a2);

    sub_1AD463068(13, v19, sub_1AD46C2A4, a4, a1, a2);

    BYTE1(v90) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A830);
    v20 = a2;
    v21 = swift_allocObject();
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v16;
    v22[4] = sub_1AD46C2AC;
    v22[5] = a4;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v16;
    *(v21 + 16) = sub_1AD46C730;
    *(v21 + 24) = v22;
    *(v21 + 32) = sub_1AD46C754;
    *(v21 + 40) = v23;
    *(v21 + 48) = xmmword_1ADB81FA0;
    *(v21 + 64) = 0x80000001ADB9FDD0;
    *(v21 + 72) = 0;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v20(&v90, &v90 + 1);
    v88 = 32;
    v89 = 0xE100000000000000;
    swift_unownedRetainStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ADB81FB0;
    v25 = sub_1AD43FACC(&qword_1EB59A838, &qword_1EB59A840);
    *(inited + 32) = v19;
    *(inited + 40) = v25;
    v26 = sub_1AD43FACC(&qword_1EB59A848, &qword_1EB59A850);
    *(inited + 48) = v16;
    *(inited + 56) = v26;
    v27 = v90;

    v84 = v27;
    v28 = sub_1AD469DB8(v27, inited, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
    v30 = v29;

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A858);
    swift_arrayDestroy();
    MEMORY[0x1B26F6530](v28, v30);

    v31 = v88;
    v32 = v89;
    swift_beginAccess();
    MEMORY[0x1B26F6530](v31, v32);
    swift_endAccess();

    swift_unownedRetainStrong();
    v33 = sub_1AD43FACC(&qword_1EB59A860, &qword_1EB59A830);
    os_unfair_lock_lock((*(a1 + 72) + 16));
    swift_beginAccess();
    v34 = *(a1 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 112) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1AD425794(0, v34[2] + 1, 1, v34);
      *(a1 + 112) = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1AD425794((v36 > 1), v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[3 * v37];
    *(v38 + 32) = v84;
    v38[5] = v21;
    v38[6] = v33;
    *(a1 + 112) = v34;
    swift_endAccess();
    os_unfair_lock_unlock((*(a1 + 72) + 16));

    sub_1AD4633C0(15, v21, sub_1AD46C354, a4, a1, v86);
  }

  else
  {

    sub_1AD460CE0(7, sub_1AD46C0DC, a4, a1, a2);

    v39 = sub_1AD460F88(8, sub_1AD46C10C, a4, a1, a2);

    v85 = v39;
    if (a7)
    {

      v40 = sub_1AD463718(9, v39, sub_1AD46C210, a4, a1, a2);

      BYTE1(v90) = 14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A830);
      v41 = swift_allocObject();
      v42 = swift_allocObject();
      v42[2] = v40;
      v42[3] = v16;
      v42[4] = sub_1AD46C218;
      v42[5] = a4;
      v43 = swift_allocObject();
      *(v43 + 16) = v40;
      *(v43 + 24) = v16;
      *(v41 + 16) = sub_1AD46C730;
      *(v41 + 24) = v42;
      *(v41 + 32) = sub_1AD46C754;
      *(v41 + 40) = v43;
      *(v41 + 48) = xmmword_1ADB81FA0;
      *(v41 + 64) = 0x80000001ADB9FDD0;
      *(v41 + 72) = 0;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      a2(&v90, &v90 + 1);
      v88 = 32;
      v89 = 0xE100000000000000;
      swift_unownedRetainStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_1ADB81FB0;
      v45 = sub_1AD43FACC(&qword_1EB59A838, &qword_1EB59A840);
      *(v44 + 32) = v40;
      *(v44 + 40) = v45;
      v46 = sub_1AD43FACC(&qword_1EB59A848, &qword_1EB59A850);
      *(v44 + 48) = v16;
      *(v44 + 56) = v46;
      v47 = v90;

      v82 = v47;
      v48 = sub_1AD469DB8(v47, v44, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
      v50 = v49;

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A858);
      swift_arrayDestroy();
      MEMORY[0x1B26F6530](v48, v50);

      v51 = v88;
      v52 = v89;
      swift_beginAccess();
      MEMORY[0x1B26F6530](v51, v52);
      swift_endAccess();

      swift_unownedRetainStrong();
      v53 = sub_1AD43FACC(&qword_1EB59A860, &qword_1EB59A830);
      v54 = *(a1 + 72);

      os_unfair_lock_lock(v54 + 4);
      swift_beginAccess();
      v55 = *(a1 + 112);

      v56 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 112) = v55;
      if ((v56 & 1) == 0)
      {
        v55 = sub_1AD425794(0, v55[2] + 1, 1, v55);
        *(a1 + 112) = v55;
      }

      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = sub_1AD425794((v57 > 1), v58 + 1, 1, v55);
      }

      v55[2] = v58 + 1;
      v59 = &v55[3 * v58];
      *(v59 + 32) = v82;
      v59[5] = v41;
      v59[6] = v53;
      *(a1 + 112) = v55;
      swift_endAccess();
      os_unfair_lock_unlock((*(a1 + 72) + 16));

      v39 = v85;
    }

    sub_1AD463A60(10, v39, sub_1AD46C13C, a4, a1, a2);

    v60 = sub_1AD463DB8(11, v39, sub_1AD46C16C, a4, a1, a2);

    LOBYTE(v88) = 10;

    a2((&v90 + 1), &v88);
    swift_unownedRetainStrong();
    sub_1AD469FB0(v60, SBYTE1(v90));

    v61 = sub_1AD464100(12, v60, sub_1AD46C19C, a4, a1, a2);

    BYTE1(v90) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A830);
    v62 = a2;
    v63 = swift_allocObject();
    v64 = swift_allocObject();
    v64[2] = v61;
    v64[3] = v87;
    v64[4] = sub_1AD46C1CC;
    v64[5] = a4;
    v65 = swift_allocObject();
    *(v65 + 16) = v61;
    *(v65 + 24) = v87;
    *(v63 + 64) = 0x80000001ADB9FDD0;
    *(v63 + 72) = 0;
    *(v63 + 16) = sub_1AD46C1D4;
    *(v63 + 24) = v64;
    *(v63 + 32) = sub_1AD46C1D8;
    *(v63 + 40) = v65;
    *(v63 + 48) = xmmword_1ADB81FA0;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v62(&v90, &v90 + 1);
    v88 = 32;
    v89 = 0xE100000000000000;
    swift_unownedRetainStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_1ADB81FB0;
    v67 = sub_1AD43FACC(&qword_1EB59A838, &qword_1EB59A840);
    *(v66 + 32) = v61;
    *(v66 + 40) = v67;
    v68 = sub_1AD43FACC(&qword_1EB59A848, &qword_1EB59A850);
    *(v66 + 48) = v87;
    *(v66 + 56) = v68;
    v69 = v90;

    v83 = v69;
    v70 = sub_1AD469DB8(v69, v66, ProvisioningCarKeyStep.description.getter, sub_1AD46A75C);
    v72 = v71;

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A858);
    swift_arrayDestroy();
    MEMORY[0x1B26F6530](v70, v72);

    v73 = v88;
    v74 = v89;
    swift_beginAccess();
    MEMORY[0x1B26F6530](v73, v74);
    swift_endAccess();

    swift_unownedRetainStrong();
    v75 = sub_1AD43FACC(&qword_1EB59A860, &qword_1EB59A830);
    os_unfair_lock_lock((*(a1 + 72) + 16));
    swift_beginAccess();
    v76 = *(a1 + 112);

    v77 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 112) = v76;
    if ((v77 & 1) == 0)
    {
      v76 = sub_1AD425794(0, v76[2] + 1, 1, v76);
      *(a1 + 112) = v76;
    }

    v79 = v76[2];
    v78 = v76[3];
    if (v79 >= v78 >> 1)
    {
      v76 = sub_1AD425794((v78 > 1), v79 + 1, 1, v76);
    }

    v76[2] = v79 + 1;
    v80 = &v76[3 * v79];
    *(v80 + 32) = v83;
    v80[5] = v63;
    v80[6] = v75;
    *(a1 + 112) = v76;
    swift_endAccess();
    os_unfair_lock_unlock((*(a1 + 72) + 16));

    sub_1AD4633C0(15, v63, sub_1AD46C1E0, a4, a1, v86);
  }
}

uint64_t sub_1AD467C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;

  sub_1AD452CA4(a6, v10);
}

uint64_t sub_1AD467C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD467D38(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1[1];
  v13 = *a1;
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    v14[0] = v13;
    v14[1] = v12;
    v15 = v7;
    v16 = v8;
    (*(v10 + 24))(v14, a3, a4, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD467DF8(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a2 + 32);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  v13 = v9;

  sub_1AD4CBB08(v12, v8, a5, a3, a4);
}

uint64_t sub_1AD467E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(a1, a2, a3, a5, a6, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD467F44(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a2;
  v10 = a2[1];

  sub_1AD4C2A90(v9, v10, v8, a5, a3, a4);
}

uint64_t sub_1AD467FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 120))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD468078(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;

  a4(v7, a2, a3);
}

void sub_1AD4680DC(uint64_t a1, void (*a2)(void **))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = 0;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = 0;
  v6 = v5;
  v7 = v3;
  v8 = v4;
  a2(&v14);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;

  sub_1AD4413B4(v9, v10, v11, v12, v13);
}

uint64_t sub_1AD468158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD4681FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a5;
  *(v14 + 32) = a6;
  *(v14 + 40) = 11;
  v15 = (v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_onDidStartPairing);
  v16 = *(v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_onDidStartPairing);
  *v15 = sub_1AD46C514;
  v15[1] = v14;
  sub_1AD3C5FB8(v16);
  v17 = swift_allocObject();
  *(v17 + 2) = a7;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  v18 = v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential;
  if (*(v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_credential + 24))
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18;
  }

  v20 = [v19 carKeyTerminalPairingCredential];

  v21 = [v20 configuration];
  if (v21)
  {
    v22 = *(v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_carConfiguration);
    *(v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_carConfiguration) = v21;
    v23 = v21;

    v24 = (v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_commonCompletion);
    v25 = *(v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_commonCompletion);
    *v24 = sub_1AD46C544;
    v24[1] = v17;

    sub_1AD3C5FB8(v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1AD48C388(v23, sub_1AD46C550, v26);
  }

  else
  {
    v27 = *(v12 + OBJC_IVAR____TtC11PassKitCore32ProvisioningCarKeyStepFindReader_context);
    v28 = *(v18 + 8);
    v29 = *(v18 + 16);
    v30 = *(v18 + 24);
    v37 = *v18;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    sub_1AD3DF24C(v37, v28, v29, v30);
    v31 = sub_1AD433FC8(0, v27, &v37);
    sub_1AD3CC2E0(v37, v38, v39, v40);
    v32 = sub_1ADB06370();
    [v31 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(a7 + 24);
      ObjectType = swift_getObjectType();
      v35 = *(v33 + 80);
      v36 = v31;
      v35(v31, 1, a2, a3, ObjectType, v33);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1AD468580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 80))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD46862C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a2;
  v10 = OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_passURL;

  sub_1AD502814(v9 + v10, v8, a5, a3, a4);
}

uint64_t sub_1AD4686BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 104))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD468760(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v29 = *(*a2 + OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential);
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v14 = *(v9 + 64);
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  *(v9 + 64) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  v17 = v12;

  v18 = v10;
  v19 = v11;
  sub_1AD440D2C(v14, v15, v16);
  v20 = [*(v9 + 56) sid];
  if (!v20)
  {
    sub_1ADB063B0();
    v20 = sub_1ADB06370();
  }

  v21 = *(v9 + 16);
  swift_beginAccess();
  v22 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v21 + 72) managingWebService:*(v21 + 48)];
  v23 = sub_1ADB05CE0();
  v24 = *(v9 + 16);
  swift_beginAccess();
  v25 = [*(v24 + 16) cloudStoreCoordinator];
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_1AD46C7A4;
  v27[4] = v13;
  aBlock[4] = sub_1AD46C508;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD507DCC;
  aBlock[3] = &block_descriptor_245;
  v28 = _Block_copy(aBlock);

  [v22 downloadAndIngestPassForPassURL:v23 deviceCredential:v29 cloudStoreCoordinatorDelegate:v25 ingestionProperties:0 sid:v20 completion:v28];
  _Block_release(v28);

  swift_unknownObjectRelease();
}

uint64_t sub_1AD468A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 48))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD468AB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *a1;

  a5(v9, a4, a2, a3);
}

uint64_t sub_1AD468B3C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 56))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD468BE8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a2;

  sub_1AD4DFD4C(v9, 0, v8, a5, a3, a4);
}

void sub_1AD468C70(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v29 = *(*a2 + OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential);
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v14 = *(v9 + 64);
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  *(v9 + 64) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  v17 = v12;

  v18 = v10;
  v19 = v11;
  sub_1AD440D2C(v14, v15, v16);
  v20 = [*(v9 + 56) sid];
  if (!v20)
  {
    sub_1ADB063B0();
    v20 = sub_1ADB06370();
  }

  v21 = *(v9 + 16);
  swift_beginAccess();
  v22 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v21 + 72) managingWebService:*(v21 + 48)];
  v23 = sub_1ADB05CE0();
  v24 = *(v9 + 16);
  swift_beginAccess();
  v25 = [*(v24 + 16) cloudStoreCoordinator];
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_1AD46C5C4;
  v27[4] = v13;
  aBlock[4] = sub_1AD46C750;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD507DCC;
  aBlock[3] = &block_descriptor_281;
  v28 = _Block_copy(aBlock);

  [v22 downloadAndIngestPassForPassURL:v23 deviceCredential:v29 cloudStoreCoordinatorDelegate:v25 ingestionProperties:0 sid:v20 completion:v28];
  _Block_release(v28);

  swift_unknownObjectRelease();
}

uint64_t sub_1AD468F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 88))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD468FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 72))(a1, a2, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD469074(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 64))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD469120(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v29 = *(*a2 + OBJC_IVAR___PKProvisioningCarKeyStepTrackKeyTrackedPass_subcredential);
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v14 = *(v9 + 64);
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  *(v9 + 64) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  v17 = v12;

  v18 = v10;
  v19 = v11;
  sub_1AD440D2C(v14, v15, v16);
  v20 = [*(v9 + 56) sid];
  if (!v20)
  {
    sub_1ADB063B0();
    v20 = sub_1ADB06370();
  }

  v21 = *(v9 + 16);
  swift_beginAccess();
  v22 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:*(v21 + 72) managingWebService:*(v21 + 48)];
  v23 = sub_1ADB05CE0();
  v24 = *(v9 + 16);
  swift_beginAccess();
  v25 = [*(v24 + 16) cloudStoreCoordinator];
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_1AD46C7A4;
  v27[4] = v13;
  aBlock[4] = sub_1AD46C750;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD507DCC;
  aBlock[3] = &block_descriptor_298;
  v28 = _Block_copy(aBlock);

  [v22 downloadAndIngestPassForPassURL:v23 deviceCredential:v29 cloudStoreCoordinatorDelegate:v25 ingestionProperties:0 sid:v20 completion:v28];
  _Block_release(v28);

  swift_unknownObjectRelease();
}

uint64_t sub_1AD4693D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 96))(a1, a2 & 1, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AD469480(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *a2;

  a6(v11, v10, a5, a3, a4);
}

uint64_t sub_1AD46950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 112))(a1, a3, a4, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AD4695B0()
{
  v1 = v0;
  v29 = *(v0 + 72);
  os_unfair_lock_lock(v29 + 4);
  sub_1ADB05970();
  swift_allocObject();
  sub_1ADB05960();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A820);
  sub_1AD43FACC(&qword_1EB59A828, &qword_1EB59A820);
  sub_1ADB05950();

  v2 = v31[0];
  if (qword_1EB5981C0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v3 = sub_1ADB05FA0();
  __swift_project_value_buffer(v3, qword_1EB59AB68);
  swift_bridgeObjectRetain_n();

  v4 = sub_1ADB05F80();
  v5 = sub_1ADB06860();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315394;
    v8 = [*(v1 + 56) sid];
    v9 = sub_1ADB063B0();
    v11 = v10;

    v12 = sub_1AD3CA88C(v9, v11, v31);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;
    v13 = *(v2 + 16);

    *(v6 + 14) = v13;

    _os_log_impl(&dword_1AD337000, v4, v5, "[%s] ProvisioningOperationComposer: Loading %ld archived outputs", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B26F9F20](v7, -1, -1);
    MEMORY[0x1B26F9F20](v6, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();
  v14 = *(v1 + 112);
  v15 = *(v14 + 16);

  v30 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 48);
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v1 = *(v17 - 1);
      v18 = *v17;
      ObjectType = swift_getObjectType();
      v20 = *(v18 + 48);

      swift_unknownObjectRetain();
      v21 = v20(ObjectType, v18);
      if (*(v2 + 16))
      {
        v23 = sub_1AD425BEC(v21, v22);
        v25 = v24;

        if (v25)
        {
          v26 = (*(v2 + 56) + 16 * v23);
          v27 = *v26;
          v28 = v26[1];
          sub_1AD3C7528(*v26, v28);

          (*(v18 + 64))(v27, v28, ObjectType, v18);
          swift_unknownObjectRelease();
          sub_1AD3C757C(v27, v28);
          goto LABEL_9;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
LABEL_9:
      ++v16;
      v17 += 3;
    }

    while (v30 != v16);
  }

  os_unfair_lock_unlock(v29 + 4);
}

void sub_1AD4699B4()
{
  v1 = v0;
  v29 = *(v0 + 72);
  os_unfair_lock_lock(v29 + 4);
  sub_1ADB05970();
  swift_allocObject();
  sub_1ADB05960();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A680);
  sub_1AD43FACC(&qword_1EB59A688, &qword_1EB59A680);
  sub_1ADB05950();

  v2 = v31[0];
  if (qword_1EB5981C0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v3 = sub_1ADB05FA0();
  __swift_project_value_buffer(v3, qword_1EB59AB68);
  swift_bridgeObjectRetain_n();

  v4 = sub_1ADB05F80();
  v5 = sub_1ADB06860();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315394;
    v8 = [*(v1 + 56) sid];
    v9 = sub_1ADB063B0();
    v11 = v10;

    v12 = sub_1AD3CA88C(v9, v11, v31);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;
    v13 = *(v2 + 16);

    *(v6 + 14) = v13;

    _os_log_impl(&dword_1AD337000, v4, v5, "[%s] ProvisioningOperationComposer: Loading %ld archived outputs", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B26F9F20](v7, -1, -1);
    MEMORY[0x1B26F9F20](v6, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();
  v14 = *(v1 + 112);
  v15 = *(v14 + 16);

  v30 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 48);
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v1 = *(v17 - 1);
      v18 = *v17;
      ObjectType = swift_getObjectType();
      v20 = *(v18 + 48);

      swift_unknownObjectRetain();
      v21 = v20(ObjectType, v18);
      if (*(v2 + 16))
      {
        v23 = sub_1AD425BEC(v21, v22);
        v25 = v24;

        if (v25)
        {
          v26 = (*(v2 + 56) + 16 * v23);
          v27 = *v26;
          v28 = v26[1];
          sub_1AD3C7528(*v26, v28);

          (*(v18 + 64))(v27, v28, ObjectType, v18);
          swift_unknownObjectRelease();
          sub_1AD3C757C(v27, v28);
          goto LABEL_9;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
LABEL_9:
      ++v16;
      v17 += 3;
    }

    while (v30 != v16);
  }

  os_unfair_lock_unlock(v29 + 4);
}

uint64_t sub_1AD469DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = *(v4 + 72);
  os_unfair_lock_lock(v9 + 4);
  v10 = *(a2 + 16);
  if (v10)
  {
    v24 = v9;
    v25 = a1;
    v26 = a3;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AD4506A8(0, v10, 0);
    v11 = (a2 + 40);
    do
    {
      v12 = *v11;
      v13 = swift_unknownObjectRetain();
      v14 = a4(v13, v12, v6);
      v16 = v15;
      swift_unknownObjectRelease();
      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AD4506A8((v17 > 1), v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += 2;
      --v10;
    }

    while (v10);
    a3 = v26;
    a1 = v25;
    v9 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
  sub_1AD43FACC(&qword_1EB59C220, &qword_1EB59A750);
  v20 = sub_1ADB062F0();
  v22 = v21;

  os_unfair_lock_unlock(v9 + 4);
  v29 = a3(a1);
  MEMORY[0x1B26F6530](40, 0xE100000000000000);
  MEMORY[0x1B26F6530](v20, v22);

  MEMORY[0x1B26F6530](41, 0xE100000000000000);
  return v29;
}

void sub_1AD469FB0(uint64_t a1, char a2)
{
  v5 = v2[9];
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = v2[14];
  v7 = (v6 + 40);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 3;
    v10 = *v7;
    v7 += 3;
    if (v10 == a1)
    {
      v11 = *(v9 - 32);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v2[15];
      v2[15] = 0x8000000000000000;
      sub_1AD4EC58C(a2, v11, isUniquelyReferenced_nonNull_native);
      v2[15] = v13;
      swift_endAccess();
      break;
    }
  }

  os_unfair_lock_unlock(v5 + 4);
}

void sub_1AD46A098(uint64_t a1, char a2)
{
  v5 = v2[9];
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = v2[14];
  v7 = (v6 + 40);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 3;
    v10 = *v7;
    v7 += 3;
    if (v10 == a1)
    {
      v11 = *(v9 - 32);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v2[15];
      v2[15] = 0x8000000000000000;
      sub_1AD4EC328(a2, v11, isUniquelyReferenced_nonNull_native);
      v2[15] = v13;
      swift_endAccess();
      break;
    }
  }

  os_unfair_lock_unlock(v5 + 4);
}

void sub_1AD46A180(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v6 = sub_1ADB06040();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ADB06060();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4[9];
  os_unfair_lock_lock(v13 + 4);
  v14 = v4[10];
  os_unfair_lock_unlock(v13 + 4);
  if ((v14 & 0xFE) != 2)
  {
    v17[1] = v4[8];
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = a1;
    aBlock[4] = v18;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = v19;
    v16 = _Block_copy(aBlock);

    sub_1ADB06050();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1AD3D76F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v12, v8, v16);
    _Block_release(v16);
    (*(v20 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1AD46A440(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, char *), uint64_t a3, char a4)
{
  v12 = a4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2(&v11, &v12);
    v8 = *(v6 + 72);
    v9 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v9);

    os_unfair_lock_lock(v8 + 4);
    sub_1AD433B74(v10);
    os_unfair_lock_unlock(v8 + 4);

    sub_1AD46A180(v11, &unk_1F226A390, sub_1AD46BD14, &block_descriptor_17);
  }

  return result;
}

uint64_t sub_1AD46A580(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, char *), uint64_t a3, char a4)
{
  v12 = a4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2(&v11, &v12);
    v8 = *(v6 + 72);
    v9 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v9);

    os_unfair_lock_lock(v8 + 4);
    sub_1AD433ED4(v10);
    os_unfair_lock_unlock(v8 + 4);

    sub_1AD46A180(v11, &unk_1F226ACA0, sub_1AD46BD14, &block_descriptor_270);
  }

  return result;
}

unint64_t sub_1AD46A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 112);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  result = 0x6E776F6E6B6E75;
  while (--v7)
  {
    v9 = v6 + 3;
    v10 = *v6;
    v6 += 3;
    if (v10 == a1)
    {
      return ProvisioningStep.description.getter(*(v9 - 32));
    }
  }

  return result;
}

uint64_t sub_1AD46A75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 112);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  result = 0x6E776F6E6B6E75;
  while (--v7)
  {
    v9 = v6 + 3;
    v10 = *v6;
    v6 += 3;
    if (v10 == a1)
    {
      return ProvisioningCarKeyStep.description.getter(*(v9 - 32));
    }
  }

  return result;
}

void sub_1AD46A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t *, void **, uint64_t, uint64_t))
{
  v24 = a1;
  swift_beginAccess();
  v11 = *(a4 + 72);
  if (v11)
  {
    v23 = *(a4 + 72);
    swift_beginAccess();
    v12 = *(a5 + 72);
    if (v12 != 1)
    {
      v15 = a5 + 80;
      v13 = *(a5 + 80);
      v14 = *(v15 + 8);
      v20 = v12;
      v21 = v13;
      v22 = v14;
      v16 = v11;
      sub_1AD46C5E8(v12, v13, v14);
      a6(&v24, &v23, &v20, a2, a3);
      v17 = v20;
      v18 = v21;
      v19 = v22;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_1AD46A8F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!*(a1 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  return *(a2 + 72) != 1;
}

uint64_t sub_1AD46A960(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1AD3D3200(0, &unk_1EB59A7B0);
    v4 = sub_1ADB06610();
  }

  v6 = a3;
  v5(v4, a3);
}

id *sub_1AD46AA04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = *(a4 + 16);
  v12 = *(a4 + 24);
  v13 = swift_allocObject();
  *(v13 + 24) = a7;
  swift_unknownObjectWeakInit();
  if (v12 == 1)
  {
    goto LABEL_7;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  v15 = [v14 issuerProvisioningExtensionCredential];

  if (v15)
  {

LABEL_7:
    v16 = 1;
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:
  sub_1AD3D3200(0, &qword_1EB59A670);
  sub_1AD3DF24C(v9, v10, v11, v12);
  v17 = sub_1ADB068B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A558);
  swift_allocObject();

  v19 = sub_1AD46AE98(v18, v9, v10, v11, v12, v17, 27);

  v20 = swift_unownedRetain();
  sub_1AD45C430(v20, sub_1AD46C794, 0, v9, v10, v11, v12, v13, a1, v16, a2);
  swift_unownedRelease();
  v21 = [v19[7] provisioningStepState];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1ADB05D70();
    v25 = v24;

    [v19[7] setProvisioningStepState_];
    sub_1AD4699B4();
    sub_1AD3C757C(v23, v25);
  }

  return v19;
}

uint64_t sub_1AD46AC28(uint64_t a1, char *a2)
{
  v5 = *a2;
  result = swift_beginAccess();
  v4 = *(a1 + 152);
  if (v4)
  {

    v4(&v5, 1);
    return sub_1AD3C5FB8(v4);
  }

  return result;
}

uint64_t sub_1AD46AC9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void *, uint64_t, uint64_t))
{
  v12 = *a1;
  result = swift_beginAccess();
  v10 = *(a4 + 80);
  if (v10)
  {
    v11[0] = *(a4 + 72);
    v11[1] = v10;

    a5(&v12, v11, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AD46AD3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void **, uint64_t, uint64_t))
{
  v18 = *a1;
  swift_beginAccess();
  v9 = *(a4 + 104);
  if (v9 == 255)
  {
    __break(1u);
  }

  else
  {
    v10 = *(a4 + 88);
    v11 = *(a4 + 96);
    v12 = *(a4 + 80);
    v13 = *(a4 + 72);
    v14 = v12;
    v15 = v10;
    v16 = v11;
    v17 = v9;
    sub_1AD46C454(v13, v12, v10, v11, v9);
    a5(&v18, &v13, a2, a3);
    sub_1AD452868(v13, v14, v15, v16, v17);
  }
}

void sub_1AD46ADF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *, uint64_t, uint64_t))
{
  v12 = *a1;
  swift_beginAccess();
  v9 = *(a4 + 72);
  if (v9)
  {
    v11 = *(a4 + 72);
    v10 = v9;
    a5(&v12, &v11, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

id sub_1AD46AE98(uint64_t a1, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59A810);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v7 + 72) = v15;
  *(v7 + 80) = 2;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v7 + 104) = 0;
  *(v7 + 112) = v16;
  *(v7 + 120) = MEMORY[0x1E69E7CC8];
  *(v7 + 128) = a7;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  if (a5 > 3u)
  {

    if (a5 == 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = 5;
    }

    sub_1AD3DF24C(a2, a3, a4, v18);
    goto LABEL_10;
  }

  if (a5 - 1 < 3)
  {
    v17 = objc_allocWithZone(PKSecureElementProvisioningState);

    a2 = [v17 init];
LABEL_10:
    *(v7 + 56) = a2;
    *(v7 + 64) = a6;
    return v7;
  }

  sub_1AD3DF24C(a2, a3, a4, 0);
  result = [a2 state];
  if (result)
  {
    v20 = result;
    sub_1AD3CC2E0(a2, a3, a4, 0);
    a2 = v20;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1AD46B040(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  if (!*(a1 + 24))
  {
    result = [*a1 identityCredential];
    if (result)
    {
      v13 = result;
      v14 = [result shareableMetadata];

      return v14;
    }

    return result;
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v7 = result;
    v8 = v1;
    v9 = [v7 metadatas];
    if (!v9)
    {
      sub_1AD3D3200(0, &unk_1EB59A7C0);
      sub_1ADB06610();
      v9 = sub_1ADB06600();
    }

    v3 = [objc_allocWithZone(PKAddShareablePassConfiguration) initWithPrimaryAction:0 credentialsMetadata:v9];

    sub_1AD3CC2E0(v1, v4, v5, 3u);
  }

  else
  {
    if (v2 != 2)
    {
      return 0;
    }

    swift_unknownObjectRetain();
    v3 = v1;
  }

  v10 = [v3 metadataProviders];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AE80);
  v11 = sub_1ADB06610();

  if (v11 >> 62)
  {
    result = sub_1ADB06D00();
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_18:

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_11:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B26F6CC0](0, v11);
    goto LABEL_14;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    swift_unknownObjectRetain();
LABEL_14:
    swift_unknownObjectRelease();

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1AD46B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = swift_allocObject();
  *(v10 + 24) = a5;
  swift_unknownObjectWeakInit();
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  v12 = [v11 carKeyTerminalPairingCredential];

  v13 = [v12 configuration];
  if (v13)
  {
  }

  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6;
  }

  v15 = [v14 localAppletSubcredentialPassCredential];

  v38 = v15 != 0;
  if (v15)
  {
  }

  if (v9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v6;
  }

  v17 = [v16 remoteCredential];

  if (!v17)
  {
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_18:
    v38 = 0;
    goto LABEL_19;
  }

  if (v13)
  {
    goto LABEL_18;
  }

  v38 = 1;
LABEL_19:
  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = v6;
  }

  v19 = [v18 statefulTransferCredential];

  if (!v19)
  {
    goto LABEL_30;
  }

  v20 = [v19 share];

  if (!v20)
  {
    __break(1u);
    return;
  }

  v21 = [v20 activationOptions];

  if (v21 && (v22 = [v21 optionOfType_], v21, v22))
  {
    v23 = v6;
    v24 = v10;

    v25 = 0;
    v26 = v38;
    if (v13)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      v25 = 0;
    }
  }

  else
  {
LABEL_30:
    v23 = v6;
    v24 = v10;
    v27 = v38 ^ 1;
    if (v13)
    {
      v27 = 0;
    }

    v25 = (v27 & 1) != 0;
  }

  v28 = v13 != 0;
  sub_1AD3D3200(0, &qword_1EB59A670);
  sub_1AD3DF24C(v23, v7, v8, v9);
  v29 = sub_1ADB068B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5C0);
  swift_allocObject();

  v31 = sub_1AD46AE98(v30, v23, v7, v8, v9, v29, 17);

  v32 = swift_unownedRetain();
  sub_1AD466B34(v32, sub_1AD364EDC, 0, v24, v38, v28, v25);
  swift_unownedRelease();
  v33 = [v31[7] provisioningStepState];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1ADB05D70();
    v37 = v36;

    [v31[7] setProvisioningStepState_];
    sub_1AD4695B0();
    sub_1AD3C757C(v35, v37);
  }
}

uint64_t dispatch thunk of ProvisioningFieldsCoordinatorProviding.handleSEStorage(result:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 88))();
}

{
  return (*(a6 + 96))();
}

unint64_t sub_1AD46BA00()
{
  result = qword_1EB59A6A0;
  if (!qword_1EB59A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A6A0);
  }

  return result;
}

void *sub_1AD46BBB0@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  BYTE1(v7) = *a1;
  v4(&v7, &v7 + 1);
  result = v5((&v7 + 2), &v7);
  *a2 = BYTE2(v7);
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD46BD88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AD3CF220;

  return sub_1AD3D34FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_94Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_107Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_113Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 56, 7);
}

uint64_t objectdestroy_27Tm()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_206Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_33Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

id sub_1AD46C454(id result, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return result;
      }

      v6 = a2;
      v5 = result;
    }

    else
    {
      v6 = a2;
    }

    result = v6;
LABEL_10:

    return result;
  }

  if (a5 != 2)
  {
    if (a5 != 3)
    {
      return result;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1AD46C570()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 128) = v2;
  return result;
}

id sub_1AD46C5E8(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t objectdestroy_36Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

__n128 ProvisioningCarKeyStepPPID.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningCarKeyStepPPID.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningCarKeyStepPPID.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningCarKeyStepPPID.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD46C8D4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningCarKeyStepPPID();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

void sub_1AD46C99C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v21 = sub_1ADB05FA0();
  __swift_project_value_buffer(v21, qword_1EB59AB68);

  v22 = sub_1ADB05F80();
  v23 = sub_1ADB06860();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1AD3CA88C(a5, a6, aBlock);
    _os_log_impl(&dword_1AD337000, v22, v23, "[%s] Fetching routing metadata from KML", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1B26F9F20](v25, -1, -1);
    MEMORY[0x1B26F9F20](v24, -1, -1);
  }

  v26 = [a8 targetDevice];
  if (v26)
  {
    v27 = v26;
    if ([v26 respondsToSelector_])
    {
      v28 = swift_allocObject();
      v28[2] = a14;
      v28[3] = a15;
      v28[4] = a16;
      v28[5] = a3;
      v28[6] = a4;
      v28[7] = a2;

      v29 = a2;
      v30 = sub_1ADB06370();
      v31 = sub_1ADB06370();
      aBlock[4] = sub_1AD46ECB8;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD3D755C;
      aBlock[3] = &block_descriptor_66_0;
      v32 = _Block_copy(aBlock);

      [v27 carKeyRoutingInformationForInvitationWithIdentifier:v30 transportIdentifier:v31 completion:v32];
      _Block_release(v32);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AD46CCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, BOOL), uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v13 = sub_1ADB06370();
    swift_beginAccess();
    v14 = PKCredentialRoutingInformationFromPairedEntityIdentifer(v13, 0, (a5 + 16));
    swift_endAccess();

    if (v14)
    {
      v15 = sub_1ADB063B0();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    swift_beginAccess();
    *(a4 + 16) = v15;
    *(a4 + 24) = v17;
  }

  else
  {
    if (a3)
    {
      v18 = sub_1ADB05CB0();
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_opt_self() errorWithUnderlyingError:v18 defaultSeverity:5];

    swift_beginAccess();
    v20 = *(a6 + 16);
    *(a6 + 16) = v19;
  }

  swift_beginAccess();
  return a7(a9, *(a6 + 16) != 0);
}

void sub_1AD46CE60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v19 = sub_1ADB05FA0();
  __swift_project_value_buffer(v19, qword_1EB59AB68);

  v20 = sub_1ADB05F80();
  v21 = sub_1ADB06860();

  if (os_log_type_enabled(v20, v21))
  {
    v32 = a4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1AD3CA88C(a5, a6, aBlock);
    _os_log_impl(&dword_1AD337000, v20, v21, "[%s] Fetching PPID request from KML", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1B26F9F20](v23, -1, -1);
    v24 = v22;
    a4 = v32;
    MEMORY[0x1B26F9F20](v24, -1, -1);
  }

  v25 = [a8 targetDevice];
  if (v25)
  {
    v26 = v25;
    if ([v25 respondsToSelector_])
    {
      v27 = swift_allocObject();
      v27[2] = a14;
      v27[3] = a15;
      v27[4] = a3;
      v27[5] = a4;
      v27[6] = a2;

      v28 = a2;
      v29 = sub_1ADB06370();
      v30 = sub_1ADB06370();
      aBlock[4] = sub_1AD46ECA8;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AD4B7970;
      aBlock[3] = &block_descriptor_60_3;
      v31 = _Block_copy(aBlock);

      [v26 carKeyGetProductPlanIdentifierRequestForInvitationWithIdentifier:v29 transportIdentifier:v30 completion:v31];
      _Block_release(v31);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AD46D194(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, BOOL), uint64_t a6, uint64_t a7)
{
  if (PKSharingForceErrorAfterKMLReturnsPPIDRequest())
  {
    v13 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    v14 = *(a3 + 16);
    *(a3 + 16) = v13;

    swift_beginAccess();
    v15 = *(a3 + 16);
    if (v15)
    {
      v16 = v15;
      v17 = sub_1ADB06370();
      [v16 addInternalDebugDescription_];
    }
  }

  else if (a1)
  {
    swift_beginAccess();
    v18 = *(a4 + 16);
    *(a4 + 16) = a1;
    v19 = a1;
  }

  else if (a2)
  {
    v21 = a2;
    v22 = sub_1ADB05CB0();
    v23 = [objc_opt_self() errorWithUnderlyingError:v22 defaultSeverity:5];

    swift_beginAccess();
    v24 = *(a3 + 16);
    *(a3 + 16) = v23;

    swift_beginAccess();
    v25 = *(a3 + 16);
    if (v25)
    {
      v26 = v25;
      v27 = sub_1ADB06370();
      [v26 addInternalDebugDescription_];
    }

    else
    {
    }
  }

  swift_beginAccess();
  return a5(a7, *(a3 + 16) != 0);
}

void sub_1AD46D3D8(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v17 = sub_1ADB05FA0();
  __swift_project_value_buffer(v17, qword_1EB59AB68);

  v18 = sub_1ADB05F80();
  v19 = sub_1ADB06860();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1AD3CA88C(a5, a6, aBlock);
    _os_log_impl(&dword_1AD337000, v18, v19, "[%s] Fetching PPID from broker", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1B26F9F20](v21, -1, -1);
    MEMORY[0x1B26F9F20](v20, -1, -1);
  }

  swift_beginAccess();
  if (*(a7 + 24) && (swift_beginAccess(), (v22 = *(a8 + 16)) != 0) && (swift_beginAccess(), (v23 = *(a9 + 16)) != 0))
  {
    v24 = objc_allocWithZone(PKPaymentVehicleManufacturerRequest);
    v25 = v23;

    v26 = v22;
    v27 = sub_1ADB06370();

    v28 = [v24 initWithPartnerIdentifier:v27 brandIdentifier:v26 encryptedVehicleDataRequest:v25];

    v29 = swift_allocObject();
    v29[2] = a11;
    v29[3] = a12;
    v29[4] = a5;
    v29[5] = a6;
    v29[6] = a3;
    v29[7] = a4;
    v29[8] = a2;
    aBlock[4] = sub_1AD46EC74;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD3C8BB0;
    aBlock[3] = &block_descriptor_54_2;
    v30 = _Block_copy(aBlock);

    v31 = a2;

    [a10 vehicleManufacturerWithRequest:v28 withCompletion:v30];
    _Block_release(v30);
  }

  else
  {

    v32 = sub_1ADB05F80();
    v33 = sub_1ADB06860();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AD3CA88C(a5, a6, aBlock);
      _os_log_impl(&dword_1AD337000, v32, v33, "[%s] No PPID request; skipping PPID fetch.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1B26F9F20](v35, -1, -1);
      MEMORY[0x1B26F9F20](v34, -1, -1);
    }

    a3(a2, 0);
  }
}

uint64_t sub_1AD46D7D4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void, void), uint64_t a8, uint64_t a9)
{
  v16 = a9;
  if (!PKSharingForceErrorAfterBrokerReturnsVehicleManufacturerResponse())
  {
    if (a1)
    {
      if (!a2)
      {
        v22 = a1;
        v23 = [v22 encryptionScheme];
        if (v23)
        {
          v24 = v23;
          sub_1ADB063B0();
          v57 = v25;
        }

        else
        {
          v57 = 0;
        }

        v37 = [v22 ephemeralPublicKey];
        if (v37)
        {
          v38 = v37;
          sub_1ADB063B0();
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v41 = [v22 publicKeyHash];
        if (v41)
        {
          v42 = v41;
          sub_1ADB063B0();
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = [v22 encryptedData];
        v56 = v22;
        if (v45)
        {
          v46 = v45;
          v47 = sub_1ADB05D70();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0xF000000000000000;
        }

        v58 = a7;
        if (v57)
        {
          v50 = sub_1ADB06370();

          if (v40)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v50 = 0;
          if (v40)
          {
LABEL_26:
            v51 = sub_1ADB06370();

            if (v44)
            {
LABEL_27:
              v52 = sub_1ADB06370();

LABEL_31:
              if (v49 >> 60 == 15)
              {
                v53 = 0;
              }

              else
              {
                v53 = sub_1ADB05D50();
                sub_1AD422FB0(v47, v49);
              }

              v54 = [objc_allocWithZone(PKSubcredentialEncryptedContainer) initWithEncryptionScheme:v50 ephemeralPublicKey:v51 publicKeyHash:v52 data:v53];

              swift_beginAccess();
              v21 = *(a4 + 16);
              *(a4 + 16) = v54;
              a7 = v58;
              goto LABEL_35;
            }

LABEL_30:
            v52 = 0;
            goto LABEL_31;
          }
        }

        v51 = 0;
        if (v44)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else if (!a2)
    {
      goto LABEL_36;
    }

    v26 = a2;
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v27 = sub_1ADB05FA0();
    __swift_project_value_buffer(v27, qword_1EB59AB68);

    v28 = sub_1ADB05F80();
    v29 = sub_1ADB06860();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = a7;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AD3CA88C(a5, a6, v59);
      _os_log_impl(&dword_1AD337000, v28, v29, "[%s] Failed to fetch PPID", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1B26F9F20](v32, -1, -1);
      v33 = v31;
      a7 = v30;
      v16 = a9;
      MEMORY[0x1B26F9F20](v33, -1, -1);
    }

    v34 = a2;
    v35 = sub_1ADB05CB0();

    v36 = [objc_opt_self() errorWithUnderlyingError:v35 defaultSeverity:5];
    swift_beginAccess();
    v21 = *(a3 + 16);
    *(a3 + 16) = v36;
    goto LABEL_35;
  }

  v17 = [objc_opt_self() errorWithSeverity_];
  swift_beginAccess();
  v18 = *(a3 + 16);
  *(a3 + 16) = v17;

  swift_beginAccess();
  v19 = *(a3 + 16);
  if (v19)
  {
    v20 = v19;
    v21 = sub_1ADB06370();
    [v20 addInternalDebugDescription_];

LABEL_35:
  }

LABEL_36:
  swift_beginAccess();
  return a7(v16, *(a3 + 16) != 0);
}

void sub_1AD46DCCC(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_beginAccess();
  v18 = *(a5 + 16);
  if (v18)
  {
    v19 = v18;
    v20 = [a7 targetDevice];
    if (v20)
    {
      v21 = v20;
      if ([v20 respondsToSelector_])
      {
        v22 = swift_allocObject();
        v22[2] = a11;
        v22[3] = a12;
        v22[4] = a13;
        v22[5] = a3;
        v22[6] = a4;
        v22[7] = a2;
        v23 = v19;

        v24 = a2;
        v25 = sub_1ADB06370();
        aBlock[4] = sub_1AD46EC64;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD4D6334;
        aBlock[3] = &block_descriptor_48_2;
        v26 = _Block_copy(aBlock);

        [v21 carKeySetEncryptedProductPlanIdentifierContainer:v23 invitationIdentifier:v25 completion:v26];
        _Block_release(v26);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a3(a2, 0);
  }
}

uint64_t sub_1AD46DECC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a1;
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1ADB05FA0();
    __swift_project_value_buffer(v14, qword_1EB59AB68);
    v15 = a1;

    v16 = sub_1ADB05F80();
    v17 = sub_1ADB06860();

    if (os_log_type_enabled(v16, v17))
    {
      v34 = a7;
      v18 = swift_slowAlloc();
      v19 = a5;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v18 = 136315394;
      *(v18 + 4) = sub_1AD3CA88C(a2, a3, v35);
      *(v18 + 12) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1AD337000, v16, v17, "[%s] Failed to set PPID with error: %@", v18, 0x16u);
      sub_1AD3CAFA0(v20);
      v24 = v20;
      a5 = v19;
      MEMORY[0x1B26F9F20](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1B26F9F20](v21, -1, -1);
      v25 = v18;
      a7 = v34;
      MEMORY[0x1B26F9F20](v25, -1, -1);
    }

    v26 = a1;
    v27 = sub_1ADB05CB0();

    v28 = [objc_opt_self() errorWithUnderlyingError:v27 defaultSeverity:5];
    swift_beginAccess();
    v29 = *(a4 + 16);
    *(a4 + 16) = v28;

    swift_beginAccess();
    v30 = *(a4 + 16);
    if (v30)
    {
      v31 = v30;
      v32 = sub_1ADB06370();
      [v31 addInternalDebugDescription_];
    }

    else
    {
    }
  }

  swift_beginAccess();
  return a5(a7, *(a4 + 16) != 0);
}

void sub_1AD46E1C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  swift_beginAccess();
  if (*(a4 + 16) || ([a3 isCanceled] & 1) != 0)
  {
    swift_beginAccess();
    v8 = *(a4 + 16);
    if (v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = [objc_opt_self() errorWithUnderlyingError:0 defaultSeverity:5];
      v8 = 0;
    }

    v10 = v8;
    v11 = v9;
    a5(v9);
  }

  else
  {
    a5(0);
  }
}

void sub_1AD46E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  aBlock = *(a1 + 24);
  v76 = v9;
  LOBYTE(v77) = v10;

  v11 = ProvisioningCredentialsConfiguration.Credential.carKeyTransferComponents.getter();
  if (v11)
  {
    v14 = v11;
    v15 = v12;

    v16 = [*(a1 + 56) sid];
    v71 = sub_1ADB063B0();
    v18 = v17;

    v19 = *(a1 + 16);
    swift_beginAccess();
    v63 = *(v19 + 72);
    v20 = [v14 shareIdentifier];
    v73 = sub_1ADB063B0();
    v68 = v21;

    v22 = [v15 transportIdentifier];
    v65 = v8;
    v60 = sub_1ADB063B0();
    v67 = v14;
    v24 = v23;

    v58 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
    LOBYTE(v14) = *(v19 + 64);
    v26 = *(v19 + 72);
    v25 = *(v19 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v66 = v15;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v71;
    *(v30 + 24) = v18;
    *(v30 + 32) = v14;
    *(v30 + 40) = v26;
    *(v30 + 48) = v25;
    *(v30 + 56) = v73;
    *(v30 + 64) = v68;
    *(v30 + 72) = v60;
    *(v30 + 80) = v24;
    *(v30 + 88) = v29;
    *(v30 + 96) = v28;
    v69 = v29;
    v70 = v28;
    *(v30 + 104) = v27;
    v78 = sub_1AD46EB44;
    v79 = v30;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v76 = sub_1AD433EF4;
    v77 = &block_descriptor_18;
    v31 = _Block_copy(&aBlock);
    v62 = v25;
    v32 = v25;
    v33 = v26;
    v56 = v32;

    v34 = v33;

    [v58 addOperation_];
    _Block_release(v31);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = v71;
    *(v37 + 24) = v18;
    *(v37 + 32) = v14;
    *(v37 + 40) = v34;
    *(v37 + 48) = v25;
    *(v37 + 56) = v73;
    *(v37 + 64) = v68;
    *(v37 + 72) = v60;
    *(v37 + 80) = v24;
    *(v37 + 88) = v27;
    *(v37 + 96) = v36;
    v38 = v36;
    v78 = sub_1AD46EBA0;
    v79 = v37;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v76 = sub_1AD433EF4;
    v77 = &block_descriptor_23_1;
    v39 = _Block_copy(&aBlock);
    v59 = v34;
    v61 = v56;

    [v58 addOperation_];
    _Block_release(v39);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    v41 = v40;
    v57 = v40;
    v42 = swift_allocObject();
    v42[2] = v71;
    v42[3] = v18;
    v42[4] = v69;
    v42[5] = v70;
    v42[6] = v38;
    v42[7] = v63;
    v42[8] = v27;
    v42[9] = v41;
    v78 = sub_1AD46EBE4;
    v79 = v42;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v76 = sub_1AD433EF4;
    v77 = &block_descriptor_30_1;
    v43 = _Block_copy(&aBlock);
    v64 = v63;

    [v58 addOperation_];
    _Block_release(v43);
    v44 = swift_allocObject();
    *(v44 + 16) = v57;
    *(v44 + 24) = v14;
    *(v44 + 32) = v59;
    *(v44 + 40) = v62;
    *(v44 + 48) = v73;
    *(v44 + 56) = v68;
    *(v44 + 64) = v71;
    *(v44 + 72) = v18;
    *(v44 + 80) = v27;
    v78 = sub_1AD46EC1C;
    v79 = v44;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v76 = sub_1AD433EF4;
    v77 = &block_descriptor_36_2;
    v45 = _Block_copy(&aBlock);
    v74 = v59;
    v72 = v61;

    [v58 addOperation_];
    _Block_release(v45);
    v46 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v47 = swift_allocObject();
    v47[2] = v27;
    v47[3] = sub_1AD46EB38;
    v47[4] = v65;
    v78 = sub_1AD46EC58;
    v79 = v47;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v76 = sub_1AD434CF8;
    v77 = &block_descriptor_42_1;
    v48 = _Block_copy(&aBlock);

    v49 = [v58 evaluateWithInput:v46 completion:v48];
    _Block_release(v48);

    swift_unknownObjectRelease();
  }

  else
  {
    v50 = [objc_opt_self() errorWithSeverity_];
    v51 = sub_1ADB06370();
    [v50 addInternalDebugDescription_];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v54 = *(v52 + 48);
      v55 = v50;
      v54(v50, a3, a4, ObjectType, v52);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD46EF1C()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AA00);
  __swift_project_value_buffer(v0, qword_1EB59AA00);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F010()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AA18);
  __swift_project_value_buffer(v0, qword_1EB59AA18);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F14C()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AA60);
  __swift_project_value_buffer(v0, qword_1EB59AA60);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F240()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AAA8);
  __swift_project_value_buffer(v0, qword_1EB59AAA8);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F450()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AB38);
  __swift_project_value_buffer(v0, qword_1EB59AB38);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F4F4()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AB50);
  __swift_project_value_buffer(v0, qword_1EB59AB50);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F594()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AB68);
  __swift_project_value_buffer(v0, qword_1EB59AB68);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F638()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AB80);
  __swift_project_value_buffer(v0, qword_1EB59AB80);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F6DC()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AB98);
  __swift_project_value_buffer(v0, qword_1EB59AB98);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F780()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59ABB0);
  __swift_project_value_buffer(v0, qword_1EB59ABB0);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F824()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59ABC8);
  __swift_project_value_buffer(v0, qword_1EB59ABC8);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F8C8()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59ABE0);
  __swift_project_value_buffer(v0, qword_1EB59ABE0);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46F96C()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59ABF8);
  __swift_project_value_buffer(v0, qword_1EB59ABF8);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46FAA8()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AC28);
  __swift_project_value_buffer(v0, qword_1EB59AC28);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46FB4C()
{
  v0 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v0, qword_1EB59AC40);
  __swift_project_value_buffer(v0, qword_1EB59AC40);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46FC10(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1ADB05FA0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1ADB05F90();
}

uint64_t sub_1AD46FCAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1AD46FD64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006174614464;
  v3 = 0x6574707972636E65;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000001ADB9CA50;
    if (a1 != 6)
    {
      v4 = 0xD000000000000012;
      v5 = 0x80000001ADB9CA70;
    }

    v6 = 0x64417265646E6573;
    v7 = 0xED00007373657264;
    if (a1 != 4)
    {
      v6 = 0x7265766965636572;
      v7 = 0xEF73736572646441;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0x654B63696C627570;
    v5 = 0x80000001ADB9CA30;
    if (a1 == 2)
    {
      v5 = 0xED00006873614879;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    v6 = 0xD000000000000011;
    v7 = 0x80000001ADB9CA10;
    if (!a1)
    {
      v6 = 0x6574707972636E65;
      v7 = 0xED00006174614464;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v3 = 0x64417265646E6573;
        v2 = 0xED00007373657264;
      }

      else
      {
        v3 = 0x7265766965636572;
        v2 = 0xEF73736572646441;
      }

      goto LABEL_35;
    }

    if (a2 == 6)
    {
      v3 = 0xD000000000000011;
      v11 = "receiverImageData";
      goto LABEL_30;
    }

    v12 = "contactAddressType";
LABEL_34:
    v2 = (v12 - 32) | 0x8000000000000000;
    v3 = 0xD000000000000012;
    goto LABEL_35;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = 0x654B63696C627570;
      v2 = 0xED00006873614879;
      goto LABEL_35;
    }

    v12 = "ephemeralPublicKey";
    goto LABEL_34;
  }

  if (a2)
  {
    v3 = 0xD000000000000011;
    v11 = "encryptionVersion";
LABEL_30:
    v2 = (v11 - 32) | 0x8000000000000000;
  }

LABEL_35:
  if (v9 == v3 && v10 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1ADB06F50();
  }

  return v13 & 1;
}