uint64_t sub_2274865E4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {

    v6 = sub_22748EA74;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];

    (*(v8 + 8))(v7, v9);
    v6 = sub_22748673C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22748673C()
{
  v5 = (v0[9] + *v0[9]);
  v1 = *(v0[9] + 4);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_227486834;
  v3 = v0[10];

  return v5(v0 + 6, v0 + 5);
}

uint64_t sub_227486834()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_22748EA78;
  }

  else
  {
    v3 = sub_22748EA80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227486948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 64) = a6;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF30, &qword_227687068) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v6 + 96) = v8;
  v9 = *(v8 - 8);
  *(v6 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227486A58, 0, 0);
}

uint64_t sub_227486A58()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v4 = v0[12];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[15] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 210;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_227486CA0;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v16 = (v0[9] + *v0[9]);
    v10 = *(v0[9] + 4);
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_227486F74;
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[6];

    return v16(v12, v14);
  }
}

uint64_t sub_227486CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[15];
  if (v0)
  {

    v6 = sub_227486EEC;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[12];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227486DF8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227486DF8()
{
  v7 = (v0[9] + *v0[9]);
  v1 = *(v0[9] + 4);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_227486F74;
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];

  return v7(v3, v5);
}

uint64_t sub_227486EEC()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227486F74()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_227487124;
  }

  else
  {
    v3 = sub_227487088;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227487088()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[7];
  sub_22748E50C(v0[11], v0[5]);
  sub_226EC70B4(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227487124()
{
  v1 = v0[8];
  sub_226EC70B4(v0[7]);
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2274871A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227487274, 0, 0);
}

uint64_t sub_227487274()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[11];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[14] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 210;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2274874C0;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D54, v6, v9);
  }

  else
  {
    v15 = (v0[9] + *v0[9]);
    v10 = *(v0[9] + 4);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_227487710;
    v12 = v0[10];
    v13 = v0[6];

    return v15(v0 + 5, v13);
  }
}

uint64_t sub_2274874C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {

    v6 = sub_22748EA74;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227487618;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227487618()
{
  v6 = (v0[9] + *v0[9]);
  v1 = *(v0[9] + 4);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_227487710;
  v3 = v0[10];
  v4 = v0[6];

  return v6(v0 + 5, v4);
}

uint64_t sub_227487710()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_22748EA78;
  }

  else
  {
    v3 = sub_22748EA7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227487824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274878F8, 0, 0);
}

uint64_t sub_2274878F8()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[11];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[14] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 210;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2274874C0;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v15 = (v0[9] + *v0[9]);
    v10 = *(v0[9] + 4);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_227487710;
    v12 = v0[10];
    v13 = v0[6];

    return v15(v0 + 5, v13);
  }
}

uint64_t sub_227487B44(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_2276870B0;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_2276870C0, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_2276870C8;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_2276870D0, v25);
}

uint64_t sub_227487E7C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_2276870E8;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_2276870F8, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227687100;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227687108, v25);
}

uint64_t sub_2274881B4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227687120;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227687130, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227687138;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227687140, v25);
}

uint64_t sub_2274884EC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227687078;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227687088, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227687090;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227687098, v25);
}

uint64_t sub_227488824(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227687040;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227687050, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227687058;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227687060, v25);
}

uint64_t sub_227488B5C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227686FB8;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227686FC8, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227686FD0;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227686FD8, v25);
}

uint64_t sub_227488E94(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227686FF8;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227687008, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227687010;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227687018, v25);
}

uint64_t sub_2274891CC()
{
  v1 = v0;
  v2 = sub_227669A70();
  v35 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v38 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v39 = v12;
  v13 = *MEMORY[0x277D4E698];
  v37 = v3[13];
  v32[6] = v3 + 13;
  v37(v6, v13, v2);
  swift_allocObject();
  v36 = v1;
  swift_weakInit();
  sub_227667500();
  swift_unknownObjectRetain_n();
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8B0, &unk_227676AC8);
  v32[3] = sub_22748B0E8();
  v32[4] = sub_22748B16C();
  sub_227669EC0();

  v14 = v3[1];
  v15 = v35;
  v14(v6, v35);
  v32[5] = v3 + 1;
  v33 = v14;
  swift_unknownObjectRelease();
  v39 = v12;
  v16 = v15;
  v17 = v37;
  v37(v6, *MEMORY[0x277D4E660], v16);
  swift_allocObject();
  swift_weakInit();
  v32[2] = sub_227664CA0();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v18 = v35;
  v14(v6, v35);
  swift_unknownObjectRelease();
  v39 = v12;
  v17(v6, *MEMORY[0x277D4E7C0], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v19 = v18;
  v33(v6, v18);
  swift_unknownObjectRelease();
  v39 = v12;
  v20 = v37;
  v37(v6, *MEMORY[0x277D4ED20], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v21 = v33;
  v33(v6, v19);
  swift_unknownObjectRelease();
  v39 = v12;
  v20(v6, *MEMORY[0x277D4E970], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227668970();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8C0, &qword_227676BC0);
  sub_22748B4AC();
  sub_22748B530();
  sub_227669EC0();

  v21(v6, v19);
  swift_unknownObjectRelease();
  v39 = v12;
  v22 = v37;
  v37(v6, *MEMORY[0x277D4E950], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227666BF0();
  sub_227669EE0();

  v23 = v35;
  v21(v6, v35);
  swift_unknownObjectRelease();
  v39 = v12;
  v22(v6, *MEMORY[0x277D4ED30], v23);
  swift_allocObject();
  v24 = v36;
  swift_weakInit();
  sub_227668E30();
  sub_227669EE0();

  v21(v6, v23);
  swift_unknownObjectRelease();
  v25 = __swift_project_boxed_opaque_existential_0((v24 + 40), *(v24 + 64));
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *v25;
  sub_227488E94(46, &unk_227686F90, v26);

  v28 = __swift_project_boxed_opaque_existential_0((v24 + 40), *(v24 + 64));
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *v28;
  sub_227488B5C(45, &unk_227686FA0, v29);
}

uint64_t sub_227489A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_227489A7C, 0, 0);
}

uint64_t sub_227489A7C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 88);

    return sub_22705B078(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_227489B98(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227489BB8, 0, 0);
}

uint64_t sub_227489BB8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *v3;
    v0[12] = *v3;

    return MEMORY[0x2822009F8](sub_227489C98, v4, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227489C98()
{
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC48, &qword_227687030);
  v2 = sub_227664CA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227670CD0;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = sub_226F50E70(v6);
  v0[13] = v7;
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_227489E34;
  v9 = v0[12];

  return sub_22705BA90(v7);
}

uint64_t sub_227489E34()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_227489F58;
  }

  else
  {
    v6 = *(v2 + 104);

    v5 = sub_226F62210;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227489F58()
{
  v1 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_226FAD634, 0, 0);
}

uint64_t sub_227489FC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_227489FE0, 0, 0);
}

uint64_t sub_227489FE0()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *v3;
    *(v0 + 104) = *v3;

    return MEMORY[0x2822009F8](sub_22748A0C8, v4, 0);
  }

  else
  {
    **(v0 + 88) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22748A0C8()
{
  v1 = *(v0 + 104);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8B0, &unk_227676AC8);
  *v6 = v0;
  v6[1] = sub_22748A230;

  return (v9)(v0 + 80, sub_227060F60, 0, v7, v2, v3);
}

uint64_t sub_22748A230()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_22748A3F0;
  }

  else
  {
    v6 = sub_22748A35C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22748A380()
{
  **(v0 + 88) = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22748A40C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_22748A434, 0, 0);
}

uint64_t sub_22748A434()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_22748A58C;
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];

    return sub_22706053C(v7, v5, v6);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_227664CA0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22748A58C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226FAA9B0;
  }

  else
  {
    v3 = sub_22748A6A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748A6A0()
{
  v1 = v0[10];
  v2 = sub_227664CA0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22748A748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22748A76C, 0, 0);
}

uint64_t sub_22748A76C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 88);

    return sub_22705531C(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22748A888(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22748A8A8, 0, 0);
}

uint64_t sub_22748A8A8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *v3;
    v0[12] = *v3;

    return MEMORY[0x2822009F8](sub_22748A988, v4, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22748A988()
{
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF40, &qword_2276799E8);
  v2 = sub_227666BF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227670CD0;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = sub_226F51190(v6);
  v0[13] = v7;
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_22748AB24;
  v9 = v0[12];

  return sub_227055C1C(v7);
}

uint64_t sub_22748AB24()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_227489F58;
  }

  else
  {
    v6 = *(v2 + 104);

    v5 = sub_226F69390;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22748AC48(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22748AC68, 0, 0);
}

uint64_t sub_22748AC68()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_22748AD7C;
    v5 = v0[10];

    return sub_227061A24(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22748AD7C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F618C8;
  }

  else
  {
    v3 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748AE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22748AEB4, 0, 0);
}

uint64_t sub_22748AEB4()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FAAB58;
    v5 = *(v0 + 88);

    return sub_22705B078(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22748AFD0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  return swift_deallocClassInstance();
}

uint64_t sub_22748B03C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227489A58(a1, a2, v2);
}

unint64_t sub_22748B0E8()
{
  result = qword_281398DE0;
  if (!qword_281398DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE8B0, &unk_227676AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DE0);
  }

  return result;
}

unint64_t sub_22748B16C()
{
  result = qword_281398DD8;
  if (!qword_281398DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE8B0, &unk_227676AC8);
    sub_22748E89C(&qword_28139B8F0, MEMORY[0x277D50E98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DD8);
  }

  return result;
}

uint64_t sub_22748B220(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227489B98(a1, v1);
}

uint64_t sub_22748B2B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227489FC0(a1, v1);
}

uint64_t sub_22748B354(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22748A40C(a1, a2, v2);
}

uint64_t sub_22748B400(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22748A748(a1, a2, v2);
}

unint64_t sub_22748B4AC()
{
  result = qword_281398CE8;
  if (!qword_281398CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE8C0, &qword_227676BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CE8);
  }

  return result;
}

unint64_t sub_22748B530()
{
  result = qword_281398CE0;
  if (!qword_281398CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE8C0, &qword_227676BC0);
    sub_22748E89C(&qword_28139B5B8, MEMORY[0x277D528B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CE0);
  }

  return result;
}

uint64_t sub_22748B5E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22748A888(a1, v1);
}

uint64_t sub_22748B67C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22748AC48(a1, v1);
}

uint64_t sub_22748B714(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22748AE90(a1, a2, v2);
}

uint64_t sub_22748B7C0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22748A748(a1, a2, v2);
}

uint64_t sub_22748B86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_22748B890, 0, 0);
}

uint64_t sub_22748B890()
{
  if (v0[5])
  {
    v1 = v0[4];
    sub_226F62704();

    v2 = sub_22766C5D0();
    v0[8] = v2;
    v3 = v0[6];
    v0[2] = v2;
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_22748BA44;
    v6 = v0[7];

    return (v10)(v0 + 3, v0 + 2);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22748BA44()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22748BCF4;
  }

  else
  {
    v3 = sub_22748BB58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748BB58()
{
  if (v0[3])
  {
    v1 = v0[10];
    sub_227664530();
    v2 = MEMORY[0x277D50978];
    sub_22748E89C(&qword_28139B980, MEMORY[0x277D50978]);
    sub_22748E89C(&qword_2813A57C0, v2);
    v3 = sub_22766C5C0();
    v5 = v4;
    v6 = v0[8];

    if (!v1)
    {
      v7 = v0[1];

      return v7(v3, v5);
    }
  }

  else
  {
    v9 = v0[8];
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_22748BCF4()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22748BD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_227666ED0();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22748BE1C, 0, 0);
}

uint64_t sub_22748BE1C()
{
  if (v0[4])
  {
    v1 = v0[9];
    v2 = v0[7];
    v3 = v0[3];
    v4 = v0[4];

    sub_227667720();
    v13 = (v0[5] + *v0[5]);
    v5 = *(v0[5] + 4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_22748BFDC;
    v7 = v0[9];
    v8 = v0[6];

    return v13(v0 + 2, v7);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_22748BFDC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22748C2EC;
  }

  else
  {
    v3 = sub_22748C0F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748C0F0()
{
  if (!v0[2])
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v1 = v0[11];
  sub_227664530();
  v2 = MEMORY[0x277D50978];
  sub_22748E89C(&qword_28139B980, MEMORY[0x277D50978]);
  sub_22748E89C(&qword_2813A57C0, v2);
  v4 = sub_22766C5C0();
  v5 = v0[8];
  v6 = v0[7];
  if (v1)
  {
    (*(v5 + 8))(v0[9], v0[7], v4);

LABEL_5:
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }

  v14 = v4;
  v15 = v0[9];
  v16 = v3;
  v17 = v0[7];
  (*(v5 + 8))();

  v18 = v0[1];

  return v18(v14, v16);
}

uint64_t sub_22748C2EC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22748C368()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22748C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_22748C408, 0, 0);
}

uint64_t sub_22748C408()
{
  if (v0[5])
  {
    v1 = v0[4];
    sub_226F62704();

    v2 = sub_22766C5D0();
    v0[8] = v2;
    v3 = v0[6];
    v0[2] = v2;
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_22748C5BC;
    v6 = v0[7];

    return (v10)(v0 + 3, v0 + 2);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22748C5BC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22748EA88;
  }

  else
  {
    v3 = sub_22748C6D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748C6D0()
{
  if (v0[3])
  {
    v1 = v0[10];
    sub_227669480();
    v2 = MEMORY[0x277D53C88];
    sub_22748E89C(&qword_28139B268, MEMORY[0x277D53C88]);
    sub_22748E89C(&unk_2813A54E0, v2);
    v3 = sub_22766C5C0();
    v5 = v4;
    v6 = v0[8];

    if (!v1)
    {
      v7 = v0[1];

      return v7(v3, v5);
    }
  }

  else
  {
    v9 = v0[8];
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_22748C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF30, &qword_227687068) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_2276657D0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_227663D60();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22748C9C4, 0, 0);
}

uint64_t sub_22748C9C4()
{
  if (v0[3])
  {
    v1 = v0[12];
    v2 = v0[10];
    v3 = v0[2];
    v4 = v0[3];

    sub_227667720();
    v16 = (v0[4] + *v0[4]);
    v5 = *(v0[4] + 4);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_22748CB98;
    v7 = v0[12];
    v9 = v0[5];
    v8 = v0[6];

    return v16(v8, v7);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[6];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22748CB98()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22748CEE0;
  }

  else
  {
    v3 = sub_22748CCAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748CCAC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    sub_22748E4A4(v3);
    sub_226F6649C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
LABEL_5:
    v18 = v0[12];
    v19 = v0[9];
    v20 = v0[6];

    v21 = v0[1];

    return v21();
  }

  v8 = v0[14];
  (*(v2 + 32))(v0[9], v3, v1);
  v9 = sub_227667710();
  v11 = v8;
  v13 = v0[11];
  v12 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[7];
  v17 = v0[8];
  if (v11)
  {
    (*(v17 + 8))(v0[9], v0[7]);
    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v23 = v0[6];
  v24 = v9;
  v25 = v10;
  (*(v17 + 8))(v0[9], v0[7]);
  (*(v13 + 8))(v12, v14);

  v26 = v0[1];

  return v26(v24, v25);
}

uint64_t sub_22748CEE0()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22748CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_227668970();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22748D040, 0, 0);
}

uint64_t sub_22748D040()
{
  if (v0[4])
  {
    v1 = v0[9];
    v2 = v0[7];
    v3 = v0[3];
    v4 = v0[4];

    sub_227667720();
    v13 = (v0[5] + *v0[5]);
    v5 = *(v0[5] + 4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_22748D200;
    v7 = v0[9];
    v8 = v0[6];

    return v13(v0 + 2, v7);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_22748D200()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22748EA84;
  }

  else
  {
    v3 = sub_22748D314;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748D314()
{
  if (!v0[2])
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v1 = v0[11];
  sub_227666BF0();
  v2 = MEMORY[0x277D528B8];
  sub_22748E89C(&qword_28139B5B8, MEMORY[0x277D528B8]);
  sub_22748E89C(&qword_2813A5660, v2);
  v4 = sub_22766C5C0();
  v5 = v0[8];
  v6 = v0[7];
  if (v1)
  {
    (*(v5 + 8))(v0[9], v0[7], v4);

LABEL_5:
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }

  v14 = v4;
  v15 = v0[9];
  v16 = v3;
  v17 = v0[7];
  (*(v5 + 8))();

  v18 = v0[1];

  return v18(v14, v16);
}

uint64_t sub_22748D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_227667500();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22748D5D4, 0, 0);
}

uint64_t sub_22748D5D4()
{
  if (v0[4])
  {
    v1 = v0[9];
    v2 = v0[7];
    v3 = v0[3];
    v4 = v0[4];

    sub_227667720();
    v13 = (v0[5] + *v0[5]);
    v5 = *(v0[5] + 4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_22748D794;
    v7 = v0[9];
    v8 = v0[6];

    return v13(v0 + 2, v7);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_22748D794()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22748EA84;
  }

  else
  {
    v3 = sub_22748D8A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748D8A8()
{
  if (!v0[2])
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v1 = v0[11];
  sub_227664CA0();
  v2 = MEMORY[0x277D50E98];
  sub_22748E89C(&qword_28139B8F0, MEMORY[0x277D50E98]);
  sub_22748E89C(&qword_2813A5770, v2);
  v4 = sub_22766C5C0();
  v5 = v0[8];
  v6 = v0[7];
  if (v1)
  {
    (*(v5 + 8))(v0[9], v0[7], v4);

LABEL_5:
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }

  v14 = v4;
  v15 = v0[9];
  v16 = v3;
  v17 = v0[7];
  (*(v5 + 8))();

  v18 = v0[1];

  return v18(v14, v16);
}

uint64_t sub_22748DAA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a1;
  v11 = *a2;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_227485250;

  return sub_2274852E0(v11, a3, a4, a5, a6);
}

uint64_t sub_22748DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_22748478C;

  return sub_227485AD0(a2, a3, a4, a5, a6);
}

uint64_t sub_22748DC34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a1;
  v11 = *a2;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_227485250;

  return sub_2274862BC(v11, a3, a4, a5, a6);
}

uint64_t sub_22748DCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_227485250;

  return sub_2274871A0(a2, a3, a4, a5, a6);
}

uint64_t sub_22748DDC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_22748DCFC(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_22748DEA4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_22748CF7C(a1, a2, v7, v6);
}

uint64_t sub_22748DF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_227485250;

  return sub_227487824(a2, a3, a4, a5, a6);
}

uint64_t sub_22748E01C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_22748DF54(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_22748E0FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_22748D510(a1, a2, v7, v6);
}

uint64_t sub_22748E1AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_227486948(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_22748E278(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_22748C86C(a1, a2, v7, v6);
}

uint64_t sub_22748E328(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E92F34;

  return sub_227486948(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_22748E3F4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227484B84;

  return sub_22748C86C(a1, a2, v7, v6);
}

uint64_t sub_22748E4A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF30, &qword_227687068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22748E50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF30, &qword_227687068);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22748E57C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_22748DC34(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_22748E65C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_22748C3E4(a1, a2, v7, v6);
}

uint64_t sub_22748E70C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_22748DAA4(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_22748E7EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_22748B86C(a1, a2, v7, v6);
}

uint64_t sub_22748E89C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22748E8E4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_22748DB6C(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_22748E9C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_22748BD58(a1, a2, v7, v6);
}

uint64_t sub_22748EA8C(uint64_t a1)
{
  v37 = sub_227663480();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227663410();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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

uint64_t sub_22748ED94(uint64_t a1)
{
  v46 = sub_2276639B0();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2276624A0();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F1F548(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_2276639A0();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F548(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_22748F158()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(type metadata accessor for AssetProgressUpdated() + 20);
    __swift_project_boxed_opaque_existential_0((v1 + 392), *(v1 + 416));
    v3 = off_283AA0140;
    type metadata accessor for AssetBundleProgressPublisher();
    v3();
  }

  return result;
}

uint64_t *sub_22748F218()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v1 = v0[37];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);
  v2 = v0[54];

  __swift_destroy_boxed_opaque_existential_0(v0 + 55);
  v3 = v0[60];

  __swift_destroy_boxed_opaque_existential_0(v0 + 61);
  return v0;
}

uint64_t sub_22748F2A8()
{
  sub_22748F218();

  return swift_deallocClassInstance();
}

uint64_t sub_22748F300@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v39);
  v6 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA18, qword_227684F40);
  v9 = *(v42 - 8);
  v40 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v18 = v2[42];
  v19 = v2[43];
  __swift_project_boxed_opaque_existential_0(v2 + 39, v18);

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2274A77F8, v2, v18, v37, v19, v8);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_2274A7814;
  *(v20 + 24) = v2;
  v21 = v39;
  (*(v3 + 16))(v6, v8, v39);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = (v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v3 + 32))(v24 + v22, v6, v21);
  v25 = (v24 + v23);
  *v25 = sub_227086814;
  v25[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF80, &qword_227687468);
  v26 = v38;
  sub_227669270();
  (*(v3 + 8))(v8, v21);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2274A7844;
  *(v27 + 24) = v2;
  v29 = v41;
  v28 = v42;
  v30 = v26;
  (*(v9 + 16))(v41, v26, v42);
  v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v32 = (v40 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v9 + 32))(v33 + v31, v29, v28);
  v34 = (v33 + v32);
  *v34 = sub_2274A7848;
  v34[1] = v27;

  sub_227669270();
  return (*(v9 + 8))(v30, v28);
}

