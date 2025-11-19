void sub_2271AAB7C(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC15SeymourServices6Daemon_duetObserver);
  sub_226F78128();
  sub_22766A730();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v8, v9, "Associated application bundle for daemon com.apple.fitcored has been recently uninstalled. Exiting!", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  exit(0);
}

uint64_t sub_2271AACD8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices6Daemon_journalingSystem);
  sub_22710EB8C();
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices6Daemon_persistenceStore);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_226F10788;

  return v9(v3, v4);
}

uint64_t sub_2271AAE74(uint64_t a1, const char *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v10 = *a1;
    v11 = *a1;
    sub_22766A730();
    v12 = v10;
    v13 = sub_22766B380();
    v14 = sub_22766C890();
    sub_226EB4548(v10, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21[0] = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = MEMORY[0x22AA995D0](v21[2], v21[3]);
      v20 = sub_226E97AE8(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_226E8E000, v13, v14, v21[0], v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA9A450](v17, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);

      sub_226EB4548(v10, 1);
    }

    else
    {
      sub_226EB4548(v10, 1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_2271AB0A0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices6Daemon_pushServiceObserver);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2271AB13C;

  return sub_22745CDAC();
}

uint64_t sub_2271AB13C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2271AB270(void *a1, const char *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_22766A730();
    v11 = a1;
    v12 = sub_22766B380();
    v13 = sub_22766C890();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[0] = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = MEMORY[0x22AA995D0](v20[2], v20[3]);
      v19 = sub_226E97AE8(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_226E8E000, v12, v13, v20[0], v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9A450](v16, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_2271AB480@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Daemon();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  result = Daemon.init()();
  *a1 = v5;
  return result;
}

uint64_t sub_2271AB4E4(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E91B50(v3 + 136, &v19);
  sub_226E91B50(v3 + 56, v18);
  v16 = *(v3 + 96);
  sub_226E91B50(v3 + 216, v17);
  swift_unknownObjectRetain();
  v12 = sub_2276693D0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v14 = swift_allocObject();
  sub_226E92AB8(&v19, v14 + 16);
  sub_226E92AB8(v18, v14 + 56);
  *(v14 + 96) = v16;
  *(v14 + 112) = v12;
  sub_226E92AB8(v17, v14 + 120);
  (*(v8 + 104))(v11, *a3, v7);
  v20 = v13;
  v21 = &off_283AB4F18;
  *&v19 = v14;
  swift_beginAccess();

  sub_2273632AC(&v19, v11);
  swift_endAccess();
}

uint64_t sub_2271AB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v48 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - v18;
  v20 = sub_22766B390();
  v46 = *(v20 - 8);
  v47 = v20;
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v24 = sub_22766B380();
  v25 = sub_22766C8B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = a1;
    v27 = v26;
    v42 = swift_slowAlloc();
    v53 = v42;
    *v27 = 134218498;
    *(v27 + 4) = v52;
    *(v27 + 12) = 2080;
    v28 = sub_22766CE50();
    v45 = a6;
    v43 = v19;
    v30 = a4;
    v31 = a5;
    v32 = a2;
    v33 = sub_226E97AE8(v28, v29, &v53);
    v34 = a3;
    v35 = v45;

    *(v27 + 14) = v33;
    a2 = v32;
    a5 = v31;
    a4 = v30;
    *(v27 + 22) = 2048;
    a6 = v35;
    *(v27 + 24) = v35;
    a3 = v34;
    v19 = v43;
    _os_log_impl(&dword_226E8E000, v24, v25, "Converting from Async-Await to Promise: %ld:%s:%lu", v27, 0x20u);
    v36 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AA9A450](v36, -1, -1);
    v37 = v27;
    a1 = v44;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  (*(v46 + 8))(v23, v47);
  v38 = sub_22766C4B0();
  (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v49;
  v40 = v52;
  *(v39 + 40) = v50;
  *(v39 + 48) = v40;
  *(v39 + 56) = a3;
  *(v39 + 64) = a4;
  *(v39 + 72) = a5;
  *(v39 + 80) = a6;
  *(v39 + 88) = a1;
  *(v39 + 96) = a2;

  sub_2271B42B0(0, 0, v19, v51, v39);
}

uint64_t sub_2271ABF60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_2276624A0();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271AC184;

  return v22(v18);
}

uint64_t sub_2271AC184()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271AC500;
  }

  else
  {
    v3 = sub_2271AC298;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AC298()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &qword_27D7BBD48, &qword_22767C010);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271AC500()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &qword_27D7BBD48, &qword_22767C010);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271AC73C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v20;
  *(v8 + 40) = v19;
  *(v8 + 112) = v18;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_22766B390();
  *(v8 + 64) = v10;
  v11 = *(v10 - 8);
  *(v8 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 96) = v14;
  *v14 = v8;
  v14[1] = sub_2271AC8BC;

  return v16();
}

uint64_t sub_2271AC8BC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2271ACBBC;
  }

  else
  {
    v3 = sub_2271AC9D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AC9D0()
{
  v28 = v0;
  v1 = *(v0 + 88);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v24 = *(v0 + 64);
    v25 = *(v0 + 88);
    v5 = *(v0 + 32);
    v23 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v26);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v23;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v25, v24);
  }

  else
  {
    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v26 = 0;
  v27 = 0;
  v17(&v26);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271ACBBC()
{
  v30 = v0;
  v1 = *(v0 + 80);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v26 = *(v0 + 64);
    v27 = *(v0 + 80);
    v5 = *(v0 + 32);
    v25 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v28);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v25;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v27, v26);
  }

  else
  {
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 64);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 104);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v28 = v17;
  v29 = 1;
  v20 = v17;
  v19(&v28);

  v22 = *(v0 + 80);
  v21 = *(v0 + 88);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2271ACDC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v20;
  *(v8 + 56) = v19;
  *(v8 + 128) = v18;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a6;
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  v11 = *(v10 - 8);
  *(v8 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 112) = v14;
  *v14 = v8;
  v14[1] = sub_2271ACF50;

  return v16(v8 + 16);
}

uint64_t sub_2271ACF50()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2271AD258;
  }

  else
  {
    v3 = sub_2271AD064;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AD064()
{
  v29 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  if (v4)
  {
    v8 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 104);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 128);
    v25 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, v27);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v24;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v6 + 8))(v26, v25);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v19 = *(v0 + 24);
  v27[0] = *(v0 + 16);
  v27[1] = v19;
  v28 = 0;

  v18(v27);
  swift_bridgeObjectRelease_n();
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2271AD258()
{
  v30 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  if (v4)
  {
    v8 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 96);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 128);
    v26 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, v28);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v25;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v5 + 8))(v27, v26);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v17 = *(v0 + 120);
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v28[0] = v17;
  v28[1] = 0;
  v29 = 1;
  v20 = v17;
  v19(v28);

  v22 = *(v0 + 96);
  v21 = *(v0 + 104);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2271AD454(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v20;
  *(v8 + 48) = v19;
  *(v8 + 120) = v18;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_2271AD5DC;

  return v16(v8 + 16);
}

uint64_t sub_2271AD5DC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271BFD4C;
  }

  else
  {
    v3 = sub_2271AD6F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AD6F0()
{
  v28 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  if (v4)
  {
    v8 = *(v0 + 40);
    v23 = *(v0 + 48);
    v25 = *(v0 + 96);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 120);
    v24 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, &v26);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v23;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v6 + 8))(v25, v24);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  v26 = *(v0 + 16);
  v27 = 0;
  swift_unknownObjectRetain();
  v18(&v26);
  swift_unknownObjectRelease_n();
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271AD8E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v20;
  *(v8 + 56) = v19;
  *(v8 + 128) = v18;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a6;
  v10 = sub_22766B390();
  *(v8 + 80) = v10;
  v11 = *(v10 - 8);
  *(v8 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 112) = v14;
  *v14 = v8;
  v14[1] = sub_2271ADA6C;

  return v16(v8 + 16);
}

uint64_t sub_2271ADA6C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2271ADD78;
  }

  else
  {
    v3 = sub_2271ADB80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271ADB80()
{
  v30 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  if (v4)
  {
    v8 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 104);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 128);
    v25 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, &v27);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v24;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v6 + 8))(v26, v25);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 24);
  v27 = *(v0 + 16);
  v28 = v19;
  v29 = 0;
  sub_226F5E0B4(v27, v19);
  v17(&v27);
  sub_2270934D8(v27, v28, v29);
  sub_226EDC420(*(v0 + 16), *(v0 + 24));
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2271ADD78()
{
  v31 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  if (v4)
  {
    v8 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 96);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 128);
    v26 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, &v28);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v25;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v5 + 8))(v27, v26);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v17 = *(v0 + 120);
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v28 = v17;
  v29 = 0;
  v30 = 1;
  v20 = v17;
  v19(&v28);

  sub_2270934D8(v28, v29, v30);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2271ADF78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA430, &qword_227678BF8);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_227664900();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271AE19C;

  return v22(v18);
}

uint64_t sub_2271AE19C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271AE518;
  }

  else
  {
    v3 = sub_2271AE2B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AE2B0()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &unk_27D7BA430, &qword_227678BF8);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271AE518()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BA430, &qword_227678BF8);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271AE754(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v20;
  *(v8 + 48) = v19;
  *(v8 + 120) = v18;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_2271AE8DC;

  return v16(v8 + 16);
}

uint64_t sub_2271AE8DC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271BFD4C;
  }

  else
  {
    v3 = sub_2271BFD48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AE9F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v20;
  *(v8 + 48) = v19;
  *(v8 + 120) = v18;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_2271AEB78;

  return v16(v8 + 16);
}

uint64_t sub_2271AEB78()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271BFD4C;
  }

  else
  {
    v3 = sub_2271AEC8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AEC8C()
{
  v29 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  if (v4)
  {
    v8 = *(v0 + 40);
    v24 = *(v0 + 48);
    v26 = *(v0 + 96);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 120);
    v25 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, &v27);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v24;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v6 + 8))(v26, v25);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  v27 = *(v0 + 16);
  v28 = 0;
  v19 = v27;
  v18(&v27);

  v21 = *(v0 + 88);
  v20 = *(v0 + 96);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2271AEE7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v20;
  *(v8 + 48) = v19;
  *(v8 + 120) = v18;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_2271AF004;

  return v16(v8 + 16);
}

uint64_t sub_2271AF004()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271BFD4C;
  }

  else
  {
    v3 = sub_2271BFD5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AF118(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD40, &unk_227684AE0);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_22766B5F0();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271AF33C;

  return v22(v18);
}

uint64_t sub_2271AF33C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271AF6B8;
  }

  else
  {
    v3 = sub_2271AF450;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AF450()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &qword_27D7BBD40, &unk_227684AE0);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271AF6B8()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &qword_27D7BBD40, &unk_227684AE0);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271AF8F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7F0, &qword_22767C068);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_227665D90();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271AFB18;

  return v22(v18);
}

uint64_t sub_2271AFB18()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271AFE94;
  }

  else
  {
    v3 = sub_2271AFC2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271AFC2C()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &unk_27D7BD7F0, &qword_22767C068);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271AFE94()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BD7F0, &qword_22767C068);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B00D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD00, &unk_227684CE0);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_227665E60();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271B02F4;

  return v22(v18);
}

uint64_t sub_2271B02F4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271B0670;
  }

  else
  {
    v3 = sub_2271B0408;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B0408()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &unk_27D7BBD00, &unk_227684CE0);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B0670()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BBD00, &unk_227684CE0);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B08AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_227667A70();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271B0AD0;

  return v22(v18);
}

uint64_t sub_2271B0AD0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271B0E4C;
  }

  else
  {
    v3 = sub_2271B0BE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B0BE4()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &qword_27D7BA400, &unk_227684C10);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B0E4C()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &qword_27D7BA400, &unk_227684C10);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B1088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD30, &qword_22767BFC8);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_227663CA0();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271B12AC;

  return v22(v18);
}

uint64_t sub_2271B12AC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271B1628;
  }

  else
  {
    v3 = sub_2271B13C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B13C0()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &unk_27D7BBD30, &qword_22767BFC8);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B1628()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BBD30, &qword_22767BFC8);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B1864(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v20;
  *(v8 + 48) = v19;
  *(v8 + 120) = v18;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_2271B19EC;

  return v16(v8 + 16);
}

uint64_t sub_2271B19EC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271BFD4C;
  }

  else
  {
    v3 = sub_2271B1B00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B1B00()
{
  v28 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  if (v4)
  {
    v8 = *(v0 + 40);
    v23 = *(v0 + 48);
    v25 = *(v0 + 96);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 120);
    v24 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, &v26);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v23;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v6 + 8))(v25, v24);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v26 = *(v0 + 16);
  v27 = 0;
  v17(&v26);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271B1CE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_2276638D0();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271B1F04;

  return v22(v18);
}

uint64_t sub_2271B1F04()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271B2280;
  }

  else
  {
    v3 = sub_2271B2018;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B2018()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &unk_27D7BBD20, &unk_227684BF0);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B2280()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BBD20, &unk_227684BF0);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B24BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v20;
  *(v8 + 48) = v19;
  *(v8 + 120) = v18;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_22766B390();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_2271B2644;

  return v16(v8 + 16);
}

uint64_t sub_2271B2644()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271B294C;
  }

  else
  {
    v3 = sub_2271B2758;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B2758()
{
  v28 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  if (v4)
  {
    v8 = *(v0 + 40);
    v23 = *(v0 + 48);
    v25 = *(v0 + 96);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 120);
    v24 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, &v26);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v23;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v6 + 8))(v25, v24);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  v26 = *(v0 + 16);
  v27 = 0;

  v18(&v26);
  swift_bridgeObjectRelease_n();
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271B294C()
{
  v30 = v0;
  v1 = *(v0 + 88);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  if (v4)
  {
    v8 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 88);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 120);
    v26 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 134218498;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    v14 = sub_22766CE50();
    v16 = sub_226E97AE8(v14, v15, &v28);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v25;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v5 + 8))(v27, v26);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v17 = *(v0 + 112);
  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v28 = v17;
  v29 = 1;
  v20 = v17;
  v19(&v28);

  v22 = *(v0 + 88);
  v21 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2271B2B48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD480, &unk_227684B90);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_227668B50();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271B2D6C;

  return v22(v18);
}

uint64_t sub_2271B2D6C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271B30E8;
  }

  else
  {
    v3 = sub_2271B2E80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B2E80()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &unk_27D7BD480, &unk_227684B90);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B30E8()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BD480, &unk_227684B90);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B3324(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_227667670();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_2271B3548;

  return v22(v18);
}

uint64_t sub_2271B3548()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2271B38C4;
  }

  else
  {
    v3 = sub_2271B365C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B365C()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_226E97D1C(v20, &unk_27D7BD450, &qword_227684B70);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B38C4()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BD450, &qword_227684B70);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B3B00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v24;
  *(v8 + 40) = v23;
  *(v8 + 136) = v22;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF50, &qword_22767C288);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  *(v8 + 112) = v16;
  v20 = (a4 + *a4);
  v17 = a4[1];
  v18 = swift_task_alloc();
  *(v8 + 120) = v18;
  *v18 = v8;
  v18[1] = sub_2271B3D00;

  return v20(v16);
}

