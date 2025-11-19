uint64_t sub_264E79290()
{
  v24 = *MEMORY[0x277D85DE8];
  super_class = v0[2].super_class;
  v2 = objc_opt_self();
  v0[2].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:super_class requiringSecureCoding:1 error:&v0[2]];
  v4 = v0[2].receiver;
  if (v3)
  {
    v5 = v0[2].super_class;
    v6 = sub_264E89854();
    v8 = v7;

    v0[3].super_class = v6;
    v0[4].receiver = v8;
    v9 = sub_264E89834();
    v10 = v5 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier;
    v12 = *(v5 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier);
    v11 = *(v10 + 1);
    v13 = type metadata accessor for SIQueryTransport();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = 2;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = v9;
    v15 = &v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
    *v15 = v12;
    v15[1] = v11;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout] = xmmword_264E8BA90;
    v0[1].receiver = v14;
    v0[1].super_class = v13;

    v16 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[4].super_class = v16;
    v17 = swift_task_alloc();
    v0[5].receiver = v17;
    *v17 = v0;
    v17[1] = sub_264E794EC;
    receiver = v0[3].receiver;
    v19 = *MEMORY[0x277D85DE8];

    return sub_264E7BB20(v16);
  }

  else
  {
    v21 = v4;
    sub_264E897E4();

    swift_willThrow();
    v22 = v0->super_class;
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }
}

uint64_t sub_264E794EC(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[6];
  if (v1)
  {
    v8 = sub_264E79700;
  }

  else
  {
    v4[12] = a1;
    v8 = sub_264E79654;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_264E79654()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_264E658D4(v2, v1);
  v3 = *(v0 + 8);
  v4 = *(v0 + 96);
  v5 = *MEMORY[0x277D85DE8];

  return v3(v4);
}

uint64_t sub_264E79700()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_264E658D4(v2, v1);
  v3 = *(v0 + 88);
  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_264E797A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E79854, a6, 0);
}

uint64_t sub_264E79854()
{
  v2 = v0[10];
  v1 = v0[11];
  v18 = v0[8];
  v19 = v0[9];
  v16 = v0[6];
  v17 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_264E89B74();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;

  sub_264E7A994(v1, &unk_264E8D258, v8, type metadata accessor for SIMailResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v16;
  v9[5] = v17;
  v9[6] = v18;
  v9[7] = v19;
  v9[8] = v2;

  sub_264E7A994(v1, &unk_264E8D268, v9, type metadata accessor for SIMailResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v10 = sub_264E82AC0(&qword_27FFB7C00, &qword_27FFB7C08, &qword_264E8D230);
  v11 = *(MEMORY[0x277D85818] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C10, &qword_264E8D270);
  *v12 = v0;
  v12[1] = sub_264E79AC0;
  v14 = v0[3];

  return MEMORY[0x2822004D0](v0 + 2, v18, v10, v13);
}

uint64_t sub_264E79AC0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_264E79D80;
  }

  else
  {
    v6 = sub_264E79BEC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264E79BEC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = **(v0 + 24);
    type metadata accessor for SIMailResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();

    v4 = *(v0 + 8);

    return v4(v1);
  }

  else
  {
    v6 = **(v0 + 24);
    type metadata accessor for SIMailResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();
    sub_264E7F2F0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    *(v7 + 8) = 0x8000000264E8E300;
    *(v7 + 16) = 2;
    swift_willThrow();
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_264E79D80()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264E79DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E79E90, a6, 0);
}

uint64_t sub_264E79E90()
{
  v2 = v0[10];
  v1 = v0[11];
  v18 = v0[8];
  v19 = v0[9];
  v16 = v0[6];
  v17 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_264E89B74();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;

  sub_264E7A994(v1, &unk_264E8D1E0, v8, type metadata accessor for SISettingsResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v16;
  v9[5] = v17;
  v9[6] = v18;
  v9[7] = v19;
  v9[8] = v2;

  sub_264E7A994(v1, &unk_264E8D1F0, v9, type metadata accessor for SISettingsResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v10 = sub_264E82AC0(&qword_27FFB7BD0, &qword_27FFB7BD8, &qword_264E8D1B8);
  v11 = *(MEMORY[0x277D85818] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BE0, &qword_264E8D1F8);
  *v12 = v0;
  v12[1] = sub_264E7A0FC;
  v14 = v0[3];

  return MEMORY[0x2822004D0](v0 + 2, v18, v10, v13);
}

uint64_t sub_264E7A0FC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_264E82E74;
  }

  else
  {
    v6 = sub_264E7A228;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264E7A228()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = **(v0 + 24);
    type metadata accessor for SISettingsResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();

    v4 = *(v0 + 8);

    return v4(v1);
  }

  else
  {
    v6 = **(v0 + 24);
    type metadata accessor for SISettingsResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();
    sub_264E7F2F0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    *(v7 + 8) = 0x8000000264E8E300;
    *(v7 + 16) = 2;
    swift_willThrow();
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_264E7A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7A468, a6, 0);
}

uint64_t sub_264E7A468()
{
  v2 = v0[10];
  v1 = v0[11];
  v18 = v0[8];
  v19 = v0[9];
  v16 = v0[6];
  v17 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_264E89B74();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;

  sub_264E7A994(v1, &unk_264E8D160, v8, type metadata accessor for SISpotlightResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v16;
  v9[5] = v17;
  v9[6] = v18;
  v9[7] = v19;
  v9[8] = v2;

  sub_264E7A994(v1, &unk_264E8D170, v9, type metadata accessor for SISpotlightResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v10 = sub_264E82AC0(&qword_27FFB7BA0, &qword_27FFB7BA8, &unk_264E8D4A0);
  v11 = *(MEMORY[0x277D85818] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB0, &qword_264E8D178);
  *v12 = v0;
  v12[1] = sub_264E7A6D4;
  v14 = v0[3];

  return MEMORY[0x2822004D0](v0 + 2, v18, v10, v13);
}

uint64_t sub_264E7A6D4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_264E82E74;
  }

  else
  {
    v6 = sub_264E7A800;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264E7A800()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = **(v0 + 24);
    type metadata accessor for SISpotlightResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();

    v4 = *(v0 + 8);

    return v4(v1);
  }

  else
  {
    v6 = **(v0 + 24);
    type metadata accessor for SISpotlightResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();
    sub_264E7F2F0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    *(v7 + 8) = 0x8000000264E8E300;
    *(v7 + 16) = 2;
    swift_willThrow();
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_264E7A994(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v21 - v10;
  sub_264E78ACC(a1, v21 - v10);
  v12 = sub_264E89B74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_264E82958(v11, &qword_27FFB7B58, &qword_264E8D650);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_264E89B24();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264E89B64();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v6;
  a4(0);
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

void sub_264E7AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BF8, &qword_264E8D218) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C18, &qword_264E8D280);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_264E7B4C0(v10, a3, a4);
  swift_endAccess();
  swift_retain_n();
  v13 = sub_264E89894();
  v14 = sub_264E89BC4();
  if (!os_log_type_enabled(v13, v14))
  {

    return;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v17 = v16;
  v31 = v16;
  *v15 = 134218243;
  v18 = *(a2 + 112);
  v19 = *(v18 + 16);
  *(v15 + 4) = v19;
  *(v15 + 12) = 2085;
  if (v19)
  {
    v26 = v16;
    v27 = v14;
    v20 = sub_264E7F344(v19, 0);
    v21 = sub_264E80150(v30, v20 + 4, v19, v18);
    v28 = v30[4];
    v29 = v21;

    sub_264E825C4();
    if (v29 != v19)
    {
      __break(1u);
      return;
    }

    LOBYTE(v14) = v27;
    v17 = v26;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x266750DB0](v20, MEMORY[0x277D837D0]);
  v24 = v23;

  v25 = sub_264E71E18(v22, v24, &v31);

  *(v15 + 14) = v25;
  _os_log_impl(&dword_264E62000, v13, v14, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v15, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v17);
  MEMORY[0x266751790](v17, -1, -1);
  MEMORY[0x266751790](v15, -1, -1);
}

void sub_264E7AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BC8, &qword_264E8D1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BE8, &qword_264E8D208);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_264E7B6E0(v10, a3, a4);
  swift_endAccess();
  swift_retain_n();
  v13 = sub_264E89894();
  v14 = sub_264E89BC4();
  if (!os_log_type_enabled(v13, v14))
  {

    return;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v17 = v16;
  v31 = v16;
  *v15 = 134218243;
  v18 = *(a2 + 112);
  v19 = *(v18 + 16);
  *(v15 + 4) = v19;
  *(v15 + 12) = 2085;
  if (v19)
  {
    v26 = v16;
    v27 = v14;
    v20 = sub_264E7F344(v19, 0);
    v21 = sub_264E80150(v30, v20 + 4, v19, v18);
    v28 = v30[4];
    v29 = v21;

    sub_264E825C4();
    if (v29 != v19)
    {
      __break(1u);
      return;
    }

    LOBYTE(v14) = v27;
    v17 = v26;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x266750DB0](v20, MEMORY[0x277D837D0]);
  v24 = v23;

  v25 = sub_264E71E18(v22, v24, &v31);

  *(v15 + 14) = v25;
  _os_log_impl(&dword_264E62000, v13, v14, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v15, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v17);
  MEMORY[0x266751790](v17, -1, -1);
  MEMORY[0x266751790](v15, -1, -1);
}

