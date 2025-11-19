uint64_t sub_2610296AC()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_261029758()
{
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_2610297F0()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_261029898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261037370();
  *a2 = result;
  return result;
}

void sub_2610298C8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6563697665444BLL;
  if (v2 != 1)
  {
    v3 = 0xEE00746E756F6363;
  }

  v4 = v2 == 0;
  if (*v1)
  {
    v5 = 0x41676E697373696DLL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v4)
  {
    v3 = 0x80000002610D1A50;
  }

  *a1 = v5;
  a1[1] = v3;
}

unint64_t sub_261029944()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B4498(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_261029A0C(uint64_t a1)
{
  v2 = sub_2610371C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261029A48(uint64_t a1)
{
  v2 = sub_2610371C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t (*sub_261029A84(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FB2E8C;
}

uint64_t sub_261029B4C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_261029BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE658C0, qword_2610C8270);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE658C0, qword_2610C8270);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA135C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE658C0, qword_2610C8270);
  swift_endAccess();
}

uint64_t sub_261029D10()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9FA78();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_261029DE0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9D764();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_261029EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_261029FE4()
{
  sub_261029DE0();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(v7, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    strcpy(v6, "endFlowMessage");
    v6[15] = -18;
    LOBYTE(v3) = (*(v4 + 24))(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_260FA9980(v7, &qword_27FE63850, qword_2610CC240);
  }

  return v3 & 1;
}

uint64_t sub_26102A0D8()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    sub_261029EB0(v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v1 = (*(v4 + 8))(&type metadata for PASTargetFlowController.AnalyticsEvent, &off_287387F68, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    v5 = *(v0 + 120);
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t sub_26102A190@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
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

uint64_t PASTargetFlowController.__allocating_init()()
{
  v0 = swift_allocObject();
  PASTargetFlowController.init()();
  return v0;
}

uint64_t PASTargetFlowController.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  if (v2 >> 62 && sub_2610BD0E4())
  {
    v3 = sub_26100978C(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *(v0 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE657B0, &qword_2610C7CB0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE657B8, &qword_2610C7CB8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v0 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v0 + 80) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v0 + 88) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657D0, &qword_2610C76F0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v0 + 96) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v0 + 104) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v0 + 112) = v10;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v0 + 128) = v11;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASTargetFlowController init", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  return v1;
}

uint64_t sub_26102A598()
{
  v1[34] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657E0, &qword_2610C7708) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v1[36] = v3;
  v4 = *(v3 - 8);
  v1[37] = v4;
  v5 = *(v4 + 64) + 15;
  v1[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657F0, &qword_2610C7718);
  v1[39] = v6;
  v7 = *(v6 - 8);
  v1[40] = v7;
  v8 = *(v7 + 64) + 15;
  v1[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65768, &qword_2610C7720);
  v1[42] = v9;
  v10 = *(v9 - 8);
  v1[43] = v10;
  v11 = *(v10 + 64) + 15;
  v1[44] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = sub_2610BCC74();
  v1[47] = sub_2610BCC64();
  v14 = sub_2610BCBF4();
  v1[48] = v14;
  v1[49] = v13;

  return MEMORY[0x2822009F8](sub_26102A7DC, v14, v13);
}

uint64_t sub_26102A7DC()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[50] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController prepareFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[34];

  sub_261029D10();
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v10 = swift_unknownObjectRetain();
  v9(v10, &protocol witness table for PASTargetFlowController, ObjectType, v7);
  swift_unknownObjectRelease();
  sub_261029BDC((v0 + 9));
  v11 = v0[12];
  v12 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v11);
  v13 = *(v12 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[51] = v15;
  *v15 = v0;
  v15[1] = sub_26102AA24;

  return v17(v11, v12);
}

uint64_t sub_26102AA24()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v6 = *v0;

  v3 = *(v1 + 392);
  v4 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102AB44, v4, v3);
}

uint64_t sub_26102AB44()
{
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v2 = sub_261029D10();
  v4 = v3;
  v0[52] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 32);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[53] = v8;
  *v8 = v0;
  v8[1] = sub_26102AC78;

  return v10(ObjectType, v4);
}

uint64_t sub_26102AC78()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 392);
  v5 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102ADBC, v5, v4);
}

uint64_t sub_26102ADBC()
{
  v1 = v0[34];
  v2 = sub_2610208D0();
  v4 = v3;
  v0[54] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[55] = v8;
  *v8 = v0;
  v8[1] = sub_26102AEE8;

  return v10(ObjectType, v4);
}

uint64_t sub_26102AEE8()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 392);
  v5 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102B02C, v5, v4);
}

uint64_t sub_26102B02C()
{
  v1 = v0[34];
  sub_261020668((v0 + 19));
  v2 = v0[22];
  v3 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_26102B164;

  return (v8)(v0 + 14, v2, v3);
}

uint64_t sub_26102B164()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 392);
  v6 = *(v2 + 384);
  if (v0)
  {
    v7 = sub_26102BD00;
  }

  else
  {
    v7 = sub_26102B2A0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26102B2A0()
{
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = MEMORY[0x277D839B0];
  sub_260FADDAC(7u, 0, &unk_2610C7D50, v4, v2, MEMORY[0x277D839B0], v3);

  v6 = v0[17];
  v7 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(0, 0, &unk_2610C7D60, v8, v6, v5, v7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  v9 = v0[34];
  v10 = swift_allocObject();
  v0[58] = v10;
  swift_weakInit();

  v11 = swift_task_alloc();
  v0[59] = v11;
  *v11 = v0;
  v11[1] = sub_26102B4DC;
  v12 = v0[34];

  return sub_2610309B8(0xD000000000000012, 0x80000002610D2480, &unk_2610C7D00, 0, &unk_2610C7CF8, v10);
}

uint64_t sub_26102B4DC()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v7 = *v0;

  v4 = *(v1 + 392);
  v5 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102B624, v5, v4);
}

uint64_t sub_26102B624()
{
  v1 = v0[34];
  v2 = swift_allocObject();
  v0[60] = v2;
  swift_weakInit();
  v3 = swift_allocObject();
  v0[61] = v3;
  swift_weakInit();

  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_26102B780;
  v5 = v0[34];

  return sub_2610309B8(0xD000000000000012, 0x80000002610D2440, &unk_2610C7D18, v2, &unk_2610C7D28, v3);
}

uint64_t sub_26102B780()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 488);
  v4 = *(*v0 + 480);
  v8 = *v0;

  v5 = *(v1 + 392);
  v6 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102B8E4, v6, v5);
}

uint64_t sub_26102B8E4()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v23 = v0[42];
  v24 = v0[43];
  v4 = v0[41];
  v21 = v0[44];
  v22 = v0[40];
  v5 = v0[38];
  v20 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[34];
  v19 = v0[35];

  v9 = sub_2610BCC94();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);

  v10 = sub_2610BCC64();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  sub_261042434(0, 0, v3, &unk_2610C7D38, v11);

  sub_261020668((v0 + 24));
  v13 = v0[27];
  v14 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 24, v13);
  (*(v14 + 8))(v13, v14);
  sub_260FDD378(&unk_27FE65810, &qword_27FE64790, &qword_2610C7710);
  sub_2610BC894();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  sub_261028704();
  v15 = sub_2610BCDD4();
  v0[32] = v15;
  v16 = sub_2610BCDB4();
  (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
  sub_260FDD378(&unk_27FE65820, &unk_27FE657F0, &qword_2610C7718);
  sub_261037860(&qword_27FE65770, sub_261028704);
  sub_2610BC884();
  sub_260FA9980(v19, &unk_27FE657E0, &qword_2610C7708);

  (*(v22 + 8))(v4, v20);
  swift_allocObject();
  swift_weakInit();
  sub_260FDD378(&unk_27FE65830, &qword_27FE65768, &qword_2610C7720);
  sub_2610BC8A4();

  (*(v24 + 8))(v21, v23);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();

  v17 = v0[1];

  return v17();
}

uint64_t sub_26102BD00()
{
  v19 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 400);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 456);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    *(v0 + 264) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetFlowController registerForRequests failed with error:\n%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v13 = *(v0 + 456);
  *(v0 + 16) = v13;
  *(v0 + 64) = 1;
  v14 = v13;
  v15 = swift_task_alloc();
  *(v0 + 504) = v15;
  *v15 = v0;
  v15[1] = sub_26102BED0;
  v16 = *(v0 + 272);

  return PASTargetFlowController.stepDidEndFlow(with:)(v0 + 16);
}

uint64_t sub_26102BED0()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v6 = *v0;

  sub_260FA9980(v1 + 16, &qword_27FE65690, qword_2610C7520);
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102C00C, v4, v3);
}

uint64_t sub_26102C00C()
{
  v1 = *(v0 + 272);
  v2 = swift_allocObject();
  *(v0 + 464) = v2;
  swift_weakInit();

  v3 = swift_task_alloc();
  *(v0 + 472) = v3;
  *v3 = v0;
  v3[1] = sub_26102B4DC;
  v4 = *(v0 + 272);

  return sub_2610309B8(0xD000000000000012, 0x80000002610D2480, &unk_2610C7D00, 0, &unk_2610C7CF8, v2);
}

uint64_t sub_26102C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a1;
  return MEMORY[0x2822009F8](sub_26102C164, 0, 0);
}

uint64_t sub_26102C164()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController got message accountSelected", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 144);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (!Strong)
  {
    **(v0 + 128) = 0;
    v9 = *(v0 + 8);
LABEL_9:

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 168) = sub_260FB1E9C(*(v0 + 136), 1u);
  if (v7)
  {
    sub_260FBE4B4();
    swift_allocError();
    *v8 = xmmword_2610C7C90;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    swift_willThrow();

    v9 = *(v0 + 8);
    goto LABEL_9;
  }

  *(v0 + 176) = sub_2610BCC74();
  *(v0 + 184) = sub_2610BCC64();
  v11 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C398, v11, v10);
}

uint64_t sub_26102C398()
{
  v1 = v0[23];
  v2 = v0[20];

  swift_beginAccess();
  v0[24] = swift_unknownObjectWeakLoadStrong();
  v0[25] = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_26102C42C, 0, 0);
}

uint64_t sub_26102C42C()
{
  if (v0[24])
  {
    v12 = v0[25];
    swift_getObjectType();
    v1 = *(v12 + 24);
    v11 = v1 + *v1;
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[26] = v3;
    *v3 = v0;
    v3[1] = sub_26102C5C4;
    v5 = v0[24];
    v4 = v0[25];
    v6 = v0[21];

    __asm { BRAA            X3, X16 }
  }

  v7 = v0[22];
  v0[27] = sub_2610BCC64();
  v9 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C768, v9, v8);
}

uint64_t sub_26102C5C4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 192);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26102C6DC, 0, 0);
}

uint64_t sub_26102C6DC()
{
  v1 = *(v0 + 176);
  *(v0 + 216) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C768, v3, v2);
}

uint64_t sub_26102C768()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);

  sub_26102A190(v0 + 16);

  return MEMORY[0x2822009F8](sub_26102C7DC, 0, 0);
}

uint64_t sub_26102C7DC()
{
  v15 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v14 = 0;
  v3 = (*(v2 + 8))(&v14, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if ((v3 & 1) == 0)
  {
    v7 = *(v0 + 152);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "Received .accountSelected message but .signInForSelf feature is not enabled, indicating it should not", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v11 = *(v0 + 160);

    **(v0 + 128) = 0;
    v12 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 176);
  *(v0 + 224) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C974, v6, v5);
}

uint64_t sub_26102C974()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);

  swift_beginAccess();
  *(v0 + 232) = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_26102C9FC, 0, 0);
}

uint64_t sub_26102C9FC()
{
  v1 = *(v0 + 152);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_260F97000, v2, v3, "Received .accountSelected message and responding to source device with shouldSignInForSelf: %{BOOL,public}d", v5, 8u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 160);

  **(v0 + 128) = v6;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26102CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](sub_26102CB18, 0, 0);
}

uint64_t sub_26102CB18()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController got message performPasscodeAndBiometricSetup", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 72);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (!Strong)
  {
    **(v0 + 64) = 0;
    v9 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_2610BCC74();
  *(v0 + 88) = sub_2610BCC64();
  v8 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102CCD0, v8, v7);
}

uint64_t sub_26102CCD0()
{
  v2 = v0[10];
  v1 = v0[11];

  swift_beginAccess();
  v0[12] = swift_unknownObjectWeakLoadStrong();
  v0[13] = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_26102CD68, 0, 0);
}

uint64_t sub_26102CD68()
{
  if (*(v0 + 96))
  {
    v10 = *(v0 + 104);
    ObjectType = swift_getObjectType();
    v2 = *(v10 + 32);
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_26102CED0;
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);

    return v9(ObjectType, v5);
  }

  else
  {
    **(v0 + 64) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26102CED0(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 120) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26102CFF0, 0, 0);
}

uint64_t PASTargetFlowController.stepDidEndFlow(with:)(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  sub_2610BCC74();
  v2[39] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[40] = v4;
  v2[41] = v3;

  return MEMORY[0x2822009F8](sub_26102D0AC, v4, v3);
}

