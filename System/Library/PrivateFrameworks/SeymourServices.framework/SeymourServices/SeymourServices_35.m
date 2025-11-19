uint64_t sub_2271FC8C4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_2271FC950@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_227665F20();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2276627D0();
  v41 = *(v42 - 8);
  v8 = *(v41 + 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = sub_2276638D0();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_project_boxed_opaque_existential_0(a2 + 18, a2[21]);
  sub_227668420();
  v19 = *v18;
  v39 = a1;
  v20 = v40;
  sub_22714E27C(v13, a1, v17);
  if (v20)
  {
    return (*(v41 + 1))(v13, v42);
  }

  v33 = v10;
  v22 = *(v41 + 1);
  v40 = v14;
  v41 = v22;
  v22(v13, v42);
  v23 = v34;
  sub_227668400();
  sub_227668410();
  v24 = v38;
  sub_2276638A0();

  (*(v35 + 8))(v23, v36);
  sub_22727EB5C(v24, v39);
  v36 = *__swift_project_boxed_opaque_existential_0(a2 + 5, a2[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_227670CD0;
  v26 = v33;
  sub_2276637C0();
  sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
  v27 = v42;
  v28 = sub_22766D140();
  v30 = v29;
  v41(v26, v27);
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  sub_2272D7E08(0, v25, v39);
  v31 = v37;

  return (*(v31 + 8))(v17, v40);
}

uint64_t sub_2271FCD9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A170();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227669D60();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_2276627D0();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v2[12] = *(v10 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v11 = sub_22766B390();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FCF84, 0, 0);
}

uint64_t sub_2271FCF84()
{
  v40 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[2];
  sub_22766A630();
  v37 = *(v4 + 16);
  v37(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  v14 = v0[10];
  v13 = v0[11];
  if (v8)
  {
    v36 = v0[15];
    v15 = swift_slowAlloc();
    v34 = v7;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136315138;
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v17 = sub_22766D140();
    v35 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_226E97AE8(v17, v19, &v39);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v34, "Deleting Workout Plan: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v10 + 8))(v35, v36);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[10];
  v24 = v0[11];
  v25 = v0[2];
  v26 = v0[3];
  v27 = v26[17];
  __swift_project_boxed_opaque_existential_0(v26 + 13, v26[16]);
  v37(v21, v25, v23);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v0[18] = v29;
  *(v29 + 16) = v26;
  (*(v24 + 32))(v29 + v28, v21, v23);
  v30 = *(v27 + 24);

  v38 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[19] = v32;
  *v32 = v0;
  v32[1] = sub_2271FD318;

  return v38();
}

uint64_t sub_2271FD318()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2271FD5EC;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_2271FD434;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271FD434()
{
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[13];
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v13 = v0[4];
  v14 = v0[5];
  v5 = v0[3];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  v8 = v5[2];
  v9 = v5[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  v10 = *__swift_project_boxed_opaque_existential_0(v5 + 5, v5[8]);
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v14 + 8))(v3, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2271FD5EC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t sub_2271FD694(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2276627D0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = sub_22766B390();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FD820, 0, 0);
}

uint64_t sub_2271FD820()
{
  v40 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[2];
  sub_22766A630();
  v37 = *(v4 + 16);
  v37(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[7];
  v13 = v0[8];
  if (v8)
  {
    v36 = v0[12];
    v15 = swift_slowAlloc();
    v34 = v7;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136315138;
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v17 = sub_22766D140();
    v35 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_226E97AE8(v17, v19, &v39);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v34, "Deleting Workout Plan Template: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v10 + 8))(v35, v36);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v0[9];
  v21 = v0[10];
  v23 = v0[7];
  v24 = v0[8];
  v25 = v0[2];
  v26 = v0[3];
  v27 = v26[17];
  __swift_project_boxed_opaque_existential_0(v26 + 13, v26[16]);
  v37(v21, v25, v23);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v0[15] = v29;
  *(v29 + 16) = v26;
  (*(v24 + 32))(v29 + v28, v21, v23);
  v30 = *(v27 + 24);

  v38 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[16] = v32;
  *v32 = v0;
  v32[1] = sub_2271FDBB4;

  return v38();
}

uint64_t sub_2271FDBB4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_2271FDE24;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_2271FDCD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271FDCD0()
{
  v1 = v0[14];
  v2 = v0[11];
  v14 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = objc_opt_self();
  sub_227665EE0();
  v8 = sub_22766C0B0();

  [v7 postNotificationName_];

  v9 = v6[2];
  v10 = v6[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v4 + 8))(v3, v5);
  v11 = *__swift_project_boxed_opaque_existential_0(v6 + 5, v6[8]);
  sub_2271D7EE8();

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271FDE24()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t sub_2271FDEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a3, a1);
  if (!v5)
  {
    v10 = *__swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_227670CD0;
    sub_2276627D0();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    *(v11 + 32) = sub_22766D140();
    *(v11 + 40) = v12;
    a5(1, v11, a1);
  }

  return result;
}

uint64_t sub_2271FDFD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A170();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227669D60();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_2276638D0();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v2[12] = *(v10 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v11 = sub_22766B390();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FE1B8, 0, 0);
}

uint64_t sub_2271FE1B8()
{
  v40 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[2];
  sub_22766A630();
  v37 = *(v4 + 16);
  v37(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  v14 = v0[10];
  v13 = v0[11];
  if (v8)
  {
    v36 = v0[15];
    v15 = swift_slowAlloc();
    v34 = v7;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136315138;
    sub_226EAC024(&qword_27D7B9DF8, MEMORY[0x277D50180]);
    v17 = sub_22766D140();
    v35 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_226E97AE8(v17, v19, &v39);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v34, "Inserting Workout Plan: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v10 + 8))(v35, v36);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[10];
  v24 = v0[11];
  v25 = v0[2];
  v26 = v0[3];
  v27 = v26[17];
  __swift_project_boxed_opaque_existential_0(v26 + 13, v26[16]);
  v37(v21, v25, v23);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v0[18] = v29;
  *(v29 + 16) = v26;
  (*(v24 + 32))(v29 + v28, v21, v23);
  v30 = *(v27 + 24);

  v38 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[19] = v32;
  *v32 = v0;
  v32[1] = sub_2271FE54C;

  return v38();
}

uint64_t sub_2271FE54C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_22720E16C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_22720E0FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2271FE668(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2276627D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22727EB5C(a3, a1);
  if (!v3)
  {
    v12 = *__swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    sub_2276637C0();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v14 = sub_22766D140();
    v16 = v15;
    (*(v8 + 8))(v11, v7);
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_2272D7E08(0, v13, a1);
  }
}

uint64_t sub_2271FE820(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227665CA0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();
  v8 = sub_22766B390();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FE9A0, 0, 0);
}

uint64_t sub_2271FE9A0()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v9 = v0[2];
  v8 = v0[3];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v8[16]);
  (*(v5 + 16))(v4, v9, v7);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[14] = v12;
  (*(v5 + 32))(v12 + v11, v4, v7);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v13 = *(v10 + 24);

  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_2271FEBF0;

  return v17();
}

uint64_t sub_2271FEBF0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_22717061C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_2271FED0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271FED0C()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = objc_opt_self();
  sub_227665EE0();
  v8 = sub_22766C0B0();

  [v7 postNotificationName_];

  v9 = v6[2];
  v10 = v6[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v4 + 8))(v3, v5);
  v11 = *__swift_project_boxed_opaque_existential_0(v6 + 5, v6[8]);
  sub_2271D7EE8();

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271FEE54(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = sub_2276627D0();
  v25 = *(v24 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D0, &qword_227677F00);
  v10 = sub_227665CA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v22 = xmmword_227670CD0;
  *(v14 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v14 + v13, a2, v10);
  sub_22756554C(v14, v9[1], *(v9 + 16), v9[3]);

  if (!v3)
  {
    v16 = *__swift_project_boxed_opaque_existential_0((v23 + 40), *(v23 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v17 = swift_allocObject();
    *(v17 + 16) = v22;
    sub_227665C40();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v18 = v24;
    v19 = sub_22766D140();
    v21 = v20;
    (*(v25 + 8))(v8, v18);
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_2272D7DDC(0, v17, a1);
  }

  return result;
}

uint64_t sub_2271FF0F0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD0, &qword_227679720);
  v11 = sub_2276627D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  (*(v12 + 16))(v15 + v14, a2, v11);
  v16 = sub_226F4BB6C(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  v17 = sub_227273B0C(v16, a1);

  if (!v3)
  {
    sub_22722AEAC(v17, v10);

    v19 = sub_2276638D0();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v10, 1, v19) == 1)
    {
      sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);
      v21 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51188], v21);
      return swift_willThrow();
    }

    else
    {
      return (*(v20 + 32))(a3, v10, v19);
    }
  }

  return result;
}

char *sub_2271FF3E8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, char **a4@<X8>)
{
  result = sub_226E9B790(a2, a3 & 1, a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2271FF424(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_2276627D0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v2[10] = *(v7 + 64);
  v2[11] = swift_task_alloc();
  v8 = sub_2276638D0();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v11 = sub_22766B390();
  v2[16] = v11;
  v12 = *(v11 - 8);
  v2[17] = v12;
  v13 = *(v12 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FF664, 0, 0);
}

uint64_t sub_2271FF664()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[2];
  v8 = v0[3];
  sub_22766A630();
  sub_22766B370();
  v10 = *(v2 + 8);
  v0[19] = v10;
  v0[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  v11 = v8[16];
  v12 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v11);
  (*(v7 + 16))(v4, v9, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v0[21] = v14;
  *(v14 + 16) = v8;
  (*(v7 + 32))(v14 + v13, v4, v6);
  v15 = *(v12 + 24);

  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[22] = v17;
  *v17 = v0;
  v17[1] = sub_2271FF8B4;
  v18 = v0[15];
  v19 = v0[12];

  return v21(v18, sub_22720CB10, v14, v19, v11, v12);
}

uint64_t sub_2271FF8B4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_2271FFD6C;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_2271FF9D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271FF9D0()
{
  v18 = v0[19];
  v19 = v0[20];
  v1 = v0[18];
  v16 = v0[15];
  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v17 = v0[16];
  v7 = v0[4];
  v8 = v0[5];
  v9 = sub_227662750();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = *(v3 + 56);
  v10(v6, 1, 1, v4);
  v11 = sub_227663540();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v10(v8, 1, 1, v4);
  sub_227663890();
  sub_226E97D1C(v8, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v7, &qword_27D7BC128, &unk_22767CC20);
  sub_226E97D1C(v6, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v5, &qword_27D7B9690, qword_227670B50);
  sub_22766A630();
  sub_22766B370();
  v18(v1, v17);
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_2271FFC58;
  v13 = v0[14];
  v14 = v0[3];

  return sub_2271FDFD0(v13);
}

uint64_t sub_2271FFC58()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_2271FFF3C;
  }

  else
  {
    v3 = sub_2271FFE38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271FFD6C()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2271FFE38()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v10 = v0[5];
  v11 = v0[4];
  v7 = *(v0[13] + 8);
  v7(v0[14], v3);
  v7(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271FFF3C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  v3(v0[14], v2);
  v3(v1, v2);
  v4 = v0[25];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[4];
  v11 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_227200030(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_2276638D0();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_2276627D0();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_22766B390();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272001CC, 0, 0);
}

uint64_t sub_2272001CC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[5];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[16];
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v5);
  v7 = swift_allocObject();
  v0[18] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = 1;
  *(v7 + 32) = 1;
  v8 = *(v6 + 24);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[19] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  v0[20] = v11;
  *v10 = v0;
  v10[1] = sub_2272003D4;

  return (v13)(v0 + 2, sub_22720D744, v7, v11, v5, v6);
}

uint64_t sub_2272003D4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_2272007C4;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_2272004F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

size_t sub_2272004F0()
{
  v0[3] = v0[2];
  v1 = v0[20];
  swift_getKeyPath();
  sub_226E9CFD0(&qword_281398E78, &qword_27D7BC180, &qword_2276854E0);
  sub_226EAC024(&qword_28139BCD0, MEMORY[0x277D4FFA8]);
  v2 = sub_22766C220();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[10];
    v5 = v0[7];
    v19 = MEMORY[0x277D84F90];
    result = sub_226F20288(0, v3, 0);
    v18 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = v19;
    v8 = *(v2 + 16) - 1;
    while (v8 != -1)
    {
      if (v8 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v9 = v0[14];
      v10 = v0[8];
      v11 = v0[6];
      (*(v5 + 16))(v10, v18 + *(v5 + 72) * v8, v11);
      sub_2276637C0();
      (*(v5 + 8))(v10, v11);
      v13 = *(v19 + 16);
      v12 = *(v19 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_226F20288(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[14];
      v15 = v0[9];
      *(v19 + 16) = v13 + 1;
      result = (*(v4 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v14, v15);
      --v8;
      if (!--v3)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_10:
    v0[22] = v7;
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_227200874;
    v17 = v0[5];

    return sub_2272011EC();
  }

  return result;
}

uint64_t sub_2272007C4()
{
  v1 = v0[18];

  v2 = v0[21];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227200874(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_22720113C;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_22720099C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22720099C()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = sub_2271E5958(v0[25], MEMORY[0x277D52D18], MEMORY[0x277D52CF8]);

  v35 = *(v2 + 16);
  if (v35)
  {
    v5 = 0;
    v6 = v0[10];
    v34 = v2;
    while (2)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      v36 = v5 + 1;
      (*(v6 + 16))(v0[11], v0[22] + v7 + v8 * v5, v0[9]);
      v9 = v3 + v7;
      v10 = *(v3 + 16) + 1;
      do
      {
        if (!--v10)
        {
          v23 = v0[22];
          v25 = v0[12];
          v24 = v0[13];
          v27 = v0[10];
          v26 = v0[11];
          v28 = v0[9];
          v29 = v0[5];

          v30 = *(v27 + 32);
          v30(v25, v26, v28);
          v30(v24, v25, v28);
          __swift_project_boxed_opaque_existential_0((v29 + 424), *(v29 + 448));
          v31 = swift_task_alloc();
          v0[26] = v31;
          *v31 = v0;
          v31[1] = sub_227200D4C;
          v32 = v0[13];
          v33 = v0[4];

          return sub_22714E544(v33, v32);
        }

        v11 = v0[11];
        v12 = v0[9];
        sub_226EAC024(&qword_27D7B8750, MEMORY[0x277CC95F0]);
        v9 += v8;
      }

      while ((sub_22766BFB0() & 1) == 0);
      result = (*(v6 + 8))(v0[11], v0[9]);
      v5 = v36;
      v2 = v34;
      if (v36 != v35)
      {
        continue;
      }

      break;
    }
  }

  v13 = v0[22];

  v14 = sub_227664EC0();
  sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51190], v14);
  swift_willThrow();
  v16 = v0[17];
  v18 = v0[13];
  v17 = v0[14];
  v20 = v0[11];
  v19 = v0[12];
  v21 = v0[8];

  v22 = v0[1];

  return v22();
}

uint64_t sub_227200D4C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_22720107C;
  }

  else
  {
    v3 = sub_227200E60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227200E60()
{
  v1 = v0[4];
  sub_227665740();
  if (v2 <= 0.0)
  {
    v9 = v0[13];
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[4];
    v13 = sub_227664EC0();
    sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51190], v13);
    swift_willThrow();
    v15 = sub_227665750();
    (*(*(v15 - 8) + 8))(v12, v15);
    (*(v11 + 8))(v9, v10);
    v16 = v0[17];
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[8];
  }

  else
  {
    v3 = v0[17];
    v4 = v0[14];
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[8];
    (*(v0[10] + 8))(v0[13], v0[9]);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_22720107C()
{
  (*(v0[10] + 8))(v0[13], v0[9]);
  v1 = v0[27];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22720113C()
{
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2272011EC()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272012AC, 0, 0);
}

uint64_t sub_2272012AC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[16];
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E0, &qword_22767CEB0);
  *v9 = v0;
  v9[1] = sub_226F9D924;
  v11 = v0[3];

  return (v13)(v0 + 2, sub_22720D728, v11, v10, v5, v6);
}

uint64_t sub_227201480@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_227237FB8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v22;
  }

  return result;
}

uint64_t sub_227201694(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227667440();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272017B8, 0, 0);
}

uint64_t sub_2272017B8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v6[17];
  __swift_project_boxed_opaque_existential_0(v6 + 13, v6[16]);
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[11] = v9;
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = *(v7 + 24);

  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_22720199C;

  return v14();
}

uint64_t sub_22720199C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_227201BEC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_227201AB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227201AB8()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  v8 = v5[2];
  v9 = v5[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v3 + 8))(v2, v4);
  v10 = *__swift_project_boxed_opaque_existential_0(v5 + 5, v5[8]);
  sub_2271D7EE8();

  v11 = v0[1];

  return v11();
}

uint64_t sub_227201BEC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_227201C64(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = sub_2276627D0();
  v25 = *(v24 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D8, &qword_227679D80);
  v10 = sub_227667440();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v22 = xmmword_227670CD0;
  *(v14 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v14 + v13, a3, v10);
  sub_227564FE4(v14, v9[1], *(v9 + 16), v9[3]);

  if (!v3)
  {
    v16 = *__swift_project_boxed_opaque_existential_0((v23 + 40), *(v23 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v17 = swift_allocObject();
    *(v17 + 16) = v22;
    sub_227667430();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v18 = v24;
    v19 = sub_22766D140();
    v21 = v20;
    (*(v25 + 8))(v8, v18);
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_2272D7E34(0, v17, a1);
  }

  return result;
}

uint64_t sub_227201F00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC130, &qword_22767CC70);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_227667C80();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227202020, 0, 0);
}

uint64_t sub_227202020()
{
  __swift_project_boxed_opaque_existential_0((v0[3] + 424), *(v0[3] + 448));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2272020C8;
  v2 = v0[2];

  return sub_22714D158(v2);
}

