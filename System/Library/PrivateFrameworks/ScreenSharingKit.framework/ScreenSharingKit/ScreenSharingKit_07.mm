uint64_t sub_264A781AC()
{
  v1 = *(v0 + 344);
  sub_264A78664((v0 + 200));

  return MEMORY[0x2822009F8](sub_264A78220, 0, 0);
}

uint64_t sub_264A78220()
{
  v1 = v0[31];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264A78290()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[40] + 15;
  v7 = swift_task_alloc();
  v8 = *(v3 + 32);
  v8(v7, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_264B41A84())
  {
    (*(v0[39] + 8))(v7, v0[38]);
  }

  else
  {
    v9 = v0[38];
    swift_allocError();
    v8(v10, v7, v9);
  }

  v11 = v0[41];
  v12 = v0[37];
  v13 = v0[31];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_264A783F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2649D046C(a3, v24 - v10, &qword_27FF898C0, &unk_264B44190);
  v12 = sub_264B41274();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2649D04D4(v11, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_264B411C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_264B41074() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_264A78664(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5C8, &unk_264B4BB20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - v17;
  v19 = *a1;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v20 = sub_264B40964();
  v21 = __swift_project_value_buffer(v20, qword_27FFA71B8);
  sub_264A78FDC(v19);
  v56 = v21;
  v22 = sub_264B40944();
  v23 = sub_264B41494();
  sub_264A78FEC(v19);
  v24 = os_log_type_enabled(v22, v23);
  v54 = v18;
  v55 = v13;
  v52 = v19;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57 = v19;
    v58[0] = v26;
    *v25 = 136446210;
    sub_264A78FDC(v19);
    v27 = sub_264B41064();
    v29 = v2;
    v30 = v8;
    v31 = v5;
    v32 = v4;
    v33 = sub_2649CC004(v27, v28, v58);

    *(v25 + 4) = v33;
    v4 = v32;
    v5 = v31;
    v8 = v30;
    v2 = v29;
    _os_log_impl(&dword_2649C6000, v22, v23, "Session interrupting with error: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x266749940](v26, -1, -1);
    MEMORY[0x266749940](v25, -1, -1);
  }

  if (*(v2 + 168) >= 2uLL)
  {
    v44 = sub_264B40944();
    v45 = sub_264B41484();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2649C6000, v44, v45, "Session already terminal, dropping interruption", v46, 2u);
      MEMORY[0x266749940](v46, -1, -1);
    }
  }

  else
  {
    sub_264A78FFC();
    v34 = swift_allocError();
    v35 = v52;
    *v36 = v52;
    v37 = *(v2 + 168);
    *(v2 + 168) = v34;
    sub_264A78FDC(v35);
    v38 = v34;
    sub_264A1EE08(v37);
    sub_264A1F208(v37);
    v58[0] = v37;
    sub_264A7480C(v58);
    sub_264A1F208(v37);
    v39 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
    swift_beginAccess();
    v40 = v53;
    sub_2649D046C(v2 + v39, v53, &qword_27FF89618, &qword_264B4B9F0);
    v41 = *(v5 + 48);
    if (v41(v40, 1, v4))
    {
      sub_2649D04D4(v40, &qword_27FF89618, &qword_264B4B9F0);
      v42 = 1;
      v43 = v54;
    }

    else
    {
      (*(v5 + 16))(v8, v40, v4);
      sub_2649D04D4(v40, &qword_27FF89618, &qword_264B4B9F0);
      v57 = v34;
      v47 = v34;
      v43 = v54;
      sub_264B412A4();
      (*(v5 + 8))(v8, v4);
      v42 = 0;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
    (*(*(v48 - 8) + 56))(v43, v42, 1, v48);
    sub_2649D04D4(v43, &qword_27FF8A5C8, &unk_264B4BB20);
    v49 = v2 + v39;
    v50 = v55;
    sub_2649D046C(v49, v55, &qword_27FF89618, &qword_264B4B9F0);
    if (v41(v50, 1, v4))
    {

      sub_2649D04D4(v50, &qword_27FF89618, &qword_264B4B9F0);
    }

    else
    {
      (*(v5 + 16))(v8, v50, v4);
      sub_2649D04D4(v50, &qword_27FF89618, &qword_264B4B9F0);
      sub_264B412B4();

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t ControlMessageSession.deinit()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 160);

  sub_264A1F208(*(v0 + 168));
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation, &qword_27FF89618, &qword_264B4B9F0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ControlMessageSession.__deallocating_deinit()
{
  ControlMessageSession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264A78D00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ControlMessageSession();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();

  return sub_264A78D6C(a1, a2, v12, a4, a5);
}

uint64_t sub_264A78D6C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_defaultActor_initialize();
  *(a3 + 113) = 0;
  v9 = sub_264B3FF64();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(a3 + 136) = sub_264B3FF54();
  v12 = sub_264B3FF34();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(a3 + 144) = sub_264B3FF24();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_264B409D4();
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 152) = v18;
  v19 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  (*(*(v20 - 8) + 56))(a3 + v19, 1, 1, v20);
  *(a3 + 120) = a1;
  *(a3 + 128) = a5;
  *(a3 + 112) = v8;
  return a3;
}

uint64_t type metadata accessor for ControlMessageSession()
{
  result = qword_27FF8A5B8;
  if (!qword_27FF8A5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A78ED8()
{
  sub_264A1ECE0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_264A78FDC(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_264A78FEC(id a1)
{
  if (a1 >= 5)
  {
  }
}

unint64_t sub_264A78FFC()
{
  result = qword_27FF8AA50;
  if (!qword_27FF8AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AA50);
  }

  return result;
}

uint64_t sub_264A79050()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A79088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_264A79184(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2649CD850;

  return sub_264A77480(a1, v8, v9, v1 + v6, v1 + v7, v10);
}

uint64_t sub_264A792C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
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

uint64_t sub_264A793A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264A7605C(a1, v6, v7, v8, v1 + v5);
}

id sub_264A794A4(id result)
{
  if (result != 3)
  {
    return sub_264A1EE08(result);
  }

  return result;
}

void sub_264A794B4(id a1)
{
  if (a1 != 3)
  {
    sub_264A1F208(a1);
  }
}

uint64_t sub_264A794D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264A79520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A79598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a4;
  v26 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A630, &qword_264B4BC08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v27 = a3;
  sub_2649CB2F0();
  v16 = sub_264B41554();
  v28 = v16;
  v17 = sub_264B41514();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A638, &unk_264B4BC10);
  sub_2649CB4C8(&qword_27FF8A640, &qword_27FF8A638, &unk_264B4BC10);
  sub_2649CB384();
  sub_264B40B14();
  sub_2649CB3DC(v10);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v21 = v24;
  v20 = v25;
  v19[2] = v18;
  v19[3] = v21;
  v19[4] = a2;
  v19[5] = v20;
  v19[6] = v26;
  sub_2649CB4C8(&qword_27FF8A648, &qword_27FF8A630, &qword_264B4BC08);

  sub_264B40B54();

  (*(v12 + 8))(v15, v11);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020);
  sub_264B40984();
  swift_endAccess();
}

uint64_t sub_264A79908(uint64_t result, unint64_t a2, char a3, void (*a4)(uint64_t, char *))
{
  v22 = a3;
  if (*(v4 + 216) == 1)
  {
    v5 = v4;
    v8 = result;
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
      v21[0] = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_2649CC004(v8, a2, v21);
      *(v12 + 12) = 2082;
      v14 = sub_264B41064();
      v16 = sub_2649CC004(v14, v15, v21);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_2649C6000, v10, v11, "Policy engine: Inactivity timer condition %{public}s changed to %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    swift_beginAccess();
    a4(v5 + 200, &v22);
    swift_endAccess();
    v17 = *(v5 + 200);
    if (v17 == 2 || (*(v5 + 201) != 2) == (*(v5 + 201) & 1))
    {
      return sub_2649CAF8C();
    }

    else
    {
      v18 = (v17 & 1) == 0;
      v19 = 152;
      if (!v18)
      {
        v19 = 168;
      }

      v20 = 144;
      if (!v18)
      {
        v20 = 160;
      }

      return sub_2649CADBC(*(v5 + v20), *(v5 + v19));
    }
  }

  return result;
}

void *sub_264A79B58()
{
  v1 = v0;
  v2 = v0[2];

  sub_264B409E4();

  v3 = v1[3];

  sub_264B409B4();

  v4 = v1[2];

  v5 = v1[3];

  v6 = v1[4];

  v7 = v1[6];

  return v1;
}

uint64_t sub_264A79BF0()
{
  sub_264A79B58();

  return swift_deallocClassInstance();
}

uint64_t sub_264A79C48(uint64_t a1)
{
  v2 = v1;
  v23 = 0;
  v24 = -4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A610, &qword_264B4BBF0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_264B40A14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A628, &qword_264B4BBF8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_264B409D4();
  *(v2 + 24) = v10;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_2649CB564(a1, &v23);
  v11 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for InactivityTimeoutConditionMonitor();
  swift_allocObject();

  v12 = sub_2649CA228(&v23, v10, sub_264A7A3E4, v11);
  swift_beginAccess();
  v13 = *(v2 + 32);
  *(v2 + 32) = v12;

  swift_beginAccess();
  v14 = *(v2 + 32);
  if (v14)
  {
    swift_endAccess();
    if (*(v14 + 216) == 1)
    {
      sub_2649CB510(a1);
    }

    else
    {
      *(v14 + 216) = 1;
      v15 = *(v14 + 120);
      v16 = *(v14 + 128);
      __swift_project_boxed_opaque_existential_1((v14 + 96), v15);
      v17 = *(v16 + 16);

      v18 = v17(v15, v16);
      sub_264A79598(0xD000000000000012, 0x8000000264B5D570, v18, sub_2649CA510, 0);

      v19 = *(v14 + 80);
      v20 = *(v14 + 88);
      __swift_project_boxed_opaque_existential_1((v14 + 56), v19);
      v21 = (*(v20 + 16))(v19, v20);
      sub_264A79598(0x6E6979616C507369, 0xEE00616964654D67, v21, sub_2649CA51C, 0);

      sub_2649CA7D0(0x6576457475706E69, 0xEA0000000000746ELL, *(v14 + 136));
      sub_2649CB510(a1);
    }
  }

  else
  {
    sub_2649CB510(a1);
    swift_endAccess();
  }

  return v2;
}

uint64_t sub_264A79F38()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = 17;
    v2 = 0x80;
    sub_264A7A1A0(&v1);
  }

  return result;
}

uint64_t sub_264A79FA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A608, &qword_264B4BBE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  if (*(v0 + 48))
  {
    v6 = *(v0 + 48);
  }

  else
  {
    v10[1] = *(v0 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A610, &qword_264B4BBF0);
    sub_2649CB4C8(&qword_27FF8A618, &qword_27FF8A610, &qword_264B4BBF0);
    v7 = v0;
    sub_264B40AC4();

    sub_2649CB4C8(&qword_27FF8A620, &qword_27FF8A608, &qword_264B4BBE8);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;
  }

  return v6;
}

uint64_t sub_264A7A188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_2649E124C(v2, v3);
}

uint64_t sub_264A7A1A0(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AE70);
  sub_2649E124C(v3, v4);
  v6 = sub_264B40944();
  v7 = sub_264B414B4();
  sub_2649E1290(v3, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    if (v4 <= 0xFB)
    {
      sub_264B41754();
      MEMORY[0x266748390](0xD000000000000013, 0x8000000264B59720);
      sub_264B41864();
      v11 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
      v11 = 0x64656D75736572;
    }

    v12 = sub_2649CC004(v11, v10, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v6, v7, "Policy engine: Setting policy result to %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v13 = *(v2 + 16);
  return sub_264B409F4();
}

uint64_t sub_264A7A3AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A7A3EC(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, char *))
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264A79908(a3, a4, v8, a5);
  }

  return result;
}

uint64_t sub_264A7A480()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for DrawEvent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DrawEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DrawEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_264A7A5D4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A690, &qword_264B4BCD8);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A698, &qword_264B4BCE0);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A6A0, &qword_264B4BCE8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A7B268();
  sub_264B41BD4();
  if (v2[2])
  {
    LOBYTE(v26) = 1;
    sub_264A7B2BC();
    sub_264B419B4();
    v18 = v2[1];
    v26 = *v2;
    v27 = v18;
    sub_264A7B40C();
    v19 = v25;
    sub_264B41A24();
    (*(v24 + 8))(v7, v19);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_264A7B364();
    sub_264B419B4();
    v26 = *v2;
    *&v27 = *(v2 + 2);
    sub_264A7B460();
    v20 = v23;
    sub_264B41A24();
    (*(v22 + 8))(v11, v20);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_264A7A8F4()
{
  if (*v0)
  {
    result = 0x6F50656B6F727473;
  }

  else
  {
    result = 0x696F507375636F66;
  }

  *v0;
  return result;
}

uint64_t sub_264A7A93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696F507375636F66 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F50656B6F727473 && a2 == 0xEB00000000746E69)
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

uint64_t sub_264A7AA24(uint64_t a1)
{
  v2 = sub_264A7B268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7AA60(uint64_t a1)
{
  v2 = sub_264A7B268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7AA9C(uint64_t a1)
{
  v2 = sub_264A7B364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7AAD8(uint64_t a1)
{
  v2 = sub_264A7B364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7AB14(uint64_t a1)
{
  v2 = sub_264A7B2BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7AB50(uint64_t a1)
{
  v2 = sub_264A7B2BC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_264A7AB8C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_264A7AD30(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_264A7ABEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_264A7AC8C(v5, v7);
}

uint64_t sub_264A7AC38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  type metadata accessor for ControlMessage();

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_264A7AC8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if ((a1[4] & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && *&v2 == *a2 && *(a2 + 8) == COERCE_DOUBLE(*(a1 + 8) | ((*(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32)) << 8)) && v3 == *(a2 + 16);
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  v5 = *&v2 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v3 != *(a2 + 16))
  {
    v5 = 0;
  }

  return *(a1 + 3) == *(a2 + 24) && v5;
}

uint64_t sub_264A7AD30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A650, &qword_264B4BCB8);
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A658, &qword_264B4BCC0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A660, &unk_264B4BCC8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_264A7B268();
  v17 = v43;
  sub_264B41BC4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  v38 = v6;
  v43 = v11;
  v18 = v42;
  v19 = v14;
  v20 = sub_264B419A4();
  v21 = (2 * *(v20 + 16)) | 1;
  v48 = v20;
  v49 = v20 + 32;
  v50 = 0;
  v51 = v21;
  v22 = sub_2649E0ED8();
  v23 = v10;
  if (v22 == 2 || v50 != v51 >> 1)
  {
    v31 = sub_264B417A4();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
    *v33 = &type metadata for DrawEvent;
    sub_264B41904();
    sub_264B41794();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    (*(v43 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  v24 = v22;
  v25 = v43;
  if (v22)
  {
    LOBYTE(v44) = 1;
    sub_264A7B2BC();
    sub_264B418F4();
    sub_264A7B310();
    v26 = v39;
    sub_264B41984();
    (*(v41 + 8))(v5, v26);
    (*(v25 + 8))(v19, v23);
    swift_unknownObjectRelease();
    v27 = v44;
    v28 = v45;
    v30 = v46;
    v29 = v47;
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_264A7B364();
    v36 = v9;
    sub_264B418F4();
    sub_264A7B3B8();
    v37 = v38;
    sub_264B41984();
    (*(v40 + 8))(v36, v37);
    (*(v25 + 8))(v19, v23);
    swift_unknownObjectRelease();
    v29 = 0;
    v27 = v44;
    v28 = v45;
    v30 = v46;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v52);
  *v18 = v27;
  *(v18 + 8) = v28;
  *(v18 + 16) = v30;
  *(v18 + 24) = v29;
  *(v18 + 32) = v24 & 1;
  return result;
}

unint64_t sub_264A7B268()
{
  result = qword_27FF8A668;
  if (!qword_27FF8A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A668);
  }

  return result;
}

unint64_t sub_264A7B2BC()
{
  result = qword_27FF8A670;
  if (!qword_27FF8A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A670);
  }

  return result;
}

unint64_t sub_264A7B310()
{
  result = qword_27FF8A678;
  if (!qword_27FF8A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A678);
  }

  return result;
}

unint64_t sub_264A7B364()
{
  result = qword_27FF8A680;
  if (!qword_27FF8A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A680);
  }

  return result;
}

unint64_t sub_264A7B3B8()
{
  result = qword_27FF8A688;
  if (!qword_27FF8A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A688);
  }

  return result;
}

unint64_t sub_264A7B40C()
{
  result = qword_27FF8A6A8;
  if (!qword_27FF8A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6A8);
  }

  return result;
}

unint64_t sub_264A7B460()
{
  result = qword_27FF8A6B0;
  if (!qword_27FF8A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6B0);
  }

  return result;
}