uint64_t sub_26102D0AC()
{
  v41 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_2610BC7B4();
  v0[42] = __swift_project_value_buffer(v2, qword_27FE65900);
  sub_260FA9918(v1, (v0 + 2), &qword_27FE65690, qword_2610C7520);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136446210;
    sub_260FA9918((v0 + 2), (v0 + 16), &qword_27FE65690, qword_2610C7520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65690, qword_2610C7520);
    v7 = sub_2610BCA34();
    v9 = v8;
    sub_260FA9980((v0 + 2), &qword_27FE65690, qword_2610C7520);
    v10 = sub_260FA5970(v7, v9, &v40);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidEndFlow with result\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    sub_260FA9980((v0 + 2), &qword_27FE65690, qword_2610C7520);
  }

  if ((*(v0[38] + 33) & 1) == 0)
  {
    v11 = v0[38];
    v12 = sub_261029FE4();
    v13 = v0[38];
    if (v12)
    {
      v14 = v0[38];
      v15 = sub_261029D10();
      v17 = v16;
      v0[43] = v15;
      swift_getObjectType();
      v18 = *(v17 + 64);
      v39 = v18 + *v18;
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[44] = v20;
      *v20 = v0;
      v20[1] = sub_26102D624;

      __asm { BRAA            X2, X16 }
    }
  }

  sub_261020668((v0 + 23));
  v21 = v0[26];
  v22 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v21);
  (*(v22 + 40))(v21, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v24 = v0[38];
    v25 = *(v24 + 24);
    *(v24 + 33) = 1;
    swift_getObjectType();
    v26 = *(v25 + 40);
    swift_unknownObjectRetain();
    v38 = v26 + *v26;
    v27 = v26[1];
    v28 = swift_task_alloc();
    v0[47] = v28;
    *v28 = v0;
    v28[1] = sub_26102DA88;
    v29 = v0[37];

    __asm { BRAA            X3, X16 }
  }

  v30 = v0[42];
  v31 = sub_2610BC794();
  v32 = sub_2610BCD74();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_260F97000, v31, v32, "PASTargetFlowController presenter is nil in stepDidEndFlow", v33, 2u);
    MEMORY[0x2666F8720](v33, -1, -1);
  }

  v34 = v0[38];

  *(v34 + 33) = 1;
  v35 = v0[37];
  v36 = v0[38];
  v0[48] = sub_26102A0D8();
  sub_260FA9918(v35, (v0 + 9), &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102D624(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 65) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 328);
  v8 = *(v3 + 320);
  if (v1)
  {
    v9 = sub_26102DE78;
  }

  else
  {
    v9 = sub_26102D76C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26102D76C()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  swift_unknownObjectRelease();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 65);
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidEndFlow got response from flowEnded: %{BOOL,public}d", v6, 8u);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v7 = *(v0 + 304);
  sub_261020668(v0 + 184);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v8);
  (*(v9 + 40))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 368) = Strong;
  if (Strong)
  {
    v11 = *(v0 + 304);
    v12 = *(v11 + 24);
    *(v11 + 33) = 1;
    swift_getObjectType();
    v13 = *(v12 + 40);
    swift_unknownObjectRetain();
    v25 = v13 + *v13;
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_26102DA88;
    v16 = *(v0 + 296);

    __asm { BRAA            X3, X16 }
  }

  v17 = *(v0 + 336);
  v18 = sub_2610BC794();
  v19 = sub_2610BCD74();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_260F97000, v18, v19, "PASTargetFlowController presenter is nil in stepDidEndFlow", v20, 2u);
    MEMORY[0x2666F8720](v20, -1, -1);
  }

  v21 = *(v0 + 304);

  *(v21 + 33) = 1;
  v22 = *(v0 + 296);
  v23 = *(v0 + 304);
  *(v0 + 384) = sub_26102A0D8();
  sub_260FA9918(v22, v0 + 72, &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102DA88()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 328);
  v5 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_26102DBCC, v5, v4);
}

uint64_t sub_26102DBCC()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[48] = sub_26102A0D8();
  sub_260FA9918(v1, (v0 + 9), &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102DC54()
{
  v0[31] = &type metadata for PASTargetFlowController.AnalyticsEvent;
  v0[32] = &off_287387F68;
  v1 = swift_allocObject();
  v0[28] = v1;
  sub_2610367C4((v0 + 9), v1 + 16);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_26102DD30;
  v3 = v0[48];

  return sub_2610481BC((v0 + 28), 0, 0);
}

void sub_26102DD30()
{
  v2 = *v1;
  v3 = (*v1)[49];
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[48];

    sub_2610367FC((v2 + 9));
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 28);
    v6 = v2[40];
    v7 = v2[41];

    MEMORY[0x2822009F8](sub_261024300, v6, v7);
  }
}

uint64_t sub_26102DE78()
{
  v35 = v0;
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[45];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446210;
    v0[36] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v5, v6, "PASTargetFlowController stepDidEndFlow got error sending flowEnded:%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
    v14 = v0[45];
  }

  v15 = v0[38];
  sub_261020668((v0 + 23));
  v16 = v0[26];
  v17 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v16);
  (*(v17 + 40))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v19 = v0[38];
    v20 = *(v19 + 24);
    *(v19 + 33) = 1;
    swift_getObjectType();
    v21 = *(v20 + 40);
    swift_unknownObjectRetain();
    v33 = v21 + *v21;
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[47] = v23;
    *v23 = v0;
    v23[1] = sub_26102DA88;
    v24 = v0[37];

    __asm { BRAA            X3, X16 }
  }

  v25 = v0[42];
  v26 = sub_2610BC794();
  v27 = sub_2610BCD74();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_260F97000, v26, v27, "PASTargetFlowController presenter is nil in stepDidEndFlow", v28, 2u);
    MEMORY[0x2666F8720](v28, -1, -1);
  }

  v29 = v0[38];

  *(v29 + 33) = 1;
  v30 = v0[37];
  v31 = v0[38];
  v0[48] = sub_26102A0D8();
  sub_260FA9918(v30, (v0 + 9), &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102E240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_26102E260, 0, 0);
}

uint64_t sub_26102E260()
{
  v31 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController got message proxiedAuthResults", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[5];

  sub_260FB15A0(v5, 2u, v30);
  v6 = v30[0];
  if (v30[0])
  {
    v7 = sub_260FB20C0(v0[5], 3u);
    if (v7)
    {
      v12 = v7;
      sub_260FB137C(v0[5], 4u, 4u, v30);
      v13 = v0[6];
      v14 = v30[0];
      v15 = v30[1];
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v17 = Strong;
      if (Strong)
      {
        v18 = &protocol witness table for PASTargetFlowController;
      }

      else
      {
        v18 = 0;
      }

      type metadata accessor for PASFamilyMember();
      v19 = swift_allocObject();
      v19[2] = v12;
      v19[3] = v14;
      v19[4] = v15;
      v20 = type metadata accessor for PASFlowStepLocalAuth();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      v23 = swift_allocObject();
      v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth__authenticator;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
      v25 = swift_allocObject();
      *(v25 + 16) = 0u;
      *(v25 + 32) = 0u;
      *(v25 + 48) = 0;
      *(v23 + v24) = v25;
      v26 = v23 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result;
      *v26 = 0;
      *(v26 + 8) = -1;
      *(v23 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_familyMember) = v19;
      *(v23 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_proxiedAuthResults) = v6;
      v27 = sub_26104E0E4(v17, v18);

      v28 = sub_261037860(&unk_27FE658B0, type metadata accessor for PASFlowStepLocalAuth);
      v29 = v0[1];

      return v29(v27, v28);
    }

    sub_260FBE4B4();
    swift_allocError();
    v9 = xmmword_2610C7CA0;
  }

  else
  {

    sub_260FBE4B4();
    swift_allocError();
    v9 = xmmword_2610C0790;
  }

  *v8 = v9;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_26102E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return MEMORY[0x2822009F8](sub_26102E620, 0, 0);
}

uint64_t sub_26102E620()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (!Strong)
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 104) = sub_2610BCC74();
  *(v0 + 112) = sub_2610BCC64();
  v4 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102E71C, v4, v3);
}

uint64_t sub_26102E71C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  sub_26102A190(v0 + 16);

  return MEMORY[0x2822009F8](sub_26102E790, 0, 0);
}

uint64_t sub_26102E790()
{
  v15 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v14 = 0;
  v3 = (*(v2 + 8))(&v14, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if ((v3 & 1) == 0)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "Received .selectedOwnAccount message but .signInForSelf feature is not enabled, indicating it should not", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v11 = *(v0 + 96);

    **(v0 + 80) = 0;
    v12 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 104);
  *(v0 + 120) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102E96C, v6, v5);
}

uint64_t sub_26102E96C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  swift_beginAccess();
  *(v0 + 128) = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_26102E9F4, 0, 0);
}

uint64_t sub_26102E9F4()
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
    v4 = *(v0 + 128);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_260F97000, v2, v3, "Received .selectedOwnAccount message and responding to source device with shouldSignInForSelf: %{BOOL,public}d", v5, 8u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 96);

  **(v0 + 80) = v6;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26102EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  return MEMORY[0x2822009F8](sub_26102EB54, 0, 0);
}

uint64_t sub_26102EB54()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    sub_260FC3450();
    swift_allocError();
    *v9 = 0xD00000000000001BLL;
    *(v9 + 8) = 0x80000002610D47D0;
    *(v9 + 16) = &unk_2610C8210;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    swift_willThrow();
    v10 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  v0[20] = __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = sub_2610BC794();
  v5 = sub_2610BCD84();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetFlowController got message selectedOwnAccount", v6, 2u);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v0[21] = sub_2610BCC74();
  v0[22] = sub_2610BCC64();
  v8 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102ED64, v8, v7);
}

uint64_t sub_26102ED64()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  sub_26102A190(v0 + 16);

  return MEMORY[0x2822009F8](sub_26102EDD8, 0, 0);
}

uint64_t sub_26102EDD8()
{
  v16 = v0;
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v15 = 0;
  v3 = (*(v2 + 8))(&v15, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if ((v3 & 1) == 0)
  {
    v7 = v0[20];
    v8 = sub_2610BC794();
    v9 = sub_2610BCD44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "Ending flow for Buddy setup after user selected their own account on the source device", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v11 = v0[19];

    sub_260FC3450();
    swift_allocError();
    *v12 = 0xD000000000000010;
    *(v12 + 8) = 0x80000002610D2780;
    *(v12 + 16) = &unk_2610C8220;
    *(v12 + 24) = v11;
    *(v12 + 32) = 0;
    swift_willThrow();
    v13 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v4 = v0[21];
  v0[23] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102EFB8, v6, v5);
}

uint64_t sub_26102EFB8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);

  swift_beginAccess();
  *(v0 + 192) = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_26102F040, 0, 0);
}

uint64_t sub_26102F040()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = sub_2610BC794();
  if (v1 == 1)
  {
    v4 = sub_2610BCD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController will sign in for self", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }

    v6 = *(v0 + 136);

    sub_26109339C(v7, (v0 + 16));
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
    v16 = (*(v15 + 32))(v14, v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(v0 + 72);
      v19 = *(v0 + 160);
      if (v18)
      {
        v20 = v18;
        v21 = sub_2610BC794();
        v22 = sub_2610BCD84();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_260F97000, v21, v22, "PASTargetFlowController setting client anisette provider", v23, 2u);
          MEMORY[0x2666F8720](v23, -1, -1);
        }

        v24 = *(v0 + 152);

        [v17 setLinkType_];
        type metadata accessor for PASAccountWithImage();
        v25 = swift_allocObject();
        *(v25 + 16) = v20;
        *(v25 + 24) = xmmword_2610BF320;
        v26 = type metadata accessor for PASFlowStepPersonalSignIn();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        v29 = swift_allocObject();
        v30 = sub_26103744C(v24, v25, v17, v29);

        sub_260FC3748(v0 + 16);
        v31 = sub_261037860(&unk_27FE64FC0, type metadata accessor for PASFlowStepPersonalSignIn);
        v32 = *(v0 + 8);

        return v32(v30, v31);
      }

      v39 = sub_2610BC794();
      v40 = sub_2610BCD84();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_260F97000, v39, v40, "PASTargetFlowController selectedOwnAccount accountData missing account", v41, 2u);
        MEMORY[0x2666F8720](v41, -1, -1);
      }

      v42 = *(v0 + 152);

      sub_2610368EC();
      swift_allocError();
      *v43 = 2;
      swift_willThrow();
    }

    else
    {
      v33 = *(v0 + 160);
      v34 = sub_2610BC794();
      v35 = sub_2610BCD84();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_260F97000, v34, v35, "PASTargetFlowController selectedOwnAccount accountData missing companionDevice", v36, 2u);
        MEMORY[0x2666F8720](v36, -1, -1);
      }

      v37 = *(v0 + 152);

      sub_2610368EC();
      swift_allocError();
      *v38 = 1;
      swift_willThrow();
    }

    sub_260FC3748(v0 + 16);
  }

  else
  {
    v8 = sub_2610BCD44();
    if (os_log_type_enabled(v3, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v3, v8, "Ending flow for Buddy setup after user selected their own account on the source device", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }

    v10 = *(v0 + 152);

    sub_260FC3450();
    swift_allocError();
    *v11 = 0xD000000000000010;
    *(v11 + 8) = 0x80000002610D2780;
    *(v11 + 16) = &unk_2610C8220;
    *(v11 + 24) = v10;
    *(v11 + 32) = 0;
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26102F558()
{
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_26102F600;
  v2 = *(v0 + 72);

  return PASTargetFlowController.stepDidEndFlow(with:)(v0 + 16);
}

uint64_t sub_26102F600()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v5 = *v0;

  sub_260FA9980(v1 + 16, &qword_27FE65690, qword_2610C7520);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26102F70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26102F7A4, v6, v5);
}

uint64_t sub_26102F7A4()
{
  v1 = v0[2];
  v2 = sub_2610208D0();
  v4 = v3;
  v0[6] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_26102F8D0;

  return v10(ObjectType, v4);
}

