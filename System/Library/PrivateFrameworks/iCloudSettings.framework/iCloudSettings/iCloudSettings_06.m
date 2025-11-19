uint64_t sub_2758E0A60()
{
  v1 = v0[65];
  v2 = v0[62];
  swift_willThrow();

  v3 = v0[65];
  v4 = v0[57];
  v5 = v0[41];
  if (*(v5 + v4))
  {
    v7 = v0[60];
    v6 = v0[61];
    v8 = v0[54];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v5;
    *(v9 + 24) = 0;
    v0[40] = v5;
    sub_2759B8628();
  }

  else
  {
    v10 = v0[54];

    *(v5 + v4) = 0;
  }

  v11 = v0[58];
  v12 = v3;
  v13 = sub_2759B8988();
  v14 = sub_2759BA648();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[62];
  v17 = v0[59];
  v18 = v0[49];
  v19 = v0[45];
  v20 = v0[46];
  if (v15)
  {
    v35 = v0[49];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v3;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_275819000, v13, v14, "ADP loadRemoteUIForEnablingWebAccessState: error: %@", v21, 0xCu);
    sub_27586BF04(v22, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v22, -1, -1);
    v25 = v21;
    v18 = v35;
    MEMORY[0x277C85860](v25, -1, -1);
  }

  (*(v20 + 8))(v18, v19);
  v26 = v0[52];
  v28 = v0[50];
  v27 = v0[51];
  v30 = v0[48];
  v29 = v0[49];
  v31 = v0[47];
  v32 = v0[44];
  sub_27586BF04(v0[53], &unk_280A0EB10, &qword_2759C0740);

  v33 = v0[1];

  return v33();
}

uint64_t sub_2758E0D14()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v7 = v0[69];
  v8 = v0[57];
  v9 = v0[41];
  if (*(v9 + v8))
  {
    v11 = v0[60];
    v10 = v0[61];
    v12 = v0[54];
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    v0[40] = v9;
    sub_2759B8628();
  }

  else
  {
    v14 = v0[54];

    *(v9 + v8) = 0;
  }

  v15 = v0[58];
  v16 = v7;
  v17 = sub_2759B8988();
  v18 = sub_2759BA648();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[62];
  v21 = v0[59];
  v22 = v0[49];
  v23 = v0[45];
  v24 = v0[46];
  if (v19)
  {
    v39 = v0[49];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v7;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_275819000, v17, v18, "ADP loadRemoteUIForEnablingWebAccessState: error: %@", v25, 0xCu);
    sub_27586BF04(v26, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v26, -1, -1);
    v29 = v25;
    v22 = v39;
    MEMORY[0x277C85860](v29, -1, -1);
  }

  (*(v24 + 8))(v22, v23);
  v30 = v0[52];
  v32 = v0[50];
  v31 = v0[51];
  v34 = v0[48];
  v33 = v0[49];
  v35 = v0[47];
  v36 = v0[44];
  sub_27586BF04(v0[53], &unk_280A0EB10, &qword_2759C0740);

  v37 = v0[1];

  return v37();
}

uint64_t sub_2758E0FF0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  return sub_27586FBC8(v5 + v3, a1, &unk_280A0EB10, &qword_2759C0740);
}

uint64_t sub_2758E10C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  return sub_27586FBC8(v3 + v4, a2, &unk_280A0EB10, &qword_2759C0740);
}

uint64_t sub_2758E11A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_27586FBC8(a1, &v10 - v6, &unk_280A0EB10, &qword_2759C0740);
  v8 = *a2;
  return sub_2758DE9DC(v7);
}

uint64_t sub_2758E124C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  sub_2758E6474(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2758E12B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = sub_2759B8508();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v4[7] = *(v7 + 64);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758E13D0, 0, 0);
}

id sub_2758E13D0()
{
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v2 = result;
    v3 = [result webAccessKBURL];

    if (v3)
    {
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      v6 = *(v0 + 64);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      v9 = *(v0 + 32);
      v34 = v9;
      v35 = *(v0 + 56);
      v32 = *(v0 + 24);
      sub_2759B84C8();

      v10 = *(v8 + 32);
      v11 = v4;
      v33 = v4;
      v10(v4, v5, v7);
      v12 = sub_2759BA518();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = v6;
      (*(v8 + 16))(v6, v11, v7);
      sub_2759BA4C8();
      v14 = v32;
      v15 = sub_2759BA4B8();
      v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      *(v17 + 2) = v15;
      *(v17 + 3) = v18;
      *(v17 + 4) = v14;
      v10(&v17[v16], v13, v7);
      v19 = sub_27587D460(0, 0, v34, &unk_2759C6598, v17);
      (*(v8 + 8))(v33, v7);
    }

    else
    {
      v21 = *(v0 + 24);
      v20 = *(v0 + 32);
      v22 = sub_2759BA518();
      (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
      sub_2759BA4C8();
      v23 = v21;
      v24 = sub_2759BA4B8();
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v23;
      v19 = sub_27587D460(0, 0, v20, &unk_2759C6588, v25);
    }

    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = *(v0 + 64);
    v30 = *(v0 + 32);
    **(v0 + 16) = v19;

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2758E16E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E17B4, v8, v7);
}

uint64_t sub_2758E17B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_2759B8508();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_2758DE9DC(v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2758E18AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_2759BA4C8();
  v4[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E197C, v7, v6);
}

uint64_t sub_2758E197C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = sub_2759B8508();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_2758DE9DC(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2758E1A30(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_280A238A0);
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_275819000, v8, v9, "Web access status change notification received. Re-fetching status.", v10, 2u);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v11 = sub_2759BA518();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v13 = a2;
  sub_27587D460(0, 0, v6, &unk_2759C6568, v12);
}

uint64_t sub_2758E1C14()
{
  sub_2759BA4C8();
  *(v0 + 24) = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E6E58, v2, v1);
}

id ADPSectionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ADPSectionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ADPSectionViewModel.beginEnablementFlow(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_2759BA518();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_27586FBC8(a1, v7, &unk_280A0EB10, &qword_2759C0740);
  sub_2759BA4C8();
  v13 = v1;
  v14 = sub_2759BA4B8();
  v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = v13;
  sub_2758B4BD0(v7, v16 + v15);
  sub_27587D460(0, 0, v11, &unk_2759C62A8, v16);
}

uint64_t sub_2758E203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = sub_2759B8508();
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = sub_2759B8248();
  v5[34] = v10;
  v11 = *(v10 - 8);
  v5[35] = v11;
  v12 = *(v11 + 64) + 15;
  v5[36] = swift_task_alloc();
  sub_2759BA4C8();
  v5[37] = sub_2759BA4B8();
  v14 = sub_2759BA468();
  v5[38] = v14;
  v5[39] = v13;

  return MEMORY[0x2822009F8](sub_2758E21D0, v14, v13);
}

uint64_t sub_2758E21D0()
{
  v54 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[40] = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "beginning ADP enablement flow", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[27];

  swift_getKeyPath();
  v0[41] = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel___observationRegistrar;
  v0[24] = v5;
  v0[42] = sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[43] = Strong;
  if (Strong)
  {
    v7 = Strong;
    v8 = v0[27];
    swift_getKeyPath();
    v0[25] = v8;
    sub_2759B8638();

    v9 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager;
    v0[44] = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager;
    v10 = *(v8 + v9);
    if (v10)
    {
      [v10 startSpinner];
    }

    v11 = v0[33];
    v12 = v0[29];
    v13 = v0[30];
    v14 = v0[27];
    v15 = v0[28];
    v16 = [objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:*(v14 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager) hookType:2 presenter:v7];
    v0[45] = v16;
    [v16 setDelegate_];
    v17 = v16;
    sub_2758DE27C(v16);
    sub_27586FBC8(v15, v11, &unk_280A0EB10, &qword_2759C0740);
    v18 = *(v13 + 48);
    v19 = v18(v11, 1, v12);
    if (v19 == 1)
    {
      __break(1u);
    }

    else
    {
      v20 = v0[36];
      v21 = v0[33];
      sub_2759B8208();
      sub_2759B81D8();
      v22 = sub_2759B8988();
      v23 = sub_2759BA668();
      if (os_log_type_enabled(v22, v23))
      {
        v52 = v17;
        v24 = v0[36];
        v25 = v0[32];
        v26 = v0[29];
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        *v27 = 136315138;
        swift_beginAccess();
        sub_2759B8218();
        v29 = v18(v25, 1, v26);
        v30 = v0[32];
        if (v29)
        {
          sub_27586BF04(v0[32], &unk_280A0EB10, &qword_2759C0740);
          swift_endAccess();
          v31 = 0;
          v32 = 0xE000000000000000;
        }

        else
        {
          v43 = v0[30];
          v44 = v0[31];
          v45 = v0[29];
          (*(v43 + 16))(v44, v0[32], v45);
          sub_27586BF04(v30, &unk_280A0EB10, &qword_2759C0740);
          swift_endAccess();
          v46 = sub_2759B8488();
          v32 = v47;
          (*(v43 + 8))(v44, v45);
          v31 = v46;
        }

        v17 = v52;
        v48 = sub_2758937B8(v31, v32, &v53);

        *(v27 + 4) = v48;
        _os_log_impl(&dword_275819000, v22, v23, "ADP enablement launching RUI url: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x277C85860](v28, -1, -1);
        MEMORY[0x277C85860](v27, -1, -1);
      }

      v49 = v0[36];
      swift_beginAccess();
      v50 = sub_2759B81E8();
      v0[46] = v50;
      v0[2] = v0;
      v0[7] = v0 + 48;
      v0[3] = sub_2758E2830;
      v51 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2758DCBF0;
      v0[13] = &block_descriptor_100;
      v0[14] = v51;
      [v17 loadRequest:v50 completion:v0 + 10];
      v19 = (v0 + 2);
    }

    return MEMORY[0x282200938](v19);
  }

  else
  {
    v33 = v0[37];

    v34 = sub_2759B8988();
    v35 = sub_2759BA648();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_275819000, v34, v35, "ADP enablement flow cancelled due to missing navigationController", v36, 2u);
      MEMORY[0x277C85860](v36, -1, -1);
    }

    v37 = v0[36];
    v38 = v0[32];
    v39 = v0[33];
    v40 = v0[31];

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_2758E2830()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 304);
  if (v3)
  {
    v6 = sub_2758E2B1C;
  }

  else
  {
    v6 = sub_2758E2960;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2758E2960()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);

  v4 = *(v0 + 384);

  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v4;
    _os_log_impl(&dword_275819000, v5, v6, "ADP enablement RUI presented success: %{BOOL}d", v7, 8u);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v8 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v11 = *(v0 + 216);
  swift_getKeyPath();
  *(v0 + 208) = v11;
  sub_2759B8638();

  v12 = *(v11 + v8);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = *(v0 + 272);
  if (v12)
  {
    [swift_unknownObjectRetain() stopSpinner];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v16 + 8))(v15, v17);
  v18 = *(v0 + 288);
  v19 = *(v0 + 256);
  v20 = *(v0 + 264);
  v21 = *(v0 + 248);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2758E2B1C()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[40];
  v4 = v0[37];

  swift_willThrow();

  v5 = v1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[47];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_275819000, v6, v7, "ADP enablement RUI failed with error: %@", v10, 0xCu);
    sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[44];
  v16 = v0[41];
  v15 = v0[42];
  v17 = v0[27];
  swift_getKeyPath();
  v0[26] = v17;
  sub_2759B8638();

  v18 = *(v17 + v14);
  v19 = v0[45];
  v20 = v0[43];
  v22 = v0[35];
  v21 = v0[36];
  v23 = v0[34];
  if (v18)
  {
    [swift_unknownObjectRetain() stopSpinner];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v22 + 8))(v21, v23);
  v24 = v0[36];
  v25 = v0[32];
  v26 = v0[33];
  v27 = v0[31];

  v28 = v0[1];

  return v28();
}

uint64_t sub_2758E2D5C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758E203C(a1, v6, v7, v8, v1 + v5);
}

uint64_t ADPSectionViewModel.setDelegate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_2759BA518();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2759BA4C8();
  swift_unknownObjectRetain();
  v8 = v1;
  v9 = sub_2759BA4B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  sub_27587D460(0, 0, v6, &unk_2759C62C0, v10);
}

uint64_t sub_2758E325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E32F4, v7, v6);
}

uint64_t sub_2758E32F4()
{
  v1 = v0[5];

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = sub_2759B8988();
  v4 = sub_2759BA638();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Setting ADP state manager", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7 = v0[3];
  v6 = v0[4];

  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v0[2] = v7;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8628();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2758E34CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758E325C(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall ADPSectionViewModel.presentAccountRecoveryFlow()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2759BA4C8();
  v6 = v0;
  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_27587D460(0, 0, v4, &unk_2759C62D0, v8);
}

uint64_t sub_2758E3800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_2759BA4C8();
  *(v4 + 32) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E3898, v6, v5);
}

uint64_t sub_2758E3898()
{
  v1 = v0[4];

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = sub_2759B8988();
  v4 = sub_2759BA638();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Presenting account recovery flow", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = v0[3];

  swift_getKeyPath();
  v0[2] = v6;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [objc_opt_self() showAccountRecoveryFromViewController:Strong accountManager:*(v0[3] + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager)];
  }

  else
  {
    v8 = sub_2759B8988();
    v9 = sub_2759BA648();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275819000, v8, v9, "Account recovery navigation controller is nil", v10, 2u);
      MEMORY[0x277C85860](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2758E3AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E3800(a1, v4, v5, v6);
}

uint64_t ADPSectionViewModel.remoteUIRequestComplete(_:error:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_2759BA518();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2759BA4C8();
  v9 = a2;
  v10 = v2;
  v11 = sub_2759BA4B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = v10;
  sub_27587D460(0, 0, v7, &unk_2759C62E0, v12);
}

uint64_t sub_2758E3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E3E94, v7, v6);
}

uint64_t sub_2758E3E94()
{
  v1 = v0[5];

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = v2;
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    if (v7)
    {
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v8 + 4) = v11;
    *v9 = v12;
    _os_log_impl(&dword_275819000, v5, v6, "ADP enablement RUI completed with error: %@", v8, 0xCu);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v13 = v0[3];

  if (v13)
  {
    v14 = v0[4];
    swift_getKeyPath();
    v0[2] = v14;
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8638();

    v15 = *(v14 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager);
    if (v15)
    {
      [v15 setNetworkError];
    }
  }

  v16 = v0[4];
  sub_2758DEDE8();
  v17 = v0[1];

  return v17();
}

uint64_t sub_2758E40D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758E3DFC(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall ADPSectionViewModel.remoteUIDidReceiveHTTPResponse(_:)(NSHTTPURLResponse a1)
{
  v2 = v1;
  isa = a1.super.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v8 = sub_2759B89A8();
  __swift_project_value_buffer(v8, qword_280A238A0);
  v9 = isa;
  v10 = sub_2759B8988();
  v11 = sub_2759BA668();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = [(objc_class *)v9 statusCode];

    _os_log_impl(&dword_275819000, v10, v11, "ADP enablement RUI received response with status code: %ld", v12, 0xCu);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  if ([(objc_class *)v9 statusCode]!= 401 && [(objc_class *)v9 statusCode]!= 302)
  {
    v13 = sub_2759BA518();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_2759BA4C8();
    v14 = v9;
    v15 = v2;
    v16 = sub_2759BA4B8();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = v14;
    sub_27587D460(0, 0, v7, &unk_2759C62F0, v17);
  }
}

uint64_t sub_2758E45F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E468C, v7, v6);
}

uint64_t sub_2758E468C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v7.super.super.isa = v2;
  ADPSectionViewModel.harvestWebAccessData(from:)(v7);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2758E46F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758E45F4(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall ADPSectionViewModel.harvestWebAccessData(from:)(NSHTTPURLResponse from)
{
  v2 = v1;
  isa = from.super.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-v6 - 8];
  v8 = [(objc_class *)isa allHeaderFields];
  v9 = sub_2759BA1D8();

  *&v30[0] = 0xD000000000000014;
  *(&v30[0] + 1) = 0x80000002759E0720;
  sub_2759BA878();
  if (*(v9 + 16) && (v10 = sub_2758A24F8(v28), (v11 & 1) != 0))
  {
    sub_275864C94(*(v9 + 56) + 32 * v10, v30);
    sub_275864C40(v28);
  }

  else
  {

    sub_275864C40(v28);
    memset(v30, 0, sizeof(v30));
  }

  sub_27586FBC8(v30, v28, &qword_280A0ED70, &qword_2759C6C60);
  if (!v29)
  {
    sub_27586BF04(v30, &qword_280A0ED70, &qword_2759C6C60);
    v26 = v28;
    goto LABEL_12;
  }

  sub_275861AF8(0, &qword_280A0ED90, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v26 = v30;
LABEL_12:
    sub_27586BF04(v26, &qword_280A0ED70, &qword_2759C6C60);
    return;
  }

  v12 = v27;
  v13 = sub_2759BA778();
  v14 = sub_2759BA788();

  if ((v14 & 1) == 0)
  {
    v15 = [*&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account] aa_altDSID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_2759BA298();
      v19 = v18;

      v20 = sub_2759BA518();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
      sub_2759BA4C8();
      v21 = v12;
      v22 = v2;
      v23 = sub_2759BA4B8();
      v24 = swift_allocObject();
      v25 = MEMORY[0x277D85700];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v21;
      v24[5] = v17;
      v24[6] = v19;
      v24[7] = v22;
      sub_27587D460(0, 0, v7, &unk_2759C6308, v24);

      goto LABEL_10;
    }
  }

  sub_27586BF04(v30, &qword_280A0ED70, &qword_2759C6C60);
}

uint64_t sub_2758E4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[23] = sub_2759BA4C8();
  v7[24] = sub_2759BA4B8();
  v10 = sub_2759BA468();
  v7[25] = v10;
  v7[26] = v9;

  return MEMORY[0x2822009F8](sub_2758E4C34, v10, v9);
}

