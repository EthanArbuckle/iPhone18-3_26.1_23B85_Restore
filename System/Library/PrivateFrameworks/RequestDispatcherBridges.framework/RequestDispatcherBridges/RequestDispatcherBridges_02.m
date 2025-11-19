uint64_t sub_2236522C8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223652364, v1, 0);
}

uint64_t sub_223652364()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v11 = v0[6];
  v10 = v0[7];

  v12 = *MEMORY[0x277D5CF40];
  v13 = sub_223729F08();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v15 = OBJC_IVAR____TtC24RequestDispatcherBridges22ChildRequestController_requestType;
  swift_beginAccess();
  sub_223641E48(v10, v11 + v15);
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2236525A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_223729F08();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236526E0, v1, 0);
}

uint64_t sub_2236526E0()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 104);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 48);

  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges22ChildRequestController_requestType;
  swift_beginAccess();
  (*(v14 + 104))(v10, *MEMORY[0x277D5CF40], v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v17 = *(v12 + 48);
  sub_223657370(v15 + v16, v11);
  sub_223657370(v10, v11 + v17);
  v18 = *(v14 + 48);
  if (v18(v11, 1, v13) == 1)
  {
    v19 = *(v0 + 56);
    sub_223626478(*(v0 + 104), &qword_27D08E9D0, &qword_22372D1E0);
    if (v18(v11 + v17, 1, v19) == 1)
    {
      sub_223626478(*(v0 + 88), &qword_27D08E9D0, &qword_22372D1E0);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v20 = *(v0 + 56);
  sub_223657370(*(v0 + 88), *(v0 + 96));
  v21 = v18(v11 + v17, 1, v20);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  if (v21 == 1)
  {
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);
    sub_223626478(*(v0 + 104), &qword_27D08E9D0, &qword_22372D1E0);
    (*(v25 + 8))(v22, v24);
LABEL_10:
    sub_223626478(*(v0 + 88), &qword_27D08F740, &unk_223731DC0);
LABEL_11:
    v26 = *(v0 + 48);
    sub_2236555A8(*(v0 + 40));
    goto LABEL_13;
  }

  v27 = *(v0 + 88);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);
  v30 = *(v0 + 56);
  (*(v29 + 32))(v28, v11 + v17, v30);
  sub_2236573E0(&unk_28132B540, MEMORY[0x277D5CF58]);
  v31 = sub_22372AFC8();
  v32 = *(v29 + 8);
  v32(v28, v30);
  sub_223626478(v23, &qword_27D08E9D0, &qword_22372D1E0);
  v32(v22, v30);
  sub_223626478(v27, &qword_27D08E9D0, &qword_22372D1E0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v35 = *(v0 + 88);
  v36 = *(v0 + 72);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_223652B68()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_223652D08(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_223652D28, v1, 0);
}

uint64_t sub_223652D28()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];

  *(v10 + 208) = 1;
  sub_223623934(*(v10 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v13 = sub_223729D38();
  v15 = v14;
  v16 = *v12;
  v17 = *(v16 + 24);
  v18 = swift_task_alloc();
  v18[2] = v13;
  v18[3] = v15;
  v18[4] = v16;
  v19 = swift_task_alloc();
  *(v19 + 16) = sub_2236575B4;
  *(v19 + 24) = v18;
  os_unfair_lock_lock(v17 + 4);
  sub_223637034(v20);
  os_unfair_lock_unlock(v17 + 4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v21 = v0[1];

  return v21();
}

uint64_t sub_223652F90(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_223652FB0, v1, 0);
}

uint64_t sub_223652FB0()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v39 = *(v0 + 7);

  *(swift_task_alloc() + 16) = v39;
  v10 = objc_allocWithZone(sub_223728498());
  v11 = sub_223728488();

  if (v11)
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = v12[22];
    __swift_project_boxed_opaque_existential_1(v12 + 18, v12[21]);
    sub_223729D88();
    v15 = v12[16];
    v16 = v12[17];
    v17 = v12[14];
    v18 = v12[15];
    v19 = swift_task_alloc();
    v19[2] = v13;
    v19[3] = v15;
    v19[4] = v16;
    v19[5] = v17;
    v19[6] = v18;
    v20 = objc_allocWithZone(sub_223728288());
    v21 = sub_223728228();

    if (v21)
    {
      v22 = v0[8];
      v23 = v12[22];
      __swift_project_boxed_opaque_existential_1(v12 + 18, v12[21]);
      sub_223729D88();
      sub_223623934(*(v22 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
      v24 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v25 = *v24;
      v26 = *(*v24 + 24);
      v27 = swift_task_alloc();
      v27[2] = v17;
      v27[3] = v18;
      v27[4] = v25;
      v28 = swift_task_alloc();
      *(v28 + 16) = sub_223657350;
      *(v28 + 24) = v27;
      os_unfair_lock_lock(v26 + 4);
      sub_223637034(v29);
      os_unfair_lock_unlock(v26 + 4);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    else
    {
      v35 = sub_22372AC88();
      v36 = sub_22372B278();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_223620000, v35, v36, "Could not clone FlowCompletedMessage for parent request", v37, 2u);
        MEMORY[0x223DE8A80](v37, -1, -1);
      }
    }

    v34 = v0[1];
  }

  else
  {
    v30 = sub_22372AC88();
    v31 = sub_22372B278();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_223620000, v30, v31, "Could not create RequestCompletedMessage", v32, 2u);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    sub_223657180();
    swift_allocError();
    *v33 = xmmword_22372CE90;
    *(v33 + 16) = 4;
    swift_willThrow();
    v34 = v0[1];
  }

  return v34();
}

uint64_t sub_22365344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = *MEMORY[0x277D5CDE8];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_223729D08();
  sub_223729D98();
  sub_223729CF8();
  sub_223729D58();
  v17 = sub_223727408();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  sub_223729D28();
  v18 = *(a3 + 112);
  v19 = *(a3 + 120);

  return sub_223729D18();
}

uint64_t sub_223653658()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v0 + 16);
  sub_2236572D0();
  swift_allocError();
  *v12 = v7 | 0x8000000000000000;
  swift_willThrow();
  v15 = *(v0 + 8);
  v13 = v11;

  return v15();
}

uint64_t sub_223653814(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_223653834, v1, 0);
}

uint64_t sub_223653834()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v11 = v0[2];
  v10 = v0[3];

  v12 = *(v10 + 128);
  v13 = *(v10 + 136);
  v14 = swift_task_alloc();
  v14[2] = v11;
  v14[3] = v12;
  v14[4] = v13;
  v15 = objc_allocWithZone(sub_223729EC8());
  v16 = sub_223729E58();

  if (v16)
  {
    v17 = v0[3];
    v18 = v17[22];
    __swift_project_boxed_opaque_existential_1(v17 + 18, v17[21]);
    sub_223729D88();
  }

  else
  {
    v16 = sub_22372AC88();
    v19 = sub_22372B278();
    if (os_log_type_enabled(v16, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223620000, v16, v19, "Could not clone SiriXActionCandidatesGeneratedMessage for parent request", v20, 2u);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_223653ACC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_223653AEC, v1, 0);
}

uint64_t sub_223653AEC()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v27 = *(v0 + 7);

  *(swift_task_alloc() + 16) = v27;
  v10 = objc_allocWithZone(sub_223728108());
  v11 = sub_223728098();

  if (v11)
  {
    v12 = v0[7];
    v13 = v0[8];
    v14 = v13[22];
    __swift_project_boxed_opaque_existential_1(v13 + 18, v13[21]);
    sub_223729D88();
    sub_223623934(v13[24] + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
    v15 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v16 = sub_223729D38();
    v18 = v17;
    v19 = *v15;
    v20 = *(*v15 + 24);
    v21 = swift_task_alloc();
    v21[2] = v16;
    v21[3] = v18;
    v21[4] = 2;
    v21[5] = v19;
    v22 = swift_task_alloc();
    *(v22 + 16) = sub_2236457A4;
    *(v22 + 24) = v21;
    os_unfair_lock_lock(v20 + 4);
    sub_223637034(v23);
    os_unfair_lock_unlock(v20 + 4);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  else
  {
    sub_2236572D0();
    swift_allocError();
    *v24 = 0xC000000000000000;
    swift_willThrow();
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_223653E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  sub_223729D98();
  sub_2237280C8();
  v14 = *(a3 + 112);
  v15 = *(a3 + 120);

  sub_2237280E8();
  sub_223729D58();
  v16 = sub_223727408();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  sub_2237280F8();
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v8, v17, v18);
  (*(v19 + 56))(v8, 0, 1, v18);
  sub_2237280D8();
  sub_223728CF8();
  sub_2237280B8();
  sub_223728AA8();
  return sub_2237280A8();
}

uint64_t sub_223654040()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v0 + 16);
  sub_2236572D0();
  swift_allocError();
  *v12 = v7;
  swift_willThrow();
  v15 = *(v0 + 8);
  v13 = v11;

  return v15();
}

uint64_t sub_2236541F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2237287C8();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_22372A098();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22365434C, v1, 0);
}

uint64_t sub_22365434C()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = v0[13];
  v11 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[7];

  sub_2237287D8();
  sub_223654AA0(v13, v12);
  (*(v15 + 8))(v13, v14);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_223626478(v0[12], &unk_27D08E9C0, &qword_223731E30);
  }

  else
  {
    v17 = v0[15];
    v19 = v0[7];
    v18 = v0[8];
    (*(v0[14] + 32))(v17, v0[12], v0[13]);
    sub_223623934(*(v18 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
    v20 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v21 = sub_223729D38();
    v23 = v22;
    v24 = *v20;
    v25 = *(*v20 + 24);
    v26 = swift_task_alloc();
    v26[2] = v17;
    v26[3] = v21;
    v26[4] = v23;
    v26[5] = v24;
    v27 = swift_task_alloc();
    *(v27 + 16) = sub_223657594;
    *(v27 + 24) = v26;
    os_unfair_lock_lock(v25 + 4);
    sub_223637034(v28);
    os_unfair_lock_unlock(v25 + 4);
    v30 = v0[14];
    v29 = v0[15];
    v31 = v0[13];

    (*(v30 + 8))(v29, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v32 = v0[15];
  v33 = v0[11];
  v34 = v0[12];

  v35 = v0[1];

  return v35();
}

uint64_t sub_223654698(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_22372A098();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223654790, v1, 0);
}

uint64_t sub_223654790()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[7];

  sub_223729A28();
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_223626478(v0[9], &unk_27D08E9C0, &qword_223731E30);
  }

  else
  {
    v14 = v0[12];
    v16 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 32))(v14, v0[9], v0[10]);
    sub_223623934(*(v15 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
    v17 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v18 = sub_223729D38();
    v20 = v19;
    v21 = *v17;
    v22 = *(*v17 + 24);
    v23 = swift_task_alloc();
    v23[2] = v14;
    v23[3] = v18;
    v23[4] = v20;
    v23[5] = v21;
    v24 = swift_task_alloc();
    *(v24 + 16) = sub_2236572B0;
    *(v24 + 24) = v23;
    os_unfair_lock_lock(v22 + 4);
    sub_22363107C(v25);
    os_unfair_lock_unlock(v22 + 4);
    v27 = v0[11];
    v26 = v0[12];
    v28 = v0[10];

    (*(v27 + 8))(v26, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v29 = v0[12];
  v30 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_223654AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v63 = sub_22372A0B8();
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63, v4);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22372A2D8();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v58 - v13;
  v15 = sub_223729FB8();
  v61 = *(v15 - 8);
  v62 = v15;
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2237287C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22372A098();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v25, a1, v20);
  v32 = (*(v21 + 88))(v25, v20);
  v33 = 0x281328000uLL;
  if (v32 == *MEMORY[0x277D5CB78] || v32 == *MEMORY[0x277D5CB70])
  {
    (*(v21 + 8))(v25, v20);
LABEL_4:
    v34 = MEMORY[0x277D5D010];
LABEL_5:
    (*(v27 + 104))(v31, *v34, v26);
    goto LABEL_6;
  }

  if (v32 == *MEMORY[0x277D5CB88])
  {
    (*(v21 + 96))(v25, v20);
    (*(v61 + 32))(v19, v25, v62);
    sub_223729F18();
    v46 = v64;
    v45 = v65;
    (*(v64 + 16))(v11, v14, v65);
    v47 = (*(v46 + 88))(v11, v45);
    if (v47 == *MEMORY[0x277D5D100])
    {
      v49 = v59;
      v48 = v60;
      (*(v60 + 104))(v59, *MEMORY[0x277D5D038], v63);
    }

    else
    {
      v49 = v59;
      v48 = v60;
      if (v47 == *MEMORY[0x277D5D110])
      {
        v50 = MEMORY[0x277D5D048];
      }

      else
      {
        if (v47 != *MEMORY[0x277D5D0F8])
        {
          v55 = *(v60 + 104);
          if (v47 == *MEMORY[0x277D5D108])
          {
            v55(v59, *MEMORY[0x277D5D040], v63);
          }

          else
          {
            v55(v59, *MEMORY[0x277D5D050], v63);
            (*(v64 + 8))(v11, v65);
          }

          v48 = v60;
          goto LABEL_33;
        }

        v50 = MEMORY[0x277D5D038];
      }

      (*(v60 + 104))(v59, *v50, v63);
    }

LABEL_33:
    v56 = sub_22372A088();
    MEMORY[0x28223BE20](v56, v57);
    *(&v58 - 2) = v49;
    sub_2236573E0(&qword_27D08E9B0, MEMORY[0x277D5CFF8]);
    sub_223727A28();
    (*(v64 + 8))(v14, v65);
    (*(v61 + 8))(v19, v62);
    (*(v27 + 104))(v31, *MEMORY[0x277D5D000], v26);
    (*(v48 + 8))(v49, v63);
    v33 = 0x281328000;
    goto LABEL_6;
  }

  if (v32 == *MEMORY[0x277D5CB80])
  {
    goto LABEL_4;
  }

  if (v32 == *MEMORY[0x277D5CBA0])
  {
    sub_22372A088();
    sub_2236573E0(&qword_27D08E9B0, MEMORY[0x277D5CFF8]);
    sub_223727A38();
    sub_223727A18();

    v34 = MEMORY[0x277D5D000];
    goto LABEL_5;
  }

  if (v32 == *MEMORY[0x277D5CB98])
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v51 = sub_22372AC98();
    __swift_project_value_buffer(v51, qword_28132B680);
    v52 = sub_22372AC88();
    v53 = sub_22372B278();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_223620000, v52, v53, "Unexpected routing decision: .search", v54, 2u);
      MEMORY[0x223DE8A80](v54, -1, -1);
    }

    v34 = MEMORY[0x277D5D020];
    goto LABEL_5;
  }

  (*(v27 + 104))(v31, *MEMORY[0x277D5D020], v26);
  (*(v21 + 8))(v25, v20);