uint64_t sub_2271B3D00()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2271B4074;
  }

  else
  {
    v3 = sub_2271B3E14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271B3E14()
{
  v31 = v0;
  v1 = *(v0 + 104);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v28 = *(v0 + 80);
    v29 = *(v0 + 104);
    v5 = *(v0 + 32);
    v27 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v30);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v27;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v29, v28);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 72);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  sub_226E93170(v17, v18, &unk_27D7BD3F0, &unk_2276823F0);
  swift_storeEnumTagMultiPayload();
  v20(v18);
  sub_226E97D1C(v18, &unk_27D7BBF50, &qword_22767C288);
  sub_226E97D1C(v17, &unk_27D7BD3F0, &unk_2276823F0);
  v22 = *(v0 + 104);
  v21 = *(v0 + 112);
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2271B4074()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_22766CE50();
    v13 = sub_226E97AE8(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_226E97D1C(v19, &unk_27D7BBF50, &qword_22767C288);
  v24 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 96);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2271B42B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_226E93170(a3, v25 - v11, &unk_27D7BC8E0, &qword_2276784C0);
  v13 = sub_22766C4B0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_226E97D1C(v12, &unk_27D7BC8E0, &qword_2276784C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22766C4A0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_22766C420();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_22766C0B0() + 32;
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

    sub_226E97D1C(a3, &unk_27D7BC8E0, &qword_2276784C0);

    return v23;
  }

LABEL_8:
  sub_226E97D1C(a3, &unk_27D7BC8E0, &qword_2276784C0);
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

void sub_2271B45AC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_226E93170(a1 + 32, &v46, &qword_27D7BC040, &qword_22767C358);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_226E92AB8(v48, v43);
  v9 = *a3;
  v10 = sub_226E92000(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_226FE9AC0(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_226E92000(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_22766D220();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_226FF367C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_226E92AB8(v43, v22[7] + 40 * v10);
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 88;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_226E93170(v26, &v46, &qword_27D7BC040, &qword_22767C358);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_226E92AB8(v48, v43);
      v30 = *a3;
      v31 = sub_226E92000(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_226FE9AC0(v35, 1);
        v37 = *a3;
        v31 = sub_226E92000(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_226E92AB8(v43, v39[7] + 40 * v31);
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 56;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_2271B4990(uint64_t a1, uint64_t a2)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = type metadata accessor for AssetFileStore();
  v20[4] = &off_283AC5580;
  v20[0] = a1;
  (*(v5 + 104))(v8, *MEMORY[0x277D4EF60], v4);
  v19[7] = 1;
  sub_227669760();
  sub_226E91B50(v20, a2 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_fileStore);
  v9 = type metadata accessor for ScriptDispatchService();
  v10 = swift_allocObject();
  *(v10 + 24) = MEMORY[0x277D84F98];
  v11 = sub_2276696C0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v10 + 16) = sub_2276696B0();
  v14 = (a2 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService);
  v14[3] = v9;
  v14[4] = &off_283AC64D0;
  *v14 = v10;
  v15 = *(v11 + 48);
  v16 = *(v11 + 52);
  swift_allocObject();
  v17 = sub_2276696B0();
  __swift_destroy_boxed_opaque_existential_0(v20);
  *(a2 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_lock) = v17;
  type metadata accessor for ScriptLinkState();
  swift_storeEnumTagMultiPayload();
  return a2;
}

id sub_2271B4B98(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = sub_227669A90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for AssetFileStore();
  v27[4] = &off_283AC5580;
  v27[0] = a1;
  (*(v7 + 104))(v10, *MEMORY[0x277D4EF60], v6);
  v26 = 1;
  sub_227669760();
  sub_226E91B50(v27, &a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_fileStore]);
  LOBYTE(a1) = sub_2276693D0();
  v11 = type metadata accessor for ScriptConfiguration();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC15SeymourServices19ScriptConfiguration_platform] = a1;
  v25.receiver = v12;
  v25.super_class = v11;
  *&a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_scriptConfiguration] = objc_msgSendSuper2(&v25, sel_init);
  v13 = type metadata accessor for ScriptDispatchService();
  v14 = swift_allocObject();
  *(v14 + 24) = MEMORY[0x277D84F98];
  v15 = sub_2276696C0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v14 + 16) = sub_2276696B0();
  v18 = &a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService];
  v18[3] = v13;
  v18[4] = &off_283AC64D0;
  *v18 = v14;
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock] = sub_2276696B0();
  type metadata accessor for ScriptLinkState();
  swift_storeEnumTagMultiPayload();
  a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_platform] = a2;
  v21 = type metadata accessor for NetworkScriptLink();
  v24.receiver = a3;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v22;
}

uint64_t sub_2271B4E20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AssetFileStore();
  v57[3] = v13;
  v57[4] = &off_283AC5580;
  v57[0] = a1;
  v56[3] = type metadata accessor for ScriptBundleLoader();
  v56[4] = &off_283AB25A0;
  v56[0] = a2;
  (*(v9 + 104))(v12, *MEMORY[0x277D4F008], v8);
  v54[0] = 0x4034000000000000;
  sub_227669760();
  sub_226E91B50(v56, a4 + 32);
  sub_226E91B50(v57, v54);
  LOBYTE(a2) = sub_2276693D0();
  v14 = v55;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v52 = v13;
  v53 = &off_283AC5580;
  v51[0] = v20;
  v21 = objc_allocWithZone(type metadata accessor for NetworkScriptLink());
  v22 = v52;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = sub_2271B4B98(*v26, a2, v21);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v54);
  *(a4 + 16) = v28;
  sub_226E91B50(v57, v54);
  v29 = v55;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v33;
  v52 = v13;
  v53 = &off_283AC5580;
  v51[0] = v35;
  v36 = type metadata accessor for OfflineScriptLink();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v51, v13);
  v41 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (v51 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = sub_2271B4990(*v43, v39);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v54);
  *(a4 + 24) = v45;
  sub_226E91B50(a3, a4 + 72);
  v46 = sub_2276696C0();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_2276696B0();
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  *(a4 + 112) = v49;
  *(a4 + 120) = 0;
  *(a4 + 128) = 2;
  return a4;
}

uint64_t *sub_2271B52E4(void *a1, uint64_t *a2, char a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_22766B390();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v20[3] = &type metadata for PlaybackVoucherDataStore;
  v20[4] = &off_283A98408;
  a4[2] = a1;
  sub_226E91B50(a2, (a4 + 3));
  sub_226E91B50(v20, (a4 + 8));
  *(a4 + 104) = a3;
  v11 = a1;
  v12 = sub_227662580();
  a4[14] = v12;
  a4[15] = v13;
  v14 = v12;
  v15 = v13;
  v18 = sub_22766A9B0();
  v19 = &off_283AB2458;
  __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_226F5E0B4(v14, v15);
  sub_22766A980();

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(v20);
  sub_226E92AB8(&v17, (a4 + 16));
  return a4;
}

uint64_t sub_2271B556C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v14 = type metadata accessor for AssetDataStore();
  v15 = &off_283A9E1F8;
  *&v13 = a1;
  v11 = type metadata accessor for KeyProvider();
  v12 = &off_283AB1678;
  *&v10 = a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_22766CD20())
  {
    sub_226F4F830(MEMORY[0x277D84F90]);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  *(a4 + 96) = v8;
  sub_226E92AB8(&v13, a4 + 16);
  sub_226E92AB8(&v10, a4 + 56);
  sub_226E92AB8(a3, a4 + 104);
  return a4;
}

uint64_t sub_2271B563C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766A8A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
  v28[4] = &off_283AB60F8;
  v28[0] = a1;
  *(a3 + 32) = -1;
  *(a3 + 16) = 0u;
  sub_226E91B50(v28, a3 + 40);
  v10 = sub_2276693C0();
  (*(v6 + 104))(v9, *MEMORY[0x277D4F978], v5);
  v11 = sub_226EC9A38(v9, v10);

  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    sub_227666D80();
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v12 = sub_22766C950();
    v13 = swift_allocObject();
    swift_weakInit();
    v26 = sub_2271BF92C;
    v27 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2275D18A0;
    v25 = &block_descriptor_383;
    v14 = _Block_copy(&aBlock);

    v15 = sub_22766C0B0();

    swift_beginAccess();
    notify_register_dispatch((v15 + 32), (a3 + 32), v12, v14);
    swift_endAccess();

    _Block_release(v14);

    sub_227666D90();
    v16 = sub_22766C950();
    v17 = swift_allocObject();
    swift_weakInit();

    v26 = sub_2271BF934;
    v27 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2275D18A0;
    v25 = &block_descriptor_387;
    v18 = _Block_copy(&aBlock);

    v19 = sub_22766C0B0();

    swift_beginAccess();
    notify_register_dispatch((v19 + 32), (a3 + 36), v16, v18);
    swift_endAccess();
    _Block_release(v18);

    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return a3;
}

id sub_2271B59F0(uint64_t a1)
{
  v2 = type metadata accessor for BagConsumer();
  v15[3] = v2;
  v15[4] = &off_283A9F810;
  v15[0] = a1;
  v3 = type metadata accessor for EngagementPushHandler();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v15, v2);
  v6 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_283A9F810;
  v14[0] = v10;
  *&v4[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_226E91B50(v14, &v4[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_bagConsumer]);
  *&v4[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v11;
}

id sub_2271B5B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerContainer();
  v19[3] = v4;
  v19[4] = &off_283AC6E68;
  v19[0] = a1;
  v5 = type metadata accessor for PushServiceObserver();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v19, v4);
  v8 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v18[3] = v4;
  v18[4] = &off_283AC6E68;
  v18[0] = v12;
  *&v6[OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_connection] = 0;
  v13 = MEMORY[0x277D4F9B0];
  v14 = &v6[OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_eventHub];
  *v14 = a2;
  *(v14 + 1) = v13;
  sub_226E91B50(v18, &v6[OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_container]);
  v17.receiver = v6;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v15;
}

uint64_t sub_2271B5CE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for AssetFileStore();
  v27[3] = v6;
  v27[4] = &off_283AC5580;
  v27[0] = a1;
  v25 = type metadata accessor for ScriptBundleLoader();
  v26 = &off_283AB25A0;
  v24[0] = a2;
  v7 = type metadata accessor for ScriptConnection();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v27, v6);
  v12 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v25;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_2271B4E20(*v14, *v20, a3, v10);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v22;
}

uint64_t sub_2271B5EC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for AccountSyncStatusObserver();
  v29[3] = v6;
  v29[4] = &off_283AB4F98;
  v29[0] = a1;
  v7 = type metadata accessor for ServerContainer();
  v27 = v7;
  v28 = &off_283AC6E68;
  v26[0] = a2;
  v8 = type metadata accessor for ServerEndpoint();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v29, v6);
  v13 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v27;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v15;
  v24 = *v21;
  *(v11 + 40) = v6;
  *(v11 + 48) = &off_283AB4F98;
  *(v11 + 16) = v23;
  *(v11 + 80) = v7;
  *(v11 + 88) = &off_283AC6E68;
  *(v11 + 56) = v24;
  *(v11 + 104) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0;
  sub_227662660();
  *(v11 + 96) = a3 & 1;
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v11;
}

uint64_t sub_2271B60EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v47 = a5;
  v45 = a4;
  v46 = a3;
  v50 = sub_22766A8A0();
  v49 = *(v50 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227669A90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerSyncCoordinator();
  v57[3] = v14;
  v57[4] = &off_283A96748;
  v57[0] = a1;
  v15 = type metadata accessor for PairedSyncCoordinator();
  v55 = v15;
  v56 = &off_283ACB0E8;
  v54[0] = a2;
  v16 = type metadata accessor for SyncCoordinator();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v57, v14);
  v21 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = v55;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v23;
  v32 = *v29;
  v53[3] = v14;
  v53[4] = &off_283A96748;
  v53[0] = v31;
  v52[3] = v15;
  v52[4] = &off_283ACB0E8;
  v52[0] = v32;
  *(v19 + 160) = 0;
  *(v19 + 168) = 0;
  v33 = *(v10 + 104);
  v33(v13, *MEMORY[0x277D4EE88], v9);
  LOBYTE(v51) = 1;
  sub_227669760();
  v33(v13, *MEMORY[0x277D4EEA0], v9);
  LOBYTE(v51) = 1;
  sub_227669760();
  v33(v13, *MEMORY[0x277D4EE60], v9);
  LOBYTE(v51) = 0;
  sub_227669760();
  v33(v13, *MEMORY[0x277D4F0A0], v9);
  v51 = 0x4014000000000000;
  sub_227669760();
  v33(v13, *MEMORY[0x277D4EE38], v9);
  v51 = 0x403E000000000000;
  v34 = v45;
  sub_227669760();
  sub_226E91B50(v53, v19 + 16);
  sub_226E91B50(v52, v19 + 56);
  v35 = MEMORY[0x277D4F9B0];
  *(v19 + 96) = v46;
  *(v19 + 104) = v35;
  *(v19 + 112) = v47;
  sub_226E91B50(v34, v19 + 120);
  v36 = sub_227669B50();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  *(v19 + 176) = sub_227669B40();
  v39 = *(v19 + 112);
  v40 = sub_2276693C0();
  v41 = v49;
  v42 = v48;
  v43 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x277D4F880], v50);
  LOBYTE(v10) = sub_226EC9A38(v42, v40);

  (*(v41 + 8))(v42, v43);
  if (v10)
  {
    sub_2271DA1A4();
  }

  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v57);
  return v19;
}

uint64_t sub_2271B66CC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = type metadata accessor for AssetDataStore();
  v24[3] = v6;
  v24[4] = &off_283A9E1F8;
  v24[0] = a1;
  v22 = type metadata accessor for KeyProvider();
  v23 = &off_283AB1678;
  v21[0] = a2;
  type metadata accessor for AssetKeyDeletionHandler();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v22;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_2271B556C(*v11, *v17, a3, v7);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

void *sub_2271B68B0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29[1] = *a4;
  v8 = type metadata accessor for ConfigurationDataStore();
  v36[3] = v8;
  v36[4] = &off_283AA1218;
  v36[0] = a2;
  v9 = type metadata accessor for ConfigurationScriptClient();
  v34 = v9;
  v35 = &off_283AB7AC8;
  v33[0] = a3;
  type metadata accessor for ConfigurationSystem();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v36, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v34;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v32[3] = v8;
  v32[4] = &off_283AA1218;
  v31[4] = &off_283AB7AC8;
  v32[0] = v22;
  v31[3] = v9;
  v31[0] = v23;
  sub_226E91B50(a1, (v10 + 2));
  sub_226E91B50(v32, (v10 + 7));
  sub_226E91B50(v31, (v10 + 12));
  v24 = MEMORY[0x277D4F9B0];
  v10[17] = a4;
  v10[18] = v24;
  v25 = sub_227669B50();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  swift_retain_n();
  v10[19] = sub_227669B40();
  swift_allocObject();
  swift_weakInit();
  sub_227118FC0();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);

  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v10;
}