uint64_t sub_22748F7F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(*__swift_project_boxed_opaque_existential_0((a2 + 256), *(a2 + 280)) + 32);
  result = sub_2276696A0();
  if (!v3)
  {
    v54 = 0;
    v8 = v51;
    v9 = v52;
    v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v14 = v10[3];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v11;
    v20 = v12;

    sub_22766A070();
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    swift_getKeyPath();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v51 = v8;
    v52 = v9;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v21 = sub_22766C820();
    sub_226E93170(&v51, v49, &unk_27D7BC990, &qword_227670A30);
    v22 = v50;
    if (v50)
    {
      v23 = __swift_project_boxed_opaque_existential_0(v49, v50);
      v24 = *(v22 - 8);
      v25 = *(v24 + 64);
      MEMORY[0x28223BE20](v23);
      v27 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27);
      v28 = sub_22766D170();
      (*(v24 + 8))(v27, v22);
      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    else
    {
      v28 = 0;
    }

    v29 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v30 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

    sub_226E97D1C(&v51, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v31 = v30;
    v32 = sub_22766A080();
    v34 = v33;
    MEMORY[0x22AA985C0]();
    if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v48 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v32(&v51, 0);
    swift_endAccess();

    v35 = v54;
    v36 = sub_2272328B8(100);
    if (v35)
    {
      swift_setDeallocating();

      v37 = *(v18 + 40);

      v38 = qword_2813B2078;
      v39 = sub_22766A100();
      (*(*(v39 - 8) + 8))(v18 + v38, v39);
      v40 = *(*v18 + 48);
      v41 = *(*v18 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v42 = v36;
      swift_setDeallocating();

      v43 = *(v18 + 40);

      v44 = qword_2813B2078;
      v45 = sub_22766A100();
      (*(*(v45 - 8) + 8))(v18 + v44, v45);
      v46 = *(*v18 + 48);
      v47 = *(*v18 + 52);
      result = swift_deallocClassInstance();
      *a3 = v42;
    }
  }

  return result;
}

uint64_t sub_22748FCF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[42];
  v7 = a2[43];
  __swift_project_boxed_opaque_existential_0(a2 + 39, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF80, &qword_227687468);
  sub_226ECF5D8(sub_2274A7CAC, v8, v6, v9, v7, a3);
}