uint64_t sub_2758E4C34()
{
  v42 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_2759B89A8();
  v0[27] = __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = v2;

  v5 = sub_2759B8988();
  v6 = sub_2759BA668();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = v9;
    *(v10 + 14) = sub_2758937B8(v8, v7, &v41);
    _os_log_impl(&dword_275819000, v5, v6, "Saving new web access: %@ to account: %s", v10, 0x16u);
    sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x277C85860](v12, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v14 = v0[19];
  v15 = v0[20];
  v16 = [objc_opt_self() sharedInstance];
  v17 = sub_2759BA258();
  v18 = [v16 authKitAccountWithAltDSID_];
  v0[28] = v18;

  if (v18)
  {
    v19 = v0[18];
    v20 = v18;
    v21 = sub_2759BA258();
    [v20 setAccountProperty:v19 forKey:v21];

    v22 = [v20 accountStore];
    v0[29] = v22;
    if (v22)
    {
      v23 = v22;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_2758E5150;
      v24 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2758DCBF0;
      v0[13] = &block_descriptor_92;
      v0[14] = v24;
      [v23 saveAccount:v20 withCompletionHandler:v0 + 10];
      v22 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v22);
  }

  else
  {
    v25 = v0[24];

    v26 = v0[27];
    v27 = v0[20];
    v28 = v0[18];

    v29 = sub_2759B8988();
    v30 = sub_2759BA668();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = v0[19];
      v31 = v0[20];
      v33 = v0[18];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v34 = 138412802;
      *(v34 + 4) = v33;
      *v35 = v33;
      *(v34 + 12) = 2080;
      v37 = v33;
      *(v34 + 14) = sub_2758937B8(v32, v31, &v41);
      *(v34 + 22) = 1024;
      *(v34 + 24) = 0;
      _os_log_impl(&dword_275819000, v29, v30, "Saved new web access: %@ to account: %s success: %{BOOL}d", v34, 0x1Cu);
      sub_27586BF04(v35, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x277C85860](v36, -1, -1);
      MEMORY[0x277C85860](v34, -1, -1);
    }

    v38 = v0[22];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_2758E5150()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 208);
  v5 = *(v1 + 200);
  if (v3)
  {
    v6 = sub_2758E5508;
  }

  else
  {
    v6 = sub_2758E5280;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2758E5280()
{
  v28 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);

  v3 = *(v0 + 248);

  v4 = *(v0 + 216);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);

  v7 = sub_2759B8988();
  v8 = sub_2759BA668();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 144);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    v15 = v11;
    *(v12 + 14) = sub_2758937B8(v10, v9, &v27);
    *(v12 + 22) = 1024;
    *(v12 + 24) = v3;
    _os_log_impl(&dword_275819000, v7, v8, "Saved new web access: %@ to account: %s success: %{BOOL}d", v12, 0x1Cu);
    sub_27586BF04(v13, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x277C85860](v14, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  if (v3)
  {
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    v19 = sub_2759BA518();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    v20 = v18;
    v21 = sub_2759BA4B8();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    sub_27587D460(0, 0, v16, &unk_2759C6520, v22);
  }

  v24 = *(v0 + 176);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2758E5508()
{
  v20 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 192);

  swift_willThrow();

  v4 = *(v0 + 216);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);

  v7 = sub_2759B8988();
  v8 = sub_2759BA668();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 144);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    v15 = v11;
    *(v12 + 14) = sub_2758937B8(v10, v9, &v19);
    *(v12 + 22) = 1024;
    *(v12 + 24) = 0;
    _os_log_impl(&dword_275819000, v7, v8, "Saved new web access: %@ to account: %s success: %{BOOL}d", v12, 0x1Cu);
    sub_27586BF04(v13, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x277C85860](v14, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  v16 = *(v0 + 176);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2758E56F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E5788, v6, v5);
}

uint64_t sub_2758E5788()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2758DEDE8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2758E57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  sub_2759BA4C8();
  v4[10] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E5888, v6, v5);
}

uint64_t sub_2758E5888()
{
  v2 = v0[9];
  v1 = v0[10];

  swift_getKeyPath();
  v0[2] = v2;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = v0[9];
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v0[6] = sub_2758E68F4;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_27586249C;
    v0[5] = &block_descriptor_80;
    v6 = _Block_copy(v0 + 2);
    v7 = v0[7];
    v8 = v4;

    [Strong dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }

  *v0[8] = Strong == 0;
  v9 = v0[1];

  return v9();
}

void sub_2758E5A38(uint64_t a1)
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "ADP navigationController dismissed", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8628();
  }

  if (*(a1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
    sub_2759B8628();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading) = 0;
  }

  sub_2758DEDE8();
}

uint64_t sub_2758E5D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_2758E4B5C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2758E5E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8508();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102D0, &qword_2759C6410);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_27586FBC8(a1, &v24 - v16, &unk_280A0EB10, &qword_2759C0740);
  sub_27586FBC8(a2, &v17[v18], &unk_280A0EB10, &qword_2759C0740);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_27586FBC8(v17, v12, &unk_280A0EB10, &qword_2759C0740);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_2758E6A0C(&qword_280A102D8, MEMORY[0x277CC9260]);
      v21 = sub_2759BA228();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_27586BF04(v17, &unk_280A0EB10, &qword_2759C0740);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_27586BF04(v17, &qword_280A102D0, &qword_2759C6410);
    v20 = 1;
    return v20 & 1;
  }

  sub_27586BF04(v17, &unk_280A0EB10, &qword_2759C0740);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s14iCloudSettings19ADPSectionViewModelC18remoteUIDidDismissyySo18RemoteUIControllerCF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238A0);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275819000, v7, v8, "ADP RemoteUIDidDismiss", v9, 2u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_2759BA4C8();
  v11 = v1;
  v12 = sub_2759BA4B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_27587DA58(0, 0, v5, &unk_2759C6510, v13);
}

uint64_t type metadata accessor for ADPSectionViewModel()
{
  result = qword_280A10188;
  if (!qword_280A10188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758E6360()
{
  sub_2758BB454();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2759B8678();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2758E6474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2758E6548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter) = v2;
  v4 = v2;
}

uint64_t sub_2758E6588()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758E6658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758E325C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_2759B8508();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758E6840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E57F0(a1, v4, v5, v6);
}

uint64_t sub_2758E68FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E56F0(a1, v4, v5, v6);
}

uint64_t sub_2758E69C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2758E6A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2758E6A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758DEBC8(a1, v4, v5, v6);
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2758E6B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E1BF4(a1, v4, v5, v6);
}

uint64_t sub_2758E6BDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E12B8(a1, v4, v5, v6);
}

uint64_t sub_2758E6C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E18AC(a1, v4, v5, v6);
}

uint64_t sub_2758E6D44(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758E16E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2758E6EDC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A23900);
  v7 = sub_2759B8988();
  v8 = sub_2759BA648();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275819000, v7, v8, "NotesDeeplinkAction: USING FALLBACK URL", v9, 2u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  sub_2759B84F8();
  v10 = sub_2759B8508();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v5, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a1, v5, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_2758E70AC()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758E7128()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758E7180@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2758E7218@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2759BAA48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2758E7270(uint64_t a1)
{
  v2 = sub_2758E82E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2758E72AC(uint64_t a1)
{
  v2 = sub_2758E82E8();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_2758E72E8(uint64_t *a1)
{
  v2 = v1;
  v31 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10338, &qword_2759C6710);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v2[2] = 0;
  v11 = OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination;
  v12 = sub_2759B8C48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = (v13 + 56);
  v14(v2 + v11, 1, 1, v12);
  v17 = a1[3];
  v16 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2758E82E8();
  v18 = v37;
  sub_2759BAC18();
  if (v18)
  {

    sub_27586BF04(v2 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination, &qword_280A0E8A8, qword_2759C2120);
    v19 = *(*v2 + 12);
    v20 = *(*v2 + 26);
    swift_deallocPartialClassInstance();
    v21 = v33;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v2;
  }

  v31 = v15;
  v37 = v14;
  v22 = v11;
  v23 = v29;
  v24 = v33;
  sub_2758E833C(&qword_280A0E8C0, MEMORY[0x277D23340]);
  v25 = v30;
  sub_2759BAA68();
  v26 = v32;
  swift_beginAccess();
  sub_27585F470(v26, v2 + v22);
  swift_endAccess();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v28 = result;
    v35 = sub_2758E8384();
    v36 = &off_288484B08;
    *&v34 = v28;
    (*(v23 + 8))(v10, v25);
    sub_275827D1C(&v34, v2 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_lsWorkspace);
    v21 = v24;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2758E7680()
{
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination, &qword_280A0E8A8, qword_2759C2120);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_lsWorkspace));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotesDeeplinkAction()
{
  result = qword_280A10310;
  if (!qword_280A10310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758E7760()
{
  sub_27585EA38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2758E7804(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return (sub_2758E7B60)(a1);
}

uint64_t sub_2758E78B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();
}

id *sub_2758E7A78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_2758E72E8(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_2758E7B60(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_2759B8508();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v7 = sub_2759B8C48();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758E7CC0, 0, 0);
}

id sub_2758E7CC0()
{
  v57 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "NotesDeeplinkAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[6];

  v8 = OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination;
  swift_beginAccess();
  if ((*(v6 + 48))(v7 + v8, 1, v5))
  {
    goto LABEL_7;
  }

  v9 = v0[5];
  (*(v0[13] + 16))(v0[14], v7 + v8, v0[12]);
  sub_2759B8C38();
  (*(v0[13] + 8))(v0[14], v0[12]);

  v20 = sub_2759BAA48();

  if (v20 > 1)
  {

LABEL_7:
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();
    if (!os_log_type_enabled(v10, v11))
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "NotesDeeplinkAction: unable to parse destination, bailing";
LABEL_9:
    _os_log_impl(&dword_275819000, v10, v11, v13, v12, 2u);
    MEMORY[0x277C85860](v12, -1, -1);
    goto LABEL_10;
  }

  v21 = *(v0[6] + 16);
  if (!v21)
  {

    v10 = sub_2759B8988();
    v11 = sub_2759BA648();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_10;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "NotesDeeplinkAction: no account available, bailing";
    goto LABEL_9;
  }

  v22 = *&v21[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account];
  v23 = v21;
  result = [v22 identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;

  sub_2759BA298();
  v25 = v0[11];
  v55 = v23;
  if (v20)
  {

    sub_2758E6EDC(v25);
  }

  else
  {

    v26 = [objc_opt_self() defaultCloudFolderURLForACAccountID_];

    sub_2759B84C8();
  }

  v27 = v0[11];
  v53 = v0[10];
  v29 = v0[8];
  v28 = v0[9];
  v30 = v0[7];
  v31 = (v0[6] + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_lsWorkspace);
  v32 = v31[3];
  v33 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v34 = *(v28 + 16);
  v34(v30, v27, v29);
  (*(v28 + 56))(v30, 0, 1, v29);
  v35 = sub_2758A2A88(MEMORY[0x277D84F90]);
  v36 = (*(v33 + 8))(v30, v35, v32, v33);

  sub_27586BF04(v30, &unk_280A0EB10, &qword_2759C0740);
  v34(v53, v27, v29);
  v37 = sub_2759B8988();
  v38 = sub_2759BA668();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[10];
  v41 = v0[11];
  v43 = v0[8];
  v42 = v0[9];
  if (v39)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56 = v45;
    *v44 = 136315394;
    v52 = v36;
    v46 = sub_2759B8488();
    v54 = v41;
    v48 = v47;
    v49 = *(v42 + 8);
    v49(v40, v43);
    v50 = sub_2758937B8(v46, v48, &v56);

    *(v44 + 4) = v50;
    *(v44 + 12) = 1024;
    *(v44 + 14) = v52 & 1;
    _os_log_impl(&dword_275819000, v37, v38, "NotesDeeplinkAction: opened link %s with success %{BOOL}d", v44, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x277C85860](v45, -1, -1);
    MEMORY[0x277C85860](v44, -1, -1);

    v49(v54, v43);
  }

  else
  {

    v51 = *(v42 + 8);
    v51(v40, v43);
    v51(v41, v43);
  }

LABEL_11:
  v14 = v0[14];
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

unint64_t sub_2758E82E8()
{
  result = qword_280A10340;
  if (!qword_280A10340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10340);
  }

  return result;
}

uint64_t sub_2758E833C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2758E8384()
{
  result = qword_280A10348;
  if (!qword_280A10348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A10348);
  }

  return result;
}

unint64_t sub_2758E83E4()
{
  result = qword_280A10350;
  if (!qword_280A10350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10350);
  }

  return result;
}

unint64_t sub_2758E843C()
{
  result = qword_280A10358;
  if (!qword_280A10358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10358);
  }

  return result;
}

unint64_t sub_2758E8494()
{
  result = qword_280A10360;
  if (!qword_280A10360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10360);
  }

  return result;
}

uint64_t sub_2758E84E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  v25[0] = v3;
  v25[1] = v5;
  v25[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v25);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v25, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_27585D118();
  v22[0] = v6;
  v22[1] = v8;
  v22[2] = v7;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v22);

  sub_2759B9B18();

  v9 = v23;
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  v19[0] = v9;
  v19[1] = v11;
  v19[2] = v10;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v19);

  sub_2759B9B18();

  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  swift_getKeyPath();
  v14 = sub_2759BA1B8();
  sub_2758E9FC8(&qword_280A10398, MEMORY[0x277D4D7B0]);
  v16[0] = v12;
  v16[1] = v14;
  v16[2] = v13;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v16, v17);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7D0, &qword_2759C1228);
  sub_27585D02C();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_2758E89EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759BA1B8();
  v7[3] = v4;
  v7[4] = &off_288480E90;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  swift_beginAccess();
  sub_2758CE724(v7, a2 + 40, &qword_280A10388, &qword_2759C69C8);
  return swift_endAccess();
}

uint64_t sub_2758E8AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 120) = a5;
  *(v5 + 136) = a4;
  sub_2759BA4C8();
  *(v5 + 128) = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E8B44, v7, v6);
}

uint64_t sub_2758E8B44()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  v3 = *(v0 + 120);
  if ((v2 & 1) == 0)
  {
    v4 = *(v3 + 32);
    if (!v4 || *(v4 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) != 1)
    {
      goto LABEL_22;
    }
  }

  v5 = *(v3 + 80);
  if (v5)
  {
    v6 = [v5 navigationController];
    if (v6)
    {
      v7 = v6;
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v8 = sub_2759B89A8();
      __swift_project_value_buffer(v8, qword_2815ADE70);
      v9 = sub_2759B8988();
      v10 = sub_2759BA668();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_275819000, v9, v10, "PopViewAction: performing presenting controller navigation", v11, 2u);
        MEMORY[0x277C85860](v11, -1, -1);
      }

      goto LABEL_22;
    }

    v3 = *(v0 + 120);
  }

  swift_beginAccess();
  sub_2758E9E84(v3 + 40, v0 + 56);
  if (!*(v0 + 80))
  {
    sub_27586BF04(v0 + 56, &qword_280A10388, &qword_2759C69C8);
LABEL_21:
    v16 = *(v0 + 120);
    sub_2758E8E2C();
    goto LABEL_22;
  }

  sub_275827D1C((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if ((sub_2759BA198() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_21;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_2815ADE70);
  v13 = sub_2759B8988();
  v14 = sub_2759BA668();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_275819000, v13, v14, "PopViewAction: performing state driven navigation", v15, 2u);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2759BA1A8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_22:
  v17 = *(v0 + 8);

  return v17();
}

void sub_2758E8E2C()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "PopViewAction: performing legacy navigation", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  if (*(v1 + 16) && (v6 = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v7 = v6;
    v14 = [v6 popViewControllerAnimated_];
  }

  else
  {
    v8 = *(v1 + 24);
    if (v8 && (swift_getKeyPath(), sub_2758E9FC8(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel), v9 = v8, sub_2759B8638(), , Strong = swift_unknownObjectWeakLoadStrong(), v9, Strong))
    {
      v11 = [Strong popViewControllerAnimated_];
    }

    else
    {
      v11 = sub_2759B8988();
      v12 = sub_2759BA648();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_275819000, v11, v12, "PopViewAction: Missing any view model or navigation controller", v13, 2u);
        MEMORY[0x277C85860](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_2758E90C0()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758E9124()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758E9170@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2758E91F0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2759BAA48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2758E9248(uint64_t a1)
{
  v2 = sub_2758EA010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2758E9284(uint64_t a1)
{
  v2 = sub_2758EA010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2758E92C0(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v23 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A103A0, &qword_2759C6AC8);
  v24 = *(v28 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = v23 - v8;
  *(v1 + 80) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v10 = OBJC_IVAR____TtC14iCloudSettings13PopViewAction_force;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v27 = v10;
  v13(v2 + v10, 1, 1, v11);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758EA010();
  v25 = v9;
  v16 = v29;
  sub_2759BAC18();
  if (v16)
  {
  }

  else
  {
    v23[1] = v14;
    v29 = v13;
    v17 = v24;
    sub_2758EA064();
    v18 = v25;
    v19 = v26;
    v20 = v28;
    sub_2759BAA68();
    (*(v17 + 8))(v18, v20);
    v21 = v27;
    swift_beginAccess();
    sub_2758CE724(v19, v2 + v21, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2758E958C()
{
  sub_27586BF04((v0 + 5), &qword_280A10388, &qword_2759C69C8);

  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings13PopViewAction_force, &qword_280A0FC48, &qword_2759C79C0);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PopViewAction()
{
  result = qword_280A10368;
  if (!qword_280A10368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758E968C()
{
  sub_2758E9738();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2758E9738()
{
  if (!qword_280A0FC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FC68, &qword_2759C7830);
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0FC60);
    }
  }
}

uint64_t sub_2758E979C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return (sub_2758E99E8)(a1);
}

uint64_t sub_2758E9900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_2758E92C0(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_2758E99E8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758E9AEC, 0, 0);
}

uint64_t sub_2758E9AEC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC14iCloudSettings13PopViewAction_force;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 40);
    (*(*(v0 + 72) + 16))(*(v0 + 80), v3 + v4, *(v0 + 64));
    sub_2759B8AA8();
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v5 = *(v0 + 88);
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_2815ADE70);
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v5;
    _os_log_impl(&dword_275819000, v8, v9, "PopViewAction: performing action, force: %{BOOL}d", v10, 8u);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v11 = *(v0 + 80);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);

  v14 = sub_2759BA518();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_2759BA4C8();

  v15 = sub_2759BA4B8();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v5;
  *(v16 + 40) = v13;
  sub_27587D460(0, 0, v12, &unk_2759C69C0, v16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2758E9DC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758E8AA8(a1, v4, v5, v6, v7);
}

uint64_t sub_2758E9E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10388, &qword_2759C69C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2758E9EF4(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 24);
  *(v1 + 24) = *a1;
  v3 = v2;
}

void sub_2758E9F38(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 32);
  *(v1 + 32) = *a1;
  v3 = v2;
}

void sub_2758E9F84(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 80);
  *(v1 + 80) = *a1;
  v3 = v2;
}

uint64_t sub_2758E9FC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2758EA010()
{
  result = qword_280A103A8;
  if (!qword_280A103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103A8);
  }

  return result;
}

unint64_t sub_2758EA064()
{
  result = qword_280A100B0;
  if (!qword_280A100B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FC68, &qword_2759C7830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100B0);
  }

  return result;
}

unint64_t sub_2758EA0DC()
{
  result = qword_280A103B0;
  if (!qword_280A103B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103B0);
  }

  return result;
}

unint64_t sub_2758EA134()
{
  result = qword_280A103B8;
  if (!qword_280A103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103B8);
  }

  return result;
}

unint64_t sub_2758EA18C()
{
  result = qword_280A103C0;
  if (!qword_280A103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103C0);
  }

  return result;
}

uint64_t sub_2758EA1E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ED4A0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2758EA294(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2758ED4A0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8628();
}