uint64_t sub_26102F8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_26102FA0C;
  }

  else
  {
    v7 = sub_261022528;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26102FA0C()
{
  v1 = v0[6];
  v2 = v0[3];

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = v3;
  v6 = sub_2610BC794();
  v7 = sub_2610BCD64();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_260F97000, v6, v7, "PASDEpendentFlowController prepareFlow failed to sendPASDeviceInfo %{public}@", v10, 0xCu);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_26102FBC4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v1 & 1) == 0 && (*(result + 33) & 1) == 0)
    {
      v3 = result;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v4 = sub_2610BC7B4();
      __swift_project_value_buffer(v4, qword_27FE65900);
      v5 = sub_2610BC794();
      v6 = sub_2610BCD64();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_260F97000, v5, v6, "PASTargetFlowController message session is dead!", v7, 2u);
        MEMORY[0x2666F8720](v7, -1, -1);
      }

      v8 = sub_2610BC794();
      v9 = sub_2610BCD64();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v26[0] = v11;
        *v10 = 136446210;
        sub_2610BCF84();

        v26[3] = 0xD00000000000002ELL;
        v26[4] = 0x80000002610D46E0;
        MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D46C0);
        v12 = sub_260FA5970(0xD00000000000002ELL, 0x80000002610D46E0, v26);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_260F97000, v8, v9, "PASTargetFlowController stepDidFinish with error\n%{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x2666F8720](v11, -1, -1);
        MEMORY[0x2666F8720](v10, -1, -1);
      }

      sub_260FC3450();
      v13 = swift_allocError();
      *v14 = 0xD00000000000001CLL;
      *(v14 + 8) = 0x80000002610D46C0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 2;
      v15 = type metadata accessor for PASFlowStepTargetError();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      v19 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65688, &unk_2610C7510);
      v20 = swift_allocObject();
      *(v18 + v19) = v20;
      *(v18 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error) = v13;
      *(v20 + 16) = 0;
      v21 = v18 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
      *(v18 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      *(v21 + 8) = &protocol witness table for PASTargetFlowController;
      swift_unknownObjectWeakAssign();
      v22 = PASFlowStepBase.init()();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        v25 = sub_261037860(&unk_27FE65870, type metadata accessor for PASFlowStepTargetError);
        (*(*(v23 + 8) + 8))(v22, v25, ObjectType);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26102FFA4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = sub_2610BCC74();
  v3[24] = sub_2610BCC64();
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v3[25] = v9;
  *v9 = v3;
  v9[1] = sub_26103012C;

  return v11(ObjectType, a2);
}

uint64_t sub_26103012C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;
  v3[26] = v0;

  v6 = v3[24];
  v7 = v3[23];
  v8 = sub_2610BCBF4();
  if (v2)
  {
    v3[27] = v8;
    v3[28] = v9;
    v10 = sub_261030290;
  }

  else
  {
    v10 = sub_261022A38;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_261030290()
{
  v51 = v0;
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 80);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (*(v0 + 104))
  {
    sub_26102880C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
LABEL_4:

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 208);
    v7 = *(v0 + 152);
    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);
    v9 = v6;
    swift_unknownObjectRetain();
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 208);
      v48 = *(v0 + 152);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50[0] = v15;
      *v13 = 136446466;
      *(v0 + 112) = v48;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
      v16 = sub_2610BCA34();
      v18 = sub_260FA5970(v16, v17, v50);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2114;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_260F97000, v10, v11, "PASTargetFlowController failed to prepare step %{public}s for presentation %{public}@", v13, 0x16u);
      sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v21 = *(v0 + 208);
    *(v0 + 16) = v21;
    *(v0 + 64) = 1;
    v22 = v21;
    v23 = swift_task_alloc();
    *(v0 + 232) = v23;
    *v23 = v0;
    v23[1] = sub_26103087C;
    v24 = *(v0 + 168);

    return PASTargetFlowController.stepDidEndFlow(with:)(v0 + 16);
  }

  v49 = *(v0 + 72);
  v26 = *(v0 + 208);
  v27 = *(v0 + 192);

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 152);
  v29 = sub_2610BC7B4();
  __swift_project_value_buffer(v29, qword_27FE65900);
  swift_unknownObjectRetain();

  v30 = sub_2610BC794();
  v31 = sub_2610BCD84();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v30, v31))
  {
    v47 = *(v0 + 152);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50[0] = v33;
    *v32 = 136446466;
    *(v0 + 128) = v47;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v34 = sub_2610BCA34();
    v36 = sub_260FA5970(v34, v35, v50);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    v37 = sub_260FA5970(v49, v3, v50);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_260F97000, v30, v31, "PASTargetFlowController skipping %{public}s.\n%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v33, -1, -1);
    MEMORY[0x2666F8720](v32, -1, -1);
  }

  else
  {
  }

  v39 = *(v0 + 176);
  v38 = *(v0 + 184);
  v40 = sub_2610BCC94();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);

  v41 = sub_2610BCC64();
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D85700];
  v42[2] = v41;
  v42[3] = v43;
  v42[4] = v5;
  v42[5] = v4;
  sub_261042434(0, 0, v39, &unk_2610C7D88, v42);

  sub_2610368EC();
  swift_allocError();
  *v44 = 0;
  swift_willThrow();

  v45 = *(v0 + 176);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_26103087C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  sub_260FA9980(v1 + 16, &qword_27FE65690, qword_2610C7520);
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_2610231D4, v4, v3);
}

uint64_t sub_2610309B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  sub_2610BCC74();
  v7[24] = sub_2610BCC64();
  v9 = sub_2610BCBF4();
  v7[25] = v9;
  v7[26] = v8;

  return MEMORY[0x2822009F8](sub_261030A5C, v9, v8);
}

uint64_t sub_261030A5C()
{
  v1 = v0[23];
  sub_261020668((v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_261030B94;

  return (v8)(v0 + 2, v2, v3);
}

uint64_t sub_261030B94()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 200);
    v6 = *(v2 + 208);
    v7 = sub_261030EDC;
  }

  else
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 208);
    v7 = sub_261030CB8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_261030CB8()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  sub_260FA9918(v0 + 16, v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  v2 = *(v0 + 120);
  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v15 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v15;
    *(v10 + 40) = v3;
    *(v10 + 48) = v9;
    *(v10 + 56) = v7;
    *(v10 + 64) = v5;
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D839B0];
    v11[2] = v2;
    v11[3] = v12;
    v11[4] = v8;
    v11[5] = v2;

    sub_260FAE028(v7, v5, 0, sub_2610376A8, v11, &unk_2610C8240, v10, v2, v12, v8);

    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  }

  else
  {
    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
    sub_260FA9980(v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_261030EDC()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  sub_260FA9918(v0 + 16, v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  v2 = *(v0 + 120);
  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v15 = v7;
    v16 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v16;
    *(v10 + 40) = v3;
    *(v10 + 48) = v9;
    *(v10 + 56) = v7;
    *(v10 + 64) = v5;
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D839B0];
    v11[2] = v2;
    v11[3] = v12;
    v11[4] = v8;
    v11[5] = v2;

    sub_260FAE028(v15, v5, 0, sub_2610376A8, v11, &unk_2610C8240, v10, v2, v12, v8);

    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  }

  else
  {
    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
    sub_260FA9980(v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_261031114(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a8;
  *(v8 + 17) = v18;
  *(v8 + 14) = a6;
  *(v8 + 15) = a7;
  *(v8 + 12) = a2;
  *(v8 + 13) = a5;
  *(v8 + 11) = a1;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  *(v8 + 18) = swift_task_alloc();
  v16 = (a3 + *a3);
  v13 = a3[1];
  v14 = swift_task_alloc();
  *(v8 + 19) = v14;
  *v14 = v8;
  v14[1] = sub_261031274;

  return v16(v8 + 49, a1, a2);
}

uint64_t sub_261031274()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (!v0)
  {
    v10 = v3[13] + *v3[13];
    v4 = *(v3[13] + 4);
    v5 = swift_task_alloc();
    v3[21] = v5;
    *v5 = v3;
    v5[1] = sub_26103144C;
    v6 = v3[14];
    v8 = v3[11];
    v7 = v3[12];

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_261031564, 0, 0);
}

uint64_t sub_26103144C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 168);
  v8 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v6 = sub_2610316D4;
  }

  else
  {
    v6 = sub_2610315CC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261031564()
{
  v1 = v0[20];
  v2 = v0[18];

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_2610315CC()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (!Strong)
  {
    v5 = *(v0 + 176);
    swift_unknownObjectRelease();
    v6 = *(v0 + 144);
    v7 = *(v0 + 49);

    v8 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  sub_2610BCC74();
  *(v0 + 208) = sub_2610BCC64();
  v4 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261031A44, v4, v3);
}

uint64_t sub_2610316D4()
{
  v28 = v0;
  v1 = *(v0 + 192);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (*(v0 + 48))
  {
    sub_26102880C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
LABEL_4:

    v6 = *(v0 + 192);
    v7 = *(v0 + 144);

    v8 = *(v0 + 8);
    v9 = 0;
    goto LABEL_5;
  }

  v11 = *(v0 + 16);
  v12 = *(v0 + 144);

  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = v4;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2610C8258;
  v15[5] = v14;

  sub_261042434(0, 0, v12, &unk_2610C8260, v15);

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 136);
  v17 = sub_2610BC7B4();
  __swift_project_value_buffer(v17, qword_27FE65900);

  v18 = sub_2610BC794();
  v19 = sub_2610BCD44();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_260FA5970(v21, v20, &v27);
    *(v22 + 12) = 2082;
    v24 = sub_260FA5970(v11, v3, &v27);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_260F97000, v18, v19, "Skipping next step presentation for %{public}s: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v23, -1, -1);
    MEMORY[0x2666F8720](v22, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 144);
  v26 = *(v0 + 49);

  v8 = *(v0 + 8);
  v9 = v26;
LABEL_5:

  return v8(v9);
}

uint64_t sub_261031A44()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[22];
  v3 = v0[23];

  sub_261031D88(v4, v3);

  return MEMORY[0x2822009F8](sub_261031ACC, 0, 0);
}

uint64_t sub_261031ACC()
{
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();
  v2 = *(v0 + 144);
  v3 = *(v0 + 49);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_261031B40(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_260FBF860;

  return v7();
}

char *sub_261031C28(char a1)
{
  if (a1)
  {
    v1 = type metadata accessor for PASFlowStepTargetProtoAccountStart();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    v4 = swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
    *(v4 + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    *(v4 + 8) = &protocol witness table for PASTargetFlowController;
    swift_unknownObjectWeakAssign();
    v5 = PASFlowStepBase.init()();
    v6 = &unk_27FE65860;
    v7 = type metadata accessor for PASFlowStepTargetProtoAccountStart;
  }

  else
  {
    v8 = type metadata accessor for PASFlowStepTargetStart();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
    *(v11 + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    *(v11 + 8) = &protocol witness table for PASTargetFlowController;
    swift_unknownObjectWeakAssign();
    v5 = PASFlowStepBase.init()();
    v6 = &unk_27FE65858;
    v7 = type metadata accessor for PASFlowStepTargetStart;
  }

  sub_261037860(v6, v7);
  return v5;
}

uint64_t sub_261031D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  swift_unknownObjectRetain();
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    v27[1] = a1;
    *v9 = 136446210;
    v27[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_260F97000, v7, v8, "PASTargetFlowController presentStep: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v2 + 24);
  if (!Strong)
  {
    v16 = sub_2610BC794();
    v17 = sub_2610BCD74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASTargetFlowController presenter is nil in stepDidFinish", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  ObjectType = swift_getObjectType();
  v20 = *(a2 + 24);
  v21 = swift_unknownObjectRetain();
  v20(v21, &protocol witness table for PASTargetFlowController, ObjectType, a2);
  v22 = *(v3 + 40);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (Strong)
  {
    v24 = swift_getObjectType();
    v25 = *(v15 + 8);
    v26 = *(v25 + 8);
    swift_unknownObjectRetain();
    v26(a1, a2, v24, v25);
    return swift_unknownObjectRelease_n();
  }

  return result;
}

void *PASTargetFlowController.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260F99170((v1 + 2));
  v6 = v1[5];
  swift_unknownObjectRelease();
  v7 = v1[7];

  v8 = v1[8];

  v9 = v1[9];

  v10 = v1[10];

  v11 = v1[11];

  v12 = v1[12];

  v13 = v1[13];

  v14 = v1[14];

  v15 = v1[15];

  v16 = v1[16];

  return v1;
}

uint64_t PASTargetFlowController.__deallocating_deinit()
{
  PASTargetFlowController.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t (*sub_2610321C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FBF87C;
}

uint64_t sub_2610322A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_26102A598();
}

uint64_t sub_261032334(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return sub_26102FFA4(a1, a2);
}

uint64_t PASTargetFlowController.performAIDASignIn(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2[6] = v1;
  v2[7] = v3;
  sub_2610BCC74();
  v2[8] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_261032478, v5, v4);
}

uint64_t sub_261032478()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController performAIDASignIn", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v7 = v0[7];
    v8 = *(v0[6] + 24);
    ObjectType = swift_getObjectType();
    v0[5] = v7;
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v20 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_26103274C;

    return (v20)(v0 + 5, ObjectType, v8);
  }

  else
  {
    v14 = sub_2610BC794();
    v15 = sub_2610BCD74();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[8];
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v14, v15, "PASTargetFlowController presenter is nil in performAIDASignIn", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }

    v19 = v0[1];

    return v19(0);
  }
}

uint64_t sub_26103274C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v5 = *(v2 + 80);
  v6 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_261032898, v6, v5);
}