uint64_t sub_2271B6BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v77 = a6;
  LODWORD(v82) = a5;
  v84 = sub_22766A8A0();
  v10 = *(v84 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v84);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SessionPreferenceDataStore();
  v93[3] = v14;
  v93[4] = &off_283AA5168;
  v93[0] = a2;
  v15 = type metadata accessor for SyncCoordinator();
  v91 = v15;
  v92 = &off_283AA3680;
  v90[0] = a4;
  type metadata accessor for SessionPreferenceSystem();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v93, v14);
  v18 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v91;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v20;
  v29 = *v26;
  v89[3] = v14;
  v89[4] = &off_283AA5168;
  v89[0] = v28;
  v87 = v15;
  v88 = &off_283AA3680;
  v86[0] = v29;
  v30 = MEMORY[0x277D4F9B0];
  *(v16 + 16) = a1;
  *(v16 + 24) = v30;
  sub_226E91B50(v89, v16 + 32);
  v83 = a3;
  sub_226E91B50(a3, v16 + 80);
  *(v16 + 72) = v82;
  v31 = sub_227669B50();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  swift_retain_n();
  *(v16 + 120) = sub_227669B40();
  v82 = v16;
  sub_226E91B50(v86, v16 + 128);
  v34 = __swift_project_boxed_opaque_existential_0(v86, v87);
  v35 = *v34;
  v36 = *(*v34 + 112);
  v37 = sub_2276693C0();
  v38 = v10[13];
  v80 = *MEMORY[0x277D4F880];
  v39 = v84;
  v79 = v38;
  (v38)(v13);
  LOBYTE(a3) = sub_226EC9A38(v13, v37);

  v40 = v10[1];
  v81 = v10 + 1;
  v78 = v40;
  v40(v13, v39);
  if (a3)
  {
    v41 = *__swift_project_boxed_opaque_existential_0(v35 + 2, v35[5]);
    v42 = MEMORY[0x277D53D00];
    sub_22718C53C(&qword_27D7BBED0, &qword_22767C210, MEMORY[0x277D53D00]);
    v43 = *__swift_project_boxed_opaque_existential_0(v35 + 7, v35[10]);
    sub_2271AB4E4(&qword_27D7BBEC8, &qword_22767C208, v42);
  }

  sub_22766A3F0();
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D4F9D0];
  v44[2] = v77;
  v44[3] = v45;
  v44[4] = MEMORY[0x277D4F9D8];
  sub_22766A8E0();
  v46 = MEMORY[0x277D4F9B0];
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBEB8, &qword_22767C200);
  v47 = swift_allocObject();
  *(v47 + 16) = a1;
  *(v47 + 24) = v46;
  sub_226E9CFD0(qword_28139AAF0, &unk_27D7BBEB8, &qword_22767C200);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v85);
  v48 = __swift_project_boxed_opaque_existential_0(v86, v87);
  v49 = *v48;
  v50 = *(*v48 + 112);
  v51 = sub_2276693C0();
  v52 = v80;
  v53 = v84;
  v54 = v79;
  v79(v13, v80, v84);
  v55 = sub_226EC9A38(v13, v51);

  v56 = v78;
  v78(v13, v53);
  if (v55)
  {
    v57 = *__swift_project_boxed_opaque_existential_0(v49 + 2, v49[5]);
    v58 = MEMORY[0x277D53D28];
    sub_22718C53C(&qword_27D7BBEE0, &qword_22767C220, MEMORY[0x277D53D28]);
    v59 = *__swift_project_boxed_opaque_existential_0(v49 + 7, v49[10]);
    sub_2271AB4E4(&qword_27D7BBED8, &qword_22767C218, v58);
  }

  v60 = __swift_project_boxed_opaque_existential_0(v86, v87);
  v61 = *v60;
  v62 = *(*v60 + 112);
  v63 = sub_2276693C0();
  v54(v13, v52, v53);
  v64 = sub_226EC9A38(v13, v63);

  v56(v13, v53);
  if (v64)
  {
    v65 = *__swift_project_boxed_opaque_existential_0(v61 + 2, v61[5]);
    v66 = MEMORY[0x277D53D30];
    sub_22718C53C(&qword_27D7BBEF0, &qword_22767C230, MEMORY[0x277D53D30]);
    v67 = *__swift_project_boxed_opaque_existential_0(v61 + 7, v61[10]);
    sub_2271AB4E4(&qword_27D7BBEE8, &qword_22767C228, v66);
  }

  v68 = __swift_project_boxed_opaque_existential_0(v86, v87);
  v69 = *v68;
  v70 = *(*v68 + 112);
  v71 = sub_2276693C0();
  v54(v13, v52, v53);
  v72 = sub_226EC9A38(v13, v71);

  v56(v13, v53);
  if (v72)
  {
    v73 = *__swift_project_boxed_opaque_existential_0(v69 + 2, v69[5]);
    v74 = MEMORY[0x277D53D38];
    sub_22718C53C(&unk_27D7BBF00, &qword_22767C240, MEMORY[0x277D53D38]);
    v75 = *__swift_project_boxed_opaque_existential_0(v69 + 7, v69[10]);
    sub_2271AB4E4(&qword_27D7BBEF8, &qword_22767C238, v74);
  }

  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_destroy_boxed_opaque_existential_0(v89);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v90);
  __swift_destroy_boxed_opaque_existential_0(v93);
  return v82;
}

void *sub_2271B73E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v67 = a5;
  v64 = sub_22766A8A0();
  v9 = *(v64 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v64);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PrivacyPreferenceDataSource();
  v78[3] = v13;
  v78[4] = &off_283AB2760;
  v78[0] = a1;
  v14 = type metadata accessor for SyncCoordinator();
  v76 = v14;
  v77 = &off_283AA3680;
  v75[0] = a4;
  type metadata accessor for PrivacyPreferenceSystem();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v78, v13);
  v17 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = v76;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v19;
  v28 = *v25;
  v74[3] = v13;
  v74[4] = &off_283AB2760;
  v74[0] = v27;
  v72 = v14;
  v73 = &off_283AA3680;
  v71[0] = v28;
  sub_226E91B50(v74, (v15 + 2));
  v29 = MEMORY[0x277D4F9B0];
  v15[7] = a2;
  v15[8] = v29;
  v69 = a3;
  sub_226E91B50(a3, (v15 + 9));
  v30 = sub_227669B50();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  swift_retain_n();
  v65 = a2;
  v66 = sub_227669B40();
  v15[14] = v66;
  v68 = v15;
  sub_226E91B50(v71, (v15 + 15));
  v33 = __swift_project_boxed_opaque_existential_0(v71, v72);
  v34 = *v33;
  v35 = *(*v33 + 112);
  v36 = sub_2276693C0();
  v37 = *MEMORY[0x277D4F880];
  v38 = v9[13];
  v39 = v64;
  v38(v12, v37, v64);
  LOBYTE(v13) = sub_226EC9A38(v12, v36);

  v40 = v9[1];
  v40(v12, v39);
  if (v13)
  {
    v41 = *__swift_project_boxed_opaque_existential_0(v34 + 2, v34[5]);
    v42 = MEMORY[0x277D53D10];
    sub_22718C53C(&qword_27D7BBEA0, &qword_22767C1E8, MEMORY[0x277D53D10]);
    v43 = *__swift_project_boxed_opaque_existential_0(v34 + 7, v34[10]);
    sub_2271AB4E4(&qword_27D7BBE98, &qword_22767C1E0, v42);
  }

  v44 = __swift_project_boxed_opaque_existential_0(v71, v72);
  v45 = *v44;
  v46 = *(*v44 + 112);
  v47 = sub_2276693C0();
  v38(v12, v37, v39);
  v48 = sub_226EC9A38(v12, v47);

  v40(v12, v39);
  if (v48)
  {
    v49 = *__swift_project_boxed_opaque_existential_0(v45 + 2, v45[5]);
    v50 = MEMORY[0x277D53D60];
    sub_22718C53C(&qword_27D7BBEB0, &qword_22767C1F8, MEMORY[0x277D53D60]);
    v51 = *__swift_project_boxed_opaque_existential_0(v45 + 7, v45[10]);
    sub_2271AB4E4(&qword_27D7BBEA8, &qword_22767C1F0, v50);
  }

  sub_22766A410();
  v52 = swift_allocObject();
  v53 = MEMORY[0x277D4F9D0];
  v54 = v67;
  v52[2] = v67;
  v52[3] = v53;
  v55 = MEMORY[0x277D4F9D8];
  v52[4] = MEMORY[0x277D4F9D8];
  sub_22766A8E0();
  v56 = v54;
  v57 = v65;
  v58 = MEMORY[0x277D4F9B0];
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v70);
  sub_22766A3A0();
  v59 = swift_allocObject();
  v59[2] = v56;
  v59[3] = v53;
  v59[4] = v55;
  v60 = v56;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v70);
  sub_22766A5F0();
  v61 = swift_allocObject();
  v61[2] = v60;
  v61[3] = v53;
  v61[4] = v55;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBE88, &qword_22767C1D8);
  v62 = swift_allocObject();
  *(v62 + 16) = v57;
  *(v62 + 24) = v58;
  sub_226E9CFD0(&unk_2813A2E00, &unk_27D7BBE88, &qword_22767C1D8);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v70);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v78);
  return v68;
}

void *sub_2271B7B20(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for AchievementEnvironmentCacheCoordinator();
  v28[3] = v9;
  v28[4] = &off_283A9A890;
  v28[0] = a1;
  v26 = v8;
  v27 = &off_283AA53B8;
  v25[0] = a4;
  type metadata accessor for AchievementProgressProvider();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v28, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v26;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v10[5] = v9;
  v10[6] = &off_283A9A890;
  v10[2] = v22;
  v10[15] = v8;
  v10[16] = &off_283AA53B8;
  v10[12] = v23;
  sub_226E92AB8(a2, (v10 + 7));
  sub_226E92AB8(a3, (v10 + 17));
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v10;
}

void *sub_2271B7D50(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CatalogDataStore();
  v26[3] = v6;
  v26[4] = &off_283A99B78;
  v26[0] = a2;
  v7 = type metadata accessor for ConfigurationDataStore();
  v24 = v7;
  v25 = &off_283AA1218;
  v23[0] = a3;
  type metadata accessor for WorkoutPlanInputValidator();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v6);
  v10 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v24;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v12;
  v21 = *v18;
  v8[5] = v6;
  v8[6] = &off_283A99B78;
  v8[2] = v20;
  v8[10] = v7;
  v8[11] = &off_283AA1218;
  v8[7] = v21;
  v8[18] = 0;
  v8[19] = 0;
  v8[17] = 0;
  sub_226E92AB8(a1, (v8 + 12));
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v8;
}

void *sub_2271B7F5C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v41 = a1;
  v42 = a2;
  v6 = MEMORY[0x277D545F8];
  v40 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8]);
  v7 = sub_2271BFC90(&qword_28139D358, v6);
  v8 = type metadata accessor for AchievementSystem();
  v46[3] = v8;
  v46[4] = &off_283AA3410;
  v46[0] = a3;
  v44 = &type metadata for AchievementTemplateSource;
  v45 = &off_283AADD00;
  v9 = swift_allocObject();
  v43[0] = v9;
  v10 = a4[11];
  v9[11] = a4[10];
  v9[12] = v10;
  v9[13] = a4[12];
  v11 = a4[7];
  v9[7] = a4[6];
  v9[8] = v11;
  v12 = a4[9];
  v9[9] = a4[8];
  v9[10] = v12;
  v13 = a4[3];
  v9[3] = a4[2];
  v9[4] = v13;
  v14 = a4[5];
  v9[5] = a4[4];
  v9[6] = v14;
  v15 = a4[1];
  v9[1] = *a4;
  v9[2] = v15;
  type metadata accessor for AchievementListener();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v46, v8);
  v18 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v44;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  v24 = *(v22[-1].Description + 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v20;
  v16[11] = v8;
  v16[12] = &off_283AA3410;
  v16[8] = v28;
  v16[16] = &type metadata for AchievementTemplateSource;
  v16[17] = &off_283AADD00;
  v29 = swift_allocObject();
  v16[13] = v29;
  v30 = v26[11];
  v29[11] = v26[10];
  v29[12] = v30;
  v29[13] = v26[12];
  v31 = v26[7];
  v29[7] = v26[6];
  v29[8] = v31;
  v32 = v26[9];
  v29[9] = v26[8];
  v29[10] = v32;
  v33 = v26[3];
  v29[3] = v26[2];
  v29[4] = v33;
  v34 = v26[5];
  v29[5] = v26[4];
  v29[6] = v34;
  v35 = v26[1];
  v29[1] = *v26;
  v29[2] = v35;
  v36 = MEMORY[0x277D4F9D0];
  v16[2] = v41;
  v16[3] = v36;
  v37 = v42;
  v16[4] = MEMORY[0x277D4F9D8];
  v16[5] = v37;
  v16[6] = v40;
  v16[7] = v7;
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v16;
}

id sub_2271B8270(uint64_t a1, char a2)
{
  v4 = type metadata accessor for RemoteBrowsingEnvironmentBuilder();
  v21[3] = v4;
  v21[4] = &off_283ABE3C0;
  v21[0] = a1;
  v5 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v4);
  v8 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v20[3] = v4;
  v20[4] = &off_283ABE3C0;
  v20[0] = v12;
  v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_platform] = a2;
  v13 = sub_2276696C0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_lock] = sub_2276696B0();
  sub_226E91B50(v20, &v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_remoteBrowsingEnvironmentBuilder]);
  v16 = &v6[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 2;
  v19.receiver = v6;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v17;
}

void *sub_2271B841C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v7 = MEMORY[0x277D545F8];
  v8 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8]);
  v9 = sub_2271BFC90(&qword_28139D358, v7);
  v10 = type metadata accessor for ScriptConnection();
  v34[3] = v10;
  v34[4] = &off_283AB69E8;
  v34[0] = a3;
  v11 = type metadata accessor for BookmarkSystem();
  v32 = v11;
  v33 = &off_283AAF940;
  v31[0] = a4;
  type metadata accessor for BookmarkListener();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v34, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v32;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v16;
  v25 = *v22;
  v12[8] = v10;
  v12[9] = &off_283AB69E8;
  v12[10] = v25;
  v12[13] = v11;
  v12[14] = &off_283AAF940;
  v26 = MEMORY[0x277D4F9D0];
  v27 = MEMORY[0x277D4F9D8];
  v12[2] = a1;
  v12[3] = v26;
  v12[4] = v27;
  v12[5] = v24;
  v12[15] = v30;
  v12[16] = v8;
  v12[17] = v9;
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v12;
}

void *sub_2271B86A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  v36 = a4;
  v13 = type metadata accessor for ScriptConnection();
  v40[3] = v13;
  v40[4] = &off_283AB69E8;
  v40[0] = a2;
  v14 = a5(0);
  v38 = v14;
  v39 = a6;
  v37[0] = a3;
  v15 = MEMORY[0x277D545F8];
  v16 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8]);
  v17 = sub_2271BFC90(&qword_28139D358, v15);
  a7(0);
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v40, v13);
  v20 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v38;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v22;
  v31 = *v28;
  v18[8] = v13;
  v18[9] = &off_283AB69E8;
  v18[10] = v31;
  v18[13] = v14;
  v18[14] = a6;
  v32 = MEMORY[0x277D4F9D0];
  v33 = MEMORY[0x277D4F9D8];
  v18[2] = a1;
  v18[3] = v32;
  v18[4] = v33;
  v18[5] = v30;
  v18[15] = v36;
  v18[16] = v16;
  v18[17] = v17;
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v40);
  return v18;
}

void *sub_2271B8938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RecommendationSystem();
  v33[3] = v8;
  v33[4] = &off_283AA1580;
  v33[0] = a2;
  v9 = type metadata accessor for ScriptConnection();
  v31 = v9;
  v32 = &off_283AB69E8;
  v30[0] = a3;
  v10 = MEMORY[0x277D545F8];
  v11 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8]);
  v12 = sub_2271BFC90(&qword_28139D358, v10);
  type metadata accessor for RecommendationListener();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v33, v8);
  v15 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = v31;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v17;
  v26 = *v23;
  v13[8] = v8;
  v13[9] = &off_283AA1580;
  v13[13] = v9;
  v13[14] = &off_283AB69E8;
  v13[10] = v26;
  v27 = MEMORY[0x277D4F9D0];
  v28 = MEMORY[0x277D4F9D8];
  v13[2] = a1;
  v13[3] = v27;
  v13[4] = v28;
  v13[5] = v25;
  v13[15] = a4;
  v13[16] = v11;
  v13[17] = v12;
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v13;
}