id sub_2758EA384()
{
  v1 = OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager;
  v2 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_2758EA438()
{
  v1 = OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager;
  v2 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2758EA4D0()
{
  v1 = v0;
  *&v0[OBJC_IVAR___ICSHomeViewController_viewModel] = 0;
  *&v0[OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo] = 0;
  *&v0[OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager] = 0;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *&v0[OBJC_IVAR___ICSHomeViewController_accountStore] = result;
    *&v0[OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager] = 0;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v3 = sub_2759B89A8();
    __swift_project_value_buffer(v3, qword_2815ADE70);
    v4 = sub_2759B8988();
    v5 = sub_2759BA668();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_275819000, v4, v5, "iCloudHomeViewController init called.", v6, 2u);
      MEMORY[0x277C85860](v6, -1, -1);
    }

    v7.receiver = v1;
    v7.super_class = type metadata accessor for iCloudHomeViewController();
    return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id iCloudHomeViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA638();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "iCloudHome deinitialized.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for iCloudHomeViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2758EA848(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = type metadata accessor for iCloudHomeViewController();
  v45.receiver = v2;
  v45.super_class = v20;
  objc_msgSendSuper2(&v45, sel_viewDidAppear_, a1 & 1);
  sub_2759B84F8();
  sub_2758BB4AC(v19, v17);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    sub_27586BF04(v17, &unk_280A0EB10, &qword_2759C0740);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_2815ADE70);
    v22 = sub_2759B8988();
    v23 = sub_2759BA648();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_275819000, v22, v23, "Invalid deeplink url string.", v24, 2u);
      MEMORY[0x277C85860](v24, -1, -1);
    }
  }

  else
  {
    v44 = v7;
    (*(v9 + 32))(v12, v17, v8);
    v25 = sub_2759BA258();
    v26 = objc_opt_self();
    v27 = [v26 iCloudTitle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2759C2410;
    *(v28 + 32) = [v26 appleAccountTitle];
    sub_275861AF8(0, &qword_280A103C8, 0x277CCAEB8);
    v29 = sub_2759BA3D8();

    v30 = sub_2759B84B8();
    [v2 pe:v25 emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v27 title:v29 localizedNavigationComponents:v30 deepLink:?];

    v31 = OBJC_IVAR___ICSHomeViewController_viewModel;
    v32 = *&v2[OBJC_IVAR___ICSHomeViewController_viewModel];
    if (v32)
    {
      v33 = v32;
      iCloudHomeViewModel.headerCardSubscriptionLabel.getter();
    }

    else
    {
      type metadata accessor for iCloudHomeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v33 = [objc_opt_self() bundleForClass_];
      sub_2759B83C8();
    }

    v35 = sub_2759BA258();

    [v2 setTitle_];

    v36 = *&v2[v31];
    if (v36)
    {
      v37 = *(v36 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
      v38 = v44;
      sub_2759BA4D8();
      v39 = sub_2759BA518();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = v40;
      *(v41 + 40) = xmmword_2759C43F0;
      *(v41 + 56) = 6666;
      *(v41 + 58) = 1;
      *(v41 + 64) = 0;
      *(v41 + 72) = 1;
      *(v41 + 80) = 0;
      *(v41 + 88) = 0;
      *(v41 + 96) = -1;
      sub_275931D20(0, 0, v38, &unk_2759C4530, v41);

      sub_27586BF04(v38, &unk_280A0E510, &qword_2759C33C0);
    }

    (*(v9 + 8))(v12, v8);
  }

  return sub_27586BF04(v19, &unk_280A0EB10, &qword_2759C0740);
}

void sub_2758EAEC0(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for iCloudHomeViewController();
  objc_msgSendSuper2(&v15, sel_viewWillAppear_, a1 & 1);
  v4 = [v2 navigationItem];
  [v4 setLargeTitleDisplayMode_];

  v5 = OBJC_IVAR___ICSHomeViewController_viewModel;
  v6 = *&v2[OBJC_IVAR___ICSHomeViewController_viewModel];
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ED4A0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    v8 = v6;
    sub_2759B8628();

    v9 = *&v2[v5];
    if (v9)
    {
      v10 = v9;
      sub_275878260([v2 navigationController]);
    }
  }

  v11 = OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo;
  if (*&v2[OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo])
  {
    v12 = *&v2[OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo];

    v13 = sub_2759BA1C8();

    [v2 handleURL_];

    v14 = *&v2[v11];
    *&v2[v11] = 0;
  }
}

void sub_2758EB124(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for iCloudHomeViewController();
  objc_msgSendSuper2(&v7, sel_willMoveToParentViewController_, a1);
  if (!a1)
  {
    v3 = [v1 parentViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationItem];

      [v5 setTitleView_];
    }

    v6 = [v1 navigationItem];
    [v6 setTitleView_];
  }
}

void sub_2758EB264()
{
  v1 = v0;
  v2 = type metadata accessor for iCloudHomeView();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v124 - v7);
  v9 = type metadata accessor for iCloudHomeViewController();
  v130.receiver = v0;
  v130.super_class = v9;
  objc_msgSendSuper2(&v130, sel_viewDidLoad);
  v10 = [v0 specifier];
  v11 = MEMORY[0x277CED1A0];
  if (!v10)
  {
    v128 = 0u;
    v129 = 0u;
LABEL_12:
    sub_27586BF04(&v128, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = sub_2759BA258();
  v14 = [v12 propertyForKey_];

  if (v14)
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
  }

  v128 = v126;
  v129 = v127;
  if (!*(&v127 + 1))
  {
    goto LABEL_12;
  }

  sub_275861AF8(0, &qword_280A10430, 0x277CED1D0);
  if (swift_dynamicCast())
  {
    v15 = v126;
    v16 = [v126 accounts];
    if (!v16)
    {
LABEL_90:
      __break(1u);
      return;
    }

    v17 = v16;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_2758ED4A0(&qword_280A0E500, type metadata accessor for AIDAServiceType);
    v18 = sub_2759BA1D8();

    if (*(v18 + 16))
    {
      v19 = sub_2758A342C(*v11);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);

LABEL_71:
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v114 = sub_2759B89A8();
        __swift_project_value_buffer(v114, qword_2815ADE70);
        v115 = sub_2759B8988();
        v116 = sub_2759BA668();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_275819000, v115, v116, "Found account manager instance w/ specifier. The flow is NOT launched from Settings root level.", v117, 2u);
          MEMORY[0x277C85860](v117, -1, -1);
        }

        v118 = objc_allocWithZone(MEMORY[0x277D7F4A8]);
        v119 = v15;
        v120 = v21;
        v121 = [v118 init];
        v122 = objc_allocWithZone(type metadata accessor for iCloudHomeViewModel());
        v123 = v121;
        v40 = sub_2758946C4(v119, v120, 0, v123, v122);

LABEL_23:
        v41 = *&v1[OBJC_IVAR___ICSHomeViewController_viewModel];
        *&v1[OBJC_IVAR___ICSHomeViewController_viewModel] = v40;
        goto LABEL_28;
      }
    }

    v21 = [*&v1[OBJC_IVAR___ICSHomeViewController_accountStore] aa_primaryAppleAccount];
    if (v21)
    {
      goto LABEL_71;
    }
  }

LABEL_13:
  v22 = sub_2758EA438();
  v23 = [v22 accounts];
  if (!v23)
  {
    __break(1u);
    goto LABEL_79;
  }

  v24 = v23;

  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_2758ED4A0(&qword_280A0E500, type metadata accessor for AIDAServiceType);
  v25 = sub_2759BA1D8();

  if (*(v25 + 16))
  {
    v26 = sub_2758A342C(*v11);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);

LABEL_18:
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v29 = sub_2759B89A8();
      __swift_project_value_buffer(v29, qword_2815ADE70);
      v30 = sub_2759B8988();
      v31 = sub_2759BA668();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_275819000, v30, v31, "No accountManager instance exist w/ specifier. The flow is launched from Settings root level for primary account.", v32, 2u);
        MEMORY[0x277C85860](v32, -1, -1);
      }

      v33 = *&v1[OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager];
      v34 = objc_allocWithZone(MEMORY[0x277D7F4A8]);
      v35 = v33;
      v36 = v28;
      v37 = [v34 init];
      v38 = objc_allocWithZone(type metadata accessor for iCloudHomeViewModel());
      v39 = v37;
      v40 = sub_2758946C4(v35, v36, 1, v39, v38);

      goto LABEL_23;
    }
  }

  v28 = [*&v1[OBJC_IVAR___ICSHomeViewController_accountStore] aa_primaryAppleAccount];
  if (v28)
  {
    goto LABEL_18;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v42 = sub_2759B89A8();
  __swift_project_value_buffer(v42, qword_2815ADE70);
  v41 = sub_2759B8988();
  v43 = sub_2759BA648();
  if (os_log_type_enabled(v41, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_275819000, v41, v43, "Unable to find an account for iCloudHomeViewController", v44, 2u);
    MEMORY[0x277C85860](v44, -1, -1);
  }

LABEL_28:

  v45 = *&v1[OBJC_IVAR___ICSHomeViewController_viewModel];
  if (v45)
  {
    swift_unknownObjectWeakAssign();
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v46 = v2[5];
    *(v8 + v46) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
    swift_storeEnumTagMultiPayload();
    v47 = v2[7];
    *(v8 + v47) = 0;
    v48 = (v8 + v2[6]);
    *&v126 = v45;
    type metadata accessor for iCloudHomeViewModel();
    v49 = v45;
    sub_2759B9D58();
    v50 = *(&v128 + 1);
    *v48 = v128;
    v48[1] = v50;
    if (sub_27587C10C())
    {
      sub_2759B8878();
      *(v8 + v47) = sub_2759B8868();
    }

    sub_2758ED4E8(v8, v6);
    v51 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10418, &qword_2759C6CD8));
    v52 = sub_2759B9508();
    v53 = [v52 view];
    if (v53)
    {
      v54 = v53;
      [v53 setTranslatesAutoresizingMaskIntoConstraints_];

      [v1 addChildViewController_];
      v55 = [v1 view];
      if (v55)
      {
        v56 = v55;
        v57 = [v52 view];
        if (v57)
        {
          v58 = v57;
          [v56 addSubview_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_2759C6C20;
          v60 = [v52 view];
          if (v60)
          {
            v61 = v60;
            v62 = [v60 topAnchor];

            v63 = [v1 view];
            if (v63)
            {
              v64 = v63;
              v65 = [v63 topAnchor];

              v66 = [v62 constraintEqualToAnchor:v65 constant:-10.0];
              *(v59 + 32) = v66;
              v67 = [v52 view];
              if (v67)
              {
                v68 = v67;
                v125 = v8;
                v69 = [v67 bottomAnchor];

                v70 = [v1 view];
                if (v70)
                {
                  v71 = v70;
                  v72 = [v70 bottomAnchor];

                  v73 = [v69 constraintEqualToAnchor_];
                  *(v59 + 40) = v73;
                  v74 = [v52 view];
                  if (v74)
                  {
                    v75 = v74;
                    v76 = [v74 leadingAnchor];

                    v77 = [v1 view];
                    if (v77)
                    {
                      v78 = v77;
                      v79 = v49;
                      v80 = [v77 leadingAnchor];

                      v81 = [v76 constraintEqualToAnchor_];
                      *(v59 + 48) = v81;
                      v82 = [v52 view];

                      if (v82)
                      {
                        v83 = [v82 trailingAnchor];

                        v84 = [v1 view];
                        if (v84)
                        {
                          v85 = v84;
                          v86 = objc_opt_self();
                          v87 = [v85 trailingAnchor];

                          v88 = [v83 constraintEqualToAnchor_];
                          *(v59 + 56) = v88;
                          sub_275861AF8(0, &qword_280A10420, 0x277CCAAD0);
                          v89 = sub_2759BA3D8();

                          [v86 activateConstraints_];

                          [v52 didMoveToParentViewController_];
                          v90 = sub_27587C10C();
                          if (v90)
                          {
                            v91 = v90;
                            v92 = [v90 aa_needsToVerifyTerms];
                            v93 = v125;
                            if (v92)
                            {
                              if (qword_2815ADD30 != -1)
                              {
                                swift_once();
                              }

                              v94 = sub_2759B89A8();
                              __swift_project_value_buffer(v94, qword_2815ADE70);
                              v95 = sub_2759B8988();
                              v96 = sub_2759BA668();
                              if (os_log_type_enabled(v95, v96))
                              {
                                v97 = swift_slowAlloc();
                                *v97 = 0;
                                _os_log_impl(&dword_275819000, v95, v96, "User has not accepted t&c yet, launching the flow.", v97, 2u);
                                MEMORY[0x277C85860](v97, -1, -1);
                              }

                              v98 = [objc_opt_self() defaultStore];
                              v99 = [objc_allocWithZone(MEMORY[0x277CECA50]) initWithAccount:v91 inStore:v98];

                              if (v99)
                              {
                                [v99 setDelegate_];
                                [v99 presentFromViewController:v1 modal:1];
                              }
                            }

                            if (([v91 aa_isPrimaryEmailVerified] & 1) == 0)
                            {
                              if (qword_2815ADD30 != -1)
                              {
                                swift_once();
                              }

                              v100 = sub_2759B89A8();
                              __swift_project_value_buffer(v100, qword_2815ADE70);
                              v101 = sub_2759B8988();
                              v102 = sub_2759BA648();
                              if (os_log_type_enabled(v101, v102))
                              {
                                v103 = swift_slowAlloc();
                                *v103 = 0;
                                _os_log_impl(&dword_275819000, v101, v102, "Primary email is not verified for this apple account. Navigating user back.", v103, 2u);
                                MEMORY[0x277C85860](v103, -1, -1);
                              }

                              [v1 PREFIX_popViewController];
                            }

                            v104 = [v91 aa_suspensionInfo];
                            if (v104)
                            {
                              v105 = v104;
                              if ([v104 isiCloudSuspended])
                              {
                                if (qword_2815ADD30 != -1)
                                {
                                  swift_once();
                                }

                                v106 = sub_2759B89A8();
                                __swift_project_value_buffer(v106, qword_2815ADE70);
                                v107 = sub_2759B8988();
                                v108 = sub_2759BA648();
                                if (os_log_type_enabled(v107, v108))
                                {
                                  v109 = swift_slowAlloc();
                                  *v109 = 0;
                                  _os_log_impl(&dword_275819000, v107, v108, "iCloud is suspended for this apple account. Navigating user back.", v109, 2u);
                                  MEMORY[0x277C85860](v109, -1, -1);
                                }

                                [v1 PREFIX_popViewController];
                                sub_2758ED54C(v93);
                              }

                              else
                              {
                                sub_2758ED54C(v93);
                              }
                            }

                            else
                            {
                              sub_2758ED54C(v93);
                            }
                          }

                          else
                          {
                            sub_2758ED54C(v125);
                          }

                          return;
                        }

                        goto LABEL_89;
                      }

LABEL_88:
                      __break(1u);
LABEL_89:
                      __break(1u);
                      goto LABEL_90;
                    }

LABEL_87:
                    __break(1u);
                    goto LABEL_88;
                  }

LABEL_86:
                  __break(1u);
                  goto LABEL_87;
                }

LABEL_85:
                __break(1u);
                goto LABEL_86;
              }

LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v110 = sub_2759B89A8();
  __swift_project_value_buffer(v110, qword_2815ADE70);
  v111 = sub_2759B8988();
  v112 = sub_2759BA648();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_275819000, v111, v112, "No viewModel exist yet. Can't show iCloud settings.", v113, 2u);
    MEMORY[0x277C85860](v113, -1, -1);
  }
}

void sub_2758EC310(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_2815ADE70);

  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = v11;

      v13 = sub_2759BA1E8();
      v15 = sub_2758937B8(v13, v14, &v25);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_275819000, v8, v9, "handleURL: called w/ info: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v10, -1, -1);

LABEL_7:
      v16 = sub_2759BA518();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      sub_2759BA4C8();

      v17 = v1;
      v18 = sub_2759BA4B8();
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v17;
      v19[5] = a1;
      sub_27587D460(0, 0, v6, &unk_2759C6CE8, v19);

      return;
    }

    __break(1u);
  }

  else
  {

    if (a1)
    {
      goto LABEL_7;
    }

    v24 = sub_2759B8988();
    v21 = sub_2759BA648();
    if (os_log_type_enabled(v24, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_275819000, v24, v21, "handleURL called w/o any info. Bailing.", v22, 2u);
      MEMORY[0x277C85860](v22, -1, -1);
    }

    v23 = v24;
  }
}

uint64_t sub_2758EC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758EC6E4, v7, v6);
}

uint64_t sub_2758EC6E4()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = [v2 navigationController];
  if (v3)
  {
    v4 = v0[2];

    v5 = *(v4 + OBJC_IVAR___ICSHomeViewController_viewModel);
    if (v5)
    {
      v6._rawValue = v0[3];
      v7 = v5;
      iCloudHomeViewModel.handleDeeplink(resourceDictionary:)(v6);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_275819000, v9, v10, "Failed to obtain navigation controller. Will try it later.", v11, 2u);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v13 = v0[2];
    v12 = v0[3];

    v14 = *(v13 + OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo);
    *(v13 + OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo) = v12;
  }

  v15 = v0[1];

  return v15();
}

id iCloudHomeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2759BA258();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_2758EC9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758ECA78, v6, v5);
}

uint64_t sub_2758ECA78()
{
  v1 = v0[3];

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA648();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "genericTermsRemoteUI flow completed w/ no success. Navigating user back.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = v0[2];

  [v6 PREFIX_popViewController];
  v7 = v0[1];

  return v7();
}

NSObject *sub_2758ECCB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_2758EA384();
  v12 = [v11 accountForService_];

  if (!v12)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v38 = sub_2759B89A8();
    __swift_project_value_buffer(v38, qword_2815ADE70);
    v39 = a1;
    v12 = sub_2759B8988();
    v40 = sub_2759BA648();

    if (os_log_type_enabled(v12, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      v43 = sub_2759BA298();
      v45 = sub_2758937B8(v43, v44, &v48);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_275819000, v12, v40, "No account exist for serviceType: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x277C85860](v42, -1, -1);
      MEMORY[0x277C85860](v41, -1, -1);
    }

    goto LABEL_23;
  }

  v13 = OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager;
  v14 = [*(v5 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager) altDSIDForAccount:v12 service:a1];
  if (v14)
  {
    v47 = a4;
    v15 = a5;
    v16 = v14;
    v17 = sub_2759BA298();
    v19 = v18;

    if (v17 == a2 && v19 == a3)
    {
      goto LABEL_24;
    }

    v21 = sub_2759BAAC8();

    a5 = v15;
    a4 = v47;
    if (v21)
    {
      return v12;
    }
  }

  v22 = [*(v5 + v13) DSIDForAccount:v12 service:{a1, v47}];
  if (!v22)
  {
LABEL_14:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v29 = sub_2759B89A8();
    __swift_project_value_buffer(v29, qword_2815ADE70);
    v30 = a1;
    v31 = sub_2759B8988();
    v32 = sub_2759BA648();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315138;
      v35 = sub_2759BA298();
      v37 = sub_2758937B8(v35, v36, &v48);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_275819000, v31, v32, "No matching account found for serviceType: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x277C85860](v34, -1, -1);
      MEMORY[0x277C85860](v33, -1, -1);
    }

LABEL_23:
    return 0;
  }

  v23 = v22;
  v24 = sub_2759BA298();
  v26 = v25;

  if (v24 == a4 && v26 == a5)
  {
LABEL_24:

    return v12;
  }

  v28 = sub_2759BAAC8();

  if ((v28 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v12;
}

Swift::Void __swiftcall iCloudHomeViewController.popViewController()()
{
  v1 = v0;
  v2 = sub_2759BA1B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  sub_2759BA6F8();

  LOBYTE(v7) = sub_2759BA198();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7)
  {
    v9 = [v1 traitCollection];
    sub_2759BA6F8();

    sub_2759BA1A8();
    v8(v6, v2);
  }

  else
  {
    v10 = [v1 navigationController];
    if (v10)
    {
      v11 = v10;
    }
  }
}

void iCloudHomeViewController.recipe(dataclass:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for iCloudSettingsNavigationPathHelper();
  v4 = sub_2758EA438();
  static iCloudSettingsNavigationPathHelper.recipe(dataclass:accountManager:)(a1, v4, a2);
}