uint64_t sub_261032898()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  swift_unknownObjectRelease();

  v3 = *(v0 + 104);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t PASTargetFlowController.stepDidFinish(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  swift_unknownObjectRetain();
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136446210;
    v19[3] = a1;
    v19[4] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65780, &qword_2610C7DB0);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_260F97000, v7, v8, "PASTargetFlowController stepDidFinish %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 16))(ObjectType, a2);
  v16 = v15;
  v17 = swift_unknownObjectRetain();
  sub_261031D88(v17, v16);
  return swift_unknownObjectRelease_n();
}

uint64_t PASTargetFlowController.stepDidRequestReset(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = sub_2610BCC74();
  v3[12] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x2822009F8](sub_261033094, v6, v5);
}

uint64_t sub_261033094()
{
  v37 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  swift_unknownObjectRetain();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v34 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136446210;
    *(v0 + 40) = v34;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v7 = sub_2610BCA34();
    v9 = sub_260FA5970(v7, v8, &v36);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidRequestReset %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

  v14 = sub_2610BCC64();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  sub_261042434(0, 0, v11, &unk_2610C7DC8, v15);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (!Strong)
  {
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_260F97000, v18, v19, "PASTargetFlowController presenter is nil in stepDidRequestReset", v20, 2u);
      MEMORY[0x2666F8720](v20, -1, -1);
    }
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = v21;
  if (v21)
  {
    v22 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 8);
    v25 = *(v24 + 16);
    v35 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 136) = v27;
    *v27 = v0;
    v27[1] = sub_261025A54;
    v29 = *(v0 + 56);
    v28 = *(v0 + 64);

    return v35(v29, v28, ObjectType, v24);
  }

  else
  {
    v31 = *(v0 + 96);
    swift_unknownObjectRelease();

    v32 = *(v0 + 80);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_2610334D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2610BCC74();
  v4[4] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_261033568, v6, v5);
}

uint64_t sub_261033568()
{
  v1 = v0[3];
  v2 = sub_261029D10();
  v4 = v3;
  v0[7] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 48);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_261033694;

  return v10(ObjectType, v4);
}

uint64_t sub_261033694(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 72) = v1;

  v7 = *(v3 + 48);
  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_261033914;
  }

  else
  {
    v9 = sub_2610337DC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2610337DC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = sub_2610BC794();
  v5 = sub_2610BCD84();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v6;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetFlowController stepDidRequestReset got response from sendReset %{BOOL,public}d", v7, 8u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_261033914()
{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[4];

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = v3;
  v6 = sub_2610BC794();
  v7 = sub_2610BCD64();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v0[2] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v13 = sub_2610BCA34();
    v15 = sub_260FA5970(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_260F97000, v6, v7, "PASTargetFlowController stepDidRequestReset got error sending flowReset.%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t PASTargetFlowController.stepDidRequestCancel(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2610BCC74();
  v3[16] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v3[17] = v5;
  v3[18] = v4;

  return MEMORY[0x2822009F8](sub_261033B94, v5, v4);
}

uint64_t sub_261033B94()
{
  v42 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_27FE65900);
  swift_unknownObjectRetain();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v38 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v41 = v6;
    *v5 = 136446210;
    *(v0 + 80) = v38;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v7 = sub_2610BCA34();
    v9 = sub_260FA5970(v7, v8, &v41);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidRequestCancel %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  if (*(*(v0 + 120) + 33))
  {
    v10 = *(v0 + 120);
    sub_261020668(v0 + 16);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    (*(v12 + 40))(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 184) = Strong;
    if (!Strong)
    {
      v14 = *(v0 + 152);
      v15 = sub_2610BC794();
      v16 = sub_2610BCD74();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_260F97000, v15, v16, "PASTargetFlowController presenter is nil in stepDidRequestCancel", v17, 2u);
        MEMORY[0x2666F8720](v17, -1, -1);
      }
    }

    *(*(v0 + 120) + 33) = 1;
    v18 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = v18;
    if (v18)
    {
      v19 = *(*(v0 + 120) + 24);
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = *(v21 + 24);
      v39 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      *(v0 + 200) = v24;
      *v24 = v0;
      v24[1] = sub_261026C0C;
      v26 = *(v0 + 104);
      v25 = *(v0 + 112);

      return v39(v26, v25, ObjectType, v21);
    }

    else
    {
      v36 = *(v0 + 128);
      swift_unknownObjectRelease();

      v37 = *(v0 + 8);

      return v37();
    }
  }

  else
  {
    v28 = *(v0 + 120);
    v29 = sub_261029D10();
    v31 = v30;
    *(v0 + 160) = v29;
    v32 = swift_getObjectType();
    v33 = *(v31 + 56);
    v40 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 168) = v35;
    *v35 = v0;
    v35[1] = sub_261034084;

    return v40(v32, v31);
  }
}

uint64_t sub_261034084(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 144);
  v8 = *(v3 + 136);
  if (v1)
  {
    v9 = sub_2610344D0;
  }

  else
  {
    v9 = sub_2610341CC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2610341CC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidRequestCancel got response from sendCancelFlow %{BOOL,public}d", v6, 8u);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v7 = *(v0 + 120);
  sub_261020668(v0 + 16);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  (*(v9 + 40))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
    v11 = *(v0 + 152);
    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASTargetFlowController presenter is nil in stepDidRequestCancel", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }
  }

  *(*(v0 + 120) + 33) = 1;
  v15 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = v15;
  if (v15)
  {
    v16 = *(*(v0 + 120) + 24);
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 8);
    v19 = *(v18 + 24);
    v27 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_261026C0C;
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);

    return v27(v23, v22, ObjectType, v18);
  }

  else
  {
    v25 = *(v0 + 128);
    swift_unknownObjectRelease();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_2610344D0()
{
  v37 = v0;
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136446210;
    v0[12] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v36);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v5, v6, "PASTargetFlowController stepDidRequestCancel got error sending flowCancel. %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
    v14 = v0[22];
  }

  v15 = v0[15];
  sub_261020668((v0 + 2));
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  (*(v17 + 40))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    v19 = v0[19];
    v20 = sub_2610BC794();
    v21 = sub_2610BCD74();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_260F97000, v20, v21, "PASTargetFlowController presenter is nil in stepDidRequestCancel", v22, 2u);
      MEMORY[0x2666F8720](v22, -1, -1);
    }
  }

  *(v0[15] + 33) = 1;
  v23 = swift_unknownObjectWeakLoadStrong();
  v0[24] = v23;
  if (v23)
  {
    v24 = *(v0[15] + 24);
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 8);
    v27 = *(v26 + 24);
    v35 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[25] = v29;
    *v29 = v0;
    v29[1] = sub_261026C0C;
    v31 = v0[13];
    v30 = v0[14];

    return v35(v31, v30, ObjectType, v26);
  }

  else
  {
    v33 = v0[16];
    swift_unknownObjectRelease();

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_261034884(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FBF874;

  return PASTargetFlowController.performAIDASignIn(with:)(a1);
}

uint64_t sub_261034918(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return PASTargetFlowController.stepDidEndFlow(with:)(a1);
}

uint64_t sub_2610349B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASTargetFlowController.stepDidRequestReset(_:)(a1, a2);
}

uint64_t sub_261034A54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASTargetFlowController.stepDidRequestCancel(_:)(a1, a2);
}

uint64_t PASTargetFlowController.handleReset()()
{
  v1[5] = v0;
  sub_2610BCC74();
  v1[6] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_261034B90, v3, v2);
}

uint64_t sub_261034B90()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController handleReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    v0[10] = v7;
    if (v7)
    {
      v8 = *(v0[5] + 24);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      v11 = *(v10 + 32);
      v22 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      v0[11] = v13;
      *v13 = v0;
      v13[1] = sub_261034E80;

      return v22(ObjectType, v10);
    }

    v19 = v0[6];
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v0[6];

    v16 = sub_2610BC794();
    v17 = sub_2610BCD74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASTargetFlowController presenter is nil in handleReset", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  v20 = v0[1];
  v21 = v0[9] != 0;

  return v20(v21);
}

uint64_t sub_261034E80()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_261034FC4, v5, v4);
}

uint64_t sub_261034FC4()
{
  v1 = v0[9];
  v2 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[9] != 0;

  return v3(v4);
}

uint64_t PASTargetFlowController.handleCancel()()
{
  v1[9] = v0;
  sub_2610BCC74();
  v1[10] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_2610350D4, v3, v2);
}

uint64_t sub_2610350D4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController handleCancel", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_260FBE4B4();
  v5 = swift_allocError();
  *v6 = 1;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 5;
  *(v0 + 16) = v5;
  *(v0 + 64) = 1;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_261035260;
  v8 = *(v0 + 72);

  return sub_26103540C(v0 + 16);
}

uint64_t sub_261035260(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(v3 + 65) = a1;

  sub_260FA9980(v3 + 16, &qword_27FE65690, qword_2610C7520);
  v5 = *(v2 + 96);
  v6 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_2610353A8, v6, v5);
}

uint64_t sub_2610353A8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);
  v3 = *(v0 + 65);

  return v2(v3);
}

uint64_t sub_26103540C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_2610BCC74();
  v2[7] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_2610354A4, v4, v3);
}

uint64_t sub_2610354A4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController shutDown", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v7 = *(v0[6] + 24);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 40);
    swift_unknownObjectRetain();
    v20 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_261035778;
    v12 = v0[5];

    return v20(v12, ObjectType, v7);
  }

  else
  {
    v14 = v0[7];

    v15 = sub_2610BC794();
    v16 = sub_2610BCD74();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_260F97000, v15, v16, "PASTargetFlowController presenter is nil", v17, 2u);
      MEMORY[0x2666F8720](v17, -1, -1);
    }

    v18 = v0[1];
    v19 = v0[10] != 0;

    return v18(v19);
  }
}

uint64_t sub_261035778()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2610358BC, v5, v4);
}

uint64_t sub_2610358BC()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  swift_unknownObjectRelease();

  *(v2 + 33) = 1;
  v4 = v0[1];
  v5 = v0[10] != 0;

  return v4(v5);
}

uint64_t PASTargetFlowController.handleEndFlow()()
{
  v1[9] = v0;
  sub_2610BCC74();
  v1[10] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_2610359D4, v3, v2);
}

uint64_t sub_2610359D4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController handleEndFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 72);

  if (*(v5 + 40) && (type metadata accessor for PASFlowStepTargetStart(), swift_dynamicCastClass()))
  {
    sub_260FBE4B4();
    v6 = swift_allocError();
    *v7 = 0xD000000000000033;
    *(v7 + 8) = 0x80000002610D4710;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 4;
    *(v0 + 16) = v6;
    *(v0 + 64) = 1;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_261035BDC;
    v9 = *(v0 + 72);

    return sub_26103540C(v0 + 16);
  }

  else
  {
    v11 = *(v0 + 80);

    v12 = *(v0 + 8);

    return v12(1);
  }
}

uint64_t sub_261035BDC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(v3 + 65) = a1;

  sub_260FA9980(v3 + 16, &qword_27FE65690, qword_2610C7520);
  v5 = *(v2 + 96);
  v6 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_261035D24, v6, v5);
}

uint64_t sub_261035D24()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 65);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_261035D88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASTargetFlowController.handleReset()();
}

uint64_t sub_261035E14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASTargetFlowController.handleCancel()();
}

uint64_t sub_261035EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBCD00;

  return PASTargetFlowController.handleEndFlow()();
}

unint64_t sub_261035F2C()
{
  sub_2610367C4(v0, v15);
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v14 = v16;
  sub_260FA9918(v13, v11, &qword_27FE65690, qword_2610C7520);
  if (v12 == 1)
  {
    v1 = *&v11[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0x726F727245;
    *(inited + 40) = 0xE500000000000000;
    swift_getErrorValue();
    v3 = sub_2610BD4A4();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    v5 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63BA0, &qword_2610BED60);
  }

  else
  {
    v10[0] = v11[0];
    v10[1] = v11[1];
    v10[2] = v11[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_2610BF400;
    *(v6 + 32) = 0x746C75736552;
    *(v6 + 40) = 0xE600000000000000;
    v7 = PASTargetFlowResultSuccess.description.getter();
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 80) = &protocol witness table for String;
    *(v6 + 48) = v7;
    *(v6 + 56) = v8;
    v5 = sub_260FA8F34(v6);
    swift_setDeallocating();
    sub_260FA9980(v6 + 32, &qword_27FE63BA0, &qword_2610BED60);
    sub_26103731C(v10);
  }

  sub_260FA9980(v13, &qword_27FE65690, qword_2610C7520);
  return v5;
}

unint64_t sub_261036130()
{
  sub_2610367C4(v0, v2);
  sub_260FA9980(v2, &qword_27FE65690, qword_2610C7520);
  return 0xD000000000000027;
}

uint64_t sub_261036194(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_261036288;

  return sub_261031114(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_261036288(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_26103639C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260FBDE14;

  return sub_26102E240(a1, a2, v2);
}

uint64_t sub_261036444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_26102E600(a1, a2, a3, v3);
}

uint64_t sub_2610364F8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2610378A8;

  return sub_26102EB34(a1, a2, v2);
}

uint64_t sub_2610365A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_26102F70C(a1, v4, v5, v6);
}

uint64_t sub_26103665C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FB6DB4;

  return sub_26102C140(a1, a2, a3, v3);
}

uint64_t sub_261036710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_26102CAF8(a1, a2, a3, v3);
}

uint64_t sub_26103682C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_261023250(a1, v4, v5, v7);
}

unint64_t sub_2610368EC()
{
  result = qword_27FE65850;
  if (!qword_27FE65850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65850);
  }

  return result;
}