unint64_t sub_22748FDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = sub_227663480();
  v4 = *(v98 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v98);
  v96 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v6;
  v7 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle();
  v95 = *(v7 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF88, &unk_227687470);
  v10 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v73 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1E8, &qword_227679D50);
  v14 = *(v89 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v89);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BDA20, &qword_227687480);
  v79 = *(v18 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v18);
  v77 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v73 - v22;
  v23 = *(a1 + 16);
  v108 = MEMORY[0x277D84F90];
  if (v23)
  {
    v74 = v18;
    v75 = a2;
    v109 = MEMORY[0x277D84F90];
    sub_226F206E8(0, v23, 0);
    v108 = v109;
    v24 = a1 + 64;
    v25 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v27 = 0;
    v28 = *(a1 + 36);
    v106 = v4 + 4;
    v107 = v4 + 2;
    v85 = v14 + 32;
    v80 = a1 + 72;
    v82 = v4;
    v88 = v14;
    v87 = v17;
    v81 = v23;
    v86 = a1 + 64;
    v83 = v28;
    v84 = a1;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v24 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_23;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v100 = 1 << result;
      v101 = result >> 6;
      v99 = v27;
      v30 = v92;
      v31 = *(v92 + 48);
      v32 = *(a1 + 48) + v4[9] * result;
      v33 = v4;
      v102 = v4[2];
      v34 = v90;
      v35 = result;
      v36 = v98;
      v102(v90, v32, v98);
      v37 = *(a1 + 56);
      v38 = v95;
      v39 = *(v95 + 72);
      v105 = v35;
      sub_2274A78E8(v37 + v39 * v35, &v34[v31]);
      v104 = v4[4];
      v40 = v91;
      v104(v91, v34, v36);
      v41 = *(v30 + 48);
      v103 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle;
      sub_2274A794C(&v34[v31], v40 + v41, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
      v42 = objc_allocWithZone(MEMORY[0x277CE6650]);
      v43 = sub_2276623E0();
      v44 = [v42 initWithURL:v43 options:0];

      v45 = v93;
      sub_2274A78E8(v40 + v41, v93);
      v46 = v96;
      v102(v96, v40, v36);
      v47 = (*(v38 + 80) + 24) & ~*(v38 + 80);
      v48 = (v94 + *(v33 + 80) + v47) & ~*(v33 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v44;
      sub_2274A794C(v45, v49 + v47, v103);
      v50 = v108;
      v51 = v46;
      v52 = v87;
      v104((v49 + v48), v51, v36);
      v53 = swift_allocObject();
      *(v53 + 16) = "SeymourServices/AssetBundleHandler.swift";
      *(v53 + 24) = 40;
      *(v53 + 32) = 2;
      *(v53 + 40) = 141;
      *(v53 + 48) = &unk_227687490;
      *(v53 + 56) = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
      sub_227669270();
      sub_226E97D1C(v40, &qword_27D7BDF88, &unk_227687470);
      v108 = v50;
      v109 = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_226F206E8(v54 > 1, v55 + 1, 1);
        v108 = v109;
      }

      v56 = v108;
      *(v108 + 16) = v55 + 1;
      (*(v88 + 32))(v56 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v55, v52, v89);
      a1 = v84;
      v29 = 1 << *(v84 + 32);
      result = v105;
      v24 = v86;
      if (v105 >= v29)
      {
        goto LABEL_25;
      }

      v57 = *(v86 + 8 * v101);
      if ((v57 & v100) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v28) = v83;
      if (v83 != *(v84 + 36))
      {
        goto LABEL_27;
      }

      v58 = v57 & (-2 << (v105 & 0x3F));
      if (v58)
      {
        v29 = __clz(__rbit64(v58)) | v105 & 0x7FFFFFFFFFFFFFC0;
        v4 = v82;
      }

      else
      {
        v59 = v101 << 6;
        v60 = v101 + 1;
        v61 = (v80 + 8 * v101);
        v4 = v82;
        while (v60 < (v29 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            sub_226EB526C(v105, v83, 0);
            v29 = __clz(__rbit64(v62)) + v59;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v105, v83, 0);
      }

LABEL_4:
      v27 = v99 + 1;
      result = v29;
      if (v99 + 1 == v81)
      {
        v18 = v74;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v109 = v108;
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v64 = sub_22766C950();
    sub_227669A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF90, &qword_227687498);
    sub_226E9CFD0(&qword_27D7BDF98, &qword_27D7BDF90, &qword_227687498);
    v65 = v78;
    sub_227669210();

    v66 = swift_allocObject();
    *(v66 + 16) = sub_227492A08;
    *(v66 + 24) = 0;
    v67 = v79;
    v68 = v77;
    (*(v79 + 16))(v77, v65, v18);
    v69 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v70 = (v76 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    (*(v67 + 32))(v71 + v69, v68, v18);
    v72 = (v71 + v70);
    *v72 = sub_2274A7B14;
    v72[1] = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_227669270();
    return (*(v67 + 8))(v65, v18);
  }

  return result;
}

uint64_t sub_2274907A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (***a4)(unsigned int (**)(char *, uint64_t, uint64_t), uint64_t)@<X8>)
{
  v201 = a3;
  v190 = a4;
  v186 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle();
  v6 = *(*(v186 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v186);
  v185 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v184 = &v172 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v188 = &v172 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v192 = &v172 - v15;
  v193 = sub_227663180();
  v191 = *(v193 - 8);
  v16 = *(v191 + 64);
  MEMORY[0x28223BE20](v193);
  v189 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_227663480();
  v196 = *(v194 - 8);
  v18 = *(v196 + 64);
  MEMORY[0x28223BE20](v194);
  v199 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1F8, &qword_227679D60);
  v207 = *(v209 - 8);
  v20 = *(v207 + 64);
  MEMORY[0x28223BE20](v209);
  v195 = (&v172 - v21);
  v208 = sub_2276624A0();
  v197 = *(v208 - 8);
  v22 = *(v197 + 64);
  v23 = MEMORY[0x28223BE20](v208);
  v187 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v216 = &v172 - v25;
  v26 = sub_2276642E0();
  v198 = *(v26 - 8);
  v27 = *(v198 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v172 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = (&v172 - v34);
  v36 = sub_2276668F0();
  v200 = *(v36 - 8);
  v37 = *(v200 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v172 - v42;
  v44 = *__swift_project_boxed_opaque_existential_0((a2 + 440), *(a2 + 464));
  v45 = v212;
  result = sub_22722B004(a1, v43);
  if (v45)
  {
    return result;
  }

  v205 = v35;
  v47 = v201;
  v183 = a1;
  v202 = 0;
  v182 = v39;
  v181 = v33;
  v180 = v30;
  v206 = v26;
  v48 = v200;
  if ((*(v200 + 48))(v43, 1, v36) == 1)
  {
    v49 = sub_226E97D1C(v43, &qword_27D7B94C0, &unk_2276874A0);
    v43 = v182;
    MEMORY[0x22AA92BD0](v49);
  }

  v50 = v206;
  v51 = v47;
  v52 = sub_2276668E0();
  v54 = v53;
  v57 = *(v48 + 8);
  v55 = v48 + 8;
  v56 = v57;
  v57(v43, v36);
  v58 = v202;
  v59 = sub_22748EA8C(v51);
  v60 = v183;
  v61 = sub_226F87158(v59, 0, 1, v183);
  v202 = v58;
  if (v58)
  {
  }

  v174 = v56;
  v176 = v52;
  v178 = v54;
  v200 = v55;
  v175 = v36;
  v179 = v61;

  v62 = *(v179 + 16);
  if (v62)
  {
    v215[0] = MEMORY[0x277D84F90];
    v63 = v179;
    sub_226F1EF90(0, v62, 0);
    v64 = v215[0];
    v65 = *(v198 + 16);
    v66 = v63 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
    v210 = *(v198 + 72);
    v211 = v65;
    v212 = v198 + 16;
    v203 = (v198 + 8);
    v204 = (v197 + 8);
    v67 = v66;
    v177 = v62;
    v68 = v62;
    v69 = v205;
    do
    {
      (v211)(v69, v67, v50);
      sub_227664240();
      v70 = sub_227662390();
      v72 = v71;
      (*v204)(v216, v208);
      (*v203)(v69, v50);
      v215[0] = v64;
      v74 = v64[2];
      v73 = v64[3];
      if (v74 >= v73 >> 1)
      {
        sub_226F1EF90(v73 > 1, v74 + 1, 1);
        v64 = v215[0];
      }

      v64[2] = (v74 + 1);
      v75 = &v64[2 * v74];
      v75[4] = v70;
      v75[5] = v72;
      v67 += v210;
      --v68;
      v69 = v205;
      v50 = v206;
    }

    while (v68);
    v205 = v64;
    v215[0] = MEMORY[0x277D84F90];
    v76 = v177;
    sub_226F20708(0, v177, 0);
    v77 = v215[0];
    v78 = v209;
    v79 = v195;
    do
    {
      (v211)(v79 + *(v78 + 48), v66, v50);
      *v79 = sub_227664230();
      v79[1] = v80;
      v215[0] = v77;
      v82 = *(v77 + 16);
      v81 = *(v77 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_226F20708(v81 > 1, v82 + 1, 1);
        v77 = v215[0];
      }

      *(v77 + 16) = v82 + 1;
      sub_226E95D18(v79, v77 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v82, &qword_27D7BB1F8, &qword_227679D60);
      v78 = v209;
      v66 += v210;
      --v76;
    }

    while (v76);

    v60 = v183;
    if (*(v77 + 16))
    {
      goto LABEL_16;
    }

LABEL_18:
    v83 = MEMORY[0x277D84F98];
    goto LABEL_19;
  }

  v205 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_18;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A78, &qword_227674EA0);
  v83 = sub_22766D010();
LABEL_19:
  v215[0] = v83;

  v85 = v202;
  sub_2274A2D40(v84, 1, v215);
  v86 = v85;
  if (!v85)
  {

    v216 = v215[0];
    v87 = __swift_project_boxed_opaque_existential_0(v60, v60[3]);
    v88 = *v87;
    v89 = v87[1];
    v90 = *(v87 + 16);
    v91 = v87[3];
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    v95 = swift_allocObject();
    v96 = &qword_2813B2078;
    v97 = v88;
    v98 = v89;

    sub_22766A070();
    *(v95 + 16) = v97;
    *(v95 + 24) = v98;
    *(v95 + 32) = v90;
    *(v95 + 40) = v91;
    swift_getKeyPath();
    v99 = sub_227073F2C(v205);

    v215[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v215[0] = v99;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v100 = sub_22766C820();
    sub_226E93170(v215, &v213, &unk_27D7BC990, &qword_227670A30);
    v101 = v214;
    if (v214)
    {
      v102 = __swift_project_boxed_opaque_existential_0(&v213, v214);
      v103 = *(v101 - 8);
      v104 = *(v103 + 64);
      MEMORY[0x28223BE20](v102);
      v106 = &v172 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v103 + 16))(v106);
      v107 = sub_22766D170();
      (*(v103 + 8))(v106, v101);
      v96 = &qword_2813B2078;
      __swift_destroy_boxed_opaque_existential_0(&v213);
    }

    else
    {
      v107 = 0;
    }

    v108 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

    sub_226E97D1C(v215, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v109 = sub_22766A080();
    v111 = v110;
    MEMORY[0x22AA985C0]();
    if (*((*v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      sub_22766C3A0();
      (v109)(v215, 0);
      swift_endAccess();

      v112 = sub_2272325B8(100);
      v202 = v86;
      if (v86)
      {

        swift_setDeallocating();

        v113 = *(v95 + 40);

        v114 = *v96;
        v115 = sub_22766A100();
        (*(*(v115 - 8) + 8))(v95 + v114, v115);
        v116 = *(*v95 + 48);
        v117 = *(*v95 + 52);
        return swift_deallocClassInstance();
      }

      v210 = v112;
      swift_setDeallocating();

      v118 = *(v95 + 40);

      v119 = *v96;
      v120 = sub_22766A100();
      (*(*(v120 - 8) + 8))(v95 + v119, v120);
      v121 = *(*v95 + 48);
      v122 = *(*v95 + 52);
      swift_deallocClassInstance();
      v123 = v201;
      v124 = v201 + 56;
      v125 = 1 << *(v201 + 32);
      v126 = -1;
      if (v125 < 64)
      {
        v126 = ~(-1 << v125);
      }

      v96 = v126 & *(v201 + 56);
      v127 = (v125 + 63) >> 6;
      v95 = v196;
      v212 = v196 + 16;
      v209 = v198 + 16;
      v207 = v198 + 32;
      v205 = (v191 + 48);
      v195 = (v191 + 32);
      v183 = (v197 + 48);
      v191 += 8;
      v211 = (v196 + 8);
      v204 = (v198 + 8);
      v179 = v197 + 32;
      v177 = (v197 + 16);
      v197 += 8;

      v109 = 0;
      v203 = MEMORY[0x277D84F98];
      v128 = v194;
      v86 = v199;
      while (v96)
      {
LABEL_36:
        v130 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
        v131 = v128;
        (*(v95 + 16))(v86, *(v123 + 48) + *(v95 + 72) * (v130 | (v109 << 6)), v128);
        v132 = sub_227663410();
        if (!*(v216 + 2))
        {

          goto LABEL_30;
        }

        v134 = sub_226E92000(v132, v133);
        v136 = v135;
        v123 = v201;

        if (v136)
        {
          v137 = v198;
          v138 = *(v216 + 7) + *(v198 + 72) * v134;
          v139 = v180;
          v140 = v206;
          (*(v198 + 16))(v180, v138, v206);
          v141 = v181;
          v142 = (*(v137 + 32))(v181, v139, v140);
          MEMORY[0x28223BE20](v142);
          *(&v172 - 2) = v141;
          v143 = v192;
          v144 = v202;
          sub_227543C64(sub_2274A7CC8, v210, v192);
          v202 = v144;
          v145 = v193;
          if ((*v205)(v143, 1, v193) == 1)
          {
            v86 = v199;
            (*v211)(v199, v131);
            v146 = v143;
            v128 = v131;
            sub_226E97D1C(v146, &qword_27D7B8620, &qword_2276711C0);
            (*v204)(v141, v206);
            goto LABEL_42;
          }

          v147 = v189;
          (*v195)(v189, v143, v145);
          v148 = v188;
          sub_227663160();
          v149 = v208;
          if ((*v183)(v148, 1, v208) == 1)
          {
            (*v191)(v147, v145);
            v150 = v199;
            v151 = v194;
            (*v211)(v199, v194);
            v152 = v148;
            v86 = v150;
            v128 = v151;
            sub_226E97D1C(v152, &unk_27D7BB570, &unk_227670FC0);
            (*v204)(v181, v206);
LABEL_42:
            v95 = v196;
            v123 = v201;
          }

          else
          {
            v153 = v187;
            (*v179)(v187, v148, v149);
            v154 = sub_227664270();
            v155 = v176;
            v156 = v178;
            v157 = sub_22718C70C(v176, v178, v154);

            if (v157)
            {

              v173 = v155;
              v159 = v156;
            }

            else
            {
              v160 = v182;
              MEMORY[0x22AA92BD0](v158);
              v173 = sub_2276668E0();
              v159 = v161;
              v174(v160, v175);
            }

            v162 = v194;
            v123 = v201;
            v163 = v184;
            v164 = v153;
            v165 = v208;
            (*v177)(v184, v164, v208);
            v166 = &v163[*(v186 + 20)];
            *v166 = v173;
            v166[1] = v159;
            v167 = v163;
            v168 = v185;
            sub_2274A794C(v167, v185, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
            v169 = v203;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v215[0] = v169;
            v171 = v168;
            v86 = v199;
            sub_22736BDC0(v171, v199, isUniquelyReferenced_nonNull_native);
            (*v197)(v187, v165);
            (*v191)(v189, v193);
            (*v211)(v86, v162);
            v203 = v215[0];
            (*v204)(v181, v206);
            v95 = v196;
            v128 = v162;
          }
        }

        else
        {
LABEL_30:
          v86 = v199;
          v128 = v131;
          (*v211)(v199, v131);
        }
      }

      while (1)
      {
        v129 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          break;
        }

        if (v129 >= v127)
        {

          *v190 = v203;
          return result;
        }

        v96 = *(v124 + 8 * v129);
        ++v109;
        if (v96)
        {
          v109 = v129;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_50:
      sub_22766C360();
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_227491C14()
{
  v0 = sub_2276624A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  sub_227663170();
  v8 = sub_227662390();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  sub_227664240();
  v12 = sub_227662390();
  v14 = v13;
  v11(v5, v0);
  if (v8 == v12 && v10 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_22766D190();
  }

  return v16 & 1;
}

uint64_t sub_227491DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_227663480();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle();
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = sub_22766B390();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v13 = swift_task_alloc();
  v4[15] = v13;
  *v13 = v4;
  v13[1] = sub_227491F38;

  return sub_227447D30();
}

uint64_t sub_227491F38(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v8 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v6 = sub_227492704;
  }

  else
  {
    v6 = sub_227492050;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227492050()
{
  v83 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  sub_22766A6C0();
  sub_2274A78E8(v8, v3);
  v80 = *(v6 + 16);
  v80(v4, v7, v5);

  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  if (os_log_type_enabled(v9, v10))
  {
    v69 = v0[16];
    v70 = v0[17];
    v74 = v0[12];
    v76 = v0[11];
    v78 = v0[14];
    v11 = v0[9];
    v12 = v0[10];
    v71 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v15 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v82[0] = v72;
    *v15 = 136315650;
    v16 = (v12 + *(v11 + 20));
    v18 = *v16;
    v17 = v16[1];

    sub_2274A7C4C(v12, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
    v19 = sub_226E97AE8(v18, v17, v82);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_226E97AE8(v69, v70, v82);
    *(v15 + 22) = 2080;
    sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v20 = sub_22766D140();
    v22 = v21;
    (*(v14 + 8))(v71, v13);
    v23 = sub_226E97AE8(v20, v22, v82);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_226E8E000, v9, v10, "Expected language: %s, downloadedLanguage: %s for bundle: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v72, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v74 + 8))(v78, v76);
  }

  else
  {
    v24 = v0[14];
    v25 = v0[11];
    v26 = v0[12];
    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[5];
    v30 = v0[6];

    (*(v30 + 8))(v28, v29);
    sub_2274A7C4C(v27, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
    (*(v26 + 8))(v24, v25);
  }

  v31 = (v0[3] + *(v0[9] + 20));
  if (*v31 == v0[16] && v31[1] == v0[17])
  {
    v36 = v0[17];

    goto LABEL_11;
  }

  v33 = v0[17];
  v34 = sub_22766D190();

  if (v34)
  {
LABEL_11:
    v37 = sub_227663190();
    sub_2274A72CC(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D4FD30], v37);
    swift_willThrow();
    v40 = v0[13];
    v42 = v0[6];
    v41 = v0[7];
    v44 = v0[4];
    v43 = v0[5];
    sub_22766A6C0();
    (*(v42 + 16))(v41, v44, v43);
    v45 = v38;
    v46 = sub_22766B380();
    v47 = sub_22766C890();

    v48 = os_log_type_enabled(v46, v47);
    v50 = v0[12];
    v49 = v0[13];
    v51 = v0[11];
    v53 = v0[6];
    v52 = v0[7];
    v54 = v0[5];
    if (v48)
    {
      v81 = v0[11];
      v55 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v82[0] = v77;
      *v55 = 136315394;
      sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
      v79 = v49;
      v56 = sub_22766D140();
      v73 = v47;
      v58 = v57;
      (*(v53 + 8))(v52, v54);
      v59 = sub_226E97AE8(v56, v58, v82);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2112;
      v60 = v38;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v61;
      *v75 = v61;
      _os_log_impl(&dword_226E8E000, v46, v73, "Failed to check audio language for bundle: %s due to error: %@", v55, 0x16u);
      sub_226E97D1C(v75, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v75, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x22AA9A450](v77, -1, -1);
      MEMORY[0x22AA9A450](v55, -1, -1);

      (*(v50 + 8))(v79, v81);
    }

    else
    {

      (*(v53 + 8))(v52, v54);
      (*(v50 + 8))(v49, v51);
    }

    v35 = 1;
    goto LABEL_15;
  }

  v80(v0[2], v0[4], v0[5]);
  v35 = 0;
LABEL_15:
  v62 = v0[13];
  v63 = v0[14];
  v64 = v0[10];
  v66 = v0[7];
  v65 = v0[8];
  (*(v0[6] + 56))(v0[2], v35, 1, v0[5]);

  v67 = v0[1];

  return v67();
}

uint64_t sub_227492704()
{
  v37 = v0;
  v1 = v0[18];
  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  sub_22766A6C0();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  if (v10)
  {
    v35 = v0[11];
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v17 = 136315394;
    sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v34 = v11;
    v18 = sub_22766D140();
    v31 = v9;
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_226E97AE8(v18, v20, &v36);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v32 = v23;
    _os_log_impl(&dword_226E8E000, v8, v31, "Failed to check audio language for bundle: %s due to error: %@", v17, 0x16u);
    sub_226E97D1C(v32, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v12 + 8))(v34, v35);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[10];
  v28 = v0[7];
  v27 = v0[8];
  (*(v0[6] + 56))(v0[2], 1, 1, v0[5]);

  v29 = v0[1];

  return v29();
}

uint64_t sub_227492A08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = sub_227663480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v27 - v14;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v16 = *a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v17 = *(v13 + 72);
    v18 = (v4 + 48);
    v31 = (v4 + 32);
    v32 = v17;
    v19 = MEMORY[0x277D84F90];
    v33 = v7;
    v29 = v4;
    v30 = v3;
    do
    {
      v20 = v34;
      sub_226E93170(v16, v34, &unk_27D7BD3F0, &unk_2276823F0);
      sub_226E95D18(v20, v11, &unk_27D7BD3F0, &unk_2276823F0);
      if ((*v18)(v11, 1, v3) == 1)
      {
        sub_226E97D1C(v11, &unk_27D7BD3F0, &unk_2276823F0);
      }

      else
      {
        v21 = *v31;
        (*v31)(v33, v11, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2273A6FCC(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_2273A6FCC(v22 > 1, v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        v24 = v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23;
        v3 = v30;
        v21(v24, v33, v30);
      }

      v16 += v32;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v25 = sub_226F40934(v19);

  *v28 = v25;
  return result;
}

uint64_t sub_227492D1C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_227666B60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*__swift_project_boxed_opaque_existential_0((a2 + 256), *(a2 + 280)) + 32);
  result = sub_2276696A0();
  if (!v3)
  {
    v88 = a1;
    v89 = v11;
    v87 = v8;
    v95 = v7;
    v83 = a3;
    v85 = 0;
    v15 = v92;
    v14 = v93;
    v16 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 3));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v16 + 16);
    v20 = v16[3];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    v25 = v17;
    v26 = v18;

    sub_22766A070();
    *(v24 + 16) = v25;
    *(v24 + 24) = v26;
    *(v24 + 32) = v19;
    *(v24 + 40) = v20;
    swift_getKeyPath();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v82 = v15;
    v92 = v15;
    v93 = v14;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
    v84 = v14;

    v27 = sub_22766C820();
    sub_226E93170(&v92, v90, &unk_27D7BC990, &qword_227670A30);
    v28 = v91;
    if (v91)
    {
      v29 = __swift_project_boxed_opaque_existential_0(v90, v91);
      v30 = *(v28 - 8);
      v31 = *(v30 + 64);
      MEMORY[0x28223BE20](v29);
      v33 = v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v33);
      v34 = sub_22766D170();
      (*(v30 + 8))(v33, v28);
      __swift_destroy_boxed_opaque_existential_0(v90);
    }

    else
    {
      v34 = 0;
    }

    v35 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v36 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

    sub_226E97D1C(&v92, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v37 = v36;
    v38 = sub_22766A080();
    v40 = v39;
    MEMORY[0x22AA985C0]();
    if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v78 = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v38(&v92, 0);
    swift_endAccess();

    v41 = v85;
    v42 = sub_2272328B8(100);
    if (v41)
    {

      swift_setDeallocating();

      v43 = *(v24 + 40);

      v44 = qword_2813B2078;
      v45 = sub_22766A100();
      (*(*(v45 - 8) + 8))(v24 + v44, v45);
      v46 = *(*v24 + 48);
      v47 = *(*v24 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v48 = v42;
      swift_setDeallocating();

      v49 = *(v24 + 40);

      v50 = qword_2813B2078;
      v51 = sub_22766A100();
      (*(*(v51 - 8) + 8))(v24 + v50, v51);
      v52 = *(*v24 + 48);
      v53 = *(*v24 + 52);
      swift_deallocClassInstance();
      v54 = sub_22748EA8C(v48);
      v55 = sub_226F86AB0(v54, v88);
      v85 = 0;
      v56 = v55;
      v57 = sub_226F3E6A8(v54);

      v58 = *(v56 + 16);
      if (v58)
      {
        v80 = v57;
        v81 = v48;
        v92 = MEMORY[0x277D84F90];
        sub_226F1EF90(0, v58, 0);
        v59 = v92;
        v60 = v87 + 16;
        v61 = *(v87 + 16);
        v62 = *(v87 + 80);
        v79[1] = v56;
        v63 = v56 + ((v62 + 32) & ~v62);
        v87 = *(v87 + 72);
        v88 = v61;
        v86 = (v60 - 8);
        do
        {
          v64 = v89;
          v65 = v95;
          v66 = v60;
          v88(v89, v63, v95);
          v67 = sub_227666A50();
          v69 = v68;
          (*v86)(v64, v65);
          v92 = v59;
          v71 = *(v59 + 16);
          v70 = *(v59 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_226F1EF90(v70 > 1, v71 + 1, 1);
            v59 = v92;
          }

          *(v59 + 16) = v71 + 1;
          v72 = v59 + 16 * v71;
          *(v72 + 32) = v67;
          *(v72 + 40) = v69;
          v63 += v87;
          --v58;
          v60 = v66;
        }

        while (v58);

        v57 = v80;
        v48 = v81;
      }

      else
      {

        v59 = MEMORY[0x277D84F90];
      }

      v73 = sub_227009018(v59, v57);

      v74 = sub_2274A4C50(v48, v73);

      v75 = v84;

      v76 = sub_2274A34B0(v74, v82, v75);

      swift_bridgeObjectRelease_n();
      v77 = sub_226F40934(v76);

      *v83 = v77;
    }
  }

  return result;
}

uint64_t sub_2274934C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v6 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA08, &unk_227684F30);
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v18 = *(v2 + 42);
  v19 = *(v2 + 43);
  __swift_project_boxed_opaque_existential_0(v2 + 39, v18);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2274A7314, v2, v18, v32, v19, v8);

  v20 = v34;
  (*(v3 + 16))(v6, v8, v34);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v21, v6, v20);
  v24 = (v23 + v22);
  *v24 = sub_2274A7344;
  v24[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF58, &qword_2276873E8);
  v25 = v33;
  sub_227669270();
  (*(v3 + 8))(v8, v20);
  v27 = v35;
  v26 = v36;
  (*(v9 + 16))(v35, v25, v36);
  v28 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v29 = swift_allocObject();
  (*(v9 + 32))(v29 + v28, v27, v26);
  v30 = (v29 + ((v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_227493C34;
  v30[1] = 0;
  sub_227669270();
  return (*(v9 + 8))(v25, v26);
}

void sub_22749394C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  sub_2274A39F8(v3, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF68, qword_2276873F8);
  sub_226E9CFD0(&qword_281398FC0, &qword_27D7BDF68, qword_2276873F8);
  sub_227669210();
}

uint64_t sub_227493A74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;

  v7 = sub_2274A5FF0(v6, a2);

  v8 = *(v7 + 16);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
    v9 = sub_227663480();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    (*(v10 + 16))(v13 + v12, a3, v9);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *(swift_allocObject() + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);

  return sub_227669280();
}

uint64_t sub_227493C34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227663480();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v44 - v8;
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = *a1 + 32;
  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = *(*(v12 + 8 * v13) + 16);
      v15 = v14 == 0;
      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v13 = *(*a1 + 16);
        break;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_2274A3350(v13, 0, v15, v11, 0, 1, *a1);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v16;
    v55 = MEMORY[0x277D84F90];
    result = sub_226F1F568(0, v16 & ~(v16 >> 63), 0);
    v20 = *(v10 + 16);
    if (v20)
    {
      v21 = 0;
      while (1)
      {
        v22 = *(*(v12 + 8 * v21) + 16);
        v23 = v22 == 0;
        if (v22)
        {
          break;
        }

        if (v20 == ++v21)
        {
          v21 = *(v10 + 16);
          break;
        }
      }
    }

    else
    {
      v21 = 0;
      v23 = 1;
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      v50 = v9;
      v51 = v10;
      v44[1] = a2;
      v45 = v18;
      v24 = 0;
      v25 = 0;
      v17 = v55;
      v48 = v53 + 8;
      v49 = v53 + 16;
      v46 = v12;
      v47 = (v53 + 32);
      while (v24 < v18)
      {
        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          goto LABEL_39;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v21 >= *(v10 + 16))
        {
          goto LABEL_41;
        }

        if (v23)
        {
          goto LABEL_46;
        }

        v27 = *(v12 + 8 * v21);
        if (v25 >= *(v27 + 16))
        {
          goto LABEL_42;
        }

        v28 = v53;
        v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v30 = *(v53 + 72);
        v31 = v17;
        v32 = v52;
        (*(v53 + 16))(v52, v27 + v29 + v30 * v25, v4);
        sub_227663470();
        v33 = v32;
        v17 = v31;
        (*(v28 + 8))(v33, v4);
        v55 = v31;
        v34 = v4;
        v36 = *(v31 + 16);
        v35 = *(v31 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_226F1F568(v35 > 1, v36 + 1, 1);
          v17 = v55;
        }

        *(v17 + 16) = v36 + 1;
        v37 = v17;
        result = (*v47)(v17 + v29 + v36 * v30);
        v10 = v51;
        v38 = *(v51 + 16);
        if (v21 >= v38)
        {
          goto LABEL_43;
        }

        v4 = v34;
        ++v25;
        v12 = v46;
        if (v25 == *(*(v46 + 8 * v21) + 16))
        {
          ++v21;
          while (1)
          {
            v23 = v21 == v38;
            if (v21 == v38)
            {
              v25 = 0;
              v21 = v38;
              goto LABEL_27;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF58, &qword_2276873E8);
            sub_226E9CFD0(&qword_27D7BDF60, &qword_27D7BDF58, &qword_2276873E8);
            v39 = sub_2275F01F4(v54, v21, v10);
            v41 = *v40;

            (v39)(v54, 0);
            v42 = *(v41 + 16);

            if (v42)
            {
              break;
            }

            v26 = __OFADD__(v21++, 1);
            v17 = v37;
            if (v26)
            {
              goto LABEL_45;
            }
          }

          v25 = 0;
        }

        else
        {
          v23 = 0;
        }

        v17 = v37;
LABEL_27:
        v18 = v45;
        if (v24 == v45)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_37:
    v43 = sub_226F40934(v17);

    *(swift_allocObject() + 16) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    return sub_227669280();
  }

  return result;
}

uint64_t sub_2274940E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v38 - v12;
  v13 = sub_2276633F0();
  if ((v14 & 1) == 0 || v13 != 8)
  {
    goto LABEL_5;
  }

  v47 = v8;
  v15 = *(*__swift_project_boxed_opaque_existential_0(v2 + 32, v2[35]) + 32);
  sub_2276696A0();
  v46 = v3;
  v20 = v51;
  v19 = v52;
  v21 = sub_227663430();
  if (!v19)
  {

    goto LABEL_5;
  }

  if (v20 != v21 || v19 != v22)
  {
    v23 = sub_22766D190();

    if (v23)
    {
      goto LABEL_11;
    }

LABEL_5:
    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    (*(v6 + 32))(v17 + v16, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    return sub_227669280();
  }

LABEL_11:
  v24 = v46;
  v25 = v46[43];
  v42 = v46[42];
  v45 = v25;
  v41 = __swift_project_boxed_opaque_existential_0(v46 + 39, v42);
  v26 = *(v6 + 16);
  v43 = v6 + 16;
  v44 = v26;
  v26(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v40 = *(v6 + 80);
  v27 = (v40 + 24) & ~v40;
  v38 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  v39 = *(v6 + 32);
  v39(v28 + v27, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_226ECF5D8(sub_2274A58A4, v28, v42, MEMORY[0x277D84F78] + 8, v45, v49);

  v44(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v29 = v38;
  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  v39(v30 + v29, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2274A5924;
  *(v31 + 24) = v30;
  v32 = v48;
  v33 = v49;
  v34 = v47;
  (*(v48 + 16))(v10, v49, v47);
  v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = swift_allocObject();
  (*(v32 + 32))(v36 + v35, v10, v34);
  v37 = (v36 + ((v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_226F09740;
  v37[1] = v31;

  sub_227669270();
  return (*(v32 + 8))(v33, v34);
}

uint64_t sub_22749466C(void *a1, uint64_t a2)
{
  v5 = sub_2276633E0();
  sub_2270781A4(v5, v6, a1);
  if (!v2)
  {

    v7 = *__swift_project_boxed_opaque_existential_0((a2 + 488), *(a2 + 512));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_227670CD0;
    *(v8 + 32) = sub_2276633E0();
    *(v8 + 40) = v9;
    sub_2272D752C(1, v8, a1);
  }
}

uint64_t sub_22749473C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v7);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  return sub_227669280();
}

uint64_t sub_227494888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227669B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 296);
  v19[1] = *(a1 + 304);
  v19[0] = swift_getObjectType();
  v16 = v6 + 16;
  v17 = *(v6 + 16);
  v19[2] = v16;
  v17(v9, a2, v5);
  sub_227669B80();
  sub_2276699D0();
  (*(v11 + 8))(v14, v10);
  return (v17)(v20, a2, v5);
}

void sub_227494A60(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v134 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v130 - v8;
  v9 = sub_227663480();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v145 = *(v14 - 8);
  v146 = v14;
  v15 = *(v145 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v133 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v130 - v18;
  sub_22766A6C0();
  v20 = v10[2];
  v149 = a2;
  v137 = v10 + 2;
  v136 = v20;
  v20(v13, a2, v9);
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  v23 = os_log_type_enabled(v21, v22);
  v139 = v9;
  v140 = a1;
  v144 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *&v148 = swift_slowAlloc();
    v155 = v148;
    *v24 = 141558274;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2080;
    sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v25 = sub_22766D140();
    v27 = v26;
    v135 = v10[1];
    v135(v13, v9);
    v28 = sub_226E97AE8(v25, v27, &v155);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v21, v22, "AssetBundleHandler - inserting bundle: %{mask.hash}s", v24, 0x16u);
    v29 = v148;
    __swift_destroy_boxed_opaque_existential_0(v148);
    MEMORY[0x22AA9A450](v29, -1, -1);
    v30 = v24;
    a1 = v140;
    MEMORY[0x22AA9A450](v30, -1, -1);
  }

  else
  {

    v135 = v10[1];
    v135(v13, v9);
  }

  v132 = *(v145 + 8);
  v132(v19, v146);
  v31 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v31 + 16);
  v35 = v31[3];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  v40 = v32;
  v41 = v33;

  sub_22766A070();
  *(v39 + 16) = v40;
  *(v39 + 24) = v41;
  *(v39 + 32) = v34;
  *(v39 + 40) = v35;
  swift_getKeyPath();
  v42 = sub_227663410();
  v44 = v43;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v157 = v141;
  v155 = v42;
  v156 = v44;
  v45 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  *&v148 = v45;
  v46 = sub_22766C820();
  sub_226E93170(&v155, &v152, &unk_27D7BC990, &qword_227670A30);
  v47 = v154;
  if (v154)
  {
    v48 = __swift_project_boxed_opaque_existential_0(&v152, v154);
    v49 = *(v47 - 8);
    v50 = *(v49 + 64);
    MEMORY[0x28223BE20](v48);
    v52 = &v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v52);
    v53 = sub_22766D170();
    (*(v49 + 8))(v52, v47);
    __swift_destroy_boxed_opaque_existential_0(&v152);
  }

  else
  {
    v53 = 0;
  }

  v54 = objc_opt_self();
  v55 = [v54 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v56 = [objc_allocWithZone(v147) initWithLeftExpression:v46 rightExpression:v55 modifier:0 type:4 options:0];

  sub_226E97D1C(&v155, &unk_27D7BC990, &qword_227670A30);
  v57 = qword_2813B2078;
  swift_beginAccess();
  v58 = v56;
  v59 = sub_22766A080();
  v61 = v60;
  MEMORY[0x22AA985C0]();
  if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v127 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v59(&v155, 0);
  swift_endAccess();

  swift_getKeyPath();
  v150 = sub_227663460();
  v151 = v62 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F0, qword_227671158);
  sub_227663AD0();
  v157 = MEMORY[0x277D83B88];
  v155 = v158;

  v63 = sub_22766C820();
  sub_226E93170(&v155, &v152, &unk_27D7BC990, &qword_227670A30);
  v64 = v154;
  if (v154)
  {
    v65 = __swift_project_boxed_opaque_existential_0(&v152, v154);
    v138 = &v130;
    v66 = v39;
    v67 = v57;
    v68 = v54;
    v69 = *(v64 - 8);
    v70 = *(v69 + 64);
    MEMORY[0x28223BE20](v65);
    v72 = &v130 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v72);
    v73 = sub_22766D170();
    (*(v69 + 8))(v72, v64);
    v54 = v68;
    v57 = v67;
    v39 = v66;
    __swift_destroy_boxed_opaque_existential_0(&v152);
  }

  else
  {
    v73 = 0;
  }

  v74 = [v54 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v75 = [objc_allocWithZone(v147) initWithLeftExpression:v63 rightExpression:v74 modifier:0 type:4 options:0];

  sub_226E97D1C(&v155, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v76 = v75;
  v77 = sub_22766A080();
  v79 = v78;
  MEMORY[0x22AA985C0]();
  if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v128 = *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v77(&v155, 0);
  swift_endAccess();

  swift_getKeyPath();
  v80 = sub_227663430();
  v157 = v141;
  v155 = v80;
  v156 = v81;

  v82 = sub_22766C820();
  sub_226E93170(&v155, &v152, &unk_27D7BC990, &qword_227670A30);
  v83 = v154;
  if (v154)
  {
    v84 = __swift_project_boxed_opaque_existential_0(&v152, v154);
    *&v148 = v39;
    v85 = *(v83 - 8);
    v86 = *(v85 + 64);
    MEMORY[0x28223BE20](v84);
    v88 = &v130 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v85 + 16))(v88);
    v89 = sub_22766D170();
    (*(v85 + 8))(v88, v83);
    v39 = v148;
    __swift_destroy_boxed_opaque_existential_0(&v152);
  }

  else
  {
    v89 = 0;
  }

  v90 = [v54 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v91 = [objc_allocWithZone(v147) initWithLeftExpression:v82 rightExpression:v90 modifier:0 type:4 options:0];

  sub_226E97D1C(&v155, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v92 = v91;
  v93 = sub_22766A080();
  v95 = v94;
  MEMORY[0x22AA985C0]();
  if (*((*v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v129 = *((*v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v93(&v155, 0);
  swift_endAccess();

  v96 = MEMORY[0x22AA99A00]();
  v98 = v142;
  v97 = v143;
  sub_2275444CC(v39, v143);
  v99 = v149;
  v100 = v144;
  if (v98)
  {
    objc_autoreleasePoolPop(v96);
LABEL_21:

    return;
  }

  objc_autoreleasePoolPop(v96);
  v101 = v139;
  if ((v100[6])(v97, 1, v139) == 1)
  {
    v102 = v101;
    sub_226E97D1C(v97, &unk_27D7BD3F0, &unk_2276823F0);
    sub_2276633F0();
  }

  else
  {
    v103 = v97;
    v104 = sub_2276633F0();
    v106 = v105;
    v107 = v103;
    v102 = v101;
    v135(v107, v101);
    v108 = sub_2276633F0();
    v155 = v104;
    LOBYTE(v156) = v106 & 1;
    v152 = v108;
    v153 = v109 & 1;
    sub_226F32810();
    sub_226F32864();
    if (sub_227663B20())
    {

      v110 = v136;
      goto LABEL_26;
    }
  }

  v111 = sub_227542468(v39 + v57, *(v39 + 32), *(v39 + 40));
  if (v111)
  {
    v112 = v146;
    if (v111 != 1)
    {
      swift_willThrow();
      goto LABEL_21;
    }
  }

  else
  {
    v119 = sub_227284664(0);
    [v119 setResultType_];
    v120 = *(v39 + 16);
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v121 = sub_22766C9E0();
    v125 = *(v39 + 24);
    v126 = sub_226EDAB24(v121);

    sub_226EDAB78(v126, v125);

    v112 = v146;
  }

  v113 = v133;
  sub_22766A6C0();
  sub_22766B370();
  v132(v113, v112);
  v114 = v140;
  v115 = __swift_project_boxed_opaque_existential_0(v140, v140[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
  v116 = v100[9];
  v117 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v118 = swift_allocObject();
  v148 = xmmword_227670CD0;
  *(v118 + 16) = xmmword_227670CD0;
  v136(v118 + v117, v99, v102);
  sub_227556A7C(v118, v115[1], *(v115 + 16), v115[3]);

  v122 = *__swift_project_boxed_opaque_existential_0((v131 + 488), *(v131 + 512));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v123 = swift_allocObject();
  *(v123 + 16) = v148;
  *(v123 + 32) = sub_2276633E0();
  *(v123 + 40) = v124;
  sub_2272D752C(0, v123, v114);

  v110 = v136;

LABEL_26:
  v110(v134, v99, v102);
}

uint64_t sub_227495A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v24 = a3;
  v4 = sub_227663480();
  v21 = *(v4 - 8);
  v5 = v21;
  v23 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669B90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 296);
  v20[1] = *(a2 + 304);
  v20[0] = swift_getObjectType();
  v14 = *(v5 + 16);
  v15 = v22;
  v14(v7, v22, v4);
  sub_227669B80();
  sub_2276699D0();
  (*(v9 + 8))(v12, v8);
  v14(v7, v15, v4);
  v16 = v21;
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  (*(v16 + 32))(v18 + v17, v7, v4);
  return sub_227669280();
}

uint64_t sub_227495C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a1 + 352), *(a1 + 376));
  v6 = off_283AA5278;
  type metadata accessor for PowerMonitor();
  result = v6();
  if (!v3)
  {
    v8 = result;
    sub_227663460();
    sub_2274A6D98();
    sub_226FC3018();
    if ((sub_227663B20() & 1) == 0)
    {
      if (v8 == 1)
      {
      }

      else
      {
        v9 = sub_22766D190();

        if ((v9 & 1) == 0)
        {
          v11 = sub_227663190();
          sub_2274A72CC(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
          swift_allocError();
          (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D4FD88], v11);
          return swift_willThrow();
        }
      }
    }

    v10 = sub_227663480();
    return (*(*(v10 - 8) + 16))(a3, a2, v10);
  }

  return result;
}

uint64_t sub_227495EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = sub_227663480();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*__swift_project_boxed_opaque_existential_0((a1 + 256), *(a1 + 280)) + 32);
  sub_2276696A0();
  if (v3)
  {

    sub_227663430();
  }

  else
  {
    v39 = a3;
    v40 = v12;
    v32 = v41[0];
    v33 = v41[1];
    v34 = sub_227663430();
    if (v33)
    {
      if (v32 == v34 && v33 == v35)
      {
      }

      else
      {
        v36 = sub_22766D190();

        v12 = v40;
        if ((v36 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      return (*(v7 + 16))(v39, a2, v42);
    }

    v12 = v40;
  }

LABEL_4:
  sub_22766A6C0();
  v17 = v42;
  (*(v7 + 16))(v10, a2, v42);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v15;
    v21 = v17;
    v22 = v20;
    v23 = swift_slowAlloc();
    v40 = v12;
    v41[0] = v23;
    v24 = v23;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v25 = sub_22766D140();
    v38 = v11;
    v27 = v26;
    (*(v7 + 8))(v10, v21);
    v28 = sub_226E97AE8(v25, v27, v41);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v18, v19, "Load - Bundle downloading device is not the current platform. Skipping load of bundle: %{mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    (*(v40 + 8))(v39, v38);
  }

  else
  {

    (*(v7 + 8))(v10, v17);
    (*(v12 + 8))(v15, v11);
  }

  v29 = sub_227663190();
  sub_2274A72CC(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D4FD78], v29);
  return swift_willThrow();
}

uint64_t sub_227496348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276633F0();
  if ((v16 & 1) != 0 && sub_22718CBA4(v15, a2))
  {
    return (*(v7 + 16))(a3, a1, v6);
  }

  sub_22766A6C0();
  (*(v7 + 16))(v10, a1, v6);

  v18 = sub_22766B380();
  v19 = sub_22766C890();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v11;
    v21 = v20;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v21 = 136446722;
    sub_226F48DB4();
    v22 = sub_22766C610();
    v24 = sub_226E97AE8(v22, v23, &v36);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2080;
    sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v25 = sub_22766D140();
    v27 = v26;
    (*(v7 + 8))(v10, v6);
    v28 = sub_226E97AE8(v25, v27, &v36);

    *(v21 + 24) = v28;
    _os_log_impl(&dword_226E8E000, v18, v19, "Bundle load status must be equal to %{public}s to proceed. Failing requirement for bundle: %{mask.hash}s", v21, 0x20u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);

    (*(v35 + 8))(v14, v34);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    (*(v35 + 8))(v14, v11);
  }

  v30 = sub_227663190();
  sub_2274A72CC(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D4FD20], v30);
  return swift_willThrow();
}

uint64_t sub_227496770@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227663480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227663470();
  sub_22766A6C0();
  (*(v4 + 16))(v7, a1, v3);
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v8;
    v15 = v14;
    v22 = swift_slowAlloc();
    v26 = v22;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v16 = sub_22766D140();
    v24 = v1;
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    v19 = sub_226E97AE8(v16, v18, &v26);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_226E8E000, v12, v13, "Copying bundle with new load status: %{mask.hash}s", v15, 0x16u);
    v20 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AA9A450](v20, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    return (*(v25 + 8))(v11, v23);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v25 + 8))(v11, v8);
  }
}

