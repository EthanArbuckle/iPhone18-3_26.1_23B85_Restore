uint64_t sub_20BD2EA10()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20BD2EEE0;
  }

  else
  {
    v2 = sub_20BD2EB24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BD2EB24()
{
  *(v0 + 136) = sub_20C13CDA4();
  *(v0 + 144) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD2EBBC, v2, v1);
}

uint64_t sub_20BD2EBBC()
{
  v20 = v0;

  sub_20C13CD94();
  sub_20C13CD24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C13B524();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  if (v3)
  {
    v16 = v0[5];
    v18 = v0[10];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v17 = v4;
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C13DCA4();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v16;
    _os_log_impl(&dword_20B517000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v5 + 8))(v17, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[9];
  v14 = v0[6];
  sub_20BD317AC(v0[14], v13, type metadata accessor for MarketingUserInterfaceConfiguration);
  swift_storeEnumTagMultiPayload();
  v14(v13);
  sub_20B520158(v13, &qword_27C764250);

  return MEMORY[0x2822009F8](sub_20BD2EE3C, 0, 0);
}

uint64_t sub_20BD2EE3C()
{
  sub_20BD31814(*(v0 + 112), type metadata accessor for MarketingUserInterfaceConfiguration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD2EEE0()
{
  *(v0 + 152) = sub_20C13CDA4();
  *(v0 + 160) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD2EF78, v2, v1);
}

uint64_t sub_20BD2EF78()
{
  v22 = v0;

  sub_20C13CD94();
  sub_20C13CD24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C13B524();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  if (v3)
  {
    v18 = v0[5];
    v20 = v0[10];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v19 = v4;
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C13DCA4();
    v12 = sub_20B51E694(v10, v11, &v21);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v18;
    _os_log_impl(&dword_20B517000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v5 + 8))(v19, v20);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[16];
  v14 = v0[9];
  v15 = v0[6];
  *v14 = v13;
  swift_storeEnumTagMultiPayload();
  v16 = v13;
  v15(v14);
  sub_20B520158(v14, &qword_27C764250);

  return MEMORY[0x2822009F8](sub_20BD2F1E4, 0, 0);
}

uint64_t sub_20BD2F1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20BD2F274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  JUMPOUT(0x20BD2E81CLL);
}

uint64_t sub_20BD2F388(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C1388F4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20C139354() - 8);
  v12 = (v10 + *(v11 + 80) + 41) & ~*(v11 + 80);
  v13 = v1 + v10;
  v14 = v1 + v12;
  v15 = *(v1 + v12 + *(v11 + 64));
  v16 = *(v13 + 40);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_20B52A9D4;

  return sub_20BD27ED8(a1, v1 + v6, v1 + v9, v13, v16, v14, v15);
}

uint64_t sub_20BD2F574(uint64_t a1)
{
  v4 = *(type metadata accessor for NavigationRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BD284AC(a1, v1 + v5, v1 + v6);
}

unint64_t sub_20BD2F6BC()
{
  result = qword_27C76E4E0;
  if (!qword_27C76E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E4E0);
  }

  return result;
}

unint64_t sub_20BD2F710()
{
  result = qword_27C76E4E8;
  if (!qword_27C76E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E4E8);
  }

  return result;
}

uint64_t sub_20BD2F824(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 40) = v16;
  *(v8 + 145) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_20BD2F9AC;

  return v13(v8 + 144);
}

uint64_t sub_20BD2F9AC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20BD2FE04;
  }

  else
  {
    v2 = sub_20BD2FAC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BD2FAC0()
{
  *(v0 + 112) = sub_20C13CDA4();
  *(v0 + 120) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD2FB58, v2, v1);
}

uint64_t sub_20BD2FB58()
{
  v22 = v0;

  v1 = *(v0 + 144);
  sub_20C13CD94();
  sub_20C13CD24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (v4)
  {
    v17 = *(v0 + 40);
    v19 = *(v0 + 64);
    v8 = v1;
    v9 = *(v0 + 16);
    v18 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v11 = v20;
    *v10 = 134218498;
    *(v10 + 4) = v9;
    v1 = v8;
    *(v10 + 12) = 2080;
    v12 = sub_20C13DCA4();
    v14 = sub_20B51E694(v12, v13, &v20);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v17;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished Main A->P conversion: %ld:%s:%lu", v10, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v6 + 8))(v18, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v15 = *(v0 + 48);
  v20 = v1;
  v21 = 0;
  v15(&v20);

  return MEMORY[0x2822009F8](sub_20BD2FD9C, 0, 0);
}

uint64_t sub_20BD2FD9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD2FE04()
{
  *(v0 + 128) = sub_20C13CDA4();
  *(v0 + 136) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD2FE9C, v2, v1);
}

uint64_t sub_20BD2FE9C()
{
  v22 = v0;

  sub_20C13CD94();
  sub_20C13CD24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C13B524();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v17 = v0[5];
    v7 = v0[2];
    v19 = v0[8];
    v8 = swift_slowAlloc();
    v18 = v4;
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C13DCA4();
    v12 = sub_20B51E694(v10, v11, &v20);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v17;
    _os_log_impl(&dword_20B517000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[13];
  v14 = v0[6];
  v20 = v13;
  v21 = 1;
  v15 = v13;
  v14(&v20);

  return MEMORY[0x2822009F8](sub_20BD300F0, 0, 0);
}

uint64_t sub_20BD300F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD30160(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 160) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20BD302E8;

  return v13(v8 + 16);
}

uint64_t sub_20BD302E8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BD30758;
  }

  else
  {
    v2 = sub_20BD303FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BD303FC()
{
  *(v0 + 120) = sub_20C13CDA4();
  *(v0 + 128) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD30494, v2, v1);
}

uint64_t sub_20BD30494()
{
  v24 = v0;

  v1 = v0[2];
  v0[17] = v1;
  sub_20C13CD94();
  sub_20C13CD24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  if (v4)
  {
    v18 = v0[6];
    v20 = v0[9];
    v8 = v0[3];
    v19 = v0[12];
    v9 = swift_slowAlloc();
    v21 = v1;
    v22 = swift_slowAlloc();
    v10 = v22;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C13DCA4();
    v13 = sub_20B51E694(v11, v12, &v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished Main A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v14 = v10;
    v1 = v21;
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v6 + 8))(v19, v20);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v15 = v0[7];
  v22 = v1;
  v23 = 0;
  v16 = v1;
  v15(&v22);

  return MEMORY[0x2822009F8](sub_20BD306E8, 0, 0);
}

uint64_t sub_20BD306E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD30758()
{
  *(v0 + 144) = sub_20C13CDA4();
  *(v0 + 152) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD307F0, v2, v1);
}

uint64_t sub_20BD307F0()
{
  v22 = v0;

  sub_20C13CD94();
  sub_20C13CD24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C13B524();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  if (v3)
  {
    v17 = v0[6];
    v7 = v0[3];
    v19 = v0[9];
    v8 = swift_slowAlloc();
    v18 = v4;
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C13DCA4();
    v12 = sub_20B51E694(v10, v11, &v20);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v17;
    _os_log_impl(&dword_20B517000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[14];
  v14 = v0[7];
  v20 = v13;
  v21 = 1;
  v15 = v13;
  v14(&v20);

  return MEMORY[0x2822009F8](sub_20BD30A44, 0, 0);
}

uint64_t sub_20BD30A44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD30AB4@<X0>(void (*a1)(__n128)@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4F8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  a1(v5);
  v8 = sub_20C137EA4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_20B520158(v7, &qword_27C76E4F8);
  v10 = sub_20C133C44();
  sub_20BD31384(&qword_27C7662C8, MEMORY[0x277D50320]);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50318], v10);
  return swift_willThrow();
}

uint64_t sub_20BD30C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_20C137EA4();

  return sub_20C137C94();
}

void sub_20BD30D10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20BD30160);
}

void sub_20BD30E24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20BD2F824);
}

uint64_t sub_20BD3108C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BD3113C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD31210@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BD2A798(v5, v1 + v4, v6, a1);
}

uint64_t sub_20BD312BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_20C13A484() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 24);

  return sub_20BD2B010(v6, v1 + v4, a1, v5);
}

uint64_t sub_20BD31384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_143Tm_0()
{
  v1 = type metadata accessor for WorkoutSessionConfiguration();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_20C1344C4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_20C137254();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[7];
  sub_20C13A484();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20C137EA4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  v12 = sub_20C13BA24();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[10];
  v15 = sub_20C134A44();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  if (*(v5 + v1[11] + 8) >= 0xCuLL)
  {
  }

  v17 = v1[12];
  v18 = sub_20C135C54();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BD317AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BD31814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BD318F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BD31A38(uint64_t a1, uint64_t a2)
{
  v43 = sub_20C136594();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C134014();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C134A74();
  MEMORY[0x28223BE20](v47);
  v48 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v46 = *(a2 + 16);
  if (!v46)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = 0;
  v44 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v45 = a2 + v44;
  v49 = *(v13 + 72);
  v39 = (v4 + 32);
  v38 = v4 + 8;
  v37 = (v6 + 32);
  v36[1] = v6 + 8;
  v17 = a1 + 56;
  v18 = MEMORY[0x277D84F90];
  do
  {
    sub_20B864C34(v45 + v49 * v16, v15);
    sub_20B864C34(v15, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v40;
      v20 = v41;
      (*v37)(v40, v11, v41);
      v21 = sub_20C133E44();
      v23 = v22;
      v24 = &v51;
    }

    else
    {
      v19 = v42;
      v20 = v43;
      (*v39)(v42, v11, v43);
      v21 = sub_20C136564();
      v23 = v25;
      v24 = &v52;
    }

    (**(v24 - 32))(v19, v20);
    if (*(a1 + 16) && (sub_20C13E164(), sub_20C13CA64(), v26 = sub_20C13E1B4(), v27 = -1 << *(a1 + 32), v28 = v26 & ~v27, ((*(v17 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v29 = ~v27;
      while (1)
      {
        v30 = (*(a1 + 48) + 16 * v28);
        v31 = *v30 == v21 && v30[1] == v23;
        if (v31 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v17 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      sub_20B864C98(v15);
    }

    else
    {
LABEL_17:

      sub_20B8C6FC8(v15, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20BB5D4F4(0, *(v18 + 16) + 1, 1);
        v18 = v50;
      }

      v34 = *(v18 + 16);
      v33 = *(v18 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_20BB5D4F4(v33 > 1, v34 + 1, 1);
        v18 = v50;
      }

      *(v18 + 16) = v34 + 1;
      sub_20B8C6FC8(v48, v18 + v44 + v34 * v49);
    }

    ++v16;
  }

  while (v16 != v46);
  return v18;
}

uint64_t static AppWillResignOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20BD31F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_20C1344C4();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135AE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v13, v12, &qword_27C7620C8);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_20B520158(v12, &qword_27C7620C8);
    v21 = 1;
    v14 = swift_allocObject();
    *(v14 + 16) = 5;
    *(v14 + 20) = v21;
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_20B520158(v12, &qword_27C7620C8);
    sub_20C135AA4();
    (*(v7 + 8))(v9, v6);
    v16 = sub_20C134324();
    v18 = v17;
    (*(v19 + 8))(v5, v3);
    sub_20B8C9E3C(v16, v18, v20);
  }
}

uint64_t sub_20BD32238(int a1)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_20C1344C4();
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  v62 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_20C135AE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v20, v13, &qword_27C7620C8);
  v21 = v15;
  v22 = *(v15 + 48);
  v23 = v14;
  if (v22(v13, 1, v14) == 1)
  {
    return sub_20B520158(v13, &qword_27C7620C8);
  }

  v25 = v21;
  v26 = *(v21 + 32);
  v27 = v19;
  v28 = v3;
  v54 = v23;
  v55 = v27;
  v26();
  v29 = v26;
  v30 = v57;
  sub_20C135AA4();
  v31 = sub_20C134324();
  v33 = v32;
  (*(v58 + 8))(v30, v28);
  v34 = v62;
  sub_20B8CA380(v31, v33, v62);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v56;
  v37 = v54;
  (*(v25 + 16))(v56, v55, v54);
  v38 = v25;
  v39 = (*(v25 + 80) + 25) & ~*(v25 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = v60;
  (v29)(v40 + v39, v36, v37);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_20BD34C48;
  *(v41 + 24) = v40;
  v43 = v64;
  v42 = v65;
  v44 = v61;
  (*(v64 + 16))(v61, v34, v65);
  v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v46 = (v59 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v43 + 32))(v47 + v45, v44, v42);
  v48 = (v47 + v46);
  *v48 = sub_20BD34D88;
  v48[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v49 = v63;
  sub_20C137C94();
  (*(v43 + 8))(v34, v42);
  v50 = v67;
  v51 = sub_20C137CB4();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  v51(sub_20B5DF6DC, v52);

  (*(v66 + 8))(v49, v50);
  return (*(v38 + 8))(v55, v37);
}

uint64_t sub_20BD3287C@<X0>(unsigned int *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v10 = result;
  if (result)
  {
    sub_20BD3292C(a2, a3, v7 | (v8 << 32));
  }

  *a4 = v10 == 0;
  return result;
}

void sub_20BD3292C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v6 = sub_20C13C554();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a3 & 0x100000000) != 0)
  {
    v9 = dbl_20C17A968[a3];
    v10 = 0x3030301030300uLL >> (8 * a3);
  }

  else
  {
    v9 = *&a3;
    LOBYTE(v10) = 2;
  }

  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_mediaTagStringBuilder), *(v3 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_mediaTagStringBuilder + 24));
  sub_20C1359C4();
  v11 = sub_20C138544();

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  v13 = v12 | 0x3000000000000003;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C14F980;
  *(v14 + 32) = v13;
  v41 = 0uLL;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = 0;
  *&v43 = 0;
  WORD4(v43) = 128;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = v14;
  *&v48[0] = MEMORY[0x277D84F90];
  *(v48 + 8) = 0u;
  *(&v48[1] + 8) = 0u;
  *(&v48[2] + 1) = 0;
  v49 = 2;
  nullsub_1(&v41);
  v15 = v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row;
  v16 = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 144);
  v50[8] = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 128);
  v50[9] = v16;
  v51 = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 160);
  v17 = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 80);
  v50[4] = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 64);
  v50[5] = v17;
  v18 = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 112);
  v50[6] = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 96);
  v50[7] = v18;
  v19 = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 16);
  v50[0] = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row);
  v50[1] = v19;
  v20 = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 48);
  v50[2] = *(v4 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 32);
  v50[3] = v20;
  v21 = v48[2];
  *(v15 + 128) = v48[1];
  *(v15 + 144) = v21;
  *(v15 + 160) = v49;
  v22 = v46;
  *(v15 + 64) = v45;
  *(v15 + 80) = v22;
  v23 = v48[0];
  *(v15 + 96) = v47;
  *(v15 + 112) = v23;
  v24 = v42;
  *v15 = v41;
  *(v15 + 16) = v24;
  v25 = v44;
  *(v15 + 32) = v43;
  *(v15 + 48) = v25;
  v26 = v11;

  sub_20B520158(v50, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v28 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_14;
  }

  v29 = sub_20B61DE78(v4, Strong);
  if (!v30)
  {
    sub_20C0C2D50(0);
LABEL_14:

    swift_unknownObjectRelease();
    return;
  }

  v32 = v30;
  v36 = v29;
  v37 = v31;
  sub_20B5E2E18();
  *v8 = sub_20C13D374();
  v33 = v39;
  v34 = v40;
  (*(v39 + 104))(v8, *MEMORY[0x277D85200], v40);
  v35 = sub_20C13C584();
  (*(v33 + 8))(v8, v34);
  if (v35)
  {
    if ((v38 & 0x80) != 0)
    {
      sub_20C10CA28(v4, v36, v38 & 1, v28);
    }

    else
    {
      sub_20B621684(v36, v32, v37, v4, v38 & 1, v28);
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_20BD32CFC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_subscriptionCache);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail, &qword_27C7620C8);
  return v0;
}

uint64_t sub_20BD32E30()
{
  sub_20BD32CFC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidedWorkoutTagsShelf()
{
  result = qword_27C76E530;
  if (!qword_27C76E530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD32EDC()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B9B577C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BD32FE0()
{
  sub_20B8C9C90();
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD330E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BD32238(1);
  }

  return result;
}

uint64_t sub_20BD33140@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, BOOL *a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v12 = result;
  if (result)
  {
    sub_20BD331F8(a2, a3, v9 | (v10 << 32), a4 & 1);
  }

  *a5 = v12 == 0;
  return result;
}

uint64_t sub_20BD331F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a1;
  v8 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = a2;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3 > 2)
    {
      if ((a3 - 4) < 2)
      {
        v19 = MEMORY[0x277D51478];
        goto LABEL_11;
      }

      if (a3 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!a3)
      {
        v21 = *(v12 + 104);
        if (a4)
        {
          v40 = MEMORY[0x277D51480];
        }

        else
        {
          v40 = MEMORY[0x277D513C0];
        }

        v20 = *v40;
        goto LABEL_12;
      }

      if (a3 != 1)
      {
        v19 = MEMORY[0x277D51480];
        goto LABEL_11;
      }
    }

    v19 = MEMORY[0x277D51440];
    goto LABEL_11;
  }

LABEL_2:
  v19 = MEMORY[0x277D51420];
LABEL_11:
  v20 = *v19;
  v21 = *(v12 + 104);