uint64_t sub_2758ED3BC(uint64_t a1)
{
  v2 = sub_2759B94D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B91D8();
}

void sub_2758ED484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2758787E8();
}

uint64_t sub_2758ED4A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2758ED4E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudHomeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758ED54C(uint64_t a1)
{
  v2 = type metadata accessor for iCloudHomeView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2758ED5A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758EC64C(a1, v4, v5, v7, v6);
}

void sub_2758ED668()
{
  *(v0 + OBJC_IVAR___ICSHomeViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo) = 0;
  *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager) = 0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR___ICSHomeViewController_accountStore) = v1;
  *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager) = 0;
  sub_2759BA9D8();
  __break(1u);
}

void sub_2758ED728(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  if (a1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v17 = sub_2759B8988();
    v8 = sub_2759BA668();
    if (os_log_type_enabled(v17, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_275819000, v17, v8, "genericTermsRemoteUI flow completed successfully.", v9, 2u);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    v10 = v17;
  }

  else
  {
    v11 = sub_2759BA518();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_2759BA4C8();
    v12 = v1;
    v13 = sub_2759BA4B8();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    sub_27587D460(0, 0, v6, &unk_2759C6D38, v14);
  }
}

void sub_2758ED930(uint64_t a1)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);

  oslog = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = v5;

    v7 = sub_2759BA1E8();
    v9 = sub_2758937B8(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_275819000, oslog, v3, "genericTermsRemoteUI flow completed w/ termsInfo: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t _s14iCloudSettings01iA18HomeViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0()
{
  v1 = v0;
  v25 = MEMORY[0x277D84F98];
  v2 = sub_2758EA384();
  v3 = *MEMORY[0x277CED1A0];
  v4 = [v2 accountForService_];

  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_2758CDF90(v4, v5);
    v7 = OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager;
    v8 = [*(v1 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager) altDSIDForAccount:v6 service:v5];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2759BA298();
      v12 = v11;

      v13 = [*(v1 + v7) DSIDForAccount:v6 service:v5];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2759BA298();
        v17 = v16;

        v18 = *MEMORY[0x277CED1B0];
        v19 = sub_2758ECCB8(*MEMORY[0x277CED1B0], v10, v12, v15, v17);

        if (v19)
        {
          v20 = v19;
          sub_2758CDF90(v19, v18);
        }
      }

      else
      {
      }
    }
  }

  v21 = *(v1 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager);
  v22 = *MEMORY[0x277CED1C0];
  v23 = [v21 accountForService_];
  if (v23)
  {
    sub_2758CDF90(v23, v22);
  }

  return v25;
}

uint64_t sub_2758EDCB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_2758EC9E0(a1, v4, v5, v6);
}

uint64_t sub_2758EDDB0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104B8, &qword_2759C6DF0);
  v6 = *(v5 - 8);
  v35 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104C0, &qword_2759C6DF8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  *v17 = sub_2759B94F8();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104C8, &unk_2759C6E00);
  sub_2758EE1A8(a1, a2, &v17[*(v18 + 44)]);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2758EF20C;
  *(v21 + 24) = v19;
  v41 = sub_2758F00BC;
  v42 = v21;
  swift_retain_n();
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D0, &qword_2759D0E70);
  sub_2759B9D58();
  v39 = sub_2758EF214;
  v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D8, &qword_2759C6E10);
  sub_27589B02C(&qword_280A104E0, &qword_280A104D8, &qword_2759C6E10);
  v22 = v11;
  sub_2759B9B38();

  v23 = swift_allocObject();
  v25 = v34;
  v24 = v35;
  *(v23 + 16) = v34;
  *(v23 + 24) = a2;
  v26 = (v22 + *(v24 + 44));
  *v26 = sub_2758F0124;
  v26[1] = v23;
  v26[2] = 0;
  v26[3] = 0;
  v27 = v38;
  sub_27586FBC8(v17, v38, &qword_280A104C0, &qword_2759C6DF8);
  v28 = v36;
  sub_27586FBC8(v22, v36, &qword_280A104B8, &qword_2759C6DF0);
  v29 = v27;
  v30 = v37;
  sub_27586FBC8(v29, v37, &qword_280A104C0, &qword_2759C6DF8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104E8, &qword_2759C6E18);
  sub_27586FBC8(v28, v30 + *(v31 + 48), &qword_280A104B8, &qword_2759C6DF0);
  v32 = v25;

  sub_27586BF04(v22, &qword_280A104B8, &qword_2759C6DF0);
  sub_27586BF04(v17, &qword_280A104C0, &qword_2759C6DF8);
  sub_27586BF04(v28, &qword_280A104B8, &qword_2759C6DF0);
  return sub_27586BF04(v38, &qword_280A104C0, &qword_2759C6DF8);
}

uint64_t sub_2758EE1A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104F0, &qword_2759C6E50);
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v5);
  v79 = (&v78 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104F8, &qword_2759C6E58);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v91 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v78 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10500, &qword_2759C9C10);
  v17 = *(*(v82 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v82);
  v87 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v78 - v21;
  MEMORY[0x28223BE20](v20);
  v86 = &v78 - v23;
  v84 = a1;
  v94 = a1;
  v95 = a2;
  v85 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v24 = v98;
  swift_getKeyPath();
  v94 = v24;
  v80 = sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v25 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v26 = *&v24[v25];
  v27 = v26;

  v90 = v13;
  if (v26)
  {
    v28 = *&v27[OBJC_IVAR___ICSHomeDataModel_upsellCard];
    v29 = v28;

    if (v28)
    {
      v28 = *&v29[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title];
      v30 = *&v29[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title + 8];

      goto LABEL_6;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 0xE000000000000000;
LABEL_6:
  v94 = v28;
  v95 = v30;
  sub_27589F2D4();
  v31 = sub_2759B99C8();
  v33 = v32;
  v35 = v34;
  sub_2759B98F8();
  v36 = sub_2759B9988();
  v38 = v37;
  v40 = v39;

  sub_27589F328(v31, v33, v35 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v94 = qword_280A239B8;

  v41 = sub_2759B9958();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_27589F328(v36, v38, v40 & 1);

  v94 = v41;
  v95 = v43;
  v96 = v45 & 1;
  v97 = v47;
  v48 = v83;
  sub_2759B9B38();
  sub_27589F328(v41, v43, v45 & 1);

  v49 = sub_2759B97E8();
  sub_2759B8D78();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_27589F26C(v48, v22, &qword_280A0F600, &qword_2759C4210);
  v58 = &v22[*(v82 + 36)];
  *v58 = v49;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  v59 = v22;
  v60 = v86;
  sub_27589F26C(v59, v86, &qword_280A10500, &qword_2759C9C10);
  v94 = v84;
  v95 = v85;
  sub_2759B9D68();
  v61 = v93;
  swift_getKeyPath();
  v94 = v61;
  sub_2759B8638();

  v62 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v63 = *&v61[v62];
  v64 = v63;

  if (v63)
  {
    v65 = *&v64[OBJC_IVAR___ICSHomeDataModel_upsellCard];
    v66 = v65;

    v67 = v90;
    if (v65)
    {
      v68 = *&v66[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_features];

      v69 = sub_2759B94F8();
      v70 = v79;
      *v79 = v69;
      *(v70 + 8) = 0;
      *(v70 + 16) = 0;
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10510, &unk_2759C6E68) + 44);
      v93 = v68;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10518, &qword_2759C6E90);
      sub_27589B02C(&qword_280A10520, &qword_280A10518, &qword_2759C6E90);
      sub_2758F07C0(&qword_280A10528, type metadata accessor for Feature);
      sub_2758F012C();
      sub_2759B9ED8();
      sub_27589F26C(v70, v67, &qword_280A104F0, &qword_2759C6E50);
      v72 = 0;
    }

    else
    {
      v72 = 1;
    }
  }

  else
  {
    v72 = 1;
    v67 = v90;
  }

  (*(v88 + 56))(v67, v72, 1, v89);
  v73 = v87;
  sub_27586FBC8(v60, v87, &qword_280A10500, &qword_2759C9C10);
  v74 = v91;
  sub_27586FBC8(v67, v91, &qword_280A104F8, &qword_2759C6E58);
  v75 = v92;
  sub_27586FBC8(v73, v92, &qword_280A10500, &qword_2759C9C10);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10508, &qword_2759C6E60);
  sub_27586FBC8(v74, v75 + *(v76 + 48), &qword_280A104F8, &qword_2759C6E58);
  sub_27586BF04(v67, &qword_280A104F8, &qword_2759C6E58);
  sub_27586BF04(v60, &qword_280A10500, &qword_2759C9C10);
  sub_27586BF04(v74, &qword_280A104F8, &qword_2759C6E58);
  return sub_27586BF04(v73, &qword_280A10500, &qword_2759C9C10);
}

id sub_2758EEA24@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_2758EEA30(void *a1, void *a2)
{
  v16[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  v16[2] = v16[0];
  sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v5 = *(v16[0] + v4);
  v6 = v5;

  if (v5 && (v7 = *&v6[OBJC_IVAR___ICSHomeDataModel_upsellCard], v8 = v7, v6, v7))
  {
    v9 = *&v8[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action];

    v16[0] = a1;
    v16[1] = a2;
    sub_2759B9D68();
    v10 = v15;
    LOBYTE(v16[0]) = 24;
    LOBYTE(v15) = 7;
    sub_27590A460(v9, 1, v16, &v15, 0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v11 = sub_2759B89A8();
    __swift_project_value_buffer(v11, qword_2815ADE70);
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_275819000, v12, v13, "No action found for getMoreWithiCloudPlus section.", v14, 2u);
      MEMORY[0x277C85860](v14, -1, -1);
    }
  }
}

uint64_t sub_2758EEC70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v0 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v1 = *&v14[v0];
  v2 = v1;

  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *&v2[OBJC_IVAR___ICSHomeDataModel_upsellCard];
  v4 = v3;

  if (!v3 || (v5 = *&v4[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action], v4, v7 = *&v5[OBJC_IVAR____TtC14iCloudSettings6Action_title], v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings6Action_title + 8], , v5, !v6))
  {
LABEL_4:
  }

  sub_27589F2D4();
  v8 = sub_2759B99C8();
  v10 = v9;
  v12 = v11 & 1;
  sub_2759B9B38();
  sub_27589F328(v8, v10, v12);
}

void sub_2758EEE60(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v8 = v26;
  swift_getKeyPath();
  v28 = v8;
  sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v9 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v10 = *&v8[v9];
  v11 = v10;

  if (v10)
  {
    v12 = *&v11[OBJC_IVAR___ICSHomeDataModel_upsellCard];
    v13 = v12;

    if (v12)
    {
      v14 = *&v13[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action];

      v15 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_type];
      v16 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_type + 8];
      v17 = sub_2759BA258();
      v18 = _ICQActionForString();

      if ((v18 - 114) > 0xD || ((1 << (v18 - 114)) & 0x20F1) == 0)
      {
      }

      else
      {
        v26 = a1;
        v27 = a2;
        sub_2759B9D68();
        v20 = v25;
        v21 = *&v25[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];

        sub_2759BA4D8();
        v22 = sub_2759BA518();
        (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = v23;
        *(v24 + 40) = 24;
        sub_275931D20(0, 0, v7, &unk_2759C3740, v24);

        sub_27586BF04(v7, &unk_280A0E510, &qword_2759C33C0);
      }
    }
  }
}

uint64_t sub_2758EF15C()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104A8, &qword_2759C6DE8);
  sub_27589B02C(&qword_280A104B0, &qword_280A104A8, &qword_2759C6DE8);
  return sub_2759B9F38();
}

uint64_t sub_2758EF214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2758EEC70();
}

uint64_t sub_2758EF21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F728, &qword_2759C4380);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10558, &qword_2759C6F40);
  v57 = *(v59 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v17 = &v56 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10560, &qword_2759C6F48);
  v18 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v20 = &v56 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10568, &qword_2759C6F50);
  v21 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v23 = &v56 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10570, &qword_2759C6F58);
  v24 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v26 = &v56 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10578, &qword_2759C6F60);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v56 - v29;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10580, &qword_2759C6F68);
  v31 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v33 = &v56 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10588, &qword_2759C6F70);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v64 = &v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v62 = &v56 - v38;
  if ((sub_2759B9F98() & 1) != 0 && (v39 = sub_2758F0B74(*(v67 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId), *(v67 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8))) != 0)
  {
    v40 = v39;
    sub_2758F0A2C();
    sub_2759B8888();
    sub_2759BA028();
    sub_2759B8F18();
    v41 = &v30[*(v27 + 36)];
    v42 = v69;
    *v41 = v68;
    *(v41 + 1) = v42;
    *(v41 + 2) = v70;
    sub_2758F0974();
    sub_2759B9B38();
    sub_27586BF04(v30, &qword_280A10578, &qword_2759C6F60);
    sub_27586FBC8(v33, v26, &qword_280A10580, &qword_2759C6F68);
    swift_storeEnumTagMultiPayload();
    sub_2758F08C0(&qword_280A105C0, &qword_280A10580, &qword_2759C6F68, sub_2758F0974);
    sub_2758F08C0(&qword_280A105D0, &qword_280A10568, &qword_2759C6F50, sub_2758F0808);
    v43 = v62;
    sub_2759B95E8();

    v44 = v33;
    v45 = &qword_280A10580;
    v46 = &qword_2759C6F68;
  }

  else
  {
    if (*(v67 + OBJC_IVAR____TtC14iCloudSettings7Feature_icons))
    {
      sub_2759889A0(v14);
    }

    else
    {
      v47 = sub_2759B8508();
      (*(*(v47 - 8) + 56))(v14, 1, 1, v47);
    }

    sub_27586FBC8(v14, v12, &unk_280A0EB10, &qword_2759C0740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10590, &qword_2759C6F78);
    sub_2758F064C();
    sub_2759B8D38();
    sub_27586BF04(v14, &unk_280A0EB10, &qword_2759C0740);
    sub_2759BA028();
    sub_2759B8F18();
    (*(v57 + 32))(v20, v17, v59);
    v48 = &v20[*(v58 + 36)];
    v49 = v69;
    *v48 = v68;
    *(v48 + 1) = v49;
    *(v48 + 2) = v70;
    sub_2758F0808();
    sub_2759B9B38();
    sub_27586BF04(v20, &qword_280A10560, &qword_2759C6F48);
    sub_27586FBC8(v23, v26, &qword_280A10568, &qword_2759C6F50);
    swift_storeEnumTagMultiPayload();
    sub_2758F08C0(&qword_280A105C0, &qword_280A10580, &qword_2759C6F68, sub_2758F0974);
    sub_2758F08C0(&qword_280A105D0, &qword_280A10568, &qword_2759C6F50, sub_2758F0808);
    v43 = v62;
    sub_2759B95E8();
    v44 = v23;
    v45 = &qword_280A10568;
    v46 = &qword_2759C6F50;
  }

  sub_27586BF04(v44, v45, v46);
  *v7 = sub_2759B94F8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F740, &qword_2759C4398);
  sub_2758EFAC0(v67, &v7[*(v50 + 44)]);
  v51 = v64;
  sub_27586FBC8(v43, v64, &qword_280A10588, &qword_2759C6F70);
  v52 = v65;
  sub_27586FBC8(v7, v65, &qword_280A0F728, &qword_2759C4380);
  v53 = v66;
  sub_27586FBC8(v51, v66, &qword_280A10588, &qword_2759C6F70);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A105D8, &unk_2759C6F90);
  sub_27586FBC8(v52, v53 + *(v54 + 48), &qword_280A0F728, &qword_2759C4380);
  sub_27586BF04(v7, &qword_280A0F728, &qword_2759C4380);
  sub_27586BF04(v43, &qword_280A10588, &qword_2759C6F70);
  sub_27586BF04(v52, &qword_280A0F728, &qword_2759C4380);
  return sub_27586BF04(v51, &qword_280A10588, &qword_2759C6F70);
}

uint64_t sub_2758EFAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v62 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v60 = &v58 - v11;
  v59 = a1;
  v12 = (a1 + OBJC_IVAR____TtC14iCloudSettings7Feature_title);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v65 = v13;
  v66 = v14;
  sub_27589F2D4();

  v15 = sub_2759B99C8();
  v17 = v16;
  v19 = v18;
  sub_2759B9858();
  v20 = sub_2759B9988();
  v22 = v21;
  v24 = v23;

  sub_27589F328(v15, v17, v19 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v65 = qword_280A239B8;

  v25 = sub_2759B9958();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_27589F328(v20, v22, v24 & 1);

  v65 = v25;
  v66 = v27;
  v67 = v29 & 1;
  v68 = v31;
  v32 = v60;
  sub_2759B9B38();
  sub_27589F328(v25, v27, v29 & 1);

  v33 = (v59 + OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle);
  swift_beginAccess();
  v34 = v33[1];
  v65 = *v33;
  v66 = v34;

  v35 = sub_2759B99C8();
  v37 = v36;
  LOBYTE(v27) = v38;
  sub_2759B9848();
  v39 = sub_2759B9988();
  v41 = v40;
  v43 = v42;

  sub_27589F328(v35, v37, v27 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v65 = qword_280A239C0;

  v44 = sub_2759B9958();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_27589F328(v39, v41, v43 & 1);

  v65 = v44;
  v66 = v46;
  v51 = v48 & 1;
  v67 = v48 & 1;
  v68 = v50;
  v52 = v61;
  sub_2759B9B38();
  sub_27589F328(v44, v46, v51);

  v53 = v62;
  sub_27586FBC8(v32, v62, &qword_280A0F600, &qword_2759C4210);
  v54 = v64;
  sub_27586FBC8(v52, v64, &qword_280A0F600, &qword_2759C4210);
  v55 = v63;
  sub_27586FBC8(v53, v63, &qword_280A0F600, &qword_2759C4210);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F750, &qword_2759C43A8);
  sub_27586FBC8(v54, v55 + *(v56 + 48), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v52, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v32, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v54, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v53, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2758EFFE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_2759B9418();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10548, &qword_2759C6F30);
  sub_2758EF21C(v3, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_2759B9828();
  sub_2759B8D78();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10550, &qword_2759C6F38);
  v14 = a1 + *(result + 36);
  *v14 = v3;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_2758F00BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2758F012C()
{
  result = qword_280A10530;
  if (!qword_280A10530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10530);
  }

  return result;
}

unint64_t sub_2758F0190()
{
  result = qword_280A10538;
  if (!qword_280A10538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10540, &qword_2759C6ED8);
    sub_27589B02C(&qword_280A104B0, &qword_280A104A8, &qword_2759C6DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10538);
  }

  return result;
}

uint64_t sub_2758F0268@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD08, &qword_2759C56A0);
  v21[0] = *(v22 - 8);
  v1 = *(v21[0] + 64);
  MEMORY[0x28223BE20](v22);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A105E0, &qword_2759C6FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  v8 = sub_2759B9CC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A105A8, &unk_2759C6F80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  if (sub_2759B9088())
  {
    (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
    v17 = sub_2759B9D28();
    (*(v9 + 8))(v12, v8);
    v23 = v17;
    sub_2759B9B38();

    sub_27586FBC8(v16, v7, &qword_280A105A8, &unk_2759C6F80);
    swift_storeEnumTagMultiPayload();
    sub_2758F0704();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    sub_2759B95E8();

    return sub_27586BF04(v16, &qword_280A105A8, &unk_2759C6F80);
  }

  else
  {
    sub_2759B8E88();
    v19 = v21[0];
    v20 = v22;
    (*(v21[0] + 16))(v7, v3, v22);
    swift_storeEnumTagMultiPayload();
    sub_2758F0704();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    sub_2759B95E8();
    return (*(v19 + 8))(v3, v20);
  }
}