uint64_t sub_227496AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v121 = a2;
  v3 = sub_227663480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v136 = *(v7 - 8);
  v8 = *(v136 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v126 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v125 = &v103 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v103 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v103 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v127 = &v103 - v17;
  MEMORY[0x28223BE20](v16);
  v116 = &v103 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v133 = *(v119 - 8);
  v117 = *(v133 + 64);
  v19 = MEMORY[0x28223BE20](v119);
  v118 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v128 = &v103 - v22;
  MEMORY[0x28223BE20](v21);
  v120 = &v103 - v23;
  v24 = sub_22766B390();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v115 = 0x80000002276A12E0;
  sub_22766B370();
  (*(v25 + 8))(v28, v24);
  v29 = sub_226F4A7A8(&unk_283A91B68);
  v30 = *(v4 + 16);
  v111 = v4 + 16;
  v113 = v30;
  v104 = v6;
  v30(v6, a1, v3);
  v31 = v4;
  v32 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v109 = *(v4 + 80);
  v110 = v32 + v5;
  v33 = v32;
  v106 = v32;
  v34 = (v32 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = *(v31 + 32);
  v107 = v31 + 32;
  v108 = v36;
  v135 = v3;
  v36(v35 + v33, v6, v3);
  *(v35 + v34) = v29;
  v37 = v125;
  sub_227669280();
  v38 = v136;
  v130 = *(v136 + 16);
  v131 = (v136 + 16);
  v39 = v126;
  v130(v126, v37, v7);
  v40 = *(v38 + 80);
  v105 = ((v40 + 16) & ~v40) + v8;
  v134 = ((v40 + 16) & ~v40);
  v41 = (v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v129 = v40;
  v42 = swift_allocObject();
  v43 = *(v38 + 32);
  v43(v42 + ((v40 + 16) & ~v40), v39, v7);
  v44 = v43;
  v123 = v43;
  v45 = (v42 + v41);
  v46 = v137;
  *v45 = sub_2274A3870;
  v45[1] = v46;

  v47 = v132;
  sub_227669270();
  v48 = *(v38 + 8);
  v49 = v125;
  v48(v125, v7);
  v124 = v48;
  v136 = v38 + 8;
  v130(v49, v47, v7);
  v50 = swift_allocObject();
  v51 = v49;
  v44(&v134[v50], v49, v7);
  v122 = v38 + 32;
  v52 = (v50 + v41);
  v53 = v137;
  *v52 = sub_2274A38D0;
  v52[1] = v53;

  v54 = v114;
  v55 = v135;
  sub_227669270();
  v56 = v132;
  v48(v132, v7);
  v57 = v104;
  v113(v104, v112, v55);
  v58 = v110;
  v59 = swift_allocObject();
  v108(v59 + v106, v57, v55);
  *(v59 + v58) = 1;
  sub_227669280();
  v60 = v130;
  v130(v51, v56, v7);
  v61 = swift_allocObject();
  v62 = v134;
  v63 = v51;
  v64 = v123;
  v123(&v134[v61], v63, v7);
  v65 = v126;
  v60(v126, v54, v7);
  v66 = swift_allocObject();
  v64(&v62[v66], v65, v7);
  v67 = (v66 + v41);
  *v67 = sub_2274A3920;
  v67[1] = v61;
  v68 = v127;
  sub_227669270();
  v69 = v124;
  v124(v132, v7);
  v70 = v54;
  v69(v54, v7);
  v71 = v69;
  v72 = v130;
  v130(v70, v68, v7);
  v73 = swift_allocObject();
  v74 = v70;
  v75 = v123;
  v123(&v134[v73], v74, v7);
  v76 = (v73 + v41);
  v77 = v137;
  *v76 = sub_2274A3934;
  v76[1] = v77;

  v78 = v116;
  sub_227669270();
  v79 = v127;
  v71(v127, v7);
  v80 = v79;
  v81 = v78;
  v72(v79, v78, v7);
  v82 = swift_allocObject();
  v75(&v134[v82], v80, v7);
  v83 = (v82 + v41);
  *v83 = sub_2274A393C;
  v83[1] = v77;

  v84 = v128;
  sub_227669270();
  v124(v81, v7);
  v85 = swift_allocObject();
  v85[2] = 0xD000000000000028;
  v85[3] = v115;
  v85[4] = 317;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_226F323BC;
  *(v86 + 24) = v85;
  v87 = v133;
  v135 = *(v133 + 16);
  v89 = v118;
  v88 = v119;
  v135(v118, v84, v119);
  v90 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v132 = v90;
  v136 = (v117 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v131 = *(v87 + 32);
  v131(v91 + v90, v89, v88);
  v92 = (v91 + v136);
  *v92 = sub_226F323DC;
  v92[1] = v86;
  v93 = v120;
  sub_227669270();
  v94 = *(v87 + 8);
  v133 = v87 + 8;
  v134 = v94;
  v95 = v128;
  (v94)(v128, v88);
  v96 = swift_allocObject();
  v97 = v137;
  *(v96 + 16) = sub_2274A7DA0;
  *(v96 + 24) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_226EB4A28;
  *(v98 + 24) = v96;
  v135(v95, v93, v88);
  v99 = v136;
  v100 = swift_allocObject();
  v131(&v132[v100], v95, v88);
  v101 = (v100 + v99);
  *v101 = sub_226EBFB9C;
  v101[1] = v98;

  sub_227669270();
  return (v134)(v93, v88);
}

uint64_t sub_227497710@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t@<X0>, uint64_t@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - v12;
  v13 = *(a2 + 42);
  v30 = *(a2 + 43);
  v28 = __swift_project_boxed_opaque_existential_0(a2 + 39, v13);
  v14 = a1;
  v15 = v5;
  (*(v6 + 16))(v8, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v18 + v16;
  v20 = v15;
  (*(v6 + 32))(v19, v8, v15);
  *(v18 + v17) = a2;

  v21 = v29;
  sub_226ECF5D8(sub_2273206B4, v18, v13, v20, v30, v29);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273206EC;
  v26[1] = a2;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_227497A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  return sub_227669270();
}

uint64_t sub_227497B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v136 = a2;
  v3 = sub_227663480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v151 = *(v121 - 8);
  v7 = *(v151 + 64);
  v8 = MEMORY[0x28223BE20](v121);
  v122 = v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v143 = v110 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v142 = v110 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v148 = v110 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v144 = v110 - v16;
  MEMORY[0x28223BE20](v15);
  v123 = v110 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v130 = *(v127 - 8);
  v18 = *(v130 + 64);
  MEMORY[0x28223BE20](v127);
  v124 = v110 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8638, &unk_227684F00);
  v129 = *(v131 - 8);
  v128 = *(v129 + 64);
  v20 = MEMORY[0x28223BE20](v131);
  v126 = v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v125 = v110 - v22;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v150 = *(v134 - 8);
  v132 = *(v150 + 64);
  v23 = MEMORY[0x28223BE20](v134);
  v133 = v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v145 = v110 - v26;
  MEMORY[0x28223BE20](v25);
  v135 = v110 - v27;
  v28 = sub_226F4A7A8(&unk_283A94300);
  v29 = *(v4 + 16);
  v116 = v4 + 16;
  v119 = v29;
  v111 = v6;
  v30 = v3;
  v29(v6, a1, v3);
  v31 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v112 = *(v4 + 80);
  v118 = v31 + v5;
  v115 = v31;
  v32 = (v31 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v114 = *(v4 + 32);
  v114(v33 + v31, v6, v3);
  *(v33 + v32) = v28;
  v34 = v142;
  sub_227669280();
  v35 = v151;
  v36 = v151 + 16;
  v147 = *(v151 + 16);
  v37 = v143;
  v38 = v121;
  v147(v143, v34, v121);
  v39 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v146 = *(v35 + 80);
  v113 = v39 + v7;
  v137 = v39;
  v140 = (v39 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v138 = *(v35 + 32);
  v139 = v35 + 32;
  v138(v40 + v39, v37, v38);
  v41 = (v40 + ((v39 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v149;
  *v41 = sub_2274A6EC4;
  v41[1] = v42;

  v43 = v30;
  sub_227669270();
  v44 = *(v35 + 8);
  v151 = v35 + 8;
  v117 = v44;
  v45 = v38;
  v44(v34, v38);
  v46 = v111;
  v141 = v43;
  v119(v111, v120, v43);
  v47 = v118;
  v48 = swift_allocObject();
  v114(v48 + v115, v46, v43);
  *(v48 + v47) = 3;
  v49 = v34;
  sub_227669280();
  v50 = v143;
  v51 = v45;
  v52 = v147;
  v110[1] = v36;
  v147(v143, v49, v45);
  v53 = swift_allocObject();
  v54 = v137;
  v55 = v138;
  v138(v53 + v137, v50, v45);
  v56 = v122;
  v52(v122, v148, v45);
  v57 = v140;
  v58 = swift_allocObject();
  v55(v58 + v54, v56, v45);
  v59 = (v58 + v57);
  *v59 = sub_2274A7E0C;
  v59[1] = v53;
  v60 = v144;
  sub_227669270();
  v61 = v117;
  v117(v142, v51);
  v62 = v148;
  v61(v148, v51);
  v147(v62, v60, v51);
  v63 = v140;
  v64 = swift_allocObject();
  v65 = v64 + v54;
  v66 = v51;
  v67 = v138;
  v138(v65, v62, v51);
  v68 = (v64 + v63);
  v69 = v149;
  *v68 = sub_2274A7014;
  v68[1] = v69;

  v70 = v123;
  sub_227669270();
  v71 = v144;
  v61(v144, v66);
  v72 = v70;
  v147(v71, v70, v66);
  v73 = swift_allocObject();
  v67(v73 + v137, v71, v66);
  v74 = (v73 + v63);
  *v74 = sub_2274A701C;
  v74[1] = v69;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  v75 = v124;
  sub_227669270();
  v61(v72, v66);
  v76 = *__swift_project_boxed_opaque_existential_0(v69 + 17, *(v69 + 20));
  v153[3] = type metadata accessor for AssetRequestHandler();
  v153[4] = &off_283AAEA48;
  v153[0] = v76;
  sub_226E91B50(v153, &v152);
  v77 = swift_allocObject();
  sub_226E92AB8(&v152, v77 + 16);

  __swift_destroy_boxed_opaque_existential_0(v153);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v78 = sub_22766C950();
  sub_227669A50();
  sub_226E9CFD0(&qword_27D7BDF40, &qword_27D7B9360, qword_22767B900);
  v79 = v125;
  v80 = v127;
  sub_227669230();

  (*(v130 + 8))(v75, v80);
  v81 = swift_allocObject();
  *(v81 + 16) = nullsub_1;
  *(v81 + 24) = 0;
  v82 = v129;
  v83 = v126;
  v84 = v131;
  (*(v129 + 16))(v126, v79, v131);
  v85 = v82;
  v86 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v87 = (v128 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (*(v85 + 32))(v88 + v86, v83, v84);
  v89 = (v88 + v87);
  *v89 = sub_2274A7D84;
  v89[1] = v81;
  v90 = v145;
  sub_227669270();
  (*(v85 + 8))(v79, v84);
  v91 = swift_allocObject();
  v91[2] = 0xD000000000000028;
  v91[3] = 0x80000002276A12E0;
  v91[4] = 331;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_226F33024;
  *(v92 + 24) = v91;
  v93 = v150;
  v148 = *(v150 + 16);
  v94 = v133;
  v95 = v134;
  (v148)(v133, v90, v134);
  v96 = v93;
  v97 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v146 = v97;
  v151 = (v132 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v144 = *(v96 + 32);
  (v144)(v98 + v97, v94, v95);
  v99 = (v98 + v151);
  *v99 = sub_226F32FE8;
  v99[1] = v92;
  v100 = v135;
  sub_227669270();
  v101 = *(v96 + 8);
  v150 = v96 + 8;
  v147 = v101;
  v102 = v145;
  (v101)(v145, v95);
  v103 = swift_allocObject();
  v104 = v149;
  *(v103 + 16) = sub_2274A7054;
  *(v103 + 24) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_226F5B0EC;
  *(v105 + 24) = v103;
  (v148)(v102, v100, v95);
  v106 = v151;
  v107 = swift_allocObject();
  (v144)(v107 + v146, v102, v95);
  v108 = (v107 + v106);
  *v108 = sub_226F32FEC;
  v108[1] = v105;

  sub_227669270();
  return (v147)(v100, v95);
}

uint64_t sub_227498A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  return sub_227669280();
}

uint64_t sub_227498BD8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t@<X0>, uint64_t@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - v12;
  v13 = *(a2 + 42);
  v30 = *(a2 + 43);
  v28 = __swift_project_boxed_opaque_existential_0(a2 + 39, v13);
  v14 = a1;
  v15 = v5;
  (*(v6 + 16))(v8, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v18 + v16;
  v20 = v15;
  (*(v6 + 32))(v19, v8, v15);
  *(v18 + v17) = a2;

  v21 = v29;
  sub_226ECF5D8(sub_2273206B4, v18, v13, v20, v30, v29);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273206EC;
  v26[1] = a2;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_227498EF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = a2[42];
  v8 = a2[43];
  __swift_project_boxed_opaque_existential_0(a2 + 39, v9);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_226ECF5D8(sub_2274A7D88, v11, v9, v12, v8, v15);
}

uint64_t sub_227499090@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v39 = a3;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = v8;
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9E8, &unk_227684F10);
  v37 = *(v10 - 8);
  v38 = v10;
  v36 = *(v37 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v30 - v13;
  v14 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v32 = *(v6 + 16);
  v32(v9, a1, v5);
  v15 = *(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = *(v6 + 32);
  v17(v16 + ((v15 + 24) & ~v15), v9, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F0, qword_2276873A0);
  v18 = v34;
  sub_227669280();
  v32(v9, v33, v5);
  v19 = (v15 + 16) & ~v15;
  v20 = (v31 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v17(v21 + v19, v9, v5);
  *(v21 + v20) = v14;
  v23 = v37;
  v22 = v38;
  v24 = v35;
  (*(v37 + 16))(v35, v18, v38);
  v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v26 = (v36 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v23 + 32))(v27 + v25, v24, v22);
  v28 = (v27 + v26);
  *v28 = sub_2274A70C8;
  v28[1] = v21;

  sub_227669270();
  return (*(v23 + 8))(v18, v22);
}

uint64_t sub_227499410(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_227663480();
  v9 = *(v8 - 8);
  v197 = v8;
  v198 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v193 = v11;
  v194 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v191 = *(v165 - 8);
  v12 = *(v191 + 64);
  v13 = MEMORY[0x28223BE20](v165);
  v177 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v164 = &v151 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v185 = &v151 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v166 = &v151 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v167 = &v151 - v21;
  MEMORY[0x28223BE20](v20);
  v168 = &v151 - v22;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8638, &unk_227684F00);
  v172 = *(v174 - 8);
  v23 = *(v172 + 64);
  v24 = MEMORY[0x28223BE20](v174);
  v170 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v25;
  MEMORY[0x28223BE20](v24);
  v171 = &v151 - v26;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v195 = *(v192 - 8);
  v27 = *(v195 + 64);
  v28 = MEMORY[0x28223BE20](v192);
  v187 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v182 = &v151 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v190 = &v151 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v183 = &v151 - v34;
  MEMORY[0x28223BE20](v33);
  v173 = &v151 - v35;
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  v37 = a3;
  v38 = a3[54];

  v196 = a4;
  v39 = sub_227663410();
  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_226EB496C;
  *(v42 + 24) = v36;
  v43 = *(v38 + 16);
  v199 = v38;
  v200 = v39;
  v201 = v41;
  v202 = sub_226EB4354;
  v203 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF38, &qword_227687208);
  sub_2276696A0();

  if (v204 == 1)
  {
    v45 = __swift_project_boxed_opaque_existential_0(v37 + 2, v37[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
    v46 = v198;
    v47 = *(v198 + 72);
    v48 = *(v198 + 80);
    v49 = (v48 + 32) & ~v48;
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_227670CD0;
    v188 = *(v46 + 16);
    v189 = v46 + 16;
    v51 = v197;
    v188(v50 + v49, v196, v197);
    v52 = sub_226F514B0(v50);
    swift_setDeallocating();
    (*(v46 + 8))(v50 + v49, v51);
    swift_deallocClassInstance();
    v53 = *v45;
    v54 = v182;
    sub_22709CAE0(v52, v182);

    v55 = swift_allocObject();
    v55[2] = 0xD000000000000028;
    v55[3] = 0x80000002276A12E0;
    v55[4] = 352;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_226F33024;
    *(v56 + 24) = v55;
    v57 = v195;
    v58 = *(v195 + 16);
    v162 = v195 + 16;
    v163 = v58;
    v59 = v187;
    v178 = v12;
    v60 = v192;
    (v58)(v187, v54);
    v61 = *(v57 + 80);
    v161 = v61;
    v62 = (v61 + 16) & ~v61;
    v159 = v62;
    v63 = (v27 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v153 = v63;
    v64 = swift_allocObject();
    v65 = *(v57 + 32);
    v158 = v57 + 32;
    v160 = v65;
    v65(v64 + v62, v59, v60);
    v66 = (v64 + v63);
    *v66 = sub_226F32FE8;
    v66[1] = v56;
    sub_227669270();
    v67 = *(v57 + 8);
    v195 = v57 + 8;
    v184 = v67;
    v67(v54, v60);
    v68 = v37[25];
    v69 = v37;
    v176 = v37;
    __swift_project_boxed_opaque_existential_0(v37 + 22, v68);
    v70 = off_283ACB2D0;
    type metadata accessor for AssetRequestProvider();
    v71 = v164;
    v72 = v196;
    v70(v196, 33, 0, 1, v164);
    v73 = v194;
    v74 = v197;
    v188(v194, v72, v197);
    v180 = v48;
    v157 = (v48 + 24) & ~v48;
    v75 = swift_allocObject();
    *(v75 + 16) = v69;
    v181 = *(v198 + 32);
    v198 += 32;
    v181(v75 + ((v48 + 24) & ~v48), v73, v74);
    v76 = v191;
    v175 = *(v191 + 16);
    v186 = v191 + 16;
    v77 = v177;
    v78 = v165;
    v175(v177, v71, v165);
    v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v187 = *(v76 + 80);
    v156 = v79 + v178;
    v80 = (v79 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
    v154 = v80;
    v81 = swift_allocObject();
    v82 = *(v76 + 32);
    v179 = v79;
    v82(v81 + v79, v77, v78);
    v178 = v76 + 32;
    v83 = (v81 + v80);
    *v83 = sub_2274A5220;
    v83[1] = v75;

    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    v84 = v185;
    sub_227669270();
    v152 = *(v76 + 8);
    v191 = v76 + 8;
    v152(v71, v78);
    v85 = v84;
    v86 = v175;
    v175(v71, v84, v78);
    v87 = swift_allocObject();
    v88 = v82;
    v155 = v82;
    v82(v87 + v79, v71, v78);
    v89 = v182;
    v90 = v190;
    v91 = v192;
    v163(v182, v190, v192);
    v92 = v153;
    v93 = swift_allocObject();
    v160(v93 + v159, v89, v91);
    v94 = (v93 + v92);
    *v94 = sub_2274A5268;
    v94[1] = v87;
    v95 = v166;
    sub_227669270();
    v96 = v152;
    v152(v85, v78);
    v184(v90, v91);
    v97 = swift_allocObject();
    v98 = v176;
    *(v97 + 16) = sub_2274A52A4;
    *(v97 + 24) = v98;
    v86(v85, v95, v78);
    v99 = v154;
    v100 = swift_allocObject();
    v88(v100 + v179, v85, v78);
    v101 = (v100 + v99);
    *v101 = sub_227087D64;
    v101[1] = v97;

    sub_227669270();
    v96(v95, v78);
    v102 = v98[42];
    v182 = v98[43];
    v103 = v98;
    __swift_project_boxed_opaque_existential_0(v98 + 39, v102);
    v104 = v194;
    v105 = v197;
    v188(v194, v196, v197);
    v106 = (v180 + 16) & ~v180;
    v107 = (v193 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    v181(v108 + v106, v104, v105);
    *(v108 + v107) = v103;

    sub_226ECF5D8(sub_2274A52D4, v108, v102, v177, v182, v95);

    v109 = v185;
    v175(v185, v95, v78);
    v110 = swift_allocObject();
    v155(v110 + v179, v109, v78);
    v111 = v190;
    v112 = v183;
    v113 = v192;
    v163(v190, v183, v192);
    v114 = v153;
    v115 = swift_allocObject();
    v116 = v111;
    v117 = v113;
    v160(v115 + v159, v116, v113);
    v118 = (v115 + v114);
    *v118 = sub_2274A7DAC;
    v118[1] = v110;
    v119 = v167;
    sub_227669270();
    v120 = v152;
    v152(v95, v78);
    v184(v112, v117);
    v121 = v194;
    v122 = v197;
    v188(v194, v196, v197);
    v123 = v157;
    v124 = swift_allocObject();
    v125 = v176;
    *(v124 + 16) = v176;
    v181(v124 + v123, v121, v122);
    v126 = swift_allocObject();
    *(v126 + 16) = sub_2274A52EC;
    *(v126 + 24) = v124;
    v175(v95, v119, v78);
    v127 = v154;
    v128 = swift_allocObject();
    v155(v128 + v179, v95, v78);
    v129 = (v128 + v127);
    *v129 = sub_2274A536C;
    v129[1] = v126;

    v130 = v168;
    sub_227669270();
    v131 = v120;
    v120(v119, v78);
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v132 = v125;

    v133 = sub_22766C950();
    sub_227669A50();
    sub_226E9CFD0(&qword_27D7BDF40, &qword_27D7B9360, qword_22767B900);
    v134 = v171;
    sub_227669230();

    v131(v130, v78);
    v135 = swift_allocObject();
    *(v135 + 16) = nullsub_1;
    *(v135 + 24) = 0;
    v136 = v172;
    v137 = v170;
    v138 = v174;
    (*(v172 + 16))(v170, v134, v174);
    v139 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v140 = (v169 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    (*(v136 + 32))(v141 + v139, v137, v138);
    v142 = (v141 + v140);
    *v142 = sub_226F32BDC;
    v142[1] = v135;
    v143 = v173;
    sub_227669270();
    (*(v136 + 8))(v134, v138);
    v144 = v194;
    v145 = v197;
    v188(v194, v196, v197);
    v146 = v157;
    v147 = swift_allocObject();
    *(v147 + 16) = v132;
    v181(v147 + v146, v144, v145);

    v148 = v192;
    v149 = sub_227669290();
    v150 = swift_allocObject();
    *(v150 + 16) = sub_2274A53E4;
    *(v150 + 24) = v147;

    v149(sub_226E9F7B0, v150);

    return (v184)(v143, v148);
  }

  return result;
}

uint64_t sub_22749A764@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[42];
  v7 = a2[43];
  __swift_project_boxed_opaque_existential_0(a2 + 39, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;

  sub_226ECF5D8(sub_2274A649C, v8, v6, MEMORY[0x277D84F78] + 8, v7, a3);
}

uint64_t sub_22749A830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;

  v9 = sub_2274A5FF0(v8, a2);

  __swift_project_boxed_opaque_existential_0((a2 + 392), *(a2 + 416));
  v10 = off_283AA0130[0];
  type metadata accessor for AssetBundleProgressPublisher();
  v10(v9, a3);

  *a4 = v7;
  return result;
}

uint64_t sub_22749A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v37 = a3;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v35 = *(v8 - 8);
  v36 = v8;
  v34 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v31 = *(v6 + 16);
  v31(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v29 = *(v6 + 32);
  v29(v13 + ((v12 + 24) & ~v12), &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = a2;

  v15 = v30;
  sub_227669270();
  v31(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v5);
  v16 = (v12 + 16) & ~v12;
  v17 = swift_allocObject();
  v29(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2274A5BBC;
  *(v18 + 24) = v17;
  v19 = v35;
  v20 = v36;
  v21 = v33;
  (*(v35 + 16))(v33, v15, v36);
  v22 = v19;
  v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = (v34 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v23, v21, v20);
  v26 = (v25 + v24);
  *v26 = sub_226F5B0C0;
  v26[1] = v18;

  sub_227669270();
  return (*(v22 + 8))(v15, v20);
}

uint64_t sub_22749AC94(void *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v116 = a2;
  v110 = a1;
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v117 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v108 = *(v10 - 8);
  v109 = v10;
  v106 = *(v108 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v105 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = (v95 - v13);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v122 = *(v118 - 8);
  v104 = *(v122 + 64);
  v14 = MEMORY[0x28223BE20](v118);
  v107 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v96 = v95 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v98 = v95 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v99 = v95 - v21;
  MEMORY[0x28223BE20](v20);
  v100 = v95 - v22;
  v23 = sub_22766B390();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v24 + 8))(v27, v23);
  v114 = v4;
  v28 = v4[42];
  v97 = v4[43];
  v95[1] = __swift_project_boxed_opaque_existential_0(v4 + 39, v28);
  v29 = *(v7 + 16);
  v119 = v7 + 16;
  v120 = v29;
  v115 = a3;
  v29(v9, a3, v6);
  v101 = *(v7 + 80);
  v30 = (v101 + 16) & ~v101;
  v31 = v117;
  v102 = v30;
  v32 = swift_allocObject();
  v121 = *(v7 + 32);
  v121(v32 + v30, v9, v6);
  v113 = v7 + 32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v34 = v103;
  sub_226ECF5D8(sub_2274A5454, v32, v28, v33, v97, v103);

  v111 = v9;
  v112 = v6;
  v120(v9, a3, v6);
  v35 = (v101 + 25) & ~v101;
  v97 = v31 + 7;
  v36 = swift_allocObject();
  v37 = v110;
  *(v36 + 16) = v110;
  v116 &= 1u;
  *(v36 + 24) = v116;
  v121(v36 + v35, v9, v6);
  *(v36 + ((v31 + 7 + v35) & 0xFFFFFFFFFFFFFFF8)) = v114;
  v39 = v108;
  v38 = v109;
  v40 = v105;
  (*(v108 + 16))(v105, v34, v109);
  v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v42 = (v106 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v39 + 32))(v43 + v41, v40, v38);
  v44 = (v43 + v42);
  *v44 = sub_2274A54D0;
  v44[1] = v36;
  sub_226F04AAC(v37, v116);

  v45 = v96;
  sub_227669270();
  (*(v39 + 8))(v34, v38);
  v46 = v111;
  v47 = v112;
  v120(v111, v115, v112);
  v48 = v102;
  v49 = v101;
  v50 = swift_allocObject();
  v121(v50 + v48, v46, v47);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_2274A55AC;
  *(v51 + 24) = v50;
  v52 = v122;
  v53 = *(v122 + 16);
  v108 = v122 + 16;
  v109 = v53;
  v54 = v107;
  v55 = v45;
  v56 = v118;
  v53(v107, v45, v118);
  v57 = v52;
  v58 = *(v52 + 80);
  v105 = ((v58 + 16) & ~v58);
  v106 = v58;
  v59 = v105;
  v60 = &v105[v104 + 7] & 0xFFFFFFFFFFFFFFF8;
  v102 = v60;
  v61 = swift_allocObject();
  v103 = *(v57 + 32);
  v104 = v57 + 32;
  (v103)(&v59[v61], v54, v56);
  v62 = (v61 + v60);
  *v62 = sub_226F5AAF8;
  v62[1] = v51;
  v63 = v98;
  sub_227669270();
  v64 = *(v57 + 8);
  v122 = v57 + 8;
  v107 = v64;
  v65 = v55;
  (v64)(v55, v56);
  v67 = v111;
  v66 = v112;
  v120(v111, v115, v112);
  v68 = swift_allocObject();
  v69 = v110;
  *(v68 + 16) = v110;
  LOBYTE(v54) = v116;
  *(v68 + 24) = v116;
  v70 = v114;
  *(v68 + 32) = v114;
  v121(v68 + ((v49 + 40) & ~v49), v67, v66);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_2274A55CC;
  *(v71 + 24) = v68;
  v72 = v118;
  v109(v65, v63, v118);
  v73 = v102;
  v74 = swift_allocObject();
  (v103)(&v105[v74], v65, v72);
  v75 = (v74 + v73);
  *v75 = sub_227086964;
  v75[1] = v71;
  sub_226F04AAC(v69, v54);
  v76 = v70;

  v77 = v99;
  sub_227669270();
  (v107)(v63, v72);
  v78 = v111;
  v79 = v112;
  v120(v111, v115, v112);
  v80 = (v49 + 24) & ~v49;
  v81 = (v97 + v80) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  *(v82 + 16) = v76;
  v121(v82 + v80, v78, v79);
  v83 = v82 + v81;
  *v83 = v69;
  LOBYTE(v76) = v116;
  *(v83 + 8) = v116;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_2274A5648;
  *(v84 + 24) = v82;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_226F5B0EC;
  *(v85 + 24) = v84;
  v86 = v118;
  v109(v63, v77, v118);
  v87 = v102;
  v88 = swift_allocObject();
  (v103)(&v105[v88], v63, v86);
  v89 = (v88 + v87);
  *v89 = sub_226F32FEC;
  v89[1] = v85;
  sub_226F04AAC(v69, v76);

  v90 = v100;
  sub_227669270();
  v91 = v107;
  (v107)(v77, v86);
  v92 = sub_227669290();
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  *(v93 + 24) = 0;
  v92(sub_226EB4544, v93);

  return v91(v90, v86);
}

uint64_t sub_22749B800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = *__swift_project_boxed_opaque_existential_0((a3 + 136), *(a3 + 160));

  sub_2272FBA14(a4, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_227362FCC;
  *(v15 + 24) = v13;
  v16 = sub_227669290();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2274A5C64;
  *(v17 + 24) = v15;

  v16(sub_226E93814, v17);

  return (*(v9 + 8))(v12, v8);
}

void sub_22749B9D4(uint64_t a1, void (*a2)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  sub_22766D410();
  a2(v3, v4);
  sub_226EB4548(v3, v4);
}

id sub_22749BA58(void *a1, uint64_t a2, uint64_t a3)
{
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v5);
  v94 = &v91 - v7;
  v99 = sub_227664AE0();
  v8 = *(*(v99 - 1) + 64);
  v9 = MEMORY[0x28223BE20](v99);
  v100 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v91 - v11;
  v12 = sub_2276639B0();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v107 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v91 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v91 - v19;
  v21 = sub_22766B390();
  v109 = *(v21 - 8);
  v22 = *(v109 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v110 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v97 = &v91 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v91 - v27;
  sub_22766A6C0();
  v29 = v13[2];
  v108 = a2;
  v101 = v29;
  v102 = v13 + 2;
  v29(v20, a2, v12);
  v30 = a1;
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();

  v33 = os_log_type_enabled(v31, v32);
  v103 = v12;
  v104 = v13;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v105 = v21;
    v35 = v34;
    v36 = swift_slowAlloc();
    v106 = a1;
    v37 = v36;
    v113 = v36;
    *v35 = 141558530;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2080;
    sub_2274A72CC(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v38 = sub_22766D140();
    v39 = v12;
    v41 = v40;
    v42 = v13[1];
    v42(v20, v39);
    v43 = sub_226E97AE8(v38, v41, &v113);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2082;
    swift_getErrorValue();
    v44 = MEMORY[0x22AA995D0](v111, v112);
    v46 = sub_226E97AE8(v44, v45, &v113);

    *(v35 + 24) = v46;
    _os_log_impl(&dword_226E8E000, v31, v32, "Bundle - Load of asset failed. Asset request: %{mask.hash}s, error: %{public}s", v35, 0x20u);
    swift_arrayDestroy();
    v47 = v37;
    a1 = v106;
    MEMORY[0x22AA9A450](v47, -1, -1);
    v48 = v35;
    v21 = v105;
    MEMORY[0x22AA9A450](v48, -1, -1);
  }

  else
  {

    v42 = v13[1];
    v42(v20, v12);
  }

  v49 = *(v109 + 8);
  v49(v28, v21);
  v50 = v108;
  v51 = sub_227663960();
  v53 = v110;
  v54 = v107;
  if (!v52)
  {
LABEL_18:
    swift_willThrow();
    return a1;
  }

  v55 = v52;
  v91 = v51;
  if (sub_2274A50A0())
  {
    v56 = v98;
    sub_227663970();
    v57 = v56;
    v58 = v100;
    sub_2274A794C(v57, v100, MEMORY[0x277D50D68]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v99 = v49;
        v110 = v42;
        v105 = v21;
        v106 = a1;
        sub_2274A7C4C(v58, MEMORY[0x277D50D68]);
        v60 = v97;
        sub_22766A6C0();
        v61 = v92;
        v62 = v103;
        v101(v92, v50, v103);

        v63 = sub_22766B380();
        v64 = sub_22766C8B0();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v113 = v108;
          *v65 = 136446722;
          v66 = v91;
          *(v65 + 4) = sub_226E97AE8(v91, v55, &v113);
          *(v65 + 12) = 2160;
          *(v65 + 14) = 1752392040;
          *(v65 + 22) = 2080;
          sub_2274A72CC(&qword_28139BCA0, MEMORY[0x277D501C8]);
          v67 = sub_22766D140();
          v69 = v68;
          (v110)(v61, v62);
          v70 = sub_226E97AE8(v67, v69, &v113);

          *(v65 + 24) = v70;
          _os_log_impl(&dword_226E8E000, v63, v64, "Bundle - Failing bundle %{public}s due to key request failure: %{mask.hash}s", v65, 0x20u);
          v71 = v108;
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v71, -1, -1);
          MEMORY[0x22AA9A450](v65, -1, -1);

          v99(v97, v105);
        }

        else
        {

          (v110)(v61, v62);
          v99(v60, v105);
          v66 = v91;
        }

        v86 = *__swift_project_boxed_opaque_existential_0((v93 + 56), *(v93 + 80));
        v87 = v94;
        sub_226F2E75C(v66, v55, v94);

        v88 = v96;
        v89 = sub_227669290();
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        v89(sub_226EB4544, v90);

        (*(v95 + 8))(v87, v88);
        a1 = v106;
      }

      else
      {
      }
    }

    else
    {

      sub_2274A7C4C(v58, MEMORY[0x277D50D68]);
    }

    goto LABEL_18;
  }

  v99 = v49;

  sub_22766A6C0();
  v72 = v103;
  v101(v54, v50, v103);
  v73 = sub_22766B380();
  v74 = sub_22766C8B0();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v105 = v21;
    v77 = v76;
    v113 = v76;
    *v75 = 141558274;
    *(v75 + 4) = 1752392040;
    *(v75 + 12) = 2080;
    sub_2274A72CC(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v78 = sub_22766D140();
    v79 = v42;
    v81 = v80;
    v79(v54, v72);
    v82 = sub_226E97AE8(v78, v81, &v113);

    *(v75 + 14) = v82;
    _os_log_impl(&dword_226E8E000, v73, v74, "Bundle - Failed %{mask.hash}s does not fail bundle and is ignored.", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x22AA9A450](v77, -1, -1);
    MEMORY[0x22AA9A450](v75, -1, -1);

    v83 = v110;
    v84 = v105;
  }

  else
  {

    v42(v54, v72);
    v83 = v53;
    v84 = v21;
  }

  return (v99)(v83, v84);
}

uint64_t sub_22749C4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v31);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA10, &qword_227687440);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v29 - v12;
  v13 = *(v1 + 336);
  v14 = *(v2 + 344);
  __swift_project_boxed_opaque_existential_0((v2 + 312), v13);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2274A7314, v2, v13, v15, v14, v8);

  v16 = v31;
  (*(v3 + 16))(v6, v8, v31);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = (v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v17, v6, v16);
  v20 = (v19 + v18);
  *v20 = sub_2274A7448;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF70, &unk_227687448);
  v21 = v30;
  sub_227669270();
  (*(v3 + 8))(v8, v16);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22749D18C;
  *(v22 + 24) = 0;
  v24 = v32;
  v23 = v33;
  (*(v9 + 16))(v32, v21, v33);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = swift_allocObject();
  (*(v9 + 32))(v26 + v25, v24, v23);
  v27 = (v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_2274A7478;
  v27[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  sub_227669270();
  return (*(v9 + 8))(v21, v23);
}

uint64_t sub_22749C8F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(*__swift_project_boxed_opaque_existential_0((a2 + 256), *(a2 + 280)) + 32);
  result = sub_2276696A0();
  if (!v3)
  {
    v71 = a3;
    v78 = 0;
    v8 = v75;
    v9 = v76;
    v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v14 = v10[3];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v11;
    v20 = v12;

    sub_22766A070();
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    swift_getKeyPath();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v75 = v8;
    v76 = v9;
    v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v72 = v21;
    v22 = sub_22766C820();
    sub_226E93170(&v75, v73, &unk_27D7BC990, &qword_227670A30);
    v23 = v74;
    if (v74)
    {
      v24 = __swift_project_boxed_opaque_existential_0(v73, v74);
      v25 = *(v23 - 8);
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](v24);
      v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28);
      v29 = sub_22766D170();
      (*(v25 + 8))(v28, v23);
      __swift_destroy_boxed_opaque_existential_0(v73);
    }

    else
    {
      v29 = 0;
    }

    v30 = objc_opt_self();
    v31 = [v30 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v33 = [objc_allocWithZone(v32) initWithLeftExpression:v22 rightExpression:v31 modifier:0 type:4 options:0];

    sub_226E97D1C(&v75, &unk_27D7BC990, &qword_227670A30);
    v34 = qword_2813B2078;
    swift_beginAccess();
    v35 = v33;
    v36 = sub_22766A080();
    v38 = v37;
    MEMORY[0x22AA985C0]();
    if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v36(&v75, 0);
    swift_endAccess();

    swift_getKeyPath();
    v39 = sub_227664570();
    v77 = MEMORY[0x277D83B88];
    v75 = v39;

    v40 = sub_22766C820();
    sub_226E93170(&v75, v73, &unk_27D7BC990, &qword_227670A30);
    v41 = v74;
    if (v74)
    {
      v42 = __swift_project_boxed_opaque_existential_0(v73, v74);
      v72 = v34;
      v70 = v30;
      v43 = v32;
      v44 = *(v41 - 8);
      v45 = *(v44 + 64);
      MEMORY[0x28223BE20](v42);
      v47 = &v69 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v47);
      v48 = sub_22766D170();
      (*(v44 + 8))(v47, v41);
      v32 = v43;
      v30 = v70;
      __swift_destroy_boxed_opaque_existential_0(v73);
    }

    else
    {
      v48 = 0;
    }

    v49 = [v30 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v50 = [objc_allocWithZone(v32) initWithLeftExpression:v40 rightExpression:v49 modifier:0 type:4 options:0];

    sub_226E97D1C(&v75, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v51 = v50;
    v52 = sub_22766A080();
    v54 = v53;
    MEMORY[0x22AA985C0]();
    if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v52(&v75, 0);
    swift_endAccess();

    v55 = v78;
    v56 = sub_2272328B8(100);
    if (v55)
    {
      swift_setDeallocating();

      v57 = *(v18 + 40);

      v58 = qword_2813B2078;
      v59 = sub_22766A100();
      (*(*(v59 - 8) + 8))(v18 + v58, v59);
      v60 = *(*v18 + 48);
      v61 = *(*v18 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v62 = v56;
      swift_setDeallocating();

      v63 = *(v18 + 40);

      v64 = qword_2813B2078;
      v65 = sub_22766A100();
      (*(*(v65 - 8) + 8))(v18 + v64, v65);
      v66 = *(*v18 + 48);
      v67 = *(*v18 + 52);
      result = swift_deallocClassInstance();
      *v71 = v62;
    }
  }

  return result;
}

void sub_22749D064(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  sub_2274A42FC(v3, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF78, &unk_227687458);
  sub_226E9CFD0(&qword_281398FB8, &qword_27D7BDF78, &unk_227687458);
  sub_227669210();
}

uint64_t sub_22749D18C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      v7 = v5 + 1;
      v8 = *(v3 + 32 + 8 * v5);
      v10 = v6;

      result = sub_227462014(v9);
      v6 = v10;
      v5 = v7;
      if (v4 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_7:
    *a2 = v6;
  }

  return result;
}

uint64_t sub_22749D230@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v47 = a3;
  v48 = a4;
  v49 = a2;
  v5 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 3));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
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
  swift_getKeyPath();
  v16 = sub_2276633E0();
  v18 = v17;
  v52[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v52[0] = v16;
  v52[1] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v52, v50, &unk_27D7BC990, &qword_227670A30);
  v20 = v51;
  if (v51)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v50, v51);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v52, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v52, 0);
  swift_endAccess();

  v33 = *__swift_project_boxed_opaque_existential_0((v49 + 96), *(v49 + 120));
  v34 = v52[5];
  v35 = sub_2272322B8(100);
  if (v34)
  {
  }

  v37 = sub_22707488C(v35, a1);

  v38 = sub_22748ED94(v47);
  v39 = sub_2274A6890(v37, v38);

  swift_setDeallocating();

  v40 = *(v13 + 40);

  v41 = qword_2813B2078;
  v42 = sub_22766A100();
  (*(*(v42 - 8) + 8))(v13 + v41, v42);
  v43 = *(*v13 + 48);
  v44 = *(*v13 + 52);
  result = swift_deallocClassInstance();
  *v48 = v39;
  return result;
}