void *sub_2271B8BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v7 = MEMORY[0x277D545F8];
  v8 = sub_2271BFC90(&qword_28139D360, MEMORY[0x277D545F8]);
  v9 = sub_2271BFC90(&qword_28139D358, v7);
  v10 = type metadata accessor for ScriptConnection();
  v33[3] = v10;
  v33[4] = &off_283AB69E8;
  v33[0] = a3;
  v11 = type metadata accessor for WorkoutPlanSystem();
  v31 = v11;
  v32 = &off_283AA3858;
  v30[0] = a4;
  type metadata accessor for WorkoutPlanListener();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v31;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v16;
  v25 = *v22;
  v12[8] = v10;
  v12[9] = &off_283AB69E8;
  v12[16] = v11;
  v12[17] = &off_283AA3858;
  v26 = MEMORY[0x277D4F9D0];
  v12[2] = a1;
  v12[3] = v26;
  v12[4] = MEMORY[0x277D4F9D8];
  v12[5] = v24;
  v12[10] = v29;
  v12[11] = v8;
  v12[12] = v9;
  v12[13] = v25;
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v12;
}

uint64_t sub_2271B8E54(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766AE70();
  v21[3] = v13;
  v21[4] = MEMORY[0x277D4FAF8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(v13 - 8) + 32))(boxed_opaque_existential_0, a1, v13);
  v15 = sub_22766AC10();
  v20[3] = v15;
  v20[4] = MEMORY[0x277D54628];
  v16 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v15 - 8) + 32))(v16, a3, v15);
  *(a4 + 17) = a2;
  sub_226E91B50(v21, a4 + 24);
  sub_226E91B50(v20, a4 + 64);
  v17 = [objc_opt_self() standardUserDefaults];
  (*(v9 + 104))(v12, *MEMORY[0x277D4EF08], v8);
  sub_227669A80();
  (*(v9 + 8))(v12, v8);
  v18 = sub_22766BFD0();

  LOBYTE(v8) = [v17 BOOLForKey_];

  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v21);
  *(a4 + 16) = v8;
  return a4;
}

uint64_t sub_2271B9094(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v21 = a4;
  v22 = a3;
  v20 = a1;
  v5 = sub_227669A90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_226E99364(0, &unk_28139D298, 0x277CF0130);
  v26 = &off_283A9DE10;
  *&v24 = a2;
  v10 = type metadata accessor for AccountDeviceObserver();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  v14 = *(v6 + 104);
  v14(v9, *MEMORY[0x277D4EFA0], v5);
  v23 = 0;
  sub_227669760();
  *(v13 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch) = 2;
  v14(v9, *MEMORY[0x277D4EF98], v5);
  v23 = 0;
  sub_227669760();
  *(v13 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone) = 2;
  *(v13 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedDevice) = 2;
  *(v13 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices) = 0;
  v15 = MEMORY[0x277D4F9B0];
  *(v13 + 112) = v20;
  *(v13 + 120) = v15;
  *(v13 + 208) = v21;
  sub_226E92AB8(&v24, v13 + 128);
  v16 = v22;
  v17 = v22[1];
  *(v13 + 168) = *v22;
  *(v13 + 184) = v17;
  *(v13 + 200) = *(v16 + 4);
  return v13;
}

uint64_t sub_2271B92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = sub_227669970();
  v35[4] = MEMORY[0x277D4E258];
  v35[0] = a4;
  v34[3] = sub_22766ADD0();
  v34[4] = MEMORY[0x277D4FAB0];
  v34[0] = a1;
  v13 = type metadata accessor for BagConsumer();
  v33[3] = v13;
  v33[4] = &off_283A9F810;
  v33[0] = a2;
  v14 = type metadata accessor for StorefrontObserver();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v33, v13);
  v19 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v31[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v32[3] = v13;
  v32[4] = &off_283A9F810;
  v32[0] = v23;
  *(v17 + 160) = 0;
  (*(v9 + 104))(v12, *MEMORY[0x277D4F048], v8);
  LOBYTE(v31[0]) = 0;
  sub_227669760();
  sub_226E91B50(v34, v17 + 16);
  sub_226E91B50(v32, v17 + 56);
  v24 = MEMORY[0x277D4F9B0];
  *(v17 + 96) = a3;
  *(v17 + 104) = v24;
  sub_226E91B50(v35, v17 + 112);
  v25 = sub_227669B50();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  swift_retain_n();
  *(v17 + 152) = sub_227669B40();
  sub_22766ADA0();
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_2271BFC90(&unk_28139D330, MEMORY[0x277D4FAA8]);

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v31);

  v28 = *(v17 + 152);
  swift_allocObject();
  swift_weakInit();

  sub_226FD0200();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v32);

  __swift_destroy_boxed_opaque_existential_0(v33);
  return v17;
}

void *sub_2271B96F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v16[3] = sub_226E99364(0, &unk_2813A5830, 0x277D44150);
  v16[4] = MEMORY[0x277D54680];
  v16[0] = a4;
  v8 = sub_22766AD60();
  v15[3] = v8;
  v15[4] = MEMORY[0x277D54670];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, a1, v8);
  type metadata accessor for RemoteBrowsingGuestPairingVerifier();
  v10 = swift_allocObject();
  sub_226E91B50(a3, (v10 + 2));
  sub_226E91B50(v15, (v10 + 7));
  v11 = MEMORY[0x277D4F9B0];
  v10[12] = a2;
  v10[13] = v11;
  sub_226E91B50(v16, (v10 + 14));
  v12 = sub_22714AD98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBE70, &qword_22767C1B0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(v15);
  *(v13 + 16) = v12;

  v10[19] = v13;
  return v10;
}

void *sub_2271B985C(uint64_t a1, uint64_t a2, void *a3)
{
  v12[3] = type metadata accessor for RecentAPIAccessRestrictionProvider();
  v12[4] = &protocol witness table for RecentAPIAccessRestrictionProvider;
  v12[0] = a1;
  sub_226E91B50(v12, (a3 + 2));
  v6 = MEMORY[0x277D4F9B0];
  a3[7] = a2;
  a3[8] = v6;
  v7 = sub_227669B50();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  swift_retain_n();
  a3[9] = sub_227669B40();
  sub_227669680();
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return a3;
}

unint64_t sub_2271B99F0()
{
  result = qword_28139D2C0;
  if (!qword_28139D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2C0);
  }

  return result;
}

unint64_t sub_2271B9A6C()
{
  result = qword_28139D2B8;
  if (!qword_28139D2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2B8);
  }

  return result;
}

uint64_t sub_2271B9AE8(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v6 = MEMORY[0x277D4F9B0];
  *(a4 + 16) = a1;
  *(a4 + 24) = v6;
  *(a4 + 32) = a3;
  *(a4 + 40) = a2;
  *(a4 + 48) = &off_283AC2938;
  v7 = sub_227669B50();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  swift_retain_n();
  v10 = a2;
  *(a4 + 56) = sub_227669B40();
  *&v10[OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_delegate + 8] = &off_283A99DE8;
  swift_unknownObjectWeakAssign();

  v11 = *(a4 + 56);
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_2271BFCE8();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v13);
  return a4;
}

id sub_2271B9C38(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v18[3] = type metadata accessor for AssetFileStore();
  v18[4] = &off_283AC5580;
  v18[0] = a1;
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session] = 0;
  sub_226E91B50(v18, &a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_assetFileStore]);
  v8 = &a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub];
  v9 = MEMORY[0x277D4F9B0];
  *v8 = a2;
  *(v8 + 1) = v9;
  v10 = sub_2276696C0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock] = sub_2276696B0();
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_queue] = a3;
  v13 = a3;
  v14 = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskCompletions] = sub_22714A1CC(MEMORY[0x277D84F90]);
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskResults] = sub_22714A2D4(v14);
  *&a4[OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask] = sub_22714A4B0(v14);
  v17.receiver = a4;
  v17.super_class = type metadata accessor for AssetImageLoader();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v15;
}

uint64_t sub_2271B9D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC15SeymourServices16JournalingSystem_directory;
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a3 + v6, a1, v7);
  v9 = (a3 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_eventHub);
  v10 = MEMORY[0x277D4F9B0];
  *v9 = a2;
  v9[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFB8, &qword_22767C2D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22767BC90;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFC0, &qword_22767C2E0);
  *(inited + 32) = 0xD000000000000022;
  *(inited + 72) = v12;
  *(inited + 80) = &off_283AA0328;
  *(inited + 48) = a2;
  *(inited + 56) = v10;
  *(inited + 40) = 0x80000002276929A0;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFC8, &qword_22767C2E8);
  *(inited + 136) = &off_283AA0328;
  *(inited + 104) = a2;
  *(inited + 112) = v10;
  *(inited + 88) = 0xD000000000000024;
  *(inited + 96) = 0x80000002276929D0;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFD0, &qword_22767C2F0);
  *(inited + 192) = &off_283AA0328;
  *(inited + 160) = a2;
  *(inited + 168) = v10;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x8000000227692A40;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFD8, &qword_22767C2F8);
  *(inited + 248) = &off_283AA0328;
  *(inited + 216) = a2;
  *(inited + 224) = v10;
  *(inited + 200) = 0xD000000000000021;
  *(inited + 208) = 0x8000000227692A60;
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFE0, &qword_22767C300);
  *(inited + 304) = &off_283AA0328;
  *(inited + 272) = a2;
  *(inited + 280) = v10;
  *(inited + 256) = 0x42646567616E614DLL;
  *(inited + 264) = 0xEF6B72616D6B6F6FLL;
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFE8, &qword_22767C308);
  *(inited + 360) = &off_283AA0328;
  *(inited + 328) = a2;
  *(inited + 336) = v10;
  *(inited + 312) = 0xD00000000000002BLL;
  *(inited + 320) = 0x8000000227693120;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFF0, &qword_22767C310);
  *(inited + 416) = &off_283AA0328;
  *(inited + 384) = a2;
  *(inited + 392) = v10;
  *(inited + 368) = 0xD00000000000001DLL;
  *(inited + 376) = 0x80000002276932C0;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBFF8, &qword_22767C318);
  *(inited + 472) = &off_283AA0328;
  *(inited + 440) = a2;
  *(inited + 448) = v10;
  *(inited + 424) = 0xD000000000000027;
  *(inited + 432) = 0x80000002276932E0;

  *(inited + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC000, &qword_22767C320);
  *(inited + 528) = &off_283AA0328;
  *(inited + 496) = a2;
  *(inited + 504) = v10;
  *(inited + 480) = 0x50646567616E614DLL;
  *(inited + 488) = 0xEF7473696C79616CLL;

  *(inited + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC008, &qword_22767C328);
  *(inited + 584) = &off_283AA0328;
  *(inited + 552) = a2;
  *(inited + 560) = v10;
  *(inited + 536) = 0xD000000000000013;
  *(inited + 544) = 0x8000000227693340;

  *(inited + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC010, &qword_22767C330);
  *(inited + 640) = &off_283AA0328;
  *(inited + 608) = a2;
  *(inited + 616) = v10;
  *(inited + 592) = 0xD000000000000017;
  *(inited + 600) = 0x80000002276933D0;

  *(inited + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC018, &qword_22767C338);
  *(inited + 696) = &off_283AA0328;
  *(inited + 664) = a2;
  *(inited + 672) = v10;
  *(inited + 648) = 0xD000000000000016;
  *(inited + 656) = 0x8000000227693650;

  *(inited + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC020, &qword_22767C340);
  *(inited + 752) = &off_283AA0328;
  *(inited + 720) = a2;
  *(inited + 728) = v10;
  *(inited + 704) = 0xD000000000000012;
  *(inited + 712) = 0x80000002276936B0;

  *(inited + 800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC028, &qword_22767C348);
  *(inited + 808) = &off_283AA0328;
  *(inited + 776) = a2;
  *(inited + 784) = v10;
  *(inited + 760) = 0xD00000000000001FLL;
  *(inited + 768) = 0x80000002276937C0;

  *(inited + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC030, &qword_22767C350);
  *(inited + 864) = &off_283AA0328;
  *(inited + 832) = a2;
  *(inited + 840) = v10;
  *(inited + 816) = 0xD00000000000001ALL;
  *(inited + 824) = 0x80000002276937E0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A80, &qword_227674EA8);
  v16 = sub_22766D010();
  swift_retain_n();

  sub_2271B45AC(v13, 1, &v16);
  (*(v8 + 8))(a1, v7);
  swift_setDeallocating();
  v14 = *(inited + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC040, &qword_22767C358);
  swift_arrayDestroy();
  *(a3 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_journalingAgents) = v16;
  return a3;
}

uint64_t sub_2271BA334()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_227106A24(v0);
}

char *sub_2271BA420(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v14[3] = sub_22766ADD0();
  v14[4] = MEMORY[0x277D4FAB0];
  v14[0] = a1;
  sub_226E91B50(v14, &a3[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_accountProvider]);
  *&a3[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_bagConsumer] = a2;
  v7 = objc_opt_self();

  v8 = [v7 defaultSessionConfiguration];
  [v8 setURLCache_];
  sub_2276693D0();
  sub_2276693E0();
  v9 = sub_22766CA30();

  v10 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration:v9 delegate:0 delegateQueue:0];
  *&a3[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_amsSession] = v10;
  v13.receiver = a3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [*&v11[OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_amsSession] setDelegate_];

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_2271BA590(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272D8258(a1, v1 + 16);
}

uint64_t sub_2271BA62C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272D8674(a1, v1);
}

uint64_t sub_2271BA6C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272D88D0(a1, v1);
}