void sub_264E7B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B90, &qword_264E8D128) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB8, &qword_264E8D188);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_264E7B900(v10, a3, a4);
  swift_endAccess();
  swift_retain_n();
  v13 = sub_264E89894();
  v14 = sub_264E89BC4();
  if (!os_log_type_enabled(v13, v14))
  {

    return;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v17 = v16;
  v31 = v16;
  *v15 = 134218243;
  v18 = *(a2 + 112);
  v19 = *(v18 + 16);
  *(v15 + 4) = v19;
  *(v15 + 12) = 2085;
  if (v19)
  {
    v26 = v16;
    v27 = v14;
    v20 = sub_264E7F344(v19, 0);
    v21 = sub_264E80150(v30, v20 + 4, v19, v18);
    v28 = v30[4];
    v29 = v21;

    sub_264E825C4();
    if (v29 != v19)
    {
      __break(1u);
      return;
    }

    LOBYTE(v14) = v27;
    v17 = v26;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x266750DB0](v20, MEMORY[0x277D837D0]);
  v24 = v23;

  v25 = sub_264E71E18(v22, v24, &v31);

  *(v15 + 14) = v25;
  _os_log_impl(&dword_264E62000, v13, v14, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v15, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v17);
  MEMORY[0x266751790](v17, -1, -1);
  MEMORY[0x266751790](v15, -1, -1);
}

uint64_t sub_264E7B4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BF8, &qword_264E8D218) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C18, &qword_264E8D280);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_264E82958(a1, &qword_27FFB7BF8, &qword_264E8D218);
    sub_264E7F518(a2, a3, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v9);

    return sub_264E82958(v9, &qword_27FFB7BF8, &qword_264E8D218);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_264E7FC58(v14, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_264E7B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BC8, &qword_264E8D1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BE8, &qword_264E8D208);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_264E82958(a1, &qword_27FFB7BC8, &qword_264E8D1A0);
    sub_264E7F518(a2, a3, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v9);

    return sub_264E82958(v9, &qword_27FFB7BC8, &qword_264E8D1A0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_264E7FC58(v14, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_264E7B900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B90, &qword_264E8D128) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB8, &qword_264E8D188);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_264E82958(a1, &qword_27FFB7B90, &qword_264E8D128);
    sub_264E7F518(a2, a3, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v9);

    return sub_264E82958(v9, &qword_27FFB7B90, &qword_264E8D128);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_264E7FC58(v14, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_264E7BB20(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BF8, &qword_264E8D218) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7BBBC, v1, 0);
}

uint64_t sub_264E7BBBC()
{
  v47 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E7C150;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_57;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        v15 = v0[36];
        v14 = v0[37];
        v17 = v0[34];
        v16 = v0[35];
        swift_beginAccess();
        sub_264E7F518(v15, v14, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v16);
        sub_264E82958(v16, &qword_27FFB7BF8, &qword_264E8D218);
        swift_endAccess();
        if (!*(*(v17 + 112) + 16))
        {
          v18 = v0[38];
          sub_264E6F8C8();
        }

        v19 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v20 = *v19;
        v21 = v19[1];
        swift_allocError();
        *v22 = v20;
        *(v22 + 8) = v21;
        *(v22 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v23 = v0[37];
    v24 = v0[34];

    v25 = v10;
    v26 = sub_264E89894();
    v27 = sub_264E89BD4();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[37];
    if (v28)
    {
      v30 = v0[36];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46[0] = v32;
      *v31 = 136643075;
      v33 = sub_264E71E18(v30, v29, v46);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v35 = v0[21];
      v34 = v0[22];
      v36 = v0[23];
      v37 = sub_264E89E64();
      v39 = sub_264E71E18(v37, v38, v46);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_264E62000, v26, v27, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v32, -1, -1);
      MEMORY[0x266751790](v31, -1, -1);
    }

    else
    {
    }

    v40 = v0[34];
    swift_beginAccess();
    if (!*(*(v40 + 112) + 16))
    {
      v41 = v0[38];
      sub_264E6F8C8();
    }

    swift_allocError();
    *v42 = v10;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:
  v43 = v0[35];

  v44 = v0[1];

  return v44();
}

uint64_t sub_264E7C150()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 272);
  if (v3)
  {
    v5 = sub_264E7C538;
  }

  else
  {
    v5 = sub_264E7C270;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E7C270()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];

  v4 = v2;
  v5 = sub_264E89894();
  v6 = sub_264E89BF4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[36];
    v7 = v0[37];
    v9 = v0[33];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136643075;
    *(v10 + 4) = sub_264E71E18(v8, v7, &v31);
    *(v10 + 12) = 2080;
    v12 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
    v13 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout + 8);
    v14 = sub_264E89F24();
    v16 = sub_264E71E18(v14, v15, &v31);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_264E62000, v5, v6, "Injecting query ID: %{sensitive}s, with timeout: %s...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v11, -1, -1);
    MEMORY[0x266751790](v10, -1, -1);
  }

  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[34];
  v20 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v21 = *v20;
  v22 = v20[1];
  v23 = swift_allocObject();
  v0[41] = v23;
  v23[2] = v19;
  v23[3] = v18;
  v23[4] = v17;

  v24 = type metadata accessor for SIMailResponse();
  v25 = sub_264E82AC0(&qword_27FFB7C00, &qword_27FFB7C08, &qword_264E8D230);
  v26 = swift_task_alloc();
  v0[42] = v26;
  v26[2] = &unk_264E8D228;
  v26[3] = v23;
  v26[4] = v21;
  v26[5] = v22;
  v26[6] = v19;
  v26[7] = v18;
  v26[8] = v17;
  v27 = *(MEMORY[0x277D859B8] + 4);
  v28 = swift_task_alloc();
  v0[43] = v28;
  *v28 = v0;
  v28[1] = sub_264E7C8C4;

  return MEMORY[0x282200740](v0 + 32, v24, v24, v19, v25, &unk_264E8D240, v26, v24);
}

uint64_t sub_264E7C538()
{
  v39 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = *(v0 + 320);
  *(v0 + 240) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    if (v5 == 1)
    {
      v7 = *(v0 + 288);
      v6 = *(v0 + 296);
      v9 = *(v0 + 272);
      v8 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v7, v6, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v8);
      sub_264E82958(v8, &qword_27FFB7BF8, &qword_264E8D218);
      swift_endAccess();
      if (!*(*(v9 + 112) + 16))
      {
        v10 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v11 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v12 = *v11;
      v13 = v11[1];
      sub_264E7F2F0();
      swift_allocError();
      *v14 = v12;
      *(v14 + 8) = v13;
      *(v14 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v5);
  }

  v15 = *(v0 + 296);
  v16 = *(v0 + 272);

  v17 = v3;
  v18 = sub_264E89894();
  v19 = sub_264E89BD4();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 296);
  if (v20)
  {
    v22 = *(v0 + 288);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 136643075;
    v25 = sub_264E71E18(v22, v21, v38);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    swift_getErrorValue();
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 184);
    v29 = sub_264E89E64();
    v31 = sub_264E71E18(v29, v30, v38);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_264E62000, v18, v19, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v24, -1, -1);
    MEMORY[0x266751790](v23, -1, -1);
  }

  else
  {
  }

  v32 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v32 + 112) + 16))
  {
    v33 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v34 = v3;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v35 = *(v0 + 280);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_264E7C8C4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    v5 = sub_264E7CA78;
  }

  else
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 272);

    v5 = sub_264E7C9EC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E7C9EC()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[35];

  v4 = v0[32];
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_264E7CA78()
{
  v41 = v0;
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);

  swift_willThrow();

  swift_unknownObjectRelease();
  v5 = *(v0 + 352);
  *(v0 + 240) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 232);
    if (v7 == 1)
    {
      v9 = *(v0 + 288);
      v8 = *(v0 + 296);
      v11 = *(v0 + 272);
      v10 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v9, v8, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v10);
      sub_264E82958(v10, &qword_27FFB7BF8, &qword_264E8D218);
      swift_endAccess();
      if (!*(*(v11 + 112) + 16))
      {
        v12 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v13 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v14 = *v13;
      v15 = v13[1];
      sub_264E7F2F0();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v7);
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 272);

  v19 = v5;
  v20 = sub_264E89894();
  v21 = sub_264E89BD4();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 296);
  if (v22)
  {
    v24 = *(v0 + 288);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40[0] = v26;
    *v25 = 136643075;
    v27 = sub_264E71E18(v24, v23, v40);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    swift_getErrorValue();
    v29 = *(v0 + 168);
    v28 = *(v0 + 176);
    v30 = *(v0 + 184);
    v31 = sub_264E89E64();
    v33 = sub_264E71E18(v31, v32, v40);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_264E62000, v20, v21, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v26, -1, -1);
    MEMORY[0x266751790](v25, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v34 + 112) + 16))
  {
    v35 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v36 = v5;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v37 = *(v0 + 280);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_264E7CE18(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BC8, &qword_264E8D1A0) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7CEB4, v1, 0);
}