uint64_t sub_22749D6F0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21 = a5;
  v22 = a4;
  v8 = sub_227663480();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[42];
  v20 = a2[43];
  v19 = __swift_project_boxed_opaque_existential_0(a2 + 39, v13);
  (*(v9 + 16))(v11, a3, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v11, v8);
  *(v16 + v15) = a2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_226ECF5D8(v22, v16, v13, v17, v20, v21);
}

uint64_t sub_22749D898@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v47[1] = a3;
  v48 = a4;
  v49 = a2;
  v5 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 3));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
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
  swift_getKeyPath();
  v16 = sub_2276633E0();
  v18 = v17;
  v52[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v52[0] = v16;
  v52[1] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v52, v50, &unk_27D7BC990, &qword_227670A30);
  v20 = v51;
  if (v51)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v50, v51);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v52, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v52, 0);
  swift_endAccess();

  v33 = *__swift_project_boxed_opaque_existential_0((v49 + 96), *(v49 + 120));
  v34 = v52[5];
  v35 = sub_2272322B8(100);
  if (v34)
  {
  }

  v37 = sub_22707488C(v35, a1);

  v38 = sub_22748ED94(v37);

  v40 = sub_2274A6890(v39, v38);

  swift_setDeallocating();

  v41 = *(v13 + 40);

  v42 = qword_2813B2078;
  v43 = sub_22766A100();
  (*(*(v43 - 8) + 8))(v13 + v42, v43);
  v44 = *(*v13 + 48);
  v45 = *(*v13 + 52);
  result = swift_deallocClassInstance();
  *v48 = v40;
  return result;
}