LABEL_12:
  v21(v14, v20, v11, v16);
  (*(v12 + 32))(v18, v14, v11);
  v22 = sub_20C136664();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(&v10[v8[5]], v18, v11);
  v23 = v8[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v8[8];
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v10[v25], v26, v27);
  (*(v28 + 56))(&v10[v25], 0, 1, v27);
  v29 = v8[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
  v32 = v8[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v10[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v10[v8[7]];
  v36 = v42;
  *v35 = v41;
  *(v35 + 1) = v36;
  v37 = &v10[v8[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v10[v8[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA03D8(v4, v10, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B66A720(v10, type metadata accessor for ShelfMetricAction);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_20BD33644@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BD336BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BD33788@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v6, v5, &qword_27C7620C8);
  v7 = sub_20C135AE4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    result = sub_20B520158(v5, &qword_27C7620C8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v7;
    *(a1 + 32) = &off_2822F5CE0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(v8 + 32))(boxed_opaque_existential_1, v5, v7);
  }

  return result;
}

uint64_t sub_20BD3390C(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v8 = *(a1 + 4);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 36) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);

  return sub_20C137C94();
}

uint64_t sub_20BD339CC(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(unsigned __int8 *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 4);
  LODWORD(v10) = *a5;
  BYTE4(v10) = v6;
  a3(&v9, &v10);
  v7 = v9;
  v10 = v9;
  v11 = 0;
  a1(&v10);

  return sub_20B71C58C(v7, 0);
}

uint64_t sub_20BD33A70()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_row;
  sub_20B5D8060(v14);
  v3 = v14[9];
  *(v2 + 128) = v14[8];
  *(v2 + 144) = v3;
  *(v2 + 160) = v15;
  v4 = v14[5];
  *(v2 + 64) = v14[4];
  *(v2 + 80) = v4;
  v5 = v14[7];
  *(v2 + 96) = v14[6];
  *(v2 + 112) = v5;
  v6 = v14[1];
  *v2 = v14[0];
  *(v2 + 16) = v6;
  v7 = v14[3];
  *(v2 + 32) = v14[2];
  *(v2 + 48) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail;
  v9 = sub_20C135AE4();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_eventHub) = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v13, v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v13, v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for DownloadSubscriptionCoordinator();
  swift_allocObject();
  v10 = sub_20B8CB478();
  v11 = (v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_downloadSubscriptionCoordinator);
  *v11 = v10;
  v11[1] = &off_2822B2B58;
  *(v10 + 24) = &off_2822E10A0;
  swift_unknownObjectWeakAssign();
  *(*(v1 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_downloadSubscriptionCoordinator) + 40) = &off_2822E1088;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_20BD33CD0(uint64_t a1, uint64_t a2, int a3)
{
  v23 = a3;
  v25 = a1;
  v26 = a2;
  v4 = sub_20C1344C4();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20C135AE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-v12];
  v14 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v14, v13, &qword_27C7620C8);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    return sub_20B520158(v13, &qword_27C7620C8);
  }

  v16 = v23;
  (*(v8 + 16))(v10, v13, v7);
  sub_20B520158(v13, &qword_27C7620C8);
  sub_20C135AA4();
  v17 = sub_20C134324();
  v19 = v18;
  (*(v24 + 8))(v6, v4);
  (*(v8 + 8))(v10, v7);
  if (v17 == v25 && v19 == v26)
  {

    return sub_20BD32238(v16 & 1 | 0xFFFFFF80);
  }

  v21 = sub_20C13DFF4();

  if (v21)
  {
    return sub_20BD32238(v16 & 1 | 0xFFFFFF80);
  }

  return result;
}

void *sub_20BD33FB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v4 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v4, v3, &qword_27C7620C8);
  v5 = sub_20C135AE4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_20B520158(v3, &qword_27C7620C8);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v5;
    v20 = &off_2822F5CE0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v6 + 32))(boxed_opaque_existential_1, v3, v5);
  }

  sub_20B52F9E8(&v18, &v15, &qword_27C764BB8);
  v12[1] = v16;
  v12[0] = v15;
  v13 = v17;
  if (*(&v16 + 1))
  {
    sub_20B51C710(v12, v14);
    v8 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_20BC06C58(0, v8[2] + 1, 1, v8);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_20BC06C58((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    sub_20B51C710(v14, &v8[5 * v10 + 4]);
  }

  else
  {
    sub_20B520158(v12, &qword_27C764BB8);
    v8 = MEMORY[0x277D84F90];
  }

  sub_20B520158(&v18, &qword_27C764BB8);
  return v8;
}

uint64_t sub_20BD34234(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = (v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v60 = v58 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = v58 - v9;
  v10 = sub_20C1344C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v58 - v15;
  v17 = sub_20C135AE4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v71 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v20);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a1, v22);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  result = sub_20B66A720(v22, type metadata accessor for ShelfItemAction);
  if (a1 == 13)
  {
    v24 = OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_workoutDetail;
    v25 = v72;
    swift_beginAccess();
    sub_20B52F9E8(v25 + v24, v16, &qword_27C7620C8);
    if ((v18[6])(v16, 1, v17) == 1)
    {
      sub_20B520158(v16, &qword_27C7620C8);
      v26 = v61;
      sub_20C13B534();
      v27 = sub_20C13BB74();
      v28 = sub_20C13D1D4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_20B517000, v27, v28, "Download action tapped before workout detail was available", v29, 2u);
        MEMORY[0x20F2F6A40](v29, -1, -1);
      }

      return (*(v69 + 8))(v26, v70);
    }

    else
    {
      v61 = v18;
      v30 = v18[4];
      v59 = v17;
      (v30)(v71, v16, v17);
      sub_20C135AA4();
      v31 = sub_20C134324();
      v33 = v32;
      (*(v11 + 8))(v13, v10);
      v58[1] = *(v72 + OBJC_IVAR____TtC9SeymourUI22GuidedWorkoutTagsShelf_downloadSubscriptionCoordinator);
      v34 = v63;
      v35 = v31;
      v58[0] = v31;
      sub_20B8CA380(v31, v33, v63);
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v35;
      *(v37 + 32) = v33;
      *(v37 + 40) = 0;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_20BD34C0C;
      *(v38 + 24) = v37;
      v39 = v65;
      v40 = v62;
      v41 = v66;
      (*(v65 + 16))(v62, v34, v66);
      v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v43 = swift_allocObject();
      v44 = v40;
      v45 = v33;
      (*(v39 + 32))(v43 + v42, v44, v41);
      v46 = (v43 + ((v6 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v46 = sub_20B9B7CE0;
      v46[1] = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
      v47 = v64;
      sub_20C137C94();
      v48 = v41;
      v49 = v58[0];
      (*(v39 + 8))(v34, v48);
      v50 = v68;
      v51 = sub_20C137CB4();
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      v51(sub_20B52347C, v52);

      (*(v67 + 8))(v47, v50);

      sub_20B75FBFC(v49, v33, &v73);
      if (v73 == 2)
      {
        v53 = v60;
        sub_20C13B4E4();

        v54 = sub_20C13BB74();
        v55 = sub_20C13D1D4();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v76 = v57;
          *v56 = 136446210;
          *(v56 + 4) = sub_20B51E694(v49, v45, &v76);
          _os_log_impl(&dword_20B517000, v54, v55, "No download entry for identifier: %{public}s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          MEMORY[0x20F2F6A40](v57, -1, -1);
          MEMORY[0x20F2F6A40](v56, -1, -1);
        }

        (*(v69 + 8))(v53, v70);
      }

      else
      {
        v76 = v73;
        v77 = v74;
        *v78 = v75[0];
        *&v78[9] = *(v75 + 9);
        if (BYTE8(v74) == 255 || (BYTE8(v74) & 1) == 0 || ((1 << v77) & 0x1DD) != 0)
        {
          if (v73)
          {
            sub_20B75DE1C(v49, v33, &v76, 0);
          }

          else
          {
            sub_20B75D680(v49, v33, &v76);
          }
        }

        else if (v77 == 1)
        {
          sub_20B75E1A8(v49, v33, &v76, 0);
        }

        sub_20B520158(&v73, &qword_27C764BC0);
      }

      return v61[1](v71, v59);
    }
  }

  return result;
}

uint64_t sub_20BD34CCC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E1B1C(a1, a2, v2 + v6, v8, v9);
}

char *sub_20BD34D90(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  *v13 = v11;
  *(v13 + 1) = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v16 &selRef_count + 2];
  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v16 setTextColor_];

  v18 = objc_opt_self();
  v19 = [v18 systemBackgroundColor];
  [v16 setBackgroundColor_];

  *&v4[v15] = v16;
  v20 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_subtitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v22 = [v18 whiteColor];
  [v21 setTextColor_];

  v23 = [v18 systemBackgroundColor];
  [v21 setBackgroundColor_];

  *&v4[v20] = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setAdjustsFontForContentSizeCategory_];
  [v25 setLineBreakMode_];
  [v25 setNumberOfLines_];
  [v25 setAllowsDefaultTighteningForTruncation_];
  v26 = [v18 whiteColor];
  [v25 setTextColor_];

  v27 = [v18 systemBackgroundColor];
  [v25 setBackgroundColor_];

  *&v4[v24] = v25;
  v28 = &v4[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_layout];
  *v28 = xmmword_20C15E900;
  *(v28 + 1) = xmmword_20C17A9A0;
  *(v28 + 2) = xmmword_20C17A9B0;
  *&v4[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_contentViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabelTopConstraint] = 0;
  v123.receiver = v4;
  v123.super_class = type metadata accessor for TabletStandardBrickRowCell();
  v29 = objc_msgSendSuper2(&v123, sel_initWithFrame_, a1, a2, a3, a4);
  v120 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel;
  v30 = *&v29[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel];
  v31 = *MEMORY[0x277D76918];
  v32 = objc_opt_self();
  v121 = v29;
  v33 = v29;
  v34 = v30;
  v35 = [v32 preferredFontDescriptorWithTextStyle:v31 compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = objc_opt_self();
  v39 = [v38 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  v119 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_subtitleLabel;
  v40 = *MEMORY[0x277D76968];
  v41 = *&v33[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_subtitleLabel];
  v42 = [v32 preferredFontDescriptorWithTextStyle:v40 compatibleWithTraitCollection:0];
  v43 = [v42 fontDescriptorWithSymbolicTraits_];
  if (v43)
  {
    v44 = v43;

    v42 = v44;
  }

  v45 = [v38 fontWithDescriptor:v42 size:0.0];

  [v41 setFont_];
  v46 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel;
  v47 = *MEMORY[0x277D76940];
  v48 = *&v33[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel];
  v49 = [v32 preferredFontDescriptorWithTextStyle:v47 compatibleWithTraitCollection:0];
  v50 = [v49 fontDescriptorWithSymbolicTraits_];
  if (v50)
  {
    v51 = v50;

    v49 = v51;
  }

  v52 = [v38 fontWithDescriptor:v49 size:0.0];

  [v48 setFont_];
  v53 = [v33 contentView];
  v54 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView;
  [v53 addSubview_];

  v55 = [v33 &selRef_setMaximumFractionDigits_];
  [v55 addSubview_];

  v56 = [v33 &selRef_setMaximumFractionDigits_];
  [v56 addSubview_];

  v57 = [v33 &selRef_setMaximumFractionDigits_];
  [v57 addSubview_];

  v118 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20C1580B0;
  v59 = [*&v33[v54] leadingAnchor];
  v117 = v46;
  v60 = [v33 &selRef_setMaximumFractionDigits_];
  v61 = [v60 leadingAnchor];

  v62 = [v59 constraintEqualToAnchor_];
  *(v58 + 32) = v62;
  v63 = [*&v33[v54] trailingAnchor];
  v64 = [v33 &selRef_setMaximumFractionDigits_];
  v65 = [v64 trailingAnchor];

  v66 = [v63 &selRef:v65 alertControllerReleasedDictationButton:? + 5];
  *(v58 + 40) = v66;
  v67 = [*&v33[v54] topAnchor];
  v68 = [v33 &selRef_setMaximumFractionDigits_];
  v69 = [v68 &selRef_setLineBreakMode_];

  v70 = [v67 &selRef:v69 alertControllerReleasedDictationButton:? + 5];
  *(v58 + 48) = v70;
  v71 = [*&v33[v54] widthAnchor];
  v72 = [v33 &selRef_setMaximumFractionDigits_];
  v73 = [v72 widthAnchor];

  v74 = [v71 &selRef:v73 alertControllerReleasedDictationButton:? + 5];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v75) = v122;
  [v74 setPriority_];
  *(v58 + 56) = v74;
  v76 = [*&v33[v54] heightAnchor];
  v77 = [*&v33[v54] widthAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 multiplier:0.5625];

  sub_20C13BBA4();
  LODWORD(v79) = v122;
  [v78 setPriority_];
  *(v58 + 64) = v78;
  v80 = [*&v33[v117] leadingAnchor];
  v81 = [v33 contentView];
  v82 = [v81 leadingAnchor];

  v83 = [v80 constraintEqualToAnchor_];
  *(v58 + 72) = v83;
  v84 = [*&v33[v117] topAnchor];
  v85 = [*&v33[v54] bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:10.0];

  *(v58 + 80) = v86;
  v87 = [*&v33[v117] trailingAnchor];
  v88 = [v33 contentView];
  v89 = [v88 trailingAnchor];

  v90 = [v87 constraintLessThanOrEqualToAnchor_];
  *(v58 + 88) = v90;
  v91 = [*&v121[v120] leadingAnchor];
  v92 = [v33 &selRef_setMaximumFractionDigits_];
  v93 = [v92 leadingAnchor];

  v94 = [v91 constraintEqualToAnchor_];
  *(v58 + 96) = v94;
  v95 = [*&v121[v120] trailingAnchor];
  v96 = [v33 &selRef_setMaximumFractionDigits_];
  v97 = [v96 trailingAnchor];

  v98 = [v95 constraintLessThanOrEqualToAnchor_];
  *(v58 + 104) = v98;
  v99 = [*&v33[v119] leadingAnchor];
  v100 = [v33 &selRef_setMaximumFractionDigits_];
  v101 = [v100 leadingAnchor];

  v102 = [v99 constraintEqualToAnchor_];
  *(v58 + 112) = v102;
  v103 = [*&v33[v119] topAnchor];
  v104 = [*&v121[v120] bottomAnchor];
  v105 = [v103 constraintEqualToAnchor:v104 constant:3.0];

  *(v58 + 120) = v105;
  v106 = [*&v33[v119] trailingAnchor];
  v107 = [v33 &selRef_setMaximumFractionDigits_];
  v108 = [v107 trailingAnchor];

  v109 = [v106 constraintLessThanOrEqualToAnchor_];
  *(v58 + 128) = v109;
  v110 = [*&v33[v119] bottomAnchor];
  v111 = [v33 &selRef_setMaximumFractionDigits_];
  v112 = [v111 bottomAnchor];

  v113 = [v110 constraintLessThanOrEqualToAnchor_];
  *(v58 + 136) = v113;
  sub_20B51C88C(0, &qword_281100500);
  v114 = sub_20C13CC54();

  [v118 activateConstraints_];

  sub_20BD35FF4();
  v115 = [objc_opt_self() defaultCenter];
  [v115 addObserver:v33 selector:sel_updateFonts_ name:*MEMORY[0x277D76810] object:0];

  return v33;
}

uint64_t sub_20BD35DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TabletStandardBrickRowCell();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20BD35FF4()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel];
  v2 = [v1 text];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = sub_20C13C954();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabelTopConstraint;
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabelTopConstraint];
    if (v9)
    {
      [v9 setActive_];
    }

    v10 = [*&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel] topAnchor];
    v11 = [v1 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:4.0];

    v13 = *&v0[v8];
    *&v0[v8] = v12;
    v14 = v12;

    if (v14)
    {
      [v14 setActive_];
    }

    v15 = &v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_contentViewBottomConstraint];
    v16 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_contentViewBottomConstraint];
    if (v16)
    {
      [v16 setActive_];
    }

    v17 = [v1 firstBaselineAnchor];
    v18 = [v0 contentView];
    v19 = [v18 bottomAnchor];

    v20 = [v17 constraintEqualToAnchor:v19 constant:-75.0];
  }

  else
  {
LABEL_12:
    v21 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabelTopConstraint;
    v22 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabelTopConstraint];
    if (v22)
    {
      [v22 setActive_];
    }

    v23 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel];
    v24 = [v23 topAnchor];
    v25 = [*&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView] bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

    v27 = *&v0[v21];
    *&v0[v21] = v26;
    v28 = v26;

    if (v28)
    {
      [v28 setActive_];
    }

    v15 = &v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_contentViewBottomConstraint];
    v29 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_contentViewBottomConstraint];
    if (v29)
    {
      [v29 setActive_];
    }

    v17 = [v23 firstBaselineAnchor];
    v30 = [v0 contentView];
    v19 = [v30 bottomAnchor];

    v20 = [v17 constraintEqualToAnchor:v19 constant:-51.5];
  }

  v31 = v20;

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v32) = v35;
  [v31 setPriority_];
  v33 = *v15;
  *v15 = v31;
  v34 = v31;

  [v34 setActive_];
}

id sub_20BD363B4()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel];
  v2 = *MEMORY[0x277D76918];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:0];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  v7 = objc_opt_self();
  v8 = [v7 fontWithDescriptor:v4 size:0.0];

  [v1 setFont_];
  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_subtitleLabel];
  v10 = [v3 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = [v7 fontWithDescriptor:v10 size:0.0];

  [v9 setFont_];
  v14 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel];
  v15 = [v3 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];
  if (v16)
  {
    v17 = v16;

    v15 = v17;
  }

  v18 = [v7 fontWithDescriptor:v15 size:0.0];

  [v14 setFont_];

  return [v0 setNeedsLayout];
}