uint64_t sub_2272020C8(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v4 = *v2;
  v4[13] = a1;

  if (v1)
  {
    v5 = v4[11];
    v7 = v4[7];
    v6 = v4[8];
    v8 = v4[5];
    v9 = v4[6];

    v10 = v4[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227202244, 0, 0);
  }
}

unint64_t sub_227202244()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v49 = v0[4];
    v60 = MEMORY[0x277D84F90];
    sub_226F202A8(0, v2, 0);
    v4 = v60;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_22766CC90();
    v8 = 0;
    v9 = *(v1 + 36);
    v50 = v3;
    v48 = v1 + 64;
    v43 = v1 + 72;
    v44 = v2;
    v45 = v9;
    v46 = v1;
    v47 = v0;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v1 + 32))
    {
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_26;
      }

      if (v9 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v52 = 1 << result;
      v53 = result >> 6;
      v51 = v8;
      v11 = *(v49 + 48);
      v57 = v0[11];
      v59 = v4;
      v13 = v0[7];
      v12 = v0[8];
      v55 = v0[6];
      v56 = v0[5];
      v14 = *(v1 + 48);
      v15 = result;
      v16 = sub_227665F20();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v12, v14 + *(v17 + 72) * v15, v16);
      v18 = *(v1 + 56);
      v19 = sub_227666760();
      v20 = *(v19 - 8);
      v58 = v15;
      (*(v20 + 16))(v12 + v11, v18 + *(v20 + 72) * v15, v19);
      (*(v17 + 32))(v13, v12, v16);
      (*(v20 + 32))(v13 + *(v49 + 48), v12 + v11, v19);
      sub_226E93170(v13, v55, &qword_27D7BC130, &qword_22767CC70);
      v54 = *(v49 + 48);
      sub_226E93170(v13, v56, &qword_27D7BC130, &qword_22767CC70);
      v21 = v56 + *(v49 + 48);
      sub_227667C70();
      v22 = v13;
      v4 = v59;
      sub_226E97D1C(v22, &qword_27D7BC130, &qword_22767CC70);
      (*(v17 + 8))(v56, v16);
      (*(v20 + 8))(v55 + v54, v19);
      v24 = *(v59 + 16);
      v23 = *(v59 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F202A8(v23 > 1, v24 + 1, 1);
        v4 = v59;
      }

      v25 = v47[11];
      v26 = v47[9];
      *(v4 + 16) = v24 + 1;
      (*(v50 + 32))(v4 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v24, v25, v26);
      v1 = v46;
      v10 = 1 << *(v46 + 32);
      result = v15;
      v5 = v48;
      if (v58 >= v10)
      {
        goto LABEL_28;
      }

      v27 = *(v48 + 8 * v53);
      if ((v27 & v52) == 0)
      {
        goto LABEL_29;
      }

      v9 = v45;
      if (v45 != *(v46 + 36))
      {
        goto LABEL_30;
      }

      v0 = v47;
      v28 = v27 & (-2 << (v58 & 0x3F));
      if (v28)
      {
        v10 = __clz(__rbit64(v28)) | v58 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v53 << 6;
        v30 = (v43 + 8 * v53);
        v31 = v53 + 1;
        while (v31 < (v10 + 63) >> 6)
        {
          v33 = *v30++;
          v32 = v33;
          v29 += 64;
          ++v31;
          if (v33)
          {
            sub_226EB526C(v58, v45, 0);
            v10 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v58, v45, 0);
      }

LABEL_4:
      v8 = v51 + 1;
      result = v10;
      if (v51 + 1 == v44)
      {
        v34 = v47[13];

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v35 = v0[13];

    v4 = MEMORY[0x277D84F90];
LABEL_22:
    v36 = v0[11];
    v38 = v0[7];
    v37 = v0[8];
    v40 = v0[5];
    v39 = v0[6];
    v41 = sub_226F45684(v4);

    v42 = v0[1];

    return v42(v41);
  }

  return result;
}

uint64_t sub_227202748(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22766A170();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_227669D60();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_227667780();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v2[15] = *(v13 + 64);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227202924, 0, 0);
}

uint64_t sub_227202924()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v6[17];
  __swift_project_boxed_opaque_existential_0(v6 + 13, v6[16]);
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[17] = v9;
  (*(v4 + 32))(v9 + v8, v1, v3);
  *(v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10 = *(v7 + 24);

  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_227202B14;

  return v14();
}

uint64_t sub_227202B14()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_227202F84;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_227202C30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227202C30()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_227202CC0;
  v2 = *(v0 + 24);

  return sub_2271E6B88();
}

uint64_t sub_227202CC0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_22720301C;
  }

  else
  {
    v3 = sub_227202DD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227202DD4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v14 = v0[8];
  v15 = v0[16];
  v13 = v0[7];
  v16 = v0[6];
  v5 = v0[3];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  v8 = v5[2];
  v9 = v5[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  v10 = *__swift_project_boxed_opaque_existential_0(v5 + 5, v5[8]);
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v14 + 8))(v3, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_227202F84()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

uint64_t sub_22720301C()
{
  v1 = v0[21];
  v2 = v0[6];
  sub_22766A630();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226E8E000, v4, v5, "Error evaluating active workout plan completion with error: %@", v8, 0xCu);
    sub_226E97D1C(v9, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v25 = v0[8];
  v26 = v0[16];
  v24 = v0[7];
  v27 = v0[6];
  v16 = v0[3];
  v17 = objc_opt_self();
  sub_227665EE0();
  v18 = sub_22766C0B0();

  [v17 postNotificationName_];

  v19 = v16[2];
  v20 = v16[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v13 + 8))(v12, v15);
  v21 = *__swift_project_boxed_opaque_existential_0(v16 + 5, v16[8]);
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v25 + 8))(v14, v24);

  v22 = v0[1];

  return v22();
}

uint64_t sub_2272032E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB30, &qword_227679A10);
  v8 = sub_227667780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v12 + v11, a2, v8);
  sub_227565AB4(v12, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    v14 = *__swift_project_boxed_opaque_existential_0((a3 + 40), *(a3 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_227670CD0;
    *(v15 + 32) = sub_227667760();
    *(v15 + 40) = v16;
    sub_2272D7E60(0, v15, a1);
  }

  return result;
}

uint64_t sub_2272034CC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_227232BB8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v22;
  }

  return result;
}

uint64_t sub_2272036E0()
{
  v1[8] = v0;
  v2 = sub_22766B390();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272037A0, 0, 0);
}

uint64_t sub_2272037A0()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[16];
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v5);
  sub_226E91B50((v4 + 18), v0 + 16);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  sub_226E92AB8((v0 + 16), v7 + 16);
  v8 = *(v6 + 24);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC198, &unk_22767CD40);
  *v10 = v0;
  v10[1] = sub_227203994;

  return (v13)(v0 + 56, sub_22720D6F8, v7, v11, v5, v6);
}

uint64_t sub_227203994()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_227203B1C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_227203AB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227203AB0()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_227203B1C()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_227203B88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  v16 = sub_2272382B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v17 = *(v13 + 40);

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v13 + v18, v19);
    v20 = *(*v13 + 48);
    v21 = *(*v13 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v23 = v16;
    swift_setDeallocating();

    v24 = *(v13 + 40);

    v25 = qword_2813B2078;
    v26 = sub_22766A100();
    (*(*(v26 - 8) + 8))(v13 + v25, v26);
    v27 = *(*v13 + 48);
    v28 = *(*v13 + 52);
    swift_deallocClassInstance();
    v29 = sub_2271E5958(v23, MEMORY[0x277D51CF0], MEMORY[0x277D51CD0]);

    v30 = sub_226F45B58(v29);

    v31 = sub_227281800(v30, a1);

    MEMORY[0x28223BE20](v32);
    v37[2] = a1;
    v33 = sub_2275F2440(sub_22720E188, v37, v31);

    v34 = sub_226F459BC(v33);

    v35 = sub_2271E4E80(v34);

    v36 = sub_226F45CF4(v35);

    *a2 = v36;
  }

  return result;
}

uint64_t sub_227203ED8()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227203F98, 0, 0);
}

uint64_t sub_227203F98()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[16];
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_226EA3BA8;
  v10 = v0[3];
  v11 = MEMORY[0x277D83B88];

  return (v13)(v0 + 2, sub_22720D6CC, v10, v11, v5, v6);
}

uint64_t sub_227204158(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22766B390();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227204218, 0, 0);
}

uint64_t sub_227204218()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[16];
  v7 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v6);
  sub_226E91B50((v4 + 18), v0 + 16);
  v8 = swift_allocObject();
  *(v0 + 104) = v8;
  sub_226E92AB8((v0 + 16), v8 + 16);
  *(v8 + 56) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC190, &unk_2276855E0);
  *v11 = v0;
  v11[1] = sub_22720442C;

  return (v14)(v0 + 56, sub_22720D68C, v8, v12, v6, v7);
}

uint64_t sub_22720442C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2272045B4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_227204548;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227204548()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2272045B4()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_227204620@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_227281800(a2, a1);
  if (!v3)
  {
    MEMORY[0x28223BE20](result);
    v10[2] = a1;
    v8 = sub_2275F2440(sub_22720D6AC, v10, v7);

    v9 = sub_226F459BC(v8);

    *a3 = v9;
  }

  return result;
}

uint64_t sub_2272046EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2276627D0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227204810, 0, 0);
}

uint64_t sub_227204810()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v7[16];
  v11 = v7[17];
  __swift_project_boxed_opaque_existential_0(v7 + 13, v10);
  (*(v5 + 16))(v4, v9, v8);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[12] = v13;
  *(v13 + 16) = v7;
  (*(v5 + 32))(v13 + v12, v4, v8);
  v14 = *(v11 + 24);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[13] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  *v16 = v0;
  v16[1] = sub_227204A68;

  return (v19)(v0 + 2, sub_22720D5D8, v13, v17, v10, v11);
}

uint64_t sub_227204A68()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_227204BFC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_227204B84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227204B84()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_227204BFC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_227204C74(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227204D34, 0, 0);
}

uint64_t sub_227204D34()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[16];
  v7 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v6);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC188, &qword_22768C760);
  *v11 = v0;
  v11[1] = sub_227204F34;

  return (v14)(v0 + 2, sub_22720D658, v8, v12, v6, v7);
}

uint64_t sub_227204F34()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2271D1B28;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_227205050;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227205050()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2272050BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227668A70();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();
  v8 = sub_22766B390();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22720523C, 0, 0);
}

uint64_t sub_22720523C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v9 = v0[2];
  v8 = v0[3];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v8[16]);
  (*(v5 + 16))(v4, v9, v7);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[14] = v12;
  (*(v5 + 32))(v12 + v11, v4, v7);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v13 = *(v10 + 24);

  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_22720548C;

  return v17();
}

uint64_t sub_22720548C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_22720E168;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_22720E160;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272055A8(void *a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC140, &qword_22767CC98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  *&v68 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v60 - v10;
  v11 = sub_227665CA0();
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v60 - v15;
  v72 = sub_2276627D0();
  v16 = *(v72 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v72);
  v66 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  result = sub_227668A60();
  if (v30)
  {
    v64 = result;
    v65 = v11;
    v31 = __swift_project_boxed_opaque_existential_0((a3 + 144), *(a3 + 168));
    sub_227668A50();
    v32 = *v31;
    sub_227254380(v21, v73, v28);
    if (v3)
    {
      (*(v16 + 8))(v21, v72);
    }

    else
    {
      v33 = *(v16 + 8);
      v34 = v21;
      v35 = v72;
      v62 = v16 + 8;
      v63 = a3;
      v61 = v33;
      v33(v34, v72);
      sub_226E93170(v28, v25, &qword_27D7BC148, &unk_22767CCA0);
      v36 = v71;
      v37 = v65;
      if ((*(v71 + 48))(v25, 1, v65) == 1)
      {

        sub_226E97D1C(v25, &qword_27D7BC148, &unk_22767CCA0);
        v38 = sub_227664EC0();
        sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51198], v38);
        swift_willThrow();
        return sub_226E97D1C(v28, &qword_27D7BC148, &unk_22767CCA0);
      }

      else
      {
        v60 = v28;
        (*(v36 + 32))(v70, v25, v37);
        v40 = v67;
        (*(v16 + 56))(v67, 1, 1, v35);
        v41 = sub_227665C20();
        v42 = v68;
        (*(*(v41 - 8) + 56))(v68, 1, 1, v41);
        v43 = v36;
        sub_227665C80();

        sub_226E97D1C(v42, &qword_27D7BC140, &qword_22767CC98);
        sub_226E97D1C(v40, &unk_27D7BB9D0, &qword_227671550);
        v44 = v73;
        v45 = __swift_project_boxed_opaque_existential_0(v73, v73[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D0, &qword_227677F00);
        v46 = *(v36 + 72);
        v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v48 = swift_allocObject();
        v68 = xmmword_227670CD0;
        *(v48 + 16) = xmmword_227670CD0;
        v49 = v69;
        (*(v43 + 16))(v48 + v47, v69, v37);
        sub_22756554C(v48, v45[1], *(v45 + 16), v45[3]);

        v50 = *__swift_project_boxed_opaque_existential_0((v63 + 40), *(v63 + 64));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
        v51 = swift_allocObject();
        *(v51 + 16) = v68;
        v52 = v44;
        v53 = v66;
        sub_227665C40();
        sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
        v54 = v72;
        v55 = sub_22766D140();
        v57 = v56;
        v61(v53, v54);
        *(v51 + 32) = v55;
        *(v51 + 40) = v57;
        sub_2272D7DDC(0, v51, v52);

        v58 = *(v71 + 8);
        v59 = v65;
        v58(v49, v65);
        v58(v70, v59);
        return sub_226E97D1C(v60, &qword_27D7BC148, &unk_22767CCA0);
      }
    }
  }

  return result;
}