LABEL_6:
  if (*(v33 + 3672) != -1)
  {
    swift_once();
  }

  v35 = sub_22372AC98();
  __swift_project_value_buffer(v35, qword_28132B680);
  v36 = sub_22372AC88();
  v37 = sub_22372B268();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v67[0] = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_223623274(0xD000000000000016, 0x8000000223734760, v67);
    *(v38 + 12) = 2080;
    swift_beginAccess();
    sub_2236573E0(&qword_28132B528, MEMORY[0x277D5D028]);
    v40 = sub_22372AF88();
    v42 = sub_223623274(v40, v41, v67);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_223620000, v36, v37, "%s executionSource: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v39, -1, -1);
    MEMORY[0x223DE8A80](v38, -1, -1);
  }

  swift_beginAccess();
  v43 = v66;
  (*(v27 + 16))(v66, v31, v26);
  (*(v27 + 56))(v43, 0, 1, v26);
  return (*(v27 + 8))(v31, v26);
}

uint64_t sub_223655480(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9B8, &qword_22372D190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = *a1;
  swift_getKeyPath();
  v10 = sub_22372A0B8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a2, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  return sub_223727A08();
}

void sub_2236555A8(void *a1)
{
  v3 = v1;
  v5 = sub_223727F38();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = sub_2237282B8();
  v9 = sub_2236F5150(v8);
  v11 = v10;
  v13 = v12;

  if (v11)
  {

    if (v13)
    {
      v47 = v3;
      v48 = v2;
      MEMORY[0x28223BE20](v14, v15);
      *&v44[-32] = a1;
      *&v44[-24] = v9;
      *&v44[-16] = v11;
      *&v44[-8] = v13;
      v16 = objc_allocWithZone(sub_223728028());
      v17 = v13;
      v18 = sub_223727F78();

      if (v18)
      {
        v46 = v17;
        v49 = v9;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v19 = sub_22372AC98();
        __swift_project_value_buffer(v19, qword_28132B680);
        v20 = v18;
        v21 = sub_22372AC88();
        v22 = sub_22372B288();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v50 = v24;
          *v23 = 136446466;
          v45 = v22;
          sub_223727F48();
          v25 = sub_22372B038();
          v27 = sub_223623274(v25, v26, &v50);

          *(v23 + 4) = v27;
          *(v23 + 12) = 2082;
          v28 = sub_223728CF8();
          v30 = sub_223623274(v28, v29, &v50);

          *(v23 + 14) = v30;
          _os_log_impl(&dword_223620000, v21, v45, "Posting TTResponseMessage with mitigationDecision: %{public}s for trpId: %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v24, -1, -1);
          MEMORY[0x223DE8A80](v23, -1, -1);
        }

        v31 = v47[22];
        __swift_project_boxed_opaque_existential_1(v47 + 18, v47[21]);
        sub_223729D88();

        sub_223657130(v49, v11, v13);
      }

      else
      {
        sub_223657180();
        swift_allocError();
        *v43 = xmmword_22372CE90;
        *(v43 + 16) = 4;
        swift_willThrow();

        sub_223657130(v9, v11, v13);
      }

      return;
    }
  }

  v49 = v9;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v32 = sub_22372AC98();
  __swift_project_value_buffer(v32, qword_28132B680);
  v33 = a1;
  v34 = sub_22372AC88();
  v35 = sub_22372B278();

  if (os_log_type_enabled(v34, v35))
  {
    v48 = v2;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v50 = v37;
    *v36 = 136315138;
    v38 = [v33 debugDescription];
    v39 = sub_22372AFE8();
    v41 = v40;

    v42 = sub_223623274(v39, v41, &v50);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_223620000, v34, v35, "Could not find tcuId and nlResponse in the message: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x223DE8A80](v37, -1, -1);
    MEMORY[0x223DE8A80](v36, -1, -1);
  }

  sub_223657130(v49, v11, v13);
}

uint64_t sub_223655A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = a4;
  v46 = a5;
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v48 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v45 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v45 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v45 - v32;
  v34 = *MEMORY[0x277D5CDE8];
  v35 = sub_223729DE8();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v33, v34, v35);
  (*(v36 + 56))(v33, 0, 1, v35);
  sub_223727FE8();
  sub_223729D98();
  sub_223727F88();
  sub_223729D58();
  v37 = sub_223727408();
  (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
  sub_223728018();
  sub_223729D38();
  sub_223728008();
  sub_223728D08();
  v38 = sub_22372A548();
  (*(*(v38 - 8) + 56))(v23, 0, 1, v38);
  sub_223727FF8();
  sub_223728CF8();
  sub_223727FA8();
  v39 = *MEMORY[0x277D5CAE8];
  v40 = sub_223727F38();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v18, v39, v40);
  (*(v41 + 56))(v18, 0, 1, v40);
  sub_223727FB8();

  v42 = v46;
  sub_22372A338();
  v43 = sub_22372A358();
  (*(*(v43 - 8) + 56))(v13, 0, 1, v43);
  sub_223727FC8();
  sub_22368F33C(MEMORY[0x277D84F90]);
  sub_223727F98();
  sub_2237282C8();
  return sub_223727FD8();
}

void sub_223655F2C()
{
  sub_223656000();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_223656000()
{
  if (!qword_28132B530)
  {
    sub_223729F08();
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_28132B530);
    }
  }
}

uint64_t sub_223656058(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653638(a1);
}

uint64_t sub_2236560EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656180(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656214(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_2236562A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223651EF8(a1);
}

uint64_t sub_22365633C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236522C8(a1);
}

uint64_t sub_2236563D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_223656464(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_2236564F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236525A0(a1);
}

uint64_t sub_22365658C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653ACC(a1);
}

uint64_t sub_223656620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_2236566B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_223656748(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652B48(a1);
}

uint64_t sub_2236567DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223624EA4;

  return sub_223654020(a1);
}

uint64_t sub_223656870(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652D08(a1);
}

uint64_t sub_223656904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652F90(a1);
}

uint64_t sub_223656998(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653814(a1);
}

uint64_t sub_223656A2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656AC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236541F8(a1);
}

uint64_t sub_223656B54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656BE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_223656C7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223654698(a1);
}

uint64_t sub_223656D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[1] = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v20 - v13;
  v15 = *MEMORY[0x277D5CDE8];
  v16 = sub_223729DE8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_223728258();
  sub_223729D98();
  sub_223728238();
  sub_223729D58();
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_223728278();

  sub_223728268();

  return sub_223728248();
}

uint64_t sub_223656F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = *MEMORY[0x277D5CDE8];
  v11 = sub_223729DE8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_223729E98();
  sub_223729D98();
  sub_223729E78();
  sub_223729D58();
  v13 = sub_223727408();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  sub_223729EB8();

  sub_223729EA8();
  sub_223729E38();
  sub_223729E68();
  sub_223729E48();
  return sub_223729E88();
}

void sub_223657130(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

unint64_t sub_223657180()
{
  result = qword_28132AF90[0];
  if (!qword_28132AF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28132AF90);
  }

  return result;
}

uint64_t sub_2236571D4(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      if (a2 >> 62 == 2)
      {
        goto LABEL_9;
      }
    }

    else if (a2 == 0xC000000000000000)
    {
      return 1;
    }
  }

  else
  {
    if (!v2)
    {
      if (!(a2 >> 62))
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (a2 >> 62 == 1)
    {
LABEL_9:
      sub_223657548();
      return sub_22372B368() & 1;
    }
  }

  return 0;
}

unint64_t sub_2236572D0()
{
  result = qword_28132AD60[0];
  if (!qword_28132AD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28132AD60);
  }

  return result;
}

uint64_t sub_22365732C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_223656F20();
}

uint64_t sub_223657370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236573E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges05ChildA16ControllerErrorsO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_223657450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2236574AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_22365750C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_223657548()
{
  result = qword_281328D10;
  if (!qword_281328D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D10);
  }

  return result;
}

uint64_t sub_2236575F4()
{
  v0 = sub_22372AC98();
  __swift_allocate_value_buffer(v0, qword_28132B6E0);
  v1 = __swift_project_value_buffer(v0, qword_28132B6E0);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28132B668);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2236576BC()
{
  if (qword_27D08E2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D0970A0;

  return v1;
}

uint64_t sub_223657738()
{
  if (qword_27D08E2E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_223657794@<X0>(uint64_t a1@<X8>)
{
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  v3 = __swift_project_value_buffer(v2, qword_28132B6E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_223657840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_223657890(a1, v6, a3);
  return v5;
}

void *sub_223657890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a3;
  v21 = sub_22372B2B8();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22372B2A8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_22372AEB8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v15 = sub_223630584(0, &qword_281328D38, 0x277D85C78);
  v20[0] = "messageDispatchTask";
  v20[1] = v15;
  sub_22372AEA8();
  v24 = MEMORY[0x277D84F90];
  sub_22365BAD4(&unk_281328D50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA28, &qword_22372D6F0);
  sub_223660728(&qword_281328DC0, &qword_27D08EA28, &qword_22372D6F0);
  sub_22372B3E8();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v21);
  v3[2] = sub_22372B2E8();
  v16 = sub_22368F438(MEMORY[0x277D84F90]);
  v18 = v22;
  v17 = v23;
  v3[3] = v16;
  v3[4] = v18;
  v3[5] = v17;
  return v3;
}

uint64_t sub_223657B28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_223657B98(uint64_t a1)
{
  v3 = sub_22372AE88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22372AEB8();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v1 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_2236606FC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  sub_22372AEA8();
  v19 = MEMORY[0x277D84F90];
  sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v13, v8, v15);
  _Block_release(v15);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v18);
}

uint64_t sub_223657E6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22372AE88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22372AEB8();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v3 + 16);
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a2;
  v17[4] = a1;
  aBlock[4] = sub_22366071C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor_22;
  v18 = _Block_copy(aBlock);

  sub_22372AEA8();
  v22 = MEMORY[0x277D84F90];
  sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v16, v11, v18);
  _Block_release(v18);
  (*(v7 + 8))(v11, v6);
  (*(v12 + 8))(v16, v21);
}

uint64_t sub_223658154(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy;
  if (*(v1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy))
  {
    v5 = *(v1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
    sub_223657B98(v2);
    v6 = *(v2 + v4);
  }

  *(v2 + v4) = a1;

  if (a1)
  {
    v8 = *(v2 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
    sub_223657E6C(a1, v2);
  }

  return result;
}

uint64_t (*sub_22365820C(void *a1))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy;
  a1[2] = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_223658264;
}

uint64_t sub_223658264(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a1[1];
    v4 = *a1;

    sub_223658154(v5);
LABEL_7:
  }

  v6 = a1[1];
  v7 = a1[2];
  if (*(v6 + v7))
  {
    v8 = *(v6 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
    sub_223657B98(a1[1]);
    v9 = *(v6 + v7);
  }

  *(v6 + v7) = v2;

  if (v2)
  {
    v11 = *(v6 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
    sub_223657E6C(v2, v6);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22365832C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server__sessionClientBox);
  *(a1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server__sessionClientBox) = a2;

  if (a2)
  {
    return sub_223658394(*(a1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context));
  }

  return result;
}

uint64_t sub_223658394(uint64_t a1)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v32 - v5;
  v7 = sub_22372AC98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v12 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v32 - v14;
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_28132B6E0);
  v17 = *(v8 + 16);
  v17(v15, v16, v7);
  v18 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask;
  if (*(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask))
  {
    v19 = sub_22372AC88();
    v20 = sub_22372B258();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v35);
      _os_log_impl(&dword_223620000, v19, v20, "%{public}s: Calling startMessageDispatch more than once is a no-op", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    return (*(v8 + 8))(v15, v7);
  }

  else
  {
    sub_22372B188();
    v24 = sub_22372B1A8();
    (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
    v25 = swift_allocObject();
    v33 = v6;
    v26 = v25;
    swift_weakInit();
    v17(v12, v15, v7);
    v27 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v26;
    (*(v8 + 32))(&v29[v27], v12, v7);
    *&v29[v28] = v34;

    v30 = sub_223667A54(0, 0, v33, &unk_22372D798, v29);
    (*(v8 + 8))(v15, v7);
    v31 = *(v1 + v18);
    *(v1 + v18) = v30;
  }
}

id sub_223658750()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context];

  sub_223657B98(v1);

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_2236588F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_jsonDecoder;
  v3 = sub_223727148();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + v2) = sub_223727138();
  *(v0 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy) = 0;
  v6 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_logger;
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v7 = sub_22372AC98();
  v8 = __swift_project_value_buffer(v7, qword_28132B6E0);
  (*(*(v7 - 8) + 16))(v1 + v6, v8, v7);
  v9 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server__sessionClientBox) = 0;
  sub_22372B538();
  __break(1u);
}

id sub_223658A68(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_jsonDecoder;
  v6 = sub_223727148();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v1[v5] = sub_223727138();
  *&v1[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy] = 0;
  v9 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_logger;
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v10 = sub_22372AC98();
  v11 = __swift_project_value_buffer(v10, qword_28132B6E0);
  (*(*(v10 - 8) + 16))(&v2[v9], v11, v10);
  v12 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v2[v12] = v13;
  *&v2[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server__sessionClientBox] = 0;
  *&v2[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context] = a1;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_223658BC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_22372AC38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA48, &qword_22372D708);
  type metadata accessor for IFSessionService.Context();
  swift_dynamicCast();
  v7 = objc_allocWithZone(v3);
  v8 = sub_223658A68(v11);

  v9 = sub_22372AC48();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *a3 = v8;
  return result;
}

void (*sub_223658CF0(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_22365820C(v3);
  return sub_223658D64;
}

void sub_223658D64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_223658DB4(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v4 + 16) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0u;
  sub_22365BAD4(&qword_27D08EA58, a2, type metadata accessor for IFSessionService.ReverseClient);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA60, &qword_22372D718);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  swift_unknownObjectRetain();

  v10 = sub_22372ABC8();
  if (v3)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v14 = v6;
    v15 = sub_223660728(&qword_27D08EA68, &qword_27D08EA60, &qword_22372D718);

    swift_unknownObjectRelease();
    *&v13 = v11;
    swift_beginAccess();
    if (*(v4 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v4 + 16));
    }

    sub_2236241E8(&v13, v4 + 16);
    swift_endAccess();
  }

  return v4;
}