unint64_t sub_264A7B4E8()
{
  result = qword_27FF8A6B8;
  if (!qword_27FF8A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6B8);
  }

  return result;
}

unint64_t sub_264A7B540()
{
  result = qword_27FF8A6C0;
  if (!qword_27FF8A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6C0);
  }

  return result;
}

unint64_t sub_264A7B598()
{
  result = qword_27FF8A6C8;
  if (!qword_27FF8A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6C8);
  }

  return result;
}

unint64_t sub_264A7B5F0()
{
  result = qword_27FF8A6D0;
  if (!qword_27FF8A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6D0);
  }

  return result;
}

unint64_t sub_264A7B648()
{
  result = qword_27FF8A6D8;
  if (!qword_27FF8A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6D8);
  }

  return result;
}

unint64_t sub_264A7B6A0()
{
  result = qword_27FF8A6E0;
  if (!qword_27FF8A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6E0);
  }

  return result;
}

unint64_t sub_264A7B6F8()
{
  result = qword_27FF8A6E8;
  if (!qword_27FF8A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6E8);
  }

  return result;
}

unint64_t sub_264A7B750()
{
  result = qword_27FF8A6F0;
  if (!qword_27FF8A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6F0);
  }

  return result;
}

unint64_t sub_264A7B7A8()
{
  result = qword_27FF8A6F8;
  if (!qword_27FF8A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A6F8);
  }

  return result;
}

uint64_t MockUserDefaultsPrimitives.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  *(result + 24) = 1;
  return result;
}

uint64_t MockUserDefaultsPrimitives.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = 1;
  return result;
}

uint64_t sub_264A7B850(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && *(v3 + 24) != 1)
  {
    return 2;
  }

  swift_beginAccess();
  v6 = *(v3 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_264A20ACC(a1, a2);
    if (v8)
    {
      sub_2649C964C(*(v6 + 56) + 32 * v7, v10);

      goto LABEL_9;
    }
  }

  memset(v10, 0, sizeof(v10));
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_264A7B940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 & 1) == 0 || (*(v5 + 24))
  {
    swift_beginAccess();
    v10 = *(v5 + 16);
    if (*(v10 + 16))
    {

      v11 = sub_264A20ACC(a1, a2);
      if (v12)
      {
        sub_2649C964C(*(v10 + 56) + 32 * v11, v16);

LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
        v15 = swift_dynamicCast();
        return (*(*(a4 - 8) + 56))(a5, v15 ^ 1u, 1, a4);
      }
    }

    memset(v16, 0, sizeof(v16));
    goto LABEL_11;
  }

  v13 = *(*(a4 - 8) + 56);

  return v13(a5, 1, 1);
}

uint64_t sub_264A7BAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264A7BE8C(a1, v6);
  swift_beginAccess();

  sub_264A906EC(v6, a2, a3);
  return swift_endAccess();
}

uint64_t sub_264A7BB28(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && *(v3 + 24) != 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_264A7B850(a1, a2, a3 & 1);
  }

  return v4 & 1;
}

uint64_t sub_264A7BB60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v9);

      goto LABEL_6;
    }
  }

  memset(v9, 0, sizeof(v9));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264A7BC34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v9);

      goto LABEL_6;
    }
  }

  memset(v9, 0, sizeof(v9));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t MockUserDefaultsPrimitives.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MockUserDefaultsPrimitives.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_264A7BD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_264A7BE8C(a1, v8);
  swift_beginAccess();

  sub_264A906EC(v8, a2, a3);
  return swift_endAccess();
}

uint64_t sub_264A7BE00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  if ((a3 & 1) != 0 && *(v4 + 24) != 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_264A7B850(a1, a2, a3 & 1);
  }

  return v5 & 1;
}

uint64_t sub_264A7BE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A7C000()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit24MockNetworkStatusMonitor__networkStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockNetworkStatusMonitor()
{
  result = qword_27FF8A708;
  if (!qword_27FF8A708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A7C0FC()
{
  sub_264A7C18C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264A7C18C()
{
  if (!qword_27FF8A718)
  {
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8A718);
    }
  }
}

uint64_t sub_264A7C1DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A720, &unk_264B4C130);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A728, &unk_264B54810);
  sub_264B40A54();
  swift_endAccess();
  sub_264A7C7F4();
  v7 = sub_264B40AB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

void sub_264A7C314()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 20;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000018, 0x8000000264B5D6B0, &v15);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }
}

void sub_264A7C584()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 24;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000017, 0x8000000264B5D690, &v15);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_264A7C7F4()
{
  result = qword_27FF8A730;
  if (!qword_27FF8A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A720, &unk_264B4C130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit11ServerErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 8) & 0x3C | (*(a1 + 8) >> 6);
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit17ServerStatusEventO(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t get_enum_tag_for_layout_string_16ScreenSharingKit17ClientStatusEventO(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_264A7C8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 4) & 0xFFFFFFF0 | (*(a1 + 56) >> 1) & 0xF;
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

double sub_264A7C914(uint64_t a1, int a2, int a3)
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = (16 * -a2) & 0xFFFFFFF00 | (2 * (-a2 & 0xFLL));
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

uint64_t sub_264A7C9CC(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A778, &qword_264B4C4D8);
  v31 = *(v32 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v25 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A780, &qword_264B4C4E0);
  v29 = *(v30 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v25 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A788, &qword_264B4C4E8);
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v25 - v11;
  v13 = v1[1];
  v33 = *v1;
  v34 = v13;
  v14 = v1[3];
  v35 = v1[2];
  v36 = v14;
  v15 = v1[5];
  v37 = v1[4];
  v38 = v15;
  v16 = v1[7];
  v39 = v1[6];
  v17 = *(v1 + 4);
  v27 = *(v1 + 5);
  v28 = v17;
  v26 = v1[12];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A7D69C();
  sub_264B41BD4();
  if ((v16 & 0x2000000000000000) != 0)
  {
    v22 = v16 & 0xDFFFFFFFFFFFFFFFLL;
    LOBYTE(v41) = 1;
    sub_264A7D6F0();
    v23 = v40;
    sub_264B419B4();
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v22;
    v49 = v28;
    v50 = v27;
    v51 = v26;
    sub_264A7D840();
    v24 = v32;
    sub_264B41A24();
    (*(v31 + 8))(v5, v24);
    return (*(v9 + 8))(v12, v23);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_264A7D798();
    v19 = v40;
    sub_264B419B4();
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v47 = v39;
    LOBYTE(v48) = v16;
    sub_264A7D894();
    v20 = v30;
    sub_264B41A24();
    (*(v29 + 8))(v8, v20);
    return (*(v9 + 8))(v12, v19);
  }
}

uint64_t sub_264A7CDBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A738, &qword_264B4C4B8);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A740, &qword_264B4C4C0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A748, &unk_264B4C4C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_264A7D69C();
  v19 = v46;
  sub_264B41BC4();
  if (!v19)
  {
    v46 = v13;
    v20 = v45;
    v21 = sub_264B419A4();
    v22 = (2 * *(v21 + 16)) | 1;
    v55 = v21;
    v56 = v21 + 32;
    v57 = 0;
    v58 = v22;
    v23 = sub_2649E0ED8();
    v24 = v12;
    if (v23 == 2 || v57 != v58 >> 1)
    {
      v26 = sub_264B417A4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v28 = &type metadata for StatusEvent;
      sub_264B41904();
      sub_264B41794();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v46 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v47) = 1;
        sub_264A7D6F0();
        sub_264B418F4();
        v25 = v46;
        sub_264A7D744();
        v32 = v43;
        sub_264B41984();
        (*(v44 + 8))(v7, v32);
        (*(v25 + 8))(v16, v24);
        swift_unknownObjectRelease();
        v33 = v47;
        v34 = v48;
        v35 = v49;
        v36 = v50;
        v37 = v52;
        v38 = v53;
        v39 = v54;
        v40 = v51 & 0xC0000000000000E1 | 0x2000000000000000;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_264A7D798();
        sub_264B418F4();
        v31 = v46;
        sub_264A7D7EC();
        sub_264B41984();
        (*(v42 + 8))(v11, v8);
        (*(v31 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v33 = v47;
        v34 = v48;
        v35 = v49;
        v36 = v50;
        v39 = v51;
        v40 = v51 & 0xE1;
      }

      *v20 = v33;
      *(v20 + 16) = v34;
      *(v20 + 32) = v35;
      *(v20 + 48) = v36;
      *(v20 + 56) = v40;
      *(v20 + 64) = v37;
      *(v20 + 80) = v38;
      *(v20 + 96) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v59);
}

uint64_t sub_264A7D32C(uint64_t a1)
{
  v2 = sub_264A7D6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7D368(uint64_t a1)
{
  v2 = sub_264A7D6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7D3A4()
{
  if (*v0)
  {
    return 0x7453746E65696C63;
  }

  else
  {
    return 0x7453726576726573;
  }
}

uint64_t sub_264A7D3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7453726576726573 && a2 == 0xEC00000073757461;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7453746E65696C63 && a2 == 0xEC00000073757461)
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

uint64_t sub_264A7D4C0(uint64_t a1)
{
  v2 = sub_264A7D69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7D4FC(uint64_t a1)
{
  v2 = sub_264A7D69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7D538(uint64_t a1)
{
  v2 = sub_264A7D798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A7D574(uint64_t a1)
{
  v2 = sub_264A7D798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7D5E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  type metadata accessor for ControlMessage();
  swift_storeEnumTagMultiPayload();
  return sub_264A7D664(v10, v9);
}

unint64_t sub_264A7D69C()
{
  result = qword_27FF8A750;
  if (!qword_27FF8A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A750);
  }

  return result;
}

unint64_t sub_264A7D6F0()
{
  result = qword_27FF8A758;
  if (!qword_27FF8A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A758);
  }

  return result;
}

unint64_t sub_264A7D744()
{
  result = qword_27FF8A760;
  if (!qword_27FF8A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A760);
  }

  return result;
}

unint64_t sub_264A7D798()
{
  result = qword_27FF8A768;
  if (!qword_27FF8A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A768);
  }

  return result;
}

unint64_t sub_264A7D7EC()
{
  result = qword_27FF8A770;
  if (!qword_27FF8A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A770);
  }

  return result;
}

unint64_t sub_264A7D840()
{
  result = qword_27FF8A790;
  if (!qword_27FF8A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A790);
  }

  return result;
}

unint64_t sub_264A7D894()
{
  result = qword_27FF8A798;
  if (!qword_27FF8A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A798);
  }

  return result;
}

uint64_t sub_264A7D8E8(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v42 = a1[4];
  v43 = v3;
  v4 = a1[1];
  v38 = *a1;
  v39 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v40 = a1[2];
  v41 = v5;
  v8 = *(a2 + 16);
  v45 = *a2;
  v46 = v8;
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v10;
  v11 = *(a2 + 48);
  v12 = *a2;
  v13 = *(a2 + 16);
  v47 = *(a2 + 32);
  v48 = v11;
  v52[0] = v7;
  v52[1] = v6;
  v14 = a1[5];
  v52[4] = v42;
  v52[5] = v14;
  v52[2] = v40;
  v52[3] = v2;
  v56 = v47;
  v55 = v13;
  v44 = *(a1 + 12);
  v51 = *(a2 + 96);
  v15 = *(a1 + 12);
  v54 = v12;
  v16 = *(a2 + 80);
  v17 = *(a2 + 96);
  v53 = v15;
  v60 = v17;
  v59 = v16;
  v58 = v49;
  v57 = v9;
  if ((*(&v41 + 1) & 0x2000000000000000) != 0)
  {
    if ((*(&v11 + 1) & 0x2000000000000000) != 0)
    {
      v32[0] = v38;
      v32[1] = v39;
      v32[2] = v40;
      v33 = v41;
      v34 = *(&v41 + 1) & 0xDFFFFFFFFFFFFFFFLL;
      v35 = v42;
      v36 = v43;
      v37 = v44;
      v24 = v45;
      v25 = v46;
      v26 = v47;
      v27 = v48;
      v28 = *(&v11 + 1) & 0xDFFFFFFFFFFFFFFFLL;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      sub_264A7D664(&v45, v21);
      sub_264A7D664(&v38, v21);
      sub_264A7D664(&v38, v21);
      sub_264A7D664(&v45, v21);
      v18 = sub_264AD9F00(v32, &v24);
      goto LABEL_7;
    }
  }

  else if ((*(&v11 + 1) & 0x2000000000000000) == 0)
  {
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    LOBYTE(v28) = BYTE8(v41);
    v21[0] = v45;
    v21[1] = v46;
    v21[2] = v47;
    v22 = v48;
    v23 = BYTE8(v11);
    sub_264A7D664(&v45, v32);
    sub_264A7D664(&v38, v32);
    sub_264A7D664(&v38, v32);
    sub_264A7D664(&v45, v32);
    v18 = sub_264B11BF4(&v24, v21);
LABEL_7:
    v19 = v18;
    sub_264A7DB0C(v52);
    sub_264A7DB74(&v45);
    sub_264A7DB74(&v38);
    return v19 & 1;
  }

  sub_264A7D664(&v38, v32);
  sub_264A7D664(&v45, v32);
  sub_264A7DB0C(v52);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_264A7DB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A7A0, &qword_264B4C4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264A7DBD8()
{
  result = qword_27FF8A7A8;
  if (!qword_27FF8A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7A8);
  }

  return result;
}

unint64_t sub_264A7DC30()
{
  result = qword_27FF8A7B0;
  if (!qword_27FF8A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7B0);
  }

  return result;
}

unint64_t sub_264A7DC88()
{
  result = qword_27FF8A7B8;
  if (!qword_27FF8A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7B8);
  }

  return result;
}

unint64_t sub_264A7DCE0()
{
  result = qword_27FF8A7C0;
  if (!qword_27FF8A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7C0);
  }

  return result;
}