uint64_t sub_264E7CEB4()
{
  v47 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E7D448;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_28;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        v15 = v0[36];
        v14 = v0[37];
        v17 = v0[34];
        v16 = v0[35];
        swift_beginAccess();
        sub_264E7F518(v15, v14, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v16);
        sub_264E82958(v16, &qword_27FFB7BC8, &qword_264E8D1A0);
        swift_endAccess();
        if (!*(*(v17 + 112) + 16))
        {
          v18 = v0[38];
          sub_264E6F8C8();
        }

        v19 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v20 = *v19;
        v21 = v19[1];
        swift_allocError();
        *v22 = v20;
        *(v22 + 8) = v21;
        *(v22 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v23 = v0[37];
    v24 = v0[34];

    v25 = v10;
    v26 = sub_264E89894();
    v27 = sub_264E89BD4();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[37];
    if (v28)
    {
      v30 = v0[36];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46[0] = v32;
      *v31 = 136643075;
      v33 = sub_264E71E18(v30, v29, v46);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v35 = v0[21];
      v34 = v0[22];
      v36 = v0[23];
      v37 = sub_264E89E64();
      v39 = sub_264E71E18(v37, v38, v46);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_264E62000, v26, v27, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v32, -1, -1);
      MEMORY[0x266751790](v31, -1, -1);
    }

    else
    {
    }

    v40 = v0[34];
    swift_beginAccess();
    if (!*(*(v40 + 112) + 16))
    {
      v41 = v0[38];
      sub_264E6F8C8();
    }

    swift_allocError();
    *v42 = v10;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:
  v43 = v0[35];

  v44 = v0[1];

  return v44();
}

uint64_t sub_264E7D448()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 272);
  if (v3)
  {
    v5 = sub_264E7D830;
  }

  else
  {
    v5 = sub_264E7D568;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E7D568()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];

  v4 = v2;
  v5 = sub_264E89894();
  v6 = sub_264E89BF4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[36];
    v7 = v0[37];
    v9 = v0[33];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136643075;
    *(v10 + 4) = sub_264E71E18(v8, v7, &v31);
    *(v10 + 12) = 2080;
    v12 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
    v13 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout + 8);
    v14 = sub_264E89F24();
    v16 = sub_264E71E18(v14, v15, &v31);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_264E62000, v5, v6, "Injecting query ID: %{sensitive}s, with timeout: %s...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v11, -1, -1);
    MEMORY[0x266751790](v10, -1, -1);
  }

  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[34];
  v20 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v21 = *v20;
  v22 = v20[1];
  v23 = swift_allocObject();
  v0[41] = v23;
  v23[2] = v19;
  v23[3] = v18;
  v23[4] = v17;

  v24 = type metadata accessor for SISettingsResponse();
  v25 = sub_264E82AC0(&qword_27FFB7BD0, &qword_27FFB7BD8, &qword_264E8D1B8);
  v26 = swift_task_alloc();
  v0[42] = v26;
  v26[2] = &unk_264E8D1B0;
  v26[3] = v23;
  v26[4] = v21;
  v26[5] = v22;
  v26[6] = v19;
  v26[7] = v18;
  v26[8] = v17;
  v27 = *(MEMORY[0x277D859B8] + 4);
  v28 = swift_task_alloc();
  v0[43] = v28;
  *v28 = v0;
  v28[1] = sub_264E7DBBC;

  return MEMORY[0x282200740](v0 + 32, v24, v24, v19, v25, &unk_264E8D1C8, v26, v24);
}

uint64_t sub_264E7D830()
{
  v39 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = *(v0 + 320);
  *(v0 + 240) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    if (v5 == 1)
    {
      v7 = *(v0 + 288);
      v6 = *(v0 + 296);
      v9 = *(v0 + 272);
      v8 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v7, v6, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v8);
      sub_264E82958(v8, &qword_27FFB7BC8, &qword_264E8D1A0);
      swift_endAccess();
      if (!*(*(v9 + 112) + 16))
      {
        v10 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v11 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v12 = *v11;
      v13 = v11[1];
      sub_264E7F2F0();
      swift_allocError();
      *v14 = v12;
      *(v14 + 8) = v13;
      *(v14 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v5);
  }

  v15 = *(v0 + 296);
  v16 = *(v0 + 272);

  v17 = v3;
  v18 = sub_264E89894();
  v19 = sub_264E89BD4();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 296);
  if (v20)
  {
    v22 = *(v0 + 288);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 136643075;
    v25 = sub_264E71E18(v22, v21, v38);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    swift_getErrorValue();
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 184);
    v29 = sub_264E89E64();
    v31 = sub_264E71E18(v29, v30, v38);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_264E62000, v18, v19, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v24, -1, -1);
    MEMORY[0x266751790](v23, -1, -1);
  }

  else
  {
  }

  v32 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v32 + 112) + 16))
  {
    v33 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v34 = v3;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v35 = *(v0 + 280);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_264E7DBBC()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    v5 = sub_264E7DCE4;
  }

  else
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 272);

    v5 = sub_264E82E90;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E7DCE4()
{
  v41 = v0;
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);

  swift_willThrow();

  swift_unknownObjectRelease();
  v5 = *(v0 + 352);
  *(v0 + 240) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 232);
    if (v7 == 1)
    {
      v9 = *(v0 + 288);
      v8 = *(v0 + 296);
      v11 = *(v0 + 272);
      v10 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v9, v8, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v10);
      sub_264E82958(v10, &qword_27FFB7BC8, &qword_264E8D1A0);
      swift_endAccess();
      if (!*(*(v11 + 112) + 16))
      {
        v12 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v13 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v14 = *v13;
      v15 = v13[1];
      sub_264E7F2F0();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v7);
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 272);

  v19 = v5;
  v20 = sub_264E89894();
  v21 = sub_264E89BD4();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 296);
  if (v22)
  {
    v24 = *(v0 + 288);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40[0] = v26;
    *v25 = 136643075;
    v27 = sub_264E71E18(v24, v23, v40);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    swift_getErrorValue();
    v29 = *(v0 + 168);
    v28 = *(v0 + 176);
    v30 = *(v0 + 184);
    v31 = sub_264E89E64();
    v33 = sub_264E71E18(v31, v32, v40);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_264E62000, v20, v21, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v26, -1, -1);
    MEMORY[0x266751790](v25, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v34 + 112) + 16))
  {
    v35 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v36 = v5;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v37 = *(v0 + 280);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_264E7E084(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B90, &qword_264E8D128) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7E120, v1, 0);
}

uint64_t sub_264E7E120()
{
  v47 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E7E6B4;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_1;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        v15 = v0[36];
        v14 = v0[37];
        v17 = v0[34];
        v16 = v0[35];
        swift_beginAccess();
        sub_264E7F518(v15, v14, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v16);
        sub_264E82958(v16, &qword_27FFB7B90, &qword_264E8D128);
        swift_endAccess();
        if (!*(*(v17 + 112) + 16))
        {
          v18 = v0[38];
          sub_264E6F8C8();
        }

        v19 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v20 = *v19;
        v21 = v19[1];
        swift_allocError();
        *v22 = v20;
        *(v22 + 8) = v21;
        *(v22 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v23 = v0[37];
    v24 = v0[34];

    v25 = v10;
    v26 = sub_264E89894();
    v27 = sub_264E89BD4();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[37];
    if (v28)
    {
      v30 = v0[36];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46[0] = v32;
      *v31 = 136643075;
      v33 = sub_264E71E18(v30, v29, v46);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v35 = v0[21];
      v34 = v0[22];
      v36 = v0[23];
      v37 = sub_264E89E64();
      v39 = sub_264E71E18(v37, v38, v46);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_264E62000, v26, v27, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v32, -1, -1);
      MEMORY[0x266751790](v31, -1, -1);
    }

    else
    {
    }

    v40 = v0[34];
    swift_beginAccess();
    if (!*(*(v40 + 112) + 16))
    {
      v41 = v0[38];
      sub_264E6F8C8();
    }

    swift_allocError();
    *v42 = v10;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:
  v43 = v0[35];

  v44 = v0[1];

  return v44();
}