unint64_t sub_2758F064C()
{
  result = qword_280A10598;
  if (!qword_280A10598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10590, &qword_2759C6F78);
    sub_2758F0704();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10598);
  }

  return result;
}

unint64_t sub_2758F0704()
{
  result = qword_280A105A0;
  if (!qword_280A105A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A105A8, &unk_2759C6F80);
    sub_2758F07C0(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105A0);
  }

  return result;
}

uint64_t sub_2758F07C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2758F0808()
{
  result = qword_280A105B0;
  if (!qword_280A105B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10560, &qword_2759C6F48);
    sub_27589B02C(&qword_280A105B8, &qword_280A10558, &qword_2759C6F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105B0);
  }

  return result;
}

uint64_t sub_2758F08C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2758F07C0(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2758F0974()
{
  result = qword_280A105C8;
  if (!qword_280A105C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10578, &qword_2759C6F60);
    sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105C8);
  }

  return result;
}

id sub_2758F0A2C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:24.0 scale:{24.0, v2}];
  v4 = objc_opt_self();
  v5 = [v4 currentTraitCollection];
  v6 = [v5 layoutDirection];

  if (v6 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v3 setLanguageDirection_];
  v8 = [v4 currentTraitCollection];
  v9 = [v8 accessibilityContrast];

  [v3 setContrast_];
  [v3 setDrawBorder_];
  return v3;
}

id sub_2758F0B74(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  iCloudPlusFeature.init(rawValue:)(v4);
  if (v9 > 5u && v9 != 6)
  {
    return 0;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_2759BA258();

  v8 = [v6 initWithType_];

  return v8;
}

unint64_t sub_2758F0CDC()
{
  result = qword_280A105E8;
  if (!qword_280A105E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10550, &qword_2759C6F38);
    sub_27589B02C(&qword_280A105F0, &qword_280A105F8, qword_2759C6FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105E8);
  }

  return result;
}

uint64_t sub_2758F0DF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2758F0E18, 0, 0);
}

uint64_t sub_2758F0E18()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_urlHelper);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2758F0ECC;
  v2 = v0[2];

  return sub_2758B5DEC(v2);
}

uint64_t sub_2758F0ECC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (!v0)
  {
    v4 = v3[4];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2758F1008, 0, 0);
}

uint64_t sub_2758F1008()
{
  v1 = v0[4];

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238E8);
  v4 = v2;
  v5 = sub_2759B8988();
  v6 = sub_2759BA648();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_275819000, v5, v6, "Unable to add attribution to AMS Flow %@", v9, 0xCu);
    sub_275875554(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2758F11A4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2758F11C4, 0, 0);
}

uint64_t sub_2758F11C4()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_urlHelper);
  v0[5] = v2;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  type metadata accessor for AMSParserURLType(0);
  *v5 = v0;
  v5[1] = sub_2758F12D8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x80000002759E0CE0, sub_2758F1AA0, v3, v6);
}

uint64_t sub_2758F12D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2758F1464;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2758F13F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2758F13F4()
{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[8] != 0;
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_2758F1464()
{
  v1 = v0[5];
  v2 = v0[6];

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = v3;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_275819000, v6, v7, "Unable to parse url to determine flowController type. %@", v10, 0xCu);
    sub_275875554(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[8] != 0;
  v15 = v0[1];

  return v15(0, v14);
}

uint64_t sub_2758F1618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 == 2)
  {
    v5 = type metadata accessor for DynamicUIFlowController();
    v6 = &off_288483EF0;
  }

  else
  {
    if (a2 != 1)
    {
      if (qword_280A0E358 != -1)
      {
        swift_once();
      }

      v23 = sub_2759B89A8();
      __swift_project_value_buffer(v23, qword_280A238E8);
      v24 = sub_2759B8988();
      v25 = sub_2759BA648();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = a2;
        _os_log_impl(&dword_275819000, v24, v25, "Unable to get flow controller presenterType: %ld", v26, 0xCu);
        MEMORY[0x277C85860](v26, -1, -1);
      }

      return 0;
    }

    v5 = type metadata accessor for WebViewFlowControllerProvider();
    v6 = &off_288485080;
  }

  [objc_allocWithZone(v5) init];
  v7 = v3 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowControllerProvider;
  *(v3 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowControllerProvider + 8) = v6;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = swift_unknownObjectRetain();
    v10(v11, &off_288482248, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v7 + 8);
    v13 = swift_getObjectType();
    v14 = *(v12 + 32);
    v15 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_account);
    v16 = v14(a1, v15, v13, v12);
    swift_unknownObjectRelease();

    if (v16)
    {
      swift_unknownObjectRelease();
      return v16;
    }
  }

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v18 = sub_2759B89A8();
  __swift_project_value_buffer(v18, qword_280A238E8);
  v19 = sub_2759B8988();
  v20 = sub_2759BA648();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_275819000, v19, v20, "Unable to determine a controller to present AMSFlow.", v21, 2u);
    MEMORY[0x277C85860](v21, -1, -1);
  }

  swift_unknownObjectRelease();
  return 0;
}

id sub_2758F193C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommerceFlowManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2758F1A10(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowCompletionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2758F1AA8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowControllerProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowCompletionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_amsBag] = a2;
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_account] = a1;
  type metadata accessor for CommerceFlowHelper();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = objc_allocWithZone(MEMORY[0x277CEE6C8]);
  v7 = a2;
  v8 = a1;
  *(v5 + 24) = [v6 initWithBag_];
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_urlHelper] = v5;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CommerceFlowManager();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_2758F1BD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10628, &unk_2759C70F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v18 = a1;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v11 = v17[1];
  swift_getKeyPath();
  v18 = v11;
  sub_2758F5660(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_8;
  }

  v13 = sub_275883098();

  if (!v13)
  {
    goto LABEL_8;
  }

  if (v13 >> 62)
  {
    v14 = sub_2759BA9E8();
    if (v14 >= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14 < 1)
  {
LABEL_7:

LABEL_8:
    v15 = 1;
    return (*(v7 + 56))(a3, v15, 1, v6);
  }

LABEL_5:
  MEMORY[0x28223BE20](v14);
  v17[-4] = v13;
  v17[-3] = a1;
  v17[-2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10630, &qword_2759C7128);
  sub_2758F54C4(&qword_280A10638, &qword_280A10630, &qword_2759C7128, sub_2758F2300);
  sub_2759B9F38();

  (*(v7 + 32))(a3, v10, v6);
  v15 = 0;
  return (*(v7 + 56))(a3, v15, 1, v6);
}

uint64_t sub_2758F1E8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10658, &qword_2759C7138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10648, &qword_2759C7130);
  sub_27589B02C(&qword_280A10660, &qword_280A10658, &qword_2759C7138);
  sub_2758F2300();
  sub_2758F5660(&qword_280A10668, type metadata accessor for ManageStorageSpecifier);
  return sub_2759B9EE8();
}

id sub_2758F1FE4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v7 = v6;
  sub_2759B9D58();
  sub_2759B9D58();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v7;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = sub_2758F23E8;
  *(a4 + 48) = v8;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;

  v9 = v7;

  return a2;
}

uint64_t sub_2758F2104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - v9;
  v11 = *(*(a1 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType) - 114;
  v12 = v11 > 0xD;
  v13 = (1 << v11) & 0x20F1;
  if (!v12 && v13 != 0)
  {
    v22 = a2;
    v23 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v15 = v21;
    v16 = *&v21[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    sub_2759BA4D8();
    v17 = sub_2759BA518();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v18;
    *(v19 + 40) = 15;
    sub_275931D20(0, 0, v10, &unk_2759C3740, v19);

    return sub_27586BF04(v10, &unk_280A0E510, &qword_2759C33C0);
  }

  return result;
}

unint64_t sub_2758F2300()
{
  result = qword_280A10640;
  if (!qword_280A10640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10648, &qword_2759C7130);
    sub_2758F238C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10640);
  }

  return result;
}

unint64_t sub_2758F238C()
{
  result = qword_280A10650;
  if (!qword_280A10650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10650);
  }

  return result;
}

uint64_t sub_2758F23F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10688, &qword_2759C7200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10690, &qword_2759C7208);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v31 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10698, &unk_2759C7210);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v13 = &v31 - v12;
  v14 = *(*(*(v1 + 16) + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation);
  if (v14)
  {
    v42 = v11;
    v38 = v13;
    v15 = v14;
    sub_2758F2990(v9);
    v41 = v6;
    v16 = *&v15[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title + 8];
    v46 = *&v15[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title];
    v47 = v16;
    v45 = *(v1 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    v17 = sub_2759B9D88();
    v37 = &v31;
    v34 = v49;
    v35 = v50;
    v18 = MEMORY[0x28223BE20](v17);
    v40 = v15;
    MEMORY[0x28223BE20](v18);
    v39 = a1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F288, &unk_2759C3730);
    v19 = sub_2758F526C();
    v20 = sub_27589F2D4();
    v36 = v3;
    v33 = v20;
    v30 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    v21 = v44;
    v22 = v38;
    sub_2759B9B58();

    sub_27586BF04(v9, &qword_280A10690, &qword_2759C7208);
    v23 = v42;
    v24 = v43;
    (*(v42 + 16))(v41, v22, v43);
    swift_storeEnumTagMultiPayload();
    v48 = v21;
    v49 = MEMORY[0x277D837D0];
    v50 = v32;
    v51 = MEMORY[0x277CE0BD8];
    v52 = v19;
    v53 = v33;
    v54 = v30;
    v55 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2759B95E8();

    return (*(v23 + 8))(v22, v24);
  }

  else
  {
    sub_2758F2990(v9);
    sub_27586FBC8(v9, v6, &qword_280A10690, &qword_2759C7208);
    swift_storeEnumTagMultiPayload();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    v27 = sub_2758F526C();
    v28 = sub_27589F2D4();
    v29 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    v48 = v44;
    v49 = MEMORY[0x277D837D0];
    v50 = v26;
    v51 = MEMORY[0x277CE0BD8];
    v52 = v27;
    v53 = v28;
    v54 = v29;
    v55 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2759B95E8();
    return sub_27586BF04(v9, &qword_280A10690, &qword_2759C7208);
  }
}

uint64_t sub_2758F2990@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106D0, &qword_2759C7230);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106C0, &qword_2759C7228);
  v6 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106F0, &qword_2759C7260);
  v9 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106B0, &qword_2759C7220);
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v32);
  v15 = &v29 - v14;
  v16 = *(v1 + 16);
  v17 = *v1;
  if (*(*&v16[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action] + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDefault) == 1)
  {
    v37 = *(v1 + 8);
    v36 = *(v1 + 24);
    v18 = swift_allocObject();
    v30 = &v29;
    v19 = *(v1 + 16);
    *(v18 + 16) = *v1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(v1 + 32);
    MEMORY[0x28223BE20](v18);
    *(&v29 - 2) = v1;
    v20 = v17;
    sub_27586FBC8(&v37, v35, &qword_280A106E8, &unk_2759C7250);
    v21 = v16;
    sub_27586FBC8(&v36, v35, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10708, &qword_2759C7270);
    sub_27589B02C(&qword_280A10710, &qword_280A10708, &qword_2759C7270);
    sub_2759B9DB8();
    v22 = v32;
    (*(v12 + 16))(v11, v15, v32);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A106A8, &qword_280A106B0, &qword_2759C7220);
    sub_2758F5324();
    sub_2759B95E8();
    return (*(v12 + 8))(v15, v22);
  }

  else
  {
    v37 = *(v1 + 8);
    v36 = *(v1 + 24);
    v24 = swift_allocObject();
    v30 = &v29;
    v25 = *(v1 + 16);
    *(v24 + 16) = *v1;
    *(v24 + 32) = v25;
    *(v24 + 48) = *(v1 + 32);
    MEMORY[0x28223BE20](v24);
    *(&v29 - 2) = v1;
    v29 = v16;
    v26 = v17;
    sub_27586FBC8(&v37, v35, &qword_280A106E8, &unk_2759C7250);
    sub_27586FBC8(&v36, v35, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106F8, &qword_2759C7268);
    sub_27589B02C(&qword_280A10700, &qword_280A106F8, &qword_2759C7268);
    sub_2759B9DB8();
    *&v5[*(v2 + 36)] = sub_2759B9668();
    v27 = *&v29[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title];
    v28 = *&v29[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title + 8];
    sub_2758F53E0();
    sub_2759B9B38();
    sub_27586BF04(v5, &qword_280A106D0, &qword_2759C7230);
    sub_27586FBC8(v8, v11, &qword_280A106C0, &qword_2759C7228);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A106A8, &qword_280A106B0, &qword_2759C7220);
    sub_2758F5324();
    sub_2759B95E8();
    return sub_27586BF04(v8, &qword_280A106C0, &qword_2759C7228);
  }
}

uint64_t sub_2758F2F78(uint64_t a1, uint64_t a2)
{
  v11 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions);
  v3 = *a2;
  v13 = *(a2 + 8);
  v4 = *(a2 + 16);
  v12 = *(a2 + 24);
  v5 = swift_allocObject();
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);

  v7 = v3;
  sub_27586FBC8(&v13, v10, &qword_280A106E8, &unk_2759C7250);
  v8 = v4;
  sub_27586FBC8(&v12, v10, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638);
  sub_27589F670();
  sub_2758F5660(&qword_280A0F228, type metadata accessor for ManageStorageAction);
  return sub_2759B9EE8();
}

uint64_t sub_2758F3118@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v12 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v6 = (*(a2 + 2) + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5;

  result = sub_2759B9D58();
  *a3 = v11;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v12;
  *(a3 + 40) = *(&v12 + 1);
  return result;
}

void sub_2758F31DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = *(v0 + 2);
  v6 = *(v5 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action);
  if (*(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
    v21 = *(v0 + 24);
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D78();
    v21 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v7 = v20;
    v8 = *&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    v10 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
    v9 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v11 = sub_2759BA518();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v12;
    *(v13 + 40) = xmmword_2759C3450;
    *(v13 + 56) = 3850;
    *(v13 + 58) = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 80) = v10;
    *(v13 + 88) = v9;
    *(v13 + 96) = 8;

    sub_275931D20(0, 0, v4, &unk_2759C4530, v13);
    swift_bridgeObjectRelease_n();

    sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v21 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v14 = v20;
    v15 = sub_2758A1CD0();
    LOBYTE(v21) = 15;
    v16 = *(v5 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier);
    v17 = *(v5 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier + 8);

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    iCloudPlusFeature.init(rawValue:)(v18);
    ManageStorageAppsListViewModel.performAction(_:componentContext:featureContext:)(v15, &v21, &v20);
  }
}

uint64_t sub_2758F34C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10728, &qword_2759C7288);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = *(a1 + 2);
  v15 = *(v14 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title + 8);
  *&v44 = *(v14 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title);
  *(&v44 + 1) = v15;
  sub_27589F2D4();

  v16 = sub_2759B99C8();
  v18 = v17;
  v40 = v19;
  v41 = v20;
  v44 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v21 = v43;
  swift_getKeyPath();
  *&v44 = v21;
  sub_2758F5660(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v38 = v4;
    v23 = v14 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier;
    v24 = *(v14 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier);
    v25 = *(v23 + 8);
    swift_getKeyPath();
    *&v44 = Strong;
    sub_2758F5660(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    v26 = sub_2759AA368(v24, v25, *&Strong[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview]);

    if (v26)
    {
      v27 = v39;
      sub_2759B8E88();
      v28 = sub_2759B9808();
      sub_2759B8D78();
      v4 = v38;
      v29 = v27 + *(v38 + 36);
      *v29 = v28;
      *(v29 + 8) = v30;
      *(v29 + 16) = v31;
      *(v29 + 24) = v32;
      *(v29 + 32) = v33;
      *(v29 + 40) = 0;
      sub_2758F56A8(v27, v13);
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v4 = v38;
    }
  }

  else
  {
    v34 = 1;
  }

  (*(v42 + 56))(v13, v34, 1, v4);
  sub_27586FBC8(v13, v11, &qword_280A10728, &qword_2759C7288);
  *a2 = v16;
  *(a2 + 8) = v18;
  v35 = v40 & 1;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10730, &unk_2759C72B8);
  sub_27586FBC8(v11, a2 + *(v36 + 64), &qword_280A10728, &qword_2759C7288);
  sub_27589F3E4(v16, v18, v35);

  sub_27586BF04(v13, &qword_280A10728, &qword_2759C7288);
  sub_27586BF04(v11, &qword_280A10728, &qword_2759C7288);
  sub_27589F328(v16, v18, v35);
}

uint64_t sub_2758F38F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_2759B9418();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 44);
  return a4(a1);
}

uint64_t sub_2758F3960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10740, &qword_2759C72D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v66 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10748, &qword_2759C72D8);
  v7 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v76 = (&v66 - v8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  v9 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v66 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10750, &qword_2759C72E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v66 - v15;
  v16 = *(a1 + 16);
  v17 = *(v16 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title + 8);
  *&v83 = *(v16 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title);
  *(&v83 + 1) = v17;
  sub_27589F2D4();

  v18 = sub_2759B99C8();
  v20 = v19;
  v22 = v21;
  LODWORD(v83) = sub_2759B9668();
  v23 = sub_2759B9958();
  v77 = v24;
  v78 = v23;
  v70 = v25;
  v79 = v26;
  sub_27589F328(v18, v20, v22 & 1);

  v27 = *(v16 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_subTitle + 8);
  *&v83 = *(v16 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_subTitle);
  *(&v83 + 1) = v27;

  v28 = sub_2759B99C8();
  v30 = v29;
  LOBYTE(v20) = v31;
  LODWORD(v83) = sub_2759B9688();
  v32 = sub_2759B9958();
  v71 = v33;
  v72 = v32;
  v69 = v34;
  v73 = v35;
  sub_27589F328(v28, v30, v20 & 1);

  v83 = *v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v36 = v82;
  swift_getKeyPath();
  *&v83 = v36;
  sub_2758F5660(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_4;
  }

  v38 = *(v16 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier);
  v39 = *(v16 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier + 8);
  swift_getKeyPath();
  *&v83 = Strong;
  sub_2758F5660(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v40 = sub_2759AA368(v38, v39, *&Strong[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview]);

  if (v40)
  {
    v41 = v66;
    sub_2759B8E88();
    v42 = sub_2759B9808();
    sub_2759B8D78();
    v43 = v76;
    v44 = v41 + *(v75 + 36);
    *v44 = v42;
    *(v44 + 8) = v45;
    *(v44 + 16) = v46;
    *(v44 + 24) = v47;
    *(v44 + 32) = v48;
    *(v44 + 40) = 0;
    sub_27586FBC8(v41, v43, &qword_280A10720, &qword_2759C7280);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10758, &unk_2759C7318);
    sub_2758F5718();
    sub_2758F57D0();
    v49 = v81;
    sub_2759B95E8();
    sub_27586BF04(v41, &qword_280A10720, &qword_2759C7280);
  }

  else
  {
LABEL_4:
    v50 = sub_2759B9CB8();
    [objc_opt_self() systemFontSize];
    sub_2759B9888();
    v51 = sub_2759B9878();
    v52 = v67;
    (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
    v53 = sub_2759B9898();
    sub_27586BF04(v52, &qword_280A10740, &qword_2759C72D0);
    KeyPath = swift_getKeyPath();
    v55 = sub_2759B9678();
    v56 = v76;
    *v76 = v50;
    v56[1] = KeyPath;
    v56[2] = v53;
    *(v56 + 6) = v55;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10758, &unk_2759C7318);
    sub_2758F5718();
    sub_2758F57D0();
    v49 = v81;
    sub_2759B95E8();
  }

  v57 = v70 & 1;
  LOBYTE(v83) = v70 & 1;
  v58 = v80;
  sub_27586FBC8(v49, v80, &qword_280A10750, &qword_2759C72E0);
  v60 = v77;
  v59 = v78;
  *a2 = v78;
  *(a2 + 8) = v60;
  *(a2 + 16) = v57;
  *(a2 + 24) = v79;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v62 = v71;
  v61 = v72;
  *(a2 + 48) = v72;
  *(a2 + 56) = v62;
  v63 = v69 & 1;
  *(a2 + 64) = v69 & 1;
  *(a2 + 72) = v73;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10770, &qword_2759C7328);
  sub_27586FBC8(v58, a2 + *(v64 + 80), &qword_280A10750, &qword_2759C72E0);
  sub_27589F3E4(v59, v60, v57);

  sub_27589F3E4(v61, v62, v63);

  sub_27586BF04(v81, &qword_280A10750, &qword_2759C72E0);
  sub_27586BF04(v58, &qword_280A10750, &qword_2759C72E0);
  sub_27589F328(v61, v62, v63);

  sub_27589F328(v59, v60, v83);
}