uint64_t sub_261036940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_261025284(a1, v4, v5, v7);
}

uint64_t sub_261036A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_2610334D0(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PASTargetFlowControllerProtocol.prepareFlow()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASTargetFlowControllerProtocol.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBF860;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASTargetFlowController.prepareFlow()()
{
  v2 = *(*v0 + 416);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return v6();
}

uint64_t dispatch thunk of PASTargetFlowController.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 424);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FBF860;

  return v10(a1, a2);
}

unint64_t sub_261037190(void *a1)
{
  a1[1] = sub_2610371C8();
  a1[2] = sub_26103721C();
  result = sub_261037270();
  a1[3] = result;
  return result;
}

unint64_t sub_2610371C8()
{
  result = qword_27FE65880;
  if (!qword_27FE65880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65880);
  }

  return result;
}

unint64_t sub_26103721C()
{
  result = qword_27FE65888;
  if (!qword_27FE65888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65888);
  }

  return result;
}

unint64_t sub_261037270()
{
  result = qword_27FE65890;
  if (!qword_27FE65890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65890);
  }

  return result;
}

unint64_t sub_2610372C8()
{
  result = qword_27FE65898;
  if (!qword_27FE65898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65898);
  }

  return result;
}

uint64_t sub_261037370()
{
  v0 = sub_2610BD154();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2610373BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_26102F538(v0);
}

char *sub_26103744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(a4 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(a4 + v9) = v10;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v12 = swift_allocObject();
  *(a4 + v11) = v12;
  v13 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result;
  *(v13 + 8) = -1;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v13 = 0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_account) = a2;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_companionDevice) = a3;
  *(v12 + 48) = 0;
  v14 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v14 + 8) = &protocol witness table for PASTargetFlowController;
  swift_unknownObjectWeakAssign();
  return PASFlowStepBase.init()();
}

void sub_2610375B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_260FBF860;

  JUMPOUT(0x261036194);
}

uint64_t sub_2610376D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_260FBF860;

  return sub_261031B40(v2, v3, v5);
}

uint64_t sub_261037794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_26106C760(a1, v4, v5, v7);
}

uint64_t sub_261037860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of PASExtensionCacheProtocol.designatedExtension()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3);
}

uint64_t sub_2610379FC()
{
  type metadata accessor for PASExtensionLocator();
  inited = swift_initStackObject();
  v0[13] = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658E0, &unk_2610C8358);
  v2 = swift_initStackObject();
  v0[14] = v2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(inited + 16) = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_261037AD8;
  v4 = v0[12];

  return sub_261051B7C(v4);
}

uint64_t sub_261037AD8()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (!v0)
  {
    v4 = v3[13];
    swift_setDeallocating();
    v5 = *(v4 + 16);

    v6 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261037C24, 0, 0);
}

uint64_t sub_261037C24()
{
  v1 = v0[13];
  swift_setDeallocating();
  v2 = *(v1 + 16);

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_261037C94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 136))
  {
    v5 = *(v0 + 136);
  }

  else
  {
    v6 = sub_2610BCC94();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_261038850();
    v8 = swift_allocObject();
    v8[2] = v0;
    v8[3] = v7;
    v8[4] = v0;
    swift_retain_n();
    v5 = sub_261042A48(0, 0, v4, &unk_2610C8340, v8);
    v9 = *(v0 + 136);
    *(v0 + 136) = v5;
  }

  return v5;
}

uint64_t sub_261037DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x2822009F8](sub_261037DF4, a4, 0);
}

uint64_t sub_261037DF4()
{
  v26 = v0;
  v1 = *(v0[10] + 128);

  sub_2610902EC((v0 + 2));

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v24 = 3;
  LOBYTE(v1) = (*(v3 + 8))(&v24, v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    v0[11] = __swift_project_value_buffer(v4, qword_27FE65900);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260F97000, v5, v6, "PASExtensionCache task is locating extensions", v7, 2u);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v8 = v0[10];

    v9 = *(v8 + 120);
    v23 = (*(v8 + 112) + **(v8 + 112));
    v10 = *(*(v8 + 112) + 4);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_261038174;

    return v23(v0 + 7);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v13 = sub_2610BC7B4();
    __swift_project_value_buffer(v13, qword_27FE65900);
    v14 = sub_2610BC794();
    v15 = sub_2610BCD44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446210;
      v18 = sub_2610BCFA4();
      v20 = sub_260FA5970(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_260F97000, v14, v15, "PASExtensionCache task %{public}s feature flag is disabled", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x2666F8720](v17, -1, -1);
      MEMORY[0x2666F8720](v16, -1, -1);
    }

    v21 = v0[9];
    *v21 = 0;
    v21[1] = 0;
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_261038174()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_261038498;
  }

  else
  {
    v6 = sub_2610382A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2610382A0()
{
  v20 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[11];
  if (v1)
  {
    v4 = v0[7];

    v5 = v2;
    v6 = sub_2610BC794();
    v7 = sub_2610BCD44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446210;
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v10 = sub_2610BC764();
      v12 = sub_260FA5970(v10, v11, &v19);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_260F97000, v6, v7, "PASExtensionCache task found an extension: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x2666F8720](v9, -1, -1);
      MEMORY[0x2666F8720](v8, -1, -1);
      sub_2610389C0(v1, v2);
    }

    else
    {

      sub_2610389C0(v1, v2);
    }
  }

  else
  {
    v13 = sub_2610BC794();
    v14 = sub_2610BCD44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASExtensionCache task found no extensions", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }
  }

  v16 = v0[9];
  *v16 = v1;
  v16[1] = v2;
  v17 = v0[1];

  return v17();
}

uint64_t sub_261038498()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASExtensionCache task failed to fetch designated picker extension: %{public}@", v8, 0xCu);
    sub_261038958(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[9];
  *v12 = 0;
  v12[1] = 0;
  v13 = v0[1];

  return v13();
}

uint64_t sub_2610385F0()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26103865C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_26103867C);
}

uint64_t sub_26103867C()
{
  v1 = v0[3];
  v2 = sub_261037C94();
  v0[4] = v2;
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  *v4 = v0;
  v4[1] = sub_261038740;
  v6 = v0[2];

  return MEMORY[0x282200460](v6, v2, v5);
}

uint64_t sub_261038740()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_261038850()
{
  result = qword_27FE658D8;
  if (!qword_27FE658D8)
  {
    type metadata accessor for PASExtensionCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE658D8);
  }

  return result;
}

uint64_t sub_2610388A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_261037DD4(a1, v4, v5, v6);
}

uint64_t sub_261038958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2610389C0(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_261038A08()
{
  sub_260FA9918(v0, &v3, &unk_27FE656B0, &unk_2610BFCE0);
  if (v4)
  {
    sub_260FA9F80(&v3, v5);
    sub_260FA99E0(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
    type metadata accessor for PASFamilyMember();
    if (swift_dynamicCast())
    {

      v1 = 0x6E65646E65706564;
    }

    else
    {
      v1 = 0x6C616E6F73726570;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    sub_260FA9980(&v3, &unk_27FE656B0, &unk_2610BFCE0);
    return 1701736302;
  }

  return v1;
}

uint64_t PASFlowResultAccountTypeObjc.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E65646E65706564;
    case 2:
      return 1701736302;
    case 1:
      return 0x6C616E6F73726570;
  }

  result = sub_2610BD424();
  __break(1u);
  return result;
}

unint64_t PASFlowResultAccountTypeObjc.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_261038BB0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_261038BCC()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x6E65646E65706564;
  }

  if (v1 == 2)
  {
    return 1701736302;
  }

  if (v1 == 1)
  {
    return 0x6C616E6F73726570;
  }

  v3 = *v0;
  result = sub_2610BD424();
  __break(1u);
  return result;
}

uint64_t PASFlowResultAccountTypeObjc.toParsable()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = MEMORY[0x277D83B88];
  *a2 = result;
  return result;
}

unint64_t sub_261038C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_261039DD4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_261038CC4(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = MEMORY[0x277D83B88];
  *a1 = v2;
}

id sub_261038E6C(void (*a1)(void))
{
  sub_260FA9918(v1 + OBJC_IVAR___PASSourceFlowResult_result, &v8, &unk_27FE656D0, &unk_2610C0550);
  if (v11 == 1)
  {
    v3 = &unk_27FE656D0;
    v4 = &unk_2610C0550;
LABEL_7:
    sub_260FA9980(&v8, v3, v4);
    return 0;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  sub_260FA9918(v12, &v8, &unk_27FE656B0, &unk_2610BFCE0);
  sub_261029488(v12);
  if (!*(&v9 + 1))
  {
    v3 = &unk_27FE656B0;
    v4 = &unk_2610BFCE0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  a1(0);
  if (swift_dynamicCast())
  {
    v5 = *(v7 + 16);

    return v5;
  }

  return 0;
}

unint64_t PASSourceFlowResultObjc.description.getter()
{
  v1 = 0xD00000000000001BLL;
  sub_260FA9918(v0 + OBJC_IVAR___PASSourceFlowResult_result, v4, &unk_27FE656D0, &unk_2610C0550);
  if (v5 == 1)
  {
    v2 = v4[0];
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D48A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    sub_2610BD0A4();

    return 0;
  }

  else
  {
    sub_260FA9980(v4, &unk_27FE656D0, &unk_2610C0550);
  }

  return v1;
}

uint64_t sub_261039310(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(_OWORD *))
{
  sub_260FA9918(v4 + *a1, &v9, a2, a3);
  if (v12)
  {
    sub_260FA9980(&v9, a2, a3);
    return 2;
  }

  v13[0] = v9;
  v13[1] = v10;
  v13[2] = v11;
  sub_260FA9918(v13, &v9, &unk_27FE656B0, &unk_2610BFCE0);
  a4(v13);
  if (*(&v10 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
    type metadata accessor for PASFamilyMember();
    if (swift_dynamicCast())
    {

      return 0;
    }
  }

  else
  {
    sub_260FA9980(&v9, &unk_27FE656B0, &unk_2610BFCE0);
  }

  return 1;
}

id sub_2610394E4(void (*a1)(void))
{
  sub_260FA9918(v1 + OBJC_IVAR___PASTargetFlowResult_result, &v8, &qword_27FE65690, qword_2610C7520);
  if (v11 == 1)
  {
    v3 = &qword_27FE65690;
    v4 = qword_2610C7520;
LABEL_7:
    sub_260FA9980(&v8, v3, v4);
    return 0;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  sub_260FA9918(v12, &v8, &unk_27FE656B0, &unk_2610BFCE0);
  sub_26103731C(v12);
  if (!*(&v9 + 1))
  {
    v3 = &unk_27FE656B0;
    v4 = &unk_2610BFCE0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  a1(0);
  if (swift_dynamicCast())
  {
    v5 = *(v7 + 16);

    return v5;
  }

  return 0;
}

id sub_261039680(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(_OWORD *))
{
  sub_260FA9918(v4 + *a1, v13, a2, a3);
  if (v15)
  {
    sub_260FA9980(v13, a2, a3);
  }

  else
  {
    v16[0] = v13[0];
    v16[1] = v13[1];
    v16[2] = v14;
    if (*(&v14 + 1))
    {

      sub_260FDF8D0(v8);
      v9 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v10 = sub_2610BC8F4();

      v11 = [v9 initWithDictionary_];

      a4(v16);

      return v11;
    }

    a4(v16);
  }

  return 0;
}

id sub_2610397C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  sub_260FA9918(a1 + *a3, v11, a4, a5);
  if (v12 == 1)
  {
    v7 = v11[0];
    v8 = sub_2610BC4E4();

    v9 = v8;
  }

  else
  {
    sub_260FA9980(v11, a4, a5);
    v9 = 0;
  }

  return v9;
}

uint64_t sub_261039874(void *a1, uint64_t *a2, uint64_t *a3)
{
  sub_260FA9918(v3 + *a1, v7, a2, a3);
  if (v8 == 1)
  {
    return v7[0];
  }

  sub_260FA9980(v7, a2, a3);
  return 0;
}

id sub_261039904(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = objc_allocWithZone(v4);
  sub_260FA9918(a1, v9 + *a2, a3, a4);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_260FA9980(a1, a3, a4);
  return v10;
}

id sub_2610399B4(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  ObjectType = swift_getObjectType();
  sub_260FA9918(a1, v4 + *a2, a3, a4);
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_260FA9980(a1, a3, a4);
  return v10;
}

id sub_261039A60(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2610BC9D4();

  return v5;
}

unint64_t PASTargetFlowResultObjc.description.getter()
{
  v1 = 0xD00000000000001BLL;
  sub_260FA9918(v0 + OBJC_IVAR___PASTargetFlowResult_result, v4, &qword_27FE65690, qword_2610C7520);
  if (v5 == 1)
  {
    v2 = v4[0];
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D4910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    sub_2610BD0A4();

    return 0;
  }

  else
  {
    sub_260FA9980(v4, &qword_27FE65690, qword_2610C7520);
  }

  return v1;
}

id _s21ProximityAppleIDSetup23PASSourceFlowResultObjcCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PASFlowResultObjc.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASFlowResultObjc.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASFlowResultObjc();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PASFlowResultObjc.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASFlowResultObjc();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_261039DD4(uint64_t a1)
{
  sub_260FA3F5C(a1, v3);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v2 <= 2)
  {
    return v2;
  }

  return 0;
}

unint64_t sub_261039E64()
{
  result = qword_27FE658F8;
  if (!qword_27FE658F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE658F8);
  }

  return result;
}

uint64_t sub_261039ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_261039F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_26103A218(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2610BC7B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2610BC7A4();
}

uint64_t sub_26103A2B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2610BC7B4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void Logger.pas_ifError(_:message:)(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE640D0, &qword_2610C8610);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2610BF400;
    swift_getErrorValue();
    v3 = a1;
    v4 = sub_2610BD4A4();
    v6 = v5;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_260FC4240();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    v7 = sub_2610BCA14();
    v9 = v8;
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      v14 = sub_260FA5970(v7, v9, &v15);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_260F97000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    else
    {
    }
  }
}