id sub_20BD366CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabletStandardBrickRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TabletStandardBrickRowCell()
{
  result = qword_281101370;
  if (!qword_281101370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD36814()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD368F0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD3693C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD36994(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_20BD369F8(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  return sub_20B72097C(3, 2.0, v3);
}

void sub_20BD36A88(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v246 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v232 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v229 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v230 = &v198 - v9;
  v228 = v10;
  MEMORY[0x28223BE20](v11);
  v231 = &v198 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v13 - 8);
  v238 = &v198 - v14;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v239 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v227 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v198 - v17;
  v236 = sub_20C1391C4();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v237 = &v198 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_20C138A64();
  v20 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v240 = &v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v234 = &v198 - v23;
  v24 = sub_20C13C554();
  v247 = *(v24 - 8);
  v248 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (&v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_20C137C24();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v242 = v29;
  v243 = &v198 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v251 = &v198 - v31;
  v32 = sub_20C136CD4();
  v244 = *(v32 - 8);
  v245 = v32;
  MEMORY[0x28223BE20](v32);
  v250 = &v198 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134E44();
  MEMORY[0x28223BE20](v34 - 8);
  v249 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C134014();
  MEMORY[0x28223BE20](v36);
  v252 = &v198 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v40 == 33)
  {
    v60 = *&v1[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel];
    v61 = sub_20C13C914();
    [v60 setText_];

    v62 = *&v1[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_subtitleLabel];
    v63 = sub_20C13C914();
    [v62 setText_];

    v64 = *&v1[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel];
    v65 = sub_20C13C914();
    [v64 setText_];

    sub_20BD35FF4();
    sub_20BA1DB24();
    v66 = *&v1[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView];
    v67 = [v66 layer];
    [v67 setBorderColor_];

    v252 = [v66 layer];
    [v252 setBorderWidth_];
    v68 = v252;
  }

  else if (v40 == 32)
  {
    v223 = v28;
    v224 = v27;
    v209 = v20;
    v210 = v18;
    v208 = v6;
    v41 = v37;
    v42 = v38;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v44 = swift_projectBox();
    v45 = v44 + *(v43 + 64);
    v46 = *v45;
    v246 = *(v45 + 8);
    v47 = *(v45 + 16);
    v48 = *(v45 + 24);
    v49 = *(v45 + 32);
    v225 = *(v45 + 40);
    v50 = (v44 + *(v43 + 80));
    v52 = *v50;
    v51 = v50[1];
    v217 = v42;
    v53 = *(v42 + 16);
    v218 = v41;
    v53(v252, v44, v41);
    v54 = v1;
    v55 = *&v1[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel];
    v216 = v48;
    v219 = v49;
    v215 = v47;
    if (v51 >= 2)
    {
      v253 = v52;
      v254 = v51;
      sub_20B5F6EB0();
      v80 = v46;
      v81 = v246;
      v82 = v47;

      sub_20C13D9E4();
      v59 = sub_20C13C914();
    }

    else
    {
      v56 = v46;
      v57 = v246;
      v58 = v47;

      v59 = 0;
    }

    v83 = v46;
    [v55 setText_];

    v84 = v54;
    [*&v54[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel] setAttributedText_];
    [*&v54[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_subtitleLabel] setAttributedText_];
    sub_20BD35FF4();
    v85 = v249;
    sub_20C133F04();
    v213 = sub_20C138054();
    v222 = v86;
    v87 = v250;
    sub_20C134E34();
    v88 = v251;
    sub_20C136CB4();
    v212 = sub_20C136CC4();
    v220 = v89;
    sub_20B51C88C(0, &qword_281100530);
    *v26 = sub_20C13D374();
    v90 = v247;
    v91 = v248;
    (v247)[13](v26, *MEMORY[0x277D85200], v248);
    v92 = sub_20C13C584();
    (v90[1])(v26, v91);
    if (v92)
    {
      v94 = *&v84[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView];
      v93 = *&v84[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v94 setContentMode_];
      v96 = sub_20BA66C54(v88, v94, v93, 0);
      v221 = v84;
      v247 = v93;
      v214 = v94;
      v248 = ObjectType;
      if (v96)
      {
        v207 = v83;
        v211 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v97 = v223;
        v98 = *(v223 + 16);
        v99 = v243;
        v100 = v224;
        v203 = v223 + 16;
        v202 = v98;
        v98(v243, v88, v224);
        v101 = *(v97 + 80);
        v102 = (v101 + 24) & ~v101;
        v199 = v242 + 7;
        v103 = (v242 + 7 + v102) & 0xFFFFFFFFFFFFFFF8;
        v104 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
        v105 = (v104 + 23) & 0xFFFFFFFFFFFFFFF8;
        v206 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
        v205 = (v105 + 31) & 0xFFFFFFFFFFFFFFF8;
        v204 = v101;
        v106 = v93;
        v107 = swift_allocObject();
        *(v107 + 16) = v211;
        v108 = v97;
        v109 = v99;
        v110 = *(v108 + 32);
        v201 = v108 + 32;
        v200 = v110;
        v110(v107 + v102, v99, v100);
        v111 = (v107 + v103);
        v112 = v220;
        *v111 = v212;
        v111[1] = v112;
        v113 = (v107 + v104);
        v114 = v222;
        *v113 = v213;
        v113[1] = v114;
        *(v107 + v105) = 2;
        v115 = v107 + v206;
        *v115 = MEMORY[0x277D84F90];
        *(v115 + 8) = 0;
        v116 = (v107 + v205);
        *v116 = 0;
        v116[1] = 0;
        v117 = v106[19];

        v118 = v248;
        (v117)(sub_20BD382DC, v107, v248, v106);

        [v94 bounds];
        if (v119 <= 0.0 || (v121 = v120, v120 <= 0.0))
        {

          v83 = v207;
          v144 = v224;
          v145 = v223;
          v146 = v245;
          v88 = v251;
        }

        else
        {
          v122 = v119;
          v123 = v118;
          v124 = ~v204;
          v125 = v247;
          v247[15](0, v123, v247);
          v126 = v234;
          v127 = v94;
          v88 = v251;
          v128 = v224;
          v202(v234, v251, v224);
          (*(v223 + 56))(v126, 0, 1, v128);
          (v125)[2](v126, v123, v125);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v129 = sub_20C13D5A4();
          [v127 setBackgroundColor_];

          (v125[22])(COERCE_DOUBLE(*&v122), COERCE_DOUBLE(*&v121), 0, v123, v125);
          v130 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v131 = v128;
          v132 = v128;
          v133 = v202;
          v202(v109, v88, v131);
          v211 = v124;
          v134 = (v204 + 16) & v124;
          v135 = (v199 + v134) & 0xFFFFFFFFFFFFFFF8;
          v136 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
          v137 = swift_allocObject();
          v200(v137 + v134, v109, v132);
          *(v137 + v135) = v130;
          v138 = (v137 + v136);
          *v138 = v122;
          v138[1] = v121;
          v234 = v137;
          v139 = (v137 + ((v136 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v139 = 0;
          v139[1] = 0;
          v133(v109, v88, v132);
          (*(v235 + 104))(v237, *MEMORY[0x277D542A8], v236);

          v140 = v240;
          sub_20C138A54();
          v141 = v238;
          sub_20B5F1DC0(v140, v238);
          v142 = v239;
          v143 = v241;
          if ((*(v239 + 48))(v141, 1, v241) == 1)
          {
            sub_20B520158(v141, &unk_27C766670);
            sub_20BA1DB24();

            (*(v209 + 8))(v140, v233);
          }

          else
          {
            v148 = v142;
            v237 = *(v142 + 32);
            (v237)(v210, v141, v143);
            v149 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v150 = v243;
            v151 = v88;
            v152 = v224;
            v133(v243, v151, v224);
            v153 = v143;
            v154 = (v204 + 40) & v211;
            v155 = v154 + v242;
            v156 = (v154 + v242) & 0xFFFFFFFFFFFFFFF8;
            v157 = swift_allocObject();
            *(v157 + 2) = v149;
            v157[3] = v122;
            v157[4] = v121;
            v200(v157 + v154, v150, v152);
            *(v157 + v155) = 0;
            v158 = v157 + v156;
            *(v158 + 1) = 0;
            *(v158 + 2) = 0;
            v159 = swift_allocObject();
            *(v159 + 16) = sub_20BD38470;
            *(v159 + 24) = v157;
            v160 = v227;
            v161 = v153;
            (*(v148 + 16))(v227, v210, v153);
            v162 = v148;
            v163 = (*(v148 + 80) + 16) & ~*(v148 + 80);
            v164 = (v226 + v163 + 7) & 0xFFFFFFFFFFFFFFF8;
            v165 = swift_allocObject();
            (v237)(v165 + v163, v160, v161);
            v166 = (v165 + v164);
            *v166 = sub_20B5F67A4;
            v166[1] = v159;
            v167 = v230;
            sub_20C137C94();
            v168 = swift_allocObject();
            v169 = v234;
            *(v168 + 16) = sub_20BD383B4;
            *(v168 + 24) = v169;
            v170 = swift_allocObject();
            *(v170 + 16) = sub_20B5F67D4;
            *(v170 + 24) = v168;
            v171 = v232;
            v172 = v229;
            v173 = v208;
            (*(v232 + 16))(v229, v167, v208);
            v174 = (*(v171 + 80) + 16) & ~*(v171 + 80);
            v175 = (v228 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
            v176 = swift_allocObject();
            (*(v171 + 32))(v176 + v174, v172, v173);
            v177 = (v176 + v175);
            *v177 = sub_20B5DF204;
            v177[1] = v170;

            v178 = v231;
            sub_20C137C94();
            v179 = *(v171 + 8);
            v179(v167, v173);
            v180 = sub_20C137CB4();
            v181 = swift_allocObject();
            *(v181 + 16) = 0;
            *(v181 + 24) = 0;
            v180(sub_20B52347C, v181);

            v179(v178, v173);
            v88 = v251;
            (*(v162 + 8))(v210, v241);
            (*(v209 + 8))(v240, v233);
          }

          v83 = v207;
          v144 = v224;
          v145 = v223;
          v146 = v245;
        }

        v147 = v244;
        v85 = v249;
        v87 = v250;
      }

      else
      {

        v144 = v224;
        v145 = v223;
        v147 = v244;
        v146 = v245;
      }

      (*(v145 + 8))(v88, v144);
      (*(v147 + 8))(v87, v146);

      sub_20B62A2AC(v85);
      v182 = v252;
      v183 = sub_20C133EB4() > 0;
      v185 = v247;
      v184 = v248;
      v247[33](v183, v248, v247);
      v186 = sub_20C133E54();
      (v185[37])(v186);

      v187 = sub_20C133FF4();
      v189 = v188;
      v191 = v190;
      sub_20B5F0A1C(v187, v188, v190);
      v192 = v191;
      v193 = v182;
      sub_20B584078(v187, v189, v192);
      v194 = sub_20C133E94();
      v196 = v195;
      LOBYTE(v256) = 3;
      v253 = v194;
      v254 = v195;
      LOBYTE(v187) = v197 & 1;
      v255 = v197 & 1;
      sub_20B852060();
      sub_20B8520B4();
      LOBYTE(v189) = sub_20C133C14();
      sub_20B583F4C(v194, v196, v187);
      if (v189)
      {
        v185[34](1, v184, v185);

        (*(v217 + 8))(v193, v218);
      }

      else
      {
        (*(v217 + 8))(v193, v218);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v69 = v1;
    v70 = sub_20C13BB74();
    v71 = sub_20C13D1D4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v253 = v74;
      *v72 = 138543618;
      *(v72 + 4) = v69;
      *v73 = v69;
      *(v72 + 12) = 2082;
      v256 = a1;
      v75 = sub_20B5F66D0();
      v76 = v69;
      v77 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v75);
      v79 = sub_20B51E694(v77, v78, &v253);

      *(v72 + 14) = v79;
      _os_log_impl(&dword_20B517000, v70, v71, "Attempted to configure %{public}@ with item: %{public}s", v72, 0x16u);
      sub_20B520158(v73, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v73, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x20F2F6A40](v74, -1, -1);
      MEMORY[0x20F2F6A40](v72, -1, -1);
    }

    (*(v246 + 1))(v5, v3);
  }
}

void sub_20BD382DC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA58564(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BD383B4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63890(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BD38470(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F30EC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BD38524()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_captionLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v8 &selRef_count + 2];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v8 setTextColor_];

  v10 = objc_opt_self();
  v11 = [v10 systemBackgroundColor];
  [v8 setBackgroundColor_];

  *(v0 + v7) = v8;
  v12 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_subtitleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setAllowsDefaultTighteningForTruncation_];
  v14 = [v10 whiteColor];
  [v13 setTextColor_];

  v15 = [v10 systemBackgroundColor];
  [v13 setBackgroundColor_];

  *(v0 + v12) = v13;
  v16 = OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  [v17 setAllowsDefaultTighteningForTruncation_];
  v18 = [v10 whiteColor];
  [v17 setTextColor_];

  v19 = [v10 systemBackgroundColor];
  [v17 setBackgroundColor_];

  *(v0 + v16) = v17;
  v20 = (v0 + OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_layout);
  *v20 = xmmword_20C15E900;
  v20[1] = xmmword_20C17A9A0;
  v20[2] = xmmword_20C17A9B0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_contentViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_titleLabelTopConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BD38A20()
{
  result = qword_27C76E548;
  if (!qword_27C76E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E548);
  }

  return result;
}

unint64_t sub_20BD38A78()
{
  result = qword_27C76E550;
  if (!qword_27C76E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E550);
  }

  return result;
}

unint64_t sub_20BD38AD0()
{
  result = qword_27C76E558;
  if (!qword_27C76E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E558);
  }

  return result;
}

unint64_t sub_20BD38B28()
{
  result = qword_27C76E560;
  if (!qword_27C76E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E560);
  }

  return result;
}

unint64_t sub_20BD38B84()
{
  result = qword_27C76E568;
  if (!qword_27C76E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E568);
  }

  return result;
}

void sub_20BD38C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*&Strong[OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter])
    {
      v6 = *&Strong[OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter + 8];
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      (*(v6 + 48))(a3, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_20BD38CBC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  [a1 setDelegate_];
  if (a4)
  {
    a4 = sub_20C13C914();
  }

  [a1 setText_];

  if (a6)
  {
    a6 = sub_20C13C914();
  }

  [a1 setPlaceholder_];

  return [a1 setAutocapitalizationType_];
}

uint64_t sub_20BD3933C()
{
  v1 = [v0 actions];
  sub_20BD39A28();
  v2 = sub_20C13CC74();

  v3 = sub_20BEF6A5C(v2);

  return v3;
}

void sub_20BD393A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = type metadata accessor for PageAlertAction();
  v55 = *(v58 - 8);
  v7 = MEMORY[0x28223BE20](v58);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v60 = v8;
  MEMORY[0x28223BE20](v7);
  *&v61 = &v50 - v9;
  ObjectType = swift_getObjectType();
  v11 = *(a4 + 8);
  v51 = a3;
  v11(v69, a3, a4);
  v79[0] = v70;
  sub_20BAF353C(v79, &v75);
  sub_20B76328C(v69);
  v11(v71, ObjectType, a4);
  v78 = v72;
  sub_20BAF353C(&v78, &v75);
  sub_20B76328C(v71);
  v50 = a1;
  v52 = a4;
  v11(v73, ObjectType, a4);
  sub_20B76328C(v73);
  v12 = v74;
  if (*(&v79[0] + 1))
  {
    v13 = sub_20C13C914();
    sub_20B520158(v79, &qword_27C767830);
    if (*(&v78 + 1))
    {
LABEL_3:
      v14 = sub_20C13C914();
      sub_20B520158(&v78, &qword_27C767830);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (*(&v78 + 1))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v13 message:v14 preferredStyle:v12];

  v16 = &v15[OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter];
  v17 = v52;
  *v16 = v50;
  *(v16 + 1) = v17;
  swift_unknownObjectRelease();
  v18 = *(v17 + 24);
  swift_unknownObjectRetain();
  v19 = v15;
  v18(v15, &off_2822E16E0, v51, v17);
  v11(&v75, ObjectType, v17);
  v20 = v75;
  v21 = *(v75 + 16);
  v62 = v19;
  v22 = v61;
  if (v21)
  {
    v23 = *(v58 + 20);
    v57 = v61 + *(v58 + 24);
    v58 = v23;
    v24 = objc_opt_self();
    v25 = *(v55 + 80);
    v26 = v20 + ((v25 + 32) & ~v25);
    v27 = *(v55 + 72);
    v55 = v25;
    v56 = v24;
    v28 = (v25 + 24) & ~v25;
    v53 = &v65;
    v54 = v27;
    do
    {
      sub_20B8B511C(v26, v22);
      v32 = *(v57 + 8);
      v33 = qword_20C17ADD0[*(v22 + v58)];
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v59;
      sub_20B8B511C(v22, v59);
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      sub_20BC000F4(v35, v36 + v28);

      if (v32)
      {
        v29 = sub_20C13C914();
      }

      else
      {
        v29 = 0;
      }

      v67 = sub_20BC02998;
      v68 = v36;
      v63 = MEMORY[0x277D85DD0];
      v64 = 1107296256;
      v65 = sub_20B762A80;
      v66 = &block_descriptor_121;
      v30 = _Block_copy(&v63);

      v31 = [v56 actionWithTitle:v29 style:v33 handler:v30];
      _Block_release(v30);

      [v62 addAction_];
      v22 = v61;
      sub_20B7B8DA0(v61);
      v26 += v54;
      --v21;
    }

    while (v21);
  }

  v37 = v76;
  v77 = v76;
  v38 = *(v76 + 16);

  v59 = v38;
  if (v38)
  {
    v39 = 0;
    while (v39 < *(v37 + 16))
    {
      v40 = v39 + 1;
      v41 = (v37 + 32 + 32 * v39);
      v42 = swift_allocObject();
      v44 = v41[1];
      v60 = *v41;
      v43 = v60;
      v61 = v44;
      v45 = v62;
      *(v42 + 16) = v62;
      *(v42 + 40) = v44;
      *(v42 + 24) = v43;
      v67 = sub_20BC02A54;
      v68 = v42;
      v63 = MEMORY[0x277D85DD0];
      v64 = 1107296256;
      v65 = sub_20B762A80;
      v66 = &block_descriptor_10_2;
      v46 = _Block_copy(&v63);
      swift_bridgeObjectRetain_n();
      v47 = v45;
      swift_bridgeObjectRetain_n();

      [v47 addTextFieldWithConfigurationHandler_];

      _Block_release(v46);
      v39 = v40;
      if (v59 == v40)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    sub_20B76328C(&v75);
    sub_20B520158(&v77, &qword_27C76E5E8);
    v48 = [v62 popoverPresentationController];
    if (v48)
    {
      v49 = v48;
      [v48 setSourceItem_];

      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_20BD39A28()
{
  result = qword_27C76E5F0;
  if (!qword_27C76E5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76E5F0);
  }

  return result;
}

char *sub_20BD39A7C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  v13 = *MEMORY[0x277D743F8];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v16 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v17 = swift_initStackObject();
  v18 = MEMORY[0x277D74430];
  *(v17 + 16) = xmmword_20C14F980;
  v19 = *v18;
  *(v17 + 32) = *v18;
  *(v17 + 40) = v13;
  v20 = v16;
  v21 = v19;
  v22 = sub_20B6B134C(v17);
  swift_setDeallocating();
  sub_20B520158(v17 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v22;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v23 = sub_20C13C744();

  v24 = [v14 fontDescriptorByAddingAttributes_];

  v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
  [v12 setFont_];

  v26 = [objc_opt_self() whiteColor];
  [v12 setTextColor_];

  LODWORD(v27) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v27];

  *&v4[v11] = v12;
  v28 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_downloadButton;
  type metadata accessor for DownloadButton();
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v28] = v29;
  v83.receiver = v4;
  v83.super_class = type metadata accessor for DownloadButtonHeaderCell();
  v30 = objc_msgSendSuper2(&v83, sel_initWithFrame_, a1, a2, a3, a4);
  v31 = [v30 contentView];
  v32 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_titleLabel;
  [v31 addSubview_];

  v33 = v30;
  v34 = [v33 &selRef_setMaximumFractionDigits_];
  v35 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_downloadButton;
  [v34 addSubview_];

  [*&v33[v35] setSmu:-10.0 touchInsets:{-10.0, -10.0, -10.0}];
  v36 = *&v33[v35];
  [v36 addTarget:v33 action:sel_handleDownloadButtonTapped_ forControlEvents:64];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20C14FE90;
  v38 = [*&v30[v32] leadingAnchor];
  v39 = [v33 &selRef_setMaximumFractionDigits_];
  v40 = [v39 leadingAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v37 + 32) = v41;
  v42 = [*&v30[v32] topAnchor];
  v43 = [v33 &selRef_setMaximumFractionDigits_];
  v44 = [v43 &selRef_setLineBreakMode_];

  v45 = [v42 constraintEqualToAnchor_];
  *(v37 + 40) = v45;
  v46 = [*&v30[v32] bottomAnchor];
  v47 = [v33 &selRef_setMaximumFractionDigits_];
  v48 = [v47 &selRef_secondaryLabel + 5];

  v49 = [v46 constraintEqualToAnchor_];
  v81 = v37;
  *(v37 + 48) = v49;
  v50 = [*&v30[v32] trailingAnchor];
  v51 = [*&v33[v35] leadingAnchor];
  v52 = [v50 constraintLessThanOrEqualToAnchor_];

  *(v37 + 56) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_20C14FE90;
  v54 = [*&v33[v35] topAnchor];
  v55 = [v33 contentView];
  v56 = [v55 topAnchor];

  v57 = [v54 constraintGreaterThanOrEqualToAnchor_];
  *(v53 + 32) = v57;
  v58 = [*&v33[v35] &selRef_secondaryLabel + 5];
  v59 = [v33 contentView];
  v60 = [v59 &selRef_secondaryLabel + 5];

  v61 = [v58 constraintLessThanOrEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v62) = v82;
  [v61 setPriority_];
  *(v53 + 40) = v61;
  v63 = [*&v33[v35] centerYAnchor];
  v64 = [v33 contentView];
  v65 = [v64 centerYAnchor];

  v66 = [v63 constraintEqualToAnchor_];
  *(v53 + 48) = v66;
  v67 = [*&v33[v35] trailingAnchor];
  v68 = [v33 contentView];
  v69 = [v68 trailingAnchor];

  v70 = [v67 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v71) = v82;
  [v70 setPriority_];
  *(v53 + 56) = v70;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14F580;
  v73 = [v33 contentView];

  v74 = [v73 heightAnchor];
  v75 = [*&v33[v35] heightAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:18.0];

  *(v72 + 32) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  v77 = swift_initStackObject();
  *(v77 + 16) = xmmword_20C1517D0;
  *(v77 + 32) = v81;
  *(v77 + 40) = v53;
  *(v77 + 48) = v72;
  v78 = objc_opt_self();
  sub_20BE54D20(v77);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v79 = sub_20C13CC54();

  [v78 activateConstraints_];

  return v33;
}

id sub_20BD3A7D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadButtonHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DownloadButtonHeaderCell()
{
  result = qword_27C76E618;
  if (!qword_27C76E618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD3A8E0()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD3A98C(unint64_t a1, int a2)
{
  v49 = a2;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xC)
  {
    v50 = v4;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v13 = *&v2[OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_titleLabel];
    v14 = sub_20C13C914();
    [v13 setText_];

    sub_20C13B4A4();
    v15 = v2;
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v18 = 138543618;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2082;
      v20 = v15;
      v21 = sub_20BCFF494(*&v11, v12);
      v48 = v5;
      v23 = sub_20B51E694(v21, v22, &v52);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_20B517000, v16, v17, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v18, 0x16u);
      sub_20B520158(v19, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      v24 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x20F2F6A40](v24, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);

      result = (*(v48 + 8))(v10, v50);
    }

    else
    {

      result = (*(v5 + 8))(v10, v50);
    }

    v38 = *&v15[OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_downloadButton];
    v39 = &v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v40 = *&v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v41 = v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
    if (v41 <= 1)
    {
      if (v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
      {
        if (v12 != 1 || ((LODWORD(v40) ^ LODWORD(v11)) & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v12 || LOBYTE(v40) != LOBYTE(v11))
      {
        goto LABEL_26;
      }
    }

    else if (v41 == 2)
    {
      if (v12 != 2 || v40 != v11)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v41 == 255)
      {
LABEL_26:
        *v39 = v11;
        v39[8] = v12;
        sub_20C010054(*&v11, v12, 2.0);
        v43 = v42;
        v45 = v44;
        ObjectType = swift_getObjectType();
        sub_20C0DC2BC(v43, v49 & 1, v38, ObjectType, v45);
        return swift_unknownObjectRelease();
      }

      if (*&v40 <= 1)
      {
        if (v40 == 0.0)
        {
          if (v12 != 3 || v11 != 0.0)
          {
            goto LABEL_26;
          }
        }

        else if (v12 != 3 || *&v11 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (*&v40 == 2)
      {
        if (v12 != 3 || *&v11 != 2)
        {
          goto LABEL_26;
        }
      }

      else if (*&v40 == 3)
      {
        if (v12 != 3 || *&v11 != 3)
        {
          goto LABEL_26;
        }
      }

      else if (v12 != 3 || *&v11 != 4)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    sub_20C13B534();

    v26 = v2;
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1D4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v50 = v4;
      v30 = v29;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = a1;
      v52 = v32;
      *v30 = 138543618;
      *(v30 + 4) = v26;
      *v31 = v26;
      *(v30 + 12) = 2082;
      v33 = sub_20B5F66D0();
      v34 = v26;
      v35 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v33);
      v37 = sub_20B51E694(v35, v36, &v52);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_20B517000, v27, v28, "Attempted to configure %{public}@ with item: %{public}s", v30, 0x16u);
      sub_20B520158(v31, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F2F6A40](v32, -1, -1);
      MEMORY[0x20F2F6A40](v30, -1, -1);

      return (*(v5 + 8))(v7, v50);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

uint64_t sub_20BD3AEF8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD3AF44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD3AF9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BD3B000()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  v5 = *MEMORY[0x277D743F8];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74430];
  *(v9 + 32) = *MEMORY[0x277D74430];
  *(v9 + 40) = v5;
  v11 = v8;
  v12 = v10;
  v13 = sub_20B6B134C(v9);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v13;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v14 = sub_20C13C744();

  v15 = [v6 fontDescriptorByAddingAttributes_];

  v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  [v4 setFont_];

  v17 = [objc_opt_self() whiteColor];
  [v4 setTextColor_];

  LODWORD(v18) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v18];

  *(v0 + v3) = v4;
  v19 = OBJC_IVAR____TtC9SeymourUI24DownloadButtonHeaderCell_downloadButton;
  type metadata accessor for DownloadButton();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v19) = v20;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD3B3B0()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BD3B594()
{
  v1 = *(v0 + 16);
  sub_20C13E164();
  if (v1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    sub_20C13D604();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BD3B618()
{
  if (*(v0 + 16))
  {
    MEMORY[0x20F2F58E0](1);

    return sub_20C13CA64();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    return sub_20C13D604();
  }
}

uint64_t sub_20BD3B6A0()
{
  v1 = *(v0 + 16);
  sub_20C13E164();
  if (v1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    sub_20C13D604();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BD3B720(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_20B63C198();
      return sub_20C13D5F4() & 1;
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return sub_20C13DFF4();
}

unint64_t sub_20BD3B7CC()
{
  result = qword_27C76E628;
  if (!qword_27C76E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E628);
  }

  return result;
}

uint64_t sub_20BD3B830()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29ShareSheetArtworkItemProvider_assetClient), *(v0 + OBJC_IVAR____TtC9SeymourUI29ShareSheetArtworkItemProvider_assetClient + 24));
  result = sub_20C137C14();
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI29ShareSheetArtworkItemProvider_size);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 >= 2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI29ShareSheetArtworkItemProvider_size + 8);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 2147483650.0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_20C139E84();
}

id sub_20BD3BA64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareSheetArtworkItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ShareSheetArtworkItemProvider()
{
  result = qword_27C76E638;
  if (!qword_27C76E638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BD3BB6C()
{
  result = sub_20C137C24();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BD3BC10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI29ShareSheetArtworkItemProvider_artwork;
  v5 = sub_20C137C24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BD3BCB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  v7[5] = v6;

  sub_20B719888(v5, v6);

  return sub_20C137C94();
}

id sub_20BD3BD58(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = &v36 - v14;
  MEMORY[0x28223BE20](v15);
  v41 = &v36 - v16;
  sub_20BAE9A20(v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BD3C7DC;
  *(v18 + 24) = v17;
  (*(v5 + 16))(v7, v10, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v7, v4);
  v21 = (v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20BD3C7D0;
  v21[1] = v18;
  v22 = v36;

  v23 = v38;
  sub_20C137C94();
  (*(v5 + 8))(v10, v4);
  v24 = swift_allocObject();
  *(v24 + 16) = v37;
  *(v24 + 24) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BD3C7F4;
  *(v25 + 24) = v24;
  v27 = v39;
  v26 = v40;
  (*(v11 + 16))(v39, v23, v40);
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  (*(v11 + 32))(v29 + v28, v27, v26);
  v30 = (v29 + ((v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20B5F7764;
  v30[1] = v25;

  v31 = v41;
  sub_20C137C94();
  v32 = *(v11 + 8);
  v32(v23, v26);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B5DF6DC, v34);

  v32(v31, v26);
  return [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
}

id sub_20BD3C1FC(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = &v36 - v14;
  MEMORY[0x28223BE20](v15);
  v41 = &v36 - v16;
  sub_20BD3B830();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BD3C6A0;
  *(v18 + 24) = v17;
  (*(v5 + 16))(v7, v10, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v7, v4);
  v21 = (v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20BD3C6BC;
  v21[1] = v18;
  v22 = v36;

  v23 = v38;
  sub_20C137C94();
  (*(v5 + 8))(v10, v4);
  v24 = swift_allocObject();
  *(v24 + 16) = v37;
  *(v24 + 24) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BD3C6EC;
  *(v25 + 24) = v24;
  v27 = v39;
  v26 = v40;
  (*(v11 + 16))(v39, v23, v40);
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  (*(v11 + 32))(v29 + v28, v27, v26);
  v30 = (v29 + ((v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20B5DF204;
  v30[1] = v25;

  v31 = v41;
  sub_20C137C94();
  v32 = *(v11 + 8);
  v32(v23, v26);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B52347C, v34);

  v32(v31, v26);
  return [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
}

uint64_t sub_20BD3C708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_20BD3C90C()
{
  v1 = v0;
  v74.receiver = v0;
  v74.super_class = type metadata accessor for TVFilterOptionsViewController();
  objc_msgSendSuper2(&v74, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_menuButtonTapped];
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490);
  v3 = sub_20C13CC54();

  [v2 setAllowedPressTypes_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 addGestureRecognizer_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setOpaque_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_titleLabel;
  [v10 addSubview_];

  v13 = sub_20C060B2C();
  *&v13[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8] = &off_2822E1CD0;
  swift_unknownObjectWeakAssign();

  v14 = sub_20C060B2C();
  v15 = *&v14[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v15 setClipsToBounds_];
  v16 = sub_20C060B2C();
  v17 = *&v16[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v17 setContentInsetAdjustmentBehavior_];
  v18 = sub_20C060B2C();
  v19 = *&v18[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v20 = &v1[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_layout];
  [v19 setContentInset_];

  v21 = sub_20C060B2C();
  v22 = *&v21[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v22 setRemembersLastFocusedIndexPath_];
  v23 = sub_20C060B2C();
  v24 = *&v23[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  v73 = v2;
  v27 = sub_20C060B2C();
  v28 = *&v27[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v26 addSubview_];
  sub_20B7963D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150AE0;
  v30 = [*&v1[v12] leadingAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor:v33 constant:v20[5]];
  *(v29 + 32) = v34;
  v35 = [*&v1[v12] trailingAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  v38 = [v36 trailingAnchor];

  v39 = [v35 constraintEqualToAnchor:v38 constant:-v20[7]];
  *(v29 + 40) = v39;
  v40 = [*&v1[v12] topAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:v20[4]];
  *(v29 + 48) = v44;
  v45 = sub_20C060B2C();
  v46 = *&v45[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v47 = [v46 leadingAnchor];
  v48 = [v1 view];
  if (!v48)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  *(v29 + 56) = v51;
  v52 = sub_20C060B2C();
  v53 = *&v52[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v54 = [v53 trailingAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v54 constraintEqualToAnchor_];
  *(v29 + 64) = v58;
  v59 = sub_20C060B2C();
  v60 = *&v59[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v61 = [v60 topAnchor];
  v62 = [*&v1[v12] bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:v20[6]];

  *(v29 + 72) = v63;
  v64 = sub_20C060B2C();
  v65 = *&v64[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v66 = [v65 bottomAnchor];
  v67 = [v1 view];
  if (v67)
  {
    v68 = v67;
    v69 = objc_opt_self();
    v70 = [v68 bottomAnchor];

    v71 = [v66 constraintEqualToAnchor_];
    *(v29 + 80) = v71;
    sub_20B51C88C(0, &qword_281100500);
    v72 = sub_20C13CC54();

    [v69 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_20BD3D1E8()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_dataProvider] + 40);
  v3 = *(v2 + 16);

  if (!v3)
  {
LABEL_5:

    v9 = [v0 navigationController];
    if (v9)
    {
      v10 = v9;
      v17 = [v9 popViewControllerAnimated_];

      v11 = v17;
      if (v17)
      {
LABEL_15:

        return;
      }
    }

    v12 = [v1 parentViewController];
    if (v12)
    {
      v18 = v12;
      v13 = [v12 navigationController];
      if (!v13 || (v14 = v13, v15 = [v13 popViewControllerAnimated_], v14, !v15))
      {
        [v1 dismissViewControllerAnimated:1 completion:0];
LABEL_14:
        v11 = v18;
        goto LABEL_15;
      }
    }

    v16 = [v1 presentingViewController];
    if (!v16)
    {
      return;
    }

    v18 = v16;
    [v16 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_14;
  }

  v4 = 0;
  v5 = (v2 + 40);
  while (v4 < *(v2 + 16))
  {
    ++v4;
    v6 = *v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 24);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v5 += 2;
    if (v3 == v4)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

id sub_20BD3D45C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterOptionsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVFilterOptionsViewController()
{
  result = qword_27C76E680;
  if (!qword_27C76E680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD3D594()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD3D6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  v6 = sub_20C060B2C();
  sub_20B51CC64(v6 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v11);

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = a4(a1, v7, *(v8 + 8));
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_20BD3D7B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20BD3D80C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BD3D8F4(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_metricPublishingDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_20BD3D950()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_layout);
  *v1 = xmmword_20C150E40;
  v1[1] = xmmword_20C150E50;
  v1[2] = xmmword_20C150E60;
  v1[3] = xmmword_20C150E70;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_visibility) = 2;
  v2 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_lastFocusedIndexPath;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_settlingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_metricPublishingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v5 setNumberOfLines_];
  v6 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v5 setFont_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD3DB10(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_20C13DFF4() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_20C13DFF4() & 1) != 0)
    {
      v6 = type metadata accessor for SessionMusicTrack();
      if (MEMORY[0x20F2EF350](a1 + *(v6 + 24), a2 + *(v6 + 24)))
      {
        v7 = *(v6 + 28);
        v8 = *(a1 + v7);
        v9 = *(a2 + v7);
        if (v8)
        {
          if (v9)
          {
            sub_20B71D438();
            v10 = v9;
            v11 = v8;
            v12 = sub_20C13D5F4();

            if (v12)
            {
              return 1;
            }
          }
        }

        else if (!v9)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for SessionMusicTrack()
{
  result = qword_27C76E690;
  if (!qword_27C76E690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD3DC6C()
{
  sub_20C137C24();
  if (v0 <= 0x3F)
  {
    sub_20BD3DD00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BD3DD00()
{
  if (!qword_27C76E6A0)
  {
    sub_20B71D438();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76E6A0);
    }
  }
}

uint64_t sub_20BD3DD68(void *a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C150060;
  v8 = [a1 topAnchor];
  v9 = [a3 topAnchor];
  v10 = *(v3 + 56);
  v11 = [v8 constraintEqualToAnchor:v9 constant:v10];

  *(v7 + 32) = v11;
  v12 = [a1 leadingAnchor];
  v13 = [a3 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:v10];

  *(v7 + 40) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [a3 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-v10];

  *(v7 + 48) = v17;
  v18 = [a1 widthAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(v7 + 56) = v19;
  v20 = [a1 heightAnchor];
  v21 = [a1 widthAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v7 + 64) = v22;
  v23 = [a2 centerXAnchor];
  v24 = [a1 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v7 + 72) = v25;
  v26 = [a2 centerYAnchor];
  v27 = [a1 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v7 + 80) = v28;
  v29 = [a2 widthAnchor];
  v30 = [a1 widthAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v7 + 88) = v31;
  v32 = [a2 heightAnchor];
  v33 = [a2 widthAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v7 + 96) = v34;
  return v7;
}

uint64_t sub_20BD3E11C(void *a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14FE90;
  v8 = [a1 leadingAnchor];
  v9 = [a2 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:*(v3 + 64)];

  *(v7 + 32) = v10;
  v11 = [a1 centerYAnchor];
  v12 = [a3 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [a1 trailingAnchor];
  v15 = [a3 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-*(v3 + 80)];

  *(v7 + 48) = v16;
  v17 = [a1 heightAnchor];
  v18 = [a2 heightAnchor];
  v19 = [v17 constraintLessThanOrEqualToAnchor:v18 multiplier:1.0];

  *(v7 + 56) = v19;
  return v7;
}

void sub_20BD3E324(void *a1)
{
  [objc_msgSend(a1 container)];
  swift_unknownObjectRelease();
  if (sub_20C1380F4() > 1u)
  {
    sub_20C13DE24();
    __break(1u);
  }

  else
  {
    v2 = [a1 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    sub_20C13D424();
  }
}

double sub_20BD3E4B4@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D76940];
  v17 = *MEMORY[0x277D743F8];
  v3 = *MEMORY[0x277D767F8];
  v19 = MEMORY[0x277D84FA0];
  v16 = v3;
  sub_20B6FF83C(v18, 1);
  v21 = 1;
  v20 = 0;
  v4 = v19;
  sub_20C13E164();
  v15 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 >= 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_7;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = v4;
    sub_20B706478(4, v7, isUniquelyReferenced_nonNull_native);
    v4 = v18[0];
  }

LABEL_7:
  v12 = v21;
  v13 = v20;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  *(a1 + 24) = 0;
  *(a1 + 28) = v12;
  *(a1 + 29) = 9;
  *(a1 + 32) = v17;
  *(a1 + 40) = v13;
  *(a1 + 48) = v4;
  *(a1 + 56) = xmmword_20C156580;
  result = 32.0;
  *(a1 + 72) = xmmword_20C17B220;
  return result;
}

uint64_t sub_20BD3E708(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [a1 leadingAnchor];
  v9 = [a2 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v4];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [a1 trailingAnchor];
  v14 = [a2 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

  LODWORD(v16) = 1148846080;
  [v15 setPriority_];
  v17 = v15;
  v18 = [a1 topAnchor];
  v19 = [a2 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v5];

  LODWORD(v21) = 1148846080;
  [v20 setPriority_];
  v22 = [a1 bottomAnchor];
  v23 = [a2 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

  LODWORD(v25) = 1148846080;
  [v24 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14FE90;
  *(v26 + 32) = v12;
  *(v26 + 40) = v17;
  *(v26 + 48) = v20;
  *(v26 + 56) = v24;

  return v26;
}

uint64_t sub_20BD3E984()
{
  v1 = OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_delegate);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MarketingInlineBannerShelf()
{
  result = qword_27C76E6A8;
  if (!qword_27C76E6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BD3EAD8()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BD3EB90(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_contentIdentifier);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_contentIdentifier + 8);
  *(v7 + 16) = v9;
  *(v7 + 24) = v8;
  sub_20B51D968(a1, v7 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C14F980;
  *(v10 + 32) = v7 | 0x3000000000000005;
  v33 = 0uLL;
  LOBYTE(v34) = 1;
  *(&v34 + 1) = 0;
  *&v35 = 0;
  WORD4(v35) = 128;
  v36 = 0uLL;
  *&v37 = v9;
  *(&v37 + 1) = v8;
  *&v38 = v9;
  *(&v38 + 1) = v8;
  LOBYTE(v39) = 1;
  *(&v39 + 1) = v10;
  *&v40[0] = MEMORY[0x277D84F90];
  *(v40 + 8) = 0u;
  *(&v40[1] + 8) = 0u;
  *(&v40[2] + 1) = 0;
  v41 = 2;
  nullsub_1(&v33);
  v11 = v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 144);
  v42[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 128);
  v42[9] = v12;
  v43 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 160);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 80);
  v42[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 64);
  v42[5] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 112);
  v42[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 96);
  v42[7] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 16);
  v42[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row);
  v42[1] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 48);
  v42[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 32);
  v42[3] = v16;
  v17 = v40[2];
  *(v11 + 128) = v40[1];
  *(v11 + 144) = v17;
  *(v11 + 160) = v41;
  v18 = v38;
  *(v11 + 64) = v37;
  *(v11 + 80) = v18;
  v19 = v40[0];
  *(v11 + 96) = v39;
  *(v11 + 112) = v19;
  v20 = v34;
  *v11 = v33;
  *(v11 + 16) = v20;
  v21 = v36;
  *(v11 + 32) = v35;
  *(v11 + 48) = v21;
  swift_bridgeObjectRetain_n();

  sub_20B634408(v42);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v23 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v24 = sub_20B61DCE8(v1, Strong);
    if (v25)
    {
      v27 = v24;
      v28 = v25;
      v29 = v26;
      v32 = v1;
      sub_20B5E2E18();
      *v6 = sub_20C13D374();
      (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
      v30 = sub_20C13C584();
      result = (*(v4 + 8))(v6, v3);
      if ((v30 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      sub_20B6213DC(v27, v28, v29, v32, 1, v23);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD3EEBC()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = 0uLL;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = 0;
  *&v29 = 0;
  WORD4(v29) = 128;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = MEMORY[0x277D84F90];
  *&v34[0] = MEMORY[0x277D84F90];
  *(v34 + 8) = 0u;
  *(&v34[1] + 8) = 0u;
  *(&v34[2] + 1) = 0;
  v35 = 2;
  nullsub_1(&v27);
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 144);
  v36[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 128);
  v36[9] = v6;
  v37 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 160);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 80);
  v36[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 64);
  v36[5] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 112);
  v36[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 96);
  v36[7] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 16);
  v36[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row);
  v36[1] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 48);
  v36[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 32);
  v36[3] = v10;
  v11 = v34[2];
  *(v5 + 128) = v34[1];
  *(v5 + 144) = v11;
  *(v5 + 160) = v35;
  v12 = v32;
  *(v5 + 64) = v31;
  *(v5 + 80) = v12;
  v13 = v34[0];
  *(v5 + 96) = v33;
  *(v5 + 112) = v13;
  v14 = v28;
  *v5 = v27;
  *(v5 + 16) = v14;
  v15 = v30;
  *(v5 + 32) = v29;
  *(v5 + 48) = v15;
  sub_20B634408(v36);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v18 = sub_20B61DCE8(v0, result);
      if (v19)
      {
        v21 = v18;
        v22 = v19;
        v23 = v20;
        v24 = v0;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
        v25 = sub_20C13C584();
        result = (*(v2 + 8))(v4, v1);
        if ((v25 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B6213DC(v21, v22, v23, v24, 1, v17);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BD3F148@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20BD3F1F4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_20BD3F240@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BD3F2EC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_contentIdentifier);

  return v1;
}

uint64_t sub_20BD3F340(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_20BD3F3CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14[-v2 - 8];
  v4 = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_activationState) = 1;
    swift_getObjectType();
    type metadata accessor for WorkoutPlanScheduleUpdated();
    sub_20BD45DE4(&qword_27C765870, type metadata accessor for WorkoutPlanScheduleUpdated);

    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(v14);
    if (*(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_canReplaceActivePage) == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
      (*(*(v7 - 8) + 56))(v6, 3, 3, v7);
      sub_20BD42C34(v6, 0);
      sub_20BD45D88(v6);
    }

    sub_20C13CDC4();
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v10 = sub_20C13CD94();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;

    sub_20B6383D0(0, 0, v3, &unk_20C17B588, v11);
  }
}

uint64_t sub_20BD3F6D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v3 = sub_20C13ADC4();
  v5 = *(v1 + *a1);
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F980;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_20B5D91B8();
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
    v9 = sub_20B5E10B0();

    return v9;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
    return sub_20B5E107C();
  }
}

uint64_t sub_20BD3F848(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + *a1), *(v2 + *a1 + 24));
  v4 = sub_20C13ADC4();
  v6 = *(v2 + *a2);
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C14F980;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_20B5D91B8();
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
    v10 = sub_20B5E10B0();

    return v10;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v6 + 48), *(v6 + 72));
    return sub_20B5E107C();
  }
}

uint64_t sub_20BD3F998()
{
  v1 = sub_20C1357B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BD46D40(v0, v7, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  v9 = (*(*(v8 - 8) + 48))(v7, 3, v8);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    if (!v9)
    {
      (*(v2 + 32))(v4, v7, v1);
      MEMORY[0x20F2F58E0](0);
      sub_20BD45DE4(&qword_27C76E750, MEMORY[0x277D51CB0]);
      sub_20C13C7C4();
      return (*(v2 + 8))(v4, v1);
    }

    v11 = 1;
  }

  return MEMORY[0x20F2F58E0](v11);
}

uint64_t sub_20BD3FBAC()
{
  v1 = v0;
  v2 = sub_20C1357B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BD46D40(v1, v8, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  v10 = (*(*(v9 - 8) + 48))(v8, 3, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v11 = 1;
LABEL_8:
    MEMORY[0x20F2F58E0](v11);
    return sub_20C13E1B4();
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x20F2F58E0](0);
  sub_20BD45DE4(&qword_27C76E750, MEMORY[0x277D51CB0]);
  sub_20C13C7C4();
  (*(v3 + 8))(v5, v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BD3FDE8()
{
  v1 = v0;
  v2 = sub_20C1357B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BD46D40(v1, v8, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  v10 = (*(*(v9 - 8) + 48))(v8, 3, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v11 = 1;
LABEL_8:
    MEMORY[0x20F2F58E0](v11);
    return sub_20C13E1B4();
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x20F2F58E0](0);
  sub_20BD45DE4(&qword_27C76E750, MEMORY[0x277D51CB0]);
  sub_20C13C7C4();
  (*(v3 + 8))(v5, v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BD40028(uint64_t a1, char a2)
{
  *(v3 + 424) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = sub_20C13BB84();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E768);
  *(v3 + 200) = swift_task_alloc();
  v5 = sub_20C132EE4();
  *(v3 + 208) = v5;
  *(v3 + 216) = *(v5 - 8);
  *(v3 + 224) = swift_task_alloc();
  v6 = sub_20C137054();
  *(v3 + 232) = v6;
  *(v3 + 240) = *(v6 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0);
  *(v3 + 272) = swift_task_alloc();
  v7 = sub_20C133594();
  *(v3 + 280) = v7;
  *(v3 + 288) = *(v7 - 8);
  *(v3 + 296) = swift_task_alloc();
  type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  *(v3 + 304) = swift_task_alloc();
  v8 = sub_20C1357B4();
  *(v3 + 312) = v8;
  *(v3 + 320) = *(v8 - 8);
  *(v3 + 328) = swift_task_alloc();
  sub_20C13CDA4();
  *(v3 + 336) = sub_20C13CD94();
  v10 = sub_20C13CD24();
  *(v3 + 344) = v10;
  *(v3 + 352) = v9;

  return MEMORY[0x2822009F8](sub_20BD40368, v10, v9);
}

uint64_t sub_20BD40368()
{
  v1 = v0[38];
  v2 = v0[18];
  v3 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_state;
  swift_beginAccess();
  sub_20BD46D40(v2 + v3, v1, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  if ((*(*(v4 - 8) + 48))(v1, 3, v4))
  {
    v5 = v0[38];

    sub_20BD45D88(v5);
LABEL_5:
    sub_20C13B454();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20B517000, v13, v14, "Couldn't find workout plan schedule to attempt to create plan.", v15, 2u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    v16 = v0[24];
    v17 = v0[19];
    v18 = v0[20];
    v19 = v0[17];

    (*(v18 + 8))(v16, v17);
    v20 = sub_20C133954();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);

    v21 = v0[1];

    return v21();
  }

  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[34];
  v9 = v0[18];
  (*(v0[40] + 32))(v0[41], v0[38], v0[39]);
  v10 = *(v9 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_reviewHeaderShelf);
  v11 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_selectedDay;
  swift_beginAccess();
  sub_20BD46C14(v10 + v11, v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v12 = v0[34];
    (*(v0[40] + 8))(v0[41], v0[39]);

    sub_20B520158(v12, &qword_27C76EAD0);
    goto LABEL_5;
  }

  v23 = v0[33];
  v24 = v0[30];
  v40 = v0[32];
  v41 = v0[31];
  v25 = v0[29];
  v39 = v0[25];
  v26 = v0[18];
  (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient), *(v26 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient + 24));
  v44 = *(*(v26 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_preferencesShelf) + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPreferencesShelf_selectedModalityPreferences);
  v0[45] = v44;

  v27 = sub_20BD3F6D4(&OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanStringBuilder);
  v42 = v28;
  v43 = v27;
  v0[46] = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_scheduleRequest;
  v30 = *(v24 + 16);
  v30(v23, v26 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_scheduleRequest, v25);
  sub_20C136FF4();
  v31 = *(v24 + 8);
  v31(v23, v25);
  v32 = sub_20C1376D4();
  (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
  v30(v40, v26 + v29, v25);
  sub_20C137034();
  v31(v40, v25);
  v30(v41, v26 + v29, v25);
  sub_20C137044();
  v31(v41, v25);
  v33 = swift_task_alloc();
  v0[47] = v33;
  *v33 = v0;
  v33[1] = sub_20BD40908;
  v34 = v0[41];
  v35 = v0[37];
  v36 = v0[28];
  v37 = v0[25];
  v38 = v0[17];

  return MEMORY[0x2821ADEF8](v38, v44, v43, v42, v36, v37, v34, v35);
}

uint64_t sub_20BD40908()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 200);
  *(*v1 + 384) = v0;

  sub_20B520158(v6, &qword_27C76E768);
  (*(v4 + 8))(v3, v5);
  v7 = *(v2 + 352);
  v8 = *(v2 + 344);
  if (v0)
  {
    v9 = sub_20BD40CA0;
  }

  else
  {
    v9 = sub_20BD40B14;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20BD40B14()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[17];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v8 = sub_20C133954();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BD40CA0()
{
  if (*(v0 + 424) == 1 && (swift_getErrorValue(), v1 = sub_20C134E24(), *(v0 + 40) = v1, *(v0 + 48) = sub_20BD45DE4(&qword_281103BC0, MEMORY[0x277D51210]), boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16)), (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51160], v1), v3 = sub_20C13E0D4(), __swift_destroy_boxed_opaque_existential_1(v0 + 16), (v3 & 1) != 0))
  {
    sub_20C13B454();
    v4 = sub_20C13BB74();
    v5 = sub_20C13D1D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20B517000, v4, v5, "Found existing active plan. Attempting recovery.", v6, 2u);
      MEMORY[0x20F2F6A40](v6, -1, -1);
    }

    v7 = *(v0 + 184);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);

    v10 = *(v9 + 8);
    *(v0 + 392) = v10;
    v10(v7, v8);
    v11 = swift_task_alloc();
    *(v0 + 400) = v11;
    *v11 = v0;
    v11[1] = sub_20BD4112C;

    return sub_20BD41F18();
  }

  else
  {

    v13 = *(v0 + 384);
    sub_20C13B454();
    v14 = v13;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 384);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v17;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_20B517000, v15, v16, "Error while attempting to create plan: %@", v18, 0xCu);
      sub_20B520158(v19, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    v22 = *(v0 + 384);
    v23 = v15;
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);
    v27 = *(v0 + 288);
    v26 = *(v0 + 296);
    v28 = *(v0 + 280);
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    v31 = *(v0 + 152);
    v34 = *(v0 + 328);
    v35 = *(v0 + 136);

    (*(v29 + 8))(v30, v31);
    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v34, v25);
    v32 = sub_20C133954();
    (*(*(v32 - 8) + 56))(v35, 1, 1, v32);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_20BD4112C()
{
  v2 = *v1;
  v2[51] = v0;

  if (v0)
  {
    v3 = v2[43];
    v4 = v2[44];

    return MEMORY[0x2822009F8](sub_20BD41510, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[52] = v5;
    *v5 = v2;
    v5[1] = sub_20BD4129C;
    v6 = v2[17];

    return sub_20BD40028(v6, 0);
  }
}

uint64_t sub_20BD4129C()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_20BD413BC, v3, v2);
}

uint64_t sub_20BD413BC()
{
  v1 = v0[48];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BD41510()
{
  v1 = *(v0 + 408);

  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 408);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to handle existing active plan: %@", v7, 0xCu);
    sub_20B520158(v8, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 392))(*(v0 + 176), *(v0 + 152));
  v11 = *(v0 + 384);
  sub_20C13B454();
  v12 = v11;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 384);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v15;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_20B517000, v13, v14, "Error while attempting to create plan: %@", v16, 0xCu);
    sub_20B520158(v17, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v17, -1, -1);
    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  v20 = *(v0 + 384);
  v21 = v13;
  v23 = *(v0 + 312);
  v22 = *(v0 + 320);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 280);
  v27 = *(v0 + 160);
  v28 = *(v0 + 168);
  v29 = *(v0 + 152);
  v33 = *(v0 + 328);
  v34 = *(v0 + 136);

  (*(v27 + 8))(v28, v29);
  (*(v25 + 8))(v24, v26);
  (*(v22 + 8))(v33, v23);
  v30 = sub_20C133954();
  (*(*(v30 - 8) + 56))(v34, 1, 1, v30);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_20BD418D4(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = a2;
  v5 = *(v2 + 32);
  v6 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier + 8);
  v63 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v75);
  v62 = v6;

  v61 = v7;
  v60 = sub_20C1380F4();
  v8 = type metadata accessor for MetricLocationStore();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F98];
  *(v9 + 16) = MEMORY[0x277D84F90];
  *(v9 + 24) = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v18 = type metadata accessor for CatalogPageImpressionTracker();
  v74[3] = v18;
  v19 = sub_20BD45DE4(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v74[4] = v19;
  v74[0] = v17;
  v73[3] = v8;
  v73[4] = &off_2822B6968;
  v73[0] = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v57 = v18;
    v58 = v8;
    v72[0] = v10;
    sub_20BB5D394(0, v20, 0);
    v10 = v72[0];
    v21 = (a1 + 32);
    do
    {
      v22 = *v21;
      v72[0] = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      v64 = v22;
      swift_unknownObjectRetain();
      if (v24 >= v23 >> 1)
      {
        sub_20BB5D394((v23 > 1), v24 + 1, 1);
        v10 = v72[0];
      }

      *(v10 + 16) = v24 + 1;
      v25 = v10 + 24 * v24;
      *(v25 + 32) = v64;
      *(v25 + 48) = 0;
      ++v21;
      --v20;
    }

    while (v20);
    v18 = v57;
    v8 = v58;
  }

  sub_20B51CC64(v74, v72);
  sub_20B51CC64(v73, v71);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v72, v72[3]);
  *&v64 = &v57;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v69 = v18;
  v70 = v19;
  v68[0] = v36;
  v66 = v8;
  v67 = &off_2822B6968;
  v65[0] = v37;
  v38 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = sub_20BE3AA74(v63, v62, v10, v60, v61, *v42, *v47, 2, v38);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v50 = *(v3 + 32);
  *(v3 + 32) = v49;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v52 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v76 = type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
    v77 = &off_2822E2080;
    v75[0] = v3;
    v54 = *(v3 + 32);
    v55 = *(v52 + 24);

    v56 = v54;
    v55(v75, v56, v59 & 1, ObjectType, v52);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  return result;
}

uint64_t sub_20BD41F18()
{
  v1[11] = v0;
  v2 = sub_20C133954();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_20C13CDA4();
  v1[21] = sub_20C13CD94();
  v5 = sub_20C13CD24();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_20BD4208C, v5, v4);
}

uint64_t sub_20BD4208C()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[11];
  sub_20C13B454();
  sub_20C13BB64();
  v5 = *(v3 + 8);
  v0[24] = v5;
  v0[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient;
  v0[26] = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient;
  v7 = *(v4 + v6 + 24);
  v8 = *(v4 + v6 + 32);
  __swift_project_boxed_opaque_existential_1((v4 + v6), v7);
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_20BD421C4;
  v10 = v0[14];

  return MEMORY[0x2821ADE88](v10, v7, v8);
}

uint64_t sub_20BD421C4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];
    v5 = sub_20BD424C0;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v3 = v2[22];
    v4 = v2[23];
    v5 = sub_20BD422F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BD422F0()
{

  sub_20C13B454();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "No invalid active workout plan found. Throwing.", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  v4 = v0[24];
  v5 = v0[19];
  v6 = v0[15];

  v4(v5, v6);
  v7 = sub_20C134E24();
  sub_20BD45DE4(&unk_27C762270, MEMORY[0x277D51210]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51168], v7);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BD424C0()
{
  v1 = v0[28];
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to query existing active workout plan: %@", v6, 0xCu);
    sub_20B520158(v7, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  v10 = v0[24];
  v11 = v0[18];
  v12 = v0[15];

  v10(v11, v12);
  swift_getErrorValue();
  v13 = sub_20C134CE4();
  v0[5] = v13;
  v0[6] = sub_20BD45DE4(&qword_27C76E760, MEMORY[0x277D51040]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51028], v13);
  v15 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v15)
  {
    sub_20C13B454();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "Found invalid active workout plan. Deleting all active workout plans.", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    v19 = v0[26];
    v20 = v0[24];
    v21 = v0[17];
    v22 = v0[15];
    v23 = v0[11];

    v20(v21, v22);
    v24 = *(v23 + v19 + 24);
    v25 = *(v23 + v19 + 32);
    __swift_project_boxed_opaque_existential_1((v23 + v19), v24);
    v26 = swift_task_alloc();
    v0[29] = v26;
    *v26 = v0;
    v26[1] = sub_20BD42994;

    return MEMORY[0x2821ADEB0](v24, v25);
  }

  else
  {
    v27 = v0[28];

    sub_20C13B454();
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1D4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20B517000, v28, v29, "No invalid active workout plan found. Throwing.", v30, 2u);
      MEMORY[0x20F2F6A40](v30, -1, -1);
    }

    v31 = v0[24];
    v32 = v0[19];
    v33 = v0[15];

    v31(v32, v33);
    v34 = sub_20C134E24();
    sub_20BD45DE4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51168], v34);
    swift_willThrow();

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_20BD42994()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_20BD42B84;
  }

  else
  {
    v5 = sub_20BD42AD0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20BD42AD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD42B84()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20BD42C34(uint64_t a1, int a2)
{
  v73 = a2;
  v4 = sub_20C1357B4();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v67[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E758);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v67[-v11];
  v13 = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v71 = &v67[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v67[-v18];
  MEMORY[0x28223BE20](v20);
  v77 = &v67[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v67[-v23];
  MEMORY[0x28223BE20](v25);
  v27 = &v67[-v26];
  v28 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_state;
  swift_beginAccess();
  v78 = v2;
  sub_20BD46D40(v2 + v28, v27, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v29 = *(v10 + 56);
  v74 = a1;
  sub_20BD46D40(a1, v12, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  sub_20BD46D40(v27, &v12[v29], type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v12, 3, v30);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      sub_20BD45D88(v27);
      v34 = v31(&v12[v29], 3, v30);
      v33 = v78;
      if (v34 != 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_20BD45D88(v27);
      v58 = v31(&v12[v29], 3, v30);
      v33 = v78;
      if (v58 != 3)
      {
        goto LABEL_7;
      }
    }

LABEL_23:
    v59 = v12;
    return sub_20BD45D88(v59);
  }

  if (v32)
  {
    sub_20BD45D88(v27);
    v57 = v31(&v12[v29], 3, v30);
    v33 = v78;
    if (v57 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  sub_20BD46D40(v12, v24, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  if (v31(&v12[v29], 3, v30))
  {
    sub_20BD45D88(v27);
    (*(v75 + 8))(v24, v76);
    v33 = v78;
LABEL_7:
    sub_20B520158(v12, &qword_27C76E758);
    goto LABEL_8;
  }

  (*(v75 + 32))(v8, &v12[v29], v76);
  v68 = sub_20C135784();
  v69 = *(v75 + 8);
  v64 = v8;
  v65 = v76;
  v69(v64, v76);
  sub_20BD45D88(v27);
  v69(v24, v65);
  result = sub_20BD45D88(v12);
  v33 = v78;
  if (v68)
  {
    return result;
  }

LABEL_8:
  sub_20BD46D40(v33 + v28, v77, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  swift_beginAccess();
  v35 = v33 + v28;
  v36 = v74;
  sub_20BD45E2C(v74, v35);
  swift_endAccess();
  sub_20BD46D40(v36, v19, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v37 = v31(v19, 3, v30);
  if (v37 > 1)
  {
    if (v37 != 2)
    {
      v51 = v70;
      sub_20BD46D40(v77, v70, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
      v52 = v31(v51, 3, v30);
      sub_20BD45D88(v51);
      if (v52 == 1)
      {
        sub_20BD418D4(*(v33 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_activeShelves), v73 & 1);
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v33 + 24);
      ObjectType = swift_getObjectType();
      v80 = type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
      v81 = &off_2822E2080;
      v79[0] = v33;
      v55 = *(v53 + 16);

      v56 = 1;
LABEL_26:
      v55(v79, 0, v56, ObjectType, v53);
      swift_unknownObjectRelease();
      sub_20BD45D88(v77);
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    goto LABEL_27;
  }

  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    type metadata accessor for LoadingErrorShelf();
    swift_allocObject();

    v62 = sub_20BEFE8F4(v61, 0, 0);

    *(inited + 32) = v62;
    *(inited + 40) = &off_2822F4EF0;
    sub_20BD418D4(inited, v73 & 1);
    swift_setDeallocating();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v33 + 24);
      ObjectType = swift_getObjectType();
      v80 = type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
      v81 = &off_2822E2080;
      v79[0] = v33;
      v55 = *(v53 + 16);

      v56 = 0;
      goto LABEL_26;
    }

LABEL_27:
    v59 = v77;
    return sub_20BD45D88(v59);
  }

  v38 = v72;
  (*(v75 + 32))(v72, v19, v76);
  v39 = v71;
  sub_20BD46D40(v77, v71, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v40 = v31(v39, 3, v30);
  sub_20BD45D88(v39);
  if (v40 == 1)
  {
    sub_20BD418D4(*(v33 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_activeShelves), v73 & 1);
  }

  v41 = sub_20C135774();

  v43 = v38;
  v44 = sub_20BD46194(v42, v41);

  *(v78 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_selectedModalityReferences) = v44;

  v45 = *(v78 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_preferencesShelf);
  *(v45 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPreferencesShelf_selectedModalityReferences) = v44;

  *(v45 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPreferencesShelf_preferenceTypes) = sub_20C0DFA90(v44);

  v47 = sub_20BD46854(v46, v44);
  v48 = v78;

  sub_20C0DE4F8(v47);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v49 = *(v48 + 24);
    v80 = type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
    v81 = &off_2822E2080;
    v79[0] = v48;

    if (sub_20C135794())
    {
      v50 = sub_20B6B3CAC(MEMORY[0x277D84F90]);
    }

    else
    {
      v50 = 2;
    }

    v66 = swift_getObjectType();
    (*(v49 + 16))(v79, 0, v50, v66, v49);
    swift_unknownObjectRelease();
    sub_20B7D33F0(0, v50);
    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  (*(v75 + 8))(v43, v76);
  result = sub_20BD45D88(v77);
  *(v48 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_canReplaceActivePage) = 0;
  return result;
}

uint64_t sub_20BD435C0()
{
  sub_20B583E6C(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient);

  v3 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_scheduleRequest;
  v4 = sub_20C137054();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_20BD45D88(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_state);
  return v0;
}

uint64_t sub_20BD43740()
{
  sub_20BD435C0();

  return swift_deallocClassInstance();
}

uint64_t sub_20BD437C0()
{
  result = sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    result = sub_20C137054();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(319);
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_20BD43970()
{
  sub_20BD439C8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20BD439C8()
{
  if (!qword_27C76E740)
  {
    v0 = sub_20C1357B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76E740);
    }
  }
}

uint64_t sub_20BD43A58(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanScheduleUpdated();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_20C13CDF4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_20BD46D40(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutPlanScheduleUpdated);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  sub_20BD46DA8(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_20B6380FC(0, 0, v7, &unk_20C17B598, v11);
}

uint64_t sub_20BD43C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD43CD0, 0, 0);
}

uint64_t sub_20BD43CD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    *(v0 + 80) = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BD43DD0, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BD43DD0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = sub_20C1357B4();
  (*(*(v3 - 8) + 16))(v2, v1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  (*(*(v4 - 8) + 56))(v2, 0, 3, v4);
  sub_20BD42C34(v2, 1);
  sub_20BD45D88(v2);
  sub_20B7BC670(v1);

  return MEMORY[0x2822009F8](sub_20BD43F00, 0, 0);
}

uint64_t sub_20BD43F00()
{
  **(v0 + 40) = *(v0 + 72) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD43F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_20C13BB84();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  v4[13] = swift_task_alloc();
  v6 = sub_20C137054();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_20C1357B4();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  sub_20C13CDA4();
  v4[20] = sub_20C13CD94();
  v9 = sub_20C13CD24();
  v4[21] = v9;
  v4[22] = v8;

  return MEMORY[0x2822009F8](sub_20BD44148, v9, v8);
}

uint64_t sub_20BD44148()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[14];
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient + 24);
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient + 32);
    v7 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient), v5);
    (*(v3 + 16))(v2, v7 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_scheduleRequest, v4);
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_20BD442EC;
    v9 = v0[19];
    v10 = v0[16];

    return MEMORY[0x2821ADED0](v9, v10, v5, v6);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20BD442EC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_20BD445E0;
  }

  else
  {
    v8 = sub_20BD44484;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20BD44484()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[13];

  (*(v3 + 16))(v4, v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  (*(*(v5 - 8) + 56))(v4, 0, 3, v5);
  sub_20BD42C34(v4, 1);
  sub_20BD45D88(v4);
  sub_20B7BC670(v1);
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BD445E0()
{
  v22 = v0;
  v1 = v0[25];

  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](v0[6], v0[7]);
    v12 = sub_20B51E694(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "[WorkoutPlanReviewPageDataProvider] Failed to make workout plan schedule: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[25];
  v17 = v0[13];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  (*(*(v18 - 8) + 56))(v17, 1, 3, v18);
  sub_20BD42C34(v17, 0);

  sub_20BD45D88(v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_20BD4486C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t *sub_20BD44914(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BD45E90(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t *sub_20BD449B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BD465E4(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_20BD44A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1357B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E758);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_20BD46D40(a1, &v22 - v12, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  sub_20BD46D40(a2, &v13[v15], type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(&v13[v15], 3, v16) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v17(&v13[v15], 3, v16) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_20B520158(v13, &qword_27C76E758);
    v19 = 0;
    return v19 & 1;
  }

  if (!v18)
  {
    sub_20BD46D40(v13, v10, type metadata accessor for WorkoutPlanReviewPageDataProvider.State);
    if (!v17(&v13[v15], 3, v16))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = sub_20C135784();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_20BD45D88(v13);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  if (v17(&v13[v15], 3, v16) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_20BD45D88(v13);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_20BD44D88(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v120 = a3;
  v115 = a2;
  v10 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v10 - 8);
  v113 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v12 - 8);
  v111 = v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v108 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v108 - v21;
  v121 = sub_20C1333A4();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v117 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v108 - v25;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_activationState) = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_canReplaceActivePage) = 1;
  v27 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_state;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  (*(*(v28 - 8) + 56))(v6 + v27, 2, 3, v28);
  v109 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_dependencies;
  *(v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_dependencies) = a1;
  *&v122 = a5;
  v110 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_modalityReferences;
  *(v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_modalityReferences) = a5;
  v29 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_scheduleRequest;
  v30 = sub_20C137054();
  v114 = *(v30 - 8);
  v31 = *(v114 + 16);
  v32 = v6 + v29;
  v33 = a4;
  v116 = v30;
  v31(v32, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB0);
  sub_20C133AA4();
  sub_20B51C710(&v133, v6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v6 + 80) = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  v108[2] = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_storefrontLocalizer;
  sub_20B51C710(&v133, v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  v108[1] = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient;
  sub_20B51C710(&v133, v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  v112 = a1;
  sub_20C133AA4();
  v108[0] = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanStringBuilder;
  *(v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_workoutPlanStringBuilder) = v133;
  v34 = *MEMORY[0x277D517D8];
  v35 = sub_20C1352F4();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v22, v34, v35);
  (*(v36 + 56))(v22, 0, 1, v35);
  v37 = sub_20C132C14();
  (*(*(v37 - 8) + 56))(v19, 1, 1, v37);
  v38 = sub_20C135ED4();
  (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
  v39 = sub_20C136914();
  (*(*(v39 - 8) + 56))(v111, 1, 1, v39);
  sub_20C133384();
  v40 = *(v119 + 16);
  v118 = v6;
  v41 = v26;
  v40(v6 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_metricPage, v26, v121);
  v120 = v33;
  v42 = sub_20C137014();
  v43 = v122;

  v44 = sub_20BD46194(v43, v42);
  swift_bridgeObjectRelease_n();
  v45 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_selectedModalityReferences;
  v46 = v117;
  v47 = v118;
  *(v118 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_selectedModalityReferences) = v44;
  v48 = v121;
  v40(v46, v41, v121);
  type metadata accessor for WorkoutPlanSurveyPreferencesShelf();
  swift_allocObject();
  v109 = v40;
  v49 = v112;

  v50 = sub_20C0DDB20(v49, v46, v44);
  v111 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_preferencesShelf;
  *(v47 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_preferencesShelf) = v50;
  v51 = sub_20C137024();
  type metadata accessor for WorkoutPlanReviewHeaderShelf();
  swift_allocObject();

  v52 = sub_20B99E1C8(v51);

  v110 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_reviewHeaderShelf;
  *(v47 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_reviewHeaderShelf) = v52;
  v53 = *(v47 + v45);
  v115 = v41;
  v109(v46, v41, v48);
  type metadata accessor for WorkoutPlanSchedulePickerShelf();
  swift_allocObject();

  v54 = sub_20B7C2AEC(v49, v122, v53, v46);

  v55 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_schedulePickerShelf;
  *(v47 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_schedulePickerShelf) = v54;
  v56 = v47;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v47 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  v57 = swift_allocObject();
  *(v57 + 32) = *(v56 + v110);
  v58 = (v57 + 32);
  *(v57 + 16) = xmmword_20C1517D0;
  v59 = *(v56 + v55);
  *(v57 + 40) = &off_2822BAD90;
  *(v57 + 48) = v59;
  v60 = *&v111[v56];
  *(v57 + 56) = &off_2822A6D60;
  *(v57 + 64) = v60;
  *(v57 + 72) = &off_282307AC0;
  *(v56 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_activeShelves) = v57;

  LODWORD(v117) = sub_20C1380F4();
  v61 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v112 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v61 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v62 = sub_20C13C724();
  v63 = type metadata accessor for CatalogPageImpressionTracker();
  v64 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v65 = MEMORY[0x277D221C0];
  v64[2] = sub_20C13C6D4();
  v64[3] = v62;
  v64[4] = v65;
  v134 = v63;
  v66 = sub_20BD45DE4(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v135 = v66;
  *&v133 = v64;
  v67 = type metadata accessor for MetricLocationStore();
  v68 = swift_allocObject();
  v69 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F98];
  *(v68 + 16) = MEMORY[0x277D84F90];
  *(v68 + 24) = v70;
  v71 = __swift_mutable_project_boxed_opaque_existential_1(&v133, v63);
  v113 = v108;
  v72 = MEMORY[0x28223BE20](v71);
  v74 = (v108 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = *v74;
  v132[3] = v63;
  v132[4] = v66;
  v132[0] = v76;
  v131[3] = v67;
  v131[4] = &off_2822B6968;
  v131[0] = v68;
  v77 = *(v57 + 16);
  if (v77)
  {
    v111 = v67;
    v78 = v66;
    v130[0] = v69;
    sub_20BB5D394(0, v77, 0);
    v69 = v130[0];
    do
    {
      v79 = *v58;
      v130[0] = v69;
      v80 = *(v69 + 16);
      v81 = *(v69 + 24);
      v122 = v79;
      swift_unknownObjectRetain();
      if (v80 >= v81 >> 1)
      {
        sub_20BB5D394((v81 > 1), v80 + 1, 1);
        v69 = v130[0];
      }

      *(v69 + 16) = v80 + 1;
      v82 = v69 + 24 * v80;
      *(v82 + 32) = v122;
      *(v82 + 48) = 0;
      ++v58;
      --v77;
    }

    while (v77);
    v66 = v78;
    v56 = v118;
    v67 = v111;
  }

  sub_20B51CC64(v132, v130);
  sub_20B51CC64(v131, v129);
  v83 = __swift_mutable_project_boxed_opaque_existential_1(v130, v130[3]);
  *&v122 = v108;
  v84 = MEMORY[0x28223BE20](v83);
  v86 = (v108 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86, v84);
  v88 = __swift_mutable_project_boxed_opaque_existential_1(v129, v129[3]);
  v89 = MEMORY[0x28223BE20](v88);
  v91 = (v108 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91, v89);
  v93 = *v86;
  v94 = *v91;
  v127 = v63;
  v128 = v66;
  v126[0] = v93;
  v124 = v67;
  v125 = &off_2822B6968;
  v123[0] = v94;
  v95 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v96 = __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
  v97 = MEMORY[0x28223BE20](v96);
  v99 = (v108 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v100 + 16))(v99, v97);
  v101 = __swift_mutable_project_boxed_opaque_existential_1(v123, v124);
  v102 = MEMORY[0x28223BE20](v101);
  v104 = (v108 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v105 + 16))(v104, v102);
  v106 = sub_20BE3AA74(0x6F59776569766552, 0xEE006E616C507275, v69, v117, v112, *v99, *v104, 2, v95);
  (*(v114 + 8))(v120, v116);
  (*(v119 + 8))(v115, v121);
  __swift_destroy_boxed_opaque_existential_1(v131);
  __swift_destroy_boxed_opaque_existential_1(v132);
  __swift_destroy_boxed_opaque_existential_1(v123);
  __swift_destroy_boxed_opaque_existential_1(v126);
  __swift_destroy_boxed_opaque_existential_1(v129);
  __swift_destroy_boxed_opaque_existential_1(v130);
  __swift_destroy_boxed_opaque_existential_1(&v133);
  *(v56 + 32) = v106;
  return v56;
}

uint64_t sub_20BD45D88(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BD45DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BD45E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanReviewPageDataProvider.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_20BD45E90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = sub_20C1365F4();
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v48 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v41 = 0;
  v42 = v8 + 16;
  v49 = a4 + 56;
  v43 = v8;
  v44 = (v8 + 8);
  v45 = v11;
  v46 = v7;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v48 + 48);
    v25 = *(v43 + 72);
    v47 = v23;
    (*(v43 + 16))(v11, v24 + v25 * v23, v6, v9);
    v26 = sub_20C1365A4();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, sub_20C13E164(), sub_20C13CA64(), v30 = sub_20C13E1B4(), v31 = -1 << *(a4 + 32), v32 = v30 & ~v31, ((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_26:
        v37 = v48;

        sub_20BC0EDE4(v40, v39, v41, v37);
        return;
      }
    }

    else
    {
LABEL_5:

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20BD46194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_20C1365A4();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_20C13E164(), sub_20C13CA64(), v29 = sub_20C13E1B4(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_20BC0EDE4(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_20BD44914(v38, v10, a1, v39);

  MEMORY[0x20F2F6A40](v38, -1, -1);

  return v36;
}

void sub_20BD465E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v29 = a2;
  v30 = a1;
  v36 = sub_20C137594();
  v6 = MEMORY[0x28223BE20](v36);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  v8 = 0;
  v38 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v33 = v5 + 16;
  v31 = 0;
  v32 = v5 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v39 = (v14 - 1) & v14;
LABEL_11:
    v20 = v34;
    v19 = v35;
    v21 = v16 | (v8 << 6);
    v22 = v36;
    v23 = (*(v35 + 16))(v34, *(v38 + 48) + *(v35 + 72) * v21, v36, v6);
    MEMORY[0x28223BE20](v23);
    *(&v28 - 2) = v20;
    v24 = v40;
    v25 = sub_20B796C74(sub_20BD46F08, (&v28 - 4), v37);
    v40 = v24;
    (*(v19 + 8))(v20, v22);
    v14 = v39;
    if (v25)
    {
      *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_15:
        v27 = v38;

        sub_20BC105C4(v30, v29, v31, v27);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20BD46854(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = *MEMORY[0x277D85DE8];
  v36 = sub_20C137594();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v38 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v3;
    v28 = &v28;
    v29 = v9;
    MEMORY[0x28223BE20](v11);
    v30 = &v28 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v10);
    v10 = 0;
    v37 = a1;
    v9 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    a1 = (v12 + 63) >> 6;
    v33 = v6 + 16;
    v34 = v6;
    v31 = 0;
    v32 = v6 + 8;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_12:
      v18 = v36;
      v3 = v34;
      v6 = v35;
      v19 = v15 | (v10 << 6);
      v20 = (*(v34 + 2))(v35, *(v37 + 48) + *(v34 + 9) * v19, v36);
      MEMORY[0x28223BE20](v20);
      *(&v28 - 2) = v6;
      v21 = v40;
      v22 = sub_20B796C74(sub_20BD46BF4, (&v28 - 4), v38);
      v40 = v21;
      v3[1](v6, v18);
      v14 = v39;
      if (v22)
      {
        *&v30[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_20BC105C4(v30, v29, v31, v37);

          return v24;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= a1)
      {
        goto LABEL_16;
      }

      v17 = *(v9 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v38;

  v24 = sub_20BD449B0(v26, v9, a1, v27);

  MEMORY[0x20F2F6A40](v26, -1, -1);

  return v24;
}

uint64_t sub_20BD46C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD46C8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BD43F70(a1, v4, v5, v6);
}

uint64_t sub_20BD46D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BD46DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduleUpdated();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD46E0C(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPlanScheduleUpdated() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20BD43C3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20BD46F24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_20BD46F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BD46FCC()
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](*v0);
  sub_20C13E184();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_20C13E184();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v1);
  MEMORY[0x20F2F58E0](v2);
  MEMORY[0x20F2F58E0](v3);
  MEMORY[0x20F2F58E0](v4);
  v5 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v5);
  return sub_20C13E1B4();
}

uint64_t sub_20BD470BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  MEMORY[0x20F2F58E0](*v0);
  sub_20C13E184();
  sub_20C13E184();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v1);
  MEMORY[0x20F2F58E0](v2);
  MEMORY[0x20F2F58E0](v3);
  MEMORY[0x20F2F58E0](v4);
  v5 = sub_20C137F94();
  return MEMORY[0x20F2F58E0](v5);
}

uint64_t sub_20BD47170()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0 + 56);
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  sub_20C13E184();
  sub_20C13E184();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v2);
  MEMORY[0x20F2F58E0](v3);
  MEMORY[0x20F2F58E0](v4);
  MEMORY[0x20F2F58E0](v5);
  v6 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v6);
  return sub_20C13E1B4();
}

BOOL sub_20BD4725C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return sub_20BD47310(v5, v7);
}

unint64_t sub_20BD472BC()
{
  result = qword_27C76E770;
  if (!qword_27C76E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E770);
  }

  return result;
}

BOOL sub_20BD47310(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v4 = a1;
    v5 = a2;
    v6 = sub_20C13DFF4();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v8 = sub_20C137F94();
  return v8 == sub_20C137F94();
}

unint64_t sub_20BD47420()
{
  result = qword_27C76E778;
  if (!qword_27C76E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E778);
  }

  return result;
}