char *sub_227205D2C(void *a1, void *a2)
{
  v134 = sub_227669F10();
  v135 = *(v134 - 8);
  v4 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  v136 = &v128[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v128[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v141 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v142 = &v128[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v128[-v16];
  v139 = sub_22766B390();
  v138 = *(v139 - 8);
  v17 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  *&v158 = &v128[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_227663FA0();
  v145 = *(v19 - 8);
  v146 = v19;
  v20 = *(v145 + 64);
  MEMORY[0x28223BE20](v19);
  v149 = &v128[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_2276627D0();
  v153 = *(v22 - 8);
  v154 = v22;
  v23 = v153[8];
  v24 = MEMORY[0x28223BE20](v22);
  v137 = &v128[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v148 = &v128[-v26];
  v147 = sub_227662930();
  v157 = *(v147 - 1);
  v27 = *(v157 + 64);
  MEMORY[0x28223BE20](v147);
  v156 = &v128[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_227662750();
  v30 = *(v29 - 8);
  v151 = v29;
  v152 = v30;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v144 = &v128[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v155 = &v128[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v128[-v37];
  v39 = sub_2276638D0();
  v159 = *(v39 - 8);
  v160 = v39;
  v40 = *(v159 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v128[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v128[-v45];
  MEMORY[0x28223BE20](v44);
  v48 = &v128[-v47];
  v49 = a2[21];
  v150 = a2;
  __swift_project_boxed_opaque_existential_0(a2 + 18, v49);
  v50 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v51 = v161;
  result = (v50)(a1);
  if (!v51)
  {
    v54 = v156;
    v53 = v157;
    v131 = v46;
    v55 = v158;
    v132 = v43;
    v161 = v48;
    v133 = a1;
    v56 = v159;
    v57 = v160;
    if ((*(v159 + 48))(v38, 1, v160) == 1)
    {
      sub_226E97D1C(v38, &unk_27D7BB920, &unk_227672480);
      v58 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D511A8], v58);
      return swift_willThrow();
    }

    else
    {
      (*(v56 + 32))(v161, v38, v57);
      sub_227663870();
      v60 = v147;
      (*(v53 + 104))(v54, *MEMORY[0x277CC9968], v147);
      v61 = sub_227663810();
      (*(v53 + 8))(v54, v60);
      v62 = sub_226F491E8(v61);
      v63 = __swift_project_boxed_opaque_existential_0(v150 + 53, v150[56]);
      v64 = v148;
      sub_2276637C0();
      v65 = *__swift_project_boxed_opaque_existential_0(v63, v63[3]);
      v66 = v149;
      v67 = v133;
      sub_226EAF48C(v133, v149);
      sub_227663F60();
      v69 = v68;
      (*(v145 + 8))(v66, v146);
      v70 = sub_22727227C(v64, v62, v67, v69);
      v157 = 0;
      v71 = v153[1];
      v72 = v70;
      v156 = v153 + 1;
      v149 = v71;
      (v71)(v64, v154);
      v73 = sub_226F491E8(v72);
      v74 = sub_227035964(v62, v73);

      v75 = v144;
      sub_227662720();
      v76 = sub_2276626B0();
      v77 = (v152 + 8);
      v78 = *(v152 + 8);
      v79 = v75;
      v80 = v151;
      (v78)(v79, v151);
      v82 = v159;
      v81 = v160;
      if (v74 & 1) != 0 || (v76)
      {
        v147 = v78;
        v148 = v77;
        sub_22766A630();
        v83 = v131;
        v144 = *(v82 + 16);
        v145 = v82 + 16;
        (v144)(v131, v161, v81);
        v84 = sub_22766B380();
        v85 = sub_22766C8B0();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v162 = v130;
          *v86 = 136315650;
          sub_226EAC024(&qword_27D7B9DF8, MEMORY[0x277D50180]);
          v129 = v85;
          v87 = sub_22766D140();
          v88 = v81;
          v90 = v89;
          v146 = *(v82 + 8);
          v146(v83, v88);
          v91 = sub_226E97AE8(v87, v90, &v162);

          *(v86 + 4) = v91;
          *(v86 + 12) = 1024;
          *(v86 + 14) = v74 & 1;
          *(v86 + 18) = 1024;
          *(v86 + 20) = v76 & 1;
          _os_log_impl(&dword_226E8E000, v84, v129, "Marking %s as complete, with workoutsCompleted: %{BOOL}d isPastEndDate: %{BOOL}d", v86, 0x18u);
          v92 = v130;
          __swift_destroy_boxed_opaque_existential_0(v130);
          MEMORY[0x22AA9A450](v92, -1, -1);
          v93 = v86;
          v80 = v151;
          MEMORY[0x22AA9A450](v93, -1, -1);
        }

        else
        {

          v146 = *(v82 + 8);
          v146(v83, v81);
        }

        (*(v138 + 8))(v55, v139);
        v94 = v143;
        v95 = v140;
        (*(v152 + 56))(v140, 1, 1, v80);
        v96 = v154;
        v97 = v153[7];
        v98 = v142;
        v97(v142, 1, 1, v154);
        v99 = sub_227663540();
        (*(*(v99 - 8) + 56))(v94, 1, 1, v99);
        v100 = v141;
        v97(v141, 1, 1, v96);
        v101 = v132;
        v102 = v94;
        v103 = v161;
        sub_227663890();
        sub_226E97D1C(v100, &unk_27D7BB9D0, &qword_227671550);
        sub_226E97D1C(v102, &qword_27D7BC128, &unk_22767CC20);
        sub_226E97D1C(v98, &unk_27D7BB9D0, &qword_227671550);
        sub_226E97D1C(v95, &qword_27D7B9690, qword_227670B50);
        v104 = v133;
        v105 = __swift_project_boxed_opaque_existential_0(v133, v133[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
        v106 = *(v159 + 72);
        v107 = v80;
        v108 = (*(v159 + 80) + 32) & ~*(v159 + 80);
        v109 = swift_allocObject();
        v158 = xmmword_227670CD0;
        *(v109 + 16) = xmmword_227670CD0;
        v110 = v160;
        (v144)(v109 + v108, v101, v160);
        v111 = v157;
        sub_22756601C(v109, v105[1], *(v105 + 16), v105[3]);

        if (v111)
        {
          v112 = v146;
          v146(v101, v110);
          (v147)(v155, v107);
          return v112(v103, v110);
        }

        else
        {
          v113 = v150;
          v157 = *__swift_project_boxed_opaque_existential_0(v150 + 5, v150[8]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
          v114 = swift_allocObject();
          *(v114 + 16) = v158;
          v115 = v154;
          v116 = v101;
          v117 = v137;
          sub_2276637C0();
          sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
          v118 = sub_22766D140();
          v120 = v119;
          (v149)(v117, v115);
          *(v114 + 32) = v118;
          *(v114 + 40) = v120;
          sub_2272D7E08(0, v114, v104);

          v121 = v113[2];
          v122 = v113[3];
          swift_getObjectType();
          sub_2276637C0();
          v123 = v136;
          sub_227669F00();
          v124 = v134;
          sub_2276699D0();
          (*(v135 + 8))(v123, v124);
          v125 = v160;
          v126 = v116;
          v127 = v146;
          v146(v126, v160);
          (v147)(v155, v151);
          return v127(v161, v125);
        }
      }

      else
      {
        (v78)(v155, v80);
        return (*(v82 + 8))(v161, v81);
      }
    }
  }

  return result;
}

char *sub_227206D54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a3;
  v80 = a4;
  v6 = sub_22766B390();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC8, &qword_227675590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v76 - v11;
  v12 = sub_227663FA0();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](v12);
  v87 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276627D0();
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v15);
  v88 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_227665440();
  v93 = *(v89 - 8);
  v18 = *(v93 + 64);
  MEMORY[0x28223BE20](v89);
  v94 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v76 - v22;
  v24 = sub_2276638D0();
  v95 = *(v24 - 8);
  v25 = *(v95 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v76 - v29;
  v31 = *(a2 + 168);
  v90 = a2;
  __swift_project_boxed_opaque_existential_0((a2 + 144), v31);
  v32 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v33 = v97;
  result = (v32)(a1);
  if (!v33)
  {
    v79 = a1;
    v77 = v27;
    v97 = v30;
    v35 = v95;
    if ((*(v95 + 48))(v23, 1, v24) == 1)
    {
      sub_226E97D1C(v23, &unk_27D7BB920, &unk_227672480);
      v36 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D511A8], v36);
      return swift_willThrow();
    }

    else
    {
      v38 = *(v35 + 32);
      v78 = v24;
      v38(v97, v23, v24);
      v39 = v94;
      sub_227663860();
      v40 = sub_2276637D0();
      MEMORY[0x28223BE20](v40);
      *(&v76 - 2) = v39;
      sub_2271E5F78(sub_22720D5B8, (&v76 - 4), v41);
      v43 = sub_226F44880(v42);

      v44 = __swift_project_boxed_opaque_existential_0((v90 + 424), *(v90 + 448));
      v45 = v88;
      sub_2276637C0();
      v46 = *__swift_project_boxed_opaque_existential_0(v44, v44[3]);
      v47 = v87;
      v48 = v79;
      sub_226EAF48C(v79, v87);
      sub_227663F60();
      v50 = v49;
      (*(v85 + 8))(v47, v86);
      v51 = sub_22727FE50(v45, v43, v48, v50);
      (*(v91 + 8))(v45, v92);

      v52 = v84;
      sub_2274CFFC4(v51, v84);

      v53 = sub_227665F20();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 48))(v52, 1, v53);
      v56 = v78;
      if (v55 == 1)
      {
        sub_226E97D1C(v52, &qword_27D7B9BC8, &qword_227675590);
        v57 = v83;
        sub_22766A630();
        v58 = v77;
        v59 = v97;
        (*(v35 + 16))(v77, v97, v56);
        v60 = sub_22766B380();
        v61 = sub_22766C890();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v98 = v63;
          *v62 = 136315138;
          sub_226EAC024(&qword_27D7B9DF8, MEMORY[0x277D50180]);
          v64 = sub_22766D140();
          v65 = v58;
          v67 = v66;
          v68 = *(v35 + 8);
          v68(v65, v78);
          v69 = sub_226E97AE8(v64, v67, &v98);

          *(v62 + 4) = v69;
          _os_log_impl(&dword_226E8E000, v60, v61, "Couldn't find the next incomplete workout for the active plan: %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          v70 = v63;
          v56 = v78;
          MEMORY[0x22AA9A450](v70, -1, -1);
          v71 = v62;
          v59 = v97;
          MEMORY[0x22AA9A450](v71, -1, -1);

          (*(v81 + 8))(v83, v82);
        }

        else
        {

          v68 = *(v35 + 8);
          v68(v58, v56);
          (*(v81 + 8))(v57, v82);
        }

        v72 = v89;
        v73 = v93;
        v74 = sub_227664EC0();
        sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D51180], v74);
        swift_willThrow();
        v68(v59, v56);
        return (*(v73 + 8))(v94, v72);
      }

      else
      {
        (*(v35 + 8))(v97, v78);
        (*(v54 + 32))(v80, v52, v53);
        return (*(v93 + 8))(v39, v89);
      }
    }
  }

  return result;
}

BOOL sub_227207754()
{
  v0 = sub_227665440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665F00();
  sub_226EAC024(&qword_27D7BC170, MEMORY[0x277D51640]);
  v5 = sub_22766BF80();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

uint64_t sub_227207884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v234 = a3;
  v213 = a4;
  v217 = sub_227664010();
  v230 = *(v217 - 8);
  v6 = *(v230 + 64);
  MEMORY[0x28223BE20](v217);
  v229 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v231 = &v201 - v9;
  MEMORY[0x28223BE20](v10);
  v212 = &v201 - v11;
  v12 = sub_227666B60();
  v13 = *(v12 - 8);
  v236 = v12;
  v237 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v218 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v219 = &v201 - v17;
  MEMORY[0x28223BE20](v18);
  v220 = &v201 - v19;
  MEMORY[0x28223BE20](v20);
  v221 = &v201 - v21;
  MEMORY[0x28223BE20](v22);
  v222 = &v201 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v201 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v201 - v28;
  v30 = sub_227667370();
  v223 = *(v30 - 8);
  v31 = *(v223 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_227663FA0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v201 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a2 + 248);
  v233 = a2;
  v40 = *__swift_project_boxed_opaque_existential_0((a2 + 224), v39);
  v41 = v235;
  result = sub_226EAF48C(a1, v38);
  if (v41)
  {
    return result;
  }

  v227 = v29;
  v214 = v26;
  v215 = v35;
  v216 = v34;
  sub_227663E60();
  v43 = sub_227663E90();
  v44 = *(v233 + 416);
  v45 = sub_227046898(v234, v33, a1);
  v206 = v38;
  v207 = v33;
  v208 = v30;
  v46 = v45;
  v205 = sub_2271E5358(v45);
  v209 = 0;
  v47 = v46 + 56;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v46 + 56);
  v51 = (v48 + 63) >> 6;
  v232 = (v237 + 8);
  v233 = v237 + 16;

  v52 = 0;
  v53 = MEMORY[0x277D84F90];
  v54 = v236;
  v234 = v46;
  v235 = v46 + 56;
  v55 = v227;
  while (v50)
  {
LABEL_12:
    v58 = v237;
    v59 = v55;
    (*(v237 + 16))(v55, *(v46 + 48) + *(v237 + 72) * (__clz(__rbit64(v50)) | (v52 << 6)), v54);
    v60 = sub_227666AC0();
    result = (*(v58 + 8))(v59, v54);
    v61 = *(v60 + 16);
    v62 = *(v53 + 16);
    v63 = v62 + v61;
    if (__OFADD__(v62, v61))
    {
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v63 > *(v53 + 24) >> 1)
    {
      if (v62 <= v63)
      {
        v64 = v62 + v61;
      }

      else
      {
        v64 = v62;
      }

      result = sub_226EB3F78(result, v64, 1, v53);
      v53 = result;
    }

    v54 = v236;
    v50 &= v50 - 1;
    if (*(v60 + 16))
    {
      if ((*(v53 + 24) >> 1) - *(v53 + 16) < v61)
      {
        goto LABEL_192;
      }

      swift_arrayInitWithCopy();

      v46 = v234;
      v47 = v235;
      v55 = v227;
      if (v61)
      {
        v65 = *(v53 + 16);
        v66 = __OFADD__(v65, v61);
        v67 = v65 + v61;
        if (v66)
        {
          goto LABEL_198;
        }

        *(v53 + 16) = v67;
      }
    }

    else
    {

      v46 = v234;
      v47 = v235;
      v55 = v227;
      if (v61)
      {
        goto LABEL_181;
      }
    }
  }

  v56 = v230;
  while (1)
  {
    v57 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_173;
    }

    if (v57 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v57);
    ++v52;
    if (v50)
    {
      v52 = v57;
      goto LABEL_12;
    }
  }

  v204 = sub_226F3E6A8(v53);

  v68 = v235;
  v69 = 1 << *(v46 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & *(v46 + 56);
  v72 = (v69 + 63) >> 6;
  v73 = v43 + 56;
  v226 = v56 + 16;
  v227 = v56 + 32;
  v225 = (v56 + 8);

  v74 = v72;
  v75 = 0;
  v210 = MEMORY[0x277D84F90];
  v76 = v237;
  v77 = v214;
  v211 = v74;
  v224 = v43 + 56;
  v228 = v43;
  if (!v71)
  {
    goto LABEL_31;
  }

  do
  {
LABEL_30:
    v78 = v75;
LABEL_34:
    v79 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    (*(v76 + 16))(v77, *(v46 + 48) + *(v76 + 72) * (v79 | (v78 << 6)), v54);
    sub_227666B40();
    v81 = v80;
    v82 = 1 << *(v43 + 32);
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    else
    {
      v83 = -1;
    }

    v84 = v83 & *(v43 + 56);
    v85 = (v82 + 63) >> 6;

    v86 = 0;
    v87 = v217;
    v88 = v231;
    if (!v84)
    {
LABEL_39:
      while (1)
      {
        v89 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        if (v89 >= v85)
        {
          v43 = v228;

          v77 = v214;
          v54 = v236;
          result = (*v232)(v214, v236);
          v75 = v78;
          v76 = v237;
          v46 = v234;
          v68 = v235;
          v74 = v211;
          if (!v71)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v84 = *(v73 + 8 * v89);
        ++v86;
        if (v84)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    while (1)
    {
      v89 = v86;
LABEL_42:
      v90 = v230;
      (*(v230 + 16))(v88, *(v228 + 48) + *(v230 + 72) * (__clz(__rbit64(v84)) | (v89 << 6)), v87);
      v91 = *(v90 + 32);
      v92 = v229;
      v91(v229, v88, v87);
      sub_227664000();
      v94 = v93;
      sub_227663FF0();
      v96 = v94 + v95;
      sub_227664000();
      v98 = v97;
      sub_227663FE0();
      if (v98 - v99 <= v81 && v81 <= v96)
      {
        break;
      }

      v84 &= v84 - 1;
      result = (*v225)(v92, v87);
      v86 = v89;
      v73 = v224;
      v88 = v231;
      if (!v84)
      {
        goto LABEL_39;
      }
    }

    v101 = v212;
    v91(v212, v92, v87);
    v203 = sub_227663FD0();
    v202 = v102;
    v54 = v236;
    (*v232)(v214, v236);
    (*v225)(v101, v87);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_226EB3F78(0, *(v210 + 2) + 1, 1, v210);
      v210 = result;
    }

    v76 = v237;
    v68 = v235;
    v74 = v211;
    v73 = v224;
    v104 = *(v210 + 2);
    v103 = *(v210 + 3);
    v77 = v214;
    v43 = v228;
    if (v104 >= v103 >> 1)
    {
      result = sub_226EB3F78((v103 > 1), v104 + 1, 1, v210);
      v74 = v211;
      v68 = v235;
      v210 = result;
    }

    v105 = v210;
    *(v210 + 2) = v104 + 1;
    v106 = &v105[16 * v104];
    v107 = v202;
    *(v106 + 4) = v203;
    *(v106 + 5) = v107;
    v75 = v78;
    v46 = v234;
  }

  while (v71);
LABEL_31:
  while (1)
  {
    v78 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v78 >= v74)
    {

      v231 = sub_226F3E6A8(v210);

      v108 = v235;
      v109 = 1 << *(v46 + 32);
      v110 = -1;
      if (v109 < 64)
      {
        v110 = ~(-1 << v109);
      }

      v111 = v110 & *(v46 + 56);
      v112 = (v109 + 63) >> 6;

      v113 = 0;
      v114 = MEMORY[0x277D84F90];
      while (v111)
      {
        v115 = v222;
LABEL_66:
        v117 = v236;
        (*(v76 + 16))(v115, *(v46 + 48) + *(v76 + 72) * (__clz(__rbit64(v111)) | (v113 << 6)), v236);
        v118 = sub_227666AD0();
        result = (*(v76 + 8))(v115, v117);
        v119 = *(v118 + 16);
        v120 = *(v114 + 16);
        v121 = v120 + v119;
        if (__OFADD__(v120, v119))
        {
          goto LABEL_182;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v121 > *(v114 + 24) >> 1)
        {
          if (v120 <= v121)
          {
            v122 = v120 + v119;
          }

          else
          {
            v122 = v120;
          }

          result = sub_226EB3F78(result, v122, 1, v114);
          v114 = result;
        }

        v76 = v237;
        v111 &= v111 - 1;
        if (*(v118 + 16))
        {
          if ((*(v114 + 24) >> 1) - *(v114 + 16) < v119)
          {
            goto LABEL_193;
          }

          swift_arrayInitWithCopy();

          v46 = v234;
          v108 = v235;
          if (v119)
          {
            v123 = *(v114 + 16);
            v66 = __OFADD__(v123, v119);
            v124 = v123 + v119;
            if (v66)
            {
              goto LABEL_199;
            }

            *(v114 + 16) = v124;
          }
        }

        else
        {

          v46 = v234;
          v108 = v235;
          if (v119)
          {
            goto LABEL_183;
          }
        }
      }

      v115 = v222;
      while (1)
      {
        v116 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          goto LABEL_175;
        }

        if (v116 >= v112)
        {

          v229 = sub_226F3E6A8(v114);

          v125 = v209;
          v126 = sub_2271E4224(v46);
          v230 = v125;
          v228 = sub_226F3E6A8(v126);

          v127 = v235;
          v128 = 1 << *(v46 + 32);
          v129 = -1;
          if (v128 < 64)
          {
            v129 = ~(-1 << v128);
          }

          v130 = v129 & *(v46 + 56);
          v131 = (v128 + 63) >> 6;

          v132 = 0;
          v133 = MEMORY[0x277D84F90];
          while (v130)
          {
            v134 = v221;
LABEL_89:
            v136 = v236;
            (*(v76 + 16))(v134, *(v46 + 48) + *(v76 + 72) * (__clz(__rbit64(v130)) | (v132 << 6)), v236);
            v137 = sub_227666AE0();
            result = (*(v76 + 8))(v134, v136);
            v138 = *(v137 + 16);
            v139 = *(v133 + 16);
            v140 = v139 + v138;
            if (__OFADD__(v139, v138))
            {
              goto LABEL_184;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (!result || v140 > *(v133 + 24) >> 1)
            {
              if (v139 <= v140)
              {
                v141 = v139 + v138;
              }

              else
              {
                v141 = v139;
              }

              result = sub_226EB3F78(result, v141, 1, v133);
              v133 = result;
            }

            v76 = v237;
            v130 &= v130 - 1;
            if (*(v137 + 16))
            {
              if ((*(v133 + 24) >> 1) - *(v133 + 16) < v138)
              {
                goto LABEL_194;
              }

              swift_arrayInitWithCopy();

              v46 = v234;
              v127 = v235;
              if (v138)
              {
                v142 = *(v133 + 16);
                v66 = __OFADD__(v142, v138);
                v143 = v142 + v138;
                if (v66)
                {
                  goto LABEL_200;
                }

                *(v133 + 16) = v143;
              }
            }

            else
            {

              v46 = v234;
              v127 = v235;
              if (v138)
              {
                goto LABEL_185;
              }
            }
          }

          v134 = v221;
          while (1)
          {
            v135 = v132 + 1;
            if (__OFADD__(v132, 1))
            {
              goto LABEL_176;
            }

            if (v135 >= v131)
            {

              v227 = sub_226F3E6A8(v133);

              v144 = v235;
              v145 = 1 << *(v46 + 32);
              v146 = -1;
              if (v145 < 64)
              {
                v146 = ~(-1 << v145);
              }

              v147 = v146 & *(v46 + 56);
              v148 = (v145 + 63) >> 6;

              v149 = 0;
              v150 = MEMORY[0x277D84F90];
              while (v147)
              {
                v151 = v220;
LABEL_112:
                v153 = v236;
                (*(v76 + 16))(v151, *(v46 + 48) + *(v76 + 72) * (__clz(__rbit64(v147)) | (v149 << 6)), v236);
                v154 = sub_227666AF0();
                result = (*(v76 + 8))(v151, v153);
                v155 = *(v154 + 16);
                v156 = *(v150 + 16);
                v157 = v156 + v155;
                if (__OFADD__(v156, v155))
                {
                  goto LABEL_186;
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if (!result || v157 > *(v150 + 24) >> 1)
                {
                  if (v156 <= v157)
                  {
                    v158 = v156 + v155;
                  }

                  else
                  {
                    v158 = v156;
                  }

                  result = sub_226EB3F78(result, v158, 1, v150);
                  v150 = result;
                }

                v76 = v237;
                v147 &= v147 - 1;
                if (*(v154 + 16))
                {
                  if ((*(v150 + 24) >> 1) - *(v150 + 16) < v155)
                  {
                    goto LABEL_195;
                  }

                  swift_arrayInitWithCopy();

                  v46 = v234;
                  v144 = v235;
                  if (v155)
                  {
                    v159 = *(v150 + 16);
                    v66 = __OFADD__(v159, v155);
                    v160 = v159 + v155;
                    if (v66)
                    {
                      goto LABEL_201;
                    }

                    *(v150 + 16) = v160;
                  }
                }

                else
                {

                  v46 = v234;
                  v144 = v235;
                  if (v155)
                  {
                    goto LABEL_187;
                  }
                }
              }

              v151 = v220;
              while (1)
              {
                v152 = v149 + 1;
                if (__OFADD__(v149, 1))
                {
                  goto LABEL_177;
                }

                if (v152 >= v148)
                {

                  v226 = sub_226F3E6A8(v150);

                  v161 = v235;
                  v162 = 1 << *(v46 + 32);
                  v163 = -1;
                  if (v162 < 64)
                  {
                    v163 = ~(-1 << v162);
                  }

                  v164 = v163 & *(v46 + 56);
                  v165 = (v162 + 63) >> 6;

                  v166 = 0;
                  v167 = MEMORY[0x277D84F90];
                  while (v164)
                  {
                    v168 = v219;
LABEL_135:
                    v170 = v236;
                    v171 = v237;
                    (*(v237 + 16))(v168, *(v234 + 48) + *(v237 + 72) * (__clz(__rbit64(v164)) | (v166 << 6)), v236);
                    v172 = sub_227666A80();
                    result = (*(v171 + 8))(v168, v170);
                    v173 = *(v172 + 16);
                    v174 = *(v167 + 16);
                    v175 = v174 + v173;
                    if (__OFADD__(v174, v173))
                    {
                      goto LABEL_188;
                    }

                    result = swift_isUniquelyReferenced_nonNull_native();
                    if (!result || v175 > *(v167 + 24) >> 1)
                    {
                      if (v174 <= v175)
                      {
                        v176 = v174 + v173;
                      }

                      else
                      {
                        v176 = v174;
                      }

                      result = sub_226EB3F78(result, v176, 1, v167);
                      v167 = result;
                    }

                    v164 &= v164 - 1;
                    if (*(v172 + 16))
                    {
                      if ((*(v167 + 24) >> 1) - *(v167 + 16) < v173)
                      {
                        goto LABEL_196;
                      }

                      swift_arrayInitWithCopy();

                      v161 = v235;
                      if (v173)
                      {
                        v177 = *(v167 + 16);
                        v66 = __OFADD__(v177, v173);
                        v178 = v177 + v173;
                        if (v66)
                        {
                          goto LABEL_202;
                        }

                        *(v167 + 16) = v178;
                      }
                    }

                    else
                    {

                      v161 = v235;
                      if (v173)
                      {
                        goto LABEL_189;
                      }
                    }
                  }

                  v168 = v219;
                  while (1)
                  {
                    v169 = v166 + 1;
                    if (__OFADD__(v166, 1))
                    {
                      goto LABEL_178;
                    }

                    if (v169 >= v165)
                    {
                      v179 = v234;

                      v225 = sub_226F3E6A8(v167);

                      v180 = v235;
                      v181 = 1 << *(v179 + 32);
                      v182 = -1;
                      if (v181 < 64)
                      {
                        v182 = ~(-1 << v181);
                      }

                      v183 = v182 & *(v179 + 56);
                      v184 = (v181 + 63) >> 6;

                      v185 = 0;
                      v186 = MEMORY[0x277D84F90];
                      v187 = v223;
                      v188 = v216;
                      v189 = v215;
                      while (v183)
                      {
                        v190 = v218;
LABEL_158:
                        v192 = v236;
                        v193 = v237;
                        (*(v237 + 16))(v190, *(v234 + 48) + *(v237 + 72) * (__clz(__rbit64(v183)) | (v185 << 6)), v236);
                        v194 = sub_227666AA0();
                        result = (*(v193 + 8))(v190, v192);
                        v195 = *(v194 + 16);
                        v196 = *(v186 + 16);
                        v197 = v196 + v195;
                        if (__OFADD__(v196, v195))
                        {
                          goto LABEL_190;
                        }

                        result = swift_isUniquelyReferenced_nonNull_native();
                        if (!result || v197 > *(v186 + 24) >> 1)
                        {
                          if (v196 <= v197)
                          {
                            v198 = v196 + v195;
                          }

                          else
                          {
                            v198 = v196;
                          }

                          result = sub_226EB3F78(result, v198, 1, v186);
                          v186 = result;
                        }

                        v183 &= v183 - 1;
                        if (*(v194 + 16))
                        {
                          if ((*(v186 + 24) >> 1) - *(v186 + 16) < v195)
                          {
                            goto LABEL_197;
                          }

                          swift_arrayInitWithCopy();

                          v187 = v223;
                          v188 = v216;
                          v189 = v215;
                          v180 = v235;
                          if (v195)
                          {
                            v199 = *(v186 + 16);
                            v66 = __OFADD__(v199, v195);
                            v200 = v199 + v195;
                            if (v66)
                            {
                              goto LABEL_203;
                            }

                            *(v186 + 16) = v200;
                          }
                        }

                        else
                        {

                          v187 = v223;
                          v188 = v216;
                          v189 = v215;
                          v180 = v235;
                          if (v195)
                          {
                            goto LABEL_191;
                          }
                        }
                      }

                      v190 = v218;
                      while (1)
                      {
                        v191 = v185 + 1;
                        if (__OFADD__(v185, 1))
                        {
                          goto LABEL_179;
                        }

                        if (v191 >= v184)
                        {

                          sub_226F3E6A8(v186);

                          sub_2276657C0();
                          (*(v187 + 8))(v207, v208);
                          return (*(v189 + 8))(v206, v188);
                        }

                        v183 = *(v180 + 8 * v191);
                        ++v185;
                        if (v183)
                        {
                          v185 = v191;
                          goto LABEL_158;
                        }
                      }
                    }

                    v164 = *(v161 + 8 * v169);
                    ++v166;
                    if (v164)
                    {
                      v166 = v169;
                      goto LABEL_135;
                    }
                  }
                }

                v147 = *(v144 + 8 * v152);
                ++v149;
                if (v147)
                {
                  v149 = v152;
                  goto LABEL_112;
                }
              }
            }

            v130 = *(v127 + 8 * v135);
            ++v132;
            if (v130)
            {
              v132 = v135;
              goto LABEL_89;
            }
          }
        }

        v111 = *(v108 + 8 * v116);
        ++v113;
        if (v111)
        {
          v113 = v116;
          goto LABEL_66;
        }
      }
    }

    v71 = *(v68 + 8 * v78);
    ++v75;
    if (v71)
    {
      goto LABEL_34;
    }
  }

LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
  return result;
}

uint64_t sub_227208C88@<X0>(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v128 = a1;
  v123 = a3;
  v122 = a4;
  v134 = sub_2276627D0();
  v127 = *(v134 - 8);
  v5 = *(v127 + 64);
  MEMORY[0x28223BE20](v134);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v117 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v117 - v17;
  v19 = swift_projectBox();
  v126 = __swift_project_boxed_opaque_existential_0((a2 + 144), *(a2 + 168));
  swift_beginAccess();
  v20 = v9[2];
  v20(v14, v19, v8);
  sub_227663820();
  v21 = v9[1];
  v125 = v8;
  v21(v14, v8);
  v22 = *v126;
  v24 = v128;
  v23 = v129;
  v126 = v18;
  sub_227254380(v7, v128, v18);
  if (v23)
  {
    return (*(v127 + 8))(v7, v134);
  }

  v120 = v21;
  v121 = v19;
  v129 = v20;
  (*(v127 + 8))(v7, v134);
  v26 = sub_227665CA0();
  v27 = *(v26 - 8);
  v28 = v126;
  v29 = (*(v27 + 48))(v126, 1, v26);
  v118 = 0;
  if (v29 == 1)
  {
    sub_226E97D1C(v28, &qword_27D7BC148, &unk_22767CCA0);
    v119 = MEMORY[0x277D84FA0];
  }

  else
  {
    v119 = sub_227665C60();
    (*(v27 + 8))(v28, v26);
  }

  v30 = v124;
  v31 = v125;
  v32 = v129;
  v33 = v121;
  swift_beginAccess();
  v32(v30, v33, v31);
  v34 = sub_227663840();
  v120(v30, v31);
  v35 = v34 + 64;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 64);
  v124 = ((v36 + 63) >> 6);

  v40 = 0;
  v41 = MEMORY[0x277D84F90];
  v125 = v34 + 64;
  v126 = v34;
  while (v38)
  {
    v134 = v41;
LABEL_16:
    v129 = v38;
    v43 = *(*(v34 + 56) + ((v40 << 9) | (8 * __clz(__rbit64(v38)))));
    v44 = *(v43 + 16);
    if (v44)
    {
      v132[0] = MEMORY[0x277D84F90];

      sub_226F1EF90(0, v44, 0);
      v28 = v132[0];
      v127 = v43;
      v45 = (v43 + 40);
      do
      {
        v47 = *(v45 - 1);
        v46 = *v45;

        v48 = sub_227667380();
        v50 = v49;

        v132[0] = v28;
        v52 = *(v28 + 16);
        v51 = *(v28 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_226F1EF90(v51 > 1, v52 + 1, 1);
          v28 = v132[0];
        }

        *(v28 + 16) = v52 + 1;
        v53 = v28 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        v45 += 2;
        --v44;
      }

      while (v44);

      v24 = v128;
      v35 = v125;
      v34 = v126;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v54 = *(v28 + 16);
    v41 = v134;
    v55 = *(v134 + 16);
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      v127 = isUniquelyReferenced_nonNull_native;
      sub_22766C360();
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v56 > *(v41 + 24) >> 1)
    {
      if (v55 <= v56)
      {
        v57 = v55 + v54;
      }

      else
      {
        v57 = v55;
      }

      isUniquelyReferenced_nonNull_native = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v57, 1, v41);
      v41 = isUniquelyReferenced_nonNull_native;
    }

    v38 = (v129 - 1) & v129;
    if (*(v28 + 16))
    {
      if ((*(v41 + 24) >> 1) - *(v41 + 16) < v54)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      if (v54)
      {
        v58 = *(v41 + 16);
        v59 = __OFADD__(v58, v54);
        v60 = v58 + v54;
        if (v59)
        {
          goto LABEL_53;
        }

        *(v41 + 16) = v60;
      }
    }

    else
    {

      if (v54)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v42 >= v124)
    {
      break;
    }

    v38 = *(v35 + 8 * v42);
    ++v40;
    if (v38)
    {
      v134 = v41;
      v40 = v42;
      goto LABEL_16;
    }
  }

  v61 = sub_226F3E6A8(v41);

  v62 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  v63 = *v62;
  v64 = v62[1];
  v65 = *(v62 + 16);
  v66 = v62[3];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v24 = swift_allocObject();
  v70 = v63;
  v71 = v64;

  sub_22766A070();
  v24[2] = v70;
  v24[3] = v71;
  *(v24 + 32) = v65;
  v24[5] = v66;
  swift_getKeyPath();
  v134 = v61;
  v72 = sub_227230638(v61);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v132[0] = v72;
  sub_226F06498();

  v73 = sub_22766C820();
  sub_226E93170(v132, v130, &unk_27D7BC990, &qword_227670A30);
  v74 = v131;
  if (v131)
  {
    v75 = __swift_project_boxed_opaque_existential_0(v130, v131);
    v76 = *(v74 - 8);
    v77 = *(v76 + 64);
    MEMORY[0x28223BE20](v75);
    v79 = &v117 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v79);
    v80 = sub_22766D170();
    (*(v76 + 8))(v79, v74);
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    v80 = 0;
  }

  v28 = v123;
  v129 = objc_opt_self();
  v81 = [v129 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  [objc_allocWithZone(v128) initWithLeftExpression:v73 rightExpression:v81 modifier:0 type:10 options:0];

  sub_226E97D1C(v132, &unk_27D7BC990, &qword_227670A30);
  v35 = qword_2813B2078;
  swift_beginAccess();
  v40 = sub_22766A080();
  v83 = v82;
  MEMORY[0x22AA985C0]();
  isUniquelyReferenced_nonNull_native = *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (isUniquelyReferenced_nonNull_native >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_54;
  }

LABEL_39:
  sub_22766C3A0();
  (v40)(v132, 0);
  swift_endAccess();

  swift_getKeyPath();
  v84 = v118;
  v85 = sub_2271E5734(v28);
  v86 = v84;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v132[0] = v85;

  v87 = sub_22766C820();
  sub_226E93170(v132, v130, &unk_27D7BC990, &qword_227670A30);
  v88 = v131;
  if (v131)
  {
    v89 = __swift_project_boxed_opaque_existential_0(v130, v131);
    v127 = v35;
    v90 = *(v88 - 8);
    v91 = *(v90 + 64);
    MEMORY[0x28223BE20](v89);
    v93 = &v117 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v90 + 16))(v93);
    v94 = sub_22766D170();
    (*(v90 + 8))(v93, v88);
    v86 = v84;
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    v94 = 0;
  }

  v95 = [v129 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v96 = [objc_allocWithZone(v128) initWithLeftExpression:v87 rightExpression:v95 modifier:0 type:10 options:0];

  sub_226E97D1C(v132, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v97 = v96;
  v98 = sub_22766A080();
  v100 = v99;
  MEMORY[0x22AA985C0]();
  if (*((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v116 = *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v98(v132, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v102 = sub_2273FC91C(KeyPath);
  if (v86)
  {

    swift_setDeallocating();

    v103 = v24[5];

    v104 = qword_2813B2078;
    v105 = sub_22766A100();
    (*(*(v105 - 8) + 8))(v24 + v104, v105);
    v106 = *(*v24 + 48);
    v107 = *(*v24 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v108 = sub_226F3E6A8(v102);

    swift_setDeallocating();

    v109 = v24[5];

    v110 = qword_2813B2078;
    v111 = sub_22766A100();
    (*(*(v111 - 8) + 8))(v24 + v110, v111);
    v112 = *(*v24 + 48);
    v113 = *(*v24 + 52);
    swift_deallocClassInstance();
    v114 = v122;
    *v122 = v119;
    if (*(v108 + 16) <= *(v134 + 16) >> 3)
    {
      v132[0] = v134;
      sub_22700604C(v108);

      v114[1] = v132[0];
    }

    else
    {
      v115 = sub_22700776C(v108, v134);

      v114[1] = v115;
    }
  }

  return result;
}

uint64_t sub_227209A48@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227663FB0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_227209A74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v64 = a5;
  v60 = a4;
  v63 = a6;
  v58 = sub_2276638D0();
  v56 = *(v58 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2276627D0();
  v57 = *(v59 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227666B60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22766B390();
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = *(v61 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v22 = a1[1];
  v24 = sub_227667380();
  v53 = a2;
  if (v24 == a2 && v25 == a3)
  {
  }

  else
  {
    v26 = sub_22766D190();

    if ((v26 & 1) == 0)
    {
      result = sub_227667380();
      goto LABEL_10;
    }
  }

  sub_22766A630();
  (*(v14 + 16))(v17, v64, v13);

  v27 = sub_22766B380();
  v28 = sub_22766C8B0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65 = v52;
    *v29 = 136315650;
    *(v29 + 4) = sub_226E97AE8(v53, a3, &v65);
    *(v29 + 12) = 2080;
    v30 = swift_projectBox();
    swift_beginAccess();
    v31 = v56;
    v32 = *(v56 + 16);
    v60 = v27;
    v33 = v54;
    v34 = v30;
    v35 = v58;
    v32(v54, v34, v58);
    LODWORD(v53) = v28;
    v36 = v55;
    sub_2276637C0();
    (*(v31 + 8))(v33, v35);
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v37 = v59;
    v38 = sub_22766D140();
    v40 = v39;
    (*(v57 + 8))(v36, v37);
    v41 = sub_226E97AE8(v38, v40, &v65);

    *(v29 + 14) = v41;
    *(v29 + 22) = 2080;
    sub_226EAC024(&qword_27D7BB360, MEMORY[0x277D52828]);
    v42 = sub_22766D140();
    v44 = v43;
    (*(v14 + 8))(v17, v13);
    v45 = sub_226E97AE8(v42, v44, &v65);

    *(v29 + 24) = v45;
    v46 = v60;
    _os_log_impl(&dword_226E8E000, v60, v53, "Found outdated workout %s in %s. Replacing with new: %s", v29, 0x20u);
    v47 = v52;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v47, -1, -1);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  (*(v61 + 8))(v21, v62);
  result = sub_227666A50();
LABEL_10:
  v50 = v63;
  *v63 = result;
  v50[1] = v49;
  return result;
}

uint64_t sub_22720A018(void *a1, uint64_t a2)
{
  v5 = sub_227663FA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *__swift_project_boxed_opaque_existential_0((a2 + 224), *(a2 + 248));
  result = sub_226EAF48C(a1, v9);
  if (!v2)
  {
    sub_227663E60();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

char *sub_22720A128(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v12 = sub_2276638D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_226E9B790(0, 1, a1);
  if (!v2)
  {
    v18 = result;
    v28 = a2;
    v29 = a1;
    v30 = 0;
    v31 = result;
    v32 = result;
    swift_getKeyPath();

    v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
    sub_226E9CFD0(&qword_281398E78, &qword_27D7BC180, &qword_2276854E0);
    sub_226EAC024(&qword_28139BDC0, MEMORY[0x277CC9578]);
    sub_22766C200();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_226E97D1C(v11, &unk_27D7BB920, &unk_227672480);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      sub_22700CE8C(v16, v9);
      sub_226E97D1C(v9, &unk_27D7BB920, &unk_227672480);
      (*(v13 + 8))(v16, v12);
      v18 = v32;
    }

    v20 = v29;
    v19 = v30;
    v21 = v28;
    if (*(v18 + 16))
    {
      v22 = sub_2271E5958(v18, MEMORY[0x277D50180], MEMORY[0x277D50150]);
      v23 = sub_226F45B58(v22);

      sub_227282340(v23, v20);

      if (!v19)
      {
        v24 = __swift_project_boxed_opaque_existential_0((v21 + 40), *(v21 + 64));
        v25 = sub_2271E5958(v18, MEMORY[0x277D50180], MEMORY[0x277D50150]);

        v26 = *v24;
        sub_2271E62E8(v25, v20);
      }
    }
  }

  return result;
}

unint64_t *sub_22720A52C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_22720CDF8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_22720A5C8(uint64_t a1, char a2, void *a3)
{
  v63 = sub_227666B60();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB090, &qword_227679BB0);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v54 - v12);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v60 + 80);
  v59 = a1;
  v16 = (v61 + 32);
  v56 = a1 + ((v15 + 32) & ~v15);
  sub_226E93170(v56, v13, &qword_27D7BB090, &qword_227679BB0);
  v17 = v13[1];
  v66 = *v13;
  v18 = v66;
  v67 = v17;
  v19 = *v16;
  v57 = v14;
  v55 = v19;
  v19(v62, v13 + v14, v63);
  v20 = *a3;
  v22 = sub_226E92000(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_226FF41A8();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_226FEB78C(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_226E92000(v18, v17);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = (v32[6] + 16 * v22);
      *v33 = v18;
      v33[1] = v17;
      v55((v32[7] + *(v61 + 72) * v22), v62, v63);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_226E93170(v56 + *(v60 + 72) * v37, v13, &qword_27D7BB090, &qword_227679BB0);
          v38 = v13[1];
          v66 = *v13;
          v39 = v66;
          v67 = v38;
          v40 = *v16;
          (*v16)(v62, v13 + v57, v63);
          v41 = *a3;
          v42 = sub_226E92000(v39, v38);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v35 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v35)
          {
            goto LABEL_26;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            sub_226FEB78C(v46, 1);
            v48 = *a3;
            v42 = sub_226E92000(v39, v38);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v50 = *a3;
          *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = (v50[6] + 16 * v42);
          *v51 = v39;
          v51[1] = v38;
          v40((v50[7] + *(v61 + 72) * v42), v62, v63);
          v52 = v50[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v50[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();
    v68 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v62, v63);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22766D220();
  __break(1u);
LABEL_29:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_22720AB34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_2276638D0() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_227117914(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_22720AF34(a1, a2, MEMORY[0x277D50180], MEMORY[0x277D50180], MEMORY[0x277D50180], sub_22711739C);
  *v3 = v7;
  return result;
}

uint64_t sub_22720AC34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_2276642E0() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2271179AC(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_22720AF34(a1, a2, MEMORY[0x277D50820], MEMORY[0x277D50820], MEMORY[0x277D50820], sub_2271173CC);
  *v3 = v7;
  return result;
}

uint64_t sub_22720AD34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_227666B60() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2271179F8(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_22720AF34(a1, a2, MEMORY[0x277D52828], MEMORY[0x277D52828], MEMORY[0x277D52828], sub_2271173E4);
  *v3 = v7;
  return result;
}

uint64_t sub_22720AE34(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_2276658B0() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_227117A44(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_22720AF34(a1, a2, MEMORY[0x277D519E0], MEMORY[0x277D519E0], MEMORY[0x277D519E0], sub_2271173FC);
  *v3 = v7;
  return result;
}

uint64_t sub_22720AF34(uint64_t (*a1)(char *, char *), uint64_t a2, void (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(char **, unint64_t *, char **))
{
  v12 = *(v6 + 8);
  result = sub_22766D130();
  if (result < v12)
  {
    if (v12 >= -1)
    {
      v14 = result;
      v18 = a5;
      v15 = v12 / 2;
      if (v12 < 2)
      {
        v16 = MEMORY[0x277D84F90];
      }

      else
      {
        a3(0);
        v16 = sub_22766C380();
        *(v16 + 16) = v15;
      }

      v17 = *((a3)(0) - 8);
      v20[0] = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v20[1] = v15;
      sub_22720B398(v20, v21, v6, a1, a2, v14, a4, v18, a6);
      *(v16 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v12 < 0)
  {
    goto LABEL_12;
  }

  if (v12)
  {
    return sub_22720B0A8(0, v12, 1, a1, a2, a5);
  }

  return result;
}

uint64_t sub_22720B0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t (*a6)(void))
{
  v8 = v7;
  v54 = a5;
  v55 = a4;
  v12 = a6(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v40 - v17;
  result = MEMORY[0x28223BE20](v16);
  v41 = a2;
  if (a3 != a2)
  {
    v52 = &v40 - v19;
    v21 = *v6;
    v23 = *(v20 + 16);
    v22 = v20 + 16;
    v24 = *(v22 + 56);
    v50 = v23;
    v51 = (v22 - 8);
    v53 = v22;
    v47 = (v22 + 16);
    v48 = v21;
    v25 = v21 + v24 * (a3 - 1);
    v46 = -v24;
    v26 = a1 - a3;
    v40 = v24;
    v27 = v21 + v24 * a3;
    v28 = v56;
    while (2)
    {
      v44 = v25;
      v45 = a3;
      v42 = v27;
      v43 = v26;
      v29 = v25;
      while (1)
      {
        v30 = v52;
        v31 = v50;
        v50(v52, v27, v12);
        v31(v28, v29, v12);
        v32 = v55(v30, v28);
        if (v8)
        {
          v39 = *v51;
          (*v51)(v28, v12);
          return (v39)(v30, v12);
        }

        v33 = v32;
        v34 = v28;
        v35 = *v51;
        (*v51)(v34, v12);
        result = (v35)(v30, v12);
        if ((v33 & 1) == 0)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return result;
        }

        v36 = *v47;
        v37 = v49;
        (*v47)(v49, v27, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = (v36)(v29, v37, v12);
        v29 += v46;
        v27 += v46;
        v38 = __CFADD__(v26++, 1);
        v28 = v56;
        v8 = 0;
        if (v38)
        {
          goto LABEL_11;
        }
      }

      v28 = v56;
      v8 = 0;
LABEL_11:
      a3 = v45 + 1;
      v25 = v44 + v40;
      v26 = v43 - 1;
      v27 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22720B398(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, int64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void), void (*a9)(char **, unint64_t *, char **))
{
  v11 = v9;
  v163 = a4;
  v164 = a5;
  v142 = a1;
  v158 = a9;
  v14 = a7(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v17 = MEMORY[0x28223BE20](v14);
  v144 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v132 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v139 = &v132 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v141 = &v132 - v27;
  result = MEMORY[0x28223BE20](v26);
  v140 = &v132 - v32;
  v33 = *(a3 + 8);
  v148 = a3;
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_104:
    a6 = *v142;
    if (*v142)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v150 = v31;
  v145 = v30;
  v146 = v29;
  v137 = a6;
  v34 = 0;
  v159 = (v15 + 8);
  v160 = v15 + 16;
  v155 = (v15 + 32);
  v35 = MEMORY[0x277D84F90];
  v157 = v15;
  v162 = v14;
  v136 = a8;
  while (1)
  {
    v36 = v34;
    if (v34 + 1 >= v33)
    {
      v57 = (v34 + 1);
    }

    else
    {
      v143 = v33;
      v161 = v11;
      v37 = *a3;
      v38 = *(v15 + 9);
      v39 = &v37[v38 * (v34 + 1)];
      v40 = *(v15 + 2);
      v41 = v140;
      v42 = v34;
      v40(v140, v39, v14);
      v156 = v37;
      v43 = &v37[v38 * v36];
      v44 = v141;
      v151 = v40;
      v40(v141, v43, v14);
      v45 = v14;
      v46 = v161;
      LODWORD(v153) = v163(v41, v44);
      v161 = v46;
      if (v46)
      {
        v131 = *v159;
        (*v159)(v44, v14);
        v131(v41, v14);
      }

      v47 = *v159;
      (*v159)(v44, v45);
      v149 = v47;
      result = (v47)(v41, v45);
      v135 = v143 - 1;
      v152 = v143 - 2;
      v48 = &v156[v38 * (v42 + 2)];
      v138 = v42;
      a6 = v42;
      v11 = v161;
      v49 = v139;
      v156 = v38;
      v154 = v35;
      while (v152 != a6)
      {
        v50 = v162;
        v51 = v11;
        v52 = v151;
        (v151)(v49, v48, v162);
        v53 = v150;
        (v52)(v150, v39, v50);
        v54 = v163(v49, v53);
        v11 = v51;
        if (v51)
        {
          v129 = v149;
          (v149)(v53, v50);
          v129(v49, v50);
        }

        v55 = v54;
        v56 = v149;
        (v149)(v53, v50);
        result = v56(v49, v50);
        ++a6;
        v38 = v156;
        v48 = &v156[v48];
        v39 = &v156[v39];
        v35 = v154;
        if ((v153 ^ v55))
        {
          v57 = (a6 + 1);
          v14 = v162;
          goto LABEL_12;
        }
      }

      a6 = v135;
      v14 = v162;
      v57 = v143;
LABEL_12:
      a3 = v148;
      v15 = v157;
      v36 = v138;
      if ((v153 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v57 < v138)
      {
        goto LABEL_140;
      }

      if (v138 <= a6)
      {
        v58 = v57;
        v59 = v38 * (v57 - 1);
        v60 = v58 * v38;
        v143 = v58;
        v61 = v138;
        a6 = v138 * v38;
        do
        {
          if (v61 != --v58)
          {
            v161 = v11;
            v63 = *v148;
            if (!*v148)
            {
              goto LABEL_144;
            }

            v153 = *v155;
            v153(v144, (v63 + a6), v162);
            if (a6 < v59 || v63 + a6 >= (v63 + v60))
            {
              v62 = v162;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v62 = v162;
              if (a6 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v153)(v63 + v59, v144, v62);
            v11 = v161;
            v14 = v62;
            v38 = v156;
          }

          ++v61;
          v59 -= v38;
          v60 -= v38;
          a6 += v38;
        }

        while (v61 < v58);
        a8 = v136;
        a3 = v148;
        v15 = v157;
        v36 = v138;
        v57 = v143;
      }

      else
      {
LABEL_15:
        a8 = v136;
      }
    }

    v64 = *(a3 + 8);
    if (v57 >= v64)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v57, v36))
    {
      goto LABEL_136;
    }

    if (&v57[-v36] >= v137)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v36, v137))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v143 = v57;
    if (v36 + v137 >= v64)
    {
      v65 = v64;
    }

    else
    {
      v65 = (v36 + v137);
    }

    if (v65 < v36)
    {
      goto LABEL_139;
    }

    if (v143 == v65)
    {
      v57 = v143;
LABEL_37:
      if (v57 < v36)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v154 = v35;
    v111 = *a3;
    v112 = *(v15 + 9);
    v156 = *(v15 + 2);
    v15 = &v111[v112 * (v143 - 1)];
    v152 = -v112;
    v138 = v36;
    a6 = v36 - v143;
    v153 = v111;
    v133 = v112;
    v113 = &v111[v143 * v112];
    v151 = v65;
    do
    {
      v134 = v113;
      v114 = v113;
      v135 = a6;
      v149 = v15;
      while (1)
      {
        v115 = v145;
        v116 = v156;
        (v156)(v145, v114, v14);
        v117 = v146;
        v116(v146, v15, v14);
        v118 = v14;
        v119 = v163(v115, v117);
        v161 = v11;
        if (v11)
        {
          v130 = *v159;
          (*v159)(v117, v14);
          v130(v115, v14);
        }

        v120 = v119;
        v121 = *v159;
        (*v159)(v117, v118);
        result = (v121)(v115, v118);
        if ((v120 & 1) == 0)
        {
          break;
        }

        if (!v153)
        {
          goto LABEL_142;
        }

        v122 = *v155;
        v123 = v147;
        v14 = v162;
        (*v155)(v147, v114, v162);
        swift_arrayInitWithTakeFrontToBack();
        v122(v15, v123, v14);
        v15 += v152;
        v114 += v152;
        v124 = __CFADD__(a6++, 1);
        v11 = v161;
        if (v124)
        {
          goto LABEL_100;
        }
      }

      v11 = v161;
      v14 = v162;
LABEL_100:
      v15 = &v149[v133];
      a6 = v135 - 1;
      v113 = &v134[v133];
      v57 = v151;
      ++v143;
    }

    while (v143 != v151);
    a8 = v136;
    a3 = v148;
    v35 = v154;
    v36 = v138;
    if (v151 < v138)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    a6 = v11;
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v35 + 2) + 1, 1, v35);
      v35 = result;
    }

    v67 = *(v35 + 2);
    v66 = *(v35 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_2273A4F9C((v66 > 1), v67 + 1, 1, v35);
      v35 = result;
    }

    *(v35 + 2) = v68;
    v69 = &v35[16 * v67];
    *(v69 + 4) = v36;
    *(v69 + 5) = v57;
    v15 = *v142;
    if (!*v142)
    {
      goto LABEL_145;
    }

    v151 = v57;
    if (v67)
    {
      break;
    }

    v11 = a6;
LABEL_89:
    v33 = *(a3 + 8);
    v34 = v151;
    v15 = v157;
    v14 = v162;
    if (v151 >= v33)
    {
      goto LABEL_104;
    }
  }

  v11 = a6;
  while (1)
  {
    v70 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v35[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_122;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_123;
      }

      v82 = &v35[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_125;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_128;
      }

      if (v86 >= v78)
      {
        v104 = &v35[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_134;
        }

        if (v73 < v107)
        {
          v70 = v68 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v68 == 3)
    {
      v71 = *(v35 + 4);
      v72 = *(v35 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_58:
      if (v74)
      {
        goto LABEL_124;
      }

      v87 = &v35[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_127;
      }

      v93 = &v35[16 * v70 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_131;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          v70 = v68 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v97 = &v35[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_72:
    if (v92)
    {
      goto LABEL_126;
    }

    v100 = &v35[16 * v70];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_129;
    }

    if (v103 < v91)
    {
      goto LABEL_89;
    }

LABEL_79:
    a6 = v70 - 1;
    if (v70 - 1 >= v68)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v108 = *&v35[16 * a6 + 32];
    v109 = *&v35[16 * v70 + 40];
    sub_22720BFE4((*a3 + *(v157 + 9) * v108), (*a3 + *(v157 + 9) * *&v35[16 * v70 + 32]), *a3 + *(v157 + 9) * v109, v15, v163, v164, a8, v158);
    if (v11)
    {
    }

    if (v109 < v108)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_2271171D0(v35);
    }

    if (a6 >= *(v35 + 2))
    {
      goto LABEL_121;
    }

    v110 = &v35[16 * a6];
    *(v110 + 4) = v108;
    *(v110 + 5) = v109;
    v165 = v35;
    result = sub_227117144(v70);
    v35 = v165;
    v68 = *(v165 + 2);
    if (v68 <= 1)
    {
      goto LABEL_89;
    }
  }

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
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
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
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = sub_2271171D0(v35);
  v35 = result;
LABEL_106:
  v165 = v35;
  v125 = *(v35 + 2);
  if (v125 < 2)
  {
  }

  while (1)
  {
    v126 = *a3;
    if (!*a3)
    {
      break;
    }

    v127 = *&v35[16 * v125];
    a3 = *&v35[16 * v125 + 24];
    sub_22720BFE4(&v126[*(v15 + 9) * v127], &v126[*(v15 + 9) * *&v35[16 * v125 + 16]], &v126[*(v15 + 9) * a3], a6, v163, v164, a8, v158);
    if (v11)
    {
    }

    if (a3 < v127)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_2271171D0(v35);
    }

    if (v125 - 2 >= *(v35 + 2))
    {
      goto LABEL_133;
    }

    v128 = &v35[16 * v125];
    *v128 = v127;
    *(v128 + 1) = a3;
    v165 = v35;
    result = sub_227117144(v125 - 1);
    v35 = v165;
    v125 = *(v165 + 2);
    a3 = v148;
    if (v125 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_22720BFE4(char *a1, char *a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t (*a7)(void), void (*a8)(char **, unint64_t *, char **))
{
  v10 = v8;
  v84 = a5;
  v81 = a4;
  v15 = a7(0);
  v83 = *(v15 - 8);
  v16 = *(v83 + 8);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v70 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v70 - v22;
  result = MEMORY[0x28223BE20](v21);
  v86 = &v70 - v26;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_69;
  }

  v29 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v28 != -1)
  {
    v82 = a3;
    v30 = (a2 - a1) / v28;
    v90 = a1;
    v31 = v81;
    v89 = v81;
    v85 = v28;
    v72 = a8;
    if (v30 < v29 / v28)
    {
      v32 = v10;
      v33 = a2;
      v34 = v30 * v28;
      v80 = v23;
      if (v81 < a1 || &a1[v34] <= v81)
      {
        v35 = v15;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v35 = v15;
        if (v81 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v79 = v31 + v34;
      v87 = v32;
      v88 = (v31 + v34);
      v37 = v33;
      v38 = v34 < 1 || v33 >= v82;
      v39 = v86;
      if (!v38)
      {
        v40 = *(v83 + 2);
        v83 += 16;
        v77 = v40;
        v78 = v83 - 8;
        while (1)
        {
          v86 = v37;
          v41 = v77;
          (v77)(v39);
          v42 = v80;
          v41(v80, v31, v35);
          v43 = v87;
          v44 = v84(v39, v42);
          v87 = v43;
          if (v43)
          {
            v68 = *v78;
            (*v78)(v42, v35);
            v68(v39, v35);
            goto LABEL_67;
          }

          v45 = v44;
          v46 = v31;
          v47 = *v78;
          (*v78)(v42, v35);
          v47(v39, v35);
          if (v45)
          {
            v48 = v85;
            v49 = &v86[v85];
            v31 = v46;
            if (a1 < v86 || a1 >= v49)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_32:
              v48 = v85;
            }

            else if (a1 != v86)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_32;
            }

            v37 = v49;
            goto LABEL_37;
          }

          v48 = v85;
          v31 = &v46[v85];
          if (a1 < v46 || a1 >= v31)
          {
            break;
          }

          if (a1 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_35:
            v48 = v85;
          }

          v89 = v31;
          v37 = v86;
LABEL_37:
          a1 += v48;
          v90 = a1;
          if (v31 >= v79 || v37 >= v82)
          {
            goto LABEL_67;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_35;
      }

      goto LABEL_67;
    }

    v36 = v29 / v28 * v28;
    v79 = v25;
    if (v81 < a2 || &a2[v36] <= v81)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v81 == a2)
      {
LABEL_42:
        v50 = (v31 + v36);
        if (v36 >= 1)
        {
          v51 = -v28;
          v52 = v82;
          v76 = (v83 + 16);
          v77 = (v83 + 8);
          v53 = v50;
          v74 = a1;
          v75 = a6;
          v73 = -v28;
          do
          {
            v80 = v50;
            v71 = v50;
            v54 = &a2[v51];
            v86 = &a2[v51];
            v78 = a2;
            while (1)
            {
              v87 = v10;
              if (a2 <= a1)
              {
                v90 = a2;
                v50 = v71;
                goto LABEL_66;
              }

              v83 = v52;
              v85 = v53;
              v56 = *v76;
              v82 = v53 + v51;
              v57 = v15;
              v58 = v51;
              v56(v20);
              v59 = v79;
              (v56)(v79, v54, v57);
              v60 = v87;
              v61 = v84(v20, v59);
              if (v60)
              {
                v69 = *v77;
                (*v77)(v59, v57);
                v69(v20, v57);
                v90 = v78;
                v88 = v80;
                goto LABEL_67;
              }

              v62 = v61;
              v87 = 0;
              v63 = v83;
              v64 = &v83[v58];
              v65 = *v77;
              (*v77)(v59, v57);
              v15 = v57;
              v65(v20, v57);
              if (v62)
              {
                break;
              }

              v66 = v82;
              v67 = v82;
              v52 = v64;
              if (v63 < v85 || v64 >= v85)
              {
                swift_arrayInitWithTakeFrontToBack();
                v54 = v86;
              }

              else
              {
                v54 = v86;
                if (v63 != v85)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v80 = v67;
              v53 = v67;
              v55 = v66 > v81;
              v10 = v87;
              a1 = v74;
              v51 = v73;
              a2 = v78;
              if (!v55)
              {
                v50 = v80;
                goto LABEL_65;
              }
            }

            v52 = v64;
            if (v63 < v78 || v64 >= v78)
            {
              a2 = v86;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              a2 = v86;
              if (v63 != v78)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v50 = v80;
            v53 = v85;
            v10 = v87;
            a1 = v74;
            v51 = v73;
          }

          while (v85 > v81);
        }

LABEL_65:
        v87 = v10;
        v90 = a2;
LABEL_66:
        v88 = v50;
LABEL_67:
        v72(&v90, &v89, &v88);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v28 = v85;
    goto LABEL_42;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_22720C6D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v34 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v3, 0);
    v5 = v34;
    v6 = -1 << *(v2 + 32);
    v33 = v2 + 64;
    result = sub_22766CC90();
    v7 = result;
    v8 = 0;
    v29 = v2 + 72;
    v30 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v33 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = *(v2 + 36);
      v11 = (*(v2 + 56) + 16 * v7);
      v12 = v2;
      v13 = *v11;
      v14 = v11[1];

      v15 = a2(v13, v14);
      v17 = v16;

      v18 = v5;
      v35 = v5;
      v19 = *(v5 + 16);
      v20 = *(v18 + 24);
      if (v19 >= v20 >> 1)
      {
        result = sub_226F1EFF0((v20 > 1), v19 + 1, 1);
        v18 = v35;
      }

      *(v18 + 16) = v19 + 1;
      v21 = v18 + 16 * v19;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      v9 = 1 << *(v12 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v22 = *(v33 + 8 * v10);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v12;
      v5 = v18;
      if (v32 != *(v12 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v7, v32, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v7, v32, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v30)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22720C954()
{
  v0 = sub_2276639D0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_22766BFD0();
  v6 = [v4 stringForKey_];

  if (v6)
  {
    v7 = sub_22766C000();
    v9 = v8;
  }

  else
  {
    v9 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  sub_2276639C0();
  v13[1] = v3[4];
  v14 = sub_22766D140();
  v15 = v10;
  MEMORY[0x22AA98450](46, 0xE100000000000000);
  MEMORY[0x22AA98450](v3[5], v3[6]);
  MEMORY[0x22AA98450](24415, 0xE200000000000000);
  MEMORY[0x22AA98450](v7, v9);

  v11 = v14;
  sub_22720DA88(v3, MEMORY[0x277D501E8]);
  return v11;
}

uint64_t sub_22720CC10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22720CD3C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_22720CD74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226F87F74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_22720CDF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v6 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v8 = &v48 - v7;
  v9 = sub_227665F20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v17 = &v48 - v14;
  v18 = 0;
  v58 = a3;
  v19 = *(a3 + 64);
  v51 = a3 + 64;
  v52 = 0;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v61 = a4 + 56;
  v55 = &v48 - v14;
  v56 = v15;
  v63 = (v15 + 8);
  v64 = v15 + 16;
  v65 = v8;
  v54 = v23;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v60 = (v22 - 1) & v22;
LABEL_14:
    v27 = v24 | (v18 << 6);
    v28 = v58;
    v29 = v58[6];
    v62 = *(v56 + 72);
    v30 = *(v56 + 16);
    v30(v17, v29 + v62 * v27, v9, v16);
    v31 = v28[7];
    v53 = v27;
    v32 = (v31 + 16 * v27);
    v33 = v17;
    v35 = *v32;
    v34 = v32[1];
    v36 = v65;
    (v30)(v65, v33, v9);
    v37 = (v36 + *(v57 + 48));
    *v37 = v35;
    v37[1] = v34;
    v38 = *(a4 + 16);
    v59 = v34;
    if (!v38)
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    v39 = *(a4 + 40);
    sub_226EAC024(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
    swift_bridgeObjectRetain_n();
    v40 = sub_22766BF50();
    v41 = -1 << *(a4 + 32);
    v42 = v40 & ~v41;
    if ((*(v61 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v43 = ~v41;
      while (1)
      {
        v44 = a4;
        (v30)(v12, *(a4 + 48) + v42 * v62, v9);
        sub_226EAC024(&qword_27D7B8700, MEMORY[0x277D51FE0]);
        v45 = sub_22766BFB0();
        v46 = *v63;
        (*v63)(v12, v9);
        if (v45)
        {
          break;
        }

        v42 = (v42 + 1) & v43;
        a4 = v44;
        if (((*(v61 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_226E97D1C(v65, &qword_27D7BC168, &qword_22767CCF8);

      v17 = v55;
      v46(v55, v9);
      *(v50 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v47 = __OFADD__(v52++, 1);
      a4 = v44;
      v23 = v54;
      v22 = v60;
      if (v47)
      {
        __break(1u);
LABEL_23:
        sub_227329A6C(v50, v49, v52, v58);
        return;
      }
    }

    else
    {
LABEL_6:
      sub_226E97D1C(v65, &qword_27D7BC168, &qword_22767CCF8);

      v17 = v55;
      (*v63)(v55, v9);
      v23 = v54;
      v22 = v60;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_23;
    }

    v26 = *(v51 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v60 = (v26 - 1) & v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_22720D2A0(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_22720A52C(v14, v7, a1, a2);
      MEMORY[0x22AA9A450](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_22720CDF8((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_22720D50C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_227668E60() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_2271F8D84(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

char *sub_22720D5D8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = *(sub_2276627D0() - 8);
  result = sub_227281E38(v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_22720D658@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_227281800(*(v2 + 24), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22720D6CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227281C1C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_22720D744@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_226E9B790(*(v2 + 24), *(v2 + 32), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22720D958(uint64_t a1)
{
  v4 = *(sub_227667100() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226E92F34;

  return sub_2272D0838(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_22720DA88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22720DAE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663090() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2271F1784(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_133Tm()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665CA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22720DCEC(void *a1)
{
  v3 = *(sub_2276638D0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227665CA0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_2271F2960(a1, v1 + v4, v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_22720DDF8()
{
  result = qword_27D7BC210;
  if (!qword_27D7BC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC210);
  }

  return result;
}

unint64_t sub_22720DE4C()
{
  result = qword_27D7BC218;
  if (!qword_27D7BC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC218);
  }

  return result;
}

uint64_t sub_22720DF00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = *a1;
  v7[2] = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v4;
  result = sub_2275F28B8(sub_22720DF64, v7, v5);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_87Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t static WorkoutPlanItemReference.representativeSamples()()
{
  result = sub_22766C090();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 40);
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABC8, &qword_2276795C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = v6;
      *(inited + 40) = v7;
      v9 = *(v5 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v10 = *(v5 + 24) >> 1, v10 <= v9))
      {
        result = sub_2273A57A4(result, v9 + 1, 1, v5);
        v5 = result;
        v10 = *(result + 24) >> 1;
      }

      if (v10 <= *(v5 + 16))
      {
        goto LABEL_13;
      }

      ++v3;
      swift_arrayInitWithCopy();

      ++*(v5 + 16);
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_11:

    return v5;
  }

  return result;
}

void sub_22720E31C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 workout];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22766C000();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    v9 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
  }
}

void sub_22720E3FC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_22766BFD0();
  [a1 setWorkout_];
}

unint64_t sub_22720E454(uint64_t a1)
{
  result = sub_22720E47C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22720E47C()
{
  result = qword_27D7BC238;
  if (!qword_27D7BC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC238);
  }

  return result;
}

uint64_t sub_22720E4D0(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = sub_22766B390();
  v2[50] = v3;
  v4 = *(v3 - 8);
  v2[51] = v4;
  v5 = *(v4 + 64) + 15;
  v2[52] = swift_task_alloc();
  v6 = sub_227662940();
  v2[53] = v6;
  v7 = *(v6 - 8);
  v2[54] = v7;
  v8 = *(v7 + 64) + 15;
  v2[55] = swift_task_alloc();
  v9 = sub_227662750();
  v2[56] = v9;
  v10 = *(v9 - 8);
  v2[57] = v10;
  v11 = *(v10 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v12 = sub_2276624A0();
  v2[60] = v12;
  v13 = *(v12 - 8);
  v2[61] = v13;
  v14 = *(v13 + 64) + 15;
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22720E6B0, 0, 0);
}

uint64_t sub_22720E6B0()
{
  v1 = v0[49];
  __swift_project_boxed_opaque_existential_0(v1 + 16, v1[19]);
  v2 = sub_22766A990();
  v4 = v3;
  v0[46] = sub_227662570();
  v0[47] = v5;
  v0[63] = v5;
  sub_226EDC420(v2, v4);
  v6 = v1[14];
  v0[64] = v6;
  v7 = v1[15];
  v0[65] = v7;
  v0[66] = v1[2];
  sub_226F5E0B4(v6, v7);

  v8 = swift_task_alloc();
  v0[67] = v8;
  *v8 = v0;
  v8[1] = sub_22720E7D4;
  v9 = v0[62];

  return sub_2273CD428(v9, 0xD00000000000002FLL, 0x800000022769B8C0);
}

uint64_t sub_22720E7D4()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = v2[63];

    v5 = sub_22720F690;
  }

  else
  {
    v2[69] = v2[46];
    v5 = sub_22720E8F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22720E8F8()
{
  v1 = v0[69];
  v2 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v9 = v0[53];
  sub_227662720();
  sub_227662920();
  sub_2276625F0();
  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  sub_2276626F0();
  v12 = v11;
  v10(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D839F8];
  *(v13 + 16) = xmmword_227670CD0;
  v15 = MEMORY[0x277D83A80];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = v12;
  v16 = sub_22766C030();
  v18 = v17;
  v0[70] = v16;
  v0[71] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  strcpy((inited + 32), "blindedElement");
  v20 = MEMORY[0x277D837D0];
  *(inited + 47) = -18;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = v20;
  *(inited + 80) = 0x692D63696C627570;
  *(inited + 120) = v20;
  *(inited + 88) = 0xEB000000006F666ELL;
  *(inited + 96) = v16;
  *(inited + 104) = v18;

  v21 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  v0[30] = v21;
  v22 = swift_task_alloc();
  v0[72] = v22;
  *v22 = v0;
  v22[1] = sub_22720EB84;
  v23 = v0[66];

  return sub_2273CFC4C(0);
}

uint64_t sub_22720EB84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 576);
  v5 = *v2;
  *(*v2 + 584) = a1;

  if (v1)
  {
    v6 = *(v3 + 568);

    *(v3 + 648) = v1;
    v7 = sub_22720F214;
  }

  else
  {
    v7 = sub_22720ECB0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22720ECB0()
{
  v1 = *(v0 + 496);
  v2 = sub_2276623E0();
  sub_226E93170(v0 + 240, v0 + 272, &unk_27D7BC990, &qword_227670A30);
  v3 = *(v0 + 296);
  if (v3)
  {
    v4 = __swift_project_boxed_opaque_existential_0((v0 + 272), *(v0 + 296));
    v5 = *(v3 - 8);
    v6 = *(v5 + 64) + 15;
    v7 = swift_task_alloc();
    (*(v5 + 16))(v7, v4, v3);
    v8 = sub_22766D170();
    (*(v5 + 8))(v7, v3);

    __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(v0 + 584) requestWithMethod:4 URL:v2 parameters:v8];
  *(v0 + 592) = v9;
  swift_unknownObjectRelease();

  v10 = swift_task_alloc();
  *(v0 + 600) = v10;
  *v10 = v0;
  v10[1] = sub_22720EE9C;

  return sub_2273D1154(v9, 0, 1, 0, 0);
}

uint64_t sub_22720EE9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 600);
  v8 = *v2;
  v3[76] = a1;
  v3[77] = v1;

  if (v1)
  {
    v5 = v3[71];

    v6 = sub_22720F19C;
  }

  else
  {
    v6 = sub_22720EFBC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22720EFBC()
{
  v1 = *(v0 + 584);

  sub_226E97D1C(v0 + 240, &unk_27D7BC990, &qword_227670A30);
  v2 = swift_task_alloc();
  *(v0 + 624) = v2;
  *v2 = v0;
  v2[1] = sub_22720F07C;
  v3 = *(v0 + 608);
  v4 = *(v0 + 528);

  return sub_2273CDC0C(v3);
}

uint64_t sub_22720F07C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 624);
  v8 = *v2;
  v3[79] = a1;
  v3[80] = v1;

  if (v1)
  {
    v5 = v3[71];

    v6 = sub_22720F748;
  }

  else
  {
    v6 = sub_22720F304;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22720F19C()
{
  v1 = *(v0 + 584);

  *(v0 + 648) = *(v0 + 616);

  return MEMORY[0x2822009F8](sub_22720F214, 0, 0);
}

uint64_t sub_22720F214()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[60];

  sub_226EDC420(v3, v1);
  (*(v5 + 8))(v4, v6);
  sub_226E97D1C((v0 + 30), &unk_27D7BC990, &qword_227670A30);
  v7 = v0[81];
  v8 = v0[62];
  v10 = v0[58];
  v9 = v0[59];
  v11 = v0[55];
  v12 = v0[52];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22720F304()
{
  if (![*(v0 + 632) object])
  {
    v16 = *(v0 + 568);
    v17 = *(v0 + 416);

    sub_22766A690();
    v18 = sub_22766B380();
    v19 = sub_22766C890();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226E8E000, v18, v19, "Evaluated element could not be parsed as JSON", v20, 2u);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    v21 = *(v0 + 632);
    v22 = *(v0 + 608);
    v24 = *(v0 + 504);
    v23 = *(v0 + 512);
    v25 = *(v0 + 488);
    v48 = *(v0 + 496);
    v44 = *(v0 + 520);
    v46 = *(v0 + 480);
    v27 = *(v0 + 408);
    v26 = *(v0 + 416);
    v28 = *(v0 + 400);

    (*(v27 + 8))(v26, v28);
    v29 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51F48], v29);
    swift_willThrow();

    sub_226EDC420(v23, v44);
    (*(v25 + 8))(v48, v46);
    goto LABEL_7;
  }

  v1 = *(v0 + 640);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_22766CC20();
  swift_unknownObjectRelease();
  sub_226F04970((v0 + 336), (v0 + 304));
  sub_227215D20(v0 + 304, v5, v4, v3, v2, (v0 + 144));
  v6 = v1;
  v7 = *(v0 + 632);
  v8 = *(v0 + 608);
  v9 = *(v0 + 568);
  v10 = *(v0 + 520);
  v12 = *(v0 + 504);
  v11 = *(v0 + 512);
  v14 = *(v0 + 488);
  v13 = *(v0 + 496);
  v15 = *(v0 + 480);
  if (v6)
  {

    sub_226EDC420(v11, v10);

    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v14 + 8))(v13, v15);
LABEL_7:
    v31 = *(v0 + 496);
    v33 = *(v0 + 464);
    v32 = *(v0 + 472);
    v34 = *(v0 + 440);
    v35 = *(v0 + 416);

    v36 = *(v0 + 8);
    goto LABEL_9;
  }

  v43 = *(v0 + 472);
  v45 = *(v0 + 464);
  v47 = *(v0 + 440);
  v49 = *(v0 + 416);
  v37 = *(v0 + 384);

  sub_226EDC420(v11, v10);

  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  (*(v14 + 8))(v13, v15);
  v38 = *(v0 + 160);
  *v37 = *(v0 + 144);
  v37[1] = v38;
  v39 = *(v0 + 176);
  v40 = *(v0 + 192);
  v41 = *(v0 + 224);
  v37[4] = *(v0 + 208);
  v37[5] = v41;
  v37[2] = v39;
  v37[3] = v40;

  v36 = *(v0 + 8);
LABEL_9:

  return v36();
}

uint64_t sub_22720F690()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];

  sub_226EDC420(v3, v1);
  v4 = v0[68];
  v5 = v0[62];
  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[55];
  v9 = v0[52];

  v10 = v0[1];

  return v10();
}

uint64_t sub_22720F748()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 480);

  sub_226EDC420(v2, v1);
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 640);
  v8 = *(v0 + 496);
  v10 = *(v0 + 464);
  v9 = *(v0 + 472);
  v11 = *(v0 + 440);
  v12 = *(v0 + 416);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22720F82C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_22766C050();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[19] = v6;
  *v6 = v2;
  v6[1] = sub_22720F928;

  return sub_22720E4D0((v2 + 2));
}

uint64_t sub_22720F928()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v5 = *(v2 + 144);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22720FA78, 0, 0);
  }
}

uint64_t sub_22720FA78()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[13];
  sub_22766C040();
  v6 = sub_22766C010();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15 || (sub_227662570(), sub_226FB1424(v6, v8), v9 = sub_227662510(), v11 = v10, , v11 >> 60 == 15))
  {
    v12 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51F30], v12);
    swift_willThrow();
LABEL_16:
    sub_227215CCC((v0 + 2));
    v33 = v0[18];

    v34 = v0[1];
    goto LABEL_17;
  }

  v14 = v0[8];
  v15 = v0[9];
  v16 = sub_227662510();
  if (v17 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v42 = v16;
  v43 = v17;
  v18 = sub_227662560();
  v19 = SecCertificateCreateWithData(0, v18);

  if (!v19)
  {
LABEL_13:
    sub_226FB1424(v42, v43);
LABEL_14:
    v31 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51F58], v31);
    swift_willThrow();
    goto LABEL_15;
  }

  v20 = SecCertificateCopyKey(v19);
  if (!v20)
  {
    v21 = v19;
LABEL_12:

    goto LABEL_13;
  }

  v21 = v20;
  v22 = SecKeyCopyExternalRepresentation(v20, 0);
  if (!v22)
  {

    goto LABEL_12;
  }

  v39 = v0[20];
  v23 = v0[15];
  v24 = v22;
  v41 = sub_227662590();
  v26 = v25;

  __swift_project_boxed_opaque_existential_0((v23 + 128), *(v23 + 152));
  v27 = v0[2];
  v28 = v0[3];
  v29 = v0[4];
  v30 = v0[5];
  sub_22766A9A0();
  if (v39)
  {
    sub_226EDC420(v41, v26);

    sub_226FB1424(v42, v43);
LABEL_15:
    sub_226FB1424(v9, v11);
    goto LABEL_16;
  }

  v37 = v0[14];
  v36 = v0[11];
  v38 = v0[10];
  v40 = v0[18];
  sub_226F5E0B4(v0[6], v0[7]);

  sub_2276648E0();
  sub_226EDC420(v41, v26);

  sub_226FB1424(v42, v43);
  sub_226FB1424(v9, v11);
  sub_227215CCC((v0 + 2));

  v34 = v0[1];
LABEL_17:

  return v34();
}

uint64_t sub_22720FE14(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22766B390();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22720FF28, 0, 0);
}

uint64_t sub_22720FF28()
{
  v1 = v0[7];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 3, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_22721008C;
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[7];

  return (v11)(v7, sub_227215A64, v9, v8, v2, v3);
}

uint64_t sub_22721008C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_2272105E8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2272101A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272101A8()
{
  v45 = v0;
  v1 = v0[13];
  sub_226E93170(v0[14], v1, &unk_27D7B96D0, &qword_227674908);
  v2 = sub_227664900();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[11];
    sub_226E97D1C(v0[13], &unk_27D7B96D0, &qword_227674908);
    sub_22766A690();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "No saved token", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[9];

    (*(v11 + 8))(v9, v10);
    v12 = sub_227665E90();
    sub_227215894();
    v13 = swift_allocError();
    v43 = *MEMORY[0x277D51F60];
    v42 = *(*(v12 - 8) + 104);
    v42(v14);
    swift_willThrow();
    sub_226E97D1C(v8, &unk_27D7B96D0, &qword_227674908);
    v15 = v0[10];
    sub_22766A690();
    v16 = v13;
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();

    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];
    if (v19)
    {
      v41 = v0[8];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v40 = v20;
      v25 = v0[2];
      v26 = MEMORY[0x22AA995D0](v0[3], v0[4]);
      v28 = sub_226E97AE8(v26, v27, &v44);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_226E8E000, v17, v18, "Error querying token from the database: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);

      (*(v21 + 8))(v40, v41);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v35 = v0[13];
    v34 = v0[14];
    v37 = v0[10];
    v36 = v0[11];
    swift_allocError();
    (v42)(v38, v43, v12);
    swift_willThrow();

    v33 = v0[1];
  }

  else
  {
    v29 = v0[13];
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[6];
    sub_226E97D1C(v0[14], &unk_27D7B96D0, &qword_227674908);
    (*(v3 + 32))(v32, v29, v2);

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_2272105E8()
{
  v28 = v0;
  v1 = v0[7];

  v2 = v0[16];
  v3 = v0[10];
  sub_22766A690();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v26 = v0[10];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v12 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v14 = sub_226E97AE8(v12, v13, &v27);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Error querying token from the database: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v26, v8);
  }

  else
  {
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];

    (*(v16 + 8))(v15, v17);
  }

  v19 = v0[13];
  v18 = v0[14];
  v21 = v0[10];
  v20 = v0[11];
  v22 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51F60], v22);
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_22721084C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_227662750();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_227664900();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_22766B390();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272109C8, 0, 0);
}

uint64_t sub_2272109C8()
{
  v1 = *(v0[5] + 16);
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_227210A68;
  v3 = v0[4];

  return sub_22736D530(v1);
}

uint64_t sub_227210A68(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v6 = *v3;
  v4[17] = a1;
  v4[18] = a2;

  if (v2)
  {
    v7 = v4[14];
    v8 = v4[11];
    v9 = v4[8];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v4[19] = v12;
    *v12 = v6;
    v12[1] = sub_227210C14;
    v13 = v4[15];

    return sub_2273CE6CC(0xD00000000000001FLL, 0x800000022769B8A0);
  }
}

uint64_t sub_227210C14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v8 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[18];

    v6 = sub_227211160;
  }

  else
  {
    v6 = sub_227210D3C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227210D3C()
{
  v67 = v0;
  v1 = *(v0 + 21);
  v2 = *(v0 + 3);
  v3 = sub_2276648B0();
  v0[2] = 0.0;
  v5 = sub_2272158EC(v3, v4);

  if (!v5)
  {
    v27 = *(v0 + 18);

    v28 = MEMORY[0x277D51F28];
LABEL_12:
    v50 = sub_227665E90();
    sub_227215894();
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *v28, v50);
    swift_willThrow();
    v52 = *(v0 + 14);
    v53 = *(v0 + 11);
    v54 = *(v0 + 8);

    v55 = *(v0 + 1);
    goto LABEL_13;
  }

  v6 = *(v0 + 18);
  v7 = *(v0 + 14);
  v9 = *(v0 + 10);
  v8 = *(v0 + 11);
  v10 = *(v0 + 9);
  v11 = *(v0 + 3);
  v12 = v0[2];
  v13 = *(v0 + 20);
  sub_22766C510();
  v15 = v12 + v14 * v13;
  sub_22766A690();
  (*(v9 + 16))(v8, v11, v10);

  v16 = sub_22766B380();
  v17 = sub_22766C8B0();

  if (os_log_type_enabled(v16, v17))
  {
    v61 = *(v0 + 18);
    v62 = *(v0 + 20);
    v60 = *(v0 + 17);
    v63 = *(v0 + 13);
    v18 = *(v0 + 11);
    v64 = *(v0 + 12);
    v65 = *(v0 + 14);
    v19 = *(v0 + 9);
    v20 = *(v0 + 10);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v66[0] = v22;
    *v21 = 136315906;
    v23 = sub_2276648F0();
    v25 = v24;
    (*(v20 + 8))(v18, v19);
    v26 = sub_226E97AE8(v23, v25, v66);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_226E97AE8(v60, v61, v66);
    *(v21 + 22) = 2048;
    *(v21 + 24) = v62;
    *(v21 + 32) = 2048;
    *(v21 + 34) = v15;
    _os_log_impl(&dword_226E8E000, v16, v17, "Checking for a valid token with publicKeyVersion %s, currentKeyVersion %s, bag token TTL %ld and tokenExpiration %f", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v22, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);

    (*(v63 + 8))(v65, v64);
  }

  else
  {
    v30 = *(v0 + 13);
    v29 = *(v0 + 14);
    v32 = *(v0 + 11);
    v31 = *(v0 + 12);
    v33 = *(v0 + 9);
    v34 = *(v0 + 10);

    (*(v34 + 8))(v32, v33);
    (*(v30 + 8))(v29, v31);
  }

  v36 = *(v0 + 17);
  v35 = *(v0 + 18);
  v37 = *(v0 + 3);
  v38 = sub_2276648F0();
  v40 = *(v0 + 18);
  if (v38 == v36 && v39 == v35)
  {
    v41 = *(v0 + 18);
  }

  else
  {
    v42 = *(v0 + 17);
    v43 = *(v0 + 18);
    v44 = sub_22766D190();

    if (v44)
    {
LABEL_11:
      v28 = MEMORY[0x277D51EF0];
      goto LABEL_12;
    }
  }

  v46 = *(v0 + 7);
  v45 = *(v0 + 8);
  v47 = *(v0 + 6);
  sub_227662720();
  sub_2276626F0();
  v49 = v48;
  (*(v46 + 8))(v45, v47);
  if (v15 < v49)
  {
    goto LABEL_11;
  }

  v57 = *(v0 + 14);
  v58 = *(v0 + 11);
  v59 = *(v0 + 8);

  v55 = *(v0 + 1);
LABEL_13:

  return v55();
}

uint64_t sub_227211160()
{
  v1 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51ED8], v1);
  swift_willThrow();
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227211250()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22721131C, 0, 0);
}

uint64_t sub_22721131C()
{
  v1 = *(*(v0 + 48) + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2272113C8;

  return sub_2273CE6CC(0xD000000000000025, 0x800000022769B930);
}

uint64_t sub_2272113C8(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v4 = sub_227211634;
  }

  else
  {
    v4 = sub_2272114E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272114E4()
{
  v1 = v0[12];
  v2 = sub_226E97A5C(0x64uLL);
  if (v1 < v2)
  {
    v3 = v0[9];
    sub_22766A690();
    v4 = sub_22766B380();
    v5 = sub_22766C8B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[12];
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = v2;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v6;
      _os_log_impl(&dword_226E8E000, v4, v5, "Randomly generated value %ld was not less than the token threshold %ld. Fetching denied.", v7, 0x16u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];

    (*(v9 + 8))(v8, v10);
  }

  v11 = v1 >= v2;
  v13 = v0[9];
  v12 = v0[10];

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_227211634()
{
  v25 = v0;
  v1 = v0[10];
  v2 = sub_227665E90();
  sub_227215894();
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D51EF8], v2);
  swift_willThrow();
  sub_22766A690();
  v5 = v3;
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = v0[10];
    v9 = v0[7];
    v8 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v13 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v15 = sub_226E97AE8(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v6, v7, "Failed to fetch token threshold with error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[8];

    (*(v18 + 8))(v16, v17);
  }

  v20 = v0[9];
  v19 = v0[10];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_22721187C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_227664900();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v2;
  v6[1] = sub_22721198C;

  return sub_22720F82C(a1);
}

uint64_t sub_22721198C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227211AD8, 0, 0);
  }
}

uint64_t sub_227211AD8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v6[7];
  __swift_project_boxed_opaque_existential_0(v6 + 3, v6[6]);
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = *(v7 + 24);

  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_227211CBC;

  return v14();
}

uint64_t sub_227211CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_227211DD8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2271D1AC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227211DD8()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  (*(v3 + 8))(v4, v2);
  v5 = v0[11];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_227211E6C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  sub_226EDC420(*(v0 + 112), *(v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_227211EE8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_227665E90();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_227664900();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = sub_2276666C0();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v15 = sub_22766A8A0();
  v2[23] = v15;
  v16 = *(v15 - 8);
  v2[24] = v16;
  v17 = *(v16 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227212160, 0, 0);
}

uint64_t sub_227212160()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(*(v0 + 32) + 104);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F8F8], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = *(v0 + 176);
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    *(v0 + 336) = *MEMORY[0x277D524E8];
    v10 = *(v9 + 104);
    *(v0 + 208) = v10;
    *(v0 + 216) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v7);
    v11 = swift_task_alloc();
    *(v0 + 224) = v11;
    *v11 = v0;
    v11[1] = sub_227212460;
    v12 = *(v0 + 136);
    v13 = *(v0 + 32);

    return sub_22720FE14(v12);
  }

  else
  {
    v15 = *(v0 + 88);
    sub_22766A690();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "Skipping playback voucher fetch with rand due to unsupported platform", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v21 = *(v0 + 88);
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);

    (*(v23 + 8))(v21, v22);
    sub_227215894();
    swift_allocError();
    (*(v20 + 104))(v24, *MEMORY[0x277D51EE0], v19);
    swift_willThrow();
    v25 = *(v0 + 200);
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v28 = *(v0 + 160);
    v29 = *(v0 + 136);
    v30 = *(v0 + 112);
    v32 = *(v0 + 80);
    v31 = *(v0 + 88);
    v33 = *(v0 + 64);
    v34 = *(v0 + 72);
    v36 = *(v0 + 56);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_227212460()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272126EC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[30] = v4;
    *v4 = v3;
    v4[1] = sub_2272125D8;
    v5 = v3[22];
    v6 = v3[4];
    v7 = v3[17];

    return sub_22721084C(v7, v5);
  }
}

uint64_t sub_2272125D8()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_227212BE8;
  }

  else
  {
    v3 = sub_227212AB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272126EC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v4 + 8);
  *(v0 + 256) = v7;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  *(v0 + 16) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v9 = (*(*(v0 + 104) + 88))(*(v0 + 112), *(v0 + 96));
    if (v9 == *MEMORY[0x277D51F60])
    {
      v10 = *(v0 + 80);

      sub_22766A690();
      v11 = sub_22766B380();
      v12 = sub_22766C8B0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_226E8E000, v11, v12, "Existing token not found", v13, 2u);
        MEMORY[0x22AA9A450](v13, -1, -1);
      }

      v14 = *(v0 + 80);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);

      v17 = *(v16 + 8);
      *(v0 + 272) = v17;
      v17(v14, v15);
      v18 = swift_task_alloc();
      *(v0 + 280) = v18;
      *v18 = v0;
      v19 = sub_227212FC8;
LABEL_10:
      v18[1] = v19;
      v28 = *(v0 + 32);

      return sub_227211250();
    }

    if (v9 == *MEMORY[0x277D51EF0])
    {
      v20 = *(v0 + 64);

      sub_22766A690();
      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_226E8E000, v21, v22, "Existing token expired", v23, 2u);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      v24 = *(v0 + 64);
      v25 = *(v0 + 40);
      v26 = *(v0 + 48);

      v27 = *(v26 + 8);
      *(v0 + 304) = v27;
      v27(v24, v25);
      v18 = swift_task_alloc();
      *(v0 + 312) = v18;
      *v18 = v0;
      v19 = sub_2272134BC;
      goto LABEL_10;
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v30 = *(v0 + 200);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v33 = *(v0 + 160);
  v34 = *(v0 + 136);
  v35 = *(v0 + 112);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v38 = *(v0 + 72);
  v40 = *(v0 + 64);
  v41 = *(v0 + 56);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_227212AB4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  (*(v0[19] + 8))(v0[22], v0[18]);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v17 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_227212BE8()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v4 + 8);
  *(v0 + 256) = v7;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  *(v0 + 16) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v9 = (*(*(v0 + 104) + 88))(*(v0 + 112), *(v0 + 96));
    if (v9 == *MEMORY[0x277D51F60])
    {
      v10 = *(v0 + 80);

      sub_22766A690();
      v11 = sub_22766B380();
      v12 = sub_22766C8B0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_226E8E000, v11, v12, "Existing token not found", v13, 2u);
        MEMORY[0x22AA9A450](v13, -1, -1);
      }

      v14 = *(v0 + 80);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);

      v17 = *(v16 + 8);
      *(v0 + 272) = v17;
      v17(v14, v15);
      v18 = swift_task_alloc();
      *(v0 + 280) = v18;
      *v18 = v0;
      v19 = sub_227212FC8;