uint64_t sub_264E7E6B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 272);
  if (v3)
  {
    v5 = sub_264E7EA9C;
  }

  else
  {
    v5 = sub_264E7E7D4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E7E7D4()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];

  v4 = v2;
  v5 = sub_264E89894();
  v6 = sub_264E89BF4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[36];
    v7 = v0[37];
    v9 = v0[33];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136643075;
    *(v10 + 4) = sub_264E71E18(v8, v7, &v31);
    *(v10 + 12) = 2080;
    v12 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
    v13 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout + 8);
    v14 = sub_264E89F24();
    v16 = sub_264E71E18(v14, v15, &v31);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_264E62000, v5, v6, "Injecting query ID: %{sensitive}s, with timeout: %s...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v11, -1, -1);
    MEMORY[0x266751790](v10, -1, -1);
  }

  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[34];
  v20 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v21 = *v20;
  v22 = v20[1];
  v23 = swift_allocObject();
  v0[41] = v23;
  v23[2] = v19;
  v23[3] = v18;
  v23[4] = v17;

  v24 = type metadata accessor for SISpotlightResponse();
  v25 = sub_264E82AC0(&qword_27FFB7BA0, &qword_27FFB7BA8, &unk_264E8D4A0);
  v26 = swift_task_alloc();
  v0[42] = v26;
  v26[2] = &unk_264E8D138;
  v26[3] = v23;
  v26[4] = v21;
  v26[5] = v22;
  v26[6] = v19;
  v26[7] = v18;
  v26[8] = v17;
  v27 = *(MEMORY[0x277D859B8] + 4);
  v28 = swift_task_alloc();
  v0[43] = v28;
  *v28 = v0;
  v28[1] = sub_264E7EE28;

  return MEMORY[0x282200740](v0 + 32, v24, v24, v19, v25, &unk_264E8D148, v26, v24);
}

uint64_t sub_264E7EA9C()
{
  v39 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = *(v0 + 320);
  *(v0 + 240) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    if (v5 == 1)
    {
      v7 = *(v0 + 288);
      v6 = *(v0 + 296);
      v9 = *(v0 + 272);
      v8 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v7, v6, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v8);
      sub_264E82958(v8, &qword_27FFB7B90, &qword_264E8D128);
      swift_endAccess();
      if (!*(*(v9 + 112) + 16))
      {
        v10 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v11 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v12 = *v11;
      v13 = v11[1];
      sub_264E7F2F0();
      swift_allocError();
      *v14 = v12;
      *(v14 + 8) = v13;
      *(v14 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v5);
  }

  v15 = *(v0 + 296);
  v16 = *(v0 + 272);

  v17 = v3;
  v18 = sub_264E89894();
  v19 = sub_264E89BD4();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 296);
  if (v20)
  {
    v22 = *(v0 + 288);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 136643075;
    v25 = sub_264E71E18(v22, v21, v38);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    swift_getErrorValue();
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 184);
    v29 = sub_264E89E64();
    v31 = sub_264E71E18(v29, v30, v38);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_264E62000, v18, v19, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v24, -1, -1);
    MEMORY[0x266751790](v23, -1, -1);
  }

  else
  {
  }

  v32 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v32 + 112) + 16))
  {
    v33 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v34 = v3;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v35 = *(v0 + 280);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_264E7EE28()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    v5 = sub_264E7EF50;
  }

  else
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 272);

    v5 = sub_264E82E90;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E7EF50()
{
  v41 = v0;
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);

  swift_willThrow();

  swift_unknownObjectRelease();
  v5 = *(v0 + 352);
  *(v0 + 240) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 232);
    if (v7 == 1)
    {
      v9 = *(v0 + 288);
      v8 = *(v0 + 296);
      v11 = *(v0 + 272);
      v10 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v9, v8, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v10);
      sub_264E82958(v10, &qword_27FFB7B90, &qword_264E8D128);
      swift_endAccess();
      if (!*(*(v11 + 112) + 16))
      {
        v12 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v13 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v14 = *v13;
      v15 = v13[1];
      sub_264E7F2F0();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v7);
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 272);

  v19 = v5;
  v20 = sub_264E89894();
  v21 = sub_264E89BD4();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 296);
  if (v22)
  {
    v24 = *(v0 + 288);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40[0] = v26;
    *v25 = 136643075;
    v27 = sub_264E71E18(v24, v23, v40);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    swift_getErrorValue();
    v29 = *(v0 + 168);
    v28 = *(v0 + 176);
    v30 = *(v0 + 184);
    v31 = sub_264E89E64();
    v33 = sub_264E71E18(v31, v32, v40);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_264E62000, v20, v21, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v26, -1, -1);
    MEMORY[0x266751790](v25, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v34 + 112) + 16))
  {
    v35 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v36 = v5;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v37 = *(v0 + 280);

  v38 = *(v0 + 8);

  return v38();
}

unint64_t sub_264E7F2F0()
{
  result = qword_27FFB7B98;
  if (!qword_27FFB7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7B98);
  }

  return result;
}

void *sub_264E7F344(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74E0, &qword_264E8BB08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_264E7F3C8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_264E7F3E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_264E89EB4();
  sub_264E89A04();
  v6 = sub_264E89EE4();

  return sub_264E7F460(a1, a2, v6);
}

unint64_t sub_264E7F460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_264E89DF4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_264E7F518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_264E7F3E8(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264E7FED4(a3, a4, a5, a6);
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v30 = *(v23 - 8);
    (*(v30 + 32))(a7, v22 + *(v30 + 72) * v17, v23);
    sub_264E7FA5C(v17, v20, a3, a4);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_264E7F6D8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v55 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v52 = a2;
  result = sub_264E89D14();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v48 = v9;
    v49 = (v12 + 16);
    v50 = v15;
    v51 = v12;
    v53 = (v12 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v51 + 72);
      v37 = v32 + v36 * v31;
      if (v52)
      {
        (*v53)(v54, v37, v55);
      }

      else
      {
        (*v49)(v54, v37, v55);
      }

      v38 = *(v18 + 40);
      sub_264E89EB4();
      sub_264E89A04();
      result = sub_264E89EE4();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = (*v53)(*(v18 + 56) + v36 * v26, v54, v55);
      ++*(v18 + 16);
      v15 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

unint64_t sub_264E7FA5C(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_264E89C54() + 1) & ~v7;
    while (1)
    {
      v13 = *(a2 + 40);
      v14 = (*(a2 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_264E89EB4();

      sub_264E89A04();
      v17 = sub_264E89EE4();

      v18 = v17 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v18 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v5);
      v21 = (v19 + 16 * v8);
      if (v5 != v8 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v24 = v23 * v5;
      result = v22 + v23 * v5;
      v25 = v23 * v8;
      v26 = v22 + v23 * v8 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_264E7FC58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_264E7F3E8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_264E7FED4(a5, a6, a7, a8);
      goto LABEL_9;
    }

    sub_264E7F6D8(v21, a4 & 1, a5, a6, a7, a8);
    v24 = *v11;
    v25 = sub_264E7F3E8(a2, a3);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_17:
    result = sub_264E89E24();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a1;
  v28 = *v11;
  if (v22)
  {
    v29 = v28[7];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v31 = *(v30 - 8);
    v32 = *(v31 + 40);
    v33 = v30;
    v34 = v29 + *(v31 + 72) * v18;

    return v32(v34, v27, v33);
  }

  else
  {
    sub_264E7FE20(v18, a2, a3, a1, v28, a5, a6);
  }
}

uint64_t sub_264E7FE20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  v11 = a5[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_264E7FED4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v47 = *(v45 - 8);
  v8 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_264E89D04();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_264E80150(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_264E802A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_264E802C8, a2, 0);
}

uint64_t sub_264E802C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_264E82AC0(&qword_27FFB7C00, &qword_27FFB7C08, &qword_264E8D230);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = type metadata accessor for SIMailResponse();
  *v7 = v0;
  v7[1] = sub_264E803F4;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E82E54, v5, v8);
}

uint64_t sub_264E803F4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_264E80564;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 32);

    v5 = sub_264E8051C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E80564()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_264E805C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_264E806B4;

  return sub_264E797A8(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_264E806B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_264E807C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_264E808B8;

  return v8(v4 + 16);
}

uint64_t sub_264E808B8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_264E809EC;
  }

  else
  {
    v3 = sub_264E809CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264E80A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_264E82E7C;

  return sub_264E817A0(a4, a5, a6, a7, a8);
}

uint64_t sub_264E80ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_264E80AEC, a2, 0);
}

uint64_t sub_264E80AEC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_264E82AC0(&qword_27FFB7BD0, &qword_27FFB7BD8, &qword_264E8D1B8);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = type metadata accessor for SISettingsResponse();
  *v7 = v0;
  v7[1] = sub_264E80C18;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E8294C, v5, v8);
}

uint64_t sub_264E80C18()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_264E82E70;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 32);

    v5 = sub_264E80D40;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E80D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_264E82E7C;

  return sub_264E79DE4(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_264E80E50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_264E80F44;

  return v8(v4 + 16);
}

uint64_t sub_264E80F44()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_264E82E84;
  }

  else
  {
    v3 = sub_264E82E94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264E81058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_264E82E7C;

  return sub_264E81F08(a4, a5, a6, a7, a8);
}

uint64_t sub_264E81120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_264E81140, a2, 0);
}

uint64_t sub_264E81140()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_264E82AC0(&qword_27FFB7BA0, &qword_27FFB7BA8, &unk_264E8D4A0);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = type metadata accessor for SISpotlightResponse();
  *v7 = v0;
  v7[1] = sub_264E80C18;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E825B8, v5, v8);
}