uint64_t sub_20BD47474(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E780);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E788);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_20C132C14();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C132E94();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_20C13B6A4();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_20C13B6B4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B694();
  v19 = sub_20C132EE4();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  sub_20C132E84();

  sub_20C13B684();
  v20 = *MEMORY[0x277D28100];
  v21 = sub_20C13B6C4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v6, v20, v21);
  (*(v22 + 56))(v6, 0, 1, v21);
  (*(v16 + 16))(v3, v18, v15);
  (*(v16 + 56))(v3, 0, 1, v15);
  sub_20C132B14();
  sub_20B520158(v3, &qword_27C76E780);
  sub_20B520158(v6, &qword_27C76E788);
  v23 = sub_20C132B64();
  (*(v27 + 8))(v9, v28);
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BB0BE80();
  v24 = sub_20C13C744();

  [v29 openURL:v23 options:v24 completionHandler:{0, v26}];

  return (*(v16 + 8))(v18, v15);
}

id sub_20BD47944()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_currentStyle] = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitMarqueeView;
  v3 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitView;
  type metadata accessor for PlaybackMetadataGymKitView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v4] = v5;
  v6 = *MEMORY[0x277D76860];
  *&v0[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_metadataMaximumContentSizeCategory] = *MEMORY[0x277D76860];
  v7 = &v0[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_styleProvider];
  v8 = v6;
  sub_20BD48A44(v15);
  v9 = v15[3];
  *(v7 + 2) = v15[2];
  *(v7 + 3) = v9;
  *(v7 + 8) = v16;
  v10 = v15[1];
  *v7 = v15[0];
  *(v7 + 1) = v10;
  *(v7 + 72) = xmmword_20C17B6D0;
  *(v7 + 88) = xmmword_20C17B6E0;
  *(v7 + 13) = 0x4049000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitLeadingConstraint;
  *&v0[v11] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_20BD47ACC();

  return v12;
}