uint64_t sub_2758F40F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_2758F23F4(a1);
}

uint64_t sub_2758F4130@<X0>(uint64_t a1@<X8>)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10788, &qword_2759C73F0);
  v3 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10790, &qword_2759C73F8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v65 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10798, &qword_2759C7400);
  v12 = *(v78 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v78);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107A0, &qword_2759C7408);
  v19 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v22 = *(v1 + 8);
  v23 = *&v22[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation];
  v80 = a1;
  if (v23)
  {
    v24 = v22[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDestructive] == 1;
    v75 = v12;
    v74 = v21;
    v73 = &v65 - v20;
    if (v24)
    {
      v25 = v18;
      v26 = v23;
      sub_2759B8D48();
    }

    else
    {
      v25 = v18;
      if (*&v22[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType] != 101)
      {
        v30 = sub_2759B8D68();
        (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
        v31 = v23;
        goto LABEL_14;
      }

      v27 = v23;
      sub_2759B8D58();
    }

    v28 = sub_2759B8D68();
    (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
LABEL_14:
    v32 = v23;
    v33 = *v1;
    v34 = *(v1 + 16);
    v92 = *(v1 + 32);
    v93 = v34;
    v35 = swift_allocObject();
    v36 = *(v1 + 16);
    v35[1] = *v1;
    v35[2] = v36;
    v35[3] = *(v1 + 32);
    MEMORY[0x28223BE20](v35);
    v37 = v33;
    v38 = v22;
    sub_2758F5AD0(&v93, &v84);
    sub_27586FBC8(&v92, &v84, &qword_280A0F280, &qword_2759C3728);
    v71 = v25;
    sub_2759B9DA8();
    v39 = *&v32[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title + 8];
    v82 = *&v32[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title];
    v83 = v39;
    v81 = v92;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    v40 = sub_2759B9D88();
    v70 = &v65;
    v68 = v85;
    v69 = v86;
    v41 = MEMORY[0x28223BE20](v40);
    MEMORY[0x28223BE20](v41);
    v72 = v32;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F288, &unk_2759C3730);
    v42 = sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400);
    v67 = sub_27589F2D4();
    v64 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    v43 = v78;
    v44 = v73;
    v45 = v71;
    sub_2759B9B58();

    (*(v75 + 8))(v45, v43);
    v46 = v74;
    v47 = v77;
    (*(v74 + 16))(v79, v44, v77);
    swift_storeEnumTagMultiPayload();
    v84 = v43;
    v85 = MEMORY[0x277D837D0];
    v86 = v66;
    v87 = MEMORY[0x277CE0BD8];
    v88 = v42;
    v89 = v67;
    v90 = v64;
    v91 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2759B95E8();

    return (*(v46 + 8))(v44, v47);
  }

  if (v22[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDestructive] == 1)
  {
    sub_2759B8D48();
  }

  else
  {
    if (*&v22[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType] != 101)
    {
      v49 = sub_2759B8D68();
      (*(*(v49 - 8) + 56))(v9, 1, 1, v49);
      goto LABEL_16;
    }

    sub_2759B8D58();
  }

  v29 = sub_2759B8D68();
  (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
LABEL_16:
  v50 = *v1;
  v51 = *(v1 + 16);
  v92 = *(v1 + 32);
  v93 = v51;
  v52 = swift_allocObject();
  v53 = *(v1 + 16);
  v52[1] = *v1;
  v52[2] = v53;
  v52[3] = *(v1 + 32);
  MEMORY[0x28223BE20](v52);
  v54 = v22;
  v55 = v50;
  sub_2758F5AD0(&v93, &v84);
  sub_27586FBC8(&v92, &v84, &qword_280A0F280, &qword_2759C3728);
  v56 = MEMORY[0x277CE0BD8];
  sub_2759B9DA8();
  v57 = *(v12 + 16);
  v58 = v12;
  v59 = v78;
  v57(v79, v16, v78);
  swift_storeEnumTagMultiPayload();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
  v61 = sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400);
  v62 = sub_27589F2D4();
  v63 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
  v84 = v59;
  v85 = MEMORY[0x277D837D0];
  v86 = v60;
  v87 = v56;
  v88 = v61;
  v89 = v62;
  v90 = v63;
  v91 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_2759B95E8();
  return (*(v58 + 8))(v16, v59);
}

void sub_2758F4B48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = v0[1];
  if (*(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
    v19 = *(v0 + 2);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D78();
    v7 = *(*v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController);
    v9 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
    v8 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v10 = sub_2759BA518();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = xmmword_2759C3450;
    *(v12 + 56) = 3850;
    *(v12 + 58) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 0;
    *(v12 + 80) = v9;
    *(v12 + 88) = v8;
    *(v12 + 96) = 8;

    sub_275931D20(0, 0, v5, &unk_2759C7410, v12);
    swift_bridgeObjectRelease_n();

    sub_27586BF04(v5, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v13 = *v0;
    v14 = v0[1];
    v15 = sub_2758A1CD0();
    LOBYTE(v19) = 15;
    v16 = v1[2];
    v17 = v1[3];

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    iCloudPlusFeature.init(rawValue:)(v18);
    ManageStorageAppsListViewModel.performAction(_:componentContext:featureContext:)(v15, &v19, &v20);
  }
}

uint64_t sub_2758F4DB4(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = v5;
  v6 = swift_allocObject();
  v7 = *(a2 + 16);
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = *(a2 + 32);

  v8 = v3;
  v9 = v4;
  sub_2758F5AD0(&v14, v11);
  sub_27586FBC8(&v13, v11, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638);
  sub_27589F670();
  sub_2758F5660(&qword_280A0F228, type metadata accessor for ManageStorageAction);
  return sub_2759B9EE8();
}

uint64_t sub_2758F4F3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *a2;
  v8 = v4;

  result = sub_2759B9D58();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  *(a3 + 24) = v5;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_2758F4FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_subTitle);
  v8 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_subTitle + 8);
  sub_27589F2D4();

  result = sub_2759B99C8();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2758F5044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title);
  v8 = *v3;
  v9 = v3[1];
  sub_27589F2D4();

  result = sub_2759B99C8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_2758F50C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_2758F4130(a1);
}

unint64_t sub_2758F5110()
{
  result = qword_280A10670;
  if (!qword_280A10670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10678, &qword_2759C71A8);
    sub_2758F5194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10670);
  }

  return result;
}

unint64_t sub_2758F5194()
{
  result = qword_280A10680;
  if (!qword_280A10680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10628, &unk_2759C70F0);
    sub_2758F54C4(&qword_280A10638, &qword_280A10630, &qword_2759C7128, sub_2758F2300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10680);
  }

  return result;
}

unint64_t sub_2758F526C()
{
  result = qword_280A106A0;
  if (!qword_280A106A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10690, &qword_2759C7208);
    sub_27589B02C(&qword_280A106A8, &qword_280A106B0, &qword_2759C7220);
    sub_2758F5324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A106A0);
  }

  return result;
}

unint64_t sub_2758F5324()
{
  result = qword_280A106B8;
  if (!qword_280A106B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A106C0, &qword_2759C7228);
    sub_2758F53E0();
    sub_2758F5660(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A106B8);
  }

  return result;
}

unint64_t sub_2758F53E0()
{
  result = qword_280A106C8;
  if (!qword_280A106C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A106D0, &qword_2759C7230);
    sub_27589B02C(&qword_280A106D8, &qword_280A106E0, &qword_2759C7238);
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A106C8);
  }

  return result;
}

uint64_t sub_2758F54C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2758F5660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2758F56A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758F5718()
{
  result = qword_280A10760;
  if (!qword_280A10760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10720, &qword_2759C7280);
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10760);
  }

  return result;
}

unint64_t sub_2758F57D0()
{
  result = qword_280A10768;
  if (!qword_280A10768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10758, &unk_2759C7318);
    sub_27589F1B4();
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10768);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2758F589C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2758F58E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2758F5940()
{
  result = qword_280A10778;
  if (!qword_280A10778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10780, &qword_2759C7398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10690, &qword_2759C7208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    sub_2758F526C();
    sub_27589F2D4();
    sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10778);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2758F5BA8()
{
  result = qword_280A107B0;
  if (!qword_280A107B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A107B8, &qword_2759C7418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10798, &qword_2759C7400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400);
    sub_27589F2D4();
    sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A107B0);
  }

  return result;
}

uint64_t sub_2758F5D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_275950A30(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_2759BA838();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_275950A30((v13 > 1), v14 + 1, 1);
      v7 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 16 * v14;
    *(v15 + 32) = 0xD000000000000013;
    *(v15 + 40) = 0x80000002759DD0E0;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_2758F659C(result, v12, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_2758F659C(result, v12, 0);
      v7 = v25;
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
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2758F5F6C()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758F5FE0()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758F6034@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  *a2 = v5 != 0;
  return result;
}

void sub_2758F60A8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = a2;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a2 + 64);
  v11 = *(a1 + 16);

  v12 = 0;
  if (v11)
  {
    v13 = 0;
    v39 = v5;
    v40 = a1 + 32;
    v14 = (63 - v8) >> 6;
    v38 = a1;
    while (1)
    {
      if (v13 >= v11)
      {
        goto LABEL_26;
      }

      v15 = (v40 + 16 * v13);
      v17 = *v15;
      v16 = v15[1];
      v18 = v12;
      if (!v10)
      {
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v19 >= v14)
          {
            goto LABEL_22;
          }

          v10 = *(v7 + 8 * v19);
          ++v18;
          if (v10)
          {
            v42 = a3;
            v12 = v19;
            goto LABEL_13;
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
        sub_2759BAB38();
        __break(1u);
        goto LABEL_30;
      }

      v42 = a3;
LABEL_13:
      v41 = v12;
      v20 = *(*(v5 + 56) + (__clz(__rbit64(v10)) | (v12 << 6)));
      v21 = *a4;

      v23 = sub_27586F8A0(v17, v16);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_27;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((v42 & 1) == 0)
        {
          sub_2759077C4();
        }
      }

      else
      {
        sub_275905B1C(v26, v42 & 1);
        v28 = *a4;
        v29 = sub_27586F8A0(v17, v16);
        if ((v27 & 1) != (v30 & 1))
        {
          goto LABEL_29;
        }

        v23 = v29;
      }

      v10 &= v10 - 1;
      if (v27)
      {
        break;
      }

      v31 = *a4;
      *(*a4 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v32 = (v31[6] + 16 * v23);
      *v32 = v17;
      v32[1] = v16;
      *(v31[7] + v23) = v20;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      ++v13;
      v31[2] = v35;
      v5 = v39;
      v11 = *(v38 + 16);
      a3 = 1;
      v12 = v41;
      if (v13 == v11)
      {
        goto LABEL_22;
      }
    }

    v36 = swift_allocError();
    swift_willThrow();

    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_2758F6594();

      return;
    }

LABEL_30:
    sub_2759BA8C8();
    MEMORY[0x277C840E0](0xD00000000000001BLL, 0x80000002759E0D70);
    sub_2759BA9C8();
    MEMORY[0x277C840E0](39, 0xE100000000000000);
    sub_2759BA9D8();
    __break(1u);
  }

  else
  {
LABEL_22:

    sub_2758F6594();
  }
}

uint64_t sub_2758F649C()
{
  v0 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_275906C08(1, isUniquelyReferenced_nonNull_native);
  v2 = v0;
  v3 = sub_2758F5D34(v0);
  v4 = v3;
  if (*(v0 + 16) >= *(v3 + 16))
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = *(v0 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107C0, qword_2759C7420);
    v0 = sub_2759BAA28();
  }

  v7 = v0;

  sub_2758F60A8(v4, v2, 1, &v7);

  return v7;
}

uint64_t sub_2758F659C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2758F65BC()
{
  result = qword_280A107C8;
  if (!qword_280A107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A107C8);
  }

  return result;
}

uint64_t sub_2758F6610(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2758F6630, 0, 0);
}

uint64_t sub_2758F6630()
{
  v0[4] = objc_opt_self();
  v0[5] = sub_2759BA4C8();
  v0[6] = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758F66D8, v2, v1);
}

uint64_t sub_2758F66D8()
{
  v1 = v0[6];
  v2 = v0[4];

  v0[7] = [v2 mainScreen];

  return MEMORY[0x2822009F8](sub_2758F6760, 0, 0);
}

uint64_t sub_2758F6760()
{
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758F67EC, v3, v2);
}

uint64_t sub_2758F67EC()
{
  v2 = v0[7];
  v1 = v0[8];

  [v2 scale];
  v0[9] = v3;

  return MEMORY[0x2822009F8](sub_2758F686C, 0, 0);
}

uint64_t sub_2758F686C()
{
  v2 = *(v0 + 72);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v3 = &OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url2x;
  if (v2 != 2)
  {
    v3 = &OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url1x;
  }

  if (v2 >= 3)
  {
    v4 = &OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url3x;
  }

  else
  {
    v4 = v3;
  }

  sub_2758BB4AC(*(v0 + 24) + *v4, *(v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2758F6ABC(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[4] = v6;
  v2[5] = _Block_copy(a1);
  a2;
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_2758F6BC4;

  return sub_2758F6610(v6);
}

uint64_t sub_2758F6BC4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  sub_2758B4BD0(v3, v4);
  v7 = sub_2759B8508();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v10 = v1[3];
    v9 = sub_2759B84B8();
    (*(v8 + 8))(v10, v7);
  }

  v12 = v1[4];
  v11 = v1[5];
  v13 = v1[3];
  (v11)[2](v11, v9);
  _Block_release(v11);

  v14 = *(v6 + 8);

  return v14();
}

uint64_t sub_2758F6DD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_2758F6ABC(v2, v3);
}

void iCloudHomeView.init(viewModel:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for iCloudHomeView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = 0;
  v7 = (a2 + v4[6]);
  type metadata accessor for iCloudHomeViewModel();
  v8 = a1;
  sub_2759B9D58();
  *v7 = v10;
  v7[1] = v11;
  if (sub_27587C10C())
  {
    sub_2759B8878();
    v9 = sub_2759B8868();

    *(a2 + v6) = v9;
  }

  else
  {
  }
}

uint64_t sub_2758F6FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for iCloudHomeView();
  sub_27586FBC8(v1 + *(v12 + 20), v11, &qword_280A10410, &qword_2759C6CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B87B8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t iCloudHomeView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for iCloudHomeView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2758ED4E8(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2758FAC60(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_2758FACC4;
  a1[1] = v7;
  return result;
}

uint64_t sub_2758F72AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v5 = type metadata accessor for iCloudHomeView();
  v6 = v5 - 8;
  v90 = *(v5 - 8);
  v107 = *(v90 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2759B9448();
  v86 = *(v88 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10808, &qword_2759C75F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v84 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10810, &qword_2759C7600);
  v15 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v17 = &v84 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10818, &qword_2759C7608);
  v18 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v102 = &v84 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10820, &qword_2759C7610);
  v94 = *(v93 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v84 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10828, &qword_2759C7618);
  v96 = *(v95 - 8);
  v22 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v105 = &v84 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10830, &qword_2759C7620);
  v24 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v92 = &v84 - v25;
  v106 = a2;
  v108 = a2;
  v109 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10838, &qword_2759C7628);
  sub_27589B02C(&qword_280A10840, &qword_280A10838, &qword_2759C7628);
  sub_2759B9938();
  v26 = (a2 + *(v6 + 32));
  v27 = *v26;
  v99 = v26[1];
  v110 = v27;
  v111 = v99;
  v28 = v27;
  v101 = v27;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v29 = v116;
  v30 = iCloudHomeViewModel.headerCardSubscriptionLabel.getter();
  v32 = v31;

  v110 = v30;
  v111 = v32;
  sub_27589B02C(&qword_280A10848, &qword_280A10808, &qword_2759C75F8);
  sub_27589F2D4();
  sub_2759B9AC8();

  (*(v11 + 8))(v14, v10);
  v33 = v87;
  sub_2759B9438();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10850, &qword_2759C7630) + 36);
  v35 = v86;
  v36 = v17;
  v37 = v88;
  (*(v86 + 16))(&v17[v34], v33, v88);
  v38 = *(v35 + 56);
  v84 = v36;
  v38(&v36[v34], 0, 1, v37);
  KeyPath = swift_getKeyPath();
  v40 = &v36[*(v103 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F0C0, &unk_2759C3340) + 28);
  (*(v35 + 32))(v40 + v41, v33, v37);
  v38(v40 + v41, 0, 1, v37);
  *v40 = KeyPath;
  v110 = v28;
  v111 = v99;
  sub_2759B9D68();
  v42 = v116;
  swift_getKeyPath();
  v110 = v42;
  v88 = sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v43 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v44 = *&v42[v43];
  v45 = v44;

  v110 = v44;
  v46 = v106;
  v47 = v104;
  sub_2758ED4E8(v106, v104);
  v48 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v49 = *(v90 + 80);
  v50 = swift_allocObject();
  sub_2758FAC60(v47, v50 + v48);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10858, &qword_2759C7690);
  sub_2758FB02C();
  v90 = sub_2758FB220();
  v51 = v102;
  v52 = v84;
  sub_2759B9B88();

  sub_27586BF04(v52, &qword_280A10810, &qword_2759C7600);
  v53 = v47;
  sub_2758ED4E8(v46, v47);
  v86 = v49;
  v54 = swift_allocObject();
  sub_2758FAC60(v47, v54 + v48);
  v55 = v89;
  v56 = &v51[*(v89 + 36)];
  *v56 = sub_2758FB31C;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  v57 = v99;
  v110 = v101;
  v111 = v99;
  sub_2759B9D68();
  v58 = v115;
  v59 = sub_27587B428();

  v110 = v59;
  sub_2758ED4E8(v46, v53);
  v85 = v48;
  v60 = swift_allocObject();
  sub_2758FAC60(v53, v60 + v48);
  v61 = sub_275861AF8(0, &qword_280A10880, 0x277CCA898);
  v62 = sub_2758FB34C();
  v63 = sub_2758FB440();
  v64 = v91;
  v65 = v55;
  v66 = v102;
  sub_2759B9B88();

  sub_27586BF04(v66, &qword_280A10818, &qword_2759C7608);
  v110 = v101;
  v111 = v57;
  sub_2759B9D68();
  v67 = v115;
  swift_getKeyPath();
  v110 = v67;
  sub_2759B8638();

  v68 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v69 = *&v67[v68];
  v70 = v69;

  v113 = v63;
  v114 = v69;
  v110 = v65;
  v111 = v61;
  v112 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v93;
  v73 = v87;
  v74 = v90;
  sub_2759B9B88();

  (*(v94 + 8))(v64, v72);
  v75 = v104;
  sub_2758ED4E8(v106, v104);
  v76 = v85;
  v77 = swift_allocObject();
  sub_2758FAC60(v75, v77 + v76);
  v110 = v72;
  v111 = v73;
  v112 = OpaqueTypeConformance2;
  v113 = v74;
  swift_getOpaqueTypeConformance2();
  v78 = v92;
  v79 = v95;
  v80 = v105;
  sub_2759B9B28();

  (*(v96 + 8))(v80, v79);
  sub_2758ED4E8(v106, v75);
  v81 = swift_allocObject();
  sub_2758FAC60(v75, v81 + v76);
  v82 = (v78 + *(v97 + 36));
  *v82 = 0;
  v82[1] = 0;
  v82[2] = sub_2758FB6D8;
  v82[3] = v81;
  sub_2758FB764();
  sub_2759B9A08();
  return sub_27586BF04(v78, &qword_280A10830, &qword_2759C7620);
}