unint64_t sub_264A7DD38()
{
  result = qword_27FF8A7C8;
  if (!qword_27FF8A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7C8);
  }

  return result;
}

unint64_t sub_264A7DD90()
{
  result = qword_27FF8A7D0;
  if (!qword_27FF8A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7D0);
  }

  return result;
}

unint64_t sub_264A7DDE8()
{
  result = qword_27FF8A7D8;
  if (!qword_27FF8A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7D8);
  }

  return result;
}

unint64_t sub_264A7DE40()
{
  result = qword_27FF8A7E0;
  if (!qword_27FF8A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7E0);
  }

  return result;
}

unint64_t sub_264A7DE98()
{
  result = qword_27FF8A7E8;
  if (!qword_27FF8A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A7E8);
  }

  return result;
}

uint64_t sub_264A7DEEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  v29 = *(a1 + 16);
  sub_264AAFCF0(0, v1, 0);
  v2 = v30;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_264B41694();
  v7 = v29;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_31;
    }

    v12 = *(*(a1 + 48) + result);
    if (v12 <= 1)
    {
      if (!*(*(a1 + 48) + result))
      {
        v14 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E75;
        goto LABEL_18;
      }

      v15 = 0x656369766564;
    }

    else
    {
      if (v12 == 2)
      {
        v13 = 0xD000000000000011;
        v14 = 0x8000000264B58BE0;
        goto LABEL_18;
      }

      if (v12 == 3)
      {
        v13 = 0x6F68706F7263696DLL;
        v14 = 0xEF6573556E49656ELL;
        goto LABEL_18;
      }

      v15 = 0x6172656D6163;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
    v14 = 0xEB00000000657355;
LABEL_18:
    v16 = *(a1 + 36);
    v18 = *(v30 + 16);
    v17 = *(v30 + 24);
    if (v18 >= v17 >> 1)
    {
      v27 = *(a1 + 36);
      v28 = result;
      sub_264AAFCF0((v17 > 1), v18 + 1, 1);
      v7 = v29;
      v16 = v27;
      result = v28;
    }

    *(v30 + 16) = v18 + 1;
    v19 = v30 + 16 * v18;
    *(v19 + 32) = v13;
    *(v19 + 40) = v14;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_32;
    }

    v4 = a1 + 56;
    v20 = *(a1 + 56 + 8 * v10);
    if ((v20 & v11) == 0)
    {
      goto LABEL_33;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_34;
    }

    v21 = v20 & (-2 << (result & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (a1 + 64 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_264A813F4(result, v16, 0);
          v7 = v29;
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_264A813F4(result, v16, 0);
      v7 = v29;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_264A7E1B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_264AAFD10(0, v1, 0);
    v2 = v28;
    v3 = a1 + 56;
    v4 = -1 << *(a1 + 32);
    v5 = sub_264B41694();
    v6 = a1;
    v7 = 0;
    v25 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v26 = *(v6 + 36);
      v11 = (*(v6 + 48) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];

      sub_264A8094C(v12, v13, &v27);
      v14 = v27;
      v28 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_264AAFD10((v15 > 1), v16 + 1, 1);
        v2 = v28;
      }

      *(v2 + 16) = v16 + 1;
      *(v2 + v16 + 32) = v14;
      v8 = 1 << *(v6 + 32);
      if (v5 >= v8)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v17 = *(a1 + 56 + 8 * v10);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v25;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (a1 + 64 + 8 * v10);
        v9 = v25;
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_264A813F4(v5, v26, 0);
            v6 = a1;
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_264A813F4(v5, v26, 0);
        v6 = a1;
      }

LABEL_4:
      ++v7;
      v5 = v8;
      if (v7 == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_264A7E400@<X0>(char **a1@<X8>)
{
  sub_2649CB5C0(v1, v9);
  sub_2649CB5C0(v1 + 40, v8);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v7[3] = &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor;
  v7[4] = &off_28765EC78;
  v3 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v4 = objc_allocWithZone(v3);
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor);
  v5 = sub_264A8124C(v8, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  a1[3] = v3;
  a1[4] = &off_28765B720;
  *a1 = v5;
  return result;
}

id sub_264A7E4E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_264A7E5F0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_264B41884();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x266748A70](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      [v5 invalidate];
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v6 != v3);
  }

  v7 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F90];

  return [*(v0 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) invalidate];
}

void sub_264A7E734(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_customBlockedReasons;
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_customBlockedReasons);

  v5 = sub_264B0EF58(a1, v4);

  if (v5)
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    oslog = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v7, "Custom blocked reasons didn't change, ignoring update", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }
  }

  else
  {
    v9 = *(v1 + v3);
    *(v1 + v3) = a1;

    v10 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session);

    v12 = sub_264A7DEEC(v11);
    sub_264AAAB44(v12);

    oslog = sub_264B41404();

    [v10 setExternallyBlockedReasons_];
  }
}

uint64_t sub_264A7E8D8(uint64_t a1)
{
  v2 = sub_264B40EB4();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264B40EE4();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v15 = sub_264B41554();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = sub_264A810F0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);
  sub_264B40EC4();
  v23 = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  MEMORY[0x266748860](0, v9, v5, v18);
  _Block_release(v18);

  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

void sub_264A7EC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FF8AE70);
  v8 = sub_264B40944();
  v9 = sub_264B41484();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2649C6000, v8, v9, "Activating CATransaction", v10, 2u);
    MEMORY[0x266749940](v10, -1, -1);
  }

  v11 = objc_opt_self();
  [v11 activate];
  v12 = sub_264B40944();
  v13 = sub_264B41484();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2649C6000, v12, v13, "Activated CATransaction", v14, 2u);
    MEMORY[0x266749940](v14, -1, -1);
  }

  v15 = sub_264B40944();
  v16 = sub_264B41484();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2649C6000, v15, v16, "Awaiting CATransaction commit handler", v17, 2u);
    MEMORY[0x266749940](v17, -1, -1);
  }

  (*(v3 + 16))(v6, a1, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v6, v2);
  aBlock[4] = sub_264A811B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_29;
  v20 = _Block_copy(aBlock);

  v21 = [v11 addCommitHandler:v20 forPhase:5];
  _Block_release(v20);
  v22 = sub_264B40944();
  v23 = sub_264B41484();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;
    if (v21)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v21)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_2649CC004(v26, v27, aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2649C6000, v22, v23, "Added CATransactionCommitHandler: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x266749940](v25, -1, -1);
    MEMORY[0x266749940](v24, -1, -1);
  }
}

uint64_t sub_264A7F0A4()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FF8AE70);
  v1 = sub_264B40944();
  v2 = sub_264B41484();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2649C6000, v1, v2, "CATransaction commit handler called", v3, 2u);
    MEMORY[0x266749940](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  return sub_264B411E4();
}

void sub_264A7F1A0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (v2 >= 3)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v21 = sub_264B40964();
    __swift_project_value_buffer(v21, qword_27FFA71B8);
    sub_264A18774(v3, v2, v5, v4);
    oslog = sub_264B40944();
    v22 = sub_264B41484();
    sub_264A187D4(v3, v2, v5, v4);
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[3] = v4;
      v31 = v24;
      *v23 = 136315138;
      v30[0] = v3;
      v30[1] = v2;
      v30[2] = v5;
      sub_264A18774(v3, v2, v5, v4);
      v25 = sub_264B41064();
      v27 = sub_2649CC004(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2649C6000, oslog, v22, "Incoming event %s has no sbUI equivalent, will no-op", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266749940](v24, -1, -1);
      MEMORY[0x266749940](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    sub_264A18774(v3, v2, v5, v4);
    v7 = sub_264B40944();
    v8 = sub_264B41484();
    sub_264A187D4(v3, v2, v5, v4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v9 = 136315138;
      v31 = v2 + 1;
      type metadata accessor for SBUIContinuityButtonEventType(0);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, v30);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v7, v8, "Interactor received %s, processing...", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x266749940](v28, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v13 = v2 + 1;
    [*(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) handleContinuityButtonEvent_];
    sub_264A18774(v3, v2, v5, v4);
    v14 = sub_264B40944();
    v15 = sub_264B41484();
    sub_264A187D4(v3, v2, v5, v4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v16 = 136315138;
      v31 = v13;
      type metadata accessor for SBUIContinuityButtonEventType(0);
      v18 = sub_264B41064();
      v20 = sub_2649CC004(v18, v19, v30);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2649C6000, v14, v15, "Processed %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }
  }
}

void sub_264A7F604(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (sub_264B40704() == a1 && v10 == a2)
  {

    goto LABEL_5;
  }

  v11 = sub_264B41AA4();

  if (v11)
  {
LABEL_5:
    v12 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives + 24);
    v13 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives), v12);
    LOBYTE(v27) = 1;
    if (((*(v13 + 8))(&v27, v12, v13) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (sub_264B406E4() == a1 && v14 == a2)
  {
  }

  else
  {
    v15 = sub_264B41AA4();

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (_UISolariumEnabled())
  {
LABEL_11:
    sub_264AEF040(a1, a2, a3, a4);
    v20 = v19;
    v22 = v21;
    v23 = *(v5 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session);

    sub_2649DEF18(v20, v22);
    sub_2649DEF6C(v20, v22);
    v24 = sub_264B41014();

    sub_2649DEF18(v20, v22);

    v25 = sub_264B40014();
    sub_2649DEF6C(v20, v22);
    [v23 handleLaunchEventOfType:v24 payload:v25];

    sub_2649DEF6C(v20, v22);
    return;
  }

LABEL_12:
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AE70);
  oslog = sub_264B40944();
  v17 = sub_264B41484();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v17, "Unknown launch payload event, ignoring", v18, 2u);
    MEMORY[0x266749940](v18, -1, -1);
  }
}

void sub_264A7FAA8(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_stateSubject);
  sub_264B40A04();
  v5 = v44;
  v6 = v45;
  if (v45)
  {
    if (v45 == 1)
    {
LABEL_3:
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v7 = sub_264B40964();
      __swift_project_value_buffer(v7, qword_27FF8AE70);
      sub_2649E127C(v44, v45);
      v8 = sub_264B40944();
      v9 = sub_264B41494();
      sub_2649E12C0(v44, v45);
      if (!os_log_type_enabled(v8, v9))
      {

        sub_2649E12C0(v44, v45);
        return;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43 = v11;
      *v10 = 136446210;
      v44 = v5;
      v45 = v6;
      v12 = sub_264B41064();
      v14 = sub_2649CC004(v12, v13, &v43);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2649C6000, v8, v9, "Received window capture event while in state %{public}s, unable to handle, ignoring", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266749940](v11, -1, -1);
      v15 = v10;
      goto LABEL_43;
    }

    if (v44 > 2)
    {
      if (v44 == 3)
      {
        sub_2649E12C0(0, 2u);
        v16 = 3;
        v17 = 2;
      }

      else
      {
        sub_2649E12C0(0, 2u);
        if (v44 == 4)
        {
          v16 = 4;
        }

        else
        {
          v16 = 5;
        }

        v17 = 2;
      }
    }

    else
    {
      if (!v44)
      {
        sub_2649E12C0(0, 2u);
        sub_2649E12C0(0, 2u);
        goto LABEL_3;
      }

      sub_2649E12C0(0, 2u);
      if (v44 == 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      v17 = 2;
    }
  }

  else
  {
    sub_2649E12C0(0, 2u);
    v16 = v44;
    v17 = 0;
  }

  sub_2649E12C0(v16, v17);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v18 = sub_264B40964();
  __swift_project_value_buffer(v18, qword_27FF8AE70);
  v19 = sub_264B40944();
  v20 = sub_264B41484();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136446210;
    LOBYTE(v43) = v3;
    v23 = sub_264B41064();
    v25 = sub_2649CC004(v23, v24, &v44);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2649C6000, v19, v20, "Received window capture event %{public}s, processing...", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      [*(v2 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) noteScreenshotCaptured];
      return;
    }

    v8 = sub_264B40944();
    v26 = sub_264B414B4();
    if (!os_log_type_enabled(v8, v26))
    {
      goto LABEL_44;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = 136446210;
    LOBYTE(v43) = 0;
    v29 = sub_264B41064();
    v31 = sub_2649CC004(v29, v30, &v44);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2649C6000, v8, v26, "Unrecognized window capture event: %{public}s, ignoring", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x266749940](v28, -1, -1);
    v15 = v27;
    goto LABEL_43;
  }

  if (v3 != 2)
  {
    v35 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions;
    swift_beginAccess();
    v36 = *(v2 + v35);
    if (v36 >> 62)
    {
      if (v36 < 0)
      {
        v40 = *(v2 + v35);
      }

      if (sub_264B41884())
      {
        goto LABEL_33;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      swift_beginAccess();
      sub_264A800C8();
      v38 = v37;
      swift_endAccess();
      [v38 invalidate];
      swift_unknownObjectRelease();
      return;
    }

    v8 = sub_264B40944();
    v41 = sub_264B414A4();
    if (!os_log_type_enabled(v8, v41))
    {
LABEL_44:

      return;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2649C6000, v8, v41, "Received window streaming did end event without paired did start, this is a bug, ignoring", v42, 2u);
    v15 = v42;
LABEL_43:
    MEMORY[0x266749940](v15, -1, -1);
    goto LABEL_44;
  }

  v32 = [*(v2 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) acquireScreenRecordingAssertion];
  v33 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions;
  v34 = swift_beginAccess();
  MEMORY[0x266748430](v34);
  if (*((*(v2 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v33) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*(v2 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_264B41174();
  }

  sub_264B41194();
  swift_endAccess();
}

void sub_264A800C8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x266748A70](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_264B41884())
  {
    goto LABEL_20;
  }

  if (!sub_264B41884())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_264B41884();
LABEL_16:
    if (v4)
    {
      sub_264AD3EC4(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_264A80218(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(*v6 + *a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2649CB4C8(a6, a4, a5);
  return sub_264B40AB4();
}

uint64_t sub_264A802AC()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_264A80380;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A80380()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

void sub_264A8047C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8);
  v8 = *(&v3->isa + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session);
  if (sub_264B415E4())
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE70);

    v10 = sub_264B40944();
    v11 = sub_264B41484();
    if (!os_log_type_enabled(v10, v11))
    {

LABEL_12:
      sub_264A7E1B4(a3);
      v27 = sub_264AAABDC(v26);

      v28 = [a1 displayHardwareIdentifier];
      if (v28)
      {
        v29 = v28;
        v30 = sub_264B41044();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_targetedDisplayIdentifier);
      v34 = *(&v4[1].isa + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_targetedDisplayIdentifier);
      *v33 = v30;
      v33[1] = v32;

      if (a2 <= 3)
      {
        switch(a2)
        {
          case 1:
            LOBYTE(a2) = 0;
            goto LABEL_35;
          case 2:

            v27 = 1;
            goto LABEL_35;
          case 3:

            v27 = 2;
LABEL_31:
            LOBYTE(a2) = 2;
            goto LABEL_35;
        }
      }

      else
      {
        if (a2 <= 5)
        {

          if (a2 == 4)
          {
            LOBYTE(a2) = 2;
            v27 = 3;
          }

          else
          {
            LOBYTE(a2) = 2;
            v27 = 4;
          }

          goto LABEL_35;
        }

        if (a2 == 6)
        {

          LOBYTE(a2) = 2;
          v27 = 5;
          goto LABEL_35;
        }

        if (a2 == 7)
        {
          LOBYTE(a2) = 1;
LABEL_35:
          v35 = *(&v4->isa + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_stateSubject);
          v38 = v27;
          v39 = a2;
          sub_264B409F4();
          sub_2649E12C0(v27, a2);
          return;
        }
      }

      v27 = 0;
      goto LABEL_31;
    }

    oslog = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136446466;
    v14 = NSStringFromSBUIContinuitySessionStep();

    if (v14)
    {
      v15 = sub_264B41044();
      v17 = v16;

      v18 = sub_2649CC004(v15, v17, &v38);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2082;
      v19 = sub_264B41424();
      v21 = sub_2649CC004(v19, v20, &v38);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_2649C6000, v10, v11, "Continuity session moved to step: %{public}s because: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);

      v4 = oslog;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v22 = sub_264B40964();
    __swift_project_value_buffer(v22, qword_27FF8AE70);
    osloga = sub_264B40944();
    v23 = sub_264B41494();
    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2649CC004(0xD000000000000027, 0x8000000264B5D8C0, &v38);
      _os_log_impl(&dword_2649C6000, osloga, v23, "Received %s from session that isn't ours, ignoring", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x266749940](v25, -1, -1);
      MEMORY[0x266749940](v24, -1, -1);
    }

    else
    {
    }
  }
}

void sub_264A8094C(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *MEMORY[0x277D67F58];
  if (sub_264B41044() == a1 && v7 == a2)
  {

LABEL_8:

    v10 = 2;
    goto LABEL_9;
  }

  v9 = sub_264B41AA4();

  if (v9)
  {
    goto LABEL_8;
  }

  v11 = *MEMORY[0x277D67F50];
  if (sub_264B41044() == a1 && v12 == a2)
  {

LABEL_17:

    v10 = 1;
    goto LABEL_9;
  }

  v14 = sub_264B41AA4();

  if (v14)
  {
    goto LABEL_17;
  }

  if (a1 == 0x6E496172656D6163 && a2 == 0xEB00000000657355 || (sub_264B41AA4() & 1) != 0)
  {

    v10 = 4;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEF6573556E49656ELL || (sub_264B41AA4() & 1) != 0)
  {

    v10 = 3;
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    __swift_project_value_buffer(v15, qword_27FFA71B8);

    v16 = sub_264B40944();
    v17 = sub_264B41494();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136446210;
      v20 = sub_2649CC004(a1, a2, &v21);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_2649C6000, v16, v17, "Unknown SceneInteractor blocked reason: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266749940](v19, -1, -1);
      MEMORY[0x266749940](v18, -1, -1);
    }

    else
    {
    }

    v10 = 0;
  }

LABEL_9:
  *a3 = v10;
}