LABEL_10:
      v18[1] = v19;
      v28 = *(v0 + 32);

      return sub_227211250();
    }

    if (v9 == *MEMORY[0x277D51EF0])
    {
      v20 = *(v0 + 64);

      sub_22766A690();
      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_226E8E000, v21, v22, "Existing token expired", v23, 2u);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      v24 = *(v0 + 64);
      v25 = *(v0 + 40);
      v26 = *(v0 + 48);

      v27 = *(v26 + 8);
      *(v0 + 304) = v27;
      v27(v24, v25);
      v18 = swift_task_alloc();
      *(v0 + 312) = v18;
      *v18 = v0;
      v19 = sub_2272134BC;
      goto LABEL_10;
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v30 = *(v0 + 200);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v33 = *(v0 + 160);
  v34 = *(v0 + 136);
  v35 = *(v0 + 112);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v38 = *(v0 + 72);
  v40 = *(v0 + 64);
  v41 = *(v0 + 56);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_227212FC8(char a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 340) = a1;

  return MEMORY[0x2822009F8](sub_2272130C8, 0, 0);
}

uint64_t sub_2272130C8()
{
  if (*(v0 + 340) == 1)
  {
    v1 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 168), *(v0 + 336), *(v0 + 144));
    v2 = swift_task_alloc();
    *(v0 + 288) = v2;
    *v2 = v0;
    v2[1] = sub_22721334C;
    v3 = *(v0 + 168);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);

    return sub_22721187C(v4);
  }

  else
  {
    v7 = *(v0 + 72);
    sub_22766A690();
    v8 = sub_22766B380();
    v9 = sub_22766C8B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226E8E000, v8, v9, "Playback voucher fetch denied, returning nil", v10, 2u);
      MEMORY[0x22AA9A450](v10, -1, -1);
    }

    v11 = *(v0 + 272);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 72);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);

    v11(v14, v15);
    sub_227215894();
    swift_allocError();
    (*(v13 + 104))(v17, *MEMORY[0x277D51EE0], v12);
    swift_willThrow();

    v18 = *(v0 + 200);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    v22 = *(v0 + 136);
    v23 = *(v0 + 112);
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v26 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_22721334C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 264);
  (*(v2 + 256))(*(v2 + 168), *(v2 + 144));
  if (v0)
  {
    v6 = sub_227213AAC;
  }

  else
  {
    v6 = sub_227216954;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2272134BC(char a1)
{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 341) = a1;

  return MEMORY[0x2822009F8](sub_2272135BC, 0, 0);
}