uint64_t sub_2758F7EF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v215 = a2;
  v232 = a3;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108A8, &qword_2759C7740);
  v228 = *(v229 - 8);
  v4 = *(v228 + 64);
  MEMORY[0x28223BE20](v229);
  v212 = &v187 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108B0, &qword_2759C7748);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v231 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v242 = &v187 - v10;
  v211 = type metadata accessor for ADPSection();
  v11 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v210 = (&v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108B8, &qword_2759C7750);
  v226 = *(v227 - 8);
  v13 = *(v226 + 64);
  MEMORY[0x28223BE20](v227);
  v209 = &v187 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108C0, &qword_2759C7758);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v230 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v245 = &v187 - v19;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108C8, &qword_2759C7760);
  v206 = *(v207 - 8);
  v20 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v195 = &v187 - v21;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108D0, &qword_2759C7768);
  v22 = *(*(v225 - 8) + 64);
  MEMORY[0x28223BE20](v225);
  v208 = &v187 - v23;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108D8, &qword_2759C7770);
  v24 = *(*(v223 - 8) + 64);
  MEMORY[0x28223BE20](v223);
  v224 = &v187 - v25;
  v194 = type metadata accessor for iCloudPlusSection();
  v26 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v187 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108E0, &qword_2759C7778);
  v204 = *(v205 - 8);
  v28 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  v192 = &v187 - v29;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108E8, &qword_2759C7780);
  v30 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222);
  v216 = &v187 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108F0, &qword_2759C7788);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v241 = &v187 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v243 = &v187 - v36;
  v203 = type metadata accessor for BackupSection();
  v37 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203);
  v202 = (&v187 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108F8, &qword_2759C7790);
  v221 = *(v39 - 8);
  v40 = *(v221 + 64);
  MEMORY[0x28223BE20](v39);
  v201 = &v187 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10900, &qword_2759C7798);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v240 = &v187 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v239 = &v187 - v46;
  v214 = sub_2759B8F58();
  v233 = *(v214 - 8);
  v47 = v233[8];
  v48 = MEMORY[0x28223BE20](v214);
  v196 = &v187 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v197 = &v187 - v51;
  MEMORY[0x28223BE20](v50);
  v217 = &v187 - v52;
  v199 = type metadata accessor for AppsUsingiCloudSection();
  v53 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v200 = (&v187 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10908, &qword_2759C77A0);
  v219 = *(v220 - 8);
  v55 = *(v219 + 64);
  MEMORY[0x28223BE20](v220);
  v198 = &v187 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10910, &qword_2759C77A8);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v238 = &v187 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v237 = &v187 - v61;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10918, &qword_2759C77B0);
  v62 = *(v218 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v218);
  v191 = &v187 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10920, &qword_2759C77B8);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v65 - 8);
  v236 = &v187 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v244 = &v187 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10928, &qword_2759C77C0);
  v71 = *(*(v70 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v70 - 8);
  v235 = &v187 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v75 = &v187 - v74;
  v76 = type metadata accessor for iCloudHomeView();
  v77 = &a1[*(v76 + 24)];
  v78 = *(v77 + 1);
  *&v254 = *v77;
  v79 = v254;
  *(&v254 + 1) = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  sub_2759A4DAC(&v254);
  v258 = v255;
  v259 = v256;
  v257 = *(&v254 + 1);
  v81 = v254;
  v251 = v254;
  v252 = v255;
  v253 = v256;
  sub_2758FB950();
  v234 = v75;
  sub_2759B9B38();

  sub_27586BF04(&v257, &qword_280A10938, &qword_2759C77C8);
  sub_27586BF04(&v258, &qword_280A0F280, &qword_2759C3728);
  sub_27586BF04(&v259, &qword_280A0F280, &qword_2759C3728);
  *&v251 = v79;
  *(&v251 + 1) = v78;
  v247 = v78;
  v246 = v80;
  sub_2759B9D68();
  v82 = v249;
  v83 = sub_27587C10C();

  if (v83)
  {
    if (*&a1[*(v76 + 28)])
    {
      v213 = v39;
      *&v251 = v79;
      *(&v251 + 1) = v247;

      v84 = sub_2759B9D68();
      v85 = v249;
      v86 = sub_27589A198(v84);

      if (v86)
      {
        *&v251 = v79;
        *(&v251 + 1) = v247;

        v87 = v83;
        sub_2759B9D68();
        v189 = v249;
        v249 = v87;
        sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
        v190 = v87;
        sub_2759B9D58();
        v88 = *(&v251 + 1);
        v187 = *(&v251 + 1);
        v188 = v251;
        sub_2759B8878();
        sub_2758FB2D4(&qword_280A10998, MEMORY[0x277CFB278]);

        v89 = sub_2759B9058();
        v91 = v90;
        type metadata accessor for iCloudHomeViewModel();
        sub_2758FB2D4(&qword_280A109A0, type metadata accessor for iCloudHomeViewModel);
        v92 = sub_2759B9058();
        v189 = a1;
        v94 = v93;

        v95 = v188;
        *&v251 = v188;
        *(&v251 + 1) = v88;
        *&v252 = v92;
        *(&v252 + 1) = v94;
        *&v253 = v89;
        *(&v253 + 1) = v91;
        sub_2758FBCD0();
        v96 = v191;
        sub_2759B9B38();

        a1 = v189;

        sub_27589F26C(v96, v244, &qword_280A10918, &qword_2759C77B0);
        v97 = 0;
      }

      else
      {

        v97 = 1;
      }

      v39 = v213;
    }

    else
    {

      v97 = 1;
    }
  }

  else
  {
    v97 = 1;
  }

  v98 = 1;
  (*(v62 + 56))(v244, v97, 1, v218);
  v99 = *&a1[*(v76 + 28)];
  if (v99)
  {
    *&v251 = v79;
    *(&v251 + 1) = v247;

    sub_2759B9D68();
    v100 = v249;
    v101 = sub_27587C10C();

    if (v101)
    {
      v102 = v247;
      *&v251 = v79;
      *(&v251 + 1) = v247;
      sub_2759B9D68();
      v103 = v249;
      *&v251 = v79;
      *(&v251 + 1) = v102;
      v104 = v101;
      v191 = v104;
      sub_2759B9D68();
      v105 = v249;
      v106 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
      v190 = sub_2758A5B3C(v104, v105, 0);
      v213 = v39;
      v107 = v233[2];
      v108 = v217;
      v218 = v79;
      v109 = v214;
      v107(v217, v215, v214);
      KeyPath = swift_getKeyPath();
      v111 = v200;
      *v200 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
      swift_storeEnumTagMultiPayload();
      v112 = v199;
      v113 = *(v199 + 20);
      *(v111 + v113) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      v114 = (v111 + v112[6]);
      v249 = v103;
      type metadata accessor for iCloudHomeViewModel();

      v115 = v103;
      sub_2759B9D58();
      v116 = *(&v251 + 1);
      *v114 = v251;
      v114[1] = v116;
      *(v111 + v112[8]) = v99;
      v117 = v197;
      v107(v197, v108, v109);
      v118 = v112[7];
      v107(v196, v117, v109);
      v39 = v213;

      sub_2759B9D58();

      v119 = v233[1];
      v119(v117, v109);
      v120 = v109;
      v79 = v218;
      v119(v217, v120);
      sub_2758FB2D4(&qword_280A10990, type metadata accessor for AppsUsingiCloudSection);
      v121 = v198;
      sub_2759B9B38();

      sub_2758FBC70(v111, type metadata accessor for AppsUsingiCloudSection);
      v122 = v237;
      sub_27589F26C(v121, v237, &qword_280A10908, &qword_2759C77A0);
      v98 = 0;
      goto LABEL_14;
    }

    v98 = 1;
  }

  v122 = v237;
LABEL_14:
  v123 = 1;
  (*(v219 + 56))(v122, v98, 1, v220);
  *&v251 = v79;
  *(&v251 + 1) = v247;
  sub_2759B9D68();
  v124 = v249;
  v125 = sub_2758821BC();

  v126 = v239;
  if (v125)
  {
    *&v251 = v79;
    *(&v251 + 1) = v247;
    sub_2759B9D68();
    v127 = v249;
    v128 = swift_getKeyPath();
    v129 = v202;
    *v202 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v130 = (v129 + *(v203 + 20));
    v249 = v127;
    type metadata accessor for iCloudHomeViewModel();
    sub_2759B9D58();
    v131 = *(&v251 + 1);
    *v130 = v251;
    v130[1] = v131;
    sub_2758FB2D4(&qword_280A10988, type metadata accessor for BackupSection);
    v132 = v201;
    sub_2759B9B38();
    sub_2758FBC70(v129, type metadata accessor for BackupSection);
    sub_27589F26C(v132, v126, &qword_280A108F8, &qword_2759C7790);
    v123 = 0;
  }

  (*(v221 + 56))(v126, v123, 1, v39);
  *&v251 = v79;
  *(&v251 + 1) = v247;
  sub_2759B9D68();
  v133 = v249;
  swift_getKeyPath();
  *&v251 = v133;
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v134 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v135 = *&v133[v134];
  if (v135)
  {
    v136 = v135;

    v137 = *&v136[OBJC_IVAR___ICSHomeDataModel_headerCard];
    LODWORD(v136) = v137[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_isiCloudPlusSubscriber];

    if (v136 == 1)
    {
LABEL_18:
      v249 = v79;
      v250 = v247;
      sub_2759B9D68();
      v138 = v248;
      v139 = sub_2758825E0();

      if (v139)
      {
        v249 = v79;
        v250 = v247;
        sub_2759B9D68();
        v140 = v248;
        v141 = *(v194 + 20);
        v142 = v233;
        v143 = v193;
        v144 = v79;
        v145 = v214;
        (v233[2])(&v193[v141], v215, v214);
        v146 = v145;
        v79 = v144;
        (v142[7])(&v143[v141], 0, 1, v146);
        *v143 = v140;
        sub_2758FB2D4(&qword_280A10950, type metadata accessor for iCloudPlusSection);
        v147 = v192;
        sub_2759B9B38();
        sub_2758FBC70(v143, type metadata accessor for iCloudPlusSection);
        sub_27589F26C(v147, v216, &qword_280A108E0, &qword_2759C7778);
        v148 = 0;
      }

      else
      {
        v148 = 1;
      }

      v156 = v216;
      (*(v204 + 56))(v216, v148, 1, v205);
      v157 = &qword_2759C7780;
      sub_27586FBC8(v156, v224, &qword_280A108E8, &qword_2759C7780);
      swift_storeEnumTagMultiPayload();
      sub_2758FBA90(&qword_280A10940, &qword_280A108E8, &qword_2759C7780, sub_2758FB9A4);
      sub_2758FBA90(&qword_280A10958, &qword_280A108D0, &qword_2759C7768, sub_2758FBB0C);
      sub_2759B95E8();
      v158 = v156;
      v159 = &qword_280A108E8;
      goto LABEL_27;
    }
  }

  else
  {
    v149 = [objc_opt_self() isCloudSubscriber];

    if (v149)
    {
      goto LABEL_18;
    }
  }

  v249 = v79;
  v250 = v247;
  sub_2759B9D68();
  v150 = v248;
  v151 = sub_275882404();

  if (v151)
  {
    v249 = v79;
    v250 = v247;
    sub_2759B9D68();
    type metadata accessor for iCloudHomeViewModel();
    sub_2759B9D58();
    v152 = v249;
    sub_2758FBBC8();
    v153 = v195;
    sub_2759B9B38();

    v154 = v208;
    sub_27589F26C(v153, v208, &qword_280A108C8, &qword_2759C7760);
    v155 = 0;
  }

  else
  {
    v155 = 1;
    v154 = v208;
  }

  (*(v206 + 56))(v154, v155, 1, v207);
  v157 = &qword_2759C7768;
  sub_27586FBC8(v154, v224, &qword_280A108D0, &qword_2759C7768);
  swift_storeEnumTagMultiPayload();
  sub_2758FBA90(&qword_280A10940, &qword_280A108E8, &qword_2759C7780, sub_2758FB9A4);
  sub_2758FBA90(&qword_280A10958, &qword_280A108D0, &qword_2759C7768, sub_2758FBB0C);
  sub_2759B95E8();
  v158 = v154;
  v159 = &qword_280A108D0;
LABEL_27:
  sub_27586BF04(v158, v159, v157);
  v249 = v79;
  v250 = v247;
  v160 = sub_2759B9D68();
  v161 = v248;
  v162 = sub_27589A198(v160);

  if (v162)
  {
    v249 = v79;
    v250 = v247;
    sub_2759B9D68();
    v163 = v248;
    v164 = swift_getKeyPath();
    v165 = v210;
    *v210 = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v166 = (v165 + *(v211 + 20));
    v248 = v163;
    type metadata accessor for iCloudHomeViewModel();
    sub_2759B9D58();
    v167 = v250;
    *v166 = v249;
    v166[1] = v167;
    sub_2758FB2D4(&qword_280A10980, type metadata accessor for ADPSection);
    v168 = v209;
    sub_2759B9B38();
    sub_2758FBC70(v165, type metadata accessor for ADPSection);
    sub_27589F26C(v168, v245, &qword_280A108B8, &qword_2759C7750);
    v169 = 0;
  }

  else
  {
    v169 = 1;
  }

  v170 = 1;
  (*(v226 + 56))(v245, v169, 1, v227);
  v249 = v79;
  v250 = v247;
  sub_2759B9D68();
  v171 = v248;
  v172 = iCloudHomeViewModel.shouldShowComplianceSection.getter();

  if (v172)
  {
    v249 = v79;
    v250 = v247;
    sub_2759B9D68();
    type metadata accessor for iCloudHomeViewModel();
    sub_2759B9D58();
    v173 = v249;
    sub_2758FBC1C();
    v174 = v212;
    sub_2759B9B38();

    sub_27589F26C(v174, v242, &qword_280A108A8, &qword_2759C7740);
    v170 = 0;
  }

  v175 = v242;
  (*(v228 + 56))(v242, v170, 1, v229);
  v176 = v235;
  sub_27586FBC8(v234, v235, &qword_280A10928, &qword_2759C77C0);
  v177 = v236;
  sub_27586FBC8(v244, v236, &qword_280A10920, &qword_2759C77B8);
  v178 = v238;
  sub_27586FBC8(v122, v238, &qword_280A10910, &qword_2759C77A8);
  v179 = v240;
  sub_27586FBC8(v126, v240, &qword_280A10900, &qword_2759C7798);
  v180 = v241;
  sub_27586FBC8(v243, v241, &qword_280A108F0, &qword_2759C7788);
  v181 = v230;
  sub_27586FBC8(v245, v230, &qword_280A108C0, &qword_2759C7758);
  v182 = v231;
  sub_27586FBC8(v175, v231, &qword_280A108B0, &qword_2759C7748);
  v183 = v176;
  v184 = v232;
  sub_27586FBC8(v183, v232, &qword_280A10928, &qword_2759C77C0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10970, &unk_2759C77D0);
  sub_27586FBC8(v177, v184 + v185[12], &qword_280A10920, &qword_2759C77B8);
  sub_27586FBC8(v178, v184 + v185[16], &qword_280A10910, &qword_2759C77A8);
  sub_27586FBC8(v179, v184 + v185[20], &qword_280A10900, &qword_2759C7798);
  sub_27586FBC8(v180, v184 + v185[24], &qword_280A108F0, &qword_2759C7788);
  sub_27586FBC8(v181, v184 + v185[28], &qword_280A108C0, &qword_2759C7758);
  sub_27586FBC8(v182, v184 + v185[32], &qword_280A108B0, &qword_2759C7748);
  sub_27586BF04(v242, &qword_280A108B0, &qword_2759C7748);
  sub_27586BF04(v245, &qword_280A108C0, &qword_2759C7758);
  sub_27586BF04(v243, &qword_280A108F0, &qword_2759C7788);
  sub_27586BF04(v239, &qword_280A10900, &qword_2759C7798);
  sub_27586BF04(v237, &qword_280A10910, &qword_2759C77A8);
  sub_27586BF04(v244, &qword_280A10920, &qword_2759C77B8);
  sub_27586BF04(v234, &qword_280A10928, &qword_2759C77C0);
  sub_27586BF04(v182, &qword_280A108B0, &qword_2759C7748);
  sub_27586BF04(v181, &qword_280A108C0, &qword_2759C7758);
  sub_27586BF04(v241, &qword_280A108F0, &qword_2759C7788);
  sub_27586BF04(v240, &qword_280A10900, &qword_2759C7798);
  sub_27586BF04(v238, &qword_280A10910, &qword_2759C77A8);
  sub_27586BF04(v236, &qword_280A10920, &qword_2759C77B8);
  return sub_27586BF04(v235, &qword_280A10928, &qword_2759C77C0);
}