uint64_t sub_223658F5C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t sub_223658F9C()
{
  swift_beginAccess();
  v0 = qword_28132B7D8;
  v1 = qword_28132B7D8;
  return v0;
}

void sub_223658FE8(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28132B7D8;
  qword_28132B7D8 = a1;
}

uint64_t sub_2236590D8(uint64_t a1)
{
  swift_beginAccess();
  qword_28132B7E0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_223659184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v14;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v9 = sub_223727D38();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223659254, 0, 0);
}

uint64_t sub_223659254()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v0[6] + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_jsonDecoder);
  sub_22365BAD4(&qword_27D08EAE8, 255, MEMORY[0x277D1CE68]);
  sub_223727128();
  v6 = v0[9];
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 40);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_223659570;
  v12 = v0[14];

  return v14(v12, v7, v8);
}

uint64_t sub_223659570()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22365975C;
  }

  else
  {
    v3 = sub_223659684;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223659684()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
  v6 = sub_22372B348();
  v5(v6, 0);

  (*(v2 + 8))(v1, v3);
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22365975C()
{
  v21 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[6];
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_22372B738();
    v13 = sub_223623274(v11, v12, &v20);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_223620000, v4, v5, "Sending message to SessionConnection failed with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v15 = v0[10];
  v14 = v0[11];
  v16 = v1;
  v15(0, v1);

  v17 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2236599C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v7[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = sub_22372A548();
  v7[14] = v11;
  v12 = *(v11 - 8);
  v7[15] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223659AF0, 0, 0);
}

uint64_t sub_223659AF0()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = *(v0[7] + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
  v0[17] = v3;
  v0[18] = *(v3 + 32);
  v4 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2237273B8();
  sub_22372A508();
  v6 = *(v4 + 80);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_223659C5C;
  v9 = v0[16];
  v10 = v0[13];

  return v12(v9, v10, ObjectType, v4);
}

uint64_t sub_223659C5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[20] = a1;
  v4[21] = v1;

  v7 = v3[18];
  (*(v3[15] + 8))(v3[16], v3[14]);
  swift_unknownObjectRelease();
  if (v1)
  {
    v8 = sub_223659FD0;
  }

  else
  {
    v8 = sub_223659DE8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_223659DE8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[7];
  v4 = *(v3 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_223661068;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_22363107C(v7);
  os_unfair_lock_unlock(v4 + 4);
  if (v2)
  {
  }

  else
  {
    v9 = v0[20];
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];

    v13 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
    v14 = sub_223727408();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v10, v9 + v13, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    v12(v10, 0);

    sub_223660FAC(v10);
    v16 = v0[16];
    v17 = v0[13];
    v18 = v0[11];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_223659FD0()
{
  v27 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  sub_22365BAD4(&unk_281329528, 255, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  v4 = swift_allocError();
  v0[22] = v4;
  sub_2236417C0(v2, v5, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  v6 = v4;
  v7 = sub_22372AC88();
  v8 = sub_22372B278();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_223623274(0xD000000000000022, 0x8000000223734A60, &v26);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_22372B738();
    v16 = sub_223623274(v14, v15, &v26);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_223620000, v7, v8, "%{public}s: Getting client session box failed with error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v17 = v0[17];
  sub_223661014();
  v0[23] = swift_allocError();
  *v18 = 2;
  *(v18 + 8) = 2;
  v0[24] = *(v17 + 32);
  v19 = *(v17 + 40);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 88);
  swift_unknownObjectRetain();
  v25 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  v23[1] = sub_22365A2EC;

  return (v25)(v0 + 5, ObjectType, v19);
}

uint64_t sub_22365A2EC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v6 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_22365A428, 0, 0);
}

uint64_t sub_22365A428()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = sub_223727408();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = v1;
  v5(v4, v1);

  sub_223660FAC(v4);
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

void sub_22365A654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15 - v9;
  sub_22364FCB0(a1, &v15 - v9);
  v11 = sub_223727408();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_2237273C8();
    (*(v12 + 8))(v10, v11);
  }

  if (a2)
  {
    v14 = sub_2237272E8();
  }

  else
  {
    v14 = 0;
  }

  (*(a3 + 16))(a3, v13, v14);
}

uint64_t sub_22365A7A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = sub_223658DB4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22365A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a2;
  v20[2] = a3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(a1 + 24) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v21 = *(a1 + 24);

  v13 = 0;
  if (v10)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      while (1)
      {
        v15 = *(*(v21 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
        result = swift_beginAccess();
        if (*(v15 + 40))
        {
          result = sub_223623934(v15 + 16, &v25);
          v16 = *(&v26 + 1);
          if (!*(&v26 + 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          v17 = *(v15 + 32);
          v25 = *(v15 + 16);
          v26 = v17;
          v27 = *(v15 + 48);
          v16 = *(&v17 + 1);
          if (!*(&v17 + 1))
          {
            goto LABEL_18;
          }
        }

        v10 &= v10 - 1;
        v22 = v27;
        v18 = __swift_project_boxed_opaque_existential_1(&v25, v16);
        v23 = v20;
        MEMORY[0x28223BE20](v18, v19);
        sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);

        sub_22372ABB8();

        result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        v13 = v14;
        if (!v10)
        {
          break;
        }

LABEL_10:
        v14 = v13;
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_22365AB18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_223727348();
  v9[4] = sub_22366132C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22365AC5C;
  v9[3] = &block_descriptor_55;
  v8 = _Block_copy(v9);

  [a1 sendWithMessageData:v7 reply:v8];
  _Block_release(v8);
}

void sub_22365AC5C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22365ACE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22365AD2C(void *a1)
{
  v2 = v1;
  v4 = sub_22372AE88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22372AEB8();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v2 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_223661364;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor_61;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_22372AEA8();
  v21 = MEMORY[0x277D84F90];
  sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v14, v9, v16);
  _Block_release(v16);
  (*(v5 + 8))(v9, v4);
  (*(v10 + 8))(v14, v20);
}

uint64_t sub_22365B00C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  swift_beginAccess();
  v3 = *(a1 + 24);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 24) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v20 = *(a1 + 24);

  v12 = 0;
  if (v9)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v14 = *(*(v20 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
        result = swift_beginAccess();
        if (*(v14 + 40))
        {
          result = sub_223623934(v14 + 16, &v24);
          v15 = *(&v25 + 1);
          if (!*(&v25 + 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = *(v14 + 32);
          v24 = *(v14 + 16);
          v25 = v16;
          v26 = *(v14 + 48);
          v15 = *(&v16 + 1);
          if (!*(&v16 + 1))
          {
            goto LABEL_18;
          }
        }

        v9 &= v9 - 1;
        v21 = v26;
        v17 = __swift_project_boxed_opaque_existential_1(&v24, v15);
        v22 = &v19;
        MEMORY[0x28223BE20](v17, v18);
        sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);

        sub_22372ABB8();

        result = __swift_destroy_boxed_opaque_existential_1Tm(&v24);
        v12 = v13;
        if (!v9)
        {
          break;
        }

LABEL_10:
        v13 = v12;
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_22365B250(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_2237272E8();
  v9[4] = sub_22366156C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22365AC5C;
  v9[3] = &block_descriptor_68;
  v8 = _Block_copy(v9);

  [a1 sessionDidFailWithError:v7 reply:v8];
  _Block_release(v8);
}

uint64_t sub_22365B354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v6 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22368D740(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v9;
  return swift_endAccess();
}

uint64_t sub_22365B3E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = sub_2236AF76C(a2);
  if (v6)
  {
    v7 = v5;
    v8 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22365ED00();
    }

    v11 = *(*(v10 + 56) + 8 * v7);

    sub_22365E618(v7, v10);
    *(a1 + 24) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_22365B510@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t SessionClientBox.deinit()
{
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask;
  if (*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask);

    sub_22372B1B8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_conversationSessionID;
  v4 = sub_223727408();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v4);
  v6 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
  v7 = sub_22372A548();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_jsonEncoder);

  v9 = *(v0 + v1);

  return v0;
}

uint64_t sub_22365B704()
{
  result = sub_22372AC98();
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

uint64_t sub_22365B7E8()
{
  result = sub_223727408();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22372A548();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22365B914()
{
  result = qword_27D08E9F0;
  if (!qword_27D08E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08E9F0);
  }

  return result;
}

unint64_t sub_22365B9B8()
{
  result = qword_27D08EA00;
  if (!qword_27D08EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EA00);
  }

  return result;
}

unint64_t sub_22365BA0C(uint64_t a1)
{
  result = sub_22365BA34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22365BA34()
{
  result = qword_281328F48;
  if (!qword_281328F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281328F48);
  }

  return result;
}

uint64_t sub_22365BAD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22365BBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[61] = a5;
  v6[62] = a6;
  v6[60] = a4;
  v7 = sub_223727C58();
  v6[63] = v7;
  v8 = *(v7 - 8);
  v6[64] = v8;
  v9 = *(v8 + 64) + 15;
  v6[65] = swift_task_alloc();
  v10 = sub_22372AE88();
  v6[66] = v10;
  v11 = *(v10 - 8);
  v6[67] = v11;
  v12 = *(v11 + 64) + 15;
  v6[68] = swift_task_alloc();
  v13 = sub_22372AEB8();
  v6[69] = v13;
  v14 = *(v13 - 8);
  v6[70] = v14;
  v15 = *(v14 + 64) + 15;
  v6[71] = swift_task_alloc();
  v16 = sub_223727408();
  v6[72] = v16;
  v17 = *(v16 - 8);
  v6[73] = v17;
  v18 = *(v17 + 64) + 15;
  v6[74] = swift_task_alloc();
  v19 = sub_223727E38();
  v6[75] = v19;
  v20 = *(v19 - 8);
  v6[76] = v20;
  v21 = *(v20 + 64) + 15;
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAC8, &unk_22372D7A0) - 8) + 64) + 15;
  v6[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22365BE58, 0, 0);
}

uint64_t sub_22365BE58()
{
  v29 = v0;
  v1 = v0[60];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[84] = Strong;
  if (Strong)
  {
    v3 = Strong[5];
    v4 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v3);
    v5 = *(v4 + 56);
    v0[16] = swift_getAssociatedTypeWitness();
    v0[17] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 13);
    v26 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    v0[85] = v8;
    *v8 = v0;
    v8[1] = sub_22365C1A8;

    return v26(boxed_opaque_existential_1, v3, v4);
  }

  else
  {
    v10 = v0[61];
    v11 = sub_22372AC88();
    v12 = sub_22372B278();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v28);
      _os_log_impl(&dword_223620000, v11, v12, "%{public}s: SessionClientBox scope ended even before subscription was started", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x223DE8A80](v14, -1, -1);
      MEMORY[0x223DE8A80](v13, -1, -1);
    }

    v15 = v0[83];
    v16 = v0[82];
    v17 = v0[81];
    v18 = v0[80];
    v19 = v0[79];
    v20 = v0[78];
    v21 = v0[77];
    v22 = v0[74];
    v23 = v0[71];
    v24 = v0[68];
    v27 = v0[65];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_22365C1A8()
{
  v2 = *(*v1 + 680);
  v5 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v3 = sub_22365DA20;
  }

  else
  {
    v3 = sub_22365C2BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22365C2BC()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 480);

  sub_2236241E8((v0 + 104), v0 + 64);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 64), v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v3);
  v9 = *(v4 + 8);
  *(v0 + 168) = swift_getAssociatedTypeWitness();
  *(v0 + 176) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22372B1E8();

  swift_beginAccess();
  *(v0 + 412) = *MEMORY[0x277D1C8C0];
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 144, v10);
  v12 = *(MEMORY[0x277D856D8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 696) = v13;
  *v13 = v0;
  v13[1] = sub_22365C4B8;
  v14 = *(v0 + 664);

  return MEMORY[0x282200310](v14, 0, 0, v0 + 424, v10, v11);
}