uint64_t sub_264E8126C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E81120(a1, v4, v5, v6);
}

uint64_t sub_264E81334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_264E82E7C;

  return sub_264E7A3BC(a2, a3, a4, a5, a6, a7, a8, v19);
}

void sub_264E81420()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_264E82E8C;

  JUMPOUT(0x264E81334);
}

uint64_t sub_264E8151C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264E82E8C;

  return sub_264E80E50(a1, v4, v5, v7);
}

uint64_t sub_264E815E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_264E82E7C;

  return sub_264E82488(a4, a5, a6, a7, a8);
}

uint64_t sub_264E816B0(uint64_t a1)
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
  v11[1] = sub_264E82E8C;

  return sub_264E815E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264E817A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C18, &qword_264E8D280);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_264E89CD4();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E818D0, 0, 0);
}

uint64_t sub_264E818D0()
{
  v1 = v0[16];
  sub_264E89E54();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_264E81990;
  v3 = v0[16];
  v5 = v0[6];
  v4 = v0[7];

  return sub_264E87B18(v5, v4, 0, 0, 1);
}

uint64_t sub_264E81990()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v5 = sub_264E81C98;
  }

  else
  {
    v5 = sub_264E81AF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264E81AF8()
{
  v17 = v0;
  v1 = v0[10];
  v2 = v0[8];

  v3 = sub_264E89894();
  v4 = sub_264E89BD4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136643075;
    *(v9 + 4) = sub_264E71E18(v6, v5, &v16);
    *(v9 + 12) = 2080;
    v11 = sub_264E89F24();
    v13 = sub_264E71E18(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_264E62000, v3, v4, "Query %{sensitive}s timed out after %s...", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v10, -1, -1);
    MEMORY[0x266751790](v9, -1, -1);
  }

  v14 = v0[8];

  return MEMORY[0x2822009F8](sub_264E81D08, v14, 0);
}

uint64_t sub_264E81C98()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_264E81D08()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 152) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_264E81D90, 0, 0);
}

uint64_t sub_264E81D90()
{
  if (*(v0[19] + 16))
  {
    v1 = sub_264E7F3E8(v0[9], v0[10]);
    if (v2)
    {
      v4 = v0[12];
      v3 = v0[13];
      v5 = v0[11];
      v7 = v0[6];
      v6 = v0[7];
      (*(v4 + 16))(v3, *(v0[19] + 56) + *(v4 + 72) * v1, v5);

      sub_264E7F2F0();
      v8 = swift_allocError();
      *v9 = v7;
      *(v9 + 8) = v6;
      *(v9 + 16) = 1;
      v0[5] = v8;
      sub_264E89B34();
      (*(v4 + 8))(v3, v5);
      goto LABEL_7;
    }

    v11 = v0[19];
  }

  else
  {
    v10 = v0[19];
  }

LABEL_7:
  v13 = v0[6];
  v12 = v0[7];
  sub_264E7F2F0();
  swift_allocError();
  *v14 = v13;
  *(v14 + 8) = v12;
  *(v14 + 16) = 1;
  swift_willThrow();
  v15 = v0[16];
  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_264E81F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BE8, &qword_264E8D208);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_264E89CD4();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E82038, 0, 0);
}

uint64_t sub_264E82038()
{
  v1 = v0[16];
  sub_264E89E54();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_264E820F8;
  v3 = v0[16];
  v5 = v0[6];
  v4 = v0[7];

  return sub_264E87B18(v5, v4, 0, 0, 1);
}

uint64_t sub_264E820F8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v5 = sub_264E82E88;
  }

  else
  {
    v5 = sub_264E82260;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264E82260()
{
  v17 = v0;
  v1 = v0[10];
  v2 = v0[8];

  v3 = sub_264E89894();
  v4 = sub_264E89BD4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136643075;
    *(v9 + 4) = sub_264E71E18(v6, v5, &v16);
    *(v9 + 12) = 2080;
    v11 = sub_264E89F24();
    v13 = sub_264E71E18(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_264E62000, v3, v4, "Query %{sensitive}s timed out after %s...", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v10, -1, -1);
    MEMORY[0x266751790](v9, -1, -1);
  }

  v14 = v0[8];

  return MEMORY[0x2822009F8](sub_264E82400, v14, 0);
}

uint64_t sub_264E82400()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 152) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_264E82E78, 0, 0);
}

uint64_t sub_264E82488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB8, &qword_264E8D188);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_264E89CD4();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E82038, 0, 0);
}

uint64_t sub_264E825CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E80ACC(a1, v4, v5, v6);
}

void sub_264E82694()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_264E82E8C;

  JUMPOUT(0x264E80D64);
}

uint64_t sub_264E82790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264E82E8C;

  return sub_264E80E50(a1, v4, v5, v7);
}

uint64_t sub_264E8285C(uint64_t a1)
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
  v11[1] = sub_264E82E8C;

  return sub_264E81058(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264E82958(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264E829F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E789D8;

  return sub_264E802A8(a1, v4, v5, v6);
}

uint64_t sub_264E82AC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_264E82B14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_264E82E8C;

  JUMPOUT(0x264E805C8);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264E82C50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264E82E8C;

  return sub_264E807C4(a1, v4, v5, v7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264E82D64(uint64_t a1)
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
  v11[1] = sub_264E82E8C;

  return sub_264E80A04(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_264E82EB8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query);
  v4 = sub_264E899B4();
  [a1 encodeObject:v3 forKey:v4];
}

id SISettingsResponse.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for SettingsQuery();
  v5 = sub_264E89C04();
  if (v5)
  {
    *&v4[OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query] = v5;
    v8.receiver = v4;
    v8.super_class = v2;
    v6 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id SISettingsResponse.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for SettingsQuery();
  v4 = sub_264E89C04();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for SISettingsResponse();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for SISettingsResponse();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id SISettingsResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SISettingsResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SISettingsResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E8330C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264E833E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BD8, &qword_264E8D1B8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x277D84F98];
  result = sub_264E898A4();
  qword_27FFB7C40 = v3;
  return result;
}

uint64_t SIDataManager<>.injectSettingsQuery(_:)(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264E83570, v1, 0);
}

uint64_t sub_264E83570()
{
  v24 = *MEMORY[0x277D85DE8];
  super_class = v0[2].super_class;
  v2 = objc_opt_self();
  v0[2].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:super_class requiringSecureCoding:1 error:&v0[2]];
  v4 = v0[2].receiver;
  if (v3)
  {
    v5 = v0[2].super_class;
    v6 = sub_264E89854();
    v8 = v7;

    v0[3].super_class = v6;
    v0[4].receiver = v8;
    v9 = sub_264E89834();
    v10 = v5 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier;
    v12 = *(v5 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier);
    v11 = *(v10 + 1);
    v13 = type metadata accessor for SIQueryTransport();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = 0;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = v9;
    v15 = &v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
    *v15 = v12;
    v15[1] = v11;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout] = xmmword_264E8BA90;
    v0[1].receiver = v14;
    v0[1].super_class = v13;

    v16 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[4].super_class = v16;
    v17 = swift_task_alloc();
    v0[5].receiver = v17;
    *v17 = v0;
    v17[1] = sub_264E794EC;
    receiver = v0[3].receiver;
    v19 = *MEMORY[0x277D85DE8];

    return sub_264E7CE18(v16);
  }

  else
  {
    v21 = v4;
    sub_264E897E4();

    swift_willThrow();
    v22 = v0->super_class;
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }
}

unint64_t SIDataManagerError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v4 = *(v0 + 8);
    }

    else
    {
      if (v1 ^ 2 | v2)
      {
        v6 = 0xD00000000000001ALL;
      }

      else
      {
        v6 = 0xD000000000000033;
      }

      v7 = 0xD000000000000041;
      if (!(v1 | v2))
      {
        v7 = 0xD000000000000065;
      }

      if (v1 <= 1)
      {
        return v7;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    if (*(v0 + 16))
    {
      v9 = 0;
      sub_264E89C74();
      MEMORY[0x266750CC0](0xD000000000000016, 0x8000000264E8E410);
      v5 = sub_264E89F24();
      MEMORY[0x266750CC0](v5);

      MEMORY[0x266750CC0](0xD00000000000003CLL, 0x8000000264E8E430);
    }

    else
    {
      sub_264E89C74();

      v9 = 0xD000000000000019;
      swift_getErrorValue();
      v3 = sub_264E89E64();
      MEMORY[0x266750CC0](v3);
    }

    return v9;
  }

  return v1;
}

uint64_t sub_264E839B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BA8, &unk_264E8D4A0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x277D84F98];
  result = sub_264E898A4();
  qword_27FFB7C48 = v3;
  return result;
}

uint64_t SIDataManager<>.injectSpotlightQuery(_:)(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264E83B40, v1, 0);
}