void sub_2758F9F1C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for iCloudHomeView() + 24));
  v3 = *v1;
  v2 = v1[1];
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  v32 = v30;
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v5 = *(v30 + v4);
  v6 = v5;

  if (v5)
  {
    v7 = *&v6[OBJC_IVAR___ICSHomeDataModel_preLaunchAction];
    v8 = v7;

    if (v7)
    {
      v28 = v8;
      v30 = v3;
      v31 = v2;
      sub_2759B9D68();

      if (qword_2815ADD40 != -1)
      {
        swift_once();
      }

      v9 = qword_2815ADE88;
      v10 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
      os_unfair_lock_lock(*(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
      v11 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted;
      v12 = *(v9 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted);
      os_unfair_lock_unlock(*(v9 + v10));
      if ((v12 & 1) == 0)
      {
        v30 = v3;
        v31 = v2;
        sub_2759B9D68();
        v27 = v29;
        LOBYTE(v30) = 19;
        LOBYTE(v29) = 7;
        sub_27590A460(v28, 1, &v30, &v29, 0);

        v30 = v3;
        v31 = v2;
        sub_2759B9D68();

        os_unfair_lock_lock(*(v9 + v10));
        *(v9 + v11) = 1;
        os_unfair_lock_unlock(*(v9 + v10));

        goto LABEL_10;
      }
    }
  }

  v30 = v3;
  v31 = v2;
  sub_2759B9D68();

  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v13 = qword_2815ADE88;
  v14 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  os_unfair_lock_lock(*(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
  *(v13 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted) = 1;
  os_unfair_lock_unlock(*(v13 + v14));
LABEL_10:
  v30 = v3;
  v31 = v2;
  sub_2759B9D68();
  v15 = v29;
  swift_getKeyPath();
  v30 = v15;
  sub_2759B8638();

  v17 = *&v15[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString];
  v16 = *&v15[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString + 8];

  if (v16)
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_280A238E8);

    v19 = sub_2759B8988();
    v20 = sub_2759BA628();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2758937B8(v17, v16, &v30);
      _os_log_impl(&dword_275819000, v19, v20, "Handling AMS deep link flow after dataModel load. %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    v30 = v3;
    v31 = v2;
    sub_2759B9D68();
    v23 = v29;
    sub_27590E0CC();

    v30 = v3;
    v31 = v2;
    sub_2759B9D68();
    v24 = v29;
    v25 = &v29[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString];
    if (*&v29[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString + 8])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v30 = v24;
      sub_2759B8628();
    }

    else
    {
      *v25 = 0;
      *(v25 + 1) = 0;
    }
  }
}

void sub_2758FA464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - v4;
  v6 = (a1 + *(type metadata accessor for iCloudHomeView() + 24));
  v8 = *v6;
  v7 = v6[1];
  v11[2] = v8;
  v11[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v9 = v11[1];
  sub_2758F6FB0(v5);
  v10 = sub_2759B87B8();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  sub_2758788FC(v5);
}

void sub_2758FA578(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for iCloudHomeView() + 24));
  v2 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
  swift_beginAccess();
  v5 = *&v11[v4];

  sub_2759B9D68();
  v6 = sub_27587B428();

  [v5 setAttributedText_];
  sub_2759B9D68();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v8 = [Strong navigationItem];

    sub_2759B9D68();
    swift_getKeyPath();
    sub_2759B8638();

    v9 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
    swift_beginAccess();
    v10 = *&v12[v9];

    [v8 setTitleView_];
  }
}

double sub_2758FA7C4@<D0>(double *a1@<X8>)
{
  sub_2759B9068();
  v2 = CGRectGetMinY(v4) + 64.0;
  if (v2 > 96.0)
  {
    v2 = 96.0;
  }

  result = v2 / 96.0;
  *a1 = result;
  return result;
}

void sub_2758FA814(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for iCloudHomeView() + 24));
  v7 = *v4;
  v8 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  if (*&v6[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha] == v3)
  {
    *&v6[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha] = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

void sub_2758FA97C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for iCloudHomeView() + 24));
  v2 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v5 = [Strong navigationBar];

    [v5 _setTitleOpacity_];
  }

  sub_2759B9D68();
  v6 = *&v7[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    sub_2759BA538();
  }
}

uint64_t sub_2758FAB28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2758ED4E8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2758FAC60(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_2758FBD24;
  a2[1] = v7;
  return result;
}

uint64_t type metadata accessor for iCloudHomeView()
{
  result = qword_280A107D8;
  if (!qword_280A107D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758FAC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudHomeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2758FAD0C()
{
  sub_2758FAE80(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2758FAE80(319, &qword_280A107E8, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2758FAE80(319, &qword_280A0F5F8, type metadata accessor for iCloudHomeViewModel, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2758FAE80(319, &qword_280A107F0, MEMORY[0x277CFB278], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2758FAE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2758FAEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for iCloudHomeView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2758F72AC(a1, v6, a2);
}

uint64_t sub_2758FAF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108A0, &qword_2759C7738);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_27586FBC8(a1, &v7 - v4, &qword_280A108A0, &qword_2759C7738);
  return MEMORY[0x277C82FD0](v5);
}

unint64_t sub_2758FB02C()
{
  result = qword_280A10860;
  if (!qword_280A10860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10810, &qword_2759C7600);
    sub_2758FB0E4();
    sub_27589B02C(&qword_280A0F0D8, &qword_280A0F0C0, &unk_2759C3340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10860);
  }

  return result;
}

unint64_t sub_2758FB0E4()
{
  result = qword_280A10868;
  if (!qword_280A10868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10850, &qword_2759C7630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10808, &qword_2759C75F8);
    sub_27589B02C(&qword_280A10848, &qword_280A10808, &qword_2759C75F8);
    sub_27589F2D4();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A0F0D0, &qword_280A0F0B8, &qword_2759C3338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10868);
  }

  return result;
}

unint64_t sub_2758FB220()
{
  result = qword_280A10870;
  if (!qword_280A10870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    sub_2758FB2D4(&qword_280A10878, type metadata accessor for iCloudHomeDataModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10870);
  }

  return result;
}

uint64_t sub_2758FB2D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2758FB34C()
{
  result = qword_280A10888;
  if (!qword_280A10888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10818, &qword_2759C7608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10810, &qword_2759C7600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    sub_2758FB02C();
    sub_2758FB220();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10888);
  }

  return result;
}

unint64_t sub_2758FB440()
{
  result = qword_280A10890;
  if (!qword_280A10890)
  {
    sub_275861AF8(255, &qword_280A10880, 0x277CCA898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10890);
  }

  return result;
}

void sub_2758FB4A8(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for iCloudHomeView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2758FA814(a1, a2, v6);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for iCloudHomeView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B94D8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2759B87B8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[v1[6]];

  v12 = *(v11 + 1);

  v13 = *&v5[v1[7]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758FB6F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for iCloudHomeView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2758FB764()
{
  result = qword_280A10898;
  if (!qword_280A10898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10830, &qword_2759C7620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10828, &qword_2759C7618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10820, &qword_2759C7610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10818, &qword_2759C7608);
    sub_275861AF8(255, &qword_280A10880, 0x277CCA898);
    sub_2758FB34C();
    sub_2758FB440();
    swift_getOpaqueTypeConformance2();
    sub_2758FB220();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10898);
  }

  return result;
}

unint64_t sub_2758FB950()
{
  result = qword_280A10930;
  if (!qword_280A10930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10930);
  }

  return result;
}

unint64_t sub_2758FB9A4()
{
  result = qword_280A10948;
  if (!qword_280A10948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A108E0, &qword_2759C7778);
    sub_2758FB2D4(&qword_280A10950, type metadata accessor for iCloudPlusSection);
    sub_2758FB2D4(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10948);
  }

  return result;
}

uint64_t sub_2758FBA90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2758FBB0C()
{
  result = qword_280A10960;
  if (!qword_280A10960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A108C8, &qword_2759C7760);
    sub_2758FBBC8();
    sub_2758FB2D4(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10960);
  }

  return result;
}

unint64_t sub_2758FBBC8()
{
  result = qword_280A10968;
  if (!qword_280A10968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10968);
  }

  return result;
}

unint64_t sub_2758FBC1C()
{
  result = qword_280A10978;
  if (!qword_280A10978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10978);
  }

  return result;
}

uint64_t sub_2758FBC70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2758FBCD0()
{
  result = qword_280A109A8;
  if (!qword_280A109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A109A8);
  }

  return result;
}

uint64_t sub_2758FBD28@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v36 = a2;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  *&v32 = v7;
  *(&v32 + 1) = v9;
  v33 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v32);

  sub_2759B9B18();

  v10 = OpaqueTypeMetadata2;
  v11 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(&v32, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  *&v28 = v10;
  *(&v28 + 1) = v12;
  v29 = v11;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v28);

  sub_2759B9B18();

  v13 = v30;
  v14 = v31;
  __swift_project_boxed_opaque_existential_1(&v28, v30);
  swift_getKeyPath();
  v15 = sub_2759BA1B8();
  v16 = sub_2758FE88C(&qword_280A10398, MEMORY[0x277D4D7B0]);
  a3[3] = swift_getOpaqueTypeMetadata2();
  v25[0] = v13;
  v25[1] = v15;
  v25[2] = v14;
  v26 = v16;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(&v28);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v17 = *(v5 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_onCompletionActions);
  sub_27586E058(a3, &v28);
  v18 = *(v17 + 16);

  if (v18)
  {
    v20 = 0;
    v21 = v17 + 32;
    while (v20 < *(v17 + 16))
    {
      sub_27586E058(v21, v25);
      v22 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v23 = *(v22 + 8);
      sub_2759B8B28();
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(&v28);

        __swift_destroy_boxed_opaque_existential_1(v25);
        return __swift_destroy_boxed_opaque_existential_1(a3);
      }

      ++v20;
      __swift_destroy_boxed_opaque_existential_1(&v28);
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = sub_275827D1C(&v24, &v28);
      v21 += 40;
      if (v18 == v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_275827D1C(&v28, &v32);
    __swift_destroy_boxed_opaque_existential_1(a3);
    return sub_275827D1C(&v32, a3);
  }

  return result;
}

uint64_t sub_2758FC15C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2759BA1B8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  swift_beginAccess();
  sub_2758CE724(v7, v10 + a2, &qword_280A109D8, &qword_2759D0B40);
  return swift_endAccess();
}

uint64_t sub_2758FC2A0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v7 = *(v6 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758FC3CC, 0, 0);
}

uint64_t sub_2758FC3CC()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ReloadAppsListAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 128);

  v8 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView;
  swift_beginAccess();
  v9 = *(v6 + 48);
  if (v9(v7 + v8, 1, v5))
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 112);
    (*(*(v0 + 152) + 16))(*(v0 + 184), v7 + v8, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 184), *(v0 + 144));
    v10 = *(v0 + 232);
  }

  *(v0 + 236) = v10;
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList;
  swift_beginAccess();
  if (v9(v13 + v14, 1, v12))
  {
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 112);
    (*(*(v0 + 152) + 16))(*(v0 + 176), v13 + v14, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
    v15 = *(v0 + 233);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 128);
  v19 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData;
  swift_beginAccess();
  if (v9(v18 + v19, 1, v17))
  {
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 112);
    (*(*(v0 + 152) + 16))(*(v0 + 168), v18 + v19, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    v20 = *(v0 + 234);
  }

  *(v0 + 237) = v20;
  v22 = *(v0 + 144);
  v23 = *(v0 + 128);
  v24 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel;
  swift_beginAccess();
  v25 = 1;
  if (!v9(v23 + v24, 1, v22))
  {
    v26 = *(v0 + 112);
    (*(*(v0 + 152) + 16))(*(v0 + 160), v23 + v24, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    v25 = *(v0 + 235);
  }

  *(v0 + 238) = v25;
  v27 = *(*(v0 + 128) + 16);
  *(v0 + 192) = v27;
  if (!v27)
  {
    v34 = sub_2759B8988();
    v35 = sub_2759BA648();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_275819000, v34, v35, "ReloadAppsListAction: no view model available", v36, 2u);
      MEMORY[0x277C85860](v36, -1, -1);
    }

    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v40 = *(v0 + 160);
    v39 = *(v0 + 168);
    v41 = *(v0 + 136);

    v42 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v28 = v27;
  if (v15)
  {
    v29 = sub_2759B8988();
    v30 = sub_2759BA668();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_275819000, v29, v30, "ReloadAppsListAction: clearing apps list", v31, 2u);
      MEMORY[0x277C85860](v31, -1, -1);
    }

    sub_2759BA4C8();
    *(v0 + 200) = sub_2759BA4B8();
    v33 = sub_2759BA468();

    return MEMORY[0x2822009F8](sub_2758FCAA8, v33, v32);
  }

  else
  {
    v43 = swift_task_alloc();
    *(v0 + 208) = v43;
    *v43 = v0;
    v43[1] = sub_2758FCB5C;
    v44 = *(v0 + 238);

    return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(v44, 1);
  }
}

uint64_t sub_2758FCAA8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 237);

  ManageStorageAppsListViewModel.clearAppsList(clearHomeData:)(v3);
  v4 = *(v0 + 192);
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_2758FCB5C;
  v6 = *(v0 + 238);

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(v6, 1);
}

uint64_t sub_2758FCB5C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2758FCC58, 0, 0);
}

uint64_t sub_2758FCC58()
{
  v1 = *(v0 + 128);
  if (*(v0 + 236) == 1 && (v2 = *(v1 + 24)) != 0 && *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) == 1)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 136);
    v5 = sub_2759BA518();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_2759BA4C8();
    v6 = v3;

    v7 = sub_2759BA4B8();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v1;
    v8[5] = v6;
    *(v0 + 216) = sub_27587D460(0, 0, v4, &unk_2759C7920, v8);
    v10 = *(MEMORY[0x277D857E0] + 4);
    v11 = swift_task_alloc();
    *(v0 + 224) = v11;
    *v11 = v0;
    v11[1] = sub_2758FCE90;

    return MEMORY[0x282200460]();
  }

  else
  {
    v12 = *(v0 + 192);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v1 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_onCompletionActions);

    sub_2759BA438();

    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 136);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2758FCE90()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2758FCFA8, 0, 0);
}

uint64_t sub_2758FCFA8()
{
  v1 = v0[24];
  v2 = v0[15];
  v3 = v0[14];
  v4 = *(v0[16] + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_onCompletionActions);

  sub_2759BA438();

  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2758FD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_2759BA1B8();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_2759BA4C8();
  v5[11] = sub_2759BA4B8();
  v11 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758FD1A4, v11, v10);
}

uint64_t sub_2758FD1A4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[5];

  v6 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  swift_beginAccess();
  sub_2758FE7C0(v6 + v5, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_27586BF04(v0[7], &qword_280A109D8, &qword_2759D0B40);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v7 = sub_2759BA198();
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    if (v7)
    {
      sub_2759BA1A8();
      (*(v9 + 8))(v8, v10);
      goto LABEL_8;
    }

    (*(v9 + 8))(v0[10], v0[8]);
  }

  v11 = v0[6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
  }

LABEL_8:
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2758FD350()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758FD458()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_2758FD54C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2758FD650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2758FE9EC();
  *a2 = result;
  return result;
}

void sub_2758FD680(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x77656956706F70;
  v5 = 0xED00006174614465;
  v6 = 0x6D6F487261656C63;
  v7 = 0x80000002759DD100;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x656C706D6F436E6FLL;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7070417261656C63;
    v3 = 0xED00007473694C73;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2758FD744()
{
  v1 = *v0;
  v2 = 0x77656956706F70;
  v3 = 0x6D6F487261656C63;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x656C706D6F436E6FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7070417261656C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2758FD804@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2758FE9EC();
  *a1 = result;
  return result;
}

uint64_t sub_2758FD82C(uint64_t a1)
{
  v2 = sub_2758FE838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2758FD868(uint64_t a1)
{
  v2 = sub_2758FE838();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_2758FD8A4(uint64_t *a1)
{
  v3 = v1;
  v69 = *v3;
  v70 = v2;
  v78 = sub_2759B8BD8();
  v63 = *(v78 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v78);
  v79 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v67 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v66 = v61 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v64 = v61 - v14;
  MEMORY[0x28223BE20](v13);
  v65 = v61 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109E8, &qword_2759C79C8);
  v68 = *(v72 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v72);
  v18 = v61 - v17;
  v3[2] = 0;
  v3[3] = 0;
  v19 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  v77 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  v20 = sub_2759BA1B8();
  (*(*(v20 - 8) + 56))(&v19[v3], 1, 1, v20);
  v21 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView;
  v73 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v24(v3 + v21, 1, 1, v22);
  v26 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList;
  v24(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList, 1, 1, v22);
  v76 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData;
  v24(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData, 1, 1, v22);
  v74 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel;
  v24(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel, 1, 1, v22);
  v28 = a1[3];
  v27 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_2758FE838();
  v75 = v18;
  v29 = v73;
  v30 = v70;
  sub_2759BAC18();
  v31 = v77;
  if (v30)
  {

    sub_27586BF04(v31 + v3, &qword_280A109D8, &qword_2759D0B40);
    sub_27586BF04(v3 + v29, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v3 + v26, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v3 + v76, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v3 + v74, &qword_280A0FC48, &qword_2759C79C0);
    v45 = *(*v3 + 12);
    v46 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    v32 = v64;
    v61[1] = v25;
    v70 = v24;
    v62 = v26;
    LOBYTE(v80[0]) = 0;
    v33 = sub_2758EA064();
    v34 = v65;
    v61[0] = v33;
    sub_2759BAA68();
    v35 = v29;
    v36 = v76;
    swift_beginAccess();
    sub_2758CE724(v34, v3 + v35, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v80[0]) = 1;
    sub_2759BAA68();
    v37 = v62;
    v38 = v66;
    swift_beginAccess();
    sub_2758CE724(v32, v3 + v37, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v80[0]) = 2;
    v39 = v72;
    sub_2759BAA68();
    v40 = v67;
    swift_beginAccess();
    sub_2758CE724(v38, v3 + v36, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v80[0]) = 3;
    v41 = v40;
    sub_2759BAA68();
    v42 = v79;
    v43 = v68;
    v44 = v74;
    swift_beginAccess();
    sub_2758CE724(v41, v3 + v44, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    LOBYTE(v81) = 4;
    sub_2758C7304();
    sub_2759BAA68();
    v70 = 0;
    if (*&v80[0])
    {
      v48 = *&v80[0];
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v49 = *(v48 + 16);
    if (v49)
    {
      v81 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v49, 0);
      v50 = v81;
      v52 = v63 + 16;
      v51 = *(v63 + 16);
      v53 = *(v63 + 80);
      v74 = v48;
      v54 = v48 + ((v53 + 32) & ~v53);
      v76 = *(v63 + 72);
      v77 = v51;
      v55 = (v63 + 8);
      v56 = v78;
      do
      {
        v57 = v52;
        (v77)(v42, v54, v56);
        sub_2759B8BC8();
        v56 = v78;
        (*v55)(v42, v78);
        v81 = v50;
        v59 = v50[2];
        v58 = v50[3];
        if (v59 >= v58 >> 1)
        {
          sub_2759509B0((v58 > 1), v59 + 1, 1);
          v56 = v78;
          v50 = v81;
        }

        v50[2] = v59 + 1;
        sub_275827D1C(v80, &v50[5 * v59 + 4]);
        v54 += v76;
        --v49;
        v52 = v57;
        v42 = v79;
      }

      while (v49);
      (*(v68 + 8))(v75, v72);
    }

    else
    {

      (*(v43 + 8))(v75, v39);
      v50 = MEMORY[0x277D84F90];
    }

    v60 = v71;
    *(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_onCompletionActions) = v50;
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return v3;
}

uint64_t sub_2758FE210()
{
  sub_27586BF04(OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy + v0, &qword_280A109D8, &qword_2759D0B40);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel, &qword_280A0FC48, &qword_2759C79C0);
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_onCompletionActions);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReloadAppsListAction()
{
  result = qword_280A109B0;
  if (!qword_280A109B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758FE378()
{
  sub_2758FE464();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2758E9738();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2758FE464()
{
  if (!qword_280A109C0)
  {
    sub_2759BA1B8();
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A109C0);
    }
  }
}

uint64_t sub_2758FE4BC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585A7E4;

  return sub_2758FC2A0(a1, a2);
}

id *sub_2758FE618@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_2758FD8A4(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_2758FE700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758FD078(a1, v4, v5, v7, v6);
}