void sub_264A80CBC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8);
  v7 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session);
  if (sub_264B415E4())
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AE70);
    v9 = sub_264B40944();
    v10 = sub_264B41484();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30[0] = v12;
      *v11 = 136446466;
      type metadata accessor for BSInterfaceOrientation(0);
      v13 = sub_264B41064();
      v15 = sub_2649CC004(v13, v14, v30);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      type metadata accessor for BSInterfaceOrientationMask(0);
      v16 = sub_264B41064();
      v18 = sub_2649CC004(v16, v17, v30);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_2649C6000, v9, v10, "Continuity session did update orientation information: %{public}s, supportedOrientations: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);
    }

    if (a2 >= 5)
    {
      v19 = 0;
    }

    else
    {
      v19 = a2;
    }

    if ((~a3 & 0x1E) != 0)
    {
      if ((~a3 & 0x1A) != 0)
      {
        if ((~a3 & 0x18) != 0)
        {
          v25 = (a3 >> 1) & 3;
        }

        else
        {
          v25 = (a3 >> 1) & 3 | 0xC;
        }

        v26 = v25 | (a3 >> 1) & 8;
        v27 = (v25 >> 2) & 1;
        if ((a3 & 8) == 0)
        {
          LODWORD(v27) = 1;
        }

        if (v27)
        {
          v20 = v26;
        }

        else
        {
          v20 = v26 | 4;
        }
      }

      else
      {
        v20 = 13;
      }
    }

    else
    {
      v20 = 15;
    }

    v28 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_orientationSubject);
    LOBYTE(v30[0]) = v19;
    v30[1] = v20;
    sub_264B409F4();
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v21 = sub_264B40964();
    __swift_project_value_buffer(v21, qword_27FF8AE70);
    oslog = sub_264B40944();
    v22 = sub_264B41494();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2649CC004(0xD000000000000059, 0x8000000264B5D860, v30);
      _os_log_impl(&dword_2649C6000, oslog, v22, "Received %s from session that isn't ours, ignoring", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266749940](v24, -1, -1);
      MEMORY[0x266749940](v23, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A811CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

char *sub_264A8124C(uint64_t *a1, _BYTE *a2)
{
  v19[3] = &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor;
  v19[4] = &off_28765EC78;
  v4 = &a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_targetedDisplayIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277D67CC0]) init];
  v6 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_stateSubject;
  v17 = 0;
  LOBYTE(v18) = 2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A8A8, &unk_264B4C8D8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&a2[v6] = sub_264B40A14();
  v10 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_orientationSubject;
  LOBYTE(v17) = 0;
  v18 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F0, &unk_264B449D0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&a2[v10] = sub_264B40A14();
  *&a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_customBlockedReasons] = MEMORY[0x277D84FA0];
  a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_hasNotifiedSpringBoardOfConfiguredHIDServices] = 0;
  *&a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_screenRecordingAssertions] = MEMORY[0x277D84F90];
  sub_2649CB5C0(v19, &a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_launchPayloadProcessor]);
  sub_2649CB5C0(a1, &a2[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_featureFlagPrimitives]);
  v16.receiver = a2;
  v16.super_class = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [*&v14[OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session] setDelegate_];
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14;
}

uint64_t sub_264A813F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_264A8141C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264A81464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit11AngelServerC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264A814EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264A81548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_264A815AC()
{
  result = qword_27FF8A8C8;
  if (!qword_27FF8A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A8C8);
  }

  return result;
}

BOOL sub_264A81600(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

      if (v2 == 6)
      {
        return v3 == 6;
      }
    }

    else
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      if (v2 == 4)
      {
        return v3 == 4;
      }
    }

    return v3 >= 7;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      return v3 == 1;
    }

    if (v2 == 2)
    {
      return v3 == 2;
    }

    return v3 >= 7;
  }

  return !v3;
}

BOOL sub_264A816B0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 6)
  {
    v2 = 6;
  }

  return *a1 < v2;
}

BOOL sub_264A816D0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= 6)
  {
    v2 = 6;
  }

  return *a2 >= v2;
}

BOOL sub_264A816F0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 6)
  {
    v2 = 6;
  }

  return *a1 >= v2;
}

BOOL sub_264A81710(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= 6)
  {
    v2 = 6;
  }

  return *a2 < v2;
}

uint64_t CaptureUIInteraction.interactionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

void CaptureUIInteraction.interactionState.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  if (v3 == 1)
  {
    if (v2 != 0.0)
    {
      if (v5 == 0.0)
      {
        v6 = 0;
      }

      if (v6 == 1)
      {
        return;
      }

LABEL_14:
      v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
      if (v7)
      {
        v8 = v7;
        sub_264A818B8(v8);
      }

      return;
    }

    if (v5 != 0.0)
    {
      LOBYTE(v6) = 0;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v2 != v5)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
      goto LABEL_14;
    }
  }
}

void *CaptureUIInteraction.view.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  v2 = v1;
  return v1;
}

uint64_t sub_264A818B8(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 8) != 1)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v19 = sub_264B40964();
    __swift_project_value_buffer(v19, qword_27FFA71B8);
    v20 = sub_264B40944();
    v21 = sub_264B41474();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2649C6000, v20, v21, "Capture switched to draw", v22, 2u);
      MEMORY[0x266749940](v22, -1, -1);
    }

    v23 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer);
    v24 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    ObjectType = swift_getObjectType();
    (*(v24 + 16))(0, ObjectType, v24);
    v26 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer);
    v27 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    v28 = swift_getObjectType();
    v29 = *(v27 + 8);
    v30 = *(v29 + 16);
    v31 = a1;
    v30(a1, v28, v29);
    v32 = *(v26 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale);
    *(v26 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_displayScale) = v5;
    if (v32 != v5 && *(v26 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_localDrawingView) && *(v26 + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_captureView))
    {
      sub_264AF3F5C();
    }

    v33 = swift_unknownObjectRetain();
    sub_264A86A18(v33, v2);
    return swift_unknownObjectRelease();
  }

  if (v5 != 0.0)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71B8);
    v7 = sub_264B40944();
    v8 = sub_264B41474();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Capture switched to control", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v10 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer);
    v11 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 16))(0, v12);
    v13 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer);
    v14 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    v15 = swift_getObjectType();
    v16 = *(v14 + 16);
    v17 = a1;
    v16(a1, v15, v14);
    v18 = swift_unknownObjectRetain();
    sub_264A86D3C(v18, v2, v15, v14);
    return swift_unknownObjectRelease();
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v35 = sub_264B40964();
  __swift_project_value_buffer(v35, qword_27FFA71B8);
  v36 = sub_264B40944();
  v37 = sub_264B41474();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2649C6000, v36, v37, "Capture Paused Locally", v38, 2u);
    MEMORY[0x266749940](v38, -1, -1);
  }

  v39 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer);
  v40 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
  v41 = swift_getObjectType();
  (*(*(v40 + 8) + 16))(0, v41);
  v43 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer);
  v42 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
  v44 = swift_getObjectType();
  return (*(v42 + 16))(0, v44, v42);
}

void (*CaptureUIInteraction.interactionState.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_264A81DC8;
}

void sub_264A81DC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 40) + *(v1 + 48);
  v4 = *(v1 + 32);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v4;
  if (v4)
  {
    if (v2 != 0.0)
    {
      if (v5 == 0.0)
      {
        v6 = 0;
      }

      if (v6)
      {
        goto LABEL_16;
      }

LABEL_14:
      v7 = *(*(v1 + 40) + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
      if (v7)
      {
        v8 = v1;
        v9 = v7;
        sub_264A818B8(v9);

        v1 = v8;
      }

      goto LABEL_16;
    }

    if (v5 != 0.0)
    {
      v6 = 0;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v2 != v5)
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  free(v1);
}

uint64_t CaptureUIInteraction.deviceOrientation.getter()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CaptureUIInteraction.deviceOrientation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40F14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  *(v2 + v9) = a1;
  sub_2649CB2F0();
  *v8 = sub_264B41554();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = sub_264B40F34();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer);
    v12 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    ObjectType = swift_getObjectType();
    (*(*(v12 + 8) + 40))(*(v2 + v9), ObjectType);
    v14 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer);
    v15 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    v16 = swift_getObjectType();
    return (*(v15 + 40))(*(v2 + v9), v16, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*CaptureUIInteraction.deviceOrientation.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_264B40F14();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_264A82168;
}

void sub_264A82168(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    sub_2649CB2F0();
    *v4 = sub_264B41554();
    (*(v6 + 104))(v4, *MEMORY[0x277D85200], v5);
    v7 = sub_264B40F34();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
    v8 = v3[7];
    v9 = v3[3];
    v10 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer);
    v11 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
    ObjectType = swift_getObjectType();
    (*(*(v11 + 8) + 40))(*(v9 + v8), ObjectType);
    v13 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer);
    v14 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
    v15 = swift_getObjectType();
    (*(v14 + 40))(*(v9 + v8), v15, v14);
  }

  free(v4);

  free(v3);
}

uint64_t CaptureUIInteraction.availableHardwareGestures.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A82320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264A823A0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_264B40A94();
}

uint64_t sub_264A82434(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA10, &qword_264B4CBB0);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A908, &qword_264B4CA78);
  sub_264B40A64();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t CaptureUIInteraction.isActive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A8262C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264A826AC(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_264B40A94();
}

uint64_t sub_264A82738(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A827B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A8282C(uint64_t a1, uint64_t *a2)
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

id CaptureUIInteraction.__allocating_init(session:interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v51 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55);
  v9 = &v51 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A908, &qword_264B4CA78);
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v51 - v12;
  v14 = sub_264AF0CF8();
  v15 = type metadata accessor for UHIDBackedHIDEventObserverPrimitivesVendor();
  v16 = swift_allocObject();
  v17 = type metadata accessor for UIViewControlEventProducer();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v64[3] = v15;
  v64[4] = &protocol witness table for UHIDBackedHIDEventObserverPrimitivesVendor;
  v64[0] = v16;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v14;
  *(v20 + 64) = sub_264B409D4();
  *(v20 + 72) = 0;
  sub_264B400F4();
  v25 = OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_serviceIDForSenderID;
  *(v20 + v25) = sub_264A24848(MEMORY[0x277D84F90]);
  v26 = *(v20 + 16);
  *(v20 + 16) = 0;

  sub_2649CB5C0(v64, v20 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserverPrimitivesVendor);
  *(v20 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_telemetry) = v14;
  v52 = v24;
  sub_264B401E4();
  sub_264B401F4();
  sub_264B401F4();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A920, &qword_264B4CAD0);
  v28 = sub_264B40654();
  v62 = v27;
  v63 = &protocol witness table for <A> EventObserver<A>;
  v61[0] = v28;
  sub_264B40664();
  sub_264B40674();
  __swift_mutable_project_boxed_opaque_existential_1(v61, v27);
  off_28765F3D8[0]();
  sub_2649CB5C0(v61, v20 + OBJC_IVAR____TtC16ScreenSharingKit26UIViewControlEventProducer_eventObserver);
  v29 = sub_264AF8C70();
  v30 = v62;
  v31 = v63;
  __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  (v31[9])(v29, v30, v31);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v64);
  v32 = [objc_allocWithZone(type metadata accessor for UIViewDrawEventProducer()) init];
  v33 = v54;
  v34 = objc_allocWithZone(v54);
  v35 = &v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState];
  *v35 = 0x4000000000000000;
  v35[8] = 0;
  *&v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation] = 0;
  v36 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__availableHardwareGestures;
  v64[0] = MEMORY[0x277D84F90];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A928, &qword_264B4CAD8);
  sub_264B40A44();
  (*(v10 + 32))(&v34[v36], v13, v53);
  v37 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__isActive;
  LOBYTE(v64[0]) = 0;
  sub_264B40A44();
  (*(v6 + 32))(&v34[v37], v9, v55);
  *&v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view] = 0;
  *&v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription] = 0;
  v38 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v39 - 8) + 56))(&v34[v38], 1, 1, v39);
  *&v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session] = v56;
  v40 = &v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer];
  *v40 = v32;
  *(v40 + 1) = &off_28765F158;
  v41 = &v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer];
  *v41 = v20;
  v41[1] = &off_28765F340;
  v42 = &v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler];
  v43 = v58;
  *v42 = v57;
  *(v42 + 1) = v43;
  *&v34[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_telemetry] = v14;
  v60.receiver = v34;
  v60.super_class = v33;
  v44 = v52;

  v45 = objc_msgSendSuper2(&v60, sel_init);
  v46 = sub_264B41274();
  v47 = v59;
  (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v45;
  v49 = v45;
  sub_264A10C20(0, 0, v47, &unk_264B4CAF0, v48);

  return v49;
}