uint64_t sub_2272135BC()
{
  if (*(v0 + 341) == 1)
  {
    v1 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 160), *(v0 + 336), *(v0 + 144));
    v2 = swift_task_alloc();
    *(v0 + 320) = v2;
    *v2 = v0;
    v2[1] = sub_227213840;
    v3 = *(v0 + 160);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);

    return sub_22721187C(v4);
  }

  else
  {
    v7 = *(v0 + 56);
    sub_22766A690();
    v8 = sub_22766B380();
    v9 = sub_22766C8B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226E8E000, v8, v9, "Token fetch denied", v10, 2u);
      MEMORY[0x22AA9A450](v10, -1, -1);
    }

    v11 = *(v0 + 304);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);

    v11(v14, v16);
    sub_227215894();
    swift_allocError();
    (*(v13 + 104))(v17, *MEMORY[0x277D51EE0], v12);
    swift_willThrow();

    v18 = *(v0 + 200);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    v22 = *(v0 + 136);
    v23 = *(v0 + 112);
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v26 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_227213840()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 264);
  (*(v2 + 256))(*(v2 + 160), *(v2 + 144));
  if (v0)
  {
    v6 = sub_227213BAC;
  }

  else
  {
    v6 = sub_2272139B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2272139B0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v13 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_227213AAC()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = *(v0 + 296);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_227213BAC()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = *(v0 + 328);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_227213CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = sub_227665E90();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_227664900();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v13 = sub_22766A8A0();
  v3[17] = v13;
  v14 = *(v13 - 8);
  v3[18] = v14;
  v15 = *(v14 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227213E9C, 0, 0);
}