void *sub_2271BA764(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v95 = a5;
  v98 = a1;
  v12 = sub_22766A8A0();
  v13 = *(v12 - 8);
  v99 = v12;
  v100 = v13;
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArchivedSessionDataStore();
  v117[3] = v17;
  v117[4] = &off_283A9CAB0;
  v117[0] = a2;
  v97 = type metadata accessor for SyncCoordinator();
  v115 = v97;
  v116 = &off_283AA3680;
  v114[0] = a3;
  v96 = type metadata accessor for ConfigurationDataStore();
  v112 = v96;
  v113 = &off_283AA1218;
  v111[0] = a6;
  v94 = type metadata accessor for ProgramCompletionDataStore();
  v109 = v94;
  v110 = &off_283A9CA78;
  v108[0] = a7;
  type metadata accessor for ArchivedSessionSystem();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v117, v17);
  v20 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v115;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v112;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v111, v112);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = v109;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (&v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v22;
  v43 = *v28;
  v44 = *v34;
  v45 = *v40;
  v107[3] = v17;
  v107[4] = &off_283A9CAB0;
  v107[0] = v42;
  v106 = &off_283AA3680;
  v105 = v97;
  v104[0] = v43;
  v103[3] = v96;
  v103[4] = &off_283AA1218;
  v103[0] = v44;
  v102[3] = v94;
  v102[4] = &off_283A9CA78;
  v102[0] = v45;
  sub_226E91B50(v98, (v18 + 2));
  sub_226E91B50(v107, (v18 + 7));
  sub_226E91B50(v104, (v18 + 12));
  v46 = MEMORY[0x277D4F9B0];
  v18[17] = a4;
  v18[18] = v46;
  v47 = sub_227669B50();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  swift_retain_n();
  v96 = a4;
  v18[19] = sub_227669B40();
  sub_226E91B50(v103, (v18 + 20));
  sub_226E91B50(v102, (v18 + 25));
  v50 = __swift_project_boxed_opaque_existential_0(v104, v105);
  v51 = *v50;
  v52 = *(*v50 + 112);
  v53 = sub_2276693C0();
  v54 = *MEMORY[0x277D4F880];
  v55 = v99;
  v56 = v100;
  v97 = v100[13];
  v97(v16, v54, v99);
  LOBYTE(v28) = sub_226EC9A38(v16, v53);

  v57 = v56 + 1;
  v58 = v56[1];
  v100 = v57;
  v58(v16, v55);
  if (v28)
  {
    v59 = *__swift_project_boxed_opaque_existential_0(v51 + 2, v51[5]);
    v60 = MEMORY[0x277D53CC8];
    sub_22718C53C(&qword_27D7BBF88, &qword_22767C2B0, MEMORY[0x277D53CC8]);
    v61 = *__swift_project_boxed_opaque_existential_0(v51 + 7, v51[10]);
    sub_2271AB4E4(&qword_27D7BBF80, &qword_22767C2A8, v60);
  }

  v62 = __swift_project_boxed_opaque_existential_0(v104, v105);
  v63 = *v62;
  v64 = *(*v62 + 112);
  v65 = sub_2276693C0();
  v66 = v99;
  v97(v16, v54, v99);
  v67 = sub_226EC9A38(v16, v65);

  v58(v16, v66);
  if (v67)
  {
    v68 = *__swift_project_boxed_opaque_existential_0(v63 + 2, v63[5]);
    v69 = MEMORY[0x277D53CF0];
    sub_22718C53C(&qword_27D7BBF98, &qword_22767C2C0, MEMORY[0x277D53CF0]);
    v70 = *__swift_project_boxed_opaque_existential_0(v63 + 7, v63[10]);
    sub_2271AB4E4(&qword_27D7BBF90, &qword_22767C2B8, v69);
  }

  v71 = __swift_project_boxed_opaque_existential_0(v104, v105);
  v72 = *v71;
  v73 = *(*v71 + 112);
  v74 = sub_2276693C0();
  v75 = v99;
  v97(v16, v54, v99);
  v76 = sub_226EC9A38(v16, v74);

  v58(v16, v75);
  if (v76)
  {
    v77 = *__swift_project_boxed_opaque_existential_0(v72 + 2, v72[5]);
    v78 = MEMORY[0x277D53D48];
    sub_22718C53C(&unk_27D7BBFA8, &qword_22767C2D0, MEMORY[0x277D53D48]);
    v79 = *__swift_project_boxed_opaque_existential_0(v72 + 7, v72[10]);
    sub_2271AB4E4(&qword_27D7BBFA0, &qword_22767C2C8, v78);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBF60, &qword_22767C290);
  v80 = v18[19];
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  v100 = &unk_227686E90;
  sub_226E9CFD0(&unk_2813A2E88, &qword_27D7BBF60, &qword_22767C290);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v101);
  v81 = v18[19];
  swift_allocObject();
  swift_weakInit();
  sub_226FA6E58();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v101);
  v82 = v18[19];
  swift_allocObject();
  swift_weakInit();
  sub_226FA7000();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v101);
  sub_22766A060();
  v83 = v18[19];
  v84 = swift_allocObject();
  v85 = MEMORY[0x277D4F9D0];
  v86 = v95;
  v84[2] = v95;
  v84[3] = v85;
  v84[4] = MEMORY[0x277D4F9D8];
  v99 = v86;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBF68, &qword_22767C298);
  v87 = v18[19];
  swift_allocObject();
  swift_weakInit();
  sub_226E9CFD0(&qword_2813A2E20, &qword_27D7BBF68, &qword_22767C298);
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v101);
  v88 = v18[19];
  swift_allocObject();
  swift_weakInit();
  sub_226FA6F54();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v101);
  sub_22766A550();
  v89 = v18[19];
  v90 = swift_allocObject();
  v90[2] = v99;
  v90[3] = MEMORY[0x277D4F9D0];
  v90[4] = MEMORY[0x277D4F9D8];
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF70, &qword_22767C2A0);
  v91 = v18[19];
  swift_allocObject();
  swift_weakInit();

  sub_226E9CFD0(&qword_2813A2E58, &unk_27D7BBF70, &qword_22767C2A0);
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v98);
  __swift_destroy_boxed_opaque_existential_0(v101);
  __swift_destroy_boxed_opaque_existential_0(v102);
  __swift_destroy_boxed_opaque_existential_0(v103);
  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(v104);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v117);
  return v18;
}

unint64_t sub_2271BB418()
{
  result = qword_2813A2138;
  if (!qword_2813A2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A2138);
  }

  return result;
}

void *sub_2271BB46C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), void *a6)
{
  v80 = a1;
  v10 = *a6;
  v75 = a5;
  v76 = v10;
  v79 = sub_22766A8A0();
  v81 = *(v79 - 8);
  v11 = v81[8];
  MEMORY[0x28223BE20](v79);
  v78 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BookmarkDataStore();
  v94[3] = v13;
  v94[4] = &off_283AC7718;
  v94[0] = a2;
  v14 = type metadata accessor for CatalogDataStore();
  v92 = v14;
  v93 = &off_283A99B78;
  v91[0] = a3;
  v15 = type metadata accessor for SyncCoordinator();
  v89 = v15;
  v90 = &off_283AA3680;
  v88[0] = a4;
  type metadata accessor for BookmarkSystem();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v94, v13);
  v18 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v92;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = v89;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v20;
  v35 = *v26;
  v36 = *v32;
  v87[3] = v13;
  v87[4] = &off_283AC7718;
  v87[0] = v34;
  v86[3] = v14;
  v86[4] = &off_283A99B78;
  v86[0] = v35;
  v84 = v15;
  v85 = &off_283AA3680;
  v83[0] = v36;
  sub_226E91B50(v80, (v16 + 14));
  sub_226E91B50(v87, (v16 + 2));
  sub_226E91B50(v86, (v16 + 7));
  v37 = MEMORY[0x277D4F9B0];
  v16[12] = a6;
  v16[13] = v37;
  v38 = sub_227669B50();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  swift_retain_n();
  v77 = a6;
  v16[19] = sub_227669B40();
  sub_226E91B50(v83, (v16 + 20));
  v41 = MEMORY[0x277D4F9D0];
  v16[25] = v75;
  v16[26] = v41;
  v16[27] = MEMORY[0x277D4F9D8];
  v42 = __swift_project_boxed_opaque_existential_0(v83, v84);
  v43 = *v42;
  v44 = *(*v42 + 112);
  v45 = sub_2276693C0();
  v46 = *MEMORY[0x277D4F880];
  v47 = v81;
  v48 = v78;
  v49 = v79;
  v75 = v81[13];
  v75(v78, v46, v79);
  LOBYTE(v26) = sub_226EC9A38(v48, v45);

  v50 = v47 + 1;
  v51 = v47[1];
  v81 = v50;
  v51(v48, v49);
  if (v26)
  {
    v52 = *__swift_project_boxed_opaque_existential_0(v43 + 2, v43[5]);
    v53 = MEMORY[0x277D53D78];
    sub_22718C53C(&qword_27D7BBF38, &qword_22767C260, MEMORY[0x277D53D78]);
    v54 = *__swift_project_boxed_opaque_existential_0(v43 + 7, v43[10]);
    sub_2271AB4E4(&qword_27D7BBF30, &qword_22767C258, v53);
  }

  v55 = __swift_project_boxed_opaque_existential_0(v83, v84);
  v56 = *v55;
  v57 = *(*v55 + 112);
  v58 = sub_2276693C0();
  v60 = v78;
  v59 = v79;
  v75(v78, v46, v79);
  v61 = sub_226EC9A38(v60, v58);

  v51(v60, v59);
  if (v61)
  {
    v62 = *__swift_project_boxed_opaque_existential_0(v56 + 2, v56[5]);
    v63 = MEMORY[0x277D53D80];
    sub_22718C53C(&qword_27D7BBF48, &qword_22767C270, MEMORY[0x277D53D80]);
    v64 = *__swift_project_boxed_opaque_existential_0(v56 + 7, v56[10]);
    sub_2271AB4E4(&qword_27D7BBF40, &qword_22767C268, v63);
  }

  sub_2276699A0();
  v65 = v16[19];
  swift_allocObject();
  swift_weakInit();

  v66 = v77;
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF10, &qword_22767C248);
  v67 = v16[19];
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  v69 = MEMORY[0x277D4F9B0];
  *(v68 + 24) = MEMORY[0x277D4F9B0];
  v81 = &unk_227686E90;
  sub_226E9CFD0(&qword_2813A2DE8, &unk_27D7BBF10, &qword_22767C248);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v82);
  sub_227669A40();
  v70 = v16[19];
  swift_allocObject();
  swift_weakInit();

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF20, &qword_22767C250);
  v71 = v16[19];
  v72 = swift_allocObject();
  *(v72 + 16) = v66;
  *(v72 + 24) = v69;
  sub_226E9CFD0(&unk_2813A2DD8, &unk_27D7BBF20, &qword_22767C250);

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v94);
  return v16;
}

uint64_t sub_2271BBD0C()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_227373A28(v0[2]);
}

uint64_t sub_2271BBD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_227373C60(a1, v4, v5, v7);
}

uint64_t sub_2271BBDD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_227374A90();
}

uint64_t sub_2271BBDE0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_227374B9C();
}

unint64_t sub_2271BBDF4()
{
  result = qword_28139D300;
  if (!qword_28139D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D300);
  }

  return result;
}

unint64_t sub_2271BBE70()
{
  result = qword_28139D2F0;
  if (!qword_28139D2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2F0);
  }

  return result;
}

void *sub_2271BBF0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_22766A8A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227669700();
  v42[3] = v14;
  v42[4] = MEMORY[0x277D4DFA8];
  v42[5] = MEMORY[0x277D4DF90];
  v42[6] = MEMORY[0x277D4DF98];
  v42[7] = MEMORY[0x277D4DFA0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  (*(*(v14 - 8) + 32))(boxed_opaque_existential_0, a1, v14);
  v16 = type metadata accessor for SyncCoordinator();
  v41[3] = v16;
  v41[4] = &off_283AA3680;
  v41[0] = a3;
  type metadata accessor for EstimatedCaloriesSystem();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v41, v16);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v39 = v16;
  v40 = &off_283AA3680;
  v38[0] = v23;
  sub_226FB68A4(v42, (v17 + 2));
  sub_226E91B50(a2, (v17 + 10));
  sub_226E91B50(v38, (v17 + 15));
  v24 = MEMORY[0x277D4F9B0];
  v17[20] = a4;
  v17[21] = v24;
  v25 = sub_227669B50();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  swift_retain_n();
  v17[22] = sub_227669B40();
  v28 = __swift_project_boxed_opaque_existential_0(v38, v39);
  v29 = *v28;
  v30 = *(*v28 + 112);
  v31 = sub_2276693C0();
  (*(v10 + 104))(v13, *MEMORY[0x277D4F880], v9);
  LOBYTE(v16) = sub_226EC9A38(v13, v31);

  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v32 = *__swift_project_boxed_opaque_existential_0(v29 + 2, v29[5]);
    v33 = MEMORY[0x277D53CD8];
    sub_22718C53C(&qword_27D7BBE80, &qword_22767C1D0, MEMORY[0x277D53CD8]);
    v34 = *__swift_project_boxed_opaque_existential_0(v29 + 7, v29[10]);
    sub_2271AB4E4(&qword_27D7BBE78, &qword_22767C1C8, v33);
  }

  v35 = v17[22];
  swift_allocObject();
  swift_weakInit();
  sub_227118F6C();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v17;
}

uint64_t sub_2271BC3E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227050FCC(a1, v1);
}

uint64_t sub_2271BC47C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2270517F8(a1, v1);
}

uint64_t sub_2271BC514(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2270517F8(a1, v1);
}

uint64_t sub_2271BC5AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227051A3C(a1, v1);
}

uint64_t sub_2271BC644(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227051B44(a1, v1);
}

uint64_t sub_2271BC700(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227052508(a1, v1);
}

unint64_t sub_2271BC888()
{
  result = qword_28139D208;
  if (!qword_28139D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D208);
  }

  return result;
}

unint64_t sub_2271BC904()
{
  result = qword_28139D200;
  if (!qword_28139D200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC70, &qword_2276765B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D200);
  }

  return result;
}

uint64_t sub_2271BC980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2271BC9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2271BCA88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22715ADD0(a1, v1);
}

uint64_t sub_2271BCB28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_226F21850(a1, v4, v5);
}

void *sub_2271BCBE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for ScoreDataStore();
  v25[3] = v9;
  v25[4] = &off_283A9F600;
  v25[0] = a2;
  v24[3] = type metadata accessor for ScoreServer();
  v24[4] = &protocol witness table for ScoreServer;
  v24[0] = a3;
  type metadata accessor for ScoreSystem();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v25, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v23[3] = v9;
  v23[4] = &off_283A9F600;
  v23[0] = v16;
  sub_226E91B50(a1, (v10 + 2));
  sub_226E91B50(v23, (v10 + 7));
  sub_226E91B50(v24, (v10 + 12));
  v17 = MEMORY[0x277D4F9B0];
  v10[17] = a4;
  v10[18] = v17;
  v18 = sub_227669B50();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  swift_retain_n();
  v10[19] = sub_227669B40();
  swift_allocObject();
  swift_weakInit();
  sub_227118F6C();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v10;
}

uint64_t sub_2271BCE44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for ServiceSubscriptionProviderBroker();
  v29[3] = v8;
  v29[4] = &off_283ACB2B8;
  v29[0] = a1;
  type metadata accessor for ServiceSubscriptionSystem();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v28[3] = v8;
  v28[4] = &off_283ACB2B8;
  v28[0] = v15;
  sub_226E91B50(v28, v9 + 40);
  v16 = MEMORY[0x277D4F9B0];
  *(v9 + 16) = a2;
  *(v9 + 24) = v16;
  v17 = sub_227669B50();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  swift_retain_n();
  v20 = sub_227669B40();
  v21 = MEMORY[0x277D4F9D0];
  *(v9 + 80) = v20;
  *(v9 + 88) = a3;
  v22 = MEMORY[0x277D4F9D8];
  *(v9 + 96) = v21;
  *(v9 + 104) = v22;
  *(v9 + 32) = a4;
  swift_allocObject();
  swift_weakInit();
  sub_22766A8E0();
  sub_226FFDCDC();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v27);

  v23 = *(v9 + 80);
  swift_allocObject();
  swift_weakInit();
  sub_227119014();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v27);

  sub_22766A040();
  v24 = *(v9 + 80);
  swift_allocObject();
  swift_weakInit();

  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v9;
}

uint64_t sub_2271BD194()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_227094564();
}

uint64_t sub_2271BD1A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_227094670(v0);
}

uint64_t sub_2271BD230(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227094E88(a1, v1);
}

uint64_t sub_2271BD2D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272CAED4(a1, v1);
}

uint64_t sub_2271BD368(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2272CBD60(a1, v1);
}

unint64_t sub_2271BD400()
{
  result = qword_2813A0B08[0];
  if (!qword_2813A0B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813A0B08);
  }

  return result;
}

uint64_t sub_2271BD464(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271E6674(a1, v1);
}

uint64_t sub_2271BD50C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271E7C60(a1, v1);
}

uint64_t sub_2271BD5A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271E8658(a1, v1);
}

void *sub_2271BD63C(uint64_t a1, uint64_t a2, void *a3)
{
  v15[3] = type metadata accessor for DeviceRegistry();
  v15[4] = &off_283AB4DB8;
  v15[0] = a2;
  v6 = MEMORY[0x277D84F90];
  a3[10] = MEMORY[0x277D84F90];
  a3[11] = v6;
  v7 = sub_2276696C0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  a3[2] = sub_2276696B0();
  a3[3] = a1;
  sub_226E91B50(v15, (a3 + 4));
  v10 = sub_227669B50();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  swift_retain_n();
  a3[9] = sub_227669B40();
  sub_227669B90();
  swift_allocObject();
  swift_weakInit();
  sub_22766A8D0();

  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return a3;
}