uint64_t sub_264A82FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A8306C();
}

uint64_t sub_264A8306C()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A83184, 0, 0);
}

uint64_t sub_264A83184()
{
  *(v0 + 72) = sub_264B41244();
  *(v0 + 80) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A8321C, v2, v1);
}

uint64_t sub_264A8321C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264A832D4, 0, 0);
}

uint64_t sub_264A832D4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_264A83300, v1, 0);
}

uint64_t sub_264A83300()
{
  v1 = v0[11];
  sub_264A74A68(v0[8]);
  v0[12] = 0;

  return MEMORY[0x2822009F8](sub_264A83390, 0, 0);
}

uint64_t sub_264A83390()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  sub_264B41254();
  v8 = sub_264B41274();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v2, v1, v5);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v9;
  (*(v3 + 32))(&v11[v10], v2, v5);
  sub_264A10C20(0, 0, v6, &unk_264B4CBC8, v11);

  (*(v3 + 8))(v1, v5);
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[3];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264A83550()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to activate session, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = v0[9];

  v0[13] = sub_264B41234();
  v13 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A83710, v13, v12);
}

uint64_t sub_264A83710()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 113) = 0;
  v3 = v2;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A837C4, 0, 0);
}

uint64_t sub_264A837C4()
{
  v1 = v0[12];
  v2 = v0[2] + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler;
  v3 = *(v2 + 8);
  (*v2)(v1);

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

uint64_t CaptureUIInteraction.sendHardwareGesture(_:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A960, &unk_264B58510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = a1[1];
  v22 = *a1;
  v13 = a1[2];
  v14 = a1[3];
  v15 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  swift_beginAccess();
  v16 = 1;
  if (!(*(v4 + 48))(v1 + v15, 1, v3))
  {
    (*(v4 + 16))(v7, v1 + v15, v3);
    v24 = &type metadata for SystemGestureEvent;
    v25 = &off_28765C718;
    v17 = swift_allocObject();
    v23 = v17;
    v18 = v22;
    v17[2] = v22;
    v17[3] = v12;
    v17[4] = v13;
    v17[5] = v14;
    sub_264A18774(v18, v12, v13, v14);
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v16 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8A968, &qword_264B4CB00);
  (*(*(v19 - 8) + 56))(v11, v16, 1, v19);
  return sub_2649D04D4(v11, &qword_27FF8A960, &unk_264B58510);
}

uint64_t CaptureUIInteraction.invalidate()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A83B94, 0, 0);
}

uint64_t sub_264A83B94()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    (*(v6 + 16))(v5, v3 + v4, v7);
    sub_264B412B4();
    (*(v6 + 8))(v5, v7);
  }

  v8 = *(v0[5] + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session);
  v0[9] = v8;

  return MEMORY[0x2822009F8](sub_264A83CA0, v8, 0);
}

uint64_t sub_264A83CA0()
{
  v1 = v0[9];
  sub_264A750BC();
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A83D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA18, &qword_264B4CBD0);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A83EC0, 0, 0);
}

uint64_t sub_264A83EC0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
    sub_264B412C4();
    v5 = MEMORY[0x277D85778];
    *(v0 + 144) = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler;
    *(v0 + 224) = *v5;
    v6 = *(MEMORY[0x277D85798] + 4);
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_264A840E0;
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);

    return MEMORY[0x2822003E8](v0 + 40, 0, 0, v9);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    v11 = sub_264B40944();
    v12 = sub_264B41474();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v11, v12, "Interaction disappeared before activation event could be processed, ignoring", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_264A840E0()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A841DC, 0, 0);
}

uint64_t sub_264A841DC()
{
  v1 = v0[5];
  v0[20] = v1;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v0[22] = sub_264B41244();
        v0[23] = sub_264B41234();
        v2 = sub_264B411C4();
        v4 = v3;
        v5 = sub_264A84520;
LABEL_12:

        return MEMORY[0x2822009F8](v5, v2, v4);
      }

LABEL_11:
      sub_264A1EE08(v1);
      sub_264B41244();
      v0[21] = sub_264B41234();
      v2 = sub_264B411C4();
      v4 = v13;
      v5 = sub_264A84398;
      goto LABEL_12;
    }

LABEL_10:
    sub_264B41244();
    v0[27] = sub_264B41234();
    v2 = sub_264B411C4();
    v4 = v12;
    v5 = sub_264A84A20;
    goto LABEL_12;
  }

  if (v1 == 2)
  {
    goto LABEL_10;
  }

  if (v1 != 3)
  {
    goto LABEL_11;
  }

  v6 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_264A84398()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 228) = 0;
  v3 = v2;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A8444C, 0, 0);
}

uint64_t sub_264A8444C()
{
  v1 = v0[20];
  v2 = v0[17] + v0[18];
  v3 = *(v2 + 8);
  (*v2)(v1);
  sub_264A794B4(v1);
  sub_264A794B4(v1);
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_264A840E0;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v7);
}

uint64_t sub_264A84520()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264A845D8, 0, 0);
}

uint64_t sub_264A845D8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
  (*(v5 + 104))(v4, v1, v6);
  *(swift_task_alloc() + 16) = v2;
  sub_264B412E4();

  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_264A84764;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A84764()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A8487C, 0, 0);
}

uint64_t sub_264A8487C()
{
  v1 = v0[22];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v0[26] = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A84920, v3, v2);
}

uint64_t sub_264A84920()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 231) = 1;
  v3 = v2;
  sub_264B40A94();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_264A840E0;
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v7);
}

uint64_t sub_264A84A20()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 229) = 0;
  v3 = v2;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A84AD4, 0, 0);
}

uint64_t sub_264A84AD4()
{
  sub_264A794B4(*(v0 + 160));
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_264A840E0;
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v4);
}

uint64_t sub_264A84B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA00, &unk_264B4CBA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
  swift_beginAccess();
  sub_264A87ADC(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_264A84CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v26 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v25 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  sub_264B41254();
  v17 = sub_264B41274();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v12, v29, v8);
  v19 = v3;
  (*(v4 + 16))(v7, v27, v3);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = (v10 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v20, v25, v8);
  (*(v4 + 32))(v22 + v21, v26, v19);
  *(v22 + ((v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_2649F62D0(0, 0, v16, &unk_264B4CBF0, v22);

  return sub_2649D04D4(v16, &qword_27FF898C0, &unk_264B44190);
}

uint64_t sub_264A84FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_264A850DC, 0, 0);
}

uint64_t sub_264A850DC()
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
  v6[1] = sub_264A851EC;
  v7 = v0[25];
  v8 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v8);
}

uint64_t sub_264A851EC()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A852E8, 0, 0);
}

uint64_t sub_264A852E8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 160);
    sub_2649D2AAC((v0 + 16), v0 + 56);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_session);
      *(v0 + 224) = v3;
      v4 = Strong;

      return MEMORY[0x2822009F8](sub_264A85478, v3, 0);
    }

    else
    {
      v8 = *(v0 + 208);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      *(v0 + 208) = v8;
      v9 = *(MEMORY[0x277D85798] + 4);
      v10 = swift_task_alloc();
      *(v0 + 216) = v10;
      *v10 = v0;
      v10[1] = sub_264A851EC;
      v11 = *(v0 + 200);
      v12 = *(v0 + 184);

      return MEMORY[0x2822003E8](v0 + 16, 0, 0, v12);
    }
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_264A85478()
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

    return MEMORY[0x2822009F8](sub_264A85A88, 0, 0);
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
  sub_264A87B4C(&qword_27FF8A5E0, type metadata accessor for ControlMessage);
  v22 = sub_264B3FF44();
  *(v0 + 232) = v22;
  *(v0 + 240) = v23;
  v24 = *(v0 + 176);
  if (v16)
  {
    v13 = v16;
    v25 = *(v0 + 224);
    sub_2649DEEBC(*(v0 + 176));
    goto LABEL_7;
  }

  v26 = v22;
  v27 = v23;
  sub_2649DEEBC(*(v0 + 176));
  v28 = *(v1 + 120);
  v29 = *(v1 + 128);
  v30 = swift_getObjectType();
  *(v0 + 289) = 0;
  v31 = *(v29 + 40);
  v35 = (v31 + *v31);
  v32 = v31[1];
  v33 = swift_task_alloc();
  *(v0 + 248) = v33;
  *v33 = v0;
  v33[1] = sub_264A857C4;

  return v35(v26, v27, v0 + 289, v30, v29);
}

uint64_t sub_264A857C4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_264A85A08;
  }

  else
  {
    v5 = sub_264A858DC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264A858DC()
{
  v1 = v0[28];
  sub_2649DEF6C(v0[29], v0[30]);

  return MEMORY[0x2822009F8](sub_264A85950, 0, 0);
}

uint64_t sub_264A85950()
{
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v0[26] = v1;
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_264A851EC;
  v4 = v0[25];
  v5 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_264A85A08()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];

  sub_2649DEF6C(v1, v2);
  v0[33] = v0[32];

  return MEMORY[0x2822009F8](sub_264A85A88, 0, 0);
}

uint64_t sub_264A85A88()
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
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    sub_264B41244();
    *(v0 + 280) = sub_264B41234();
    v14 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A85CF4, v14, v13);
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

uint64_t sub_264A85CF4()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 288) = 0;
  v3 = v2;
  sub_264B40A94();

  return MEMORY[0x2822009F8](sub_264A85DA0, 0, 0);
}

uint64_t sub_264A85DA0()
{
  v1 = *(v0 + 272);
  v2 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler + 8];
  (*&v1[OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interruptionHandler])(*(v0 + 264));

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

uint64_t sub_264A85E64(uint64_t a1)
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
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_bufferedSendingContinuation;
    swift_beginAccess();
    if (!(*(v3 + 48))(&v12[v13], 1, v2))
    {
      (*(v3 + 16))(v6, &v12[v13], v2);

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

id CaptureUIInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CaptureUIInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CaptureUIInteraction.view.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*CaptureUIInteraction.view.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_264A86390;
}

void sub_264A86390(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
}

Swift::Void __swiftcall CaptureUIInteraction.willMove(to:)(UIView_optional *to)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription))
  {

    sub_264B40994();

    v5 = *(v1 + v4);
  }

  *(v1 + v4) = 0;

  v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer);
  v7 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_drawEventProducer + 8);
  ObjectType = swift_getObjectType();
  (*(*(v7 + 8) + 16))(0, ObjectType);
  v9 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer);
  v10 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_controlEventProducer + 8);
  v11 = swift_getObjectType();
  (*(v10 + 16))(0, v11, v10);
  if (to)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FFA71B8);
    oslog = sub_264B40944();
    v13 = sub_264B41484();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Will move to view hierarchy";
LABEL_12:
      _os_log_impl(&dword_2649C6000, oslog, v13, v15, v14, 2u);
      MEMORY[0x266749940](v14, -1, -1);
    }
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FFA71B8);
    oslog = sub_264B40944();
    v13 = sub_264B41484();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Will be removed from view hierarchy";
      goto LABEL_12;
    }
  }
}

Swift::Void __swiftcall CaptureUIInteraction.didMove(to:)(UIView_optional *to)
{
  v2 = v1;
  if (to)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41484();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Moved to view hierarchy", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
    *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = to;

    v9 = to;

    sub_264A818B8(v9);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    v11 = sub_264B40944();
    v12 = sub_264B41484();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v11, v12, "Removed from view hierarchy", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v14 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
    *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = 0;
  }
}

void (*CaptureUIInteraction._deviceOrientation.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_264A869CC;
}

void sub_264A869CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  CaptureUIInteraction.deviceOrientation.setter(*(*a1 + 24));

  free(v1);
}

uint64_t sub_264A86A18(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA60, &unk_264B58500);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = off_28765F150;
  type metadata accessor for UIViewDrawEventProducer();
  v21 = v11();
  sub_2649CB2F0();
  v12 = sub_264B41554();
  v20 = v12;
  v13 = sub_264B41514();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA68, &unk_264B4CC00);
  sub_2649CB4C8(&unk_27FF8AA70, &qword_27FF8AA68, &unk_264B4CC00);
  sub_264A87B4C(&qword_27FF887B8, sub_2649CB2F0);
  sub_264B40B14();
  sub_2649D04D4(v5, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  v14 = v19;
  swift_unknownObjectWeakInit();
  sub_2649CB4C8(&unk_27FF8AA80, &qword_27FF8AA60, &unk_264B58500);
  v15 = sub_264B40B54();

  (*(v7 + 8))(v10, v6);
  v16 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription);
  *(v14 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription) = v15;
}

uint64_t sub_264A86D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA60, &unk_264B58500);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v24 = (*(a4 + 56))(a3, a4);
  sub_2649CB2F0();
  v15 = sub_264B41554();
  v23 = v15;
  v16 = sub_264B41514();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA68, &unk_264B4CC00);
  sub_2649CB4C8(&unk_27FF8AA70, &qword_27FF8AA68, &unk_264B4CC00);
  sub_264A87B4C(&qword_27FF887B8, sub_2649CB2F0);
  sub_264B40B14();
  sub_2649D04D4(v9, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  v17 = v22;
  swift_unknownObjectWeakInit();
  sub_2649CB4C8(&unk_27FF8AA80, &qword_27FF8AA60, &unk_264B58500);
  v18 = sub_264B40B54();

  (*(v11 + 8))(v14, v10);
  v19 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription);
  *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionEventSubscription) = v18;
}

uint64_t sub_264A8705C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264A8709C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2649E0EE4;

  return sub_264A82FDC();
}

uint64_t sub_264A87150()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A87198@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_interactionState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

void sub_264A871F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *a1;
  v5 = v2;
  CaptureUIInteraction.interactionState.setter(&v4);
}

id sub_264A872C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  *a2 = v2;
  return v2;
}

void sub_264A872E0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view);
  *(*a2 + OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction__view) = *a1;
  v3 = v2;
}