uint64_t sub_22365C4B8()
{
  v2 = *(*v1 + 696);
  v5 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_22365DC88;
  }

  else
  {
    v3 = sub_22365C5CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22365C5CC()
{
  v144 = v0;
  v1 = v0[83];
  v2 = v0[76];
  v3 = v0[75];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
LABEL_22:
    v99 = v0[61];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
    v100 = sub_22372AC88();
    v101 = sub_22372B268();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v143[0] = v103;
      *v102 = 136446210;
      *(v102 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v143);
      _os_log_impl(&dword_223620000, v100, v101, "%{public}s: SessionClient subscription ended", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x223DE8A80](v103, -1, -1);
      MEMORY[0x223DE8A80](v102, -1, -1);
    }

    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v104 = sub_22372AC98();
    v0[89] = __swift_project_value_buffer(v104, qword_28132B668);
    v105 = sub_22372AC88();
    v106 = sub_22372B268();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v143[0] = v108;
      *v107 = 136315138;
      *(v107 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v143);
      _os_log_impl(&dword_223620000, v105, v106, "%s: IFessionService Cleanup session", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      MEMORY[0x223DE8A80](v108, -1, -1);
      MEMORY[0x223DE8A80](v107, -1, -1);
    }

    v109 = v0[60];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_223623934(Strong + 16, (v0 + 23));

      v111 = v0[26];
      v112 = v0[27];
      __swift_project_boxed_opaque_existential_1(v0 + 23, v111);
      v113 = *(v112 + 64);
      v141 = (v113 + *v113);
      v114 = v113[1];
      v115 = swift_task_alloc();
      v0[90] = v115;
      *v115 = v0;
      v115[1] = sub_22365D5BC;

      return v141(v111, v112);
    }

    else
    {
      v116 = v0[62];
      v118 = *(v116 + 32);
      v117 = *(v116 + 40);
      ObjectType = swift_getObjectType();
      v120 = *(v117 + 88);
      v142 = (v120 + *v120);
      v121 = v120[1];
      v122 = swift_task_alloc();
      v0[92] = v122;
      *v122 = v0;
      v122[1] = sub_22365D804;

      return (v142)(v0 + 57, ObjectType, v117);
    }
  }

  v4 = v0[60];
  (*(v2 + 32))(v0[82], v1, v3);
  v5 = swift_weakLoadStrong();
  if (!v5)
  {
    v39 = v0[61];
    v40 = sub_22372AC88();
    v41 = sub_22372B268();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[82];
    v44 = v0[76];
    v45 = v0[75];
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v143[0] = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v143);
      _os_log_impl(&dword_223620000, v40, v41, "%{public}s: SessionClientBox scope ended, ending subscription", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x223DE8A80](v47, -1, -1);
      MEMORY[0x223DE8A80](v46, -1, -1);
    }

    (*(v44 + 8))(v43, v45);
    goto LABEL_22;
  }

  v140 = v5;
  v6 = v0[82];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[61];
  v12 = *(v0[76] + 16);
  v12(v0[81], v6, v10);
  v12(v7, v6, v10);
  v12(v8, v6, v10);
  v12(v9, v6, v10);
  v13 = sub_22372AC88();
  v14 = sub_22372B268();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[81];
  v138 = v0[80];
  v17 = v0[79];
  v18 = v0[78];
  if (v15)
  {
    v128 = v0[78];
    v129 = v0[77];
    v125 = v0[76];
    v19 = v0[74];
    v134 = v0[75];
    v136 = v0[73];
    v20 = v0[72];
    v132 = v14;
    v127 = v0[79];
    v21 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v143[0] = v130;
    *v21 = 136447235;
    *(v21 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v143);
    *(v21 + 12) = 2080;
    sub_223727E28();
    sub_22365BAD4(&qword_28132B600, 255, MEMORY[0x277CC95F0]);
    v22 = sub_22372B6B8();
    v24 = v23;
    v124 = *(v136 + 8);
    v124(v19, v20);
    v126 = v12;
    v25 = *(v125 + 8);
    v25(v16, v134);
    v26 = sub_223623274(v22, v24, v143);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    sub_223727E08();
    v27 = sub_22372B6B8();
    v29 = v28;
    v124(v19, v20);
    v25(v138, v134);
    v30 = sub_223623274(v27, v29, v143);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2080;
    v31 = sub_223727DF8();
    v33 = v32;
    v25(v127, v134);
    v34 = sub_223623274(v31, v33, v143);

    *(v21 + 34) = v34;
    *(v21 + 42) = 2081;
    v126(v129, v128, v134);
    v35 = sub_22372B038();
    v37 = v36;
    v25(v128, v134);
    v38 = sub_223623274(v35, v37, v143);

    *(v21 + 44) = v38;
    _os_log_impl(&dword_223620000, v13, v132, "%{public}s: Message received from IntelligenceFlow with sessionId: %s, eventId: %s and clientRequestId: %s with message: %{private}s", v21, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v130, -1, -1);
    MEMORY[0x223DE8A80](v21, -1, -1);
  }

  else
  {
    v48 = v0[76];
    v49 = v0[75];

    v25 = *(v48 + 8);
    v25(v18, v49);
    v25(v17, v49);
    v25(v138, v49);
    v25(v16, v49);
  }

  v50 = v0[88];
  v51 = v0[82];
  v52 = v0[75];
  v53 = *(v140 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_jsonEncoder);
  sub_22365BAD4(&qword_28132B5E0, 255, MEMORY[0x277D1CEE8]);

  v54 = sub_223727158();
  if (v50)
  {
    v56 = v0[61];

    v57 = v50;
    v58 = sub_22372AC88();
    v59 = sub_22372B278();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v143[0] = v61;
      *v60 = 136446466;
      *(v60 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v143);
      *(v60 + 12) = 2080;
      swift_getErrorValue();
      v63 = v0[46];
      v62 = v0[47];
      v64 = v0[48];
      v65 = sub_22372B738();
      v67 = sub_223623274(v65, v66, v143);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_223620000, v58, v59, "%{public}s: Failed to dispatch SessionServerMessage with error %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v61, -1, -1);
      MEMORY[0x223DE8A80](v60, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v68 = v0[71];
    v137 = v0[70];
    v139 = v0[69];
    v131 = v0[68];
    v135 = v0[67];
    v69 = v0[66];
    v70 = v0[62];
    v71 = v54;
    v72 = v55;

    v133 = *(v70 + 16);
    v73 = swift_allocObject();
    v73[2] = v70;
    v73[3] = v71;
    v73[4] = v72;
    v0[6] = sub_2236612C4;
    v0[7] = v73;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22365ACE8;
    v0[5] = &block_descriptor_49;
    v74 = _Block_copy(v0 + 2);

    sub_2236612D0(v71, v72);
    sub_22372AEA8();
    v0[59] = MEMORY[0x277D84F90];
    sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
    sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8);
    sub_22372B3E8();
    MEMORY[0x223DE7D20](0, v68, v131, v74);
    _Block_release(v74);
    sub_223661270(v71, v72);
    (*(v135 + 8))(v131, v69);
    (*(v137 + 8))(v68, v139);
    v75 = v0[7];
  }

  v76 = *(v0 + 103);
  v77 = v0[82];
  v78 = v0[65];
  v79 = v0[63];
  v80 = v0[64];
  sub_223727E18();
  if ((*(v80 + 88))(v78, v79) == v76)
  {
    v81 = v0[61];
    (*(v0[64] + 8))(v0[65], v0[63]);
    v82 = sub_22372AC88();
    v83 = sub_22372B268();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v0[82];
    v86 = v0[75];
    v87 = v0[76] + 8;
    if (v84)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v143[0] = v89;
      *v88 = 136446210;
      *(v88 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v143);
      _os_log_impl(&dword_223620000, v82, v83, "%{public}s: SessionClient session terminated", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x223DE8A80](v89, -1, -1);
      MEMORY[0x223DE8A80](v88, -1, -1);
    }

    else
    {
    }

    v25(v85, v86);
    goto LABEL_22;
  }

  v90 = v0[65];
  v91 = v0[63];
  v92 = v0[64];
  v93 = v0[76] + 8;
  v25(v0[82], v0[75]);

  (*(v92 + 8))(v90, v91);
  v94 = v0[21];
  v95 = v0[22];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 18), v94);
  v96 = *(MEMORY[0x277D856D8] + 4);
  v97 = swift_task_alloc();
  v0[87] = v97;
  *v97 = v0;
  v97[1] = sub_22365C4B8;
  v98 = v0[83];

  return MEMORY[0x282200310](v98, 0, 0, v0 + 53, v94, v95);
}

uint64_t sub_22365D5BC()
{
  v2 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = sub_22365E400;
  }

  else
  {
    v3 = sub_22365D6D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22365D6D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  v1 = v0[62];
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[92] = v7;
  *v7 = v0;
  v7[1] = sub_22365D804;

  return v9(v0 + 57, ObjectType, v2);
}

uint64_t sub_22365D804()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  v5 = *v0;

  v3 = *(v1 + 456);

  return MEMORY[0x2822009F8](sub_22365D91C, 0, 0);
}

uint64_t sub_22365D91C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[74];
  v9 = v0[71];
  v10 = v0[68];
  v13 = v0[65];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22365DA20()
{
  v32 = v0;
  v1 = v0[86];
  v2 = v0[61];
  __swift_deallocate_boxed_opaque_existential_1(v0 + 13);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[86];
    v7 = v0[84];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v31);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[33];
    v13 = sub_22372B738();
    v15 = sub_223623274(v13, v14, &v31);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_223620000, v4, v5, "%{public}s: Failed to materialize subscription to IntelligenceFlow messages with error %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
    v16 = v0[86];
    v17 = v0[84];
  }

  v18 = v0[83];
  v19 = v0[82];
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[78];
  v24 = v0[77];
  v25 = v0[74];
  v26 = v0[71];
  v27 = v0[68];
  v30 = v0[65];

  v28 = v0[1];

  return v28();
}

uint64_t sub_22365DC88()
{
  v51 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 424);
  *(v0 + 744) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v3 = v2;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v50 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v50);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 336);
    v11 = sub_22372B738();
    v13 = sub_223623274(v11, v12, &v50);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_223620000, v4, v5, "%{public}s: IntelligenceFlow subcription ended with error %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  sub_223661014();
  v14 = swift_allocError();
  *v15 = v2;
  *(v15 + 8) = 0;
  *(v0 + 432) = v2;
  v16 = v2;
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 392);
    v18 = *(v0 + 400);
    v20 = *(v0 + 408);
    if (!*(v0 + 408))
    {
      *(v0 + 409) = 2;
      sub_22366121C();
      v21 = sub_22372B748();
      v22 = v19;
      v23 = v18;
      v24 = 0;
      goto LABEL_8;
    }

    if (v20 == 2)
    {
      *(v0 + 410) = 4;
      sub_22366121C();
      v21 = sub_22372B748();
      v22 = v19;
      v23 = v18;
      v24 = 2;
LABEL_8:
      sub_223661204(v22, v23, v24);

      v14 = v21;
      goto LABEL_10;
    }

    sub_223661204(*(v0 + 392), *(v0 + 400), v20);
  }

LABEL_10:
  *(v0 + 752) = v14;
  v25 = *(v0 + 488);
  v26 = v14;
  v27 = sub_22372AC88();
  v28 = sub_22372B278();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v29 = 136446466;
    *(v29 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v50);
    *(v29 + 12) = 2080;
    swift_getErrorValue();
    v30 = *(v0 + 296);
    v31 = *(v0 + 304);
    v32 = *(v0 + 312);
    v33 = *(v31 - 8);
    v34 = *(v33 + 64) + 15;
    v35 = swift_task_alloc();
    (*(v33 + 16))(v35, v30, v31);
    v36 = sub_22372B738();
    v38 = v37;
    (*(v33 + 8))(v35, v31);

    v39 = sub_223623274(v36, v38, &v50);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_223620000, v27, v28, "%{public}s: IntelligenceFlow returning error %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v48, -1, -1);
    MEMORY[0x223DE8A80](v29, -1, -1);
  }

  v40 = *(v0 + 496);
  sub_22365AD2C(v14);
  v41 = *(v40 + 32);
  v42 = *(v40 + 40);
  ObjectType = swift_getObjectType();
  v44 = *(v42 + 72);
  v49 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  *(v0 + 760) = v46;
  *v46 = v0;
  v46[1] = sub_22365E1EC;

  return v49(ObjectType, v42);
}

uint64_t sub_22365E1EC()
{
  v1 = *(*v0 + 760);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22365E2E8, 0, 0);
}

uint64_t sub_22365E2E8()
{
  v1 = *(v0 + 752);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v8 = *(v0 + 616);
  v9 = *(v0 + 592);
  v10 = *(v0 + 568);
  v11 = *(v0 + 544);
  v14 = *(v0 + 520);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22365E400()
{
  v18 = v0;
  v1 = v0[89];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[91];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v17);
    _os_log_impl(&dword_223620000, v2, v3, "%s: IFessionService Cleanup session failed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v8 = v0[62];
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  ObjectType = swift_getObjectType();
  v12 = *(v9 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[92] = v14;
  *v14 = v0;
  v14[1] = sub_22365D804;

  return v16(v0 + 57, ObjectType, v9);
}

uint64_t sub_22365E618(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22372B798();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22365E788(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22372B7A8();

      sub_22372B078();
      v14 = sub_22372B7C8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22365E944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22372B7A8();

      sub_22372B078();
      v13 = sub_22372B7C8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22365EB3C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22372B798();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_22365ED00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA40, &qword_22372D700);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22365EEAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1D0, &qword_22372D7F8);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2236227C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_223661514(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_22365F050()
{
  v1 = v0;
  v33 = sub_22372A548();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v33, v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F170, &qword_22372D7D8);
  v5 = *v0;
  v6 = sub_22372B578();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        result = v25;
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22365F2C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F190, &qword_22372FBA0);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;

        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22365F478(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22372B578();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22365F628(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v45 = a1(0);
  v47 = *(v45 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v45, v8);
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v3;
  v11 = sub_22372B578();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v6;
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

        v6 = v40;
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
    *v6 = v12;
  }

  return result;
}

void *sub_22365F8C4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22372B578();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22365FA24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F120, &unk_22372FB50);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22365FB9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA90, &unk_22372FB60);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22363038C(v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22365FD20()
{
  v1 = v0;
  v2 = type metadata accessor for RootRequestController.TRPCache(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA70, &unk_22372D720);
  v6 = *v0;
  v7 = sub_22372B578();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_2236614AC(*(v6 + 56) + v28, v32, type metadata accessor for RootRequestController.TRPCache);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_2236417C0(v27, *(v29 + 56) + v28, type metadata accessor for RootRequestController.TRPCache);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22365FF78()
{
  v1 = v0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31, v3);
  v30 = &v26 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EB00, &qword_22372D7D0);
  v5 = *v0;
  v6 = sub_22372B578();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v5 + 64;
    for (i = v33 + 32; v14; result = (*(v21 + 32))(*(v25 + 56) + v22, v24, v23))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = v33;
      v22 = *(v33 + 72) * v19;
      v24 = v30;
      v23 = v31;
      (*(v33 + 16))(v30, *(v5 + 56) + v22, v31);
      v25 = v32;
      *(*(v32 + 48) + 8 * v19) = v20;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v7 = v32;
        goto LABEL_18;
      }

      v18 = *(v27 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_2236601E8()
{
  v1 = v0;
  v2 = type metadata accessor for RequestState();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EAF0, &unk_22372D7C0);
  v6 = *v0;
  v7 = sub_22372B578();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_2236614AC(*(v6 + 56) + v28, v32, type metadata accessor for RequestState);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_2236417C0(v27, *(v29 + 56) + v28, type metadata accessor for RequestState);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_223660440()
{
  v12 = sub_22372B2B8();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v12, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22372B2A8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = sub_22372AEB8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11[1] = sub_223630584(0, &qword_281328D38, 0x277D85C78);
  sub_22372AEA8();
  v13 = MEMORY[0x277D84F90];
  sub_22365BAD4(&unk_281328D50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA28, &qword_22372D6F0);
  sub_223660728(&qword_281328DC0, &qword_27D08EA28, &qword_22372D6F0);
  sub_22372B3E8();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v12);

  sub_22368F438(MEMORY[0x277D84F90]);

  sub_22372B538();
  __break(1u);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_223660728(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_223660770(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v22[-v11];
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = *&a3[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock];
  v26 = a3;
  v23 = sub_223661570;
  v24 = &v25;
  _Block_copy(a4);
  os_unfair_lock_lock(v14 + 4);
  sub_223661538(&v27);
  os_unfair_lock_unlock(v14 + 4);
  if (v27)
  {
    sub_223623934(v27 + 16, v28);

    sub_2236241E8(v28, v29);
    sub_22372B188();
    v15 = sub_22372B1A8();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
    sub_223623934(v29, v28);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a3;
    v16[5] = a1;
    v16[6] = a2;
    sub_2236241E8(v28, (v16 + 7));
    v16[12] = sub_223661374;
    v16[13] = v13;
    v17 = a3;
    sub_2236612D0(a1, a2);

    sub_223667A54(0, 0, v12, &unk_22372D7B8, v16);

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_223661014();
    v18 = swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 2;
    v20 = sub_2237272E8();
    (a4)[2](a4, 0, v20);
  }
}

uint64_t sub_223660A08(uint64_t a1, char *a2, void (**a3)(void, void, void))
{
  v33 = a1;
  v5 = sub_223727408();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v35 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - v20;
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  v22 = *&a2[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock];
  v40 = a2;
  v37 = sub_223660E2C;
  v38 = &v39;
  _Block_copy(a3);
  os_unfair_lock_lock(v22 + 4);
  sub_223660E58(&v41);
  os_unfair_lock_unlock(v22 + 4);
  if (v41)
  {
    (*(v6 + 16))(v21, v41 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v5);
    (*(v6 + 56))(v21, 0, 1, v5);
    sub_22364FCB0(v21, v18);
    if ((*(v6 + 48))(v18, 1, v5) == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_2237273C8();
      (*(v6 + 8))(v18, v5);
    }

    (a3)[2](a3, v23, 0);

    sub_223660FAC(v21);
  }

  else
  {
    v24 = v35;
    sub_22372B188();
    v25 = sub_22372B1A8();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    v26 = v34;
    (*(v6 + 16))(v34, v33, v5);
    v27 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = a2;
    (*(v6 + 32))(&v28[v27], v26, v5);
    v29 = &v28[(v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
    v30 = v36;
    *v29 = sub_223660E24;
    v29[1] = v30;
    v31 = a2;

    sub_223667A54(0, 0, v24, &unk_22372D788, v28);
  }
}

uint64_t sub_223660E70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_223727408() - 8);
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
  v13[1] = sub_223624EA4;

  return sub_2236599C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_223660FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223661014()
{
  result = qword_27D08EAC0;
  if (!qword_27D08EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EAC0);
  }

  return result;
}

uint64_t sub_223661084(uint64_t a1)
{
  v4 = *(sub_22372AC98() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2236242EC;

  return sub_22365BBB0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x223DE8A80);
  }

  return result;
}

uint64_t sub_223661204(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
  }

  return result;
}