uint64_t sub_264E83B40()
{
  v24 = *MEMORY[0x277D85DE8];
  super_class = v0[2].super_class;
  v2 = objc_opt_self();
  v0[2].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:super_class requiringSecureCoding:1 error:&v0[2]];
  v4 = v0[2].receiver;
  if (v3)
  {
    v5 = v0[2].super_class;
    v6 = sub_264E89854();
    v8 = v7;

    v0[3].super_class = v6;
    v0[4].receiver = v8;
    v9 = sub_264E89834();
    v10 = v5 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier;
    v12 = *(v5 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier);
    v11 = *(v10 + 1);
    v13 = type metadata accessor for SIQueryTransport();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = 1;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = v9;
    v15 = &v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
    *v15 = v12;
    v15[1] = v11;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout] = xmmword_264E8BA90;
    v0[1].receiver = v14;
    v0[1].super_class = v13;

    v16 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[4].super_class = v16;
    v17 = swift_task_alloc();
    v0[5].receiver = v17;
    *v17 = v0;
    v17[1] = sub_264E794EC;
    receiver = v0[3].receiver;
    v19 = *MEMORY[0x277D85DE8];

    return sub_264E7E084(v16);
  }

  else
  {
    v21 = v4;
    sub_264E897E4();

    swift_willThrow();
    v22 = v0->super_class;
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }
}

uint64_t get_enum_tag_for_layout_string_22SearchIntrospectionKit18SIDataManagerErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_264E83E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264E83EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v9[11] = *v8;
  return MEMORY[0x2822009F8](sub_264E83F0C, v8, 0);
}

uint64_t sub_264E83F0C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  type metadata accessor for SIDataManager();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  v12 = *(v0 + 56);
  *(v11 + 16) = v3;
  *(v11 + 24) = v12;
  *(v11 + 40) = v7;
  *(v11 + 48) = v6;
  *(v11 + 56) = v2;
  *(v11 + 64) = v5;
  *(v11 + 72) = v4;
  v13 = *(MEMORY[0x277D859B8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = sub_264E84054;
  v15 = *(v0 + 72);
  v16 = *(v0 + 16);

  return MEMORY[0x282200740](v16, v15, v15, v2, WitnessTable, &unk_264E8D648, v11, v15);
}

uint64_t sub_264E84054()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](sub_264E84190, v4, 0);
  }

  else
  {
    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_264E84190()
{
  v1 = v0[14];
  v2 = v0[12];

  swift_willThrow();
  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_264E84204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[10] = v16;
  v8[11] = v17;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[12] = *a7;
  v10 = sub_264E89C24();
  v8[13] = v10;
  v11 = *(v10 - 8);
  v8[14] = v11;
  v12 = *(v11 + 64) + 15;
  v8[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E84344, a7, 0);
}

uint64_t sub_264E84344()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v21 = v0[9];
  v22 = v0[10];
  v19 = v0[7];
  v20 = v0[8];
  v4 = v0[5];
  v18 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = sub_264E89B74();
  v17 = *(*(v7 - 8) + 56);
  v17(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = *(v3 + 80);
  v8[5] = v2;
  v8[6] = *(v3 + 88);
  v8[7] = v6;
  v8[8] = v4;

  v0[17] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v9 = sub_264E89BA4();
  sub_264E84A30(v1, &unk_264E8D660, v8, v9);
  sub_264E78B3C(v1);
  v17(v1, 1, 1, v7);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v18;
  v10[6] = v19;
  v10[7] = v20;
  v10[8] = v21;
  v10[9] = v22;

  sub_264E84A30(v1, &unk_264E8D670, v10, v9);
  sub_264E78B3C(v1);
  type metadata accessor for SIDataManager();
  WitnessTable = swift_getWitnessTable();
  v12 = *(MEMORY[0x277D85818] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_264E845D4;
  v14 = v0[15];
  v15 = v0[3];

  return MEMORY[0x2822004D0](v14, v20, WitnessTable, v9);
}

uint64_t sub_264E845D4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_264E848CC;
  }

  else
  {
    v6 = sub_264E84700;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264E84700()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[17];
    v5 = v0[3];
    (*(v0[14] + 8))(v1, v0[13]);
    v6 = *v5;
    sub_264E89B94();
    sub_264E7F2F0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    *(v7 + 8) = 0x8000000264E8E300;
    *(v7 + 16) = 2;
    swift_willThrow();
    v9 = v0[15];
    v8 = v0[16];
  }

  else
  {
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[3];
    (*(v3 + 32))(v0[2], v1, v2);
    v14 = *v13;
    sub_264E89B94();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_264E848CC()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_264E84938(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_264E789D8;

  return v9(a1);
}

uint64_t sub_264E84A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v22 - v10;
  sub_264E78ACC(a1, v22 - v10);
  v12 = sub_264E89B74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_264E78B3C(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_264E89B24();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264E89B64();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = *(a4 + 16);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_264E84C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = *(*a6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v10 = sub_264E89B54();
  v8[13] = v10;
  v11 = sub_264E89C24();
  v8[14] = v11;
  v12 = *(v11 - 8);
  v8[15] = v12;
  v13 = *(v12 + 64) + 15;
  v8[16] = swift_task_alloc();
  v14 = *(v10 - 8);
  v8[17] = v14;
  v15 = *(v14 + 64) + 15;
  v8[18] = swift_task_alloc();
  v16 = sub_264E89CD4();
  v8[19] = v16;
  v17 = *(v16 - 8);
  v8[20] = v17;
  v18 = *(v17 + 64) + 15;
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E84DC8, 0, 0);
}

uint64_t sub_264E84DC8()
{
  v1 = v0[21];
  sub_264E89E54();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_264E84E88;
  v3 = v0[21];
  v5 = v0[8];
  v4 = v0[9];

  return sub_264E87B18(v5, v4, 0, 0, 1);
}

uint64_t sub_264E84E88()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);
  if (v0)
  {
    v5 = sub_264E851A0;
  }

  else
  {
    v5 = sub_264E84FF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264E84FF0()
{
  v18 = v0;
  v1 = v0[12];
  v2 = v0[10];

  v3 = sub_264E89894();
  v4 = sub_264E89BD4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[8];
    v7 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136643075;
    *(v9 + 4) = sub_264E71E18(v6, v5, &v17);
    *(v9 + 12) = 2080;
    v11 = sub_264E89F24();
    v13 = sub_264E71E18(v11, v12, &v17);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_264E62000, v3, v4, "Query %{sensitive}s timed out after %s...", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v10, -1, -1);
    MEMORY[0x266751790](v9, -1, -1);
  }

  v14 = v0[12];
  v15 = v0[10];

  return MEMORY[0x2822009F8](sub_264E85224, v15, 0);
}

uint64_t sub_264E851A0()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_264E85224()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_264E852AC, 0, 0);
}

uint64_t sub_264E852AC()
{
  v0[5] = v0[11];
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[13];
  v0[6] = v0[12];
  sub_264E89984();

  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[13];
    v9 = v0[8];
    v8 = v0[9];
    (*(v6 + 32))(v5, v0[16], v7);
    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = v9;
    *(v11 + 8) = v8;
    *(v11 + 16) = 1;
    v0[7] = v10;
    sub_264E89B34();
    (*(v6 + 8))(v5, v7);
  }

  v13 = v0[8];
  v12 = v0[9];
  sub_264E7F2F0();
  swift_allocError();
  *v14 = v13;
  *(v14 + 8) = v12;
  *(v14 + 16) = 1;
  swift_willThrow();
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[16];

  v18 = v0[1];

  return v18();
}

uint64_t sub_264E85480(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x2822009F8](sub_264E854CC, v2, 0);
}

uint64_t sub_264E854CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for SIDataManager();
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  v0[7] = v8;
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v3;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_264E85608;

  return MEMORY[0x2822008A0](v0 + 2, v2, WitnessTable, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E8865C, v8, v6);
}