uint64_t keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20CaptureUIInteraction_deviceOrientation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for CaptureUIInteraction()
{
  result = qword_27FF8A978;
  if (!qword_27FF8A978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A873DC()
{
  sub_264A52108(319, &qword_27FF8A988, &qword_27FF8A928, &qword_264B4CAD8, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_264A361A8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_264A52108(319, &qword_27FF8A998, &qword_27FF8A940, &qword_264B4CAE0, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_264A8759C()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A875D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
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

uint64_t sub_264A876AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A83D24(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264A877C0()
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

uint64_t sub_264A8793C(uint64_t a1)
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

  return sub_264A84FDC(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_264A87ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA00, &unk_264B4CBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A87B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264A87BAC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_264A87C20()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_264A87C60()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);

  return v1;
}

uint64_t sub_264A87C94()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit30MockContinuityDevicePrimitives__continuityDeviceInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockContinuityDevicePrimitives()
{
  result = qword_27FF8AA98;
  if (!qword_27FF8AA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A87D90()
{
  sub_2649D008C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264A87E28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88808, &unk_264B441B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88810, &unk_264B4CCB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  sub_264B40A54();
  swift_endAccess();
  type metadata accessor for ContinuityDeviceInfo(0);
  sub_2649CB4C8(&qword_27FF88818, &qword_27FF88808, &unk_264B441B0);
  sub_264B40AC4();
  (*(v2 + 8))(v5, v1);
  sub_2649CB4C8(&qword_27FF88820, &qword_27FF88810, &unk_264B4CCB0);
  v12 = sub_264B40AB4();
  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t sub_264A88098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_264A88108()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {
    v7 = v0[10];
    v8 = v1[10];

    sub_264B404C4();
  }

  v9 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation, v2);
  sub_264B412B4();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask))
  {
    v12 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask);

    sub_264B41304();
  }

  v13 = v1[3];
  sub_2649CB67C(v1[2]);
  v14 = v1[5];

  v15 = v1[6];

  v16 = v1[7];

  v17 = v1[9];

  v18 = v1[10];

  v19 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventStream;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v10(v1 + v9, v2);
  v21 = *(v1 + v11);

  return v1;
}

uint64_t sub_264A88318()
{
  sub_264A88108();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_264A88398()
{
  sub_264A8A918(319, &qword_27FF8AAE0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264A8A918(319, &qword_27FF8AAE8, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_264A884E8()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState;
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState))
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
      v10 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_2649CC004(v2[4], v2[5], &v10);
      _os_log_impl(&dword_2649C6000, v4, v5, "Drag %{public}s: startForwarding", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v2 + v1) = 1;
    v8 = v2[10];
    v9 = v2[6];
    swift_allocObject();
    swift_weakInit();

    sub_264B404A4();
  }
}

uint64_t sub_264A886A8(uint64_t a1)
{
  v2 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB40, &qword_264B4CEE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v7 + 16))(v10, Strong + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation, v6);

    v16 = sub_264B40494();
    (*(*(v16 - 8) + 16))(v5, a1, v16);
    swift_storeEnumTagMultiPayload();
    sub_264B412A4();
    (*(v7 + 8))(v10, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB18, &qword_264B4CEA8);
  (*(*(v18 - 8) + 56))(v14, v17, 1, v18);
  return sub_2649D04D4(v14, &qword_27FF8AB40, &qword_264B4CEE8);
}

uint64_t sub_264A88940(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FF8AEA0);

    sub_2649DEF18(a1, a2);
    v13 = sub_264B40944();
    v14 = sub_264B414B4();

    if (!os_log_type_enabled(v13, v14))
    {
      sub_2649DEF6C(a1, a2);
LABEL_17:

      v22 = v3[10];
      sub_264B404B4();
      sub_264B40484();
      return (*(v7 + 8))(v11, v6);
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136446466;
    result = sub_2649CC004(v3[4], v3[5], &v24);
    *(v15 + 4) = result;
    *(v15 + 12) = 2050;
    v17 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v18 = 0;
        goto LABEL_16;
      }

      v20 = *(a1 + 16);
      v19 = *(a1 + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(a2);
LABEL_16:
      *(v15 + 14) = v18;
      sub_2649DEF6C(a1, a2);
      _os_log_impl(&dword_2649C6000, v13, v14, "Drag %{public}s: Forwarding session received drag data of size %{public}ld bytes", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
      goto LABEL_17;
    }

    LODWORD(v18) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_264A88BD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventStream;
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

  v19 = sub_264A10C20(0, 0, v10, &unk_264B4CED0, v17);
  v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask) = v19;
}

uint64_t sub_264A88E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_264B40494();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB30, &qword_264B4CED8) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB38, &qword_264B4CEE0);
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = sub_264B41244();
  v5[19] = sub_264B41234();
  v17 = sub_264B411C4();
  v5[20] = v17;
  v5[21] = v16;

  return MEMORY[0x2822009F8](sub_264A89038, v17, v16);
}

uint64_t sub_264A89038()
{
  v1 = v0[17];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  sub_264B412C4();
  swift_beginAccess();
  v4 = v0[18];
  v5 = sub_264B41234();
  v0[22] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_264A89130;
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v9, v5, v11, v10);
}

uint64_t sub_264A89130()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_264A89274, v5, v4);
}

uint64_t sub_264A89274()
{
  v1 = v0[14];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v2 = v0[19];
    (*(v0[16] + 8))(v0[17], v0[15]);

LABEL_8:
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    v17 = v0[9];

    v18 = v0[1];

    return v18();
  }

  v3 = v0[6];
  sub_264A8B378(v1, v0[13]);
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    v8 = v0[19];
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = v0[13];

    sub_264A8B3DC(v12);
    (*(v10 + 8))(v9, v11);
    goto LABEL_8;
  }

  v5 = v0[18];
  v0[25] = sub_264B41234();
  v7 = sub_264B411C4();
  v0[26] = v7;
  v0[27] = v6;

  return MEMORY[0x2822009F8](sub_264A89414, v7, v6);
}

uint64_t sub_264A89414()
{
  v1 = *(v0 + 80);
  sub_264A8B438(*(v0 + 104), *(v0 + 96));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 96);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);

    (*(v6 + 32))(v5, v4, v7);
    sub_264A8986C(v5);
    (*(v6 + 8))(v5, v7);
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);

    return MEMORY[0x2822009F8](sub_264A897A0, v8, v9);
  }

  else
  {
    v10 = *(v0 + 96);
    v11 = *v10;
    *(v0 + 224) = *v10;
    v12 = v10[1];
    *(v0 + 232) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB20, &qword_264B4CEB0);
    *(v0 + 256) = *(v13 + 48);
    v14 = *(v10 + *(v13 + 64));
    *(v0 + 240) = v14;
    v15 = swift_task_alloc();
    *(v0 + 248) = v15;
    *v15 = v0;
    v15[1] = sub_264A895B0;
    v16 = *(v0 + 192);

    return sub_264A8A098(v11, v12, v14);
  }
}

uint64_t sub_264A895B0()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_264A896D0, v4, v3);
}

uint64_t sub_264A896D0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 256);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 96);

  sub_2649DEF6C(v4, v1);
  v7 = sub_264B40104();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_264A897A0, v8, v9);
}

uint64_t sub_264A897A0()
{
  v1 = v0[24];
  v2 = v0[13];

  sub_264A8B3DC(v2);
  v3 = v0[18];
  v4 = sub_264B41234();
  v0[22] = v4;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_264A89130;
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v8, v4, v10, v9);
}

void sub_264A8986C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v55[-v13];
  v15 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState;
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {
    v16 = *(v5 + 16);
    v16(&v55[-v13], a1, v4);
    v17 = (*(v5 + 88))(v14, v4);
    if (v17 == *MEMORY[0x277D77A60])
    {
      (*(v5 + 96))(v14, v4);
      v18 = *(v14 + 1);
      if (*v14 == 1)
      {
        if (qword_27FF88418 != -1)
        {
          swift_once();
        }

        v19 = sub_264B40964();
        __swift_project_value_buffer(v19, qword_27FF8AEA0);

        v20 = sub_264B40944();
        v21 = sub_264B414B4();

        if (!os_log_type_enabled(v20, v21))
        {
          goto LABEL_34;
        }

        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v58 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_2649CC004(v2[4], v2[5], &v58);
        _os_log_impl(&dword_2649C6000, v20, v21, "Drag %{public}s: Forwarding succeeded", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x266749940](v23, -1, -1);
        v24 = v22;
      }

      else
      {
        if (qword_27FF88418 != -1)
        {
          swift_once();
        }

        v31 = sub_264B40964();
        __swift_project_value_buffer(v31, qword_27FF8AEA0);

        v32 = v18;
        v20 = sub_264B40944();
        v33 = sub_264B41494();

        if (!os_log_type_enabled(v20, v33))
        {
          goto LABEL_34;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v58 = v36;
        *v34 = 136446466;
        *(v34 + 4) = sub_2649CC004(v2[4], v2[5], &v58);
        *(v34 + 12) = 2114;
        if (v18)
        {
          v37 = v18;
          v38 = _swift_stdlib_bridgeErrorToNSError();
          v39 = v38;
        }

        else
        {
          v38 = 0;
          v39 = 0;
        }

        *(v34 + 14) = v38;
        *v35 = v39;
        _os_log_impl(&dword_2649C6000, v20, v33, "Drag %{public}s: Forwarding failed. Error: %{public}@", v34, 0x16u);
        sub_2649D04D4(v35, &unk_27FF89880, &unk_264B46B20);
        MEMORY[0x266749940](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x266749940](v36, -1, -1);
        v24 = v34;
      }

      MEMORY[0x266749940](v24, -1, -1);
LABEL_34:

      *(v2 + v15) = 2;
      v52 = v2[2];
      if (v52)
      {
        v53 = v2[3];

        v52(v54);

        sub_2649CB67C(v52);
      }

      else
      {
      }

      return;
    }

    if (v17 == *MEMORY[0x277D77A50])
    {
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v25 = sub_264B40964();
      __swift_project_value_buffer(v25, qword_27FF8AEA0);

      v26 = sub_264B40944();
      v27 = sub_264B41484();

      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_24;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_2649CC004(v2[4], v2[5], &v58);
      v30 = "Drag %{public}s: Forwarding session - readyForInitiatingDragEvent";
LABEL_23:
      _os_log_impl(&dword_2649C6000, v26, v27, v30, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      MEMORY[0x266749940](v28, -1, -1);
LABEL_24:

      return;
    }

    if (v17 == *MEMORY[0x277D77A58])
    {
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v40 = sub_264B40964();
      __swift_project_value_buffer(v40, qword_27FF8AEA0);

      v26 = sub_264B40944();
      v27 = sub_264B41484();

      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_24;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_2649CC004(v2[4], v2[5], &v58);
      v30 = "Drag %{public}s: Forwarding session - readyForDragEvents";
      goto LABEL_23;
    }

    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v41 = sub_264B40964();
    __swift_project_value_buffer(v41, qword_27FF8AEA0);
    v16(v12, a1, v4);

    v42 = sub_264B40944();
    v43 = sub_264B41494();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v56 = v43;
      v45 = v44;
      v57 = swift_slowAlloc();
      v58 = v57;
      *v45 = 136446466;
      *(v45 + 4) = sub_2649CC004(v2[4], v2[5], &v58);
      *(v45 + 12) = 2082;
      v16(v9, v12, v4);
      v46 = sub_264B41064();
      v48 = v47;
      v49 = *(v5 + 8);
      v49(v12, v4);
      v50 = sub_2649CC004(v46, v48, &v58);

      *(v45 + 14) = v50;
      _os_log_impl(&dword_2649C6000, v42, v56, "Drag %{public}s: Unknown DragController.ForwardingEvent - %{public}s", v45, 0x16u);
      v51 = v57;
      swift_arrayDestroy();
      MEMORY[0x266749940](v51, -1, -1);
      MEMORY[0x266749940](v45, -1, -1);
    }

    else
    {

      v49 = *(v5 + 8);
      v49(v12, v4);
    }

    v49(v14, v4);
  }
}

uint64_t sub_264A8A098(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](sub_264A8A134, v6, v5);
}

uint64_t sub_264A8A134()
{
  v42 = v0;
  if (*(*(v0 + 80) + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
      v39 = *(v0 + 80);
    }

    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = sub_264B40964();
    *(v0 + 112) = __swift_project_value_buffer(v3, qword_27FF8AEA0);

    sub_2649DEF18(v1, v2);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();

    if (!os_log_type_enabled(v4, v5))
    {
      sub_2649DEF6C(*(v0 + 56), *(v0 + 64));
LABEL_23:

      v28 = *(v0 + 80);
      v30 = *(v0 + 56);
      v29 = *(v0 + 64);
      v31 = *(v28 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_hasSentFirstMessage);
      *(v28 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_hasSentFirstMessage) = 1;
      v33 = v28[8];
      v32 = v28[9];
      v34 = v28[4];
      *(v0 + 120) = v34;
      v35 = v28[5];
      *(v0 + 128) = v35;
      *(v0 + 40) = &type metadata for DragAndDropEvent;
      *(v0 + 48) = &off_28765F610;
      v36 = swift_allocObject();
      *(v0 + 16) = v36;
      *(v36 + 16) = v30;
      *(v36 + 24) = v29;
      *(v36 + 32) = v34;
      *(v36 + 40) = v35;
      *(v36 + 48) = 1;
      *(v36 + 49) = (v31 & 1) == 0;
      sub_2649DEF18(v30, v29);

      v40 = (v33 + *v33);
      v37 = v33[1];
      v38 = swift_task_alloc();
      *(v0 + 136) = v38;
      *v38 = v0;
      v38[1] = sub_264A8A508;

      return v40(v0 + 16);
    }

    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136446466;
    result = sub_2649CC004(*(v6 + 32), *(v6 + 40), &v41);
    *(v8 + 4) = result;
    *(v8 + 12) = 2050;
    v11 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v12 = 0;
        goto LABEL_22;
      }

      v21 = *(*(v0 + 56) + 16);
      v22 = *(*(v0 + 56) + 24);
      v23 = __OFSUB__(v22, v21);
      v12 = v22 - v21;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v12 = *(v0 + 70);
LABEL_22:
      v26 = *(v0 + 56);
      v27 = *(v0 + 64);
      *(v8 + 14) = v12;
      sub_2649DEF6C(v26, v27);
      _os_log_impl(&dword_2649C6000, v4, v5, "Drag %{public}s: Forwarding session sending data of size %{public}ld bytes", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
      goto LABEL_23;
    }

    v24 = *(v0 + 56);
    v25 = *(v0 + 60);
    v23 = __OFSUB__(v25, v24);
    LODWORD(v12) = v25 - v24;
    if (v23)
    {
      __break(1u);
      return result;
    }

    v12 = v12;
    goto LABEL_22;
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 72);

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);

    v15(v17);
    sub_2649CB67C(v15);
    v18 = *(v14 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v14 + 24);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_2649CB67C(v18);
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_264A8A508()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v8 = *v1;
  (*v1)[18] = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_264A8A6D4;
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

uint64_t sub_264A8A624()
{
  v1 = v0[11];

  v2 = v0[9];
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

  v7 = *(v2 + 24);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_2649CB67C(v6);
  v8 = v0[1];

  return v8();
}

uint64_t sub_264A8A6D4()
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
    _os_log_impl(&dword_2649C6000, v6, v7, "Drag %{public}s: Forwarding session failed to send data: %{public}@", v12, 0x16u);
    sub_2649D04D4(v13, &unk_27FF89880, &unk_264B46B20);
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

void sub_264A8A918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_264A8A988()
{
  sub_264A8A9FC();
  if (v0 <= 0x3F)
  {
    sub_264A8AA78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_264A8A9FC()
{
  if (!qword_27FF8AB00)
  {
    sub_264B40104();
    type metadata accessor for GuaranteedCalledCompletion();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FF8AB00);
    }
  }
}

void sub_264A8AA78()
{
  if (!qword_27FF8AB08)
  {
    v0 = sub_264B40494();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8AB08);
    }
  }
}

unint64_t sub_264A8AAC4()
{
  result = qword_27FF8AB10;
  if (!qword_27FF8AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AB10);
  }

  return result;
}

uint64_t sub_264A8AB48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 56) + 16);
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

uint64_t sub_264A8AC80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v35 = a3;
  v40 = a1;
  v41 = a2;
  v36 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB18, &qword_264B4CEA8);
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
    *(v22 + 14) = 206;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  sub_264B412A4();

  return (*(v37 + 8))(v10, v42);
}