unint64_t sub_22366121C()
{
  result = qword_27D08EAD8;
  if (!qword_27D08EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EAD8);
  }

  return result;
}

uint64_t sub_223661270(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2236612D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_223661324(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_22365AB18(a1, a2, a3);
}

uint64_t sub_22366132C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void *sub_22366137C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2236613C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2236242EC;

  return sub_223659184(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

uint64_t sub_2236614AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_223661514(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_223661588(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2236242EC;

  return v9(a1, a2);
}

uint64_t sub_2236616A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2236242EC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2236617D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_223624EA4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_223661910(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2236242EC;

  return v9(a1, a2);
}

uint64_t sub_223661A28()
{
  v1[10] = v0;
  v2 = sub_223727558();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223661AE8, v0, 0);
}

uint64_t sub_223661AE8()
{
  if (*(v0[10] + 128))
  {
    v1 = v0[13];

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v4 = sub_22372AC98();
    v0[14] = __swift_project_value_buffer(v4, qword_28132B668);
    v5 = sub_22372AC88();
    v6 = sub_22372B288();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223620000, v5, v6, "Starting RemoteIFClientTransport", v7, 2u);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    v8 = v0[10];

    sub_2236633EC();
    inited = swift_initStackObject();
    v0[15] = inited;
    v10 = type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
    inited[4] = v10;
    v11 = type metadata accessor for RemoteIntelligenceSessionServerMessage(0);
    v0[16] = v11;
    inited[5] = v11;
    v12 = type metadata accessor for RemoteIntelligenceFlowErrorMessage(0);
    v0[17] = v12;
    inited[6] = v12;
    v0[18] = *(v8 + 112);
    v13 = *(v8 + 120);
    v0[19] = v13;
    ObjectType = swift_getObjectType();
    v0[20] = ObjectType;
    v15 = sub_223663464(&qword_27D08EB30, 255, MEMORY[0x277D5DF30]);
    v0[21] = v15;
    v16 = *(MEMORY[0x277D5DF80] + 4);
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_223661D4C;

    return MEMORY[0x2821C0310](v10, v15, ObjectType, v13);
  }
}

uint64_t sub_223661D4C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = *(MEMORY[0x277D5DF80] + 4);
  v5 = swift_task_alloc();
  v1[23] = v5;
  *v5 = v3;
  v5[1] = sub_223661EE4;
  v6 = v1[21];
  v7 = v1[20];
  v8 = v1[19];
  v9 = v1[18];
  v10 = v1[16];

  return MEMORY[0x2821C0310](v10, v6, v7, v8);
}

uint64_t sub_223661EE4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_223661FF4, v2, 0);
}

uint64_t sub_223661FF4()
{
  v1 = v0[15];
  swift_setDeallocating();
  v2 = *(MEMORY[0x277D5DF80] + 4);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_22366209C;
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];

  return MEMORY[0x2821C0310](v8, v4, v5, v6);
}

uint64_t sub_22366209C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2236621AC, v2, 0);
}

uint64_t sub_2236621AC()
{
  v1 = *(MEMORY[0x277D5DF78] + 4);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_223662248;
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];

  return MEMORY[0x2821C0308](v4, v3);
}

uint64_t sub_223662248()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_2236623E4;
  }

  else
  {
    v6 = sub_223662374;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_223662374()
{
  *(v0[10] + 128) = 1;
  v1 = v0[13];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2236623E4()
{
  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88)) == *MEMORY[0x277D5DF48])
    {
      v5 = *(v0 + 112);

      v6 = sub_22372AC88();
      v7 = sub_22372B268();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_223620000, v6, v7, "Message center already started", v8, 2u);
        MEMORY[0x223DE8A80](v8, -1, -1);
      }

      v9 = *(v0 + 104);

      v10 = *(v0 + 8);
      goto LABEL_10;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v11 = *(v0 + 208);
  v12 = *(v0 + 112);

  v13 = v11;
  v14 = sub_22372AC88();
  v15 = sub_22372B278();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 208);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v16;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_223620000, v14, v15, "Failed to start message center. Error=%@", v17, 0xCu);
    sub_223651020(v18);
    MEMORY[0x223DE8A80](v18, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 104);
  v23 = *(v0 + 80);

  *(v23 + 128) = 0;
  swift_willThrow();

  v10 = *(v0 + 8);
  v24 = *(v0 + 208);
LABEL_10:

  return v10();
}

uint64_t sub_223662668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_2236626FC;

  return sub_223661A28();
}

uint64_t sub_2236626FC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_223662840, v7, 0);
  }
}