uint64_t sub_227213E9C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = *(v0[4] + 104);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F8F8], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_227214120;
    v8 = v0[16];
    v9 = v0[4];

    return sub_22720FE14(v8);
  }

  else
  {
    v11 = v0[10];
    sub_22766A690();
    v12 = sub_22766B380();
    v13 = sub_22766C8B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v12, v13, "Skipping playback voucher fetch due to unsupported platform", v14, 2u);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    v15 = v0[11];
    v16 = v0[12];
    v17 = v0[10];
    v18 = v0[6];
    v19 = v0[7];

    (*(v19 + 8))(v17, v18);
    sub_227215894();
    swift_allocError();
    (*(v16 + 104))(v20, *MEMORY[0x277D51EE0], v15);
    swift_willThrow();
    v21 = v0[19];
    v22 = v0[16];
    v23 = v0[13];
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_227214120()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272143A8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[22] = v4;
    *v4 = v3;
    v4[1] = sub_227214294;
    v6 = v3[4];
    v5 = v3[5];
    v7 = v3[16];

    return sub_22721084C(v7, v5);
  }
}

uint64_t sub_227214294()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2272147C8;
  }

  else
  {
    v3 = sub_227214700;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272143A8()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88));
    if (v5 == *MEMORY[0x277D51F60])
    {
      v6 = *(v0 + 72);

      sub_22766A690();
      v7 = sub_22766B380();
      v8 = sub_22766C8B0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_226E8E000, v7, v8, "Existing token not found, fetching a new one", v9, 2u);
        MEMORY[0x22AA9A450](v9, -1, -1);
      }

      v10 = *(v0 + 72);
      v11 = *(v0 + 48);
      v12 = *(v0 + 56);

      (*(v12 + 8))(v10, v11);
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v14 = sub_227214B38;
LABEL_10:
      v13[1] = v14;
      v23 = *(v0 + 32);
      v22 = *(v0 + 40);
      v24 = *(v0 + 24);

      return sub_22721187C(v24);
    }

    if (v5 == *MEMORY[0x277D51EF0])
    {
      v15 = *(v0 + 64);

      sub_22766A690();
      v16 = sub_22766B380();
      v17 = sub_22766C8B0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_226E8E000, v16, v17, "Existing token expired, fetching a new one", v18, 2u);
        MEMORY[0x22AA9A450](v18, -1, -1);
      }

      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v21 = *(v0 + 48);

      (*(v20 + 8))(v19, v21);
      v13 = swift_task_alloc();
      *(v0 + 208) = v13;
      *v13 = v0;
      v14 = sub_227214D00;
      goto LABEL_10;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 64);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_227214700()
{
  (*(v0[15] + 32))(v0[3], v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2272147C8()
{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1 = *(v0 + 184);
  *(v0 + 16) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88));
    if (v5 == *MEMORY[0x277D51F60])
    {
      v6 = *(v0 + 72);

      sub_22766A690();
      v7 = sub_22766B380();
      v8 = sub_22766C8B0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_226E8E000, v7, v8, "Existing token not found, fetching a new one", v9, 2u);
        MEMORY[0x22AA9A450](v9, -1, -1);
      }

      v10 = *(v0 + 72);
      v11 = *(v0 + 48);
      v12 = *(v0 + 56);

      (*(v12 + 8))(v10, v11);
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v14 = sub_227214B38;
LABEL_10:
      v13[1] = v14;
      v23 = *(v0 + 32);
      v22 = *(v0 + 40);
      v24 = *(v0 + 24);

      return sub_22721187C(v24);
    }

    if (v5 == *MEMORY[0x277D51EF0])
    {
      v15 = *(v0 + 64);

      sub_22766A690();
      v16 = sub_22766B380();
      v17 = sub_22766C8B0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_226E8E000, v16, v17, "Existing token expired, fetching a new one", v18, 2u);
        MEMORY[0x22AA9A450](v18, -1, -1);
      }

      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v21 = *(v0 + 48);

      (*(v20 + 8))(v19, v21);
      v13 = swift_task_alloc();
      *(v0 + 208) = v13;
      *v13 = v0;
      v14 = sub_227214D00;
      goto LABEL_10;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 64);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_227214B38()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_227214E14;
  }

  else
  {
    v3 = sub_227214C4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227214C4C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_227214D00()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_227214EC8;
  }

  else
  {
    v3 = sub_227216958;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227214E14()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_227214EC8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_227214F7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2276666C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22721503C, 0, 0);
}