void sub_20BD47ACC()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setAllowsGroupBlending_];

  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitMarqueeView];
  [v1 addSubview_];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitView];
  [v3 setAnimationReferenceView_];
  v5 = &v1[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_styleProvider];
  [v3 setContentGap_];
  [v3 setFadeEdgeInsets_];
  v6 = [v3 layer];
  [v6 setCompositingFilter_];

  [v3 setViewForContentSize_];
  [*&v4[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel] setTextColor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v7) = v60;
  [v4 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v8];
  v9 = [v3 contentView];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview_];

    LODWORD(v11) = 1148846080;
    [v3 setContentCompressionResistancePriority:1 forAxis:v11];
    v12 = [v1 traitCollection];
    v13 = sub_20BD48460(v1[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_currentStyle], v12);
    sub_20BB51980(v13);

    v14 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    v15 = sub_20C13C914();
    v16 = [objc_opt_self() smm:v15 systemImageNamed:?];

    v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v59 = [v16 imageWithTintColor_];

    v58 = [objc_opt_self() textAttachmentWithImage_];
    sub_20B51C88C(0, &qword_27C766940);
    v18 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    [v14 appendAttributedString_];

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = objc_opt_self();
    v21 = [v20 bundleForClass_];
    sub_20C132964();

    v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v23 = sub_20C13C914();

    v24 = [v22 initWithString_];

    [v14 appendAttributedString_];
    v25 = [v20 bundleForClass_];
    sub_20C132964();

    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = sub_20C13C914();

    v28 = [v26 initWithString_];

    [v14 appendAttributedString_];
    v29 = [v20 bundleForClass_];
    sub_20C132964();

    v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v31 = sub_20C13C914();

    v32 = [v30 initWithString_];

    sub_20BB51A84(v32);
    v33 = [v4 leadingAnchor];
    v34 = [v3 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    v36 = OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitLeadingConstraint;
    v37 = *&v1[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitLeadingConstraint] = v35;

    v57 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_20C151850;
    v39 = [v3 topAnchor];
    v40 = [v1 topAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v38 + 32) = v41;
    v42 = [v3 leadingAnchor];
    v43 = [v1 leadingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v38 + 40) = v44;
    v45 = [v3 trailingAnchor];
    v46 = [v1 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v38 + 48) = v47;
    v48 = [v3 bottomAnchor];
    v49 = [v1 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    *(v38 + 56) = v50;
    v51 = [v4 topAnchor];
    v52 = [v3 topAnchor];
    v53 = [v51 constraintEqualToAnchor_];

    v54 = *&v1[v36];
    *(v38 + 64) = v53;
    *(v38 + 72) = v54;
    sub_20B51C88C(0, &qword_281100500);
    v55 = v54;
    v56 = sub_20C13CC54();

    [v57 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_20BD48460(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    return sub_20B7C6A74(a2);
  }

  v4 = *MEMORY[0x277D76968];
  v5 = *MEMORY[0x277D74410];
  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_metadataMaximumContentSizeCategory);
  v7 = objc_opt_self();
  v8 = v6;
  v34 = v7;
  v35 = v4;
  v9 = [v7 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v12 = swift_initStackObject();
  v13 = MEMORY[0x277D74430];
  *(v12 + 16) = xmmword_20C14F980;
  v14 = *v13;
  *(v12 + 32) = *v13;
  *(v12 + 40) = v5;
  v15 = v11;
  v16 = v14;
  v17 = sub_20B6B134C(v12);
  swift_setDeallocating();
  sub_20B520158(v12 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v17;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v18 = sub_20C13C744();

  v19 = [v9 fontDescriptorByAddingAttributes_];

  v20 = objc_opt_self();
  v21 = 0.0;
  v22 = [v20 fontWithDescriptor:v19 size:0.0];

  v23 = [v22 fontDescriptor];
  v24 = [a2 preferredContentSizeCategory];
  v25 = sub_20C13D434();

  if (v25)
  {
    v26 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v27 = [v34 preferredFontDescriptorWithTextStyle:v35 compatibleWithTraitCollection:v26];
    [v27 pointSize];
    v21 = v28;
  }

  v29 = [v20 fontWithDescriptor:v23 size:v21];

  [v29 pointSize];
  v31 = v30;

  v32 = [v20 systemFontOfSize:v31 weight:*(v2 + OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_styleProvider + 8)];

  return v32;
}

unint64_t sub_20BD48970()
{
  result = qword_27C76E7C0;
  if (!qword_27C76E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E7C0);
  }

  return result;
}

id sub_20BD489C4(uint64_t a1)
{
  sub_20B8C9204(a1, v4);
  sub_20B8C9204(v4, v5);
  v2 = *v1;
  sub_20B8C9204(v5, v6);
  [*(v2 + OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitLeadingConstraint) setConstant_];
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitMarqueeView) setContentGap_];
}