uint64_t sub_22749DD6C@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v4 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 3));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
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
  swift_getKeyPath();
  v15 = sub_2276633E0();
  v17 = v16;
  v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v47[0] = v15;
  v47[1] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v47, v45, &unk_27D7BC990, &qword_227670A30);
  v19 = v46;
  if (v46)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v45, v46);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v47, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v47, 0);
  swift_endAccess();

  v32 = *__swift_project_boxed_opaque_existential_0((v44 + 96), *(v44 + 120));
  v33 = v47[5];
  v34 = sub_2272322B8(100);
  if (v33)
  {
  }

  v36 = sub_22707488C(v34, a1);

  swift_setDeallocating();

  v37 = *(v12 + 40);

  v38 = qword_2813B2078;
  v39 = sub_22766A100();
  (*(*(v39 - 8) + 8))(v12 + v38, v39);
  v40 = *(*v12 + 48);
  v41 = *(*v12 + 52);
  result = swift_deallocClassInstance();
  *v43 = v36;
  return result;
}

uint64_t sub_22749E1F8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v48 = a2;
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_2276633E0();
  v16 = v15;
  v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v47[0] = v14;
  v47[1] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v47, v45, &unk_27D7BC990, &qword_227670A30);
  v18 = v46;
  if (v46)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v45, v46);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(v47, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v44 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v47, 0);
  swift_endAccess();

  v31 = sub_2272328B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v32 = *(v11 + 40);

    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    (*(*(v34 - 8) + 8))(v11 + v33, v34);
    v35 = *(*v11 + 48);
    v36 = *(*v11 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v38 = v31;
    swift_setDeallocating();

    v39 = *(v11 + 40);

    v40 = qword_2813B2078;
    v41 = sub_22766A100();
    (*(*(v41 - 8) + 8))(v11 + v40, v41);
    v42 = *(*v11 + 48);
    v43 = *(*v11 + 52);
    result = swift_deallocClassInstance();
    *v48 = v38;
  }

  return result;
}

uint64_t sub_22749E6B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void (*a4)(uint64_t, char *, uint64_t)@<X3>, uint64_t (*a5)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X4>, uint64_t a6@<X8>)
{
  v92 = a5;
  v87 = a2;
  v88 = a4;
  v86 = a3;
  v8 = sub_22766B390();
  v99 = *(v8 - 1);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v8);
  v98 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v90 = &v80 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v80 - v17;
  MEMORY[0x28223BE20](v16);
  v93 = &v80 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v19 = *(*(v97 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v97);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  v25 = sub_227663480();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v28 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v96 = &v80 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - v31;
  v33 = *a1;
  v35 = v34;
  sub_22722AF88(v33, v24);
  if ((*(v35 + 48))(v24, 1, v25) == 1)
  {
    sub_226E97D1C(v24, &unk_27D7BD3F0, &unk_2276823F0);
  }

  else
  {
    v85 = a6;
    v84 = *(v35 + 32);
    v84(v32, v24, v25);
    v36 = v35;
    v37 = sub_2276633F0();
    if (v38)
    {
      v83 = v32;
      if (v37 == 1)
      {
        v101 = v87;
        v102 = v86 & 1;
        sub_226F04AAC(v87, v86 & 1);
        sub_227664540();
        v39 = v96;
        sub_227663470();
        v40 = v92;
        v41 = *(v92 + 42);
        v100 = *(v92 + 43);
        __swift_project_boxed_opaque_existential_0(v92 + 39, v41);
        v81 = v36;
        v42 = v39;
        v43 = v25;
        (*(v36 + 16))(v28, v42, v25);
        v44 = (*(v36 + 80) + 16) & ~*(v36 + 80);
        v45 = (v26 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = swift_allocObject();
        v47 = v28;
        v48 = v43;
        v82 = v43;
        v84((v46 + v44), v47, v43);
        *(v46 + v45) = v40;

        v49 = v90;
        sub_226ECF5D8(sub_227320178, v46, v41, v48, v100, v90);

        v51 = v94;
        v50 = v95;
        v52 = *(v94 + 16);
        v99 = v94 + 16;
        v100 = v52;
        v53 = v89;
        v52(v89, v49, v95);
        v54 = *(v51 + 80);
        v98 = v54;
        v55 = (v54 + 16) & ~v54;
        v56 = (v12 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
        v57 = swift_allocObject();
        v58 = *(v51 + 32);
        v97 = v55;
        v58(v57 + v55, v53, v50);
        v88 = v58;
        v59 = (v57 + v56);
        *v59 = sub_227320190;
        v59[1] = v40;

        v60 = v91;
        sub_227669270();
        v94 = *(v51 + 8);
        (v94)(v49, v50);
        v100(v49, v60, v50);
        v61 = swift_allocObject();
        v58(v61 + v55, v49, v50);
        v62 = (v61 + v56);
        *v62 = sub_2274A5880;
        v62[1] = v40;

        v63 = v93;
        v64 = v82;
        sub_227669270();
        v65 = v94;
        (v94)(v60, v50);
        v66 = swift_allocObject();
        *(v66 + 16) = nullsub_1;
        *(v66 + 24) = 0;
        v100(v60, v63, v50);
        v67 = swift_allocObject();
        v88(v67 + v97, v60, v50);
        v68 = (v67 + v56);
        *v68 = sub_2274A5884;
        v68[1] = v66;
        sub_227669270();
        v65(v63, v50);
        v69 = *(v81 + 8);
        v69(v96, v64);
        return (v69)(v83, v64);
      }

      (*(v35 + 8))(v83, v25);
    }

    else
    {
      (*(v35 + 8))(v32, v25);
    }
  }

  v71 = v98;
  sub_22766A6C0();

  v72 = sub_22766B380();
  v73 = sub_22766C8B0();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v101 = v75;
    *v74 = 141558274;
    *(v74 + 4) = 1752392040;
    *(v74 + 12) = 2080;
    sub_22722AF88(v33, v22);
    v76 = sub_22766CB80();
    v78 = v77;
    sub_226E97D1C(v22, &unk_27D7BD3F0, &unk_2276823F0);
    v79 = sub_226E97AE8(v76, v78, &v101);

    *(v74 + 14) = v79;
    _os_log_impl(&dword_226E8E000, v72, v73, "handleBundleLoadResult: At end of load, persisted bundle doesn't have expected .loading status: %{mask.hash}s", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x22AA9A450](v75, -1, -1);
    MEMORY[0x22AA9A450](v74, -1, -1);
  }

  (*(v99 + 8))(v71, v100);
  return sub_2276692A0();
}

uint64_t sub_22749EFD8@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_227663480();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v65);
  v62 = v17;
  v63 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v52 - v18;
  if (a2)
  {
    v19 = a3[43];
    v56 = a3[42];
    v59 = v19;
    v55 = __swift_project_boxed_opaque_existential_0(a3 + 39, v56);
    v57 = a4;
    v58 = *(v11 + 16);
    v58(&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    v20 = *(v11 + 80);
    v61 = a5;
    v21 = swift_allocObject();
    v22 = a1;
    v23 = v21;
    *(v21 + 16) = a3;
    *(v21 + 24) = v22;
    v24 = v10;
    v53 = v10;
    v25 = v14;
    v26 = v22;
    v60 = v22;
    v54 = *(v11 + 32);
    v54(v21 + ((v20 + 32) & ~v20), &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    sub_226F04AAC(v26, 1);
    v27 = v26;
    v14 = v25;
    sub_226F04AAC(v27, 1);

    v28 = v64;
    sub_226ECF5D8(sub_2274A575C, v23, v56, MEMORY[0x277D84F78] + 8, v59, v64);

    v29 = v53;
    v58(&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v53);
    v30 = swift_allocObject();
    v31 = v13;
    v32 = v28;
    v54(v30 + ((v20 + 16) & ~v20), v31, v29);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_2274A57DC;
    *(v33 + 24) = v30;
    v34 = v63;
    v35 = v65;
    (*(v25 + 16))(v63, v32, v65);
    v36 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v37 = (v62 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v25 + 32))(v38 + v36, v34, v35);
    v39 = (v38 + v37);
    *v39 = sub_226F5B0C0;
    v39[1] = v33;
    sub_227669270();
    sub_226EB4548(v60, 1);
  }

  else
  {
    v40 = a3[42];
    v41 = a3[43];
    __swift_project_boxed_opaque_existential_0(a3 + 39, v40);
    (*(v11 + 16))(&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    v42 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v43 = swift_allocObject();
    (*(v11 + 32))(v43 + v42, v13, v10);
    v32 = v64;
    sub_226ECF5D8(sub_2274A56E0, v43, v40, MEMORY[0x277D84F78] + 8, v41, v64);

    v44 = swift_allocObject();
    v44[2] = 0xD000000000000028;
    v44[3] = 0x80000002276A12E0;
    v44[4] = 504;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_226F33024;
    *(v45 + 24) = v44;
    v46 = v63;
    v35 = v65;
    (*(v14 + 16))(v63, v32, v65);
    v47 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v48 = (v62 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v14 + 32))(v49 + v47, v46, v35);
    v50 = (v49 + v48);
    *v50 = sub_226F32FE8;
    v50[1] = v45;
    sub_227669270();
  }

  return (*(v14 + 8))(v32, v35);
}