uint64_t sub_22721503C()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D524E8], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2272150F4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_22720FE14(v2);
}

uint64_t sub_2272150F4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22721537C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[9] = v4;
    *v4 = v3;
    v4[1] = sub_227215268;
    v5 = v3[6];
    v6 = v3[3];
    v7 = v3[2];

    return sub_22721084C(v7, v5);
  }
}

uint64_t sub_227215268()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22721547C;
  }

  else
  {
    v3 = sub_2272153FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22721537C()
{
  v1 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2272153FC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22721547C()
{
  v1 = v0[2];
  v2 = sub_227664900();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227215570(uint64_t a1)
{
  v3 = sub_2276666C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourServices/PlaybackVoucherProvider.swift";
  *(v9 + 24) = 45;
  *(v9 + 32) = 2;
  *(v9 + 40) = 294;
  *(v9 + 48) = &unk_22767D1A8;
  *(v9 + 56) = v8;
  sub_227664900();

  return sub_227669270();
}

uint64_t sub_22721574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourServices/PlaybackVoucherProvider.swift";
  *(v9 + 24) = 45;
  *(v9 + 32) = 2;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 56) = v8;
  sub_227664900();

  return sub_227669270();
}

uint64_t sub_2272157F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227214F7C(a1, v1);
}