id sub_20BD48A44@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() whiteColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = *MEMORY[0x277D74418];
  v9 = *MEMORY[0x277D76968];
  v5 = *MEMORY[0x277D76818];
  v11 = MEMORY[0x277D84FA0];
  v6 = v5;
  sub_20B6FF83C(&v10, 1);
  v7 = v11;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 44) = 2305;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = v7;

  return v9;
}

void sub_20BD48B58()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_currentStyle) = 1;
  v1 = OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitMarqueeView;
  v2 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitView;
  type metadata accessor for PlaybackMetadataGymKitView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = *MEMORY[0x277D76860];
  *(v0 + OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_metadataMaximumContentSizeCategory) = *MEMORY[0x277D76860];
  v6 = v0 + OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_styleProvider;
  v7 = v5;
  sub_20BD48A44(v11);
  v8 = v11[3];
  *(v6 + 32) = v11[2];
  *(v6 + 48) = v8;
  *(v6 + 64) = v12;
  v9 = v11[1];
  *v6 = v11[0];
  *(v6 + 16) = v9;
  *(v6 + 72) = xmmword_20C17B6D0;
  *(v6 + 88) = xmmword_20C17B6E0;
  *(v6 + 104) = 0x4049000000000000;
  v10 = OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitLeadingConstraint;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD48D1C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BD48D7C();
  }

  return result;
}