uint64_t sub_2271BD838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2271BD8A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271AACB8(a1, v1);
}

uint64_t sub_2271BD940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBCF0, &qword_22767BE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271BD9CC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271AB080(a1, v1);
}

uint64_t sub_2271BDB10()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_28139D390;
  if (!qword_28139D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2271BDC14()
{
  result = sub_227669AC0();
  if (v1 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_22766AAB0();
    if (v2 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = sub_22766ABA0();
      if (v3 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        result = type metadata accessor for RestrictionsProvider();
        if (v4 <= 0x3F)
        {
          v9 = *(result - 8) + 64;
          result = sub_22766AD60();
          if (v5 <= 0x3F)
          {
            v10 = *(result - 8) + 64;
            return swift_updateClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

void sub_2271BE058()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AD8E4);
}

void sub_2271BE16C()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271ACDC8);
}

void sub_2271BE280()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B00D0);
}

void sub_2271BE394()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B2B48);
}

void sub_2271BE4A8()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B24BCLL);
}

void sub_2271BE5BC()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BE6D0()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B1CE0);
}

void sub_2271BE7E4()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BE8F8()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B08ACLL);
}

void sub_2271BEA0C()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B1864);
}

void sub_2271BEB20()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B1088);
}

void sub_2271BEC34()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B3324);
}

void sub_2271BED48()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AF118);
}

void sub_2271BEE5C()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BEF70()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E92F34;

  JUMPOUT(0x2271ABF60);
}

void sub_2271BF084()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271ADF78);
}

void sub_2271BF198()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AE9F0);
}

void sub_2271BF2AC()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AD454);
}

void sub_2271BF3C0()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BF4D4()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AF8F4);
}

void sub_2271BF5E8()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AEE7CLL);
}

void sub_2271BF6FC()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AE754);
}

void sub_2271BF810()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271AC73CLL);
}

uint64_t sub_2271BF94C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226F73D24(a1, v1);
}

uint64_t sub_2271BF9E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271DCEB4(a1, v1);
}

uint64_t sub_2271BFA7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_226FC0300();
}

uint64_t sub_2271BFA88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_226FC04D4();
}

uint64_t sub_2271BFA94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_226FC06A8();
}

uint64_t sub_2271BFAA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_226FC6688();
}

uint64_t objectdestroy_248Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_2271BFB2C()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226E93028;

  JUMPOUT(0x2271B3B00);
}

uint64_t sub_2271BFC90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2271BFCE8()
{
  result = qword_28139E960;
  if (!qword_28139E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139E960);
  }

  return result;
}

uint64_t sub_2271BFD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340) - 8);
  v3[18] = v4;
  v5 = *(v4 + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC078, &unk_22767C450) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0);
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC080, &qword_22767C460);
  v3[28] = v11;
  v12 = *(v11 - 8);
  v3[29] = v12;
  v13 = *(v12 + 64) + 15;
  v3[30] = swift_task_alloc();
  v14 = sub_227665680();
  v3[31] = v14;
  v15 = *(v14 - 8);
  v3[32] = v15;
  v3[33] = *(v15 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C0004, 0, 0);
}

uint64_t sub_2271C0004()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 256);
    v44 = *(v0 + 264);
    v43 = **(v0 + 120);
    v4 = *(v3 + 16);
    v3 += 16;
    v42 = v4;
    v5 = *(v3 + 64);
    v6 = v1 + ((v5 + 32) & ~v5);
    v41 = (v5 + 72) & ~v5;
    v39 = (v3 - 8);
    v40 = (v3 + 16);
    v38 = *(v3 + 56);
    do
    {
      v47 = v2;
      v12 = *(v0 + 272);
      v13 = *(v0 + 280);
      v14 = *(v0 + 248);
      v15 = *(v0 + 216);
      v45 = *(v0 + 208);
      v16 = *(v0 + 136);
      v46 = v6;
      v42(v13);
      v17 = sub_22766C4B0();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v15, 1, 1, v17);
      sub_226E91B50(v16, v0 + 16);
      (v42)(v12, v13, v14);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      v20 = (v19 + 16);
      *(v19 + 24) = 0;
      sub_226E92AB8((v0 + 16), v19 + 32);
      (*v40)(v19 + v41, v12, v14);
      sub_226E93170(v15, v45, &unk_27D7BC8E0, &qword_2276784C0);
      v21 = (*(v18 + 48))(v45, 1, v17);
      v22 = *(v0 + 208);
      if (v21 == 1)
      {
        sub_226E97D1C(*(v0 + 208), &unk_27D7BC8E0, &qword_2276784C0);
        if (*v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22766C4A0();
        (*(v18 + 8))(v22, v17);
        if (*v20)
        {
LABEL_9:
          v25 = *(v19 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v23 = sub_22766C420();
          v24 = v26;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v23 = 0;
      v24 = 0;
LABEL_10:
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_22767C468;
      *(v27 + 24) = v19;

      if (v24 | v23)
      {
        v7 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v23;
        *(v0 + 80) = v24;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 280);
      v9 = *(v0 + 248);
      v10 = *(v0 + 216);
      v11 = *(v0 + 168);
      *(v0 + 88) = 1;
      *(v0 + 96) = v7;
      *(v0 + 104) = v43;
      swift_task_create();

      sub_226E97D1C(v10, &unk_27D7BC8E0, &qword_2276784C0);
      (*v39)(v8, v9);
      v6 = v46 + v38;
      v2 = v47 - 1;
    }

    while (v47 != 1);
  }

  v28 = *(v0 + 240);
  v29 = *(v0 + 168);
  v30 = **(v0 + 120);
  sub_22766C470();
  *(v0 + 288) = MEMORY[0x277D84F98];
  v31 = sub_2271C477C();
  v32 = *(MEMORY[0x277D856D0] + 4);
  v33 = swift_task_alloc();
  *(v0 + 296) = v33;
  *v33 = v0;
  v33[1] = sub_2271C042C;
  v34 = *(v0 + 240);
  v35 = *(v0 + 224);
  v36 = *(v0 + 160);

  return MEMORY[0x282200308](v36, v35, v31);
}

uint64_t sub_2271C042C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[36];
    v6 = v2[29];
    v5 = v2[30];
    v7 = v2[28];

    (*(v6 + 8))(v5, v7);

    v8 = nullsub_1;
  }

  else
  {
    v8 = sub_2271C0580;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2271C0580()
{
  v1 = v0[21];
  v2 = v0[20];
  if ((*(v0[22] + 48))(v2, 1, v1) == 1)
  {
    v4 = v0[34];
    v3 = v0[35];
    v5 = v0[27];
    v7 = v0[25];
    v6 = v0[26];
    v9 = v0[23];
    v8 = v0[24];
    v53 = v0[19];
    (*(v0[29] + 8))(v0[30], v0[28]);
    sub_226E97D1C(v2, &qword_27D7BC078, &unk_22767C450);

    v10 = v0[1];
    v11 = v0[36];

    return v10(v11);
  }

  v13 = v0[36];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];
  v17 = v0[19];
  sub_226E95D18(v2, v14, &qword_27D7B8E20, &qword_22767C3B0);
  sub_226E93170(v14, v15, &qword_27D7B8E20, &qword_22767C3B0);
  sub_226E93170(v14, v16, &qword_27D7B8E20, &qword_22767C3B0);
  sub_226E95D18(v16 + *(v1 + 48), v17, &qword_27D7B8E28, &unk_227672340);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[14] = v13;
  v19 = sub_226F3A8A4(v15);
  v21 = *(v13 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v1) = v20;
  if (*(v0[36] + 24) >= v24)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      v29 = v0[14];
      if (v1)
      {
LABEL_13:
        v30 = v0[25];
        sub_2271C47E0(v0[19], v29[7] + *(v0[18] + 72) * v19);
        sub_226E97D1C(v30, &qword_27D7B8E20, &qword_22767C3B0);
        goto LABEL_18;
      }

LABEL_16:
      v32 = v0[31];
      v33 = v0[32];
      v34 = v0[24];
      v35 = v0[25];
      v37 = v0[18];
      v36 = v0[19];
      v29[(v19 >> 6) + 8] |= 1 << v19;
      v38 = v19;
      (*(v33 + 16))(v29[6] + *(v33 + 72) * v19, v34, v32);
      sub_226E95D18(v36, v29[7] + *(v37 + 72) * v38, &qword_27D7B8E28, &unk_227672340);
      v39 = sub_226E97D1C(v35, &qword_27D7B8E20, &qword_22767C3B0);
      v42 = v29[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        __break(1u);
        return MEMORY[0x282200308](v39, v40, v41);
      }

      v29[2] = v43;
LABEL_18:
      v44 = v0[31];
      v46 = v0[23];
      v45 = v0[24];
      v47 = *(v0[21] + 48);
      v48 = *(v0[32] + 8);
      v48(v45, v44);
      v48(v46, v44);
      sub_226E97D1C(v45 + v47, &qword_27D7B8E28, &unk_227672340);
      v0[36] = v29;
      v49 = sub_2271C477C();
      v50 = *(MEMORY[0x277D856D0] + 4);
      v51 = swift_task_alloc();
      v0[37] = v51;
      *v51 = v0;
      v51[1] = sub_2271C042C;
      v52 = v0[30];
      v40 = v0[28];
      v39 = v0[20];
      v41 = v49;

      return MEMORY[0x282200308](v39, v40, v41);
    }

LABEL_15:
    v31 = v19;
    sub_226FF0A94();
    v19 = v31;
    v29 = v0[14];
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v25 = v0[24];
  sub_226FE33D8(v24, isUniquelyReferenced_nonNull_native);
  v26 = v0[14];
  v19 = sub_226F3A8A4(v25);
  if ((v1 & 1) == (v27 & 1))
  {
    goto LABEL_12;
  }

  v28 = v0[31];

  return sub_22766D220();
}

uint64_t RestrictionsProvider.init(profileRegistry:restrictionZones:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227669A90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(type metadata accessor for RestrictionsProvider() + 24);
  (*(v7 + 104))(v10, *MEMORY[0x277D4EF00], v6);
  v13[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBBB8, &qword_22767C380);
  sub_2271C0BA8(&qword_28139D2C0);
  sub_2271C0BA8(&qword_28139D2B8);
  sub_227669760();
  result = sub_226E92AB8(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for RestrictionsProvider()
{
  result = qword_2813A0B98;
  if (!qword_2813A0B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2271C0BA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2271C0C14(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 113) = a1;
  v3 = sub_22766B390();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v6 = sub_227665680();
  *(v2 + 56) = v6;
  v7 = *(v6 - 8);
  *(v2 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C0D40, 0, 0);
}

uint64_t sub_2271C0D40()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2271C0E64;

  return v8(v2, v3);
}

uint64_t sub_2271C0E64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_2271C12C0;
  }

  else
  {
    v5 = sub_2271C0F78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2271C0F78()
{
  v1 = 0;
  v2 = v0[8];
  v45 = *(v0 + 113);
  v3 = v0[13];
  v4 = v0[12];
  v7 = *(v4 + 56);
  v6 = v4 + 56;
  v5 = v7;
  v41 = v0[12];
  v8 = -1;
  v9 = -1 << *(v41 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  v44 = v0[8];
  v37 = (v2 + 32);
  v38 = (v2 + 8);
  v39 = MEMORY[0x277D84F90];
  v40 = v11;
  if ((v8 & v5) == 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    while (1)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v43 = *(v44 + 72);
      (*(v44 + 16))(v0[10], *(v41 + 48) + v43 * (v15 | (v1 << 6)), v0[7]);
      v16 = sub_227665650();
      v17 = sub_226F4920C(v16);

      v18 = *(v17 + 16);
      if (v18)
      {
        break;
      }

LABEL_5:
      v0 = v42;
      v12 = v42[10];
      v13 = v42[7];

      (*v38)(v12, v13);
      v11 = v40;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v19 = 32;
    while (1)
    {
      if (*(v17 + v19) == 2)
      {
        goto LABEL_12;
      }

      v20 = sub_227665A80();
      v22 = v21;
      if (v20 == sub_227665A80() && v22 == v23)
      {
        break;
      }

      v25 = sub_22766D190();

      if (v25)
      {
        goto LABEL_21;
      }

LABEL_12:
      ++v19;
      if (!--v18)
      {
        goto LABEL_5;
      }
    }

LABEL_21:

    v0 = v42;
    v26 = *v37;
    (*v37)(v42[9], v42[10], v42[7]);
    v27 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_226F201C8(0, *(v39 + 16) + 1, 1);
      v27 = v39;
    }

    v29 = *(v27 + 16);
    v28 = *(v27 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_226F201C8(v28 > 1, v29 + 1, 1);
      v27 = v39;
    }

    v30 = v42[9];
    v31 = v42[7];
    *(v27 + 16) = v29 + 1;
    v39 = v27;
    v26(v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + v29 * v43, v30, v31);
    v11 = v40;
  }

  while (v10);
LABEL_6:
  while (2)
  {
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      if (v14 < v11)
      {
        v10 = *(v6 + 8 * v14);
        ++v1;
        if (!v10)
        {
          continue;
        }

        v1 = v14;
        goto LABEL_10;
      }

      v32 = v0[12];

      v34 = v0[9];
      v33 = v0[10];
      v35 = v0[6];

      v36 = v0[1];

      v36(v39);
    }

    break;
  }
}

uint64_t sub_2271C12C0()
{
  v30 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 40);
    v28 = *(v0 + 48);
    v8 = *(v0 + 32);
    v9 = *(v0 + 113);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136446466;
    *(v0 + 112) = v9 & 1;
    sub_226FF66F0();
    v12 = sub_22766D140();
    v14 = sub_226E97AE8(v12, v13, &v29);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 16) = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v16 = sub_22766C060();
    v18 = sub_226E97AE8(v16, v17, &v29);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to fetch profiles for %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v7 + 8))(v28, v8);
  }

  else
  {
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = *(v0 + 32);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 72);
  v22 = *(v0 + 80);
  v24 = *(v0 + 48);

  v25 = *(v0 + 8);
  v26 = MEMORY[0x277D84F90];

  return v25(v26);
}

uint64_t RestrictionsProvider.effectiveRestriction(for:)(uint64_t a1, char a2)
{
  *(v3 + 365) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC048, &qword_22767C390);
  *(v3 + 128) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v6 = sub_227665680();
  *(v3 + 168) = v6;
  v7 = *(v6 - 8);
  *(v3 + 176) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v9 = sub_2276637B0();
  *(v3 + 200) = v9;
  v10 = *(v9 - 8);
  *(v3 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v3 + 240) = v12;
  v13 = *(v12 - 8);
  *(v3 + 248) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C1754, 0, 0);
}