unint64_t sub_227215894()
{
  result = qword_28139B6E8;
  if (!qword_28139B6E8)
  {
    sub_227665E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B6E8);
  }

  return result;
}

BOOL sub_2272158EC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_22766CE10();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_2272159E4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_227215AB0(uint64_t a1)
{
  v4 = *(sub_2276666C0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227213CAC(a1, v6, v1 + v5);
}

uint64_t objectdestroy_12Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227215D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v99 = a4;
  v100 = a5;
  v97 = a3;
  v96 = a2;
  v98 = a6;
  v7 = sub_227665E90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v94 - v13;
  v106 = sub_22766B390();
  v102 = *(v106 - 8);
  v15 = *(v102 + 8);
  v16 = MEMORY[0x28223BE20](v106);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v94 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v94 - v23;
  MEMORY[0x28223BE20](v22);
  v101 = &v94 - v25;
  sub_226E97CC0(a1, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  if (!swift_dynamicCast())
  {
    sub_227215894();
    swift_allocError();
    v43 = v42;
    v44 = MEMORY[0x277D51F50];
LABEL_17:
    (*(v8 + 104))(v43, *v44, v7);
    return swift_willThrow();
  }

  v94 = v8;
  v95 = v7;
  v26 = v103;
  if (!*(v103 + 2) || (v27 = sub_226E92000(0xD000000000000010, 0x800000022769B8F0), (v28 & 1) == 0) || (sub_226E97CC0(*(v26 + 7) + 32 * v27, v105), (swift_dynamicCast() & 1) == 0))
  {
    sub_22766A690();
    v45 = sub_22766B380();
    v46 = sub_22766C890();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_226E8E000, v45, v46, "Evaluated element malformed", v47, 2u);
      MEMORY[0x22AA9A450](v47, -1, -1);
    }

    (*(v102 + 1))(v18, v106);
    if (*(v26 + 2) && (v48 = sub_226E92000(0x737574617473, 0xE600000000000000), (v49 & 1) != 0))
    {
      sub_226E97CC0(*(v26 + 7) + 32 * v48, v105);

      if (swift_dynamicCast())
      {
        v101 = v103;
        v50 = *MEMORY[0x277D51EE8];
        v51 = v94;
        v100 = *(v94 + 104);
        v52 = v95;
        v100(v14, v50, v95);
        sub_227215894();
        v106 = sub_22766D280();
        v102 = v53;
        v54 = *(v51 + 8);
        v54(v14, v52);
        v100(v12, v50, v52);
        v55 = sub_22766D270();
        v54(v12, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_227670CD0;
        *(inited + 32) = 0xD000000000000019;
        v57 = inited + 32;
        *(inited + 72) = MEMORY[0x277D83B88];
        v58 = v101;
        *(inited + 40) = 0x800000022769B910;
        *(inited + 48) = v58;
        sub_227149264(inited);
        swift_setDeallocating();
        sub_226E97D1C(v57, &unk_27D7BE5C0, &qword_22767D1D0);
        v59 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v60 = sub_22766BFD0();

        v61 = sub_22766BE90();

        [v59 initWithDomain:v60 code:v55 userInfo:v61];

        return swift_willThrow();
      }
    }

    else
    {
    }

    v62 = v95;
    sub_227215894();
    swift_allocError();
    v64 = v63;
    v65 = MEMORY[0x277D51F38];
LABEL_26:
    (*(v94 + 104))(v64, *v65, v62);
    return swift_willThrow();
  }

  if (!*(v26 + 2) || (v29 = sub_226E92000(0x666F6F7270, 0xE500000000000000), (v30 & 1) == 0) || (sub_226E97CC0(*(v26 + 7) + 32 * v29, v105), (swift_dynamicCast() & 1) == 0))
  {

    sub_22766A690();
    v67 = sub_22766B380();
    v68 = sub_22766C890();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v95;
    v71 = v94;
    if (v69)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_226E8E000, v67, v68, "Proof malformed", v72, 2u);
      MEMORY[0x22AA9A450](v72, -1, -1);
    }

    (*(v102 + 1))(v21, v106);
    sub_227215894();
    swift_allocError();
    v74 = v73;
    v75 = MEMORY[0x277D51F08];
    goto LABEL_31;
  }

  if (!*(v26 + 2) || (v31 = sub_226E92000(0x697472654379656BLL, 0xEE00657461636966), (v32 & 1) == 0) || (sub_226E97CC0(*(v26 + 7) + 32 * v31, v105), (swift_dynamicCast() & 1) == 0))
  {

    sub_22766A690();
    v76 = sub_22766B380();
    v77 = sub_22766C890();
    v78 = os_log_type_enabled(v76, v77);
    v70 = v95;
    v71 = v94;
    if (v78)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_226E8E000, v76, v77, "Public key certificate malformed", v79, 2u);
      MEMORY[0x22AA9A450](v79, -1, -1);
    }

    (*(v102 + 1))(v24, v106);
    sub_227215894();
    swift_allocError();
    v74 = v80;
    v75 = MEMORY[0x277D51F18];
LABEL_31:
    (*(v71 + 104))(v74, *v75, v70);
    return swift_willThrow();
  }

  v33 = v104;
  if (!*(v26 + 2) || (v34 = v103, v35 = sub_226E92000(0x4B746E6572727563, 0xEC00000064497965), (v36 & 1) == 0))
  {

    goto LABEL_38;
  }

  sub_226E97CC0(*(v26 + 7) + 32 * v35, v105);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    v7 = v95;
    v81 = v101;
    sub_22766A690();
    v82 = sub_22766B380();
    v83 = sub_22766C890();
    v84 = os_log_type_enabled(v82, v83);
    v8 = v94;
    if (v84)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_226E8E000, v82, v83, "Server public key version malformed", v85, 2u);
      MEMORY[0x22AA9A450](v85, -1, -1);
    }

    (*(v102 + 1))(v81, v106);
    sub_227215894();
    swift_allocError();
    v43 = v86;
    v44 = MEMORY[0x277D51F40];
    goto LABEL_17;
  }

  v106 = v34;
  v38 = v103;
  v37 = v104;
  v39 = sub_227662510();
  v41 = v40;

  if (v41 >> 60 == 15)
  {

LABEL_43:
    v62 = v95;
    sub_227215894();
    swift_allocError();
    v64 = v89;
    v65 = MEMORY[0x277D51F10];
    goto LABEL_26;
  }

  v102 = v38;
  v101 = sub_227662510();
  v88 = v87;

  if (v88 >> 60 == 15)
  {

    sub_226FB1424(v39, v41);
    goto LABEL_43;
  }

  v90 = v100;

  v91 = v96;
  v92 = v97;
  result = sub_226F5E0B4(v96, v97);
  v93 = v98;
  *v98 = v39;
  v93[1] = v41;
  v93[2] = v101;
  v93[3] = v88;
  v93[4] = v91;
  v93[5] = v92;
  v93[6] = v106;
  v93[7] = v33;
  v93[8] = v102;
  v93[9] = v37;
  v93[10] = v99;
  v93[11] = v90;
  return result;
}