uint64_t sub_264E85608()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_264E80564;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = sub_264E85730;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void sub_264E8574C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v9 = sub_264E89B54();
  v10 = (*(*(sub_264E89C24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v26 - v11;
  v13 = *(v9 - 8);
  (*(v13 + 16))(&v26 - v11, a1, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  v29[1] = a3;
  v29[2] = a4;
  swift_beginAccess();
  sub_264E89974();

  sub_264E89994();
  swift_endAccess();
  swift_retain_n();
  v14 = sub_264E89894();
  v15 = sub_264E89BC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29[0] = v27;
    *v16 = 134218243;
    swift_beginAccess();
    v17 = a2[14];

    v18 = MEMORY[0x277D837D0];
    v19 = sub_264E89954();

    *(v16 + 4) = v19;
    *(v16 + 12) = 2085;
    swift_beginAccess();
    v28 = a2[14];
    sub_264E89944();

    swift_getWitnessTable();
    v20 = sub_264E89B14();

    v21 = MEMORY[0x266750DB0](v20, v18);
    v23 = v22;

    v24 = sub_264E71E18(v21, v23, v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_264E62000, v14, v15, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v16, 0x16u);
    v25 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x266751790](v25, -1, -1);
    MEMORY[0x266751790](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264E85AD4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  sub_264E89B54();
  v6 = sub_264E89C24();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v12 - v9;
  v12[4] = a1;
  v12[5] = a2;
  swift_beginAccess();
  sub_264E89974();
  sub_264E89934();
  (*(v7 + 8))(v10, v6);
  return swift_endAccess();
}

uint64_t sub_264E85C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v6 = sub_264E89B54();
  v4[15] = v6;
  v7 = sub_264E89C24();
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v9 = *(v8 + 64) + 15;
  v4[18] = swift_task_alloc();
  v10 = *(v6 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E85DA0, v3, 0);
}

uint64_t sub_264E85DA0()
{
  v34 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  ObjectType = swift_getObjectType();
  v31 = *(v6 + 24);
  v32 = ObjectType;
  v0[8] = v31(ObjectType, v6);
  v0[9] = v8;
  swift_beginAccess();
  sub_264E89974();
  sub_264E89934();
  swift_endAccess();

  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v9 = v0[14];
    v10 = v0[12];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v11 = v10;
    v12 = sub_264E89894();
    v13 = sub_264E89BD4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[12];
      v15 = v0[13];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136642819;
      v18 = v31(v32, v15);
      v20 = sub_264E71E18(v18, v19, &v33);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_264E62000, v12, v13, "No continuation found for query identifier: '%{sensitive}s'. The request may have timed out.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x266751790](v17, -1, -1);
      MEMORY[0x266751790](v16, -1, -1);
    }
  }

  else
  {
    v21 = v0[15];
    (*(v0[19] + 32))(v0[20], v0[18], v21);
    swift_beginAccess();
    v22 = *(v4 + 112);

    LOBYTE(v21) = MEMORY[0x266750C10](v23, MEMORY[0x277D837D0], v21, MEMORY[0x277D837E0]);

    if (v21)
    {
      if (qword_281228C88 != -1)
      {
        swift_once();
      }

      sub_264E6F8C8();
    }

    v25 = v0[19];
    v24 = v0[20];
    v26 = v0[15];
    v0[10] = v0[11];
    swift_unknownObjectRetain();
    sub_264E89B44();
    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[20];
  v28 = v0[18];

  v29 = v0[1];

  return v29();
}

uint64_t sub_264E860D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *v4;
  return MEMORY[0x2822009F8](sub_264E86124, v4, 0);
}

uint64_t sub_264E86124()
{
  v32 = v0;
  *(v0 + 16) = *(v0 + 40);
  v1 = *(v0 + 80);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFB7C60, qword_264E8D568);
  v2 = *(v1 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 32);
    *(v0 + 88) = v3;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_264E863FC;
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);

    return sub_264E85C40(v3, v7, v5);
  }

  else
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = *(v0 + 40);
    swift_unknownObjectRetain();
    v12 = v10;
    v13 = sub_264E89894();
    v14 = sub_264E89BD4();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 56);
      v16 = *(v0 + 64);
      v17 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315651;
      swift_getObjectType();
      v20 = sub_264E89F64();
      v22 = sub_264E71E18(v20, v21, &v31);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_264E89F64();
      v25 = sub_264E71E18(v23, v24, &v31);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2085;
      ObjectType = swift_getObjectType();
      v27 = (*(v16 + 24))(ObjectType, v16);
      v29 = sub_264E71E18(v27, v28, &v31);

      *(v18 + 24) = v29;
      _os_log_impl(&dword_264E62000, v13, v14, "Cannot convert %s to %s for query: %{sensitive}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v19, -1, -1);
      MEMORY[0x266751790](v18, -1, -1);
    }

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_264E863FC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264E8650C, v2, 0);
}

uint64_t sub_264E8650C()
{
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264E8656C(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v2[35] = *v1;
  return MEMORY[0x2822009F8](sub_264E865B4, v1, 0);
}

uint64_t sub_264E865B4()
{
  v53 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E86B7C;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_2;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        v14 = v0[34];
        v15 = v0[35];
        sub_264E85AD4(v0[36], v0[37]);
        swift_beginAccess();
        v16 = *(v14 + 112);
        v17 = *(v15 + 80);
        v18 = sub_264E89B54();

        LOBYTE(v18) = MEMORY[0x266750C10](v19, MEMORY[0x277D837D0], v18, MEMORY[0x277D837E0]);

        if (v18)
        {
          v20 = v0[38];
          sub_264E6F8C8();
        }

        v21 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v22 = *v21;
        v23 = v21[1];
        swift_allocError();
        *v24 = v22;
        *(v24 + 8) = v23;
        *(v24 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v25 = v0[37];
    v26 = v0[34];

    v27 = v10;
    v28 = sub_264E89894();
    v29 = sub_264E89BD4();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[37];
    if (v30)
    {
      v32 = v0[36];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52[0] = v34;
      *v33 = 136643075;
      v35 = sub_264E71E18(v32, v31, v52);

      *(v33 + 4) = v35;
      *(v33 + 12) = 2080;
      swift_getErrorValue();
      v37 = v0[24];
      v36 = v0[25];
      v38 = v0[26];
      v39 = sub_264E89E64();
      v41 = sub_264E71E18(v39, v40, v52);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_264E62000, v28, v29, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v34, -1, -1);
      MEMORY[0x266751790](v33, -1, -1);
    }

    else
    {
    }

    v42 = v0[34];
    v43 = v0[35];
    swift_beginAccess();
    v44 = *(v42 + 112);
    v45 = *(v43 + 80);
    v46 = sub_264E89B54();

    LOBYTE(v46) = MEMORY[0x266750C10](v47, MEMORY[0x277D837D0], v46, MEMORY[0x277D837E0]);

    if (v46)
    {
      v48 = v0[38];
      sub_264E6F8C8();
    }

    swift_allocError();
    *v49 = v10;
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:
  v50 = v0[1];

  return v50();
}

uint64_t sub_264E86B7C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 272);
  if (v3)
  {
    v5 = sub_264E870B4;
  }

  else
  {
    v5 = sub_264E86C9C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264E86C9C()
{
  v32 = v0;
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];

  v4 = v2;
  v5 = sub_264E89894();
  v6 = sub_264E89BF4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[36];
    v7 = v0[37];
    v9 = v0[33];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136643075;
    *(v10 + 4) = sub_264E71E18(v8, v7, &v31);
    *(v10 + 12) = 2080;
    v12 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
    v13 = *(v9 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout + 8);
    v14 = sub_264E89F24();
    v16 = sub_264E71E18(v14, v15, &v31);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_264E62000, v5, v6, "Injecting query ID: %{sensitive}s, with timeout: %s...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v11, -1, -1);
    MEMORY[0x266751790](v10, -1, -1);
  }

  v17 = v0[36];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[35];
  v21 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v23 = *v21;
  v22 = v21[1];
  v24 = swift_allocObject();
  v0[41] = v24;
  v24[2] = v19;
  v24[3] = v17;
  v24[4] = v18;

  v25 = swift_task_alloc();
  v0[42] = v25;
  v26 = *(v20 + 80);
  *v25 = v0;
  v25[1] = sub_264E86F04;
  v27 = v0[36];
  v28 = v0[37];
  v29 = v0[34];

  return sub_264E83EB4((v0 + 32), v23, v22, v27, v28, &unk_264E8D588, v24, v26);
}