void sub_20BD48D7C()
{
  v1 = *(v0 + 88);
  os_unfair_lock_lock(v1 + 6);
  sub_20B704B14(&v3, 3);
  os_unfair_lock_unlock(v1 + 6);
  v2 = *(v0 + 80);
  os_unfair_lock_lock((v2 + 20));
  sub_20BD49AC8((v2 + 16));

  os_unfair_lock_unlock((v2 + 20));
}

uint64_t sub_20BD48E00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 88);
    v2 = result;
    os_unfair_lock_lock(v1 + 6);
    sub_20B6CB25C(3u);
    os_unfair_lock_unlock(v1 + 6);
    v3 = *(v2 + 80);
    os_unfair_lock_lock((v3 + 20));
    sub_20BD49AC8((v3 + 16));
    os_unfair_lock_unlock((v3 + 20));
  }

  return result;
}

uint64_t sub_20BD48EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_20BD48F34;

  return sub_20BD49114();
}

uint64_t sub_20BD48F34()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20BD49074, 0, 0);
  }
}

void sub_20BD49074()
{
  v1 = v0[4];
  v2 = *(v0[2] + 80);
  os_unfair_lock_lock((v2 + 20));
  sub_20BD49A80((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));
  if (!v1)
  {
    v3 = v0[1];

    v3();
  }
}