uint64_t sub_223662840()
{
  v22 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_22372AC98();
  v0[10] = __swift_project_value_buffer(v2, qword_28132B668);

  v3 = sub_22372AC88();
  v4 = sub_22372B268();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    v0[4] = v5;
    sub_223727528();

    v8 = sub_22372B038();
    v10 = sub_223623274(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_223620000, v3, v4, "RemoteIF send message started. %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v11 = v0[8];
  v13 = *(v11 + 112);
  v12 = *(v11 + 120);
  ObjectType = swift_getObjectType();
  v15 = *(MEMORY[0x277D5DF68] + 4);
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_223662A54;
  v17 = v0[6];
  v18 = v0[7];
  v19 = v0[5];

  return MEMORY[0x2821C02F8](v19, v17, v18, ObjectType, v12);
}

uint64_t sub_223662A54()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_223662CF4;
  }

  else
  {
    v6 = sub_223662B80;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_223662B80()
{
  v14 = v0;
  v1 = v0[10];
  v2 = v0[5];

  v3 = sub_22372AC88();
  v4 = sub_22372B268();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    sub_223727528();

    v8 = sub_22372B038();
    v10 = sub_223623274(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_223620000, v3, v4, "RemoteIF send message finished.  %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_223662CF4()
{
  v22 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[5];

  v4 = v1;
  v5 = sub_22372AC88();
  v6 = sub_22372B278();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v0[2] = v8;
    sub_223727528();

    v12 = sub_22372B038();
    v14 = sub_223623274(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_223620000, v5, v6, "RemoteIF send message failed. %s. Error: %@", v9, 0x16u);
    sub_223651020(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v17 = v0[12];
  swift_willThrow();
  v18 = v0[12];
  v19 = v0[1];

  return v19();
}

uint64_t sub_223662EF8()
{
  v14 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  v0[3] = __swift_project_value_buffer(v1, qword_28132B668);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v13);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClientTransport Cleanup session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = v0[2];
  v8 = *(v6 + 112);
  v7 = *(v6 + 120);
  ObjectType = swift_getObjectType();
  v10 = *(MEMORY[0x277D5DF70] + 4);
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_2236630C4;

  return MEMORY[0x2821C0300](ObjectType, v7);
}

uint64_t sub_2236630C4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_2236631F8, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2236631F8()
{
  v11 = v0;
  v1 = v0[3];
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v10);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClientTransport Cleanup session failed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_223663338()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_223663394(uint64_t a1, uint64_t a2)
{
  result = sub_223663464(&qword_27D08EB28, a2, type metadata accessor for RemoteIFClientTransport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2236633EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB38, &qword_22372D8F8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D08EB40;
    v3 = &unk_22372D900;
  }

  else
  {
    v2 = &qword_27D08EB48;
    v3 = qword_2237329D0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_223663464(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CurareBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = sub_22372AC98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a3;
  sub_223623934(a3, v30);
  sub_223623934(a6, v29);
  v28[3] = &type metadata for DefaultFeatureStoreService;
  v28[4] = &off_2836C4B68;
  v15 = type metadata accessor for CurareBridge();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_223623934(v28, v18 + qword_28132A128);
  sub_223623934(v30, v27);
  sub_223623934(v29, v26);
  v19 = qword_281328E78;
  swift_unknownObjectRetain();
  v20 = a5;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v9, qword_28132B6B0);
  (*(v10 + 16))(v14, v21, v9);
  v22 = sub_22372A9A8();
  sub_223729DC8();

  sub_22372A938();
  sub_223728DF8();
  sub_22372A938();
  sub_223729188();
  sub_22372A938();
  sub_223728F88();
  sub_22372A938();
  sub_2237292E8();
  sub_22372A938();
  sub_2237298B8();
  sub_22372A938();
  sub_223728CE8();
  sub_22372A938();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v22;
}

uint64_t type metadata accessor for CurareBridge()
{
  result = qword_28132A118;
  if (!qword_28132A118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223663880(void *a1)
{
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223729D58();
  v8 = sub_2237273B8();
  v10 = v9;
  (*(v3 + 8))(v7, v2);
  v11 = sub_223729D38();
  sub_223664C70(v8, v10, v11, v12);

  sub_223664970(a1);
}

void sub_223663A28(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = sub_223729D38();
  sub_223664CAC(v4, v6, v7, v8);

  sub_223664970(a1);
}

void sub_223663B84(uint64_t a1)
{
  v77 = sub_223727408();
  v76 = *(v77 - 8);
  v2 = *(v76 + 64);
  MEMORY[0x28223BE20](v77, v3);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22368F548(MEMORY[0x277D84F90]);
  v81 = a1;
  v6 = sub_2237298A8();
  v7 = 0;
  v9 = v6 + 64;
  v8 = *(v6 + 64);
  v80 = v6;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v79 = v13;
  while (v12)
  {
    v14 = v7;
LABEL_11:
    v15 = (v80[6] + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_2237298A8();
    if (*(v18 + 16) && (v19 = sub_2236261A0(v17, v16), (v20 & 1) != 0))
    {
      v78 = v16;
      v21 = *(*(v18 + 56) + 8 * v19);

      v22 = sub_223728C58();

      v23 = *(v22 + 16);
      if (v23)
      {
        v71 = v17;
        v72 = v9;
        v73 = v5;
        v87 = MEMORY[0x277D84F90];
        sub_22372B4F8();
        v24 = v22 + 32;
        do
        {
          sub_2236665CC(v24, v82);
          sub_2236665CC(v82, &v85);
          v25 = v85;
          v83 = v85;
          sub_2236241E8(&v86, &v84);
          v26 = v25;
          sub_22366663C(&v83);
          sub_22366663C(v82);
          sub_22372B4D8();
          v27 = *(v87 + 16);
          sub_22372B508();
          sub_22372B518();
          sub_22372B4E8();
          v24 += 48;
          --v23;
        }

        while (v23);

        v28 = v87;
        v5 = v73;
        v9 = v72;
        v16 = v78;
        v17 = v71;
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
        v16 = v78;
      }
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v29 = sub_2236666A4(v28);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v5;
    v31 = v17;
    v32 = v17;
    v33 = v16;
    v34 = sub_2236261A0(v32, v16);
    v36 = v5[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_28;
    }

    v40 = v35;
    if (v5[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = v34;
        sub_22365EE5C();
        v34 = v45;
      }
    }

    else
    {
      sub_22368C148(v39, isUniquelyReferenced_nonNull_native);
      v34 = sub_2236261A0(v31, v33);
      if ((v40 & 1) != (v41 & 1))
      {
        sub_22372B708();
        __break(1u);
        return;
      }
    }

    v12 &= v12 - 1;
    v5 = v82[0];
    if (v40)
    {
      v42 = v82[0][7];
      v43 = v82[0];
      v44 = *(v42 + 8 * v34);
      *(v42 + 8 * v34) = v29;

      v5 = v43;
    }

    else
    {
      sub_22368E7E8(v34, v31, v33, v29, v82[0]);
    }

    v7 = v14;
    v13 = v79;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14);
    ++v7;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v46 = *(v74 + qword_28132A128 + 24);
  v47 = *(v74 + qword_28132A128 + 32);
  v80 = __swift_project_boxed_opaque_existential_1((v74 + qword_28132A128), v46);
  v14 = v81;
  v79 = sub_223728CF8();
  v49 = v48;
  v50 = v75;
  sub_223729D58();
  v51 = sub_2237273B8();
  v53 = v52;
  (*(v76 + 8))(v50, v77);
  v54 = sub_223729D38();
  v56 = v55;
  v57 = sub_223728CF8();
  v82[0] = v5;
  v82[1] = v51;
  v82[2] = v53;
  v82[3] = v54;
  v82[4] = v56;
  v82[5] = v57;
  v82[6] = v58;
  v59 = *(v47 + 8);
  v60 = sub_2236668D0();
  v61 = sub_223666924();
  v59(v79, v49, v82, &type metadata for SerializedMultiUserTRPMessage, v60, v61, v46, v47);

  if (qword_281328E78 != -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  v62 = sub_22372AC98();
  __swift_project_value_buffer(v62, qword_28132B6B0);
  v63 = v14;
  v64 = sub_22372AC88();
  v65 = sub_22372B268();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v82[0] = v67;
    *v66 = 136315138;
    swift_getObjectType();
    v68 = sub_22372B818();
    v70 = sub_223623274(v68, v69, v82);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_223620000, v64, v65, "Logged ASROutput from %s to FeatureStore", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x223DE8A80](v67, -1, -1);
    MEMORY[0x223DE8A80](v66, -1, -1);
  }
}

void sub_2236641F4(void *a1)
{
  v3 = sub_223727408();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223728C58();
  v9 = *(v8 + 16);
  if (v9)
  {
    v41 = v3;
    v42 = a1;
    v49 = MEMORY[0x277D84F90];
    sub_22372B4F8();
    v10 = v8 + 32;
    do
    {
      sub_2236665CC(v10, v44);
      sub_2236665CC(v44, &v47);
      v11 = v47;
      v45 = v47;
      sub_2236241E8(&v48, &v46);
      v12 = v11;
      sub_22366663C(&v45);
      sub_22366663C(v44);
      sub_22372B4D8();
      v13 = *(v49 + 16);
      sub_22372B508();
      sub_22372B518();
      sub_22372B4E8();
      v10 += 48;
      --v9;
    }

    while (v9);

    v14 = v49;
    a1 = v42;
    v3 = v41;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v1 + qword_28132A128 + 24);
  v16 = *(v1 + qword_28132A128 + 32);
  v42 = __swift_project_boxed_opaque_existential_1((v1 + qword_28132A128), v15);
  v41 = sub_223728CF8();
  v18 = v17;
  v19 = sub_2236666A4(v14);

  sub_223729D58();
  v20 = sub_2237273B8();
  v22 = v21;
  (*(v43 + 8))(v7, v3);
  v23 = sub_223729D38();
  v24 = a1;
  v26 = v25;
  v27 = sub_223728CF8();
  v44[0] = v19;
  v44[1] = v20;
  v44[2] = v22;
  v44[3] = v23;
  v44[4] = v26;
  v44[5] = v27;
  v44[6] = v28;
  v29 = *(v16 + 8);
  v30 = sub_223666828();
  v31 = sub_22366687C();
  v29(v41, v18, v44, &type metadata for SerializedTRPMessage, v30, v31, v15, v16);

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v32 = sub_22372AC98();
  __swift_project_value_buffer(v32, qword_28132B6B0);
  v33 = v24;
  v34 = sub_22372AC88();
  v35 = sub_22372B268();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v36 = 136315138;
    swift_getObjectType();
    v38 = sub_22372B818();
    v40 = sub_223623274(v38, v39, v44);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_223620000, v34, v35, "Logged ASROutput from %s to FeatureStore", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x223DE8A80](v37, -1, -1);
    MEMORY[0x223DE8A80](v36, -1, -1);
  }
}

void sub_2236645F4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = sub_22372B028();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = *a1;
  v8 = [v7 speechPackage];
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  v10 = [v8 dictionaryRepresentation];

  if (v10)
  {
    sub_22372AF58();

    v11 = objc_opt_self();
    v12 = sub_22372AF48();

    v35 = 0;
    v13 = [v11 dataWithJSONObject:v12 options:0 error:&v35];

    v14 = v35;
    if (v13)
    {
      v15 = sub_223727358();
      v17 = v16;

      sub_22372B018();
      v18 = sub_22372AFF8();
      v20 = v19;
      sub_223661270(v15, v17);
      if (v20)
      {
LABEL_14:
        *a2 = v18;
        a2[1] = v20;
        v34 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      v21 = v14;
      v22 = sub_2237272F8();

      swift_willThrow();
    }
  }

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v23 = sub_22372AC98();
  __swift_project_value_buffer(v23, qword_28132B6B0);
  v24 = v7;
  v25 = sub_22372AC88();
  v26 = sub_22372B278();
  if (!os_log_type_enabled(v25, v26))
  {

    goto LABEL_13;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v35 = v28;
  *v27 = 136315138;
  v29 = [v24 tcuId];

  if (v29)
  {
    v30 = sub_22372AFE8();
    v32 = v31;

    v33 = sub_223623274(v30, v32, &v35);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_223620000, v25, v26, "Failed to convert TCU to JSON, tcuId: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x223DE8A80](v28, -1, -1);
    MEMORY[0x223DE8A80](v27, -1, -1);
LABEL_13:

    v18 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_223664970(void *a1)
{
  v2 = v1;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223729D48();
  if (swift_dynamicCastClass())
  {
    v10 = a1;
    v11 = sub_223729D38();
    v13 = v12;
  }

  else
  {
    sub_223729DB8();
    v11 = sub_2237273B8();
    v13 = v14;
    (*(v5 + 8))(v9, v4);
  }

  v15 = (v2 + qword_28132A128);
  v16 = *(v2 + qword_28132A128 + 24);
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v32 = a1;
  v18 = *(v17 + 8);
  v19 = sub_223729DC8();
  v20 = sub_2236242F4(&qword_28132B558);
  v21 = sub_2236242F4(&qword_28132B560);
  v18(v11, v13, &v32, v19, v20, v21, v16, v17);

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v22 = sub_22372AC98();
  __swift_project_value_buffer(v22, qword_28132B6B0);
  v23 = a1;
  v24 = sub_22372AC88();
  v25 = sub_22372B268();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    swift_getObjectType();
    v28 = sub_22372B818();
    v30 = sub_223623274(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_223620000, v24, v25, "Logged %s to FeatureStore", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x223DE8A80](v27, -1, -1);
    MEMORY[0x223DE8A80](v26, -1, -1);
  }
}

void sub_223664CE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, const char *a8)
{
  v16 = *(v8 + qword_28132A128 + 24);
  v15 = *(v8 + qword_28132A128 + 32);
  __swift_project_boxed_opaque_existential_1((v8 + qword_28132A128), v16);
  v29[0] = a1;
  v29[1] = a2;
  v26 = a3;
  v29[2] = a3;
  v29[3] = a4;
  v17 = *(v15 + 8);
  v18 = a5();
  v19 = a6();

  v25 = a1;
  v17(a1, a2, v29, a7, v18, v19, v16, v15);

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v20 = sub_22372AC98();
  __swift_project_value_buffer(v20, qword_28132B6B0);

  v21 = sub_22372AC88();
  v22 = sub_22372B268();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_223623274(v25, a2, v29);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_223623274(v26, a4, v29);
    _os_log_impl(&dword_223620000, v21, v22, a8, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v24, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }
}

uint64_t CurareBridge.deinit()
{
  v0 = sub_22372A998();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A128));
  return v0;
}

uint64_t CurareBridge.__deallocating_deinit()
{
  v0 = sub_22372A998();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A128));

  return swift_deallocClassInstance();
}

uint64_t SiriOrchestrationRootToChildRequestIdLink.rootRequestId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriOrchestrationRootToChildRequestIdLink.childRequestId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_223665064()
{
  if (*v0)
  {
    result = 0x716552646C696863;
  }

  else
  {
    result = 0x75716552746F6F72;
  }

  *v0;
  return result;
}

uint64_t sub_2236650B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x716552646C696863 && a2 == 0xEE00644974736575)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_2236651A4(uint64_t a1)
{
  v2 = sub_223665260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236651E0(uint64_t a1)
{
  v2 = sub_223665260();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_223665260()
{
  result = qword_28132B4C0;
  if (!qword_28132B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B4C0);
  }

  return result;
}

uint64_t sub_223665328()
{
  if (*v0)
  {
    result = 0x75716552746F6F72;
  }

  else
  {
    result = 0x496E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_223665374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_223665460(uint64_t a1)
{
  v2 = sub_2236656B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22366549C(uint64_t a1)
{
  v2 = sub_2236656B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22366551C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v17 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v17[1] = v4[3];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  sub_22372B7E8();
  v22 = 0;
  v15 = v19;
  sub_22372B688();
  if (!v15)
  {
    v21 = 1;
    sub_22372B688();
  }

  return (*(v20 + 8))(v10, v6);
}

unint64_t sub_2236656B8()
{
  result = qword_28132B498;
  if (!qword_28132B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B498);
  }

  return result;
}

uint64_t sub_223665750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22372B7D8();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = v25;
  v15 = v26;
  v28 = 0;
  v16 = sub_22372B628();
  v18 = v17;
  v24 = v16;
  v27 = 1;
  v19 = sub_22372B628();
  v21 = v20;
  (*(v14 + 8))(v12, v8);
  *v15 = v24;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v21;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_223665954(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBD0, &qword_22372DE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236674D4();
  sub_22372B7E8();
  v20 = *v3;
  v19[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBC0, &qword_22372DE68);
  sub_2236675D4();
  sub_22372B6A8();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v19[6] = 1;
  sub_22372B688();
  v14 = v3[3];
  v15 = v3[4];
  v19[5] = 2;
  sub_22372B688();
  v17 = v3[5];
  v18 = v3[6];
  v19[4] = 3;
  sub_22372B688();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_223665B40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBA8, &qword_22372DE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223667414();
  sub_22372B7E8();
  v20 = *v3;
  v19[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  sub_223667468(&unk_281328DD0);
  sub_22372B6A8();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v19[6] = 1;
  sub_22372B688();
  v14 = v3[3];
  v15 = v3[4];
  v19[5] = 2;
  sub_22372B688();
  v17 = v3[5];
  v18 = v3[6];
  v19[4] = 3;
  sub_22372B688();
  return (*(v6 + 8))(v10, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_223665E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223665E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223665EE8()
{
  result = qword_27D08EB70;
  if (!qword_27D08EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EB70);
  }

  return result;
}

unint64_t sub_223665F40()
{
  result = qword_27D08EB78;
  if (!qword_27D08EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EB78);
  }

  return result;
}

unint64_t sub_223665F98()
{
  result = qword_28132B488;
  if (!qword_28132B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B488);
  }

  return result;
}

unint64_t sub_223665FF0()
{
  result = qword_28132B490;
  if (!qword_28132B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B490);
  }

  return result;
}

unint64_t sub_223666048()
{
  result = qword_28132B4B0;
  if (!qword_28132B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B4B0);
  }

  return result;
}

unint64_t sub_2236660A0()
{
  result = qword_28132B4B8;
  if (!qword_28132B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B4B8);
  }

  return result;
}

unint64_t sub_2236660F4()
{
  v1 = 0x496E6F6973736573;
  v2 = 0x4974736575716572;
  if (*v0 != 2)
  {
    v2 = 0x6449707274;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_223666170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223666ACC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223666198(uint64_t a1)
{
  v2 = sub_2236674D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236661D4(uint64_t a1)
{
  v2 = sub_2236674D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223666254()
{
  v1 = 0x7473694C756374;
  v2 = 0x4974736575716572;
  if (*v0 != 2)
  {
    v2 = 0x6449707274;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2236662D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223666F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2236662FC(uint64_t a1)
{
  v2 = sub_223667414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223666338(uint64_t a1)
{
  v2 = sub_223667414();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2236663A0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_22366647C()
{
  result = qword_28132B4A0;
  if (!qword_28132B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B4A0);
  }

  return result;
}

unint64_t sub_2236664D0()
{
  result = qword_28132B4A8;
  if (!qword_28132B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B4A8);
  }

  return result;
}

unint64_t sub_223666524()
{
  result = qword_28132B478;
  if (!qword_28132B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B478);
  }

  return result;
}

unint64_t sub_223666578()
{
  result = qword_28132B480;
  if (!qword_28132B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B480);
  }

  return result;
}

uint64_t sub_2236665CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7B0, &qword_22372DD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22366663C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7B0, &qword_22372DD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2236666A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22372B558())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DE7ED0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v17 = v6;
      sub_2236645F4(&v17, &v15);

      v9 = v16;
      if (v16)
      {
        v10 = i;
        v11 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_223637D3C(0, *(v4 + 2) + 1, 1, v4);
        }

        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        if (v13 >= v12 >> 1)
        {
          v4 = sub_223637D3C((v12 > 1), v13 + 1, 1, v4);
        }

        *(v4 + 2) = v13 + 1;
        v5 = &v4[16 * v13];
        *(v5 + 4) = v11;
        *(v5 + 5) = v9;
        i = v10;
      }

      ++v3;
      if (v8 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_223666828()
{
  result = qword_2813296D0;
  if (!qword_2813296D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813296D0);
  }

  return result;
}

unint64_t sub_22366687C()
{
  result = qword_2813296D8;
  if (!qword_2813296D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813296D8);
  }

  return result;
}

unint64_t sub_2236668D0()
{
  result = qword_27D08EB80;
  if (!qword_27D08EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EB80);
  }

  return result;
}

unint64_t sub_223666924()
{
  result = qword_27D08EB88;
  if (!qword_27D08EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EB88);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_223666A28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223666A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223666ACC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x8000000223734BF0 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449707274 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_22372B6E8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_223666C48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBB0, &qword_22372DE60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236674D4();
  sub_22372B7D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBC0, &qword_22372DE68);
  v34 = 0;
  sub_223667528();
  sub_22372B648();
  v12 = v35;
  v33 = 1;
  v13 = sub_22372B628();
  v30 = v14;
  v28 = v13;
  v32 = 2;
  v27 = sub_22372B628();
  v29 = v15;
  v31 = 3;
  v16 = sub_22372B628();
  v18 = v17;
  v19 = *(v6 + 8);
  v26 = v16;
  v19(v10, v5);

  v20 = v30;

  v21 = v29;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  v23 = v27;
  v24 = v28;
  *a2 = v12;
  a2[1] = v24;
  a2[2] = v20;
  a2[3] = v23;
  v25 = v26;
  a2[4] = v21;
  a2[5] = v25;
  a2[6] = v18;
  return result;
}

uint64_t sub_223666F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473694C756374 && a2 == 0xE700000000000000;
  if (v4 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449707274 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22372B6E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2236670D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB90, &qword_22372DE48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223667414();
  sub_22372B7D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  v34 = 0;
  sub_223667468(&qword_27D08EBA0);
  sub_22372B648();
  v30 = a2;
  v12 = v35;
  v33 = 1;
  v13 = sub_22372B628();
  v15 = v14;
  v28 = v13;
  v32 = 2;
  v27 = sub_22372B628();
  v29 = v16;
  v31 = 3;
  v17 = sub_22372B628();
  v19 = v18;
  v20 = v17;
  (*(v6 + 8))(v10, v5);

  v21 = v29;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  v23 = v30;
  v24 = v27;
  v25 = v28;
  *v30 = v12;
  v23[1] = v25;
  v23[2] = v15;
  v23[3] = v24;
  v23[4] = v21;
  v23[5] = v20;
  v23[6] = v19;
  return result;
}