uint64_t sub_2271C1754()
{
  v53 = v0;
  v1 = *(v0 + 120);
  v2 = *(type metadata accessor for RestrictionsProvider() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC050, &unk_22767C398);
  sub_227669730();
  v3 = *(v0 + 360);
  if (v3 == 2)
  {
    v4 = *(*(v0 + 120) + 40);
    if (*(v4 + 16))
    {
      v5 = *(v0 + 365);
      v6 = sub_226F3B360(v5 & 1);
      if (v7)
      {
        sub_226E91B50(*(v4 + 56) + 40 * v6, v0 + 56);
        sub_226E92AB8((v0 + 56), v0 + 16);
        v8 = swift_task_alloc();
        *(v0 + 304) = v8;
        *v8 = v0;
        v8[1] = sub_2271C1C00;
        v9 = *(v0 + 120);

        return sub_2271C0C14(v5 & 1);
      }
    }

    v22 = *(v0 + 256);
    sub_22766A730();
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 240);
    if (v25)
    {
      v29 = *(v0 + 365);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v30 = 136446210;
      *(v0 + 361) = v29 & 1;
      sub_226FF66F0();
      v32 = sub_22766D140();
      v34 = sub_226E97AE8(v32, v33, &v52);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_226E8E000, v23, v24, "No restrictions provider found for zone %{public}s, using unrestricted", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
    v18 = *(v0 + 112);
    goto LABEL_14;
  }

  v11 = *(v0 + 296);
  sub_22766A730();
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v3 & 1;
    _os_log_impl(&dword_226E8E000, v12, v13, "Default set to %{BOOL}d for faking daemon restriction", v14, 8u);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  v15 = *(v0 + 296);
  v16 = *(v0 + 240);
  v17 = *(v0 + 248);

  (*(v17 + 8))(v15, v16);
  v18 = *(v0 + 112);
  if ((v3 & 1) == 0)
  {
LABEL_14:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
    goto LABEL_15;
  }

  v19 = *MEMORY[0x277D515F8];
  v20 = sub_227665360();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
LABEL_15:
  v37 = *(v0 + 288);
  v36 = *(v0 + 296);
  v39 = *(v0 + 272);
  v38 = *(v0 + 280);
  v41 = *(v0 + 256);
  v40 = *(v0 + 264);
  v43 = *(v0 + 224);
  v42 = *(v0 + 232);
  v44 = *(v0 + 216);
  v45 = *(v0 + 192);
  v47 = *(v0 + 184);
  v48 = *(v0 + 160);
  v49 = *(v0 + 152);
  v50 = *(v0 + 144);
  v51 = *(v0 + 136);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2271C1C00(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_2271C1D00, 0, 0);
}

uint64_t sub_2271C1D00()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_2271C1DBC;
  v4 = v0[29];

  return sub_227093A94(v4, v2, v1);
}

uint64_t sub_2271C1DBC()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2271C1EB8, 0, 0);
}

uint64_t sub_2271C1EB8()
{
  v1 = *(v0 + 312);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 288);
    v3 = *(v0 + 240);
    v4 = *(v0 + 248);
    sub_22766A730();
    sub_22766B370();
    v5 = *(v4 + 8);
    *(v0 + 328) = v5;
    *(v0 + 336) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v2, v3);
    *(v0 + 96) = v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC058, &qword_22767C3B8);
    v8 = swift_task_alloc();
    *(v0 + 344) = v8;
    *(v8 + 16) = v0 + 96;
    *(v8 + 24) = v0 + 16;
    v9 = *(MEMORY[0x277D858E8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 352) = v10;
    *v10 = v0;
    v10[1] = sub_2271C2324;

    return MEMORY[0x282200600](v0 + 104, v6, v7, 0, 0, &unk_22767C3C8, v8, v6);
  }

  else
  {
    v11 = *(v0 + 264);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 312);

    sub_22766A730();
    sub_2271C411C(v12, v13);
    v15 = sub_22766B380();
    v16 = sub_22766C8B0();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 264);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = *(v0 + 224);
    if (v17)
    {
      v50 = *(v0 + 264);
      v52 = *(v0 + 240);
      v22 = *(v0 + 216);
      v46 = *(v0 + 200);
      v23 = *(v0 + 365) & 1;
      v24 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55 = v48;
      *v24 = 136446466;
      *(v0 + 364) = v23;
      sub_226FF66F0();
      v25 = sub_22766D140();
      v27 = sub_226E97AE8(v25, v26, &v55);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      sub_2271C411C(v21, v22);
      v28 = sub_22766C060();
      v30 = v29;
      sub_2271C4180(v21);
      v31 = sub_226E97AE8(v28, v30, &v55);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_226E8E000, v15, v16, "No Profiles found for zone %{public}s, using default restriction: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v48, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);

      (*(v20 + 8))(v50, v52);
    }

    else
    {

      sub_2271C4180(v21);
      (*(v20 + 8))(v18, v19);
    }

    v32 = *(v0 + 232);
    sub_2271C411C(v32, *(v0 + 112));
    sub_2271C4180(v32);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v34 = *(v0 + 288);
    v33 = *(v0 + 296);
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v38 = *(v0 + 256);
    v37 = *(v0 + 264);
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    v42 = *(v0 + 192);
    v45 = *(v0 + 184);
    v47 = *(v0 + 160);
    v49 = *(v0 + 152);
    v51 = *(v0 + 144);
    v53 = *(v0 + 136);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_2271C2324()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2271C243C, 0, 0);
}

uint64_t sub_2271C243C()
{
  v150 = v0;
  v1 = v0;
  v2 = v0[29];
  v3 = v0[13];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_2271C3108(sub_2271C4100, v4, v3);

  v6 = sub_2271C38F4(v5);

  v7 = *(v6 + 16);
  v124 = v0;
  if (v7)
  {
    v8 = v0[22];
    v122 = v0[16];
    v123 = v0[26];
    v149 = MEMORY[0x277D84F90];
    sub_226F201C8(0, v7, 0);
    v9 = v149;
    v10 = v6 + 64;
    v11 = -1 << *(v6 + 32);
    v12 = sub_22766CC90();
    result = v6;
    v14 = 0;
    v15 = *(v6 + 36);
    v117 = v6 + 72;
    v118 = v7;
    v119 = v15;
    v120 = v6 + 64;
    v121 = v6;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(result + 32))
    {
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_42;
      }

      if (v15 != *(result + 36))
      {
        goto LABEL_43;
      }

      v126 = 1 << v12;
      v127 = v12 >> 6;
      v125 = v14;
      v139 = v9;
      v17 = *(v122 + 48);
      v18 = v1[24];
      v20 = v1[20];
      v19 = v1[21];
      v21 = v1[18];
      v22 = v1[19];
      v23 = v1[17];
      v133 = v18;
      v136 = *(v8 + 72);
      v24 = v8;
      v128 = *(v8 + 16);
      v129 = v21;
      v25 = result;
      v26 = v12;
      v128(v20, *(result + 48) + v136 * v12, v19);
      v131 = v26;
      sub_2271C411C(*(v25 + 56) + *(v123 + 72) * v26, v20 + v17);
      v8 = v24;
      v27 = *(v24 + 32);
      v27(v22, v20, v19);
      sub_226F69C10(v20 + v17, v22 + *(v122 + 48));
      sub_226E93170(v22, v129, &qword_27D7BC048, &qword_22767C390);
      v28 = *(v122 + 48);
      v27(v23, v129, v19);
      sub_226F69C10(v129 + v28, v23 + v28);
      v128(v133, v23, v19);
      sub_226E97D1C(v23, &qword_27D7BC048, &qword_22767C390);
      v9 = v139;
      sub_226E97D1C(v22, &qword_27D7BC048, &qword_22767C390);
      v149 = v139;
      v30 = *(v139 + 16);
      v29 = *(v139 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F201C8(v29 > 1, v30 + 1, 1);
        v9 = v149;
      }

      v1 = v0;
      v31 = v0[24];
      v32 = v0[21];
      *(v9 + 16) = v30 + 1;
      v27(v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + v30 * v136, v31, v32);
      result = v121;
      v16 = 1 << *(v121 + 32);
      if (v131 >= v16)
      {
        goto LABEL_44;
      }

      v10 = v120;
      v33 = *(v120 + 8 * v127);
      if ((v33 & v126) == 0)
      {
        goto LABEL_45;
      }

      v15 = v119;
      if (v119 != *(v121 + 36))
      {
        goto LABEL_46;
      }

      v34 = v33 & (-2 << (v131 & 0x3F));
      if (v34)
      {
        v16 = __clz(__rbit64(v34)) | v131 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v127 << 6;
        v36 = (v117 + 8 * v127);
        v37 = v127 + 1;
        while (v37 < (v16 + 63) >> 6)
        {
          v39 = *v36++;
          v38 = v39;
          v35 += 64;
          ++v37;
          if (v39)
          {
            sub_226EB526C(v131, v119, 0);
            result = v121;
            v16 = __clz(__rbit64(v38)) + v35;
            goto LABEL_20;
          }
        }

        sub_226EB526C(v131, v119, 0);
        result = v121;
LABEL_20:
        v8 = v24;
      }

      v14 = v125 + 1;
      v12 = v16;
      if (v125 + 1 == v118)
      {

        goto LABEL_23;
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
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_23:
    v40 = v1[39];
    v41 = v1;
    v42 = *(v9 + 16);
    if (v42 == *(v40 + 16))
    {
      v43 = v41[35];

      sub_22766A730();

      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v137 = v45;
        v140 = v9;
        v46 = *(v41 + 365) & 1;
        v47 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v148 = v134;
        *v47 = 136446466;
        *(v41 + 363) = v46;
        sub_226FF66F0();
        v48 = sub_22766D140();
        v50 = sub_226E97AE8(v48, v49, &v148);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        v51 = MEMORY[0x277D84F90];
        if (v42)
        {
          v130 = v47;
          v132 = v44;
          v52 = v41[22];
          v149 = MEMORY[0x277D84F90];
          sub_226F201E8(0, v42, 0);
          v51 = v149;
          v53 = *(v52 + 16);
          v52 += 16;
          v54 = v140 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
          v142 = *(v52 + 56);
          v145 = v53;
          v55 = (v52 - 8);
          do
          {
            v56 = v124[23];
            v57 = v124[21];
            v145(v56, v54, v57);
            v58 = sub_227665640();
            v60 = v59;
            (*v55)(v56, v57);
            v149 = v51;
            v62 = *(v51 + 16);
            v61 = *(v51 + 24);
            if (v62 >= v61 >> 1)
            {
              sub_226F201E8((v61 > 1), v62 + 1, 1);
              v51 = v149;
            }

            *(v51 + 16) = v62 + 1;
            v63 = v51 + 16 * v62;
            *(v63 + 32) = v58;
            *(v63 + 40) = v60;
            v54 += v142;
            --v42;
          }

          while (v42);
          v47 = v130;
          v44 = v132;
        }

        v91 = v124[41];
        v90 = v124[42];
        v92 = v124[35];
        v93 = v124[30];
        v94 = MEMORY[0x22AA98660](v51, MEMORY[0x277D53398]);
        v96 = v95;

        v97 = sub_226E97AE8(v94, v96, &v148);

        *(v47 + 14) = v97;
        _os_log_impl(&dword_226E8E000, v44, v137, "Vetos for %{public}s: %s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v134, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);

        v98 = v93;
        v72 = v124;
        v91(v92, v98);
        v9 = v140;
      }

      else
      {
        v82 = v41[41];
        v83 = v41[42];
        v84 = v41[35];
        v85 = v41[30];

        v82(v84, v85);
        v72 = v41;
      }

      v87 = v72[29];
      v99 = v72[14];
      v100 = sub_226F45240(v9);

      *v99 = v100;
      v101 = *MEMORY[0x277D515F0];
      v102 = sub_227665360();
      (*(*(v102 - 8) + 104))(v99, v101, v102);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
      (*(*(v103 - 8) + 56))(v99, 0, 1, v103);
    }

    else
    {
      v64 = v41[34];
      sub_22766A730();

      v65 = sub_22766B380();
      v66 = sub_22766C8B0();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v41[41];
      v69 = v41[39];
      v70 = v41[34];
      v71 = v41[30];
      v72 = v41;
      if (v67)
      {
        v146 = v41[42];
        v73 = *(v41 + 365) & 1;
        v74 = swift_slowAlloc();
        v143 = v68;
        v75 = swift_slowAlloc();
        v149 = v75;
        *v74 = 134218498;
        v76 = *(v9 + 16);

        *(v74 + 4) = v76;

        *(v74 + 12) = 2048;
        v77 = *(v69 + 16);

        *(v74 + 14) = v77;

        *(v74 + 22) = 2082;
        *(v124 + 362) = v73;
        sub_226FF66F0();
        v78 = sub_22766D140();
        v80 = sub_226E97AE8(v78, v79, &v149);

        *(v74 + 24) = v80;
        _os_log_impl(&dword_226E8E000, v65, v66, "No unanimous vetos (%ld/%ld) for %{public}s, unrestricting!", v74, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x22AA9A450](v75, -1, -1);
        v81 = v74;
        v72 = v124;
        MEMORY[0x22AA9A450](v81, -1, -1);

        v143(v70, v71);
      }

      else
      {
        v86 = v41[39];
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v68(v70, v71);
      }

      v87 = v72[29];
      v88 = v72[14];
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
      (*(*(v89 - 8) + 56))(v88, 1, 1, v89);
    }

    sub_2271C4180(v87);
    __swift_destroy_boxed_opaque_existential_0(v72 + 2);
    v105 = v72[36];
    v104 = v72[37];
    v107 = v72[34];
    v106 = v72[35];
    v109 = v72[32];
    v108 = v72[33];
    v110 = v72;
    v113 = v72 + 28;
    v112 = v72[28];
    v111 = v113[1];
    v114 = v110[27];
    v115 = v110[24];
    v135 = v110[23];
    v138 = v110[20];
    v141 = v110[19];
    v144 = v110[18];
    v147 = v110[17];

    v116 = v110[1];

    return v116();
  }

  return result;
}

uint64_t sub_2271C2EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  sub_226E93170(a1, &v11 - v8, &qword_27D7B8E28, &unk_227672340);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_226F69C10(v9, a3);
  }

  sub_226E97D1C(v9, &qword_27D7B8E28, &unk_227672340);
  return sub_2271C411C(a2, a3);
}

uint64_t sub_2271C2FE8(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return RestrictionsProvider.effectiveRestriction(for:)(a1, a2 & 1);
}