void Logger.pas_ifErrorElse(_:message:debug:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {

    Logger.pas_ifError(_:message:)(a1);
  }

  else
  {

    oslog = sub_2610BC794();
    v7 = sub_2610BCD54();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_260FA5970(a4, a5, &v11);
      _os_log_impl(&dword_260F97000, oslog, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x2666F8720](v9, -1, -1);
      MEMORY[0x2666F8720](v8, -1, -1);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26103A6C4(uint64_t a1, void *a2)
{
  if (!a1 || !*(a1 + 16))
  {

    return a2;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v8;
LABEL_16:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    sub_260FA9708(*(a1 + 48) + 40 * v14, v30);
    sub_260FA3F5C(*(a1 + 56) + 32 * v14, v29);
    v32 = v30[0];
    v33 = v30[1];
    *&v34 = v31;
    sub_260FA6A84(v29, (&v34 + 8));
    v12 = v10;
LABEL_17:
    v39[0] = v34;
    v39[1] = v35;
    v40 = v36;
    v37 = v32;
    v38 = v33;
    if (!*(&v33 + 1))
    {

      return a2;
    }

    v32 = v37;
    v33 = v38;
    *&v34 = *&v39[0];
    sub_260FA6A84((v39 + 8), v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29[0] = a2;
    v16 = sub_260FA60B4(&v32);
    v18 = a2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (a2[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v27 = v16;
      sub_261098DA4();
      v16 = v27;
      a2 = *&v29[0];
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_7:
      v9 = (a2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      sub_260FA6A84(v30, v9);
      sub_260FA9764(&v32);
      v8 = v12;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_261097330(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_260FA60B4(&v32);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      a2 = *&v29[0];
      if (v22)
      {
        goto LABEL_7;
      }

LABEL_24:
      a2[(v16 >> 6) + 8] |= 1 << v16;
      v24 = v16;
      sub_260FA9708(&v32, a2[6] + 40 * v16);
      sub_260FA6A84(v30, (a2[7] + 32 * v24));
      sub_260FA9764(&v32);
      v25 = a2[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_35;
      }

      a2[2] = v26;
      v8 = v12;
      if (!v6)
      {
LABEL_9:
        if (v7 <= v8 + 1)
        {
          v11 = v8 + 1;
        }

        else
        {
          v11 = v7;
        }

        v12 = v11 - 1;
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v7)
          {
            v6 = 0;
            v36 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            goto LABEL_17;
          }

          v6 = *(a1 + 64 + 8 * v10);
          ++v8;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

uint64_t sub_26103A9B0(uint64_t a1, void *a2)
{
  if (a1 && (v3 = a1, *(a1 + 16)))
  {
    v4 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v35 = v3;
    while (v7)
    {
      v13 = v9;
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v13 << 6);
      v15 = *(v3 + 56);
      v16 = (*(v3 + 48) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v15 + 8 * v14);

      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_260FA5FBC(v18, v17);
      v24 = a2[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_26;
      }

      v28 = v23;
      if (a2[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v22;
          sub_2610990C4();
          v22 = v33;
        }
      }

      else
      {
        sub_261097A0C(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_260FA5FBC(v18, v17);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_28;
        }
      }

      v7 &= v7 - 1;
      if (v28)
      {
        v10 = v22;

        v11 = a2[7];
        v12 = *(v11 + 8 * v10);
        *(v11 + 8 * v10) = v20;
      }

      else
      {
        a2[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (a2[6] + 16 * v22);
        *v30 = v18;
        v30[1] = v17;
        *(a2[7] + 8 * v22) = v20;
        v31 = a2[2];
        v26 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v26)
        {
          goto LABEL_27;
        }

        a2[2] = v32;
      }

      v9 = v13;
      v3 = v35;
    }

    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v8)
      {

        return a2;
      }

      v7 = *(v4 + 8 * v13);
      ++v9;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_2610BD444();
    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t sub_26103ABE4(uint64_t a1, void *a2)
{
  if (!a1 || !*(a1 + 16))
  {

    return a2;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v8;
LABEL_16:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_260FA99E0(*(a1 + 56) + 40 * v15, v35);
    *&v36 = v18;
    *(&v36 + 1) = v17;
    sub_260F98E14(v35, &v37);

    v13 = v11;
LABEL_17:
    v40 = v36;
    v41[0] = v37;
    v41[1] = v38;
    v42 = v39;
    v19 = *(&v36 + 1);
    if (!*(&v36 + 1))
    {

      return a2;
    }

    v20 = v40;
    sub_260F98E14(v41, &v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = a2;
    v22 = sub_260FA5FBC(v20, v19);
    v24 = a2[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (a2[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v33 = v22;
      sub_261099230();
      v22 = v33;
      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_7:
      v9 = v22;

      a2 = *&v35[0];
      v10 = (*(*&v35[0] + 56) + 40 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      sub_260F98E14(&v36, v10);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_261097CB0(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_260FA5FBC(v20, v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      if (v28)
      {
        goto LABEL_7;
      }

LABEL_24:
      a2 = *&v35[0];
      *(*&v35[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v30 = (a2[6] + 16 * v22);
      *v30 = v20;
      v30[1] = v19;
      sub_260F98E14(&v36, a2[7] + 40 * v22);
      v31 = a2[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_35;
      }

      a2[2] = v32;
      v8 = v13;
      if (!v6)
      {
LABEL_9:
        if (v7 <= v8 + 1)
        {
          v12 = v8 + 1;
        }

        else
        {
          v12 = v7;
        }

        v13 = v12 - 1;
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v7)
          {
            v6 = 0;
            v39 = 0;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            goto LABEL_17;
          }

          v6 = *(a1 + 64 + 8 * v11);
          ++v8;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

uint64_t Dictionary.pas_and(_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2610BCE64();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v71 = v59 - v13;
  v61 = *(a4 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a3 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = sub_2610BCE64();
  v21 = *(v74 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v74);
  v25 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v73 = v59 - v26;
  if (a1)
  {

    if (MEMORY[0x2666F7240](v27, a3, a4, a5))
    {

      goto LABEL_4;
    }

    v79 = a2;
    v77 = a4;
    v63 = v17;
    v67 = a5;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = sub_2610BD0B4();
      v70 = 0;
      v29 = 0;
      v72 = 0;
      a1 = v28 | 0x8000000000000000;
    }

    else
    {
      v30 = -1 << *(a1 + 32);
      v31 = *(a1 + 64);
      v70 = a1 + 64;
      v29 = ~v30;
      v32 = -v30;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v72 = v33 & v31;
    }

    v34 = v75;
    v76 = (v60 + 32);
    v35 = (v61 + 32);
    v69 = TupleTypeMetadata2 - 8;
    v59[0] = v29;
    v36 = (v29 + 64) >> 6;
    v59[2] = v60 + 16;
    v59[1] = v61 + 16;
    v68 = (v21 + 32);
    v65 = (v61 + 56);

    v38 = 0;
    v66 = a3;
    v64 = a1;
    v62 = v25;
    for (i = v72; ; i = v78)
    {
      v72 = i;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_2610BD0C4())
      {
        sub_2610BD354();
        swift_unknownObjectRelease();
        v46 = v63;
        v47 = v77;
        sub_2610BD354();
        swift_unknownObjectRelease();
        v41 = v38;
        v78 = i;
LABEL_24:
        v48 = *(TupleTypeMetadata2 + 48);
        v25 = v62;
        (*v76)();
        (*v35)(&v25[v48], v46, v47);
        v49 = 0;
        v43 = v41;
        a1 = v64;
        goto LABEL_25;
      }

      v49 = 1;
      v58 = i;
      v43 = v38;
      v78 = v58;
LABEL_25:
      v50 = *(TupleTypeMetadata2 - 8);
      (*(v50 + 56))(v25, v49, 1, TupleTypeMetadata2);
      v51 = v73;
      (*v68)(v73, v25, v74);
      if ((*(v50 + 48))(v51, 1, TupleTypeMetadata2) == 1)
      {
        sub_26103B514();
        return v79;
      }

      v52 = *(TupleTypeMetadata2 + 48);
      v34 = v75;
      v53 = v51;
      v54 = v51;
      a3 = v66;
      (*v76)(v75, v53, v66);
      v55 = &v54[v52];
      v56 = v71;
      v57 = v77;
      (*v35)(v71, v55, v77);
      (*v65)(v56, 0, 1, v57);
      sub_2610BC934();
      result = sub_2610BC974();
      v38 = v43;
    }

    v40 = i;
    v41 = v38;
    if (!i)
    {
      if (v36 <= v38 + 1)
      {
        v42 = v38 + 1;
      }

      else
      {
        v42 = v36;
      }

      v43 = v42 - 1;
      v44 = v38;
      while (1)
      {
        v41 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v41 >= v36)
        {
          v78 = 0;
          v49 = 1;
          goto LABEL_25;
        }

        v40 = *(v70 + 8 * v41);
        ++v44;
        if (v40)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      return result;
    }

LABEL_21:
    v78 = (v40 - 1) & v40;
    v45 = __clz(__rbit64(v40)) | (v41 << 6);
    (*(v60 + 16))(v34, *(a1 + 48) + *(v60 + 72) * v45, a3);
    v46 = v63;
    v47 = v77;
    (*(v61 + 16))(v63, *(a1 + 56) + *(v61 + 72) * v45, v77);
    goto LABEL_24;
  }

LABEL_4:

  return a2;
}

void sub_26103B51C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66740, &qword_2610BECD0);
    v2 = sub_2610BD114();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_260FA99E0(*(a1 + 56) + 40 * v14, v30);
    *&v29 = v16;
    *(&v29 + 1) = v17;
    v26 = v29;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v18 = v29;
    sub_260F98E14(v27, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65950, &qword_2610C8660);
    sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_260FA5FBC(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}

unint64_t sub_26103B7A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
    v2 = sub_2610BD114();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_260FA9708(*(a1 + 48) + 40 * v14, v29);
        sub_260FA3F5C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_260FA9708(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_260FA3F5C(v27 + 8, v22);
        sub_260FA9980(v26, &qword_27FE659F8, &qword_2610C89E8);
        v23 = v20;
        sub_260FA6A84(v22, v24);
        v15 = v23;
        sub_260FA6A84(v24, v25);
        sub_260FA6A84(v25, &v23);
        result = sub_260FA5FBC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_260FA6A84(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_260FA6A84(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_260FA9980(v26, &qword_27FE659F8, &qword_2610C89E8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26103BA7C()
{
  v0 = sub_2610BC7B4();
  __swift_allocate_value_buffer(v0, qword_27FE65930);
  __swift_project_value_buffer(v0, qword_27FE65930);
  return sub_2610BC7A4();
}

uint64_t PASAnalyticsEventProtocol<>.name.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v4 = v6 - v3;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_2610BCA94();
  sub_2610BD344();
  (*(v1 + 8))(v4, AssociatedTypeWitness);
  return v6[0];
}

uint64_t Dictionary.pas_and(_:forKey:withDefault:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a5;
  v58 = a7;
  v59 = a4;
  v54 = a3;
  v56 = a2;
  v9 = sub_2610BCE64();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = *(a6 - 8);
  v18 = *(v17 + 8);
  v19 = MEMORY[0x28223BE20](v14);
  v52 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v55 = &v52 - v21;
  v22 = v10[2];
  v22(v16, a1, v9);
  v23 = v17;
  v24 = *(v17 + 6);
  if (v24(v16, 1, a6) == 1)
  {
    v55 = v23;
    v25 = v10[1];
    v25(v16, v9);
    v26 = v53;
    v22(v53, v54, v9);
    if (v24(v26, 1, a6) == 1)
    {
      v25(v26, v9);
      v27 = v59;
    }

    else
    {
      v39 = v55;
      v40 = v52;
      (*(v55 + 4))(v52, v26, a6);
      v41 = v57;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_2610BD314();
      v43 = *(*(TupleTypeMetadata2 - 8) + 72);
      v44 = *(*(TupleTypeMetadata2 - 8) + 80);
      swift_allocObject();
      v45 = sub_2610BCB54();
      v47 = v46;
      v48 = *(TupleTypeMetadata2 + 48);
      (*(*(v41 - 8) + 16))(v46, v56, v41);
      (*(v39 + 2))(v47 + v48, v40, a6);
      sub_2610BCBD4();
      v49 = v58;
      v50 = sub_261040F14(v45, v41, a6, v58);

      v27 = Dictionary.pas_and(_:)(v50, v59, v41, a6, v49);

      (*(v39 + 1))(v40, a6);
    }
  }

  else
  {
    v28 = v55;
    (*(v23 + 4))(v55, v16, a6);
    v29 = v57;
    v30 = swift_getTupleTypeMetadata2();
    sub_2610BD314();
    v31 = *(*(v30 - 8) + 72);
    v32 = *(*(v30 - 8) + 80);
    swift_allocObject();
    v33 = sub_2610BCB54();
    v35 = v34;
    v36 = *(v30 + 48);
    (*(*(v29 - 8) + 16))(v34, v56, v29);
    (*(v23 + 2))(v35 + v36, v28, a6);
    sub_2610BCBD4();
    v37 = v58;
    v38 = sub_261040F14(v33, v29, a6, v58);

    v27 = Dictionary.pas_and(_:)(v38, v59, v29, a6, v37);

    (*(v23 + 1))(v28, a6);
  }

  return v27;
}

void sub_26103C1A4(uint64_t a1)
{
  sub_260FAC380(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_2610BD364();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2610BC9D4();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

double sub_26103C304@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2610BC9D4();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_2610BCEA4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t PASAnalyticsActor.PASAnalyticsActorType.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26103C3F4()
{
  type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27FE65948 = v0;
  return result;
}

uint64_t static PASAnalyticsActor.shared.getter()
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26103C48C()
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26103C4F0@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  result = sub_260FA9AB4(0, &qword_27FE65A08, 0x277CBEBD0);
  a1[3] = result;
  a1[4] = &off_287388368;
  *a1 = v2;
  return result;
}

void *sub_26103C564(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = 0x6C7070612E6D6F63;
  v10[3] = 0xE900000000000065;
  v10[4] = 0xD000000000000015;
  v10[5] = 0x80000002610C87E0;
  v10[6] = a2;
  v10[7] = a3;
  v10[8] = a4;
  v10[9] = a5;
  sub_260F98E14(a1, (v10 + 10));
  return v10;
}

unint64_t sub_26103C640()
{
  sub_260FA99E0(v0 + 80, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 24))(v9, 0xD000000000000017, 0x80000002610D4C10, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  sub_260FAC380(v9, v6);
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

uint64_t sub_26103C764(uint64_t a1)
{
  sub_260FA99E0(v1 + 80, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65A00, &unk_2610C8A18);
  v6[0] = a1;
  (*(v4 + 8))(v6, 0xD000000000000017, 0x80000002610D4C10, v3, v4);
  sub_260FA9980(v6, &qword_27FE63830, &qword_2610BE8E0);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t sub_26103C828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2610BC9D4();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26103C8E8;
  v10[3] = &block_descriptor_5;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_26103C8E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
    v5 = sub_2610BC8F4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *sub_26103C984(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = 0x6C7070612E6D6F63;
  v5[3] = 0xE900000000000065;
  v5[4] = 0xD000000000000015;
  v5[5] = 0x80000002610C87E0;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[9] = a5;
  sub_260F98E14(a1, (v5 + 10));
  return v5;
}

uint64_t sub_26103C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_2610BCC94();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_260FA99E0(a1, v19);
  v13 = qword_27FE63820;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_27FE65948;
  v15 = sub_2610412C4();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v4;
  sub_260F98E14(v19, (v16 + 5));
  v16[10] = a2;
  v16[11] = a3;

  sub_261042434(0, 0, v11, &unk_2610C8650, v16);
}

uint64_t sub_26103CB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_260FB6DB4;

  return sub_26103CC60(a5, a6, a7);
}

uint64_t sub_26103CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v5 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103CCFC, v5, 0);
}

uint64_t sub_26103CCFC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v10 = sub_26103C640();
  sub_260FA99E0(v4, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65950, &qword_2610C8660);
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  v5 = swift_dynamicCast();
  v6 = v0[7];
  if (v5)
  {
    v7 = v0[7];
  }

  else
  {
    v7 = 0;
  }

  sub_260FAD71C(v7, v3, v2);
  sub_26103C764(v10);
  v8 = v0[1];

  return v8();
}

uint64_t sub_26103CE00(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_2610BCC94();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_27FE63820;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27FE65948;
  v12 = sub_2610412C4();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v2;
  v13[5] = a1;
  v13[6] = a2;

  sub_261042434(0, 0, v8, &unk_2610C8670, v13);
}

uint64_t sub_26103CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_260FBF860;

  return sub_26103D050(a5, a6);
}

uint64_t sub_26103D050(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v4 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103D0EC, v4, 0);
}

uint64_t sub_26103D0EC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v6 = sub_26103C640();

  sub_26103C764(v6);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26103D188(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = qword_27FE63820;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_27FE65948;
  v16 = sub_2610412C4();
  v17 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = v16;
  *(v18 + 4) = v4;
  *(v18 + 5) = *(v3 + 88);
  *(v18 + 6) = v1;
  (*(v5 + 32))(&v18[v17], v8, v4);

  sub_261042434(0, 0, v12, &unk_2610C8688, v18);
}

uint64_t sub_26103D3F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = *a4;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103D4B0, v6, 0);
}

uint64_t sub_26103D4B0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v1 + 80);
  v0[5] = v3;
  v0[6] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_260FDC73C;
  v6 = v0[7];

  return sub_26103FD58((v0 + 2), 0, 0);
}

uint64_t sub_26103D59C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return MEMORY[0x2822009F8](sub_26103D5E4, 0, 0);
}

uint64_t sub_26103D5E4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = *(v1 + 80);
  v0[5] = v3;
  v0[6] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26104242C;
  v6 = v0[8];

  return sub_26103FD58((v0 + 2), 0, 0);
}

uint64_t sub_26103D6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = *v3;
  v28 = a2;
  v7 = *(v27 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v16 = sub_2610BCC94();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = qword_27FE63820;

  v29 = a3;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_27FE65948;
  v19 = sub_2610412C4();
  v20 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = v18;
  *(v22 + 3) = v19;
  *(v22 + 4) = v7;
  *(v22 + 5) = *(v27 + 88);
  *(v22 + 6) = v4;
  (*(v8 + 32))(&v22[v20], v11, v7);
  v23 = &v22[v21];
  v24 = v29;
  *v23 = v28;
  *(v23 + 1) = v24;

  sub_261042434(0, 0, v15, &unk_2610C86A8, v22);
}

uint64_t sub_26103D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v8 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103DA0C, v8, 0);
}

uint64_t sub_26103DA0C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_26103DAF0;
  v6 = v0[2];
  v5 = v0[3];

  return sub_26103DDCC(v5, &unk_2610C8A10, v3);
}

uint64_t sub_26103DAF0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26103DC00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26103DC20, 0, 0);
}

uint64_t sub_26103DC20()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16))();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26103DCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26103DCC4, 0, 0);
}

uint64_t sub_26103DCC4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_261042428;
  v5 = v0[5];
  v6 = v0[2];

  return sub_26103DDCC(v6, &unk_2610C86C0, v3);
}

uint64_t sub_26103DDAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_261042430, 0, 0);
}