uint64_t sub_264A8B0E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264A8B0F0()
{
  sub_2649DEF6C(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264A8B130()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A8B168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
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

uint64_t sub_264A8B24C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A88E38(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264A8B378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A8B3DC(uint64_t a1)
{
  v2 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A8B438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteAuthenticationError.failureReason.getter()
{
  v1 = sub_264B40124();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_264B41004();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v0 + 16);
  if (v5 <= 4)
  {
    switch(v5)
    {
      case 1u:
        sub_264B40FA4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      case 2u:
        sub_264B40FA4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      case 3u:
        goto LABEL_5;
    }

    goto LABEL_31;
  }

  switch(v5)
  {
    case 5u:
      sub_264B40FA4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    case 6u:
      sub_264B40FA4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    case 7u:
      result = 0;
      v8 = *v0;
      v7 = *(v0 + 8);
      if (*v0 <= 6uLL)
      {
        if (__PAIR128__((v8 >= 3) + v7 - 1, v8 - 3) < 2)
        {
          return result;
        }

        if (v8 ^ 5 | v7)
        {
          if (!(v8 ^ 6 | v7))
          {
            sub_264B40FA4();
            if (qword_27FF88428 == -1)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }

          break;
        }
      }

      else
      {
        if (v8 > 9)
        {
          if (__PAIR128__((v8 >= 0xA) + v7 - 1, v8 - 10) < 2)
          {
            return result;
          }

          break;
        }

        if (v8 ^ 7 | v7)
        {
          if (!(v8 ^ 8 | v7))
          {
            sub_264B40FA4();
            if (qword_27FF88428 == -1)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }

          if (!(v8 ^ 9 | v7))
          {
            sub_264B40FA4();
            if (qword_27FF88428 == -1)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }

          break;
        }
      }

LABEL_5:
      sub_264B40FA4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
  }

LABEL_31:
  sub_264B40FA4();
  if (qword_27FF88428 != -1)
  {
LABEL_36:
    swift_once();
  }

LABEL_32:
  v9 = qword_27FFA7218;
  sub_264B40114();
  return sub_264B41054();
}

id RemoteAuthenticationError.errorDescription.getter()
{
  v1 = sub_264B40124();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_264B41004();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_264B40FE4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *v0;
  v7 = *(v0 + 8);
  v9 = *(v0 + 16);
  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1u:
        sub_264B40FD4();
        sub_264B40FC4();
        sub_264B40FB4();
        sub_264B40FC4();
        sub_264B40FF4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
      case 2u:
        sub_264B40FD4();
        sub_264B40FC4();
        sub_264B40FB4();
        sub_264B40FC4();
        sub_264B40FF4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
      case 3u:
        sub_264B40FD4();
        sub_264B40FC4();
        sub_264B40FB4();
        sub_264B40FC4();
        sub_264B40FF4();
        if (qword_27FF88428 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
    }
  }

  else if (*(v0 + 16) > 5u)
  {
    if (v9 == 6)
    {
      sub_264B40FD4();
      sub_264B40FC4();
      sub_264B40FB4();
      sub_264B40FC4();
      sub_264B40FF4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }

    if (v9 == 7)
    {
      result = 0;
      if (v8 <= 6)
      {
        if (__PAIR128__((v8 >= 3) + v7 - 1, v8 - 3) < 2)
        {
          return result;
        }

        if (!(v8 ^ 5 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }

        if (!(v8 ^ 6 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }
      }

      else if (v8 > 9)
      {
        if (__PAIR128__((v8 >= 0xA) + v7 - 1, v8 - 10) < 2)
        {
          return result;
        }
      }

      else
      {
        if (!(v8 ^ 7 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }

        if (!(v8 ^ 8 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }

        if (!(v8 ^ 9 | v7))
        {
          sub_264B40FA4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }
      }
    }
  }

  else
  {
    if (v9 == 4)
    {
      result = MobileGestalt_get_current_device();
      if (result)
      {
        v11 = result;
        wapiCapability = MobileGestalt_get_wapiCapability();

        if (wapiCapability)
        {
          sub_264B40FD4();
          sub_264B40FC4();
          sub_264B40FB4();
          sub_264B40FC4();
          sub_264B40FF4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_264B40FD4();
          sub_264B40FC4();
          sub_264B40FB4();
          sub_264B40FC4();
          sub_264B40FF4();
          if (qword_27FF88428 == -1)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_52;
      }

LABEL_58:
      __break(1u);
      return result;
    }

    if (v9 == 5)
    {
      sub_264B40FD4();
      sub_264B40FC4();
      sub_264B40FB4();
      sub_264B40FC4();
      sub_264B40FF4();
      if (qword_27FF88428 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_58;
  }

  v13 = result;
  v14 = MobileGestalt_get_wapiCapability();

  if (v14)
  {
    sub_264B40FA4();
    if (qword_27FF88428 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_52;
  }

  sub_264B40FA4();
  if (qword_27FF88428 != -1)
  {
LABEL_52:
    swift_once();
  }

LABEL_44:
  v15 = qword_27FFA7218;
  sub_264B40114();
  return sub_264B41054();
}

uint64_t _s16ScreenSharingKit25RemoteAuthenticationErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 3)
  {
    if (*(a1 + 16) <= 5u)
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          if (v3 == v6 && v2 == v5)
          {
            sub_264A8CFB0(*a1, v2, 4u);
            sub_264A8CFB0(v3, v2, 4u);
            sub_264A0E11C(v3, v2, 4u);
            v8 = v3;
            v9 = v2;
            v10 = 4;
            goto LABEL_103;
          }

          v12 = *a1;
          v13 = sub_264B41AA4();
          sub_264A8CFB0(v6, v5, 4u);
          sub_264A8CFB0(v3, v2, 4u);
          sub_264A0E11C(v3, v2, 4u);
          v14 = v6;
          v15 = v5;
          v16 = 4;
LABEL_70:
          sub_264A0E11C(v14, v15, v16);
          return v13 & 1;
        }
      }

      else if (v7 == 5)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_264A8CFB0(*a1, v2, 5u);
          sub_264A8CFB0(v3, v2, 5u);
          sub_264A0E11C(v3, v2, 5u);
          v8 = v3;
          v9 = v2;
          v10 = 5;
          goto LABEL_103;
        }

        v20 = *a1;
        v13 = sub_264B41AA4();
        sub_264A8CFB0(v6, v5, 5u);
        sub_264A8CFB0(v3, v2, 5u);
        sub_264A0E11C(v3, v2, 5u);
        v14 = v6;
        v15 = v5;
        v16 = 5;
        goto LABEL_70;
      }

LABEL_104:
      sub_264A8CFB0(*a2, *(a2 + 8), v7);
      sub_264A8CFB0(v3, v2, v4);
      sub_264A0E11C(v3, v2, v4);
      sub_264A0E11C(v6, v5, v7);
      return 0;
    }

    if (v4 == 6)
    {
      if (v7 == 6)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_264A8CFB0(*a1, v2, 6u);
          sub_264A8CFB0(v3, v2, 6u);
          sub_264A0E11C(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_103;
        }

        v18 = *a1;
        v13 = sub_264B41AA4();
        sub_264A8CFB0(v6, v5, 6u);
        sub_264A8CFB0(v3, v2, 6u);
        sub_264A0E11C(v3, v2, 6u);
        v14 = v6;
        v15 = v5;
        v16 = 6;
        goto LABEL_70;
      }

      goto LABEL_104;
    }

    if (v3 > 5)
    {
      if (v3 > 8)
      {
        if (v3 ^ 9 | v2)
        {
          if (v3 ^ 0xA | v2)
          {
            if (v7 != 7 || v6 != 11 || v5)
            {
              goto LABEL_104;
            }

            sub_264A0E11C(*a1, v2, 7u);
            v8 = 11;
          }

          else
          {
            if (v7 != 7 || v6 != 10 || v5)
            {
              goto LABEL_104;
            }

            sub_264A0E11C(*a1, v2, 7u);
            v8 = 10;
          }
        }

        else
        {
          if (v7 != 7 || v6 != 9 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 9;
        }
      }

      else if (v3 ^ 6 | v2)
      {
        if (v3 ^ 7 | v2)
        {
          if (v7 != 7 || v6 != 8 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 8;
        }

        else
        {
          if (v7 != 7 || v6 != 7 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 7;
        }
      }

      else
      {
        if (v7 != 7 || v6 != 6 || v5)
        {
          goto LABEL_104;
        }

        sub_264A0E11C(*a1, v2, 7u);
        v8 = 6;
      }
    }

    else if (v3 > 2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v3 ^ 4 | v2)
        {
          if (v7 != 7 || v6 != 5 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 5;
        }

        else
        {
          if (v7 != 7 || v6 != 4 || v5)
          {
            goto LABEL_104;
          }

          sub_264A0E11C(*a1, v2, 7u);
          v8 = 4;
        }
      }

      else
      {
        if (v7 != 7 || v6 != 3 || v5)
        {
          goto LABEL_104;
        }

        sub_264A0E11C(*a1, v2, 7u);
        v8 = 3;
      }
    }

    else if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 != 7 || v6 != 1 || v5)
        {
          goto LABEL_104;
        }

        sub_264A0E11C(*a1, v2, 7u);
        v11 = 1;
        sub_264A0E11C(1, 0, 7u);
        return v11;
      }

      if (v7 != 7 || v6 != 2 || v5)
      {
        goto LABEL_104;
      }

      sub_264A0E11C(*a1, v2, 7u);
      v8 = 2;
    }

    else
    {
      if (v7 != 7 || v5 | v6)
      {
        goto LABEL_104;
      }

      sub_264A0E11C(*a1, v2, 7u);
      v8 = 0;
    }

    v9 = 0;
    v10 = 7;
    goto LABEL_103;
  }

  if (*(a1 + 16) > 1u)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_264A8CFB0(*a1, v2, 2u);
          sub_264A8CFB0(v3, v2, 2u);
          sub_264A0E11C(v3, v2, 2u);
          v8 = v3;
          v9 = v2;
          v10 = 2;
          goto LABEL_103;
        }

        v17 = *a1;
        v13 = sub_264B41AA4();
        sub_264A8CFB0(v6, v5, 2u);
        sub_264A8CFB0(v3, v2, 2u);
        sub_264A0E11C(v3, v2, 2u);
        v14 = v6;
        v15 = v5;
        v16 = 2;
        goto LABEL_70;
      }
    }

    else if (v7 == 3)
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_264A8CFB0(*a1, v2, 3u);
        sub_264A8CFB0(v3, v2, 3u);
        sub_264A0E11C(v3, v2, 3u);
        v8 = v3;
        v9 = v2;
        v10 = 3;
        goto LABEL_103;
      }

      v21 = *a1;
      v13 = sub_264B41AA4();
      sub_264A8CFB0(v6, v5, 3u);
      sub_264A8CFB0(v3, v2, 3u);
      sub_264A0E11C(v3, v2, 3u);
      v14 = v6;
      v15 = v5;
      v16 = 3;
      goto LABEL_70;
    }

    goto LABEL_104;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_264A8CFB0(*a1, v2, 0);
        sub_264A8CFB0(v3, v2, 0);
        sub_264A0E11C(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
LABEL_103:
        sub_264A0E11C(v8, v9, v10);
        return 1;
      }

      v22 = *a1;
      v13 = sub_264B41AA4();
      sub_264A8CFB0(v6, v5, 0);
      sub_264A8CFB0(v3, v2, 0);
      sub_264A0E11C(v3, v2, 0);
      v14 = v6;
      v15 = v5;
      v16 = 0;
      goto LABEL_70;
    }

    goto LABEL_104;
  }

  if (v7 != 1)
  {
    goto LABEL_104;
  }

  if (v3 != v6 || v2 != v5)
  {
    v19 = *a1;
    v13 = sub_264B41AA4();
    sub_264A8CFB0(v6, v5, 1u);
    sub_264A8CFB0(v3, v2, 1u);
    sub_264A0E11C(v3, v2, 1u);
    v14 = v6;
    v15 = v5;
    v16 = 1;
    goto LABEL_70;
  }

  v11 = 1;
  sub_264A8CFB0(*a1, v2, 1u);
  sub_264A8CFB0(v3, v2, 1u);
  sub_264A0E11C(v3, v2, 1u);
  sub_264A0E11C(v3, v2, 1u);
  return v11;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit25RemoteAuthenticationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_264A8CEFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264A8CF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_264A8CF88(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_264A8CFB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t type metadata accessor for ControlMessage()
{
  result = qword_27FF8AB48;
  if (!qword_27FF8AB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A8D014()
{
  result = type metadata accessor for HIDMessage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RTIMessage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_264A8D0B8(void *a1)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC00, &qword_264B4D1A8);
  v86 = *(v87 - 8);
  v2 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v70 - v3;
  v83 = type metadata accessor for RTIMessage();
  v4 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v84 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC08, &qword_264B4D1B0);
  v81 = *(v82 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v70 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC10, &qword_264B4D1B8);
  v76 = *(v78 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v70 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC18, &qword_264B4D1C0);
  v77 = *(v79 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v70 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC20, &qword_264B4D1C8);
  v73 = *(v72 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  *&v92 = &v70 - v13;
  v71 = type metadata accessor for HIDMessage();
  v14 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v91 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC28, &qword_264B4D1D0);
  v70 = *(v90 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC30, &qword_264B4D1D8);
  v88 = *(v18 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - v20;
  v22 = type metadata accessor for ControlMessage();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AC38, &qword_264B4D1E0);
  v94 = *(v109 - 8);
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v109);
  v28 = &v70 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A8F3B4();
  v30 = v28;
  sub_264B41BD4();
  sub_264A8F7A4(v93, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v39 = v88;
    v40 = v89;
    v41 = v90;
    v42 = v92;
    if (EnumCaseMultiPayload)
    {
      v43 = v109;
      if (EnumCaseMultiPayload == 1)
      {
        v45 = *v25;
        v44 = *(v25 + 1);
        v47 = *(v25 + 2);
        v46 = *(v25 + 3);
        *&v93 = v46;
        LOBYTE(v102) = 1;
        sub_264A8F6A8();
        sub_264B419B4();
        *&v102 = v45;
        *(&v102 + 1) = v44;
        *&v103 = v47;
        *(&v103 + 1) = v46;
        sub_264A18B80();
        sub_264B41A24();
        (*(v70 + 8))(v40, v41);
        (*(v94 + 8))(v30, v43);
        sub_264A187D4(v45, v44, v47, v93);
      }

      else
      {
        v61 = v91;
        sub_264A8F904(v25, v91, type metadata accessor for HIDMessage);
        LOBYTE(v102) = 2;
        sub_264A8F654();
        sub_264B419B4();
        sub_264A8F96C(&qword_27FF89588, type metadata accessor for HIDMessage);
        v62 = v72;
        sub_264B41A24();
        (*(v73 + 8))(v42, v62);
        sub_264A8F9B4(v61, type metadata accessor for HIDMessage);
        (*(v94 + 8))(v30, v43);
      }
    }

    else
    {
      v58 = v25[32];
      LOBYTE(v102) = 0;
      sub_264A8F6FC();
      v59 = *(v25 + 1);
      v93 = *v25;
      v92 = v59;
      v60 = v109;
      sub_264B419B4();
      v102 = v93;
      v103 = v92;
      LOBYTE(v104) = v58;
      sub_264A8FA14();
      sub_264B41A24();
      (*(v39 + 8))(v21, v18);
      (*(v94 + 8))(v30, v60);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v48 = v109;
    v49 = v28;
    if (EnumCaseMultiPayload == 5)
    {
      v50 = *v25;
      v51 = *(v25 + 1);
      v53 = *(v25 + 2);
      v52 = *(v25 + 3);
      v54 = v25[32];
      v55 = v25[33];
      LOBYTE(v102) = 5;
      sub_264A8F45C();
      v56 = v80;
      sub_264B419B4();
      *&v93 = v50;
      *&v102 = v50;
      *(&v102 + 1) = v51;
      *&v103 = v53;
      *(&v103 + 1) = v52;
      LOBYTE(v104) = v54;
      BYTE1(v104) = v55;
      sub_264A8F808();
      v57 = v82;
      sub_264B41A24();
      (*(v81 + 8))(v56, v57);
      (*(v94 + 8))(v49, v109);
      sub_2649DEF6C(v93, v51);
    }

    else
    {
      v67 = v84;
      sub_264A8F904(v25, v84, type metadata accessor for RTIMessage);
      LOBYTE(v102) = 6;
      sub_264A8F408();
      v68 = v85;
      sub_264B419B4();
      sub_264A8F96C(&qword_27FF8AC40, type metadata accessor for RTIMessage);
      v69 = v87;
      sub_264B41A24();
      (*(v86 + 8))(v68, v69);
      sub_264A8F9B4(v67, type metadata accessor for RTIMessage);
      (*(v94 + 8))(v49, v48);
    }
  }

  else
  {
    v32 = v109;
    v33 = v28;
    if (EnumCaseMultiPayload == 3)
    {
      v34 = *(v25 + 5);
      v106 = *(v25 + 4);
      v107 = v34;
      v108 = *(v25 + 12);
      v35 = *(v25 + 1);
      v102 = *v25;
      v103 = v35;
      v36 = *(v25 + 3);
      v104 = *(v25 + 2);
      v105 = v36;
      LOBYTE(v95) = 3;
      sub_264A8F5AC();
      v37 = v75;
      sub_264B419B4();
      v99 = v106;
      v100 = v107;
      v101 = v108;
      v95 = v102;
      v96 = v103;
      v98 = v105;
      v97 = v104;
      sub_264A8F8B0();
      v38 = v79;
      sub_264B41A24();
      (*(v77 + 8))(v37, v38);
      (*(v94 + 8))(v30, v32);
      sub_264A7DB74(&v102);
    }

    else
    {
      v63 = *v25;
      v64 = *(v25 + 1);
      LOBYTE(v102) = 4;
      sub_264A8F504();
      v65 = v74;
      sub_264B419B4();
      *&v102 = v63;
      *(&v102 + 1) = v64;
      sub_264A8F85C();
      v66 = v78;
      sub_264B41A24();
      (*(v76 + 8))(v65, v66);
      (*(v94 + 8))(v33, v32);
      sub_2649E7004(v63, v64);
    }
  }
}

uint64_t sub_264A8DDC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB58, &qword_264B4D160);
  v121 = *(v120 - 8);
  v3 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  v124 = &v99 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB60, &qword_264B4D168);
  v119 = *(v118 - 8);
  v5 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  v131 = &v99 - v6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB68, &qword_264B4D170);
  v116 = *(v117 - 8);
  v7 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v130 = &v99 - v8;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB70, &qword_264B4D178);
  v113 = *(v115 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  v123 = &v99 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB78, &qword_264B4D180);
  v114 = *(v112 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  v122 = &v99 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB80, &qword_264B4D188);
  v111 = *(v110 - 8);
  v13 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  v129 = &v99 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB88, &qword_264B4D190);
  v108 = *(v109 - 8);
  v15 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v127 = &v99 - v16;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB90, &unk_264B4D198);
  v126 = *(v133 - 8);
  v17 = *(v126 + 64);
  MEMORY[0x28223BE20](v133);
  v19 = &v99 - v18;
  v125 = type metadata accessor for ControlMessage();
  v20 = *(*(v125 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v125);
  v107 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v106 = (&v99 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v105 = (&v99 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v99 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v99 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v99 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v99 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v99 - v39;
  v41 = a1[3];
  v42 = a1[4];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_264A8F3B4();
  v128 = v19;
  v43 = v146;
  sub_264B41BC4();
  if (v43)
  {
    goto LABEL_11;
  }

  v100 = v38;
  v101 = v35;
  v103 = v32;
  v102 = v29;
  v44 = v127;
  v45 = v129;
  v146 = 0;
  v46 = v130;
  v47 = v131;
  v104 = v40;
  v48 = v132;
  v49 = v128;
  v50 = sub_264B419A4();
  v51 = (2 * *(v50 + 16)) | 1;
  v142 = v50;
  v143 = v50 + 32;
  v144 = 0;
  v145 = v51;
  v52 = sub_2649E0EE0();
  if (v52 == 7 || v144 != v145 >> 1)
  {
    v58 = sub_264B417A4();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
    *v60 = v125;
    v62 = v133;
    sub_264B41904();
    sub_264B41794();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    (*(v126 + 8))(v49, v62);
  }

  else
  {
    if (v52 > 2u)
    {
      if (v52 <= 4u)
      {
        v53 = v126;
        if (v52 == 3)
        {
          LOBYTE(v135) = 3;
          sub_264A8F5AC();
          v54 = v123;
          v55 = v133;
          v56 = v146;
          sub_264B418F4();
          if (!v56)
          {
            sub_264A8F600();
            v57 = v115;
            sub_264B41984();
            (*(v113 + 8))(v54, v57);
            (*(v53 + 8))(v49, v55);
            swift_unknownObjectRelease();
            v90 = v140;
            v91 = v102;
            *(v102 + 4) = v139;
            v91[5] = v90;
            *(v91 + 12) = v141;
            v92 = v136;
            *v91 = v135;
            v91[1] = v92;
            v93 = v138;
            v91[2] = v137;
            v91[3] = v93;
LABEL_32:
            swift_storeEnumTagMultiPayload();
            v89 = v91;
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        LOBYTE(v135) = 4;
        sub_264A8F504();
        v69 = v133;
        v78 = v146;
        sub_264B418F4();
        if (!v78)
        {
          sub_264A8F558();
          v79 = v117;
          sub_264B41984();
          (*(v116 + 8))(v46, v79);
          (*(v53 + 8))(v49, v69);
          swift_unknownObjectRelease();
          v91 = v105;
          *v105 = v135;
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      v53 = v126;
      if (v52 == 5)
      {
        LOBYTE(v135) = 5;
        sub_264A8F45C();
        v69 = v133;
        v70 = v146;
        sub_264B418F4();
        if (!v70)
        {
          sub_264A8F4B0();
          v71 = v118;
          sub_264B41984();
          (*(v119 + 8))(v47, v71);
          (*(v53 + 8))(v49, v133);
          swift_unknownObjectRelease();
          v94 = v136;
          v95 = v137;
          v96 = BYTE1(v137);
          v91 = v106;
          *v106 = v135;
          v91[1] = v94;
          *(v91 + 32) = v95;
          *(v91 + 33) = v96;
          goto LABEL_32;
        }

LABEL_27:
        (*(v53 + 8))(v49, v69);
        goto LABEL_10;
      }

      LOBYTE(v135) = 6;
      sub_264A8F408();
      v55 = v133;
      v80 = v146;
      sub_264B418F4();
      if (v80)
      {
LABEL_30:
        (*(v53 + 8))(v49, v55);
        goto LABEL_10;
      }

      type metadata accessor for RTIMessage();
      sub_264A8F96C(&qword_27FF8ABA8, type metadata accessor for RTIMessage);
      v81 = v107;
      v82 = v120;
      v83 = v124;
      sub_264B41984();
      (*(v121 + 8))(v83, v82);
      (*(v53 + 8))(v49, v55);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v89 = v81;
LABEL_33:
      v97 = v104;
      sub_264A8F904(v89, v104, type metadata accessor for ControlMessage);
      v98 = v134;
      sub_264A8F904(v97, v48, type metadata accessor for ControlMessage);
      v63 = v98;
      return __swift_destroy_boxed_opaque_existential_0(v63);
    }

    if (!v52)
    {
      LOBYTE(v135) = 0;
      sub_264A8F6FC();
      v72 = v44;
      v73 = v133;
      v74 = v146;
      sub_264B418F4();
      if (!v74)
      {
        sub_264A8F750();
        v84 = v109;
        sub_264B41984();
        (*(v108 + 8))(v72, v84);
        (*(v126 + 8))(v49, v73);
        swift_unknownObjectRelease();
        v85 = v137;
        v86 = v136;
        v91 = v100;
        *v100 = v135;
        v91[1] = v86;
        *(v91 + 32) = v85;
        goto LABEL_32;
      }

      (*(v126 + 8))(v49, v73);
      goto LABEL_10;
    }

    v65 = v133;
    v66 = v146;
    if (v52 == 1)
    {
      LOBYTE(v135) = 1;
      sub_264A8F6A8();
      sub_264B418F4();
      if (!v66)
      {
        sub_264A189A4();
        v67 = v110;
        sub_264B41984();
        v68 = v126;
        (*(v111 + 8))(v45, v67);
        (*(v68 + 8))(v49, v65);
        swift_unknownObjectRelease();
        v87 = v136;
        v88 = v101;
        *v101 = v135;
        v88[1] = v87;
        swift_storeEnumTagMultiPayload();
        v89 = v88;
        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v135) = 2;
      sub_264A8F654();
      v75 = v122;
      sub_264B418F4();
      if (!v66)
      {
        type metadata accessor for HIDMessage();
        sub_264A8F96C(&qword_27FF89560, type metadata accessor for HIDMessage);
        v76 = v103;
        v77 = v112;
        sub_264B41984();
        (*(v114 + 8))(v75, v77);
        (*(v126 + 8))(v49, v65);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v89 = v76;
        goto LABEL_33;
      }
    }

    (*(v126 + 8))(v49, v65);
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v63 = v134;
  return __swift_destroy_boxed_opaque_existential_0(v63);
}

uint64_t sub_264A8EEAC(uint64_t a1)
{
  v2 = sub_264A8F504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8EEE8(uint64_t a1)
{
  v2 = sub_264A8F504();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A8EF24()
{
  v1 = *v0;
  v2 = 2002874980;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x617373654D697472;
  }

  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x6269737365636361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D6574737973;
  if (v1 != 1)
  {
    v5 = 0x617373654D646968;
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

uint64_t sub_264A8F008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264A90468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264A8F03C(uint64_t a1)
{
  v2 = sub_264A8F3B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F078(uint64_t a1)
{
  v2 = sub_264A8F3B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F0B4(uint64_t a1)
{
  v2 = sub_264A8F45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F0F0(uint64_t a1)
{
  v2 = sub_264A8F45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F12C(uint64_t a1)
{
  v2 = sub_264A8F6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F168(uint64_t a1)
{
  v2 = sub_264A8F6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F1A4(uint64_t a1)
{
  v2 = sub_264A8F654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F1E0(uint64_t a1)
{
  v2 = sub_264A8F654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F21C(uint64_t a1)
{
  v2 = sub_264A8F408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F258(uint64_t a1)
{
  v2 = sub_264A8F408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F294(uint64_t a1)
{
  v2 = sub_264A8F5AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F2D0(uint64_t a1)
{
  v2 = sub_264A8F5AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A8F30C(uint64_t a1)
{
  v2 = sub_264A8F6A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A8F348(uint64_t a1)
{
  v2 = sub_264A8F6A8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A8F3B4()
{
  result = qword_27FF8AB98;
  if (!qword_27FF8AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AB98);
  }

  return result;
}

unint64_t sub_264A8F408()
{
  result = qword_27FF8ABA0;
  if (!qword_27FF8ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABA0);
  }

  return result;
}

unint64_t sub_264A8F45C()
{
  result = qword_27FF8ABB0;
  if (!qword_27FF8ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABB0);
  }

  return result;
}

unint64_t sub_264A8F4B0()
{
  result = qword_27FF8ABB8;
  if (!qword_27FF8ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABB8);
  }

  return result;
}

unint64_t sub_264A8F504()
{
  result = qword_27FF8ABC0;
  if (!qword_27FF8ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABC0);
  }

  return result;
}

unint64_t sub_264A8F558()
{
  result = qword_27FF8ABC8;
  if (!qword_27FF8ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABC8);
  }

  return result;
}

unint64_t sub_264A8F5AC()
{
  result = qword_27FF8ABD0;
  if (!qword_27FF8ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABD0);
  }

  return result;
}

unint64_t sub_264A8F600()
{
  result = qword_27FF8ABD8;
  if (!qword_27FF8ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABD8);
  }

  return result;
}

unint64_t sub_264A8F654()
{
  result = qword_27FF8ABE0;
  if (!qword_27FF8ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABE0);
  }

  return result;
}

unint64_t sub_264A8F6A8()
{
  result = qword_27FF8ABE8;
  if (!qword_27FF8ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABE8);
  }

  return result;
}

unint64_t sub_264A8F6FC()
{
  result = qword_27FF8ABF0;
  if (!qword_27FF8ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABF0);
  }

  return result;
}

unint64_t sub_264A8F750()
{
  result = qword_27FF8ABF8;
  if (!qword_27FF8ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ABF8);
  }

  return result;
}

uint64_t sub_264A8F7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264A8F808()
{
  result = qword_27FF8AC48;
  if (!qword_27FF8AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC48);
  }

  return result;
}

unint64_t sub_264A8F85C()
{
  result = qword_27FF8AC50;
  if (!qword_27FF8AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC50);
  }

  return result;
}

unint64_t sub_264A8F8B0()
{
  result = qword_27FF8AC58;
  if (!qword_27FF8AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC58);
  }

  return result;
}

uint64_t sub_264A8F904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A8F96C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264A8F9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264A8FA14()
{
  result = qword_27FF8AC60;
  if (!qword_27FF8AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264A8FC2C()
{
  result = qword_27FF8AC68;
  if (!qword_27FF8AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC68);
  }

  return result;
}

unint64_t sub_264A8FC84()
{
  result = qword_27FF8AC70;
  if (!qword_27FF8AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC70);
  }

  return result;
}

unint64_t sub_264A8FCDC()
{
  result = qword_27FF8AC78;
  if (!qword_27FF8AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC78);
  }

  return result;
}

unint64_t sub_264A8FD34()
{
  result = qword_27FF8AC80;
  if (!qword_27FF8AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC80);
  }

  return result;
}

unint64_t sub_264A8FD8C()
{
  result = qword_27FF8AC88;
  if (!qword_27FF8AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC88);
  }

  return result;
}

unint64_t sub_264A8FDE4()
{
  result = qword_27FF8AC90;
  if (!qword_27FF8AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC90);
  }

  return result;
}

unint64_t sub_264A8FE3C()
{
  result = qword_27FF8AC98;
  if (!qword_27FF8AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AC98);
  }

  return result;
}

unint64_t sub_264A8FE94()
{
  result = qword_27FF8ACA0;
  if (!qword_27FF8ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACA0);
  }

  return result;
}

unint64_t sub_264A8FEEC()
{
  result = qword_27FF8ACA8;
  if (!qword_27FF8ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACA8);
  }

  return result;
}

unint64_t sub_264A8FF44()
{
  result = qword_27FF8ACB0;
  if (!qword_27FF8ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACB0);
  }

  return result;
}