uint64_t sub_20BD49114()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E7C8);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD491E0, 0, 0);
}

uint64_t sub_20BD491E0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2[8];
  v4 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v3);
  sub_20B849D90(v3, v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = "SeymourUI/SessionRouteMonitor.swift";
  *(v5 + 24) = 35;
  *(v5 + 32) = 2;
  *(v5 + 40) = 83;
  *(v5 + 48) = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D10);
  *v6 = v0;
  v6[1] = sub_20BD49330;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BD49A9C, v5, v7);
}

uint64_t sub_20BD49330()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    v3 = sub_20B9245A0;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];
    v2[10] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BD49490;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_20BD49490()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = *(v0[3] + 88);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_20BD49AAC((v3 + 16));
  if (v2)
  {

    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_unlock((v3 + 24));

    v4 = v0[1];
    v5 = v0[10];

    v4(v5);
  }
}

uint64_t sub_20BD49684(uint64_t *a1)
{
  v2 = sub_20B8DD120(3, *a1);

  v4 = sub_20B719CC4(v3);

  v5 = MEMORY[0x277D84F90];
  v12 = v4;
  v6 = &unk_28228E080;
  if ((v2 & 1) == 0)
  {
    v6 = (MEMORY[0x277D84F90] + 16);
  }

  v7 = *v6;
  if (*v6)
  {
    if (v2)
    {
      v5 = &unk_28228E070;
    }

    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;
      sub_20B704B14(&v11, v9);
      --v7;
    }

    while (v7);

    v4 = v12;
  }

  else
  {
  }

  *a1 = v4;
  return result;
}

void sub_20BD4976C(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 88);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  v11 = 3;
  if ((sub_20B8DD120(3, v10) & 1) == 0)
  {
    v11 = 0;
    if ((sub_20B8DD120(0, v10) & 1) == 0)
    {
      v11 = 4;
      if ((sub_20B8DD120(4, v10) & 1) == 0)
      {
        if (sub_20B8DD120(1, v10))
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }
      }
    }
  }

  os_unfair_lock_unlock((v9 + 24));
  if (*a1 != v11)
  {
    v21 = v6;
    *a1 = v11;
    sub_20C13B574();
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1F4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[1] = v2;
      v16 = v15;
      v22 = v15;
      *v14 = 136315138;
      v23 = v11;
      v17 = sub_20C13C9D4();
      v20[0] = v5;
      v19 = sub_20B51E694(v17, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20B517000, v12, v13, "Publishing system route category change to %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);

      (*(v21 + 8))(v8, v20[0]);
    }

    else
    {

      (*(v21 + 8))(v8, v5);
    }

    swift_getObjectType();
    v24 = v11;
    sub_20B782804();
    sub_20C13A764();
  }
}

uint64_t sub_20BD49A04()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

char *sub_20BD49AE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setNumberOfLines_];
  v13 = *MEMORY[0x277D743F8];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v16 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v17 = swift_initStackObject();
  v18 = MEMORY[0x277D74430];
  *(v17 + 16) = xmmword_20C14F980;
  v19 = *v18;
  *(v17 + 32) = *v18;
  *(v17 + 40) = v13;
  v20 = v16;
  v21 = v19;
  v22 = sub_20B6B134C(v17);
  swift_setDeallocating();
  sub_20B520158(v17 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v22;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v23 = sub_20C13C744();

  v24 = [v14 fontDescriptorByAddingAttributes_];

  v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
  [v12 setFont_];

  v26 = [objc_opt_self() whiteColor];
  [v12 setTextColor_];

  LODWORD(v27) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v27];

  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_layout] = xmmword_20C17B910;
  v60.receiver = v4;
  v60.super_class = type metadata accessor for PlaylistDetailHeaderCell();
  v28 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = [v28 contentView];
  v30 = OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_titleLabel;
  [v29 addSubview_];

  v31 = *&v28[v30];
  v32 = [v28 contentView];

  v33 = *MEMORY[0x277D768C8];
  v34 = *(MEMORY[0x277D768C8] + 8);
  v35 = *(MEMORY[0x277D768C8] + 16);
  v36 = *(MEMORY[0x277D768C8] + 24);
  v37 = [v31 leadingAnchor];
  v38 = [v32 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v34];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v31 trailingAnchor];
  v43 = [v32 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-v36];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  v46 = v44;
  v47 = [v31 topAnchor];
  v48 = [v32 topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:v33];

  LODWORD(v50) = 1148846080;
  [v49 setPriority_];
  v51 = [v31 bottomAnchor];
  v52 = [v32 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-v35];

  LODWORD(v54) = 1148846080;
  [v53 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20C14FE90;
  *(v55 + 32) = v41;
  *(v55 + 40) = v46;
  *(v55 + 48) = v49;
  *(v55 + 56) = v53;
  v56 = v49;

  v57 = objc_opt_self();
  sub_20B5E29D0();
  v58 = sub_20C13CC54();

  [v57 activateConstraints_];

  return v28;
}

id sub_20BD4A38C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistDetailHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PlaylistDetailHeaderCell()
{
  result = qword_27C76E7E8;
  if (!qword_27C76E7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD4A484()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD4A548(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD4A594@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD4A5EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BD4A650(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2D)
  {
    v7 = *&v1[OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_titleLabel];
    v21 = sub_20C13C914();
    [v7 setText_];
    v8 = v21;
  }

  else
  {
    sub_20C13B534();

    v9 = v1;
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = a1;
      v23 = v21;
      *v12 = 138543618;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2082;
      v14 = sub_20B5F66D0();
      v15 = v9;
      v16 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v14);
      v18 = sub_20B51E694(v16, v17, &v23);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_20B517000, v10, v11, "Attempted to configure %{public}@ with item: %{public}s", v12, 0x16u);
      sub_20B520158(v13, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      v19 = v21;
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BD4A8F0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setNumberOfLines_];
  v5 = *MEMORY[0x277D743F8];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74430];
  *(v9 + 32) = *MEMORY[0x277D74430];
  *(v9 + 40) = v5;
  v11 = v8;
  v12 = v10;
  v13 = sub_20B6B134C(v9);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v13;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v14 = sub_20C13C744();

  v15 = [v6 fontDescriptorByAddingAttributes_];

  v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  [v4 setFont_];

  v17 = [objc_opt_self() whiteColor];
  [v4 setTextColor_];

  LODWORD(v18) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v18];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24PlaylistDetailHeaderCell_layout) = xmmword_20C17B910;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD4AC5C()
{
  v1 = [v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20C13C954();

  return v3;
}

uint64_t sub_20BD4ACE8()
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v34 = *(v36 - 8);
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - v3;
  MEMORY[0x28223BE20](v5);
  v35 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_20C138204();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_playlist;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v14, v9, &qword_27C7643F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C7643F0);
  }

  v16 = *(v11 + 32);
  v32 = v13;
  v16(v13, v9, v10);
  v17 = v4;
  v31 = v4;
  sub_20BD4B13C(v4);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BD4E1E0;
  *(v18 + 24) = v0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B849B38;
  *(v19 + 24) = v18;
  v21 = v33;
  v20 = v34;
  v22 = v36;
  (*(v34 + 16))(v33, v17, v36);
  v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v24 = swift_allocObject();
  (*(v20 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v1 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_20B66A8B4;
  v25[1] = v19;

  v26 = v35;
  sub_20C137C94();
  v27 = *(v20 + 8);
  v27(v31, v22);
  v28 = sub_20C137CB4();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v28(sub_20B5DF6DC, v29);

  v27(v26, v22);
  return (*(v11 + 8))(v32, v10);
}

uint64_t sub_20BD4B13C@<X0>(uint64_t a1@<X8>)
{
  v30 = sub_20C133B74();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C136594();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1381E4();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v31 = v2;
  if (v9)
  {
    v11 = MEMORY[0x277D84F90];
    v10 = sub_20BEDE85C(v9, 0);
    v12 = sub_20BEE200C(v32, &v10[(*(v2 + 80) + 32) & ~*(v2 + 80)], v9, v8);
    v27 = v32[2];
    v28 = v12;
    v26 = v32[3];
    v25 = v32[4];

    sub_20B583EDC();
    if (v28 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = v10;
LABEL_5:
  v32[0] = v10;
  sub_20BD4C8C4(v32);

  v13 = v32[0];
  v14 = v32[0][2];
  if (v14)
  {
    v25 = a1;
    v32[0] = v11;
    sub_20BB5D604(0, v14, 0);
    v15 = v32[0];
    v16 = *(v31 + 16);
    v17 = *(v31 + 80);
    v24[1] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v27 = *(v31 + 72);
    v28 = v16;
    v31 += 16;
    v19 = (v31 - 8);
    v26 = (v5 + 32);
    do
    {
      v20 = v30;
      v28(v4, v18, v30);
      sub_20C133B24();
      sub_20C136554();
      (*v19)(v4, v20);
      v32[0] = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        sub_20BB5D604(v21 > 1, v22 + 1, 1);
        v15 = v32[0];
      }

      v15[2] = v22 + 1;
      (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v29);
      v18 = v27 + v18;
      --v14;
    }

    while (v14);

    a1 = v25;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_20C02BC6C(v15, a1);
}

uint64_t sub_20BD4B4C4()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_lazyLockupFetcher);

  v7 = sub_20C030E10(v6, v1);

  v29 = 0uLL;
  LOBYTE(v30) = 1;
  *(&v30 + 1) = 0;
  *&v31 = 0;
  WORD4(v31) = 128;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  LOBYTE(v35) = 0;
  *(&v35 + 1) = v7;
  *&v36[0] = MEMORY[0x277D84F90];
  *(v36 + 8) = 0u;
  *(&v36[1] + 8) = 0u;
  *(&v36[2] + 1) = 0;
  v37 = 2;
  nullsub_1(&v29);
  v8 = v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 144);
  v38[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 128);
  v38[9] = v9;
  v39 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 160);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 80);
  v38[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 64);
  v38[5] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 112);
  v38[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 96);
  v38[7] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 16);
  v38[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row);
  v38[1] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 48);
  v38[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 32);
  v38[3] = v13;
  v14 = v36[2];
  *(v8 + 128) = v36[1];
  *(v8 + 144) = v14;
  *(v8 + 160) = v37;
  v15 = v34;
  *(v8 + 64) = v33;
  *(v8 + 80) = v15;
  v16 = v36[0];
  *(v8 + 96) = v35;
  *(v8 + 112) = v16;
  v17 = v30;
  *v8 = v29;
  *(v8 + 16) = v17;
  v18 = v32;
  *(v8 + 32) = v31;
  *(v8 + 48) = v18;
  sub_20B520158(v38, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v21 = sub_20B61D8B0(v1, result);
      if (v22)
      {
        v24 = v21;
        v25 = v22;
        v26 = v23;
        sub_20B5E2E18();
        *v5 = sub_20C13D374();
        (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
        v27 = sub_20C13C584();
        result = (*(v3 + 8))(v5, v2);
        if ((v27 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620CB0(v24, v25, v26, v1, 1, v20);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BD4B784()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_mediaTagStringBuilder);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_playlist, &qword_27C7643F0);
  return v0;
}

uint64_t sub_20BD4B8BC()
{
  sub_20BD4B784();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaylistDetailGalleryShelf()
{
  result = qword_27C76E830;
  if (!qword_27C76E830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD4B968()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B668494();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BD4BA74()
{
  sub_20BD4ACE8();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BD4BBD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_20C13AEB4();
    sub_20BD4BC50(v1);
  }

  return result;
}

uint64_t sub_20BD4BC50(int64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v35 = &v32 - v9;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v7;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_20B517000, v14, v15, "[PlaylistDetailGalleryShelf] archived sessions updated, updating shelf", v16, 2u);
    v19 = v18;
    a1 = v17;
    v7 = v32;
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v20 = v34;
  sub_20C02CCD0(a1, v7);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20BD4E1E0;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B849B38;
  *(v22 + 24) = v21;
  v23 = v33;
  (*(v3 + 16))(v33, v7, v2);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  (*(v3 + 32))(v25 + v24, v23, v2);
  v26 = (v25 + ((v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_20B66A8B4;
  v26[1] = v22;

  v27 = v35;
  sub_20C137C94();
  v28 = *(v3 + 8);
  v28(v7, v2);
  v29 = sub_20C137CB4();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v29(sub_20B5DF6DC, v30);

  return (v28)(v27, v2);
}

uint64_t sub_20BD4C040()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v37 = *(v0 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_20C138204();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_playlist;
    swift_beginAccess();
    sub_20B52F9E8(v16 + v17, v10, &qword_27C7643F0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_20B520158(v10, &qword_27C7643F0);
    }

    else
    {
      v34 = v14;
      v35 = v12;
      (*(v12 + 32))(v14, v10, v11);
      sub_20BD4B13C(v4);
      v18 = swift_allocObject();
      *(v18 + 16) = sub_20BD4E1DC;
      *(v18 + 24) = v16;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_20B849B38;
      *(v19 + 24) = v18;
      v21 = v36;
      v20 = v37;
      (*(v37 + 16))(v36, v4, v0);
      v22 = *(v20 + 80);
      v33 = v7;
      v23 = v0;
      v24 = v20;
      v25 = (v22 + 16) & ~v22;
      v26 = swift_allocObject();
      (*(v24 + 32))(v26 + v25, v21, v23);
      v27 = (v26 + ((v1 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v27 = sub_20B66A8B4;
      v27[1] = v19;

      v28 = v33;
      sub_20C137C94();
      v29 = *(v24 + 8);
      v29(v4, v23);
      v30 = sub_20C137CB4();
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      v30(sub_20B5DF6DC, v31);

      v29(v28, v23);
      (*(v35 + 8))(v34, v11);
    }
  }

  return result;
}

uint64_t sub_20BD4C4BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BD4E1E0;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20BD4C780@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BD4C7F8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20BD4C8C4(void **a1)
{
  v2 = *(sub_20C133B74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DD0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BD4C96C(v5);
  *a1 = v3;
}

void sub_20BD4C96C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133B74();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133B74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BD4CD40(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BD4CA98(0, v2, 1, a1);
  }
}

void sub_20BD4CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133B74();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C133B44();
      v28 = sub_20C133B44();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BD4CD40(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C133B74();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20BD4D724(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C133B44();
      v126 = sub_20C133B44();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C133B44();
        v39 = sub_20C133B44();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20BD4D724(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C133B44();
    v104 = sub_20C133B44();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}