unint64_t sub_223667414()
{
  result = qword_2813296F0;
  if (!qword_2813296F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813296F0);
  }

  return result;
}

uint64_t sub_223667468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EB98, &qword_22372DE50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2236674D4()
{
  result = qword_27D08EBB8;
  if (!qword_27D08EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EBB8);
  }

  return result;
}

unint64_t sub_223667528()
{
  result = qword_27D08EBC8;
  if (!qword_27D08EBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EBC0, &qword_22372DE68);
    sub_223667468(&qword_27D08EBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EBC8);
  }

  return result;
}

unint64_t sub_2236675D4()
{
  result = qword_27D08EBD8;
  if (!qword_27D08EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EBC0, &qword_22372DE68);
    sub_223667468(&unk_281328DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EBD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MUXCandidateContextState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MUXCandidateContextState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2236677E4()
{
  result = qword_27D08EBE0;
  if (!qword_27D08EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EBE0);
  }

  return result;
}

unint64_t sub_22366783C()
{
  result = qword_27D08EBE8;
  if (!qword_27D08EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EBE8);
  }

  return result;
}

unint64_t sub_223667894()
{
  result = qword_27D08EBF0;
  if (!qword_27D08EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EBF0);
  }

  return result;
}

unint64_t sub_2236678EC()
{
  result = qword_27D08EBF8;
  if (!qword_27D08EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EBF8);
  }

  return result;
}

unint64_t sub_223667944()
{
  result = qword_2813296E0;
  if (!qword_2813296E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813296E0);
  }

  return result;
}

unint64_t sub_22366799C()
{
  result = qword_2813296E8;
  if (!qword_2813296E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813296E8);
  }

  return result;
}

uint64_t sub_223667A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_223634890(a3, v28 - v12, &qword_27D08F640, &unk_22372D770);
  v14 = sub_22372B1A8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_223626478(v13, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22372B168();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22372B058() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_223667D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_223634890(a3, v28 - v12, &qword_27D08F640, &unk_22372D770);
  v14 = sub_22372B1A8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_223626478(v13, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22372B168();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22372B058() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_22366804C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

uint64_t sub_2236680AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 112);
}

uint64_t sub_2236680F4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
}

uint64_t IntelligenceFlowSessionController.deinit()
{
  swift_beginAccess();
  if (*(v0 + 112))
  {
    type metadata accessor for SessionClientBox(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_22372B1B8();

    v1 = *(v0 + 112);
  }

  sub_223626478(v0 + 120, &qword_27D08EC00, &unk_22372E0B8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  sub_2236682C0(v0 + 200);
  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
  v3 = sub_22372AC98();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t IntelligenceFlowSessionController.__deallocating_deinit()
{
  swift_beginAccess();
  if (*(v0 + 112))
  {
    type metadata accessor for SessionClientBox(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_22372B1B8();

    v1 = *(v0 + 112);
  }

  sub_223626478(v0 + 120, &qword_27D08EC00, &unk_22372E0B8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  sub_2236682C0(v0 + 200);
  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
  v3 = sub_22372AC98();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t IntelligenceFlowSessionController.__allocating_init<A, B>(clientProvider:delegate:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  v17 = sub_22366E488(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v17;
}

uint64_t IntelligenceFlowSessionController.init<A, B>(clientProvider:delegate:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_22366E488(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

void sub_2236684C8(uint64_t a1)
{
  swift_beginAccess();
  sub_223634890(v1 + 120, v8, &qword_27D08EC00, &unk_22372E0B8);
  v3 = v8[3];
  sub_223626478(v8, &qword_27D08EC00, &unk_22372E0B8);
  if (v3)
  {
    v4 = sub_22372AC88();
    v5 = sub_22372B278();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_223623274(0xD000000000000022, 0x8000000223734C10, v8);
      _os_log_impl(&dword_223620000, v4, v5, "%{public}s Conversation session is already in progress. This situation should not be possible", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x223DE8A80](v7, -1, -1);
      MEMORY[0x223DE8A80](v6, -1, -1);
    }
  }

  else
  {
    sub_223623934(a1, v8);
    swift_beginAccess();
    sub_22366E58C(v8, v1 + 120);
    swift_endAccess();
  }
}

uint64_t sub_223668658()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  sub_22366E58C(v2, v0 + 120);
  return swift_endAccess();
}

uint64_t sub_2236686A8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236686C8, v1, 0);
}

uint64_t sub_2236686C8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (v2)
  {
    *(v1 + 112) = 0;
    type metadata accessor for SessionClientBox(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_22372B1B8();
  }

  **(v0 + 40) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_223668784()
{
  v1 = v0[32];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  sub_223623934(v1 + 16, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v3 + 16))(v2, v1 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v4);
  v7 = *(v6 + 32);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_223668904;
  v10 = v0[20];

  return v12(v10, v5, v6);
}

uint64_t sub_223668904()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 272) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 136);
  if (v0)
  {
    v9 = sub_223669024;
  }

  else
  {
    v9 = sub_223668E60;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_223668A8C()
{
  v39 = v0;
  v1 = v0[23];
  sub_22366E5FC(v0[27], v0[28]);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = v0[17] + OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
    v3 = sub_22372AC88();
    v4 = sub_22372B268();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[29];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v38 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v38);
      _os_log_impl(&dword_223620000, v3, v4, "%{public}s Intelligence Flow session creation was canceled, nothing to end", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x223DE8A80](v8, -1, -1);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[17];
    sub_22366FCFC(v0[28], v10, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    sub_22366FCFC(v10, v9, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v12 = sub_22372AC88();
    v13 = sub_22372B268();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[35];
      v15 = v0[29];
      v16 = v0[24];
      v37 = v0[25];
      v17 = v0[23];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v38);
      *(v18 + 12) = 2082;
      v20 = sub_22372B738();
      v22 = v21;
      sub_223640240(v16, type metadata accessor for IntelligenceFlowSessionBridge.Error);
      v23 = sub_223623274(v20, v22, &v38);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_223620000, v12, v13, "%{public}s Can not end Intelligence Flow session because it's creation has failed with error %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);

      v24 = v37;
    }

    else
    {
      v25 = v0[29];
      v27 = v0[24];
      v26 = v0[25];

      sub_223640240(v27, type metadata accessor for IntelligenceFlowSessionBridge.Error);
      v24 = v26;
    }

    sub_223640240(v24, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  }

  sub_223640240(v0[28], type metadata accessor for IntelligenceFlowSessionBridge.Error);
  v29 = v0[27];
  v28 = v0[28];
  v31 = v0[25];
  v30 = v0[26];
  v32 = v0[24];
  v33 = v0[22];
  v34 = v0[20];

  v35 = v0[1];

  return v35();
}

uint64_t sub_223668E60()
{
  v20 = v0;
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  v6 = v0[29];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v19);
    _os_log_impl(&dword_223620000, v2, v3, "%{public}s Ended Intelligence Flow session", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  else
  {
    v9 = v0[32];
  }

  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  v15 = v0[22];
  v16 = v0[20];

  v17 = v0[1];

  return v17();
}

uint64_t sub_223669024()
{
  v30 = v0;
  v1 = v0[34];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[34];
    v7 = v0[32];
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v29);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[12];
    v14 = sub_22372B738();
    v16 = sub_223623274(v14, v15, &v29);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_223620000, v4, v5, "%{public}s Call to end Intelligence Flow session failed with error %{public}s. Just cleaning the state", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  else
  {
    v17 = v0[34];
    v18 = v0[32];
    v19 = v0[29];
  }

  v21 = v0[27];
  v20 = v0[28];
  v23 = v0[25];
  v22 = v0[26];
  v24 = v0[24];
  v25 = v0[22];
  v26 = v0[20];

  v27 = v0[1];

  return v27();
}

uint64_t sub_223669270()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v10 = *v1;
  v2[50] = v0;

  v7 = *(v5 + 8);
  v2[51] = v7;
  v2[52] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_223669958;
  }

  else
  {
    v8 = sub_2236693F4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2236693F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[32];
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  swift_storeEnumTagMultiPayload();
  sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  swift_willThrowTypedImpl();

  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2236694F8()
{
  v37 = v0;
  v1 = *(v0 + 336);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 336);
  v5 = *(v0 + 240);
  if (v3)
  {

    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    sub_22366FD64(v6, v7, v8);
    v9 = sub_22372AC88();
    v10 = sub_22372B278();
    sub_223661204(v6, v7, v8);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223734D60, &v36);
      *(v11 + 12) = 2082;
      *(v0 + 176) = v6;
      *(v0 + 184) = v7;
      *(v0 + 192) = v8;
      sub_22366FD7C();
      v13 = sub_22372B738();
      v15 = sub_223623274(v13, v14, &v36);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_223620000, v9, v10, "%{public}s Failed to start Remote Intelligence Session with error: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v12, -1, -1);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }

    v16 = *(v0 + 312);
    v17 = *(v0 + 256);
    *v17 = v6;
    *(v17 + 8) = v7;
    *(v17 + 16) = v8;
    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
  }

  else
  {

    v18 = v4;
    v19 = sub_22372AC88();
    v20 = sub_22372B278();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 336);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223734D60, &v36);
      *(v22 + 12) = 2082;
      swift_getErrorValue();
      v25 = *(v0 + 104);
      v24 = *(v0 + 112);
      v26 = *(v0 + 120);
      v27 = sub_22372B738();
      v29 = sub_223623274(v27, v28, &v36);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_223620000, v19, v20, "%{public}s Failed to start Intelligence Flow Session with error: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v23, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }

    v30 = *(v0 + 312);
    **(v0 + 256) = *(v0 + 336);
    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
  }

  v32 = *(v0 + 288);
  v31 = *(v0 + 296);
  v33 = *(v0 + 280);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_223669958()
{
  v38 = v0;
  v1 = v0[50];
  v2 = v0[41];
  v3 = v0[30];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v1;
  v5 = sub_22372AC88();
  v6 = sub_22372B278();

  if (os_log_type_enabled(v5, v6))
  {
    v33 = v0[51];
    v34 = v0[52];
    v35 = v0[50];
    v8 = v0[47];
    v7 = v0[48];
    v9 = v0[46];
    v10 = v0[41];
    v11 = v0[35];
    v12 = v0[33];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136446722;
    *(v13 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223734D60, &v37);
    *(v13 + 12) = 2080;
    v8(v11, v10 + v9, v12);
    sub_22366FDD0(&qword_28132B600, MEMORY[0x277CC95F0]);
    v14 = sub_22372B6B8();
    v16 = v15;
    v33(v11, v12);
    v17 = sub_223623274(v14, v16, &v37);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    swift_getErrorValue();
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[18];
    v21 = sub_22372B738();
    v23 = sub_223623274(v21, v22, &v37);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_223620000, v5, v6, "%{public}s Intelligence Flow session with id %s refused to end with error: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v36, -1, -1);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  else
  {
    v24 = v0[50];
  }

  v25 = v0[41];
  v26 = v0[39];
  v27 = v0[32];
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  swift_storeEnumTagMultiPayload();
  sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  swift_willThrowTypedImpl();

  v29 = v0[36];
  v28 = v0[37];
  v30 = v0[35];

  v31 = v0[1];

  return v31();
}

uint64_t sub_223669C88(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[10] = a2;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC08, &qword_22372E0D0);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v3[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223669D68, v2, 0);
}

uint64_t sub_223669D68()
{
  v19 = v0;
  v1 = v0[9];
  swift_beginAccess();
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v10 = v0[15];
    v11 = v0[9];
    sub_223624734(v0[8], &v18);
    v2 = v18;
    v16 = *(v1 + 112);
    *(v1 + 112) = v18;
  }

  v0[16] = v2;

  if (sub_22372B1D8())
  {
    v3 = v0[13];
    v4 = v0[10];
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();

    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[12];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v5 = *(MEMORY[0x277D857D0] + 4);
    v6 = swift_task_alloc();
    v0[17] = v6;
    v7 = type metadata accessor for SessionClientBox(0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    v0[18] = v8;
    *v6 = v0;
    v6[1] = sub_223669F84;
    v9 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v0 + 5, v2, v7, v8, v9);
  }
}

uint64_t sub_223669F84()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22366A080, 0, 0);
}

uint64_t sub_22366A080()
{
  v1 = *(v0 + 40);
  if (*(v0 + 48))
  {
    *(v0 + 56) = v1;
    v2 = *(v0 + 144);
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);
    swift_dynamicCast();
  }

  else
  {
    v6 = *(v0 + 88);
    **(v0 + 96) = v1;
  }

  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v0 + 112);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    sub_22366E5FC(v8, v9);
    sub_22366FCFC(v9, v10, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
    sub_223640240(v9, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v12 = sub_22366A3E4;
    v13 = v11;
  }

  else
  {
    v13 = *(v0 + 72);
    *(v0 + 152) = *v8;
    v12 = sub_22366A1FC;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_22366A1FC()
{
  v18 = v0;
  v1 = v0[19];
  v2 = v0[8];
  sub_22372A548();
  sub_22366FDD0(qword_27D08EC10, MEMORY[0x277D5D298]);
  if (sub_22372AFC8())
  {
    v3 = v0[16];
  }

  else
  {
    v4 = v0[9] + OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
    v5 = sub_22372AC88();
    v6 = sub_22372B278();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[16];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_223623274(0xD000000000000016, 0x8000000223734CA0, &v17);
      _os_log_impl(&dword_223620000, v5, v6, "%{public}s XPC requested client session is for the different user from the one create earlier. This is possible in current design but is an opening for a privacy issue if Siri is allowed to interact with multiple users simultaneously", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223DE8A80](v10, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }

  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[12];

  v14 = v0[1];
  v15 = v0[19];

  return v14(v15);
}

uint64_t sub_22366A3E4()
{
  v1 = v0[16];

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22366A464(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22366A504, v2, 0);
}

uint64_t sub_22366A504()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = sub_22372B1A8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v2;
    v7[5] = v5;
    v7[6] = v4;

    sub_223667D54(0, 0, v3, &unk_22372E0F8, v7);
  }

  else
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v8 = sub_22372AC98();
    __swift_project_value_buffer(v8, qword_28132B668);
    v9 = sub_22372AC88();
    v10 = sub_22372B278();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_223620000, v9, v10, "GenAI prewarm is called before client future is created", v11, 2u);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }
  }

  v12 = v0[8];

  v13 = v0[1];

  return v13(v2 != 0);
}