void *sub_2271C3090(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2271C3A54(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2271C3108(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v56 = a2;
  v4 = sub_2276637B0();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v45 - v9;
  v10 = sub_227665680();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v45 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC070, &qword_22767C440);
  result = sub_22766CFF0();
  v18 = result;
  v19 = 0;
  v57 = a3;
  v58 = v11;
  v20 = *(a3 + 64);
  v46 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v45 = (v21 + 63) >> 6;
  v47 = result + 64;
  v53 = result;
  v49 = v11 + 32;
  v50 = v11 + 16;
  v24 = v59;
  if (v23)
  {
    while (1)
    {
      v25 = v15;
      v26 = __clz(__rbit64(v23));
      v60 = (v23 - 1) & v23;
LABEL_10:
      v29 = v26 | (v19 << 6);
      v30 = v57;
      v31 = v58;
      v32 = *(v57 + 48);
      v33 = *(v58 + 16);
      v61 = *(v58 + 72) * v29;
      v34 = v51;
      v33(v51, v32 + v61, v10);
      v35 = *(v30 + 56);
      v36 = *(v54 + 72);
      v62 = v29;
      sub_226E93170(v35 + v36 * v29, v24, &qword_27D7B8E28, &unk_227672340);
      v37 = *(v31 + 32);
      v37(v25, v34, v10);
      v38 = v52;
      v39 = v10;
      v40 = v63;
      v55(v24);
      v63 = v40;
      if (v40)
      {
        break;
      }

      sub_226E97D1C(v24, &qword_27D7B8E28, &unk_227672340);
      v41 = v62;
      *(v47 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      v18 = v53;
      v37((*(v53 + 48) + v61), v25, v39);
      result = sub_226F69C10(v38, *(v18 + 56) + *(v48 + 72) * v41);
      v42 = *(v18 + 16);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_17;
      }

      v10 = v39;
      v15 = v25;
      *(v18 + 16) = v44;
      v23 = v60;
      v24 = v59;
      if (!v60)
      {
        goto LABEL_5;
      }
    }

    v18 = v53;

    (*(v58 + 8))(v25, v10);
    sub_226E97D1C(v24, &qword_27D7B8E28, &unk_227672340);
    return v18;
  }

  else
  {
LABEL_5:
    v27 = v19;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v45)
      {
        return v18;
      }

      v28 = *(v46 + 8 * v19);
      ++v27;
      if (v28)
      {
        v25 = v15;
        v26 = __clz(__rbit64(v28));
        v60 = (v28 - 1) & v28;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271C35E8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v50 = a1;
  v51 = a2;
  v9 = a4(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v43 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22766CFF0();
  v17 = v9;
  v18 = v14;
  v19 = result;
  v20 = 0;
  v52 = a3;
  v53 = v10;
  v23 = *(a3 + 64);
  v22 = a3 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v43 = (v24 + 63) >> 6;
  v44 = v22;
  v45 = result + 64;
  v49 = result;
  v46 = v10 + 32;
  v47 = v10 + 16;
  if (v26)
  {
    while (1)
    {
      v27 = v18;
      v28 = __clz(__rbit64(v26));
      v54 = (v26 - 1) & v26;
LABEL_10:
      v31 = v28 | (v20 << 6);
      v32 = v52;
      v33 = v53;
      v34 = *(v53 + 72) * v31;
      v35 = v48;
      v36 = v17;
      (*(v53 + 16))(v48, *(v52 + 48) + v34, v17);
      v57 = *(*(v32 + 56) + 8 * v31);
      v37 = *(v33 + 32);
      v37(v27, v35, v36);

      v38 = v55;
      v50(&v56, &v57);
      v55 = v38;
      if (v38)
      {
        break;
      }

      *(v45 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v19 = v49;
      result = (v37)(*(v49 + 48) + v34, v27, v36);
      *(*(v19 + 56) + 8 * v31) = v56;
      v39 = *(v19 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_17;
      }

      v17 = v36;
      v18 = v27;
      *(v19 + 16) = v41;
      v26 = v54;
      if (!v54)
      {
        goto LABEL_5;
      }
    }

    v42 = v49;

    (*(v53 + 8))(v27, v36);
    v19 = v42;

    return v19;
  }

  else
  {
LABEL_5:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v43)
      {
        return v19;
      }

      v30 = *(v44 + 8 * v20);
      ++v29;
      if (v30)
      {
        v27 = v18;
        v28 = __clz(__rbit64(v30));
        v54 = (v30 - 1) & v30;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271C38F4(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2271C3A54(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_2271C3090(v9, v4, v2);
  result = MEMORY[0x22AA9A450](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2271C3A54(unint64_t *a1, uint64_t a2, void *a3)
{
  v41 = a2;
  v42 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC048, &qword_22767C390);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v41 - v5;
  v6 = sub_2276637B0();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = sub_227665680();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = v11;
  v18 = 0;
  v52 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v46 = v15 + 16;
  v47 = v15;
  v45 = (v15 + 8);
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v53 = (v24 - 1) & v24;
LABEL_11:
    v54 = v26 | (v18 << 6);
    v29 = v52;
    v30 = v54;
    v31 = *(v47 + 16);
    v31(v17, v52[6] + *(v47 + 72) * v54, v12);
    v32 = v29[7] + *(v49 + 72) * v30;
    v33 = v44;
    sub_2271C411C(v32, v44);
    v34 = v48;
    v31(v48, v17, v12);
    v35 = *(v50 + 48);
    sub_2271C411C(v33, v34 + v35);
    v36 = v34 + v35;
    v37 = v51;
    sub_2271C411C(v36, v51);
    sub_226E97D1C(v34, &qword_27D7BC048, &qword_22767C390);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {
      sub_2271C4180(v33);
      result = (*v45)(v17, v12);
      v24 = v53;
    }

    else
    {
      v39 = sub_227665360();
      (*(*(v39 - 8) + 8))(v51, v39);
      sub_2271C4180(v33);
      result = (*v45)(v17, v12);
      *(v42 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      v40 = __OFADD__(v43++, 1);
      v24 = v53;
      if (v40)
      {
        __break(1u);
        return sub_22732937C(v42, v41, v43, v52);
      }
    }
  }

  v27 = v18;
  while (1)
  {
    v18 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      return sub_22732937C(v42, v41, v43, v52);
    }

    v28 = v20[v18];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2271C3E78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2271C3F28;

  return sub_2271BFD64(a2, v7, a4);
}

uint64_t sub_2271C3F28(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2271C4038(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_226E92F34;

  return sub_2271C3E78(a1, a2, v7, v6);
}

uint64_t sub_2271C411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276637B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271C4180(uint64_t a1)
{
  v2 = sub_2276637B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of RestrictionProviding.effectiveRestriction(for:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E92F34;

  return (v13)(a1, a2 & 1, a3, a4);
}

void sub_2271C4338()
{
  sub_2271C43D4();
  if (v0 <= 0x3F)
  {
    sub_2271C4438();
    if (v1 <= 0x3F)
    {
      sub_2271C4504();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2271C43D4()
{
  result = qword_28139DDE0;
  if (!qword_28139DDE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28139DDE0);
  }

  return result;
}

void sub_2271C4438()
{
  if (!qword_28139D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC060, &qword_22767C428);
    sub_2271C44B0();
    v0 = sub_22766BEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_28139D308);
    }
  }
}

unint64_t sub_2271C44B0()
{
  result = qword_2813A56F0;
  if (!qword_2813A56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A56F0);
  }

  return result;
}

void sub_2271C4504()
{
  if (!qword_2813A54A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    sub_2271C0BA8(&qword_28139D2C0);
    sub_2271C0BA8(&qword_28139D2B8);
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A54A8);
    }
  }
}

uint64_t sub_2271C45D0(uint64_t a1)
{
  v4 = *(sub_227665680() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_226F69758(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2271C46C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_226F39CA4(a1, v5);
}

unint64_t sub_2271C477C()
{
  result = qword_281398F50;
  if (!qword_281398F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC080, &qword_22767C460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F50);
  }

  return result;
}

uint64_t sub_2271C47E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271C4850(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v36 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v2, 0);
  v3 = v36;
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = sub_22766CC90();
  v8 = 0;
  v30 = v4 + 72;
  v31 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    v32 = v8;
    v12 = *(v4 + 36);
    v13 = v4;
    v33 = *(*(v4 + 56) + 8 * v7);

    sub_2271D49A8(&v33, &v34);
    if (v1)
    {
      goto LABEL_26;
    }

    v14 = v34;
    v15 = v35;
    v36 = v3;
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    if (v17 >= v16 >> 1)
    {
      v28 = v35;
      v29 = v34;
      sub_226F1EF90(v16 > 1, v17 + 1, 1);
      v15 = v28;
      v14 = v29;
      v3 = v36;
    }

    *(v3 + 16) = v17 + 1;
    v18 = v3 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_23;
    }

    v19 = *(v5 + 8 * v11);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_24;
    }

    v4 = v13;
    v20 = v12;
    if (v12 != *(v13 + 36))
    {
      goto LABEL_25;
    }

    v21 = v19 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v31;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v10 = v31;
      v24 = (v30 + 8 * v11);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          sub_226EB526C(v7, v20, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v7, v20, 0);
    }

LABEL_4:
    v1 = 0;
    v8 = v32 + 1;
    v7 = v9;
    if (v32 + 1 == v10)
    {
      return v3;
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
LABEL_26:

  __break(1u);
  return result;
}

void sub_2271C4AB0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
    sub_226ECCEB4(&qword_281398B80, &qword_281398B88, 0x277CE8D50);
    sub_22766C700();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_22766CD50() || (sub_226E99364(0, &qword_281398B88, 0x277CE8D50), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_226EBB21C();
      return;
    }

LABEL_17:
    v12 = [v11 uniqueName];
    if (v12)
    {
      v13 = v12;
      v19 = sub_22766C000();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_226EB3F78(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_226EB3F78((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2271C4D60(uint64_t a1)
{
  v1 = a1;
  v47 = MEMORY[0x277D84F98];
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22766CCE0();
    sub_226E99364(0, &qword_27D7B89C0, 0x277CE8D38);
    sub_226ECCEB4(&qword_27D7B89C8, &qword_27D7B89C0, 0x277CE8D38);
    sub_22766C700();
    v1 = v42;
    v2 = v43;
    v3 = v44;
    v4 = v45;
    v5 = v46;
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  v38 = v3;
  v9 = (v3 + 64) >> 6;
  v10 = MEMORY[0x277D84F98];
  v39 = v1;
  while (v1 < 0)
  {
    if (!sub_22766CD50() || (sub_226E99364(0, &qword_27D7B89C0, 0x277CE8D38), swift_dynamicCast(), v17 = v41, v15 = v4, v16 = v5, !v41))
    {
LABEL_31:
      sub_226EBB21C();
      return v10;
    }

LABEL_21:
    v40 = v16;
    v18 = [v17 templateUniqueName];
    if (v18)
    {
      v19 = v18;
      v20 = sub_22766C000();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v24 = sub_226F3B12C(v20, v22);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_33;
    }

    v28 = v23;
    if (v10[3] < v27)
    {
      sub_226FE97F8(v27, 1);
      v10 = v47;
      v29 = sub_226F3B12C(v20, v22);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_35;
      }

      v24 = v29;
    }

    if (v28)
    {

      v12 = (v10[7] + 8 * v24);
      MEMORY[0x22AA985C0](v11);
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_227670B30;
      *(v31 + 32) = v17;
      v10[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v10[6] + 16 * v24);
      *v32 = v20;
      v32[1] = v22;
      *(v10[7] + 8 * v24) = v31;
      v33 = v10[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_34;
      }

      v10[2] = v35;
    }

    v4 = v15;
    v1 = v39;
    v5 = v40;
  }

  v13 = v4;
  v14 = v5;
  v15 = v4;
  if (v5)
  {
LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_31;
    }

    v14 = *(v2 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2271C5108()
{
  v0 = sub_227667A70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 392);
    v12 = *(result + 400);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v6 + 104))(v9, *MEMORY[0x277D4E198], v5);
    sub_22766A470();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_2271C531C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  v3 = *(v0 + 392);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));

  __swift_destroy_boxed_opaque_existential_0((v0 + 464));
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));
  v4 = *(v0 + 552);

  v5 = *(v0 + 560);

  __swift_destroy_boxed_opaque_existential_0((v0 + 568));
  return v0;
}

uint64_t sub_2271C53C4()
{
  sub_2271C531C();

  return swift_deallocClassInstance();
}

unint64_t sub_2271C5430()
{
  result = qword_27D7BC088;
  if (!qword_27D7BC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC088);
  }

  return result;
}

uint64_t sub_2271C5484()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v35[-1] - v4;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35[-1] - v11;
  v13 = sub_22766A8A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 544);
  v19 = sub_2276693C0();
  (*(v14 + 104))(v17, *MEMORY[0x277D4F8D0], v13);
  v20 = sub_226EC9A38(v17, v19);

  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    sub_22766A610();
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v21, v22, "Setting AchievementSystem state to .active", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    *(v1 + 16) = 1;
    v24 = *(v1 + 32);
    v25 = *(v1 + 40);
    swift_getObjectType();
    v26 = *(v1 + 552);
    swift_allocObject();
    swift_weakInit();
    sub_226FA6E58();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v35);
    sub_227669F10();
    swift_allocObject();
    swift_weakInit();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v35);
    swift_allocObject();
    swift_weakInit();
    sub_227118E70();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v35);
    sub_22766A5A0();
    swift_allocObject();
    swift_weakInit();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v35);
    v27 = sub_22766C4B0();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v1;

    sub_2272CA940(0, 0, v28, &unk_22767C700, v29);
  }

  else
  {
    sub_22766A610();
    v31 = sub_22766B380();
    v32 = sub_22766C8B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_226E8E000, v31, v32, "Current platform does not support awards evaluation, not activating AchievementSystem", v33, 2u);
      MEMORY[0x22AA9A450](v33, -1, -1);
    }

    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_2271C5A40(uint64_t *a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  v4 = sub_22766B390();
  *(v2 + 88) = v4;
  v5 = *(v4 - 8);
  *(v2 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v2 + 104) = v7;
  *(v2 + 112) = v8;
  *(v2 + 73) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_2271C5B10, 0, 0);
}

uint64_t sub_2271C5B10()
{
  v31 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  sub_22766A610();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 73);
    v6 = *(v0 + 112);
    v29 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    *(v0 + 64) = v6;
    *(v0 + 72) = v5;

    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v30);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Received ArchivedSessionsAdded event %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v8 + 8))(v29, v7);
  }

  else
  {
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(*(v0 + 112) + 16);
  sub_227669DE0();
  v18 = sub_227669DD0();
  v19 = *(v0 + 80);
  if (v18 < v17)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 136) = Strong;
    if (Strong)
    {
      v21 = swift_task_alloc();
      *(v0 + 144) = v21;
      *v21 = v0;
      v21[1] = sub_2271C5F84;

      return sub_2271C60BC();
    }

    goto LABEL_13;
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  *(v0 + 120) = v23;
  if (!v23)
  {
LABEL_13:
    v27 = *(v0 + 104);

    v28 = *(v0 + 8);

    return v28();
  }

  v24 = *(v0 + 73);
  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_2271C5E4C;
  v26 = *(v0 + 112);

  return sub_2271C6EC8(v26, v24);
}

uint64_t sub_2271C5E4C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 104);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2271C5F84()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 104);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2271C60BC()
{
  v1[6] = v0;
  v2 = sub_22766A8A0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_22766B390();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C61F0, 0, 0);
}

uint64_t sub_2271C61F0()
{
  v1 = v0[14];
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "AchievementSystem receive request to run historical evaluation", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[6];

  v9 = *(v7 + 8);
  v0[15] = v9;
  v9(v5, v6);
  if (sub_2271CD5D8())
  {
    __swift_project_boxed_opaque_existential_0((v0[6] + 48), *(v0[6] + 72));
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_2271C63A8;

    return sub_226EB91E0();
  }

  else
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    v15 = v0[9];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2271C63A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v8 = *v1;
  *(v3 + 136) = a1;

  v5 = swift_task_alloc();
  *(v3 + 144) = v5;
  *v5 = v8;
  v5[1] = sub_2271C64F4;
  v6 = *(v2 + 48);

  return sub_2271CD8A4();
}

uint64_t sub_2271C64F4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);

    v5 = sub_2271C6CC8;
  }

  else
  {
    v5 = sub_2271C6610;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271C6610()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[6] + 208), *(v0[6] + 232));
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_2271C66B8;
  v3 = v0[17];

  return sub_226F6AB50(v3);
}

uint64_t sub_2271C66B8(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_2271C67D8, 0, 0);
}

uint64_t sub_2271C67D8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = *(v0[6] + 544);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F8A8], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_2271C6A00;
    v8 = v0[21];
    v9 = v0[6];

    return sub_2271CCBB8(v8);
  }

  else
  {
    v11 = v0[21];
    v12 = v0[13];

    sub_22766A610();
    v13 = sub_22766B380();
    v14 = sub_22766C8B0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[15];
    v17 = v0[13];
    v18 = v0[10];
    v19 = v0[11];
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226E8E000, v13, v14, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v20, 2u);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    v16(v17, v18);
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];
    v24 = v0[9];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2271C6A00()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 184) = v5;
  *v5 = v4;
  v5[1] = sub_2271C6B5C;
  v6 = *(v1 + 48);

  return sub_2271C8B40();
}