uint64_t sub_26103DDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *v3;
  v4[11] = *v3;
  v6 = *(v5 + 80);
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26103DEC8, 0, 0);
}

uint64_t sub_26103DEC8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v0[5] = v1;
  v7 = *(v3 + 88);
  v0[15] = v7;
  v0[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v9 = *(v2 + 16);
  v0[16] = v9;
  v0[17] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(boxed_opaque_existential_1, v6, v1);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_26103DFC4;
  v11 = v0[10];

  return sub_26103FD58((v0 + 2), v5, v4);
}

uint64_t sub_26103DFC4()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
    v4 = v3[14];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26103E108, 0, 0);
}

uint64_t sub_26103E108()
{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[7];
  v7 = sub_2610BC7B4();
  __swift_project_value_buffer(v7, qword_27FE65930);
  v3(v4, v6, v5);
  v8 = v1;
  v9 = sub_2610BC794();
  v10 = sub_2610BCD64();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[19];
  if (v11)
  {
    v13 = v0[14];
    v14 = v0[15];
    v16 = v0[12];
    v15 = v0[13];
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v17 = 136446466;
    v18 = (*(v14 + 8))(v16, v14);
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_260FA5970(v18, v20, &v32);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2114;
    v22 = v12;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v30 = v23;
    _os_log_impl(&dword_260F97000, v9, v10, "PASAnalytics failed to send event %{public}s.\n%{public}@", v17, 0x16u);
    sub_260FA9980(v30, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x2666F8720](v31, -1, -1);
    MEMORY[0x2666F8720](v17, -1, -1);
  }

  else
  {
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[12];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[14];

  v28 = v0[1];

  return v28();
}

uint64_t sub_26103E3AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v26 = sub_2610BC5D4();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v7);
  v14 = &v25 - v13;
  v15 = *(v4 + 88);
  v16 = (*(v15 + 8))(v10, v15);
  v25 = v17;
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v10;
  *(v19 + 3) = v15;
  *(v19 + 4) = v2;
  (*(v11 + 32))(&v19[v18], v14, v10);

  sub_2610BC5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65958, &qword_2610C8BB0);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 136) = 0;
  *(v20 + 144) = 1;
  *(v20 + 168) = 0;
  sub_2610BC574();
  v22 = v21;
  (*(v5 + 8))(v9, v26);
  *(v20 + 112) = v22;
  v23 = v25;
  *(v20 + 120) = v16;
  *(v20 + 128) = v23;
  *(v20 + 152) = &unk_2610C86E0;
  *(v20 + 160) = v19;
  return v20;
}

uint64_t sub_26103E62C(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  v6 = *a2;
  *(v4 + 80) = *a2;
  v7 = *(v6 + 80);
  *(v4 + 88) = v7;
  v8 = *(v7 - 8);
  *(v4 + 96) = v8;
  *(v4 + 104) = *(v8 + 64);
  *(v4 + 112) = swift_task_alloc();
  v10 = *a1;
  v9 = a1[1];
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = &unk_2610C8A00;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *(v4 + 120) = v12;
  *(v4 + 128) = v11;
  sub_260F9C55C(v10);

  return MEMORY[0x2822009F8](sub_26103E77C, 0, 0);
}

uint64_t sub_26103E77C()
{
  v1 = v0[15];
  v17 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v0[5] = v4;
  v9 = *(v6 + 88);
  v0[6] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v11 = *(v5 + 16);
  v11(boxed_opaque_existential_1, v7, v4);
  v11(v2, v7, v4);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[17] = v13;
  *(v13 + 2) = v4;
  *(v13 + 3) = v9;
  *(v13 + 4) = v1;
  *(v13 + 5) = v17;
  (*(v5 + 32))(&v13[v12], v2, v4);
  *&v13[(v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v8;
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_26103E914;
  v15 = v0[8];

  return sub_26103FD58((v0 + 2), &unk_2610C89F8, v13);
}

void sub_26103E914()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[17];
    v6 = v2[14];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);

    v7 = v4[1];

    v7();
  }
}

uint64_t sub_26103EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 136) = a4;
  *(v6 + 144) = a5;
  *(v6 + 128) = a6;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = *(a4 - 8);
  *(v6 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26103EB1C, 0, 0);
}

uint64_t sub_26103EB1C()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[13];
    v16 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_26103ED38;

    return v16();
  }

  else
  {
    v7 = sub_260FA8F34(MEMORY[0x277D84F90]);
    v8 = v0[20];
    v9 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0xD00000000000001ALL;
    v11 = inited + 32;
    v12 = MEMORY[0x277D839F8];
    *(inited + 40) = 0x80000002610D4BF0;
    *(inited + 72) = v12;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v9;
    v13 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(v11, &qword_27FE63BA0, &qword_2610BED60);
    v14 = sub_26103ABE4(v7, v13);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_26103ED38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_26103EF94;
  }

  else
  {
    *(v4 + 184) = a1;
    v7 = sub_26103EE60;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26103EE60()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v5 = inited + 32;
  v6 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v6;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v3;
  v7 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v5, &qword_27FE63BA0, &qword_2610BED60);
  v8 = sub_26103ABE4(v1, v7);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_26103EF94()
{
  v39 = v0;
  if (qword_27FE63818 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[15];
  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65930);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_2610BC794();
  v9 = sub_2610BCD64();

  if (os_log_type_enabled(v8, v9))
  {
    v36 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v13 = v0[17];
    v12 = v0[18];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v14 = 136446466;
    v16 = (*(v12 + 8))(v13, v12);
    v18 = v17;
    (*(v11 + 8))(v10, v13);
    v19 = sub_260FA5970(v16, v18, &v38);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v36;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_260F97000, v8, v9, "PASAnalytics timer failed to gather timer context for event %{public}s\n%{public}@", v14, 0x16u);
    sub_260FA9980(v15, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x2666F8720](v37, -1, -1);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  else
  {
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[17];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[22];
  v26 = sub_260FA8F34(MEMORY[0x277D84F90]);

  v27 = v0[20];
  v28 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 0xD00000000000001ALL;
  v30 = inited + 32;
  v31 = MEMORY[0x277D839F8];
  *(inited + 40) = 0x80000002610D4BF0;
  *(inited + 72) = v31;
  *(inited + 80) = &protocol witness table for Double;
  *(inited + 48) = v28;
  v32 = sub_260FA8F34(inited);
  swift_setDeallocating();
  sub_260FA9980(v30, &qword_27FE63BA0, &qword_2610BED60);
  v33 = sub_26103ABE4(v26, v32);

  v34 = v0[1];

  return v34(v33);
}

uint64_t sub_26103F310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = sub_2610BCC94();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = qword_27FE63820;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27FE65948;
  v8 = sub_2610412C4();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v0;

  sub_261042434(0, 0, v4, &unk_2610C86F8, v9);
}

uint64_t sub_26103F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_2610BC5D4();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v8 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_26103F55C, v8, 0);
}

uint64_t sub_26103F55C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_2610BC5C4();
  v5 = sub_26103F78C(v1);
  v7 = v6;
  (*(v2 + 8))(v1, v4);
  v0[5] = MEMORY[0x277D837D0];
  v0[6] = &protocol witness table for String;
  v0[2] = v5;
  v0[3] = v7;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_26103F670;
  v9 = v0[7];

  return sub_26103CC60((v0 + 2), 0xD000000000000018, 0x80000002610D4BD0);
}