uint64_t sub_22366A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a1;
  v8 = sub_22372AD58();
  v6[27] = v8;
  v9 = *(v8 - 8);
  v6[28] = v9;
  v10 = *(v9 + 64) + 15;
  v6[29] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC98, &qword_22372E380) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v12 = sub_22372AD08();
  v6[31] = v12;
  v13 = *(v12 - 8);
  v6[32] = v13;
  v14 = *(v13 + 64) + 15;
  v6[33] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECA0, &qword_22372E388) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECA8, &qword_22372E390) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v17 = sub_22372ADB8();
  v6[36] = v17;
  v18 = *(v17 - 8);
  v6[37] = v18;
  v19 = *(v18 + 64) + 15;
  v6[38] = swift_task_alloc();
  v20 = sub_223727448();
  v6[39] = v20;
  v21 = *(v20 - 8);
  v6[40] = v21;
  v22 = *(v21 + 64) + 15;
  v6[41] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECB0, &qword_22372E398);
  v6[42] = v23;
  v24 = *(v23 - 8);
  v6[43] = v24;
  v25 = *(v24 + 64) + 15;
  v6[44] = swift_task_alloc();
  v26 = sub_22372AD48();
  v6[45] = v26;
  v27 = *(v26 - 8);
  v6[46] = v27;
  v28 = *(v27 + 64) + 15;
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECB8, &unk_22372E3A0) - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v30 = sub_22372ACE8();
  v6[50] = v30;
  v31 = *(v30 - 8);
  v6[51] = v31;
  v32 = *(v31 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v33 = sub_22372AF38();
  v6[54] = v33;
  v34 = *(v33 - 8);
  v6[55] = v34;
  v35 = *(v34 + 64) + 15;
  v6[56] = swift_task_alloc();
  v36 = sub_22372AF28();
  v6[57] = v36;
  v37 = *(v36 - 8);
  v6[58] = v37;
  v38 = *(v37 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v39 = sub_223727408();
  v6[61] = v39;
  v40 = *(v39 - 8);
  v6[62] = v40;
  v41 = *(v40 + 64) + 15;
  v6[63] = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC08, &qword_22372E0D0);
  v6[64] = v42;
  v43 = *(*(v42 - 8) + 64) + 15;
  v6[65] = swift_task_alloc();
  v44 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v6[66] = v44;
  v45 = *(*(v44 - 8) + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v46 = *(MEMORY[0x277D857D0] + 4);
  v47 = swift_task_alloc();
  v6[69] = v47;
  v48 = type metadata accessor for SessionClientBox(0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  v6[70] = v49;
  *v47 = v6;
  v47[1] = sub_22366AD04;
  v50 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v6 + 20, a4, v48, v49, v50);
}

uint64_t sub_22366AD04()
{
  v1 = *(*v0 + 552);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22366AE00, 0, 0);
}

uint64_t sub_22366AE00()
{
  v1 = *(v0 + 160);
  if (*(v0 + 168))
  {
    *(v0 + 176) = v1;
    v2 = *(v0 + 560);
    v4 = *(v0 + 520);
    v3 = *(v0 + 528);
    v5 = *(v0 + 512);
    swift_dynamicCast();
  }

  else
  {
    v6 = *(v0 + 512);
    **(v0 + 520) = v1;
  }

  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    sub_22366E5FC(v7, v10);
    sub_22366FCFC(v10, v9, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
    sub_223640240(v10, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v12 = swift_allocError();
    sub_22366E5FC(v9, v13);
    if (qword_281328E50 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

  v14 = *(v0 + 496);
  v15 = *(v0 + 504);
  v17 = *(v0 + 480);
  v16 = *(v0 + 488);
  v107 = *(v0 + 472);
  v100 = *(v0 + 464);
  v18 = *(v0 + 448);
  v104 = *(v0 + 456);
  v20 = *(v0 + 432);
  v19 = *(v0 + 440);
  v21 = *v7;
  *(v0 + 568) = *v7;
  (*(v14 + 16))(v15, v21 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v16);
  v22 = sub_2237273B8();
  v24 = sub_22366CBC4(v22, v23);
  v26 = v25;
  sub_22366FDD0(&qword_27D08ECC0, MEMORY[0x277CC5540]);
  sub_22372AF18();
  sub_2236612D0(v24, v26);
  sub_22366E178(v24, v26);
  sub_223661270(v24, v26);
  sub_22372AF08();
  sub_223661270(v24, v26);
  (*(v19 + 8))(v18, v20);
  (*(v100 + 16))(v107, v17, v104);
  sub_22366FDD0(&qword_27D08ECC8, MEMORY[0x277CC5290]);
  sub_22372B0E8();
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v29 = *(v27 + 16);
  if (v28 != v29)
  {
    if ((v28 & 0x8000000000000000) == 0)
    {
      v12 = (v27 + 32);
      v30 = MEMORY[0x277D84F90];
      while (v28 < *(v27 + 16))
      {
        v34 = v12[v28];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECD0, &unk_22372E3B0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_22372E090;
        *(v35 + 56) = MEMORY[0x277D84B78];
        *(v35 + 64) = MEMORY[0x277D84BC0];
        *(v35 + 32) = v34;
        v36 = sub_22372B008();
        v38 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_223637D3C(0, *(v30 + 2) + 1, 1, v30);
        }

        v40 = *(v30 + 2);
        v39 = *(v30 + 3);
        if (v40 >= v39 >> 1)
        {
          v30 = sub_223637D3C((v39 > 1), v40 + 1, 1, v30);
        }

        ++v28;
        *(v30 + 2) = v40 + 1;
        v41 = &v30[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        if (v29 == v28)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_34:
      swift_once();
LABEL_19:
      v51 = sub_22372AC98();
      __swift_project_value_buffer(v51, qword_28132B668);
      v52 = v12;
      v53 = sub_22372AC88();
      v54 = sub_22372B278();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v12;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v58;
        *v56 = v58;
        _os_log_impl(&dword_223620000, v53, v54, "Error during GenAI prewarming: %@", v55, 0xCu);
        sub_223626478(v56, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v56, -1, -1);
        MEMORY[0x223DE8A80](v55, -1, -1);
      }

      else
      {
      }

LABEL_22:
      v59 = *(v0 + 544);
      v60 = *(v0 + 536);
      v61 = *(v0 + 520);
      v62 = *(v0 + 504);
      v64 = *(v0 + 472);
      v63 = *(v0 + 480);
      v65 = *(v0 + 448);
      v67 = *(v0 + 416);
      v66 = *(v0 + 424);
      v68 = *(v0 + 392);
      v91 = *(v0 + 384);
      v93 = *(v0 + 376);
      v94 = *(v0 + 352);
      v95 = *(v0 + 328);
      v97 = *(v0 + 304);
      v99 = *(v0 + 280);
      v102 = *(v0 + 272);
      v106 = *(v0 + 264);
      v109 = *(v0 + 240);
      v110 = *(v0 + 232);
      **(v0 + 192) = 0;

      v69 = *(v0 + 8);

      return v69();
    }

    __break(1u);
    goto LABEL_36;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_8:

  *(v0 + 184) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  sub_223660728(&qword_281328DC8, &qword_27D08EB98, &qword_22372DE50);
  v31 = sub_22372AFA8();
  v33 = v32;

  *(v0 + 576) = v33;
  sub_22372ADE8();
  sub_22372ADD8();
  v101 = *(v0 + 392);
  v105 = v33;
  v43 = *(v0 + 368);
  v42 = *(v0 + 376);
  v44 = *(v0 + 352);
  v108 = *(v0 + 360);
  v46 = *(v0 + 336);
  v45 = *(v0 + 344);
  v92 = v31;
  v96 = *(v0 + 384);
  v98 = *(v0 + 328);
  v47 = *(v0 + 200);
  v48 = *(v0 + 208);
  sub_22372AD18();
  swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  *v44 = v49;
  (*(v45 + 104))(v44, *MEMORY[0x277D721C8], v46);
  sub_22366FDD0(&qword_27D08ECD8, MEMORY[0x277D724B8]);
  sub_223660728(&qword_27D08ECE0, &qword_27D08ECB0, &qword_22372E398);

  sub_22372AE08();

  (*(v45 + 8))(v44, v46);
  v50 = *(v43 + 8);
  v50(v42, v108);
  sub_223727438();
  sub_22372ADC8();
  v71 = *(v0 + 408);
  v103 = *(v0 + 400);
  v72 = *(v0 + 384);
  v73 = *(v0 + 392);
  v74 = *(v0 + 360);
  v75 = *(v0 + 320);
  v76 = *(v0 + 328);
  v77 = *(v0 + 312);

  (*(v75 + 8))(v76, v77);
  v50(v72, v74);
  if ((*(v71 + 48))(v73, 1, v103) == 1)
  {
    v78 = *(v0 + 392);

    sub_223626478(v78, &qword_27D08ECB8, &unk_22372E3A0);
    if (qword_281328E50 == -1)
    {
LABEL_27:
      v79 = sub_22372AC98();
      __swift_project_value_buffer(v79, qword_28132B668);
      v80 = sub_22372AC88();
      v81 = sub_22372B278();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_223620000, v80, v81, "Unable to retrieve genAI tool for prewarming. Performance impact expected.", v82, 2u);
        MEMORY[0x223DE8A80](v82, -1, -1);
      }

      v84 = *(v0 + 496);
      v83 = *(v0 + 504);
      v86 = *(v0 + 480);
      v85 = *(v0 + 488);
      v87 = *(v0 + 456);
      v88 = *(v0 + 464);

      (*(v88 + 8))(v86, v87);
      (*(v84 + 8))(v83, v85);
      goto LABEL_22;
    }

LABEL_36:
    swift_once();
    goto LABEL_27;
  }

  (*(*(v0 + 408) + 32))(*(v0 + 424), *(v0 + 392), *(v0 + 400));
  v89 = *(MEMORY[0x277D727B0] + 4);
  v90 = swift_task_alloc();
  *(v0 + 584) = v90;
  *v90 = v0;
  v90[1] = sub_22366B9A0;

  return MEMORY[0x2821DADB8](v92, v105);
}

uint64_t sub_22366B9A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *v2;
  *(v4 + 592) = a1;
  *(v4 + 600) = v1;

  v7 = *(v3 + 576);

  if (v1)
  {
    v8 = sub_22366C558;
  }

  else
  {
    v8 = sub_22366BAE0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22366BAE0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v58 = *(v0 + 400);
  v60 = *(v0 + 424);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v68 = *(v0 + 288);
  v6 = *(v0 + 272);
  v71 = *(v0 + 264);
  v74 = *(v0 + 600);
  v62 = v4;
  v65 = *(v0 + 240);
  v7 = *MEMORY[0x277D72630];
  v8 = sub_22372AD98();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v7, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = sub_22372AD88();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_22372ADA8();
  (*(v2 + 16))(v1, v60, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECE8, &unk_22372E3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22372E090;
  *(inited + 32) = 0x646E616D6D6F63;
  *(inited + 40) = 0xE700000000000000;
  v12 = sub_22372AE48();
  v13 = swift_allocBox();
  *v14 = 0x70756D726177;
  v14[1] = 0xE600000000000000;
  (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D729B8], v12);
  v15 = sub_22372AE58();
  v16 = MEMORY[0x277D72A68];
  *(inited + 72) = v15;
  *(inited + 80) = v16;
  *__swift_allocate_boxed_opaque_existential_1((inited + 48)) = v13;
  v17 = *MEMORY[0x277D72A58];
  (*(*(v15 - 8) + 104))();
  sub_22368F55C(inited);
  swift_setDeallocating();
  sub_223626478(inited + 32, &qword_27D08ECF0, &unk_22372FBE0);
  (*(v3 + 16))(v65, v62, v68);
  (*(v3 + 56))(v65, 0, 1, v68);
  sub_22372ACF8();
  if (v74)
  {
    v18 = *(v0 + 592);
    v19 = *(v0 + 568);
    v20 = *(v0 + 496);
    v72 = *(v0 + 504);
    v66 = *(v0 + 480);
    v69 = *(v0 + 488);
    v21 = *(v0 + 464);
    v63 = *(v0 + 456);
    v22 = *(v0 + 424);
    v24 = *(v0 + 400);
    v23 = *(v0 + 408);
    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    v27 = *(v0 + 288);
    swift_unknownObjectRelease();

    (*(v25 + 8))(v26, v27);
    (*(v23 + 8))(v22, v24);
    (*(v21 + 8))(v66, v63);
    (*(v20 + 8))(v72, v69);
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v28 = sub_22372AC98();
    __swift_project_value_buffer(v28, qword_28132B668);
    v29 = v74;
    v30 = sub_22372AC88();
    v31 = sub_22372B278();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v74;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_223620000, v30, v31, "Error during GenAI prewarming: %@", v32, 0xCu);
      sub_223626478(v33, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v33, -1, -1);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    else
    {
    }

    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    v45 = *(v0 + 520);
    v46 = *(v0 + 504);
    v48 = *(v0 + 472);
    v47 = *(v0 + 480);
    v49 = *(v0 + 448);
    v51 = *(v0 + 416);
    v50 = *(v0 + 424);
    v52 = *(v0 + 392);
    v55 = *(v0 + 384);
    v56 = *(v0 + 376);
    v57 = *(v0 + 352);
    v59 = *(v0 + 328);
    v61 = *(v0 + 304);
    v64 = *(v0 + 280);
    v67 = *(v0 + 272);
    v70 = *(v0 + 264);
    v73 = *(v0 + 240);
    v75 = *(v0 + 232);
    **(v0 + 192) = 0;

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    *(v0 + 136) = 0;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECF8, &qword_22372E400);
    *(v0 + 608) = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *(v0 + 616) = OpaqueTypeConformance2;
    v38 = *(MEMORY[0x277D72518] + 4);
    v39 = swift_task_alloc();
    *(v0 + 624) = v39;
    *v39 = v0;
    v39[1] = sub_22366C1BC;
    v40 = *(v0 + 592);
    v41 = *(v0 + 264);
    v42 = *(v0 + 232);

    return MEMORY[0x2821DAA58](v42, v41, v0 + 104, v36, OpaqueTypeConformance2);
  }
}