uint64_t sub_264E86F04()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 272);

  if (v0)
  {
    v7 = sub_264E87478;
  }

  else
  {
    v7 = sub_264E8704C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_264E8704C()
{
  v1 = v0[39];
  swift_unknownObjectRelease();
  v2 = v0[32];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_264E870B4()
{
  v45 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = *(v0 + 320);
  *(v0 + 240) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    if (v5 == 1)
    {
      v6 = *(v0 + 272);
      v7 = *(v0 + 280);
      sub_264E85AD4(*(v0 + 288), *(v0 + 296));
      swift_beginAccess();
      v8 = *(v6 + 112);
      v9 = *(v7 + 80);
      v10 = sub_264E89B54();

      LOBYTE(v10) = MEMORY[0x266750C10](v11, MEMORY[0x277D837D0], v10, MEMORY[0x277D837E0]);

      if (v10)
      {
        v12 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v13 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v14 = *v13;
      v15 = v13[1];
      sub_264E7F2F0();
      swift_allocError();
      *v16 = v14;
      *(v16 + 8) = v15;
      *(v16 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v5);
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 272);

  v19 = v3;
  v20 = sub_264E89894();
  v21 = sub_264E89BD4();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 296);
  if (v22)
  {
    v24 = *(v0 + 288);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44[0] = v26;
    *v25 = 136643075;
    v27 = sub_264E71E18(v24, v23, v44);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    swift_getErrorValue();
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    v30 = *(v0 + 208);
    v31 = sub_264E89E64();
    v33 = sub_264E71E18(v31, v32, v44);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_264E62000, v20, v21, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v26, -1, -1);
    MEMORY[0x266751790](v25, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 272);
  v35 = *(v0 + 280);
  swift_beginAccess();
  v36 = *(v34 + 112);
  v37 = *(v35 + 80);
  v38 = sub_264E89B54();

  LOBYTE(v38) = MEMORY[0x266750C10](v39, MEMORY[0x277D837D0], v38, MEMORY[0x277D837E0]);

  if (v38)
  {
    v40 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v41 = v3;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_264E87478()
{
  v44 = v0;
  v1 = *(v0 + 312);
  swift_unknownObjectRelease();
  v2 = *(v0 + 344);
  *(v0 + 240) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 232);
    if (v4 == 1)
    {
      v5 = *(v0 + 272);
      v6 = *(v0 + 280);
      sub_264E85AD4(*(v0 + 288), *(v0 + 296));
      swift_beginAccess();
      v7 = *(v5 + 112);
      v8 = *(v6 + 80);
      v9 = sub_264E89B54();

      LOBYTE(v9) = MEMORY[0x266750C10](v10, MEMORY[0x277D837D0], v9, MEMORY[0x277D837E0]);

      if (v9)
      {
        v11 = *(v0 + 304);
        sub_264E6F8C8();
      }

      v12 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v13 = *v12;
      v14 = v12[1];
      sub_264E7F2F0();
      swift_allocError();
      *v15 = v13;
      *(v15 + 8) = v14;
      *(v15 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v4);
  }

  v16 = *(v0 + 296);
  v17 = *(v0 + 272);

  v18 = v2;
  v19 = sub_264E89894();
  v20 = sub_264E89BD4();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 296);
  if (v21)
  {
    v23 = *(v0 + 288);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43[0] = v25;
    *v24 = 136643075;
    v26 = sub_264E71E18(v23, v22, v43);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 208);
    v30 = sub_264E89E64();
    v32 = sub_264E71E18(v30, v31, v43);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_264E62000, v19, v20, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v25, -1, -1);
    MEMORY[0x266751790](v24, -1, -1);
  }

  else
  {
  }

  v33 = *(v0 + 272);
  v34 = *(v0 + 280);
  swift_beginAccess();
  v35 = *(v33 + 112);
  v36 = *(v34 + 80);
  v37 = sub_264E89B54();

  LOBYTE(v37) = MEMORY[0x266750C10](v38, MEMORY[0x277D837D0], v37, MEMORY[0x277D837E0]);

  if (v37)
  {
    v39 = *(v0 + 304);
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v40 = v2;
  *(v40 + 8) = 0;
  *(v40 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_264E87834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_264E878E4;

  return sub_264E85480(a3, a4);
}

uint64_t sub_264E878E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_264E87A30, 0, 0);
  }
}

uint64_t SIDataManager.deinit()
{
  v1 = *(v0 + 112);

  v2 = qword_27FFB7C58;
  v3 = sub_264E898B4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SIDataManager.__deallocating_deinit()
{
  SIDataManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264E87B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_264E89CC4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_264E87C18, 0, 0);
}

uint64_t sub_264E87C18()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_264E89CD4();
  v7 = sub_264E88920(&qword_27FFB7CE8, MEMORY[0x277D85928]);
  sub_264E89E34();
  sub_264E88920(&unk_27FFB7CF0, MEMORY[0x277D858F8]);
  sub_264E89CE4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_264E87DA8;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_264E87DA8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264E87F64, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_264E87F64()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void *sub_264E87FD0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_264E87FF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_264E88038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E789D8;

  return sub_264E87834(a1, v4, v5, v6);
}

uint64_t sub_264E880F0()
{
  result = sub_264E898B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SIDataManager.setResult(_:forQuery:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_264E82E8C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of SIDataManager.setResult(_:forQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_264E789D8;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SIDataManager.injectQuery(_:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264E88560;

  return v8(a1);
}

uint64_t sub_264E88560(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_264E88668(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_264E82E8C;

  return sub_264E84204(a1, a2, v6, v7, v8, v9, v10, v12);
}

uint64_t sub_264E88758(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264E82E8C;

  return sub_264E84938(a1, v6, v7, v9);
}

uint64_t sub_264E88834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_264E82E8C;

  return sub_264E84C04(a1, v4, v5, v6, v8, v9, v11, v10);
}

uint64_t sub_264E88920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SIQueryTransport.injectQuery()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 88) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264E88A28, 0, 0);
}

uint64_t sub_264E88A28()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient;
  v0[12] = OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient;
  v3 = *(v1 + v2);
  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_27FFB71B8 != -1)
      {
        swift_once();
      }

      v4 = &dword_264E8D120;
      v5 = 0x3FFFFFFFFFFFC3D9;
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v7 = sub_264E88C58;
    }

    else
    {
      if (qword_27FFB71A8 != -1)
      {
        swift_once();
      }

      v4 = &dword_264E8D118;
      v5 = 0x3FFFFFFFFFFFBA82;
      v6 = swift_task_alloc();
      v0[15] = v6;
      *v6 = v0;
      v7 = sub_264E88FCC;
    }
  }

  else
  {
    if (qword_27FFB71B0 != -1)
    {
      swift_once();
    }

    v4 = &dword_264E8D198;
    v5 = 0x3FFFFFFFFFFFBF20;
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v7 = sub_264E89340;
  }

  v6[1] = v7;
  v8 = v0[11];
  v9 = *MEMORY[0x277D85DE8];

  return (&v4[v5])(v8);
}

uint64_t sub_264E88C58(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 104);
  v4 = *v2;
  *(v4 + 112) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_264E88DD0, 0, 0);
  }
}

uint64_t sub_264E88DD0()
{
  v23 = *MEMORY[0x277D85DE8];
  receiver = v0[7].receiver;
  v2 = objc_opt_self();
  v0[5].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:receiver requiringSecureCoding:1 error:&v0[5]];
  v4 = v0[5].receiver;
  if (v3)
  {
    v5 = v3;
    super_class = v0[5].super_class;
    v7 = *(super_class + v0[6].receiver);
    v8 = *(super_class + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
    v9 = type metadata accessor for SIResponseTransport();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = v7;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = v8;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = v5;
    v0[3].receiver = v10;
    v11 = v0[7].receiver;
    v0[3].super_class = v9;
    v12 = v4;
    v13 = v8;
    v14 = v5;
    v15 = objc_msgSendSuper2(v0 + 3, sel_init);

    v16 = v0->super_class;
    v17 = *MEMORY[0x277D85DE8];

    return v16(v15);
  }

  else
  {
    v19 = v0[7].receiver;
    v20 = v4;
    sub_264E897E4();

    swift_willThrow();
    v21 = v0->super_class;
    v22 = *MEMORY[0x277D85DE8];

    return v21();
  }
}

uint64_t sub_264E88FCC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 120);
  v4 = *v2;
  *(v4 + 128) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_264E89144, 0, 0);
  }
}

uint64_t sub_264E89144()
{
  v23 = *MEMORY[0x277D85DE8];
  receiver = v0[8].receiver;
  v2 = objc_opt_self();
  v0[4].super_class = 0;
  v3 = [v2 archivedDataWithRootObject:receiver requiringSecureCoding:1 error:&v0[4].super_class];
  super_class = v0[4].super_class;
  if (v3)
  {
    v5 = v3;
    v6 = v0[5].super_class;
    v7 = *(v6 + v0[6].receiver);
    v8 = *(v6 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
    v9 = type metadata accessor for SIResponseTransport();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = v7;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = v8;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = v5;
    v0[2].receiver = v10;
    v11 = v0[8].receiver;
    v0[2].super_class = v9;
    v12 = super_class;
    v13 = v8;
    v14 = v5;
    v15 = objc_msgSendSuper2(v0 + 2, sel_init);

    v16 = v0->super_class;
    v17 = *MEMORY[0x277D85DE8];

    return v16(v15);
  }

  else
  {
    v19 = v0[8].receiver;
    v20 = super_class;
    sub_264E897E4();

    swift_willThrow();
    v21 = v0->super_class;
    v22 = *MEMORY[0x277D85DE8];

    return v21();
  }
}

uint64_t sub_264E89340(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 136);
  v4 = *v2;
  *(v4 + 144) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_264E894B8, 0, 0);
  }
}

uint64_t sub_264E894B8()
{
  v23 = *MEMORY[0x277D85DE8];
  receiver = v0[9].receiver;
  v2 = objc_opt_self();
  v0[4].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:receiver requiringSecureCoding:1 error:&v0[4]];
  v4 = v0[4].receiver;
  if (v3)
  {
    v5 = v3;
    super_class = v0[5].super_class;
    v7 = *(super_class + v0[6].receiver);
    v8 = *(super_class + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
    v9 = type metadata accessor for SIResponseTransport();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = v7;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = v8;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = v5;
    v0[1].receiver = v10;
    v11 = v0[9].receiver;
    v0[1].super_class = v9;
    v12 = v4;
    v13 = v8;
    v14 = v5;
    v15 = objc_msgSendSuper2(v0 + 1, sel_init);

    v16 = v0->super_class;
    v17 = *MEMORY[0x277D85DE8];

    return v16(v15);
  }

  else
  {
    v19 = v0[9].receiver;
    v20 = v4;
    sub_264E897E4();

    swift_willThrow();
    v21 = v0->super_class;
    v22 = *MEMORY[0x277D85DE8];

    return v21();
  }
}