void sub_22749F598(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v2;
  v11 = v3;

  sub_22766A070();
  v39 = v11;
  v40 = v10;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  swift_getKeyPath();
  v12 = sub_2276633E0();
  v14 = v13;
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v44[0] = v12;
  v44[1] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v44, v42, &unk_27D7BC990, &qword_227670A30);
  v16 = v43;
  if (v43)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v41 = &v38;
    v18 = v5;
    v19 = v4;
    v20 = *(v16 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v17);
    v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v16);
    v4 = v19;
    v5 = v18;
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0 qword_227677890))];

  sub_226E97D1C(v44, &unk_27D7BC990, &qword_227670A30);
  v27 = qword_2813B2078;
  swift_beginAccess();
  v28 = v26;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v41 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v44, 0);
  swift_endAccess();

  v32 = sub_227542420(v9 + v27, v4, v5);
  v33 = v44[5];
  if (v32)
  {
    if (v32 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v34 = sub_227284A84(0);
  if (v33)
  {
LABEL_10:

    return;
  }

  v35 = v34;
  [v34 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v36 = sub_22766C9E0();
  v37 = sub_226EDAB24(v36);

  sub_226EDAB78(v37, v39);
}

uint64_t sub_22749FA04(void *a1, uint64_t a2, const char *a3)
{
  v31 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  (*(v6 + 16))(v9, a2, v5);
  v14 = a1;
  v15 = sub_22766B380();
  v16 = sub_22766C890();
  v30 = a1;

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v10;
    v18 = v17;
    v28 = swift_slowAlloc();
    v35 = v28;
    *v18 = 141558530;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v19 = sub_22766D140();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_226E97AE8(v19, v21, &v35);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2082;
    swift_getErrorValue();
    v23 = MEMORY[0x22AA995D0](v33, v34);
    v25 = sub_226E97AE8(v23, v24, &v35);

    *(v18 + 24) = v25;
    _os_log_impl(&dword_226E8E000, v15, v16, v31, v18, 0x20u);
    v26 = v28;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    return (*(v32 + 8))(v13, v29);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    return (*(v32 + 8))(v13, v10);
  }
}

uint64_t sub_22749FD64(void *a1, uint64_t a2, void *a3, char a4)
{
  __swift_project_boxed_opaque_existential_0(a1 + 49, a1[52]);
  v8 = off_283AA0138[0];
  type metadata accessor for AssetBundleProgressPublisher();
  v8(a2);
  v9 = a1[54];
  v10 = sub_227663410();
  sub_2272FB428(a3, a4 & 1, v10, v11);
}

uint64_t sub_22749FE24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a1;
  v56 = a4;
  v4 = sub_22766B390();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227662750();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2276662D0();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = v61[8];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  swift_getErrorValue();
  v23 = sub_22766D280();
  v25 = v24;
  v26 = *MEMORY[0x277CCA738];
  if (v23 == sub_22766C000() && v25 == v27)
  {

    v28 = MEMORY[0x277D52230];
  }

  else
  {
    v29 = sub_22766D190();

    v28 = MEMORY[0x277D52228];
    if (v29)
    {
      v28 = MEMORY[0x277D52230];
    }
  }

  v30 = *v28;
  v31 = sub_2276662B0();
  (*(*(v31 - 8) + 104))(v22, v30, v31);
  swift_storeEnumTagMultiPayload();
  sub_2276633E0();
  v56 = v22;
  sub_226E93170(v22, v20, &qword_27D7BB2C0, &unk_227687210);
  sub_227662740();
  v32 = v60;
  sub_227666270();
  sub_22766A6C0();
  v33 = v61;
  v34 = v32;
  v35 = v62;
  v55 = v61[2];
  v55(v14, v34, v62);
  v36 = v7;
  v37 = sub_22766B380();
  v38 = sub_22766C8B0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v63 = v40;
    *v39 = 136446210;
    sub_2274A72CC(&qword_27D7BDF48, MEMORY[0x277D52258]);
    v54 = v7;
    v41 = sub_22766D140();
    v43 = v42;
    v44 = v61[1];
    v44(v14, v62);
    v45 = sub_226E97AE8(v41, v43, &v63);
    v35 = v62;

    *(v39 + 4) = v45;
    _os_log_impl(&dword_226E8E000, v37, v38, "Inserting bundle failure %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AA9A450](v40, -1, -1);
    v46 = v39;
    v33 = v61;
    MEMORY[0x22AA9A450](v46, -1, -1);

    (*(v57 + 8))(v54, v58);
  }

  else
  {

    v44 = v33[1];
    v44(v14, v35);
    (*(v57 + 8))(v36, v58);
  }

  v47 = __swift_project_boxed_opaque_existential_0(v59, v59[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF50, &qword_2276799F8);
  v48 = v33[9];
  v49 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_227670CD0;
  v51 = v50 + v49;
  v52 = v60;
  v55(v51, v60, v35);
  sub_2275683DC(v50, v47[1], *(v47 + 16), v47[3]);

  v44(v52, v35);
  return sub_226E97D1C(v56, &qword_27D7BB2C0, &unk_227687210);
}

uint64_t sub_2274A0404@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v336 = a4;
  v337 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v305 = &v289[-v8];
  v307 = sub_227663180();
  v308 = *(v307 - 8);
  v9 = *(v308 + 64);
  v10 = MEMORY[0x28223BE20](v307);
  v300 = &v289[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v302 = &v289[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v301 = &v289[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v304 = &v289[-v17];
  MEMORY[0x28223BE20](v16);
  v309 = &v289[-v18];
  v318 = sub_2276624A0();
  v317 = *(v318 - 8);
  v19 = *(v317 + 64);
  v20 = MEMORY[0x28223BE20](v318);
  v306 = &v289[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v316 = &v289[-v22];
  v312 = sub_227664AE0();
  v23 = *(*(v312 - 8) + 64);
  MEMORY[0x28223BE20](v312);
  v313 = &v289[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v320 = sub_2276639B0();
  v326 = *(v320 - 8);
  v25 = *(v326 + 64);
  MEMORY[0x28223BE20](v320);
  v319 = &v289[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v315 = &v289[-v29];
  v324 = sub_2276687D0();
  v323 = *(v324 - 8);
  v30 = *(v323 + 64);
  MEMORY[0x28223BE20](v324);
  v327 = &v289[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v325 = &v289[-v34];
  v331 = sub_227663480();
  v329 = *(v331 - 8);
  v35 = *(v329 + 64);
  v36 = MEMORY[0x28223BE20](v331);
  v321 = &v289[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v314 = &v289[-v39];
  MEMORY[0x28223BE20](v38);
  v322 = &v289[-v40];
  v311 = sub_227662750();
  v310 = *(v311 - 8);
  v41 = *(v310 + 64);
  MEMORY[0x28223BE20](v311);
  v330 = &v289[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v333 = sub_227666500();
  isa = v333[-1].isa;
  v43 = *(isa + 64);
  MEMORY[0x28223BE20](v333);
  v332 = &v289[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_22766B390();
  v334 = *(v45 - 8);
  v335 = v45;
  v46 = *(v334 + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v303 = &v289[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v289[-v50];
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v289[-v53];
  MEMORY[0x28223BE20](v52);
  v56 = &v289[-v55];
  v57 = sub_2276642E0();
  v338 = *(v57 - 8);
  v58 = *(v338 + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v289[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v61 = swift_allocObject();
  v328 = xmmword_227670CD0;
  *(v61 + 16) = xmmword_227670CD0;
  v62 = a3;
  *(v61 + 32) = sub_2276664F0();
  *(v61 + 40) = v63;
  v64 = v345;
  v65 = sub_226F87158(v61, 0, 1, a1);

  v345 = v64;
  if (!v64)
  {
    v67 = isa;
    v295 = v54;
    v297 = v62;
    v294 = v51;
    v296 = a1;
    v299 = v60;
    v298 = v57;
    if (*(v65 + 16))
    {
      v68 = v338;
      v69 = v299;
      v70 = v298;
      (*(v338 + 16))(v299, v65 + ((*(v338 + 80) + 32) & ~*(v338 + 80)), v298);

      v71 = *(*__swift_project_boxed_opaque_existential_0((v337 + 256), *(v337 + 280)) + 32);
      v72 = v345;
      sub_2276696A0();
      v345 = v72;
      if (v72)
      {
        return (*(v68 + 8))(v69, v70);
      }

      v88 = v342;
      v89 = v343;
      sub_22766C0A0();
      sub_2276664F0();
      swift_bridgeObjectRetain_n();
      sub_227662740();
      sub_2276633D0();
      v90 = __swift_project_boxed_opaque_existential_0(v296, v296[3]);
      v91 = *v90;
      v92 = v90[1];
      v93 = *(v90 + 16);
      v94 = v90[3];
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
      v96 = *(v95 + 48);
      v97 = *(v95 + 52);
      v98 = swift_allocObject();
      v99 = v91;
      v100 = v92;

      sub_22766A070();
      *(v98 + 16) = v99;
      *(v98 + 24) = v100;
      *(v98 + 32) = v93;
      *(v98 + 40) = v94;
      swift_getKeyPath();
      isa = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v344 = isa;
      v342 = v88;
      v343 = v89;
      v101 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v337 = v101;
      v102 = sub_22766C820();
      sub_226E93170(&v342, &v340, &unk_27D7BC990, &qword_227670A30);
      v103 = v341;
      if (v341)
      {
        v104 = __swift_project_boxed_opaque_existential_0(&v340, v341);
        v105 = *(v103 - 8);
        v106 = *(v105 + 64);
        MEMORY[0x28223BE20](v104);
        v108 = &v289[-((v107 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v105 + 16))(v108);
        v109 = sub_22766D170();
        (*(v105 + 8))(v108, v103);
        __swift_destroy_boxed_opaque_existential_0(&v340);
      }

      else
      {
        v109 = 0;
      }

      v113 = objc_opt_self();
      v114 = [v113 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
      v115 = [objc_allocWithZone(v332) initWithLeftExpression:v102 rightExpression:v114 modifier:0 type:4 options:0];

      sub_226E97D1C(&v342, &unk_27D7BC990, &qword_227670A30);
      v116 = qword_2813B2078;
      swift_beginAccess();
      v117 = v115;
      v333 = v116;
      v118 = sub_22766A080();
      v120 = v119;
      MEMORY[0x22AA985C0]();
      if (*((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v285 = *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v118(&v342, 0);
      swift_endAccess();

      swift_getKeyPath();
      v121 = sub_2276664F0();
      v344 = isa;
      v342 = v121;
      v343 = v122;

      v123 = sub_22766C820();
      sub_226E93170(&v342, &v340, &unk_27D7BC990, &qword_227670A30);
      v124 = v341;
      if (v341)
      {
        v125 = __swift_project_boxed_opaque_existential_0(&v340, v341);
        v126 = v113;
        v127 = *(v124 - 8);
        v128 = *(v127 + 64);
        MEMORY[0x28223BE20](v125);
        v130 = &v289[-((v129 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v127 + 16))(v130);
        v131 = sub_22766D170();
        (*(v127 + 8))(v130, v124);
        v113 = v126;
        __swift_destroy_boxed_opaque_existential_0(&v340);
      }

      else
      {
        v131 = 0;
      }

      v132 = [v113 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v133 = [objc_allocWithZone(v332) initWithLeftExpression:v123 rightExpression:v132 modifier:0 type:4 options:0];

      sub_226E97D1C(&v342, &unk_27D7BC990, &qword_227670A30);
      swift_beginAccess();
      v134 = v133;
      v135 = sub_22766A080();
      v137 = v136;
      MEMORY[0x22AA985C0]();
      if (*((*v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v286 = *((*v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v135(&v342, 0);
      swift_endAccess();

      v138 = v345;
      v139 = sub_2272FA3BC(0x64);
      v140 = v295;
      v345 = v138;
      if (v138)
      {
        swift_setDeallocating();

        v141 = *(v98 + 40);

        v142 = qword_2813B2078;
        v143 = sub_22766A100();
        (*(*(v143 - 8) + 8))(v98 + v142, v143);
        v144 = *(*v98 + 48);
        v145 = *(*v98 + 52);
        swift_deallocClassInstance();
      }

      else
      {
        v146 = v139;
        swift_setDeallocating();

        v147 = *(v98 + 40);

        v148 = qword_2813B2078;
        v149 = sub_22766A100();
        v150 = v149[-1].isa;
        v332 = *(v150 + 1);
        v333 = v149;
        v292 = v150 + 8;
        (v332)(v98 + v148);
        v151 = *(*v98 + 48);
        v152 = *(*v98 + 52);
        swift_deallocClassInstance();
        v153 = v325;
        sub_22722AF88(v146, v325);

        v154 = v329;
        v155 = v331;
        v156 = (*(v329 + 48))(v153, 1, v331);
        v293 = v113;
        if (v156 == 1)
        {
          sub_226E97D1C(v153, &unk_27D7BD3F0, &unk_2276823F0);
          v157 = v336;
          v158 = v327;
        }

        else
        {
          v159 = v322;
          (*(v154 + 32))(v322, v153, v155);
          sub_22766A6C0();
          v160 = *(v154 + 16);
          v161 = v314;
          v160(v314, v159, v155);
          v162 = v321;
          v160(v321, v336, v155);
          v163 = sub_22766B380();
          v164 = sub_22766C8B0();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            v325 = swift_slowAlloc();
            v342 = v325;
            *v165 = 141558530;
            *(v165 + 4) = 1752392040;
            *(v165 + 12) = 2080;
            sub_2274A72CC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
            v291 = v163;
            v290 = v164;
            v166 = sub_22766D140();
            v168 = v167;
            v169 = *(v154 + 8);
            v169(v161, v155);
            v170 = sub_226E97AE8(v166, v168, &v342);

            *(v165 + 14) = v170;
            *(v165 + 22) = 2082;
            v171 = v321;
            v172 = sub_22766D140();
            v174 = v173;
            v169(v171, v331);
            v175 = sub_226E97AE8(v172, v174, &v342);
            v155 = v331;

            *(v165 + 24) = v175;
            v176 = v291;
            _os_log_impl(&dword_226E8E000, v291, v290, "Demo Bundle - replacing %{mask.hash}s with %{public}s", v165, 0x20u);
            v177 = v325;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v177, -1, -1);
            MEMORY[0x22AA9A450](v165, -1, -1);

            (*(v334 + 8))(v295, v335);
            v169(v322, v155);
            v157 = v336;
            v158 = v327;
          }

          else
          {

            v178 = *(v154 + 8);
            v178(v162, v155);
            v178(v161, v155);
            (*(v334 + 8))(v140, v335);
            v178(v159, v155);
            v158 = v327;
            v157 = v336;
          }
        }

        v179 = v296;
        v180 = __swift_project_boxed_opaque_existential_0(v296, v296[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
        v181 = *(v154 + 72);
        v182 = (*(v154 + 80) + 32) & ~*(v154 + 80);
        v183 = swift_allocObject();
        *(v183 + 16) = v328;
        (*(v154 + 16))(v183 + v182, v157, v155);
        v184 = v345;
        sub_227556A7C(v183, v180[1], *(v180 + 16), v180[3]);
        v185 = v154;
        v186 = v326;
        v345 = v184;
        if (v184)
        {

          (*(v185 + 8))(v157, v155);
          return (*(v338 + 8))(v299, v298);
        }

        sub_22766C0A0();
        v187 = *(v317 + 56);
        v325 = (v317 + 56);
        v322 = v187;
        (v187)(v315, 1, 1, v318);

        sub_227668790();
        (*(v323 + 16))(v313, v158, v324);
        swift_storeEnumTagMultiPayload();
        sub_227664240();
        v188 = v330;
        sub_227662740();
        sub_2276625D0();
        (*(v310 + 8))(v188, v311);
        sub_227663950();
        sub_2276633E0();
        v189 = v319;
        sub_227663900();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
        v190 = *(v186 + 72);
        v191 = (*(v186 + 80) + 32) & ~*(v186 + 80);
        v192 = swift_allocObject();
        *(v192 + 16) = v328;
        v193 = v320;
        (*(v186 + 16))(v192 + v191, v189, v320);
        v194 = sub_226F4FB98(v192);
        swift_setDeallocating();
        v195 = v324;
        v198 = *(v186 + 8);
        v196 = v186 + 8;
        v197 = v198;
        (v198)(v192 + v191, v193);
        swift_deallocClassInstance();
        v199 = v345;
        sub_22707C950(v194, v179);
        v345 = v199;
        if (v199)
        {

          (v197)(v189, v193);
          (*(v323 + 8))(v327, v195);
        }

        else
        {
          v330 = v197;
          v326 = v196;

          v200 = v315;
          sub_2276664E0();
          v201 = v318;
          (v322)(v200, 0, 1, v318);
          sub_227664240();
          sub_227663150();
          v202 = __swift_project_boxed_opaque_existential_0(v179, v179[3]);
          v203 = *v202;
          v204 = v202[1];
          v205 = *(v202 + 16);
          v206 = v202[3];
          v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
          v208 = *(v207 + 48);
          v209 = *(v207 + 52);
          v210 = swift_allocObject();
          v211 = v203;
          v212 = v204;

          sub_22766A070();
          *(v210 + 16) = v211;
          *(v210 + 24) = v212;
          *(v210 + 32) = v205;
          *(v210 + 40) = v206;
          swift_getKeyPath();
          v213 = v306;
          sub_227664240();
          v214 = sub_227662390();
          v216 = v215;
          (*(v317 + 8))(v213, v201);
          v344 = isa;
          v342 = v214;
          v343 = v216;

          v217 = sub_22766C820();
          sub_226E93170(&v342, &v340, &unk_27D7BC990, &qword_227670A30);
          v218 = v341;
          if (v341)
          {
            v219 = __swift_project_boxed_opaque_existential_0(&v340, v341);
            v220 = *(v218 - 8);
            v221 = *(v220 + 64);
            MEMORY[0x28223BE20](v219);
            v223 = &v289[-((v222 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v220 + 16))(v223);
            v224 = sub_22766D170();
            (*(v220 + 8))(v223, v218);
            __swift_destroy_boxed_opaque_existential_0(&v340);
          }

          else
          {
            v224 = 0;
          }

          v225 = v308;
          v226 = v323;
          v227 = [v293 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v228 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

          sub_226E97D1C(&v342, &unk_27D7BC990, &qword_227670A30);
          swift_beginAccess();
          v229 = v228;
          v230 = sub_22766A080();
          v232 = v231;
          MEMORY[0x22AA985C0]();
          v233 = v309;
          if (*((*v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v287 = v226;
            v288 = *((*v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22766C360();
            v226 = v287;
          }

          sub_22766C3A0();
          v230(&v342, 0);
          swift_endAccess();

          v234 = v345;
          v235 = sub_2272F8688(0x64);
          v345 = v234;
          if (v234)
          {
            swift_setDeallocating();

            v236 = *(v210 + 40);

            (v332)(v210 + qword_2813B2078, v333);
            v237 = *(*v210 + 48);
            v238 = *(*v210 + 52);
            swift_deallocClassInstance();
            (*(v225 + 8))(v233, v307);
            (v330)(v319, v320);
          }

          else
          {
            v239 = v235;
            swift_setDeallocating();

            v240 = *(v210 + 40);

            (v332)(v210 + qword_2813B2078, v333);
            v241 = *(*v210 + 48);
            v242 = *(*v210 + 52);
            swift_deallocClassInstance();
            v243 = v305;
            sub_22722AE54(v239, v305);

            v244 = v307;
            if ((*(v225 + 48))(v243, 1, v307) == 1)
            {
              sub_226E97D1C(v243, &qword_27D7B8620, &qword_2276711C0);
            }

            else
            {
              v245 = v304;
              (*(v225 + 32))(v304, v243, v244);
              v246 = v294;
              sub_22766A6C0();
              v247 = *(v225 + 16);
              v248 = v301;
              v247(v301, v245, v244);
              v249 = v302;
              v247(v302, v233, v244);
              v250 = sub_22766B380();
              v251 = sub_22766C8B0();
              if (os_log_type_enabled(v250, v251))
              {
                v252 = swift_slowAlloc();
                isa = swift_slowAlloc();
                v342 = isa;
                *v252 = 141558530;
                *(v252 + 4) = 1752392040;
                *(v252 + 12) = 2080;
                sub_2274A72CC(&qword_28139BD48, MEMORY[0x277D4FCA8]);
                LODWORD(v337) = v251;
                v333 = v250;
                v253 = sub_22766D140();
                v255 = v254;
                v256 = *(v308 + 8);
                v256(v248, v244);
                v257 = sub_226E97AE8(v253, v255, &v342);
                v225 = v308;

                *(v252 + 14) = v257;
                *(v252 + 22) = 2082;
                v258 = sub_22766D140();
                v260 = v259;
                v256(v249, v244);
                v261 = sub_226E97AE8(v258, v260, &v342);

                *(v252 + 24) = v261;
                v262 = v333;
                _os_log_impl(&dword_226E8E000, v333, v337, "Demo Bundle - replacing %{mask.hash}s with %{public}s", v252, 0x20u);
                v263 = isa;
                swift_arrayDestroy();
                MEMORY[0x22AA9A450](v263, -1, -1);
                MEMORY[0x22AA9A450](v252, -1, -1);

                (*(v334 + 8))(v294, v335);
                v256(v304, v244);
              }

              else
              {

                v264 = *(v225 + 8);
                v264(v249, v244);
                v264(v248, v244);
                (*(v334 + 8))(v246, v335);
                v264(v245, v244);
              }

              v226 = v323;
            }

            v265 = __swift_project_boxed_opaque_existential_0(v296, v296[3]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
            v266 = *(v225 + 72);
            v267 = (*(v225 + 80) + 32) & ~*(v225 + 80);
            v268 = swift_allocObject();
            *(v268 + 16) = v328;
            v269 = *(v225 + 16);
            v270 = v268 + v267;
            v271 = v309;
            v269(v270, v309, v244);
            v272 = v345;
            sub_227557590(v268, v265[1], *(v265 + 16), v265[3]);
            v345 = v272;
            if (!v272)
            {

              v273 = v303;
              sub_22766A6C0();
              v274 = v300;
              v269(v300, v271, v244);
              v275 = sub_22766B380();
              v276 = sub_22766C8B0();
              if (os_log_type_enabled(v275, v276))
              {
                v277 = swift_slowAlloc();
                v278 = swift_slowAlloc();
                v342 = v278;
                *v277 = 136446210;
                sub_2274A72CC(&qword_28139BD48, MEMORY[0x277D4FCA8]);
                v279 = sub_22766D140();
                v281 = v280;
                v282 = *(v225 + 8);
                v282(v274, v244);
                v283 = sub_226E97AE8(v279, v281, &v342);

                *(v277 + 4) = v283;
                _os_log_impl(&dword_226E8E000, v275, v276, "Demo Bundle - finished inserting %{public}s", v277, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v278);
                MEMORY[0x22AA9A450](v278, -1, -1);
                MEMORY[0x22AA9A450](v277, -1, -1);

                (*(v334 + 8))(v303, v335);
                v282(v309, v244);
                (v330)(v319, v320);
                (*(v323 + 8))(v327, v324);
              }

              else
              {

                v284 = *(v225 + 8);
                v284(v274, v244);
                (*(v334 + 8))(v273, v335);
                v284(v271, v244);
                (v330)(v319, v320);
                (*(v226 + 8))(v327, v324);
              }

              return (*(v338 + 8))(v299, v298);
            }

            (*(v225 + 8))(v271, v244);
            (v330)(v319, v320);
          }

          (*(v226 + 8))(v327, v324);
        }
      }

      (*(v329 + 8))(v336, v331);
      return (*(v338 + 8))(v299, v298);
    }

    v73 = v56;
    sub_22766A6C0();
    v74 = v67;
    v76 = v332;
    v75 = v333;
    (*(v67 + 16))(v332, v297, v333);
    v77 = sub_22766B380();
    v78 = sub_22766C8B0();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v334;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      v342 = v345;
      *v81 = 136446210;
      v82 = sub_2276664F0();
      v83 = v76;
      v85 = v84;
      (*(v74 + 8))(v83, v75);
      v86 = sub_226E97AE8(v82, v85, &v342);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_226E8E000, v77, v78, "Demo Bundle - Catalog workout not found for identifier %{public}s", v81, 0xCu);
      v87 = v345;
      __swift_destroy_boxed_opaque_existential_0(v345);
      MEMORY[0x22AA9A450](v87, -1, -1);
      MEMORY[0x22AA9A450](v81, -1, -1);
    }

    else
    {

      (*(v74 + 8))(v76, v75);
    }

    (*(v80 + 8))(v73, v335);
    v110 = sub_227663190();
    sub_2274A72CC(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v111 = swift_allocError();
    (*(*(v110 - 8) + 104))(v112, *MEMORY[0x277D4FD68], v110);
    v345 = v111;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2274A29BC(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = sub_227663480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669B90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 296);
  v13 = *(a2 + 304);
  swift_getObjectType();
  (*(v4 + 16))(v7, v17, v3);
  sub_227669B80();
  sub_2276699D0();
  return (*(v9 + 8))(v12, v8);
}

unint64_t *sub_2274A2B70(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2274A494C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_2274A2C0C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_2274A5C6C(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_2274A2CA4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2274A64E8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void sub_2274A2D40(uint64_t a1, char a2, void *a3)
{
  v63 = sub_2276642E0();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1F8, &qword_227679D60);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
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
  sub_226E93170(v56, v13, &qword_27D7BB1F8, &qword_227679D60);
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
      sub_226FF508C();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_226FEDC3C(v25, a2 & 1);
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
          sub_226E93170(v56 + *(v60 + 72) * v37, v13, &qword_27D7BB1F8, &qword_227679D60);
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
            sub_226FEDC3C(v46, 1);
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

uint64_t sub_2274A32AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

unint64_t sub_2274A3350(unint64_t result, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 >= result)
    {
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a7 + 16);
      if (v8 <= result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (a3)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v12 = *(*(a7 + 8 * result + 32) + 16);
      result = v12 - a2;
      if (__OFSUB__(v12, a2))
      {
        goto LABEL_45;
      }

      v10 = 1;
      a2 = a5;
      a3 = a6;
      v11 = a4;
      a4 = v7;
    }

    else
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = *(a7 + 16);
      if (v8 <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = *(*(a7 + 8 * a4 + 32) + 16);
      result = a5 - v9;
      if (__OFSUB__(a5, v9))
      {
        goto LABEL_43;
      }

      v10 = -1;
      v11 = v7;
    }

    v13 = a4 + 1;
    if ((a4 + 1) >= v11)
    {
LABEL_27:
      if (a3)
      {
        return result;
      }

      if (v11 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 >= v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v16 = __OFADD__(result, a2 * v10);
      result += a2 * v10;
      if (!v16)
      {
        return result;
      }

      __break(1u);
    }

    else
    {
      v14 = a7 + 8 * a4 + 40;
      while (v13 < v8)
      {
        v15 = *(*v14 + 16) * v10;
        v16 = __OFADD__(result, v15);
        result += v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        ++v13;
        v14 += 8;
        if (v17 >= v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (a3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (*(a7 + 16) <= a4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_2274A34B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v37 = v3;
    v51 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v49 = a1 + 56;
    v50 = v51;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v41 = v6 + 8;
    v42 = v6 + 16;
    v39 = v12;
    v40 = v6 + 32;
    v38 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v49 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v19 = *(a1 + 36);
      v46 = v16;
      v47 = v19;
      v20 = *(a1 + 48);
      v48 = *(v6 + 72);
      v21 = v43;
      (*(v6 + 16))(v43, v20 + v48 * v15, v5);
      sub_227663470();
      (*(v6 + 8))(v21, v5);
      v22 = v50;
      v51 = v50;
      v23 = a1;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v50 = v25 + 1;
        sub_226F1F568(v24 > 1, v25 + 1, 1);
        v26 = v50;
        v22 = v51;
      }

      *(v22 + 16) = v26;
      v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v50 = v22;
      result = (*(v6 + 32))(v22 + v27 + v25 * v48, v11, v5);
      v17 = 1 << *(v23 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v28 = *(v49 + 8 * v18);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v23;
      if (v47 != *(v23 + 36))
      {
        goto LABEL_26;
      }

      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v17 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v11;
        v31 = v5;
        v32 = v18 << 6;
        v33 = v18 + 1;
        v34 = (v38 + 8 * v18);
        while (v33 < (v17 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v5 = v31;
        v11 = v30;
      }

      v16 = v46 + 1;
      v15 = v17;
      if (v46 + 1 == v39)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2274A39C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2272FADC8(v1[2], v1[3], v1[4], v1[5], v1[6]);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_2274A39F8(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v79);
  v78 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v106 = v66 - v8;
  MEMORY[0x28223BE20](v7);
  v102 = v66 - v9;
  v105 = sub_227663480();
  v10 = *(v105 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v105);
  v100 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v13;
  MEMORY[0x28223BE20](v12);
  v104 = v66 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v15 = *(v77 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v77);
  v99 = v66 - v17;
  v18 = *(a1 + 16);
  v107 = MEMORY[0x277D84F90];
  if (!v18)
  {
    return v107;
  }

  v66[1] = v2;
  v108 = MEMORY[0x277D84F90];
  sub_226F20728(0, v18, 0);
  v107 = v108;
  v19 = v5;
  v20 = a1 + 56;
  v21 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v23 = 0;
  v98 = v10 + 2;
  v74 = off_283ACB2D0;
  v96 = v4 + 16;
  v97 = v10 + 4;
  v73 = v19 + 7;
  v94 = v4 + 8;
  v95 = v4 + 32;
  v72 = v10 + 1;
  v71 = v15 + 32;
  v67 = a1 + 64;
  v69 = v4;
  v76 = v10;
  v75 = v15;
  v68 = v18;
  v70 = a1 + 56;
  v80 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v20 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    v83 = 1 << result;
    v84 = result >> 6;
    v81 = v23;
    v82 = *(a1 + 36);
    v25 = v10;
    v26 = *(a1 + 48) + v10[9] * result;
    v27 = v10[2];
    v28 = v104;
    v29 = v105;
    v93 = result;
    (v27)(v104, v26, v105);
    v30 = v27;
    v92 = v27;
    v31 = v103;
    __swift_project_boxed_opaque_existential_0((v103 + 176), *(v103 + 200));
    v32 = type metadata accessor for AssetRequestProvider();
    (v74)(v28, 33, 0, 1, v32);
    v33 = v4;
    v34 = v100;
    v30();
    v91 = *(v25 + 80);
    v35 = (v91 + 24) & ~v91;
    v86 = v35;
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    v90 = v25[4];
    v90(v36 + v35, v34, v29);
    v89 = *(v33 + 16);
    v37 = v78;
    v38 = v33;
    v39 = v79;
    v89(v78, v106, v79);
    v40 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v88 = v40;
    v41 = (v73 + v40) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    v87 = *(v38 + 32);
    v87(v42 + v40, v37, v39);
    v43 = (v42 + v41);
    *v43 = sub_2274A7E2C;
    v43[1] = v36;
    v44 = v103;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    sub_227669270();
    v85 = *(v38 + 8);
    v45 = v106;
    v85(v106, v39);
    v46 = v100;
    v47 = v105;
    (v92)(v100, v104, v105);
    v48 = v86;
    v49 = swift_allocObject();
    *(v49 + 16) = v44;
    v50 = v49 + v48;
    v51 = v107;
    v90(v50, v46, v47);
    v52 = v102;
    v89(v45, v102, v39);
    v53 = v76;
    v54 = swift_allocObject();
    v87(v54 + v88, v45, v39);
    v55 = (v54 + v41);
    *v55 = sub_2274A739C;
    v55[1] = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
    sub_227669270();
    v85(v52, v39);
    v10 = v53;
    (v53[1])(v104, v105);
    v108 = v51;
    v57 = *(v51 + 16);
    v56 = *(v51 + 24);
    v107 = v51;
    if (v57 >= v56 >> 1)
    {
      sub_226F20728(v56 > 1, v57 + 1, 1);
      v107 = v108;
    }

    v58 = v107;
    *(v107 + 16) = v57 + 1;
    (*(v75 + 32))(v58 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v57, v99, v77);
    a1 = v80;
    v24 = 1 << *(v80 + 32);
    result = v93;
    if (v93 >= v24)
    {
      goto LABEL_23;
    }

    v20 = v70;
    v59 = *(v70 + 8 * v84);
    if ((v59 & v83) == 0)
    {
      goto LABEL_24;
    }

    if (v82 != *(v80 + 36))
    {
      goto LABEL_25;
    }

    v60 = v59 & (-2 << (v93 & 0x3F));
    if (v60)
    {
      v24 = __clz(__rbit64(v60)) | v93 & 0x7FFFFFFFFFFFFFC0;
      v4 = v69;
    }

    else
    {
      v61 = v84 << 6;
      v62 = v84 + 1;
      v63 = (v67 + 8 * v84);
      v4 = v69;
      while (v62 < (v24 + 63) >> 6)
      {
        v65 = *v63++;
        v64 = v65;
        v61 += 64;
        ++v62;
        if (v65)
        {
          sub_226EB526C(v93, v82, 0);
          v24 = __clz(__rbit64(v64)) + v61;
          goto LABEL_19;
        }
      }

      sub_226EB526C(v93, v82, 0);
LABEL_19:
      a1 = v80;
    }

    v23 = v81 + 1;
    result = v24;
    if (v81 + 1 == v68)
    {
      return v107;
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
  return result;
}

unint64_t sub_2274A42FC(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v79 = sub_227663480();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v79);
  v68 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v7;
  MEMORY[0x28223BE20](v6);
  v77 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v67 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v76 = v53 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v66 = v53 - v15;
    v53[1] = v2;
    v81 = MEMORY[0x277D84F90];
    sub_226F20748(0, v16, 0);
    v78 = v81;
    v18 = a1 + 56;
    v19 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v20 = 0;
    v64 = off_283ACB2D0;
    v65 = v4 + 16;
    v62 = v10 + 16;
    v63 = v4 + 32;
    v60 = v10 + 32;
    v61 = v11 + 7;
    v59 = v10 + 8;
    v58 = v4 + 8;
    v54 = a1 + 64;
    v55 = v16;
    v56 = a1 + 56;
    v57 = a1;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v18 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_22;
      }

      v72 = 1 << result;
      v73 = result >> 6;
      v22 = *(a1 + 36);
      v70 = v20;
      v71 = v22;
      v23 = *(a1 + 48) + *(v4 + 72) * result;
      v24 = *(v4 + 16);
      v25 = v77;
      v75 = result;
      v24(v77, v23, v79);
      __swift_project_boxed_opaque_existential_0((v80 + 176), *(v80 + 200));
      v26 = type metadata accessor for AssetRequestProvider();
      v27 = v76;
      (v64)(v25, 33, 0, 1, v26);
      v28 = v9;
      v29 = v68;
      v30 = v25;
      v31 = v79;
      v24(v68, v30, v79);
      v32 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v80;
      (*(v4 + 32))(v33 + v32, v29, v31);
      v34 = v67;
      (*(v10 + 16))(v67, v27, v28);
      v35 = *(v10 + 80);
      v36 = (v35 + 16) & ~v35;
      v37 = v4;
      v38 = (v61 + v36) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      v74 = *(v10 + 32);
      v74(v39 + v36, v34, v28);
      v40 = (v39 + v38);
      v41 = v37;
      v9 = v28;
      *v40 = sub_2274A75B4;
      v40[1] = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
      v42 = v66;
      sub_227669270();
      (*(v10 + 8))(v76, v9);
      v4 = v41;
      (*(v41 + 8))(v77, v79);
      v43 = v78;
      v81 = v78;
      v45 = *(v78 + 16);
      v44 = *(v78 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_226F20748(v44 > 1, v45 + 1, 1);
        v42 = v66;
        v43 = v81;
      }

      *(v43 + 16) = v45 + 1;
      v78 = v43;
      v74(v43 + ((v35 + 32) & ~v35) + *(v10 + 72) * v45, v42, v9);
      a1 = v57;
      v21 = 1 << *(v57 + 32);
      result = v75;
      if (v75 >= v21)
      {
        goto LABEL_23;
      }

      v18 = v56;
      v46 = *(v56 + 8 * v73);
      if ((v46 & v72) == 0)
      {
        goto LABEL_24;
      }

      if (v71 != *(v57 + 36))
      {
        goto LABEL_25;
      }

      v47 = v46 & (-2 << (v75 & 0x3F));
      if (v47)
      {
        v21 = __clz(__rbit64(v47)) | v75 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v73 << 6;
        v49 = v73 + 1;
        v50 = (v54 + 8 * v73);
        while (v49 < (v21 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            sub_226EB526C(v75, v71, 0);
            v21 = __clz(__rbit64(v51)) + v48;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v75, v71, 0);
      }

LABEL_4:
      v20 = v70 + 1;
      result = v21;
      if (v70 + 1 == v55)
      {
        return v78;
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