uint64_t sub_26103F670()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26103F78C(uint64_t a1)
{
  v45 = a1;
  v2 = sub_2610BC614();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE659F0, &qword_2610C89E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_2610BC5D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v44 = v1;
  sub_260FA99E0(v1 + 80, v47);
  v21 = v48;
  v22 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v23 = *(v22 + 24);
  v41 = "AdditionalDataError";
  v23(v50, 0xD000000000000017, 0x80000002610D4B90, v21, v22);
  if (!v51)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    sub_260FA9980(v50, &qword_27FE63830, &qword_2610BE8E0);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_8;
  }

  v24 = swift_dynamicCast();
  (*(v11 + 56))(v9, v24 ^ 1u, 1, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_8:
    sub_260FA9980(v9, &qword_27FE659F0, &qword_2610C89E0);
LABEL_9:
    v27 = v44;
LABEL_10:
    v31 = MEMORY[0x277D837D0];
    sub_2610BC604();
    v30 = sub_2610BC5E4();
    v33 = v32;
    (*(v42 + 8))(v5, v43);
    sub_260FA99E0(v27 + 80, v47);
    v34 = v48;
    v35 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v51 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
    (*(v11 + 16))(boxed_opaque_existential_1, v45, v10);
    (*(v35 + 8))(v50, 0xD000000000000017, v41 | 0x8000000000000000, v34, v35);
    sub_260FA9980(v50, &qword_27FE63830, &qword_2610BE8E0);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    sub_260FA99E0(v27 + 80, v47);
    v37 = v48;
    v38 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v51 = v31;
    v50[0] = v30;
    v50[1] = v33;
    v39 = *(v38 + 8);

    v39(v50, 0xD000000000000018, 0x80000002610D4BB0, v37, v38);
    sub_260FA9980(v50, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_11;
  }

  (*(v11 + 32))(v20, v9, v10);
  sub_2610583C0(v18);
  sub_2610583C0(v15);
  v25 = sub_2610BC5A4();
  v26 = *(v11 + 8);
  v26(v15, v10);
  v26(v18, v10);
  if ((v25 & 1) == 0)
  {
    v26(v20, v10);
    goto LABEL_9;
  }

  v27 = v44;
  sub_260FA99E0(v44 + 80, v47);
  v29 = v48;
  v28 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  (*(v28 + 24))(v50, 0xD000000000000018, 0x80000002610D4BB0, v29, v28);
  v26(v20, v10);
  if (!v51)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    sub_260FA9980(v50, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    goto LABEL_10;
  }

  v30 = v46;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  return v30;
}

uint64_t sub_26103FD58(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](sub_26103FDF8);
}

uint64_t sub_26103FDF8()
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
    v21[1] = sub_2610400F8;
    v22 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];

    return sub_2610402E4(v25, v24, v22);
  }

  else
  {
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2610400F8(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261040210, v3, 0);
}

uint64_t sub_261040210()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v6(v2, v3, sub_261042408, v7);

  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2610402E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](sub_261040384);
}

uint64_t sub_261040384()
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
    v11[1] = sub_261040580;

    return v20();
  }

  else
  {
    v13 = sub_260FA8E30(MEMORY[0x277D84F90]);

    v14 = v0[22];
    v15 = v0[20];
    v16 = sub_26103C640();
    v17 = sub_26103A9B0(v14, v16);

    v18 = sub_26103A9B0(v13, v17);

    v19 = v0[1];

    return v19(v18);
  }
}

uint64_t sub_261040580(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = v1;

  v7 = v4[21];
  if (v1)
  {
    v8 = sub_2610407A4;
  }

  else
  {
    v4[25] = a1;
    v8 = sub_2610406BC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2610406BC()
{
  sub_26103B51C(v0[25]);
  v2 = v1;

  if (!v2)
  {
    v2 = sub_260FA8E30(MEMORY[0x277D84F90]);
  }

  v3 = v0[22];
  v4 = v0[20];
  v5 = sub_26103C640();
  v6 = sub_26103A9B0(v3, v5);

  v7 = sub_26103A9B0(v2, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_2610407A4()
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
  v29 = sub_26103C640();
  v30 = sub_26103A9B0(v27, v29);

  v31 = sub_26103A9B0(v26, v30);

  v32 = v0[1];

  return v32(v31);
}

void *PASAnalytics.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 10);
  return v0;
}

uint64_t PASAnalytics.__deallocating_deinit()
{
  PASAnalytics.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_261040BE4()
{
  *v0;
  *v0;
  sub_2610BD0A4();

  return 0;
}

unint64_t sub_261040C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_2610BC984();

  return sub_261040CF4(a1, v9, a2, a3);
}

unint64_t sub_261040CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_2610BC9A4();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_261040E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_260FA5FBC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2610990C4();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_2610988A4(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_261040F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2610BCBB4())
  {
    sub_2610BD124();
    v13 = sub_2610BD114();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2610BCBB4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2610BCB94())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2610BCFB4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_261040C98(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void *sub_261041200()
{
  type metadata accessor for PASAnalytics();
  sub_26103C4F0(v2);
  v0 = swift_allocObject();
  v0[2] = 0x6C7070612E6D6F63;
  v0[3] = 0xE900000000000065;
  v0[4] = 0xD000000000000015;
  v0[5] = 0x80000002610C87E0;
  v0[6] = sub_26103C828;
  v0[7] = 0;
  v0[8] = sub_260FBF8A0;
  v0[9] = 0;
  sub_260F98E14(v2, (v0 + 10));
  return v0;
}

unint64_t sub_2610412C4()
{
  result = qword_27FE646F8;
  if (!qword_27FE646F8)
  {
    type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE646F8);
  }

  return result;
}

uint64_t sub_26104133C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FBF860;

  return sub_26103CB7C(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_261041410(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FBF860;

  return sub_26103CF74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2610414D8(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 56) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_26103D3F0(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_2610415C8(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 56) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[6];
  v8 = (v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_260FBF860;

  return sub_26103D970(a1, v6, v4, v7, v1 + v5, v9, v10);
}

uint64_t sub_2610416FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF864;

  return sub_26103DDAC(v2, v3);
}

uint64_t sub_261041794(uint64_t *a1, double a2)
{
  v6 = (*(*(*(v2 + 16) - 8) + 80) + 40) & ~*(*(*(v2 + 16) - 8) + 80);
  v7 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FBF860;

  return sub_26103E62C(a1, v7, v2 + v6, a2);
}

uint64_t sub_26104187C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_26103F468(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PASAnalytics.addPersistentValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_260FBF860;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of PASAnalytics.removePersistentValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FBF860;

  return v10(a1, a2);
}

uint64_t dispatch thunk of PASAnalytics.send(event:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260FBF860;

  return v8(a1);
}

uint64_t dispatch thunk of PASAnalytics.send(event:withAdditionalData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_260FBF860;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_260FBF860;

  return v12(a1, a2, a3);
}

uint64_t sub_2610421A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_260FBF864;

  return sub_26103EA5C(v5, v6, v0 + v4, v2, v3, v7);
}

uint64_t sub_2610422C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF864;

  return sub_261046704(v2);
}

uint64_t sub_261042370()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBD298;

  return sub_26103DC00(v2, v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261042434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_260FA9918(a3, v27 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2610BCBF4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2610BCA44() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_261042734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_260FA9918(a3, v27 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2610BCBF4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2610BCA44() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB8, &qword_2610C91D8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB8, &qword_2610C91D8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_261042A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_260FA9918(a3, v27 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2610BCBF4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2610BCA44() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_261042D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_260FA9918(a3, v24 - v10, &unk_27FE65800, &qword_2610BF910);
  v12 = sub_2610BCC94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_260FA9980(v11, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2610BCBF4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2610BCA44() + 32;

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

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

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

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_261043008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_260FA9918(a3, v24 - v10, &unk_27FE65800, &qword_2610BF910);
  v12 = sub_2610BCC94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_260FA9980(v11, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2610BCBF4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2610BCA44() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB0, &qword_2610C91A0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

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

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB0, &qword_2610C91A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t PASSourceFlowStepBase.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASSourceFlowStepBase.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet, v2);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert, v2);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert, v2);
  return v0;
}

void (*sub_261043444(uint64_t *a1))(void *)
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
  return sub_2610434E8;
}

void (*sub_261043504(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
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

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_261015184;
}

uint64_t sub_261043674@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_261050010(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_2610437A0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics;
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);
  }

  else
  {
    v3 = v0;
    sub_261043674(v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = (*(v5 + 8))(&type metadata for PASFlowStepAnalyticsEvent, &off_287388880, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v6 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_261043898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  return sub_261042D5C(0, 0, v10, &unk_2610CD880, v12);
}

void sub_2610439BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_2610BC5D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if (v28)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v13 = sub_2610BC7B4();
    __swift_project_value_buffer(v13, qword_27FE65900);

    v14 = sub_2610BC794();
    v15 = sub_2610BCD64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v1;
      v28 = v17;
      *v16 = 136446210;
      type metadata accessor for PASFlowStepBase(0);

      v18 = sub_2610BCA34();
      v20 = sub_260FA5970(v18, v19, &v28);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_260F97000, v14, v15, "%{public}s finished again", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x2666F8720](v17, -1, -1);
      MEMORY[0x2666F8720](v16, -1, -1);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v28) = 1;

    sub_2610BC854();
    v21 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);
    if (v21)
    {
      v22 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

      sub_2610BC5B4();
      v23 = sub_2610BCC94();
      (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
      (*(v7 + 16))(v10, v12, v6);
      v24 = (*(v7 + 80) + 56) & ~*(v7 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      *(v25 + 5) = 0;
      *(v25 + 6) = 0;
      *(v25 + 4) = v21;
      (*(v7 + 32))(&v25[v24], v10, v6);

      sub_261042434(0, 0, v5, &unk_2610C8A88, v25);

      (*(v7 + 8))(v12, v6);
    }

    v26 = *v1;
    if (swift_conformsToProtocol2())
    {
      swift_getObjectType();

      PASFlowStepIntermediate.stepDidFinish()();
    }
  }
}

uint64_t (*sub_261043E68(uint64_t *a1))()
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
  return sub_261043F08;
}

void (*sub_261043F34(uint64_t *a1))(void *)
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

void (*sub_261043FF0(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
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

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_26105027C;
}

void (*sub_261044188(uint64_t *a1))(void *)
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

void (*sub_261044244(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
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

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentResetAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_26105027C;
}

uint64_t sub_2610443C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_261044448()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void (*sub_2610444B4(uint64_t *a1))(void *)
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

uint64_t sub_261044564(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_2610445E0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*sub_261044718(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
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

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase__presentCancelAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  swift_endAccess();
  return sub_26105027C;
}

uint64_t sub_2610448D0()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowStepBase resetFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_2610BC794();
    v8 = sub_2610BCD74();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v7, v8, "PASSourceFlowStepBase delegate is nil in resetFlow", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v11 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v13 = sub_26104E388(&qword_27FE65A48, type metadata accessor for PASSourceFlowStepBase);
    v14 = *(v11 + 8);
    v15 = *(v14 + 16);
    v24 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 96) = v17;
    *v17 = v0;
    v17[1] = sub_261044C8C;
    v18 = *(v0 + 80);

    return v24(v18, v13, ObjectType, v14);
  }

  else
  {
    v20 = *(v0 + 80);
    *(v0 + 104) = sub_2610437A0();
    v21 = *v20;
    *(v0 + 16) = sub_2610BD634();
    *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
    *(v0 + 48) = &off_287388880;
    *(v0 + 24) = v22;
    *(v0 + 32) = 4;
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_261044EA8;

    return sub_261047124(v0 + 16, 0, 0);
  }
}

uint64_t sub_261044C8C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_261044DA4, 0, 0);
}

uint64_t sub_261044DA4()
{
  v1 = *(v0 + 80);
  *(v0 + 104) = sub_2610437A0();
  v2 = *v1;
  *(v0 + 16) = sub_2610BD634();
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 24) = v3;
  *(v0 + 32) = 4;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_261044EA8;

  return sub_261047124(v0 + 16, 0, 0);
}

void sub_261044EA8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 104);

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_261045000(const char *a1)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, a1, v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void sub_261045144(const char *a1)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  oslog = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, oslog, v3, a1, v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }
}

uint64_t sub_261045254()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowStepBase cancelFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_2610BC794();
    v8 = sub_2610BCD74();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v7, v8, "PASSourceFlowStepBase delegate is nil in cancelFlow", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v11 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v13 = sub_26104E388(&qword_27FE65A48, type metadata accessor for PASSourceFlowStepBase);
    v14 = *(v11 + 8);
    v15 = *(v14 + 24);
    v24 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 96) = v17;
    *v17 = v0;
    v17[1] = sub_261045610;
    v18 = *(v0 + 80);

    return v24(v18, v13, ObjectType, v14);
  }

  else
  {
    v20 = *(v0 + 80);
    *(v0 + 104) = sub_2610437A0();
    v21 = *v20;
    *(v0 + 16) = sub_2610BD634();
    *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
    *(v0 + 48) = &off_287388880;
    *(v0 + 24) = v22;
    *(v0 + 32) = 3;
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_261050270;

    return sub_261047124(v0 + 16, 0, 0);
  }
}

uint64_t sub_261045610()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_261045728, 0, 0);
}

uint64_t sub_261045728()
{
  v1 = *(v0 + 80);
  *(v0 + 104) = sub_2610437A0();
  v2 = *v1;
  *(v0 + 16) = sub_2610BD634();
  *(v0 + 40) = &type metadata for PASFlowStepAnalyticsEvent;
  *(v0 + 48) = &off_287388880;
  *(v0 + 24) = v3;
  *(v0 + 32) = 3;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_261050270;

  return sub_261047124(v0 + 16, 0, 0);
}