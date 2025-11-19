uint64_t sub_26C6B5634()
{
  v1 = *(*v0 + 696);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C6B5730, 0, 0);
}

uint64_t sub_26C6B5730()
{
  sub_26C678418(v0[85], v0[86]);
  sub_26C6C1064((v0 + 8));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
  v1 = v0[36];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 32), v0[35]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[84] = v3;
  *v3 = v0;
  v3[1] = sub_26C6B4B44;

  return MEMORY[0x282200310](v0 + 2, 0, 0);
}

void sub_26C6B5810(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD240);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_26C67A77C(0xD00000000000001DLL, 0x800000026C6DFE80, &v21);
    _os_log_impl(&dword_26C66B000, v9, v10, "Running WFSetupClient::%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state + 1) == 4)
  {
    v13 = sub_26C6D8B08();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v2;
    v14[5] = a1;
    v15 = v2;
    v16 = a1;
    sub_26C68B290(0, 0, v7, &unk_26C6DD3A0, v14);
  }

  else
  {
    v20 = sub_26C6D8878();
    v17 = sub_26C6D8BA8();
    if (os_log_type_enabled(v20, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26C66B000, v20, v17, "Sending WFSetupData requires an encrypted connection.", v18, 2u);
      MEMORY[0x26D6A7490](v18, -1, -1);
    }

    v19 = v20;
  }
}

uint64_t sub_26C6B5AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_26C6B5B14, 0, 0);
}

uint64_t sub_26C6B5B14()
{
  v1 = *(v0 + 96);
  *(v0 + 104) = *(*(v0 + 88) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 40) = &type metadata for LegacySetupDataObject;
  *(v0 + 48) = &off_287D2B7C0;
  *(v0 + 16) = v1;
  *(v0 + 72) = 1;
  type metadata accessor for SFSessionAgent();
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  swift_unknownObjectRetain();
  v2 = v1;
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B5C14, v4, v3);
}

uint64_t sub_26C6B5C14()
{
  v1 = *(v0 + 104);
  sub_26C6A6570(v0 + 16);
  *(v0 + 112) = 0;
  v2 = *(v0 + 104);
  swift_unknownObjectRelease();
  sub_26C6C0984(v0 + 16);

  return MEMORY[0x2822009F8](sub_26C6B5CB4, 0, 0);
}

uint64_t sub_26C6B5CDC()
{
  sub_26C6C0984(v0 + 16);
  **(v0 + 80) = *(v0 + 112) != 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26C6B5D50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_26C6D8B08();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_26C68AF90(0, 0, v4, &unk_26C6DD3B0, v6);
}

uint64_t sub_26C6B5E74()
{
  v9 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[3] = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD000000000000017, 0x800000026C6E01A0, &v8);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v0[4] = *(v0[2] + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_26C6B6040;

  return sub_26C6A5B00();
}

uint64_t sub_26C6B6040()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(v4 + 48) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26C6B6190, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_26C6B6190()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "Error enabling service relaunch: %@", v8, 0xCu);
    sub_26C677B60(v9, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26C6B62F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26C6B6310, 0, 0);
}

uint64_t sub_26C6B6310()
{
  v21 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD00000000000002FLL, 0x800000026C6E0150, &v20);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  *(v0 + 40) = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  if (*(v6 + v7))
  {
    v8 = v6;
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      *(v0 + 64) = *(v6 + v7);
      v13 = sub_26C6D8A18();
      v15 = sub_26C67A77C(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26C66B000, v9, v10, "CoreCDPSetupState is %s. Skipping startCDPApprovalServer.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D6A7490](v12, -1, -1);
      MEMORY[0x26D6A7490](v11, -1, -1);
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    *(v6 + v7) = 1;
    v18 = swift_task_alloc();
    *(v0 + 48) = v18;
    *v18 = v0;
    v18[1] = sub_26C6B661C;
    v19 = *(v0 + 16);

    return sub_26C6C45A8(v19);
  }
}

uint64_t sub_26C6B661C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 65) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_26C6B6830;
  }

  else
  {
    v5 = sub_26C6B6734;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26C6B6734()
{
  v1 = *(v0 + 32);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 65);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_26C66B000, v2, v3, "startCDPApprovalServer returned success: %{BOOL,public}d", v5, 8u);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v6 = *(v0 + 65);

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  *(*(v0 + 24) + *(v0 + 40)) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26C6B6830()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "startCDPApprovalServer failed with error: %{public}@", v8, 0xCu);
    sub_26C677B60(v9, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  else
  {
  }

  *(v0[3] + v0[5]) = 3;
  v12 = v0[1];

  return v12();
}

uint64_t sub_26C6B69A0()
{
  v1[133] = v0;
  v2 = sub_26C6D8958();
  v1[134] = v2;
  v3 = *(v2 - 8);
  v1[135] = v3;
  v4 = *(v3 + 64) + 15;
  v1[136] = swift_task_alloc();
  v5 = sub_26C6D8978();
  v1[137] = v5;
  v6 = *(v5 - 8);
  v1[138] = v6;
  v7 = *(v6 + 64) + 15;
  v1[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6B6ABC, 0, 0);
}

uint64_t sub_26C6B6ABC()
{
  v12 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[140] = v1;
  v0[141] = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD00000000000001DLL, 0x800000026C6E00C0, &v11);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = v0[133];
  v7 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
  v0[142] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
  v0[143] = *(v6 + v7);
  v0[144] = type metadata accessor for SFSessionAgent();
  v0[145] = sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  swift_unknownObjectRetain();
  v9 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B6CC0, v9, v8);
}

uint64_t sub_26C6B6CC0()
{
  sub_26C67749C(*(v0 + 1144) + 40, v0 + 800);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B6D38, 0, 0);
}

uint64_t sub_26C6B6D38()
{
  v1 = v0[133];
  v2 = v0[103];
  v3 = v0[104];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 100, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = *(v3 + 8);
  v0[108] = swift_getAssociatedTypeWitness();
  v0[109] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 105);
  sub_26C6D8B68();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 100);
  v0[146] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_incomingFileInfo;
  v0[147] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  v0[148] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler;
  v0[149] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue;
  swift_beginAccess();
  v9 = v0[109];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[150] = v11;
  *v11 = v0;
  v11[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B6F4C()
{
  v2 = *(*v1 + 1200);
  v4 = *v1;
  *(*v1 + 1208) = v0;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_26C6B7060, 0, 0);
  }

  return result;
}

uint64_t sub_26C6B7060()
{
  v138 = v0;
  if (*(v0 + 136) == 255)
  {
    v11 = *(v0 + 1112);
    v12 = *(v0 + 1088);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 840));

    v13 = *(v0 + 8);

    return v13();
  }

  v1 = *(v0 + 1128);
  v2 = *(v0 + 96);
  *(v0 + 144) = *(v0 + 80);
  *(v0 + 160) = v2;
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 185) = *(v0 + 121);
  sub_26C6C0A28(v0 + 144, v0 + 208);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v137 = v6;
    *v5 = 136315138;
    sub_26C6C0A28(v0 + 208, v0 + 16);
    v7 = sub_26C6D8A18();
    v9 = v8;
    sub_26C6C0A84(v0 + 208);
    v10 = sub_26C67A77C(v7, v9, &v137);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_26C66B000, v3, v4, "Session Agent Event Received: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  else
  {

    sub_26C6C0A84(v0 + 208);
  }

  sub_26C6C0A28(v0 + 144, v0 + 272);
  v15 = *(v0 + 328);
  if (v15 <= 2)
  {
    if (!*(v0 + 328))
    {
      v134 = *(v0 + 1104);
      v135 = *(v0 + 1096);
      v41 = *(v0 + 1088);
      v133 = *(v0 + 1080);
      v42 = *(v0 + 1072);
      v44 = *(v0 + 272);
      v43 = *(v0 + 280);
      v45 = *(v0 + 288);
      v131 = *(v0 + 1112);
      v132 = *(*(v0 + 1064) + *(v0 + 1192));
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v45;
      *(v47 + 32) = v44;
      *(v47 + 40) = v43;
      *(v0 + 496) = sub_26C6C0B54;
      *(v0 + 504) = v47;
      *(v0 + 464) = MEMORY[0x277D85DD0];
      *(v0 + 472) = 1107296256;
      *(v0 + 480) = sub_26C670B0C;
      *(v0 + 488) = &block_descriptor_98;
      v48 = _Block_copy((v0 + 464));

      sub_26C6D8968();
      *(v0 + 1056) = MEMORY[0x277D84F90];
      sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
      sub_26C6BFEC4();
      sub_26C6D8C88();
      MEMORY[0x26D6A6AF0](0, v131, v41, v48);
      _Block_release(v48);
      (*(v133 + 8))(v41, v42);
      (*(v134 + 8))(v131, v135);
      sub_26C6C0A84(v0 + 144);
      v49 = *(v0 + 504);

      goto LABEL_47;
    }

    if (v15 == 1)
    {
      v16 = *(v0 + 1128);
      v17 = *(v0 + 272);
      *(v0 + 1216) = v17;
      v18 = v17;
      v19 = sub_26C6D8878();
      v20 = sub_26C6D8BB8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v137 = v22;
        *v21 = 136446210;
        v23 = v18;
        v24 = [v23 description];
        v25 = sub_26C6D8A08();
        v27 = v26;

        v28 = sub_26C67A77C(v25, v27, &v137);

        *(v21 + 4) = v28;
        _os_log_impl(&dword_26C66B000, v19, v20, "Successfully established encrypted channel: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x26D6A7490](v22, -1, -1);
        MEMORY[0x26D6A7490](v21, -1, -1);
      }

      v29 = *(v0 + 1160);
      v30 = *(v0 + 1152);
      *(v0 + 1224) = *(*(v0 + 1064) + *(v0 + 1136));
      *(v0 + 360) = &type metadata for SecurityRequest;
      *(v0 + 368) = &off_287D2D528;
      *(v0 + 336) = 1;
      v31 = swift_allocObject();
      *(v31 + 16) = 1;
      *(v0 + 376) = sub_26C6C0AD8;
      *(v0 + 384) = v31;
      *(v0 + 392) = 0;
      swift_unknownObjectRetain();
      v32 = sub_26C6D8AD8();
      v34 = v33;
      v35 = sub_26C6B8054;
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C10, &qword_26C6DB508);
    if (swift_dynamicCast())
    {
      v53 = *(v0 + 1064);
      if (*(v53 + *(v0 + 1176) + 8) == 1)
      {
        v54 = *(v0 + 1160);
        v55 = *(v0 + 1152);
        *(v0 + 1240) = *(v53 + *(v0 + 1136));
        *(v0 + 424) = &type metadata for LegacyPreAuthResponseObject;
        *(v0 + 432) = &off_287D2E740;
        *(v0 + 456) = 1;
        swift_unknownObjectRetain();
        v32 = sub_26C6D8AD8();
        v34 = v56;
        v35 = sub_26C6B894C;
LABEL_14:

        return MEMORY[0x2822009F8](v35, v32, v34);
      }

      sub_26C6C0A84(v0 + 144);
      goto LABEL_42;
    }

    v67 = *(v0 + 1128);
    sub_26C676744((v0 + 272), v0 + 680);
    sub_26C67749C(v0 + 680, v0 + 720);
    v68 = sub_26C6D8878();
    v69 = sub_26C6D8BA8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v137 = v71;
      *v70 = 136446210;
      sub_26C67749C(v0 + 720, v0 + 760);
      v72 = sub_26C6D8A18();
      v74 = v73;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
      v75 = sub_26C67A77C(v72, v74, &v137);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_26C66B000, v68, v69, "Received unexpected Object Type: %{public}s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x26D6A7490](v71, -1, -1);
      MEMORY[0x26D6A7490](v70, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
    }

    v80 = (v0 + 680);
    goto LABEL_45;
  }

  if (v15 == 3)
  {
    v51 = *(v0 + 312);
    v50 = *(v0 + 320);
    *(v0 + 1248) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C00, &qword_26C6DB500);
    if (swift_dynamicCast())
    {
      v52 = *(v0 + 1064);
      sub_26C6BCB44(*(v0 + 74), v51, v50);
      goto LABEL_34;
    }

    if (swift_dynamicCast())
    {
      v66 = *(v0 + 1064);
      sub_26C6BD19C(*(v0 + 73), v51, v50);
      goto LABEL_34;
    }

    if (swift_dynamicCast())
    {
      v76 = *(v0 + 1024);
      *(v0 + 1256) = v76;
      v77 = *(v0 + 1032);
      v78 = swift_task_alloc();
      *(v0 + 1264) = v78;
      *v78 = v0;
      v78[1] = sub_26C6B8BA0;
      v79 = *(v0 + 1064);

      return sub_26C6B940C(v76, v77, v51, v50);
    }

    if (swift_dynamicCast())
    {
      v87 = *(v0 + 880);
      *(v0 + 1272) = v87;
      v88 = *(v0 + 888);
      *(v0 + 1280) = v88;
      v89 = *(v0 + 896);
      v90 = *(v0 + 904);
      *(v0 + 1288) = v90;
      v91 = swift_task_alloc();
      *(v0 + 1296) = v91;
      *v91 = v0;
      v91[1] = sub_26C6B8D88;
      v92 = *(v0 + 1064);

      return sub_26C6BB7B0(v87, v88, v89, v90, v51, v50);
    }

    if (swift_dynamicCast())
    {
      v93 = *(v0 + 992);
      *(v0 + 1304) = v93;
      v94 = *(v0 + 1000);
      *(v0 + 1312) = v94;
      *(v0 + 1008) = v93;
      *(v0 + 1016) = v94;
      v95 = swift_task_alloc();
      *(v0 + 1320) = v95;
      *v95 = v0;
      v95[1] = sub_26C6B8F80;
      v96 = *(v0 + 1064);

      return sub_26C6BBBB4((v0 + 1008), v51, v50);
    }

    if (swift_dynamicCast())
    {
      v97 = *(v0 + 1168);
      v98 = *(v0 + 1064);
      v99 = *(v0 + 912);
      v100 = *(v0 + 920);
      v101 = *(v0 + 936);
      v136 = *(v0 + 928);
      sub_26C67ED2C(v136, v101);
      swift_beginAccess();
      v102 = *(v98 + v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = *(v98 + v97);
      *(v0 + 1040) = v104;
      *(v98 + v97) = 0x8000000000000000;
      v84 = sub_26C689AC8(v99, v100);
      v105 = *(v104 + 16);
      v106 = (v85 & 1) == 0;
      v107 = __OFADD__(v105, v106);
      v108 = v105 + v106;
      if (!v107)
      {
        v109 = v85;
        v110 = (v0 + 1040);
        if (*(v104 + 24) >= v108)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v130 = v84;
            sub_26C6CF180();
            v84 = v130;
          }
        }

        else
        {
          sub_26C6CEBB4(v108, isUniquelyReferenced_nonNull_native);
          v111 = *v110;
          v84 = sub_26C689AC8(v99, v100);
          if ((v109 & 1) != (v85 & 1))
          {

            return sub_26C6D8E78();
          }
        }

        v122 = *v110;
        if (v109)
        {
          v123 = (v122[7] + 16 * v84);
          v124 = *v123;
          v125 = v123[1];
          *v123 = v136;
          v123[1] = v101;
          sub_26C678418(v124, v125);
        }

        else
        {
          v122[(v84 >> 6) + 8] |= 1 << v84;
          v126 = (v122[6] + 16 * v84);
          *v126 = v99;
          v126[1] = v100;
          v127 = (v122[7] + 16 * v84);
          *v127 = v136;
          v127[1] = v101;
          v128 = v122[2];
          v107 = __OFADD__(v128, 1);
          v129 = v128 + 1;
          if (v107)
          {
            __break(1u);
            return MEMORY[0x282200310](v84, v85, v86);
          }

          v122[2] = v129;
        }

        *(*(v0 + 1064) + *(v0 + 1168)) = v122;
        swift_endAccess();
        v51(0, 0, MEMORY[0x277D84F98]);

        sub_26C678418(v136, v101);
LABEL_34:
        sub_26C6C0A84(v0 + 144);

LABEL_42:
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
        goto LABEL_47;
      }

      __break(1u);
    }

    else
    {
      sub_26C676744((v0 + 272), v0 + 600);
      if (qword_2804A8598 == -1)
      {
LABEL_66:
        __swift_project_value_buffer(*(v0 + 1120), qword_2804AD228);
        sub_26C67749C(v0 + 600, v0 + 560);
        v112 = sub_26C6D8878();
        v113 = sub_26C6D8BA8();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v137 = v115;
          *v114 = 136446210;
          sub_26C67749C(v0 + 560, v0 + 640);
          v116 = sub_26C6D8A18();
          v118 = v117;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
          v119 = sub_26C67A77C(v116, v118, &v137);

          *(v114 + 4) = v119;
          _os_log_impl(&dword_26C66B000, v112, v113, "Received unexpected Request Type: %{public}s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v115);
          MEMORY[0x26D6A7490](v115, -1, -1);
          MEMORY[0x26D6A7490](v114, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
        }

        sub_26C676694();
        v120 = swift_allocError();
        *v121 = 0;
        v51(v120, 0, MEMORY[0x277D84F98]);

        v80 = (v0 + 600);
LABEL_45:
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
LABEL_46:
        sub_26C6C0A84(v0 + 144);
LABEL_47:
        v81 = *(v0 + 872);
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 840, *(v0 + 864));
        v82 = *(MEMORY[0x277D856D8] + 4);
        v83 = swift_task_alloc();
        *(v0 + 1200) = v83;
        *v83 = v0;
        v83[1] = sub_26C6B6F4C;
        v84 = v0 + 80;
        v85 = 0;
        v86 = 0;

        return MEMORY[0x282200310](v84, v85, v86);
      }
    }

    swift_once();
    goto LABEL_66;
  }

  if (v15 != 4)
  {
    v57 = *(v0 + 1128);
    v58 = sub_26C6D8878();
    v59 = sub_26C6D8BB8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26C66B000, v58, v59, "Server requests dismissal due to other session already paired", v60, 2u);
      MEMORY[0x26D6A7490](v60, -1, -1);
    }

    v61 = *(v0 + 1184);
    v62 = *(v0 + 1064);

    v63 = *(v62 + v61);
    if (v63)
    {
      v64 = *(*(v0 + 1064) + *(v0 + 1184) + 8);

      v63(v65);
      sub_26C676904(v63);
    }

    goto LABEL_46;
  }

  v37 = *(v0 + 272);
  v36 = *(v0 + 280);
  *(v0 + 1328) = v37;
  *(v0 + 1336) = v36;
  v38 = *(v0 + 288);
  *(v0 + 1344) = v38;
  v39 = swift_task_alloc();
  *(v0 + 1352) = v39;
  *v39 = v0;
  v39[1] = sub_26C6B916C;
  v40 = *(v0 + 1064);

  return sub_26C6BD8F8(v37, v36, v38);
}

uint64_t sub_26C6B8054()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1208);
  sub_26C6A6570(v0 + 336);
  v3 = *(v0 + 1224);
  swift_unknownObjectRelease();
  if (v2)
  {
    v4 = sub_26C6B8430;
  }

  else
  {
    sub_26C6C0984(v0 + 336);
    v4 = sub_26C6B80F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26C6B80F0()
{
  v1 = v0[149];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[133];
  v20 = v0[137];
  v21 = v7 + v0[147];
  *(v21 + 1) = 4;
  v19 = *(v7 + v1);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[68] = sub_26C6C0AF4;
  v0[69] = v8;
  v0[64] = MEMORY[0x277D85DD0];
  v0[65] = 1107296256;
  v0[66] = sub_26C670B0C;
  v0[67] = &block_descriptor_90;
  v9 = _Block_copy(v0 + 64);

  sub_26C6D8968();
  v0[131] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v20);
  v10 = v0[69];

  if ((*(v21 + 8) | 2) == 3)
  {
    v11 = swift_task_alloc();
    v0[154] = v11;
    *v11 = v0;
    v11[1] = sub_26C6B8778;
    v12 = v0[152];
    v13 = v0[133];

    return sub_26C6B62F0(v12);
  }

  else
  {
    v15 = v0[152];
    sub_26C6C0A84((v0 + 18));

    v16 = v0[109];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
    v17 = *(MEMORY[0x277D856D8] + 4);
    v18 = swift_task_alloc();
    v0[150] = v18;
    *v18 = v0;
    v18[1] = sub_26C6B6F4C;

    return MEMORY[0x282200310](v0 + 10, 0, 0);
  }
}

uint64_t sub_26C6B8430()
{
  sub_26C6C0984((v0 + 42));
  v1 = v0[149];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[133];
  v20 = v0[137];
  v21 = v7 + v0[147];
  *(v21 + 1) = 4;
  v19 = *(v7 + v1);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[68] = sub_26C6C0AF4;
  v0[69] = v8;
  v0[64] = MEMORY[0x277D85DD0];
  v0[65] = 1107296256;
  v0[66] = sub_26C670B0C;
  v0[67] = &block_descriptor_90;
  v9 = _Block_copy(v0 + 64);

  sub_26C6D8968();
  v0[131] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v20);
  v10 = v0[69];

  if ((*(v21 + 8) | 2) == 3)
  {
    v11 = swift_task_alloc();
    v0[154] = v11;
    *v11 = v0;
    v11[1] = sub_26C6B8778;
    v12 = v0[152];
    v13 = v0[133];

    return sub_26C6B62F0(v12);
  }

  else
  {
    v15 = v0[152];
    sub_26C6C0A84((v0 + 18));

    v16 = v0[109];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
    v17 = *(MEMORY[0x277D856D8] + 4);
    v18 = swift_task_alloc();
    v0[150] = v18;
    *v18 = v0;
    v18[1] = sub_26C6B6F4C;

    return MEMORY[0x282200310](v0 + 10, 0, 0);
  }
}

uint64_t sub_26C6B8778()
{
  v1 = *(*v0 + 1232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C6B8874, 0, 0);
}

uint64_t sub_26C6B8874()
{
  sub_26C6C0A84(v0 + 144);
  v1 = *(v0 + 872);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 840, *(v0 + 864));
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 1200) = v3;
  *v3 = v0;
  v3[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 80, 0, 0);
}

uint64_t sub_26C6B894C()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1208);
  sub_26C6A6570(v0 + 400);
  v3 = *(v0 + 1240);
  swift_unknownObjectRelease();
  if (v2)
  {
    v4 = sub_26C6B8AC0;
  }

  else
  {
    sub_26C6C0984(v0 + 400);
    v4 = sub_26C6B89E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26C6B89E8()
{
  sub_26C6C0A84((v0 + 18));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  v1 = v0[109];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[150] = v3;
  *v3 = v0;
  v3[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B8AC0()
{
  sub_26C6C0A84((v0 + 18));
  sub_26C6C0984((v0 + 50));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  v1 = v0[109];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[150] = v3;
  *v3 = v0;
  v3[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B8BA0()
{
  v1 = *(*v0 + 1264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C6B8C9C, 0, 0);
}

uint64_t sub_26C6B8C9C()
{
  v1 = *(v0 + 1248);

  sub_26C6C0A84(v0 + 144);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  v2 = *(v0 + 872);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 840, *(v0 + 864));
  v3 = *(MEMORY[0x277D856D8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 1200) = v4;
  *v4 = v0;
  v4[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 80, 0, 0);
}

uint64_t sub_26C6B8D88()
{
  v1 = *(*v0 + 1296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C6B8E84, 0, 0);
}

uint64_t sub_26C6B8E84()
{
  v1 = v0[161];
  v2 = v0[156];
  sub_26C678418(v0[159], v0[160]);

  sub_26C6C0A84((v0 + 18));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  v3 = v0[109];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[150] = v5;
  *v5 = v0;
  v5[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B8F80()
{
  v1 = *(*v0 + 1320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C6B907C, 0, 0);
}

uint64_t sub_26C6B907C()
{
  v1 = v0[156];
  sub_26C67EE70(v0[163], v0[164]);
  sub_26C6C0A84((v0 + 18));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  v2 = v0[109];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v3 = *(MEMORY[0x277D856D8] + 4);
  v4 = swift_task_alloc();
  v0[150] = v4;
  *v4 = v0;
  v4[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B916C()
{
  v1 = *(*v0 + 1352);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26C6B9268, 0, 0);
}

uint64_t sub_26C6B9268()
{
  sub_26C6C0850(v0[166], v0[167], v0[168]);
  sub_26C6C0A84((v0 + 18));
  v1 = v0[109];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[150] = v3;
  *v3 = v0;
  v3[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

void sub_26C6B9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler;
    v9 = Strong;
    swift_beginAccess();
    v10 = *v8;
    v11 = *(v8 + 8);
    sub_26C676954(v10);

    if (v10)
    {
      v10(a2, a3, a4);
      sub_26C676904(v10);
    }
  }
}

uint64_t sub_26C6B940C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1408) = v4;
  *(v5 + 1400) = a4;
  *(v5 + 1392) = a3;
  *(v5 + 1492) = a2;
  *(v5 + 1384) = a1;
  return MEMORY[0x2822009F8](sub_26C6B943C, 0, 0);
}

uint64_t sub_26C6B943C()
{
  v51 = v0;
  v1 = *(v0 + 1492);
  if (v1 <= 1)
  {
    if (!*(v0 + 1492))
    {
      v6 = v0 + 16;
      v10 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 1488;
      *(v0 + 24) = sub_26C6B9D24;
      v11 = swift_continuation_init();
      *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
      *(v0 + 720) = v11;
      *(v0 + 688) = MEMORY[0x277D85DD0];
      *(v0 + 696) = 1107296256;
      *(v0 + 704) = sub_26C6C28A0;
      *(v0 + 712) = &block_descriptor_113;
      [v10 provisionAnisetteWithCompletion_];
      goto LABEL_11;
    }

    v23 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);
    if (*(v23 + 16))
    {
      v24 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);

      v25 = sub_26C689AC8(0x617461446D6973, 0xE700000000000000);
      if (v26)
      {
        sub_26C676984(*(v23 + 56) + 32 * v25, v0 + 1136);

        if (swift_dynamicCast())
        {
          v6 = v0 + 144;
          v27 = *(v0 + 1408);
          *(v0 + 1424) = *(v0 + 1280);
          *(v0 + 1432) = *(v0 + 1288);
          v28 = *(v27 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
          v29 = sub_26C6D8798();
          *(v0 + 1440) = v29;
          *(v0 + 144) = v0;
          *(v0 + 184) = v0 + 1491;
          *(v0 + 152) = sub_26C6BA0CC;
          v30 = swift_continuation_init();
          *(v0 + 808) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
          *(v0 + 784) = v30;
          *(v0 + 752) = MEMORY[0x277D85DD0];
          *(v0 + 760) = 1107296256;
          *(v0 + 768) = sub_26C6C28A0;
          *(v0 + 776) = &block_descriptor_110;
          [v28 syncAnisetteWithSIMData:v29 completion:v0 + 752];
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    sub_26C6C0B64();
    v32 = swift_allocError();
    v33 = xmmword_26C6DD360;
  }

  else
  {
    if (v1 == 2)
    {
      v6 = v0 + 208;
      v12 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
      *(v0 + 208) = v0;
      *(v0 + 248) = v0 + 1490;
      *(v0 + 216) = sub_26C6BA480;
      v13 = swift_continuation_init();
      *(v0 + 936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
      *(v0 + 912) = v13;
      *(v0 + 880) = MEMORY[0x277D85DD0];
      *(v0 + 888) = 1107296256;
      *(v0 + 896) = sub_26C6C28A0;
      *(v0 + 904) = &block_descriptor_107_0;
      [v12 eraseAnisetteWithCompletion_];
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);
      if (*(v2 + 16))
      {
        v3 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);

        v4 = sub_26C689AC8(0x7250646C756F6873, 0xEF6E6F697369766FLL);
        if (v5)
        {
          sub_26C676984(*(v2 + 56) + 32 * v4, v0 + 1040);

          if (swift_dynamicCast())
          {
            v6 = v0 + 272;
            v7 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
            v8 = *(v0 + 1489);
            *(v0 + 272) = v0;
            *(v0 + 312) = v0 + 1360;
            *(v0 + 280) = sub_26C6BA800;
            v9 = swift_continuation_init();
            *(v0 + 680) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
            *(v0 + 656) = v9;
            *(v0 + 624) = MEMORY[0x277D85DD0];
            *(v0 + 632) = 1107296256;
            *(v0 + 640) = sub_26C6C296C;
            *(v0 + 648) = &block_descriptor_104;
            [v7 fetchAnisetteDataAndProvisionIfNecessary:v8 withCompletion:v0 + 624];
LABEL_11:

            return MEMORY[0x282200938](v6);
          }
        }

        else
        {
        }
      }

      sub_26C6C0B64();
      v32 = swift_allocError();
      v33 = xmmword_26C6DD350;
    }

    else
    {
      v14 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);
      if (*(v14 + 16))
      {
        v15 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);

        v16 = sub_26C689AC8(1684632420, 0xE400000000000000);
        if (v17)
        {
          sub_26C676984(*(v14 + 56) + 32 * v16, v0 + 944);

          if (swift_dynamicCast())
          {
            v6 = v0 + 80;
            v18 = *(v0 + 1328);
            v19 = *(v0 + 1336);
            v20 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
            v21 = sub_26C6D89E8();
            *(v0 + 1472) = v21;

            *(v0 + 80) = v0;
            *(v0 + 120) = v0 + 1368;
            *(v0 + 88) = sub_26C6BAAA4;
            v22 = swift_continuation_init();
            *(v0 + 872) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
            *(v0 + 848) = v22;
            *(v0 + 816) = MEMORY[0x277D85DD0];
            *(v0 + 824) = 1107296256;
            *(v0 + 832) = sub_26C6C296C;
            *(v0 + 840) = &block_descriptor_101;
            [v20 legacyAnisetteDataForDSID:v21 withCompletion:v0 + 816];
            goto LABEL_11;
          }
        }

        else
        {
        }
      }

      sub_26C6C0B64();
      v32 = swift_allocError();
      v33 = xmmword_26C6DD340;
    }
  }

  *v31 = v33;
  *(v31 + 16) = 0;
  swift_willThrow();
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v34 = sub_26C6D8898();
  __swift_project_value_buffer(v34, qword_2804AD1F8);
  v35 = v32;
  v36 = sub_26C6D8878();
  v37 = sub_26C6D8BA8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 136446210;
    *(v0 + 1376) = v32;
    v40 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v41 = sub_26C6D8A18();
    v43 = sub_26C67A77C(v41, v42, &v50);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_26C66B000, v36, v37, "Anisette Request Handling Error: %{public}s.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x26D6A7490](v39, -1, -1);
    MEMORY[0x26D6A7490](v38, -1, -1);
  }

  v44 = *(v0 + 1400);
  v45 = *(v0 + 1392);
  v46 = v32;
  v47 = sub_26C689E88(MEMORY[0x277D84F90]);
  v45(v32, 0, v47);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_26C6B9D24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1416) = v2;
  if (v2)
  {
    v3 = sub_26C6BAD50;
  }

  else
  {
    v3 = sub_26C6B9E34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6B9E34()
{
  v1 = *(v0 + 1488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C6DA0F0;
  *(v0 + 1232) = 0xD00000000000001CLL;
  *(v0 + 1240) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C6DA0F0;
  *(v4 + 32) = 0x7369766F72507369;
  v5 = v4 + 32;
  *(v4 + 40) = 0xED000064656E6F69;
  *(v4 + 72) = MEMORY[0x277D839B0];
  *(v4 + 48) = v1;
  v6 = sub_26C68AB1C(v4);
  swift_setDeallocating();
  sub_26C677B60(v5, &qword_2804A8B48, &qword_26C6DB3D0);
  swift_deallocClassInstance();
  v7 = type metadata accessor for AnisetteResponse();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___WFAnisetteResponse_id];
  *v9 = 0x6F697369766F7270;
  *(v9 + 1) = 0xE90000000000006ELL;
  *&v8[OBJC_IVAR___WFAnisetteResponse_data] = v6;
  *(v0 + 1296) = v8;
  *(v0 + 1304) = v7;
  v10 = objc_msgSendSuper2((v0 + 1296), sel_init);
  v11 = sub_26C6CC2C8();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    *(v2 + 96) = v3;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1032) = MEMORY[0x277CC9318];
    *(v0 + 1008) = v11;
    *(v0 + 1016) = v13;
    sub_26C68A024((v0 + 1008), (v2 + 72));
  }

  v14 = *(v0 + 1400);
  v15 = *(v0 + 1392);
  v16 = sub_26C689E88(v2);
  swift_setDeallocating();
  sub_26C677B60(v2 + 32, &qword_2804A86B8, &qword_26C6DA550);
  swift_deallocClassInstance();
  v15(0, 0, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26C6BA0CC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1448) = v2;
  if (v2)
  {
    v3 = sub_26C6BAF5C;
  }

  else
  {
    v3 = sub_26C6BA1DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6BA1DC()
{
  v1 = *(v0 + 1491);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C6DA0F0;
  *(v0 + 1344) = 0xD00000000000001CLL;
  *(v0 + 1352) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C6DA0F0;
  *(v4 + 32) = 0x6465636E79537369;
  v5 = v4 + 32;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 72) = MEMORY[0x277D839B0];
  *(v4 + 48) = v1;
  v6 = sub_26C68AB1C(v4);
  swift_setDeallocating();
  sub_26C677B60(v5, &qword_2804A8B48, &qword_26C6DB3D0);
  swift_deallocClassInstance();
  v7 = type metadata accessor for AnisetteResponse();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___WFAnisetteResponse_id];
  *v9 = 1668184435;
  *(v9 + 1) = 0xE400000000000000;
  *&v8[OBJC_IVAR___WFAnisetteResponse_data] = v6;
  *(v0 + 1200) = v8;
  *(v0 + 1208) = v7;
  v10 = objc_msgSendSuper2((v0 + 1200), sel_init);
  v11 = sub_26C6CC2C8();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    *(v2 + 96) = v3;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1192) = MEMORY[0x277CC9318];
    *(v0 + 1168) = v11;
    *(v0 + 1176) = v13;
    sub_26C68A024((v0 + 1168), (v2 + 72));
  }

  v14 = *(v0 + 1432);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1392);
  v18 = sub_26C689E88(v2);
  swift_setDeallocating();
  sub_26C677B60(v2 + 32, &qword_2804A86B8, &qword_26C6DA550);
  swift_deallocClassInstance();
  v17(0, 0, v18);

  sub_26C678418(v15, v14);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26C6BA480()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1456) = v2;
  if (v2)
  {
    v3 = sub_26C6BB184;
  }

  else
  {
    v3 = sub_26C6BA590;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6BA590()
{
  v1 = *(v0 + 1490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C6DA0F0;
  *(v0 + 1248) = 0xD00000000000001CLL;
  *(v0 + 1256) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(inited + 32) = 0x6465736172457369;
  v5 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  v6 = sub_26C68AB1C(inited);
  swift_setDeallocating();
  sub_26C677B60(v5, &qword_2804A8B48, &qword_26C6DB3D0);
  v7 = type metadata accessor for AnisetteResponse();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___WFAnisetteResponse_id];
  *v9 = 0x6573617265;
  *(v9 + 1) = 0xE500000000000000;
  *&v8[OBJC_IVAR___WFAnisetteResponse_data] = v6;
  *(v0 + 1264) = v8;
  *(v0 + 1272) = v7;
  v10 = objc_msgSendSuper2((v0 + 1264), sel_init);
  v11 = sub_26C6CC2C8();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    *(v2 + 96) = v3;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1096) = MEMORY[0x277CC9318];
    *(v0 + 1072) = v11;
    *(v0 + 1080) = v13;
    sub_26C68A024((v0 + 1072), (v2 + 72));
  }

  v14 = *(v0 + 1400);
  v15 = *(v0 + 1392);
  v16 = sub_26C689E88(v2);
  swift_setDeallocating();
  sub_26C677B60(v2 + 32, &qword_2804A86B8, &qword_26C6DA550);
  swift_deallocClassInstance();
  v15(0, 0, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26C6BA800()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1464) = v2;
  if (v2)
  {
    v3 = sub_26C6BB390;
  }

  else
  {
    v3 = sub_26C6BA910;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6BA910()
{
  v1 = *(v0 + 1360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(v0 + 1216) = 0xD00000000000001CLL;
  *(v0 + 1224) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  v4 = v1;
  v5 = sub_26C6CC838(v1, 3u);
  v6 = sub_26C6CC2C8();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    *(inited + 96) = v3;
    *(inited + 72) = 0;
    *(inited + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1000) = MEMORY[0x277CC9318];
    *(v0 + 976) = v6;
    *(v0 + 984) = v8;
    sub_26C68A024((v0 + 976), (inited + 72));
  }

  v9 = *(v0 + 1400);
  v10 = *(v0 + 1392);
  v11 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
  v10(0, 0, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26C6BAAA4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1480) = v2;
  if (v2)
  {
    v3 = sub_26C6BB59C;
  }

  else
  {
    v3 = sub_26C6BABB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6BABB4()
{
  v1 = *(v0 + 1368);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(v0 + 1312) = 0xD00000000000001CLL;
  *(v0 + 1320) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  v4 = v1;
  v5 = sub_26C6CC838(v1, 4u);
  v6 = sub_26C6CC2C8();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    *(inited + 96) = v3;
    *(inited + 72) = 0;
    *(inited + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1128) = MEMORY[0x277CC9318];
    *(v0 + 1104) = v6;
    *(v0 + 1112) = v8;
    sub_26C68A024((v0 + 1104), (inited + 72));
  }

  v9 = *(v0 + 1400);
  v10 = *(v0 + 1392);
  v11 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
  v10(0, 0, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26C6BAD50()
{
  v20 = v0;
  v1 = v0[177];
  swift_willThrow();
  v2 = v0[177];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD1F8);
  v4 = v2;
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[172] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v10 = sub_26C6D8A18();
    v12 = sub_26C67A77C(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Anisette Request Handling Error: %{public}s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v13 = v0[175];
  v14 = v0[174];
  v15 = v2;
  v16 = sub_26C689E88(MEMORY[0x277D84F90]);
  v14(v2, 0, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_26C6BAF5C()
{
  v23 = v0;
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[179];
  v4 = v0[178];
  swift_willThrow();
  sub_26C678418(v4, v3);

  v5 = v0[181];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD1F8);
  v7 = v5;
  v8 = sub_26C6D8878();
  v9 = sub_26C6D8BA8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    v0[172] = v5;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v13 = sub_26C6D8A18();
    v15 = sub_26C67A77C(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_26C66B000, v8, v9, "Anisette Request Handling Error: %{public}s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6A7490](v11, -1, -1);
    MEMORY[0x26D6A7490](v10, -1, -1);
  }

  v16 = v0[175];
  v17 = v0[174];
  v18 = v5;
  v19 = sub_26C689E88(MEMORY[0x277D84F90]);
  v17(v5, 0, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_26C6BB184()
{
  v20 = v0;
  v1 = v0[182];
  swift_willThrow();
  v2 = v0[182];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD1F8);
  v4 = v2;
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[172] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v10 = sub_26C6D8A18();
    v12 = sub_26C67A77C(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Anisette Request Handling Error: %{public}s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v13 = v0[175];
  v14 = v0[174];
  v15 = v2;
  v16 = sub_26C689E88(MEMORY[0x277D84F90]);
  v14(v2, 0, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_26C6BB390()
{
  v20 = v0;
  v1 = v0[183];
  swift_willThrow();
  v2 = v0[183];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD1F8);
  v4 = v2;
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[172] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v10 = sub_26C6D8A18();
    v12 = sub_26C67A77C(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Anisette Request Handling Error: %{public}s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v13 = v0[175];
  v14 = v0[174];
  v15 = v2;
  v16 = sub_26C689E88(MEMORY[0x277D84F90]);
  v14(v2, 0, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_26C6BB59C()
{
  v21 = v0;
  v1 = v0[185];
  v2 = v0[184];
  swift_willThrow();

  v3 = v0[185];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD1F8);
  v5 = v3;
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v0[172] = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v11 = sub_26C6D8A18();
    v13 = sub_26C67A77C(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v6, v7, "Anisette Request Handling Error: %{public}s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v14 = v0[175];
  v15 = v0[174];
  v16 = v3;
  v17 = sub_26C689E88(MEMORY[0x277D84F90]);
  v15(v3, 0, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_26C6BB7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_26C6BB7DC, 0, 0);
}

uint64_t sub_26C6BB7DC()
{
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  *(v0 + 72) = *v1;
  v2 = v1[1];
  swift_getObjectType();
  v3 = *(v2 + 8);
  v5 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BB870, v5, v4);
}

uint64_t sub_26C6BB870()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v0[10] = sub_26C6AB310();
  v0[11] = v6;

  return MEMORY[0x2822009F8](sub_26C6BB908, 0, 0);
}

uint64_t sub_26C6BB908()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_26C69F1B4(v2, v1);
  v4(0, 0, v5);

  sub_26C678418(v2, v1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26C6BB9B0()
{
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD240);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    sub_26C6AFA8C();
    swift_allocError();
    *v9 = v6;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v11;
    *v8 = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "Unable to prepare Rapport Source Template %{public}@.", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v13 = v0[6];
  v12 = v0[7];

  sub_26C699F34();
  v14 = swift_allocError();
  *v15 = 2;
  v13(v14, 0, 0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26C6BBBB4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  v6 = sub_26C6D8778();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v9 = sub_26C6D8948();
  *(v4 + 96) = v9;
  v10 = *(v9 - 8);
  *(v4 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = *a1;

  return MEMORY[0x2822009F8](sub_26C6BBCF8, 0, 0);
}

uint64_t sub_26C6BBCF8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = (*(v0 + 48) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  *(v0 + 136) = *v3;
  *(v0 + 144) = v3[1];
  *(v0 + 152) = swift_getObjectType();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_26C6BBDD8;
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);

  return sub_26C6ABFF8(v5, v6, (v0 + 16));
}

uint64_t sub_26C6BBDD8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_26C6BC7BC;
  }

  else
  {
    v3 = sub_26C6BBEEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6BBEEC()
{
  v100 = v0;
  v1 = v0[11];
  v2 = [objc_opt_self() defaultManager];
  sub_26C6D8768();
  v3 = sub_26C6D89E8();

  LODWORD(v1) = [v2 fileExistsAtPath_];

  if (!v1)
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v30 = v0[11];
    v32 = v0[8];
    v31 = v0[9];
    v33 = v0[7];
    v34 = sub_26C6D8898();
    __swift_project_value_buffer(v34, qword_2804AD288);
    (*(v32 + 16))(v31, v30, v33);
    v35 = sub_26C6D8878();
    v36 = sub_26C6D8BA8();
    v37 = os_log_type_enabled(v35, v36);
    v39 = v0[8];
    v38 = v0[9];
    v40 = v0[7];
    if (v37)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v99[0] = v42;
      *v41 = 136446210;
      v95 = sub_26C6D8768();
      v44 = v43;
      v97 = *(v39 + 8);
      v97(v38, v40);
      v45 = sub_26C67A77C(v95, v44, v99);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_26C66B000, v35, v36, "Unable to find file at path: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x26D6A7490](v42, -1, -1);
      MEMORY[0x26D6A7490](v41, -1, -1);
    }

    else
    {

      v97 = *(v39 + 8);
      v97(v38, v40);
    }

    v47 = v0[13];
    v46 = v0[14];
    v49 = v0[11];
    v48 = v0[12];
    v50 = v0[7];
    v52 = v0[4];
    v51 = v0[5];
    sub_26C699F34();
    v53 = swift_allocError();
    *v54 = 1;
    v52(v53, 0, 0);

    v97(v49, v50);
    (*(v47 + 8))(v46, v48);
    goto LABEL_17;
  }

  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD288);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26C66B000, v5, v6, "Encoding Enrollment Assets Data", v7, 2u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v8 = v0[21];
  v9 = v0[14];
  v10 = v0[12];

  v11 = sub_26C6D86A8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_26C6D8698();
  sub_26C6C0BE4(&qword_2804A8F78, MEMORY[0x277D04EB8]);
  v14 = sub_26C6D8688();
  v0[22] = v14;
  v0[23] = v15;
  if (v8)
  {

    v16 = v8;
    v17 = sub_26C6D8878();
    v18 = sub_26C6D8BB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v8;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_26C66B000, v17, v18, "Failed to encode EnrollmentAsserts %{public}@", v19, 0xCu);
      sub_26C677B60(v20, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v20, -1, -1);
      MEMORY[0x26D6A7490](v19, -1, -1);
    }

    v24 = v0[4];
    v23 = v0[5];

    sub_26C699F34();
    v25 = swift_allocError();
    *v26 = 1;
    v24(v25, 0, 0);

    goto LABEL_10;
  }

  v96 = v14;
  v98 = v15;
  v61 = v0[11];

  v62 = (sub_26C6D8718() + 16);
  if (!*v62)
  {
    v76 = v0[10];
    v75 = v0[11];
    v78 = v0[7];
    v77 = v0[8];

    (*(v77 + 16))(v76, v75, v78);
    v79 = sub_26C6D8878();
    v80 = sub_26C6D8BB8();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v0[10];
    v84 = v0[7];
    v83 = v0[8];
    if (v81)
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v99[0] = v86;
      *v85 = 136446210;
      sub_26C6C0BE4(&qword_2804A87B8, MEMORY[0x277CC9260]);
      v87 = sub_26C6D8E28();
      v89 = v88;
      (*(v83 + 8))(v82, v84);
      v90 = sub_26C67A77C(v87, v89, v99);

      *(v85 + 4) = v90;
      _os_log_impl(&dword_26C66B000, v79, v80, "Failed to get fileName from enrollmentsURL %{public}s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x26D6A7490](v86, -1, -1);
      MEMORY[0x26D6A7490](v85, -1, -1);
    }

    else
    {

      (*(v83 + 8))(v82, v84);
    }

    v92 = v0[4];
    v91 = v0[5];
    sub_26C699F34();
    v93 = swift_allocError();
    *v94 = 1;
    v92(v93, 0, 0);

    sub_26C678418(v96, v98);
LABEL_10:
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[12];
    (*(v0[8] + 8))(v0[11], v0[7]);
    (*(v28 + 8))(v27, v29);
LABEL_17:
    v55 = v0[14];
    v56 = v0[10];
    v57 = v0[11];
    v58 = v0[9];

    v59 = v0[1];

    return v59();
  }

  v63 = &v62[2 * *v62];
  v64 = *v63;
  v0[24] = *v63;
  v65 = v63[1];
  v0[25] = v65;
  swift_bridgeObjectRetain_n();

  v66 = sub_26C6D8878();
  v67 = sub_26C6D8BB8();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v99[0] = v69;
    *v68 = 136446210;
    *(v68 + 4) = sub_26C67A77C(v64, v65, v99);
    _os_log_impl(&dword_26C66B000, v66, v67, "Sending Enrollments zipped file %{public}s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x26D6A7490](v69, -1, -1);
    MEMORY[0x26D6A7490](v68, -1, -1);
  }

  v70 = v0[19];
  v71 = v0[17];
  v72 = *(v0[18] + 8);
  v74 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BC9C0, v74, v73);
}

uint64_t sub_26C6BC7BC()
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD288);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26C66B000, v4, v5, "Error getting enrollments URL %@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v11 = v0[21];
  v13 = v0[4];
  v12 = v0[5];

  sub_26C699F34();
  v14 = swift_allocError();
  *v15 = 1;
  v13(v14, 0, 0);

  v16 = v0[14];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26C6BC9C0()
{
  v1 = v0[17];
  sub_26C6ABCA0(v0[24], v0[25], v0[11]);

  return MEMORY[0x2822009F8](sub_26C6BCA30, 0, 0);
}

uint64_t sub_26C6BCA30()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = sub_26C6C61AC(*(v0 + 192), *(v0 + 200), v2, v1);
  v4(0, 0, v5);

  sub_26C678418(v2, v1);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 96);
  (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 112);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);

  v13 = *(v0 + 8);

  return v13();
}

void sub_26C6BCB44(char a1, void (*a2)(void, void, unint64_t), uint64_t a3)
{
  v7 = sub_26C6D8958();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C6D8978();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 3)
  {
    v35[0] = *(v3 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_26C6C0A00;
    v43 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v18 = &block_descriptor_74;
    goto LABEL_5;
  }

  if (!a1)
  {
    v35[0] = *(v3 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_26C6C0A20;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v18 = &block_descriptor_78;
LABEL_5:
    v40 = sub_26C670B0C;
    v41 = v18;
    v20 = _Block_copy(&aBlock);
    v36 = a2;
    v21 = v20;

    sub_26C6D8968();
    v37 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
    v35[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v16, v11, v21);
    _Block_release(v21);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v12);

    v22 = sub_26C689E88(MEMORY[0x277D84F90]);
    v36(0, 0, v22);

    return;
  }

  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v23 = a2;
  v24 = sub_26C6D8898();
  __swift_project_value_buffer(v24, qword_2804AD240);
  v25 = sub_26C6D8878();
  v26 = sub_26C6D8BA8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136446210;
    LOBYTE(v37) = a1;
    v29 = sub_26C6D8A18();
    v31 = sub_26C67A77C(v29, v30, &aBlock);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_26C66B000, v25, v26, "Received unhandled security event: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D6A7490](v28, -1, -1);
    MEMORY[0x26D6A7490](v27, -1, -1);
  }

  sub_26C699F34();
  v32 = swift_allocError();
  *v33 = 1;
  v34 = sub_26C689E88(MEMORY[0x277D84F90]);
  v23(v32, 0, v34);
}

void sub_26C6BD068()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler;
    v2 = Strong;
    swift_beginAccess();
    v4 = *v1;
    v3 = *(v1 + 8);
    sub_26C676954(v4);

    if (v4)
    {
      v4(0);
      sub_26C676904(v4);
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v7 = v5;
    swift_beginAccess();
    v8 = *v6;
    v9 = *(v6 + 8);
    sub_26C676954(v8);

    if (v8)
    {
      v10 = sub_26C689E88(MEMORY[0x277D84F90]);
      v8(5, v10);
      sub_26C676904(v8);
    }
  }
}

uint64_t sub_26C6BD19C(char a1, void (*a2)(void, void, unint64_t), uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v6 = sub_26C6D8958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C6D8978();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = *(v4 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = sub_26C6C09D8;
    v42 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_26C670B0C;
    v40 = &block_descriptor_65;
    v17 = _Block_copy(&aBlock);

    sub_26C6D8968();
    v36 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v15, v10, v17);
    _Block_release(v17);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v33 = v11;
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v18 = sub_26C6D8898();
    __swift_project_value_buffer(v18, qword_2804AD240);
    v19 = sub_26C6D8878();
    v20 = sub_26C6D8BB8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26C66B000, v19, v20, "Setup Complete", v21, 2u);
      MEMORY[0x26D6A7490](v21, -1, -1);
    }

    v32 = *(v4 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = sub_26C6C09F8;
    v42 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_26C670B0C;
    v40 = &block_descriptor_69_0;
    v23 = _Block_copy(&aBlock);

    sub_26C6D8968();
    v36 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v15, v10, v23);
    _Block_release(v23);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v33);

    v24 = *(v4 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_analyticsManager);
    v25 = sub_26C6B0A20();
    v27 = v26;
    v28 = sub_26C68A7EC(&unk_287D2B0F8);
    sub_26C677B60(&unk_287D2B118, &qword_2804A8BE8, &qword_26C6DB4F8);
    v40 = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
    v41 = sub_26C6C08B8();
    v29 = swift_allocObject();
    aBlock = v29;
    v29[2] = 0xD000000000000044;
    v29[3] = 0x800000026C6E0070;
    v29[4] = v25;
    v29[5] = v27;
    v29[6] = v28;
    sub_26C6CDF0C(&aBlock);
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  v30 = sub_26C689E88(MEMORY[0x277D84F90]);
  v35(0, 0, v30);
}

void sub_26C6BD7A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v2 = Strong;
    swift_beginAccess();
    v4 = *v1;
    v3 = *(v1 + 8);
    sub_26C676954(v4);

    if (v4)
    {
      v5 = sub_26C689E88(MEMORY[0x277D84F90]);
      v4(15, v5);
      sub_26C676904(v4);
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v8 = v6;
    swift_beginAccess();
    v9 = *v7;
    v10 = *(v7 + 8);
    sub_26C676954(v9);

    if (v9)
    {
      v11 = sub_26C689E88(MEMORY[0x277D84F90]);
      v9(1, v11);
      sub_26C676904(v9);
    }
  }
}

uint64_t sub_26C6BD8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = sub_26C6D8958();
  v4[52] = v5;
  v6 = *(v5 - 8);
  v4[53] = v6;
  v7 = *(v6 + 64) + 15;
  v4[54] = swift_task_alloc();
  v8 = sub_26C6D8978();
  v4[55] = v8;
  v9 = *(v8 - 8);
  v4[56] = v9;
  v10 = *(v9 + 64) + 15;
  v4[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6BDA18, 0, 0);
}

uint64_t sub_26C6BDA18()
{
  v93 = v0;
  v1 = *(v0 + 400);
  if (v1 >> 62 == 2)
  {
    v13 = (v0 + 144);
    v14 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    v15 = qword_2804A85A0;
    v90 = *(v0 + 392);

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD240);
    v17 = v14;
    v18 = sub_26C6D8878();
    v19 = sub_26C6D8BA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v92[0] = v21;
      *v20 = 136446210;
      swift_getErrorValue();
      v23 = *(v0 + 304);
      v22 = *(v0 + 312);
      v24 = *(v0 + 320);
      v25 = sub_26C6D8E88();
      v27 = sub_26C67A77C(v25, v26, v92);

      *(v20 + 4) = v27;
      v13 = (v0 + 144);
      _os_log_impl(&dword_26C66B000, v18, v19, "SFSession error: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6A7490](v21, -1, -1);
      MEMORY[0x26D6A7490](v20, -1, -1);
    }

    v28 = v14;
    v29 = *(v0 + 448);
    v30 = *(v0 + 456);
    v31 = *(v0 + 432);
    v33 = *(v0 + 416);
    v32 = *(v0 + 424);
    v89 = *(v0 + 392);
    v86 = *(v0 + 440);
    v87 = *(v0 + 384);
    v84 = *(*(v0 + 408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v85 = *(v0 + 408);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v28;
    *(v0 + 176) = sub_26C6C089C;
    *(v0 + 184) = v35;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_26C670B0C;
    *(v0 + 168) = &block_descriptor_51;
    v36 = _Block_copy(v13);
    v37 = v28;

    sub_26C6D8968();
    *(v0 + 352) = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v30, v31, v36);
    _Block_release(v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v86);
    v38 = *(v0 + 184);

    v39 = *(v85 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_analyticsManager);
    if (v89)
    {
      v40 = v87;
    }

    else
    {
      v40 = 0;
    }

    if (v89)
    {
      v41 = v90;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    v42 = sub_26C6D86E8();
    v43 = [v42 code];

    *(v0 + 360) = v43;
    v44 = sub_26C6D8E28();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    *(inited + 32) = 0x646F43726F727265;
    v48 = inited + 32;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = v44;
    *(inited + 56) = v46;
    v49 = sub_26C68A7EC(inited);
    swift_setDeallocating();
    sub_26C677B60(v48, &qword_2804A8BE8, &qword_26C6DB4F8);
    *(v0 + 264) = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
    *(v0 + 272) = sub_26C6C08B8();
    v50 = swift_allocObject();
    *(v0 + 240) = v50;
    v50[2] = 0xD000000000000044;
    v50[3] = 0x800000026C6E0070;
    v50[4] = v40;
    v50[5] = v41;
    v50[6] = v49;
    sub_26C6CDF0C((v0 + 240));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
    goto LABEL_38;
  }

  if (v1 >> 62 != 3)
  {
    goto LABEL_33;
  }

  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  if (v1 == 0xC000000000000000 && !v3 && v2 == 1)
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD240);
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BA8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26C66B000, v5, v6, "SFSession interrupted", v7, 2u);
      MEMORY[0x26D6A7490](v7, -1, -1);
    }

    v8 = *(v0 + 408);

    v9 = v8 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 8);

      v10(v12);
      sub_26C676904(v10);
    }

LABEL_38:
    v80 = *(v0 + 456);
    v81 = *(v0 + 432);

    v82 = *(v0 + 8);

    return v82();
  }

  if (v1 != 0xC000000000000000 || v3 || v2 != 3)
  {
LABEL_33:
    if (qword_2804A85A0 != -1)
    {
      swift_once();
      v1 = *(v0 + 400);
    }

    v68 = *(v0 + 384);
    v67 = *(v0 + 392);
    v69 = sub_26C6D8898();
    __swift_project_value_buffer(v69, qword_2804AD240);
    sub_26C6C0804(v68, v67, v1);
    v70 = sub_26C6D8878();
    v71 = sub_26C6D8BA8();
    sub_26C6C0850(v68, v67, v1);
    if (os_log_type_enabled(v70, v71))
    {
      v73 = *(v0 + 392);
      v72 = *(v0 + 400);
      v74 = *(v0 + 384);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v92[0] = v76;
      *v75 = 136446210;
      *(v0 + 280) = v74;
      *(v0 + 288) = v73;
      *(v0 + 296) = v72;
      sub_26C6C0804(v74, v73, v72);
      v77 = sub_26C6D8A18();
      v79 = sub_26C67A77C(v77, v78, v92);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_26C66B000, v70, v71, "Session Agent Error: %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x26D6A7490](v76, -1, -1);
      MEMORY[0x26D6A7490](v75, -1, -1);
    }

    goto LABEL_38;
  }

  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v51 = sub_26C6D8898();
  __swift_project_value_buffer(v51, qword_2804AD240);
  v52 = sub_26C6D8878();
  v53 = sub_26C6D8BA8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_26C66B000, v52, v53, "Failed to establish encrypted channel.", v54, 2u);
    MEMORY[0x26D6A7490](v54, -1, -1);
  }

  v56 = *(v0 + 448);
  v55 = *(v0 + 456);
  v57 = *(v0 + 432);
  v91 = *(v0 + 440);
  v59 = *(v0 + 416);
  v58 = *(v0 + 424);
  v60 = *(v0 + 408);

  v88 = *(v60 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 224) = sub_26C6C0954;
  *(v0 + 232) = v61;
  *(v0 + 192) = MEMORY[0x277D85DD0];
  *(v0 + 200) = 1107296256;
  *(v0 + 208) = sub_26C670B0C;
  *(v0 + 216) = &block_descriptor_58_0;
  v62 = _Block_copy((v0 + 192));

  sub_26C6D8968();
  *(v0 + 376) = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v55, v57, v62);
  _Block_release(v62);
  (*(v58 + 8))(v57, v59);
  (*(v56 + 8))(v55, v91);
  v63 = *(v0 + 232);

  *(v0 + 464) = *(v60 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 104) = &type metadata for SecurityRequest;
  *(v0 + 112) = &off_287D2D528;
  *(v0 + 80) = 2;
  v64 = swift_allocObject();
  *(v64 + 16) = 2;
  *(v0 + 120) = sub_26C6C11B0;
  *(v0 + 128) = v64;
  *(v0 + 136) = 0;
  type metadata accessor for SFSessionAgent();
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  swift_unknownObjectRetain();
  v66 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BE518, v66, v65);
}

uint64_t sub_26C6BE518()
{
  v1 = v0[58];
  sub_26C6A6570((v0 + 10));
  v2 = v0[58];
  swift_unknownObjectRelease();
  sub_26C6C0984((v0 + 10));
  v3 = v0[57];
  v4 = v0[54];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26C6BE5EC()
{
  sub_26C6C0984((v0 + 10));
  v1 = v0[57];
  v2 = v0[54];

  v3 = v0[1];

  return v3();
}

void sub_26C6BE660(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v5 = Strong;
    swift_beginAccess();
    v7 = *v4;
    v6 = *(v4 + 8);
    sub_26C676954(v7);

    if (v7)
    {
      v8 = sub_26C689E88(MEMORY[0x277D84F90]);
      v7(a2, v8);
      sub_26C676904(v7);
    }
  }
}

void sub_26C6BE724(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD240);
    v4 = a1;
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446466;
      v9 = sub_26C6D8A18();
      v11 = sub_26C67A77C(v9, v10, &v25);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v13 = sub_26C6D8A18();
      v15 = sub_26C67A77C(v13, v14, &v25);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_26C66B000, v5, v6, "Request %{public}s failed to send, error: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v8, -1, -1);
      MEMORY[0x26D6A7490](v7, -1, -1);

      return;
    }

    v23 = a1;
  }

  else
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD240);
    oslog = sub_26C6D8878();
    v17 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;
      v20 = sub_26C6D8A18();
      v22 = sub_26C67A77C(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_26C66B000, oslog, v17, "Request %{public}s sent successfully.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D6A7490](v19, -1, -1);
      MEMORY[0x26D6A7490](v18, -1, -1);

      return;
    }

    v23 = oslog;
  }
}

void sub_26C6BEA84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v2 = Strong;
    swift_beginAccess();
    v3 = *v1;
    v4 = *(v1 + 8);
    sub_26C676954(v3);

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      sub_26C6D8CD8();
      swift_getErrorValue();
      *(inited + 96) = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
      v7 = sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
      v3(1, v7);
      sub_26C676904(v3);
    }
  }
}

id WFSetupClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26C6BECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a3;
  return MEMORY[0x2822009F8](sub_26C6BECC8, 0, 0);
}

uint64_t sub_26C6BECC8()
{
  v21 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_26C6D8898();
  v0[22] = __swift_project_value_buffer(v2, qword_2804AD288);
  sub_26C67749C(v1, (v0 + 10));
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8B98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446210;
    v7 = v0[13];
    v8 = v0[14];
    __swift_project_boxed_opaque_existential_1(v0 + 10, v7);
    v9 = (*(v8 + 8))(v7, v8);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
    v13 = sub_26C67A77C(v11, v12, &v20);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v3, v4, "Storing enrollments data: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  }

  v14 = *(v0[21] + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_26C6BEF00;
  v16 = v0[19];
  v17 = v0[20];
  v18 = v0[18];

  return sub_26C6ACFB8(v18, v16, v17);
}

uint64_t sub_26C6BEF00()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_26C6BF244;
  }

  else
  {
    v3 = sub_26C6BF014;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6BF014()
{
  *(v0 + 200) = *(v0 + 192);
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  *(v0 + 208) = v6;
  *(v0 + 216) = v5;
  v8 = sub_26C6D8878();
  v9 = sub_26C6D8B98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 192) == 0;
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = v10;
    _os_log_impl(&dword_26C66B000, v8, v9, "Will send EnrollmentsReceivedRequest with success result %{BOOL,public}d", v11, 8u);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  if (v7)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v0 + 192);
  v15 = *(v0 + 168);

  *(v0 + 224) = *(v15 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 40) = &type metadata for EnrollmentsReceivedRequest;
  *(v0 + 48) = &off_287D2F118;
  *(v0 + 16) = v13;
  *(v0 + 24) = v12;
  *(v0 + 32) = v14 == 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14 == 0;
  *(v0 + 56) = sub_26C6C10F0;
  *(v0 + 64) = v16;
  *(v0 + 72) = 0;
  type metadata accessor for SFSessionAgent();
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  v18 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BF568, v18, v17);
}

uint64_t sub_26C6BF244()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "Error enrollments data: %{public}@", v8, 0xCu);
    sub_26C677B60(v9, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 200) = 0;
  v12 = *(v0 + 176);
  v13 = *(v0 + 144);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v18 = v17;
  *(v0 + 208) = v17;
  *(v0 + 216) = v16;
  v19 = sub_26C6D8878();
  v20 = sub_26C6D8B98();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 192) == 0;
    v22 = swift_slowAlloc();
    *v22 = 67240192;
    *(v22 + 4) = v21;
    _os_log_impl(&dword_26C66B000, v19, v20, "Will send EnrollmentsReceivedRequest with success result %{BOOL,public}d", v22, 8u);
    MEMORY[0x26D6A7490](v22, -1, -1);
  }

  if (v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  if (v18)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 192);
  v26 = *(v0 + 168);

  *(v0 + 224) = *(v26 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 40) = &type metadata for EnrollmentsReceivedRequest;
  *(v0 + 48) = &off_287D2F118;
  *(v0 + 16) = v24;
  *(v0 + 24) = v23;
  *(v0 + 32) = v25 == 0;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25 == 0;
  *(v0 + 56) = sub_26C6C10F0;
  *(v0 + 64) = v27;
  *(v0 + 72) = 0;
  type metadata accessor for SFSessionAgent();
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  v29 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BF568, v29, v28);
}

uint64_t sub_26C6BF568()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  *(v0 + 76) = sub_26C6A6570(v0 + 16);
  v3 = *(v0 + 224);
  if (v2)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x2822009F8](sub_26C6BF644, 0, 0);
  }

  else
  {
    v4 = *(v0 + 208);
    swift_unknownObjectRelease();

    sub_26C6C0984(v0 + 16);
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_26C6BF644()
{
  v23 = v0;
  v1 = *(v0 + 176);
  if (*(v0 + 208))
  {
    v2 = *(v0 + 208);
  }

  sub_26C6C0984(v0 + 16);

  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BA8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 76);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 192) == 0;
    if (v7)
    {
      v9 = *(v0 + 208);
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    if (v7)
    {
      v10 = *(v0 + 216);
    }

    else
    {
      v10 = 0;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    *(v0 + 120) = v10;
    *(v0 + 128) = v9;
    *(v0 + 136) = v8;
    v13 = sub_26C6D8A18();
    v15 = sub_26C67A77C(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v0 + 73) = v5;
    *(v0 + 74) = HIBYTE(v5) & 1;
    v16 = sub_26C6D8A18();
    v18 = sub_26C67A77C(v16, v17, &v22);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_26C66B000, v3, v4, "Error sending request %{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  else
  {
    v19 = *(v0 + 208);
  }

  v20 = *(v0 + 8);

  return v20();
}

void sub_26C6BF848(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD288);
    v4 = a1;

    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BA8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446466;

      v9 = sub_26C6D8A18();
      v11 = sub_26C67A77C(v9, v10, &v25);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v13 = sub_26C6D8A18();
      v15 = sub_26C67A77C(v13, v14, &v25);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_26C66B000, v5, v6, "Request %{public}s failed to send, error: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v8, -1, -1);
      MEMORY[0x26D6A7490](v7, -1, -1);

      return;
    }

    v23 = a1;
  }

  else
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD288);

    oslog = sub_26C6D8878();
    v17 = sub_26C6D8BB8();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;

      v20 = sub_26C6D8A18();
      v22 = sub_26C67A77C(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_26C66B000, oslog, v17, "Request %{public}s sent successfully.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D6A7490](v19, -1, -1);
      MEMORY[0x26D6A7490](v18, -1, -1);

      return;
    }

    v23 = oslog;
  }
}

double sub_26C6BFC14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26C689AC8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C6CF180();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_26C6BFCC4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_26C6DA6C0;
  }

  return result;
}

uint64_t sub_26C6BFCC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C6D8CA8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26C6D8EE8();

      sub_26C6D8A38();
      v13 = sub_26C6D8F08();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_26C6BFE74()
{
  MEMORY[0x26D6A7510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26C6BFEC4()
{
  result = qword_2804A8F60;
  if (!qword_2804A8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A8F58, &qword_26C6DD370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F60);
  }

  return result;
}

uint64_t sub_26C6BFF28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C676B2C;

  return sub_26C6B19A8(a1, v4, v5, v6);
}

uint64_t sub_26C6BFFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B2680(a1, v4, v5, v6);
}

uint64_t sub_26C6C0090()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C6C00D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6B5AF0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C01DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B5E54(a1, v4, v5, v6);
}

void sub_26C6C0804(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 2)
  {

    v5 = (a3 & 0x3FFFFFFFFFFFFFFFLL);
  }
}

void sub_26C6C0850(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 2)
  {
  }
}

void sub_26C6C089C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26C6BEA84();
}

unint64_t sub_26C6C08B8()
{
  result = qword_2804A8F68;
  if (!qword_2804A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F68);
  }

  return result;
}

uint64_t sub_26C6C090C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C6C0B14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26C6C0B64()
{
  result = qword_2804A8F70;
  if (!qword_2804A8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F70);
  }

  return result;
}

uint64_t sub_26C6C0BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C6C0C2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6C0C64(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = a1;
  v7[0] = a2;
  v7[1] = a3;
  return v4(&v8, v7);
}

uint64_t sub_26C6C0CA4(unsigned int *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2, a2[1]);
}

uint64_t sub_26C6C0CD8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_26C6C0D10(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_26C6C0D3C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_26C6C0D68(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_26C6C0DA4(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_26C6C0DD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26C6C0E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B4508(a1, v4, v5, v6);
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_157Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C0F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B4610(a1, v4, v5, v6);
}

uint64_t sub_26C6C10B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_26C6C10F0(NSObject *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_26C6BF848(a1);
}

void sub_26C6C13E0(uint64_t a1, _BYTE *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = sub_26C6D89A8();
  v28[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v28];

  v7 = v28[0];
  if (v6)
  {
    v8 = sub_26C6D87A8();
    v10 = v9;

    v11 = sub_26C6D8678();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_26C6D8668();
    sub_26C6C1D44();
    sub_26C6D8658();
    if (!v2)
    {

      sub_26C678418(v8, v10);
      goto LABEL_11;
    }

    sub_26C678418(v8, v10);
    v14 = v2;
  }

  else
  {
    v15 = v7;
    v14 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v16 = sub_26C6D8898();
  __swift_project_value_buffer(v16, qword_2804AD258);

  v17 = sub_26C6D8878();
  v18 = sub_26C6D8BA8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28[0] = v20;
    *v19 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F80, &qword_26C6DD580);
    v21 = sub_26C6D8A18();
    v23 = sub_26C67A77C(v21, v22, v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = sub_26C6D89C8();
    v26 = sub_26C67A77C(v24, v25, v28);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_26C66B000, v17, v18, "Unabled to decode %{public}s from %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v20, -1, -1);
    MEMORY[0x26D6A7490](v19, -1, -1);
  }

  LOBYTE(v28[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();

  *a2 = 1;
LABEL_11:
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26C6C174C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8FA8, &qword_26C6DD590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v17 = v1[1];
  v18 = v9;
  v10 = v1[3];
  v16 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C1D98();
  sub_26C6D8F38();
  LOBYTE(v19) = 0;
  sub_26C6C1E40();
  sub_26C6D8E18();
  if (!v2)
  {
    v13 = v10;
    v14 = v16;
    LOBYTE(v19) = 1;
    sub_26C6D8DF8();
    v19 = v14;
    v20 = v13;
    v21 = 2;
    sub_26C67ED2C(v14, v13);
    sub_26C686938();
    sub_26C6D8E18();
    sub_26C678418(v19, v20);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26C6C1964@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F90, &qword_26C6DD588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C1D98();
  sub_26C6D8F28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v18[0]) = 0;
  sub_26C6C1DEC();
  sub_26C6D8DE8();
  LOBYTE(v18[0]) = 1;
  v11 = sub_26C6D8DC8();
  v13 = v12;
  v14 = v11;
  v19 = 2;
  sub_26C686AFC();
  sub_26C6D8DE8();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;

  sub_26C67ED2C(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_26C678418(v15, v16);
}

uint64_t sub_26C6C1BBC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570795461746164;
  }
}

uint64_t sub_26C6C1C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C6C1FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26C6C1C44(uint64_t a1)
{
  v2 = sub_26C6C1D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6C1C80(uint64_t a1)
{
  v2 = sub_26C6C1D98();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26C6C1CDC(uint64_t a1, _BYTE *a2)
{
  sub_26C6C13E0(a1, &v4);
  if (v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_26C6C1D44()
{
  result = qword_2804A8F88;
  if (!qword_2804A8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F88);
  }

  return result;
}

unint64_t sub_26C6C1D98()
{
  result = qword_2804A8F98;
  if (!qword_2804A8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F98);
  }

  return result;
}

unint64_t sub_26C6C1DEC()
{
  result = qword_2804A8FA0;
  if (!qword_2804A8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FA0);
  }

  return result;
}

unint64_t sub_26C6C1E40()
{
  result = qword_2804A8FB0;
  if (!qword_2804A8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FB0);
  }

  return result;
}

unint64_t sub_26C6C1EA8()
{
  result = qword_2804A8FB8;
  if (!qword_2804A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FB8);
  }

  return result;
}

unint64_t sub_26C6C1F00()
{
  result = qword_2804A8FC0;
  if (!qword_2804A8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FC0);
  }

  return result;
}

unint64_t sub_26C6C1F58()
{
  result = qword_2804A8FC8;
  if (!qword_2804A8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FC8);
  }

  return result;
}

uint64_t sub_26C6C1FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_26C6D8E48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C6DF820 == a2 || (sub_26C6D8E48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026C6DF840 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C6D8E48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_26C6C20F0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 8;
  }

  *(inited + 96) = MEMORY[0x277D849A8];
  *(inited + 72) = v3;
  v4 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v4;
}

uint64_t sub_26C6C21A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C6C21F8(a1);
  if (v3)
  {
    *a2 = result;
  }

  else
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_26C6C21F8(uint64_t a1)
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v2 = sub_26C689928(v18), (v3 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v2, v19);
    sub_26C678324(v18);
    if (swift_dynamicCast())
    {
      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v14 = sub_26C6D8898();
      __swift_project_value_buffer(v14, qword_2804AD258);

      v5 = sub_26C6D8878();
      v6 = sub_26C6D8BA8();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v18[0] = v8;
        *v7 = 136446466;
        *(v7 + 4) = sub_26C67A77C(6386527, 0xE300000000000000, v18);
        *(v7 + 12) = 2082;
        v15 = sub_26C6D89C8();
        v17 = sub_26C67A77C(v15, v16, v18);

        *(v7 + 14) = v17;
        v12 = "Unable to decode raw value for key: %{public}s, from payload: %{public}s";
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_26C678324(v18);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD258);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_26C67A77C(24947, 0xE200000000000000, v18);
    *(v7 + 12) = 2082;
    v9 = sub_26C6D89C8();
    v11 = sub_26C67A77C(v9, v10, v18);

    *(v7 + 14) = v11;
    v12 = "Unable to get raw value for key: %{public}s, from payload: %{public}s";
LABEL_10:
    _os_log_impl(&dword_26C66B000, v5, v6, v12, v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

LABEL_11:

  LOBYTE(v18[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();
  return 1;
}

unint64_t sub_26C6C25B8()
{
  result = qword_2804A8FD0;
  if (!qword_2804A8FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A8FD8, qword_26C6DD710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FD0);
  }

  return result;
}

unint64_t sub_26C6C2620()
{
  result = qword_2804A8FE0;
  if (!qword_2804A8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FE0);
  }

  return result;
}

uint64_t sub_26C6C267C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26C6C27A4;

  return v11(a1, a2, a3);
}

uint64_t sub_26C6C27A4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_26C6C28A0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26C6C296C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26C6C2BB0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26C6C6010;

  return sub_26C6C4B88();
}

uint64_t sub_26C6C2DE0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = sub_26C6D87A8();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_26C6C2ECC;

  return sub_26C6C4DEC(v8, v10);
}

uint64_t sub_26C6C2ECC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[3];
  sub_26C678418(v5[4], v5[5]);
  if (v3)
  {
    v11 = sub_26C6D86E8();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_26C6C31FC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26C6C32A4;

  return sub_26C6C5164();
}

uint64_t sub_26C6C32A4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_26C6D86E8();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_26C6C35A0(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26C6C364C;

  return sub_26C6C54A8();
}

uint64_t sub_26C6C364C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_26C6D86E8();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_26C6C3954(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_26C6D8A08();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_26C6C3A3C;

  return (sub_26C6C57E4)(v5, v7);
}

uint64_t sub_26C6C3A3C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_26C6D86E8();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

id sub_26C6C3C38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFAnisetteAgent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26C6C3C94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26C677C9C;

  return sub_26C6C3954(v2, v3, v4);
}

uint64_t sub_26C6C3D48(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_26C677C9C;

  return v7();
}

uint64_t sub_26C6C3E30()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26C677C9C;

  return sub_26C6C3D48(v2, v3, v5);
}

uint64_t sub_26C6C3EF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26C676B2C;

  return v8();
}

uint64_t sub_26C6C3FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6C3EF0(a1, v4, v5, v7);
}

uint64_t sub_26C6C40A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_26C6C4390(a3, v25 - v11);
  v13 = sub_26C6D8B08();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26C677B60(v12, &qword_2804A86F8, &qword_26C6DA3D0);
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

  sub_26C6D8AF8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_26C6D8AD8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_26C6D8A28() + 32;
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

    sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);

    return v23;
  }

LABEL_8:
  sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);
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

uint64_t sub_26C6C4390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C6C4400()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6C4438(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26C677C9C;

  return sub_26C697FA4(a1, v5);
}

uint64_t sub_26C6C44F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26C676B2C;

  return sub_26C697FA4(a1, v5);
}

uint64_t sub_26C6C45C8()
{
  v1 = v0[18];
  v2 = [objc_allocWithZone(MEMORY[0x277CFD4A8]) init];
  v0[19] = v2;
  [v2 setSharingChannel_];
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD240);
  v4 = v2;
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_26C66B000, v5, v6, "Creating CDPStateController with context: %@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
  v0[20] = v10;
  v11 = sub_26C6D8878();
  if (v10)
  {
    v12 = sub_26C6D8BB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C66B000, v11, v12, "Starting CoreCDP approval server…", v13, 2u);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }

    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_26C6C4990;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26C6C28A0;
    v0[13] = &block_descriptor_111;
    v0[14] = v14;
    [v10 startCircleApplicationApprovalServer_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v15 = sub_26C6D8BA8();
    if (os_log_type_enabled(v11, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26C66B000, v11, v15, "CDPStateController(context:) returned nil during its init.", v16, 2u);
      MEMORY[0x26D6A7490](v16, -1, -1);
    }

    sub_26C6C5F40();
    swift_allocError();
    swift_willThrow();

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_26C6C4990()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_26C6C4B0C;
  }

  else
  {
    v3 = sub_26C6C4AA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6C4AA0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26C6C4B0C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  v4 = v0[21];
  v5 = v0[1];

  return v5(0);
}

uint64_t sub_26C6C4BA4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[18] = v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_26C6C4CDC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C28A0;
  v0[13] = &block_descriptor_107_1;
  v0[14] = v2;
  [v1 provisionWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C4CDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_26C6C605C;
  }

  else
  {
    v3 = sub_26C6C602C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6C4DEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_26C6C4E0C, 0, 0);
}

uint64_t sub_26C6C4E0C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[20] = v3;
  v4 = sub_26C6D8798();
  v0[21] = v4;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_26C6C4F68;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C28A0;
  v0[13] = &block_descriptor_88;
  v0[14] = v5;
  [v3 syncWithSIMData:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C4F68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_26C6C50E8;
  }

  else
  {
    v3 = sub_26C6C5078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6C5078()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26C6C50E8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4(0);
}

uint64_t sub_26C6C5180()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[18] = v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_26C6C52B8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C28A0;
  v0[13] = &block_descriptor_69_1;
  v0[14] = v2;
  [v1 eraseWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C52B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_26C6C5434;
  }

  else
  {
    v3 = sub_26C6C53C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6C53C8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26C6C5434()
{
  v1 = v0[18];
  v2 = v0[19];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[19];

  return v3(0);
}

uint64_t sub_26C6C54C4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26C6C55FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C296C;
  v0[13] = &block_descriptor_50_0;
  v0[14] = v2;
  [v1 anisetteDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C55FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_26C6C5774;
  }

  else
  {
    v3 = sub_26C6C570C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6C570C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26C6C5774()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_26C6C57E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_26C6C5804, 0, 0);
}

uint64_t sub_26C6C5804()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[21] = v3;
  v4 = sub_26C6D89E8();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26C6C5960;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C296C;
  v0[13] = &block_descriptor_4;
  v0[14] = v5;
  [v3 legacyAnisetteDataForDSID:v4 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C5960()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_26C6C5AE0;
  }

  else
  {
    v3 = sub_26C6C5A70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26C6C5A70()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26C6C5AE0()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_26C6C5B70()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C5BB0()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26C677C9C;

  return sub_26C6C35A0(v2, v4);
}

uint64_t sub_26C6C5C68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26C677C9C;

  return sub_26C6C31FC(v2);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C5D5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26C676B2C;

  return sub_26C6C2DE0(v2, v3, v4);
}

uint64_t objectdestroy_53Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6C5E50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26C677C9C;

  return sub_26C6C2BB0(v2);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26C6C5F40()
{
  result = qword_2804A9068;
  if (!qword_2804A9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9068);
  }

  return result;
}

unint64_t sub_26C6C5FA8()
{
  result = qword_2804A9078;
  if (!qword_2804A9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9078);
  }

  return result;
}

unint64_t sub_26C6C6078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D849A8];
  *(inited + 72) = 4;
  v1 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v1;
}

uint64_t TransmittableFileDataType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26C6D8DB8();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_26C6C6384()
{
  result = qword_2804A90E0;
  if (!qword_2804A90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A90E0);
  }

  return result;
}

uint64_t sub_26C6C63D8()
{
  sub_26C6D8EE8();
  sub_26C6D8A38();
  return sub_26C6D8F08();
}

uint64_t sub_26C6C6454()
{
  sub_26C6D8EE8();
  sub_26C6D8A38();
  return sub_26C6D8F08();
}

uint64_t sub_26C6C64AC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26C6D8DB8();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_26C6C65E4()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  v11[0] = 0x6570795461746164;
  v11[1] = 0xE800000000000000;
  sub_26C67ED18(v1, v2);
  v4 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  *(inited + 96) = v4;
  *(inited + 72) = 0x656D6C6C6F726E65;
  *(inited + 80) = 0xEB0000000073746ELL;
  v5 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  if (v2 >> 60 != 15)
  {
    sub_26C6D8CD8();
    v10 = MEMORY[0x277CC9318];
    *&v9 = v1;
    *(&v9 + 1) = v2;
    sub_26C68A024(&v9, v8);
    sub_26C67ED2C(v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26C689CC0(v8, v11, isUniquelyReferenced_nonNull_native);
    sub_26C67EE70(v1, v2);
    sub_26C678324(v11);
  }

  return v5;
}

double sub_26C6C6774@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26C6D8CD8();
  if (!*(a1 + 16) || (v6 = sub_26C689928(v26), (v7 & 1) == 0))
  {
    sub_26C678324(v26);
    goto LABEL_10;
  }

  sub_26C676984(*(a1 + 56) + 32 * v6, v27);
  sub_26C678324(v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v15 = sub_26C6D8898();
    __swift_project_value_buffer(v15, qword_2804AD258);

    v9 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v11 = 136446466;
    *(v11 + 4) = sub_26C67A77C(0x6570795461746164, 0xE800000000000000, v26);
    *(v11 + 12) = 2082;
LABEL_14:
    v18 = sub_26C6D89C8();
    v20 = sub_26C67A77C(v18, v19, v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_26C66B000, v9, v16, "Unable to load %{public}s from %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    v14 = v17;
    goto LABEL_15;
  }

  if (sub_26C6D8DB8())
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD258);

    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v9, v10))
    {

      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136446210;
    v13 = sub_26C67A77C(0x6570795461746164, 0xE800000000000000, v26);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v9, v10, "Unable to cast %{public}s into DataType.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v14 = v12;
LABEL_15:
    MEMORY[0x26D6A7490](v14, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
LABEL_16:

    LOBYTE(v26[0]) = 1;
    sub_26C676694();
    swift_willThrowTypedImpl();
    *a2 = 1;
    return result;
  }

  v25[0] = -2.31584178e77;
  *&v25[1] = 0x800000026C6E02E0;
  sub_26C6D8CD8();
  if (!*(a1 + 16) || (v22 = sub_26C689928(v26), (v23 & 1) == 0))
  {
    sub_26C678324(v26);
    goto LABEL_23;
  }

  sub_26C676984(*(a1 + 56) + 32 * v22, v27);
  sub_26C678324(v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v24 = sub_26C6D8898();
    __swift_project_value_buffer(v24, qword_2804AD258);

    v9 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v11 = 136446466;
    *(v11 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E02E0, v26);
    *(v11 + 12) = 2082;
    goto LABEL_14;
  }

  result = v25[0];
  *a3 = *v25;
  return result;
}

void sub_26C6C6C90(uint64_t a1@<X0>, _BYTE *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26C6C6774(a1, &v5, a3);
  if (v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_26C6C6CC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9100, &qword_26C6DDD40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C751C();
  sub_26C6D8F38();
  LOBYTE(v16) = 0;
  sub_26C6D8DF8();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_26C67ED2C(v14, v15);
    sub_26C686938();
    sub_26C6D8E18();
    sub_26C678418(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26C6C6E64()
{
  if (*v0)
  {
    result = 0x656D6C6C6F726E65;
  }

  else
  {
    result = 0x656D614E656C6966;
  }

  *v0;
  return result;
}

uint64_t sub_26C6C6EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v6 || (sub_26C6D8E48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6C6C6F726E65 && a2 == 0xEE0061746144746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C6D8E48();

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

uint64_t sub_26C6C6F90(uint64_t a1)
{
  v2 = sub_26C6C751C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6C6FCC(uint64_t a1)
{
  v2 = sub_26C6C751C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26C6C7008@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26C6C7570(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_26C6C7058()
{
  result = qword_2804A90E8;
  if (!qword_2804A90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A90E8);
  }

  return result;
}

uint64_t sub_26C6C70AC()
{
  v1 = v0;
  v28[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_26C6D89A8();
  v27 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v27];

  v5 = v27;
  if (v4)
  {
    v6 = sub_26C6D87A8();
    v8 = v7;

    v9 = sub_26C6D8678();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_26C6D8668();
    sub_26C6C7400();
    sub_26C6D8658();
    if (!v0)
    {

      sub_26C678418(v6, v8);
      v24 = v28[0];
      goto LABEL_11;
    }

    sub_26C678418(v6, v8);
  }

  else
  {
    v12 = v5;
    v1 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD258);

  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = &type metadata for RapportRetrieveDataResponse;
    v28[0] = v17;
    *v16 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A90F0, "DY");
    v18 = sub_26C6D8A18();
    v20 = sub_26C67A77C(v18, v19, v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = sub_26C6D89C8();
    v23 = sub_26C67A77C(v21, v22, v28);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_26C66B000, v14, v15, "Unabled to decode %{public}s from %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v17, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  v24 = 2;
  LOBYTE(v28[0]) = 2;
  sub_26C676694();
  swift_willThrowTypedImpl();

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

unint64_t sub_26C6C7400()
{
  result = qword_2804A90F8;
  if (!qword_2804A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A90F8);
  }

  return result;
}

uint64_t sub_26C6C7464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26C6C74C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_26C6C751C()
{
  result = qword_2804A9108;
  if (!qword_2804A9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9108);
  }

  return result;
}

uint64_t sub_26C6C7570(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9110, &qword_26C6DDD48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C751C();
  sub_26C6D8F28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = sub_26C6D8DC8();
    v12[15] = 1;
    sub_26C686AFC();
    sub_26C6D8DE8();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_26C67ED2C(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_26C678418(v10, v11);
  }

  return v8;
}

unint64_t sub_26C6C77A0()
{
  result = qword_2804A9118;
  if (!qword_2804A9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9118);
  }

  return result;
}

unint64_t sub_26C6C77F8()
{
  result = qword_2804A9120;
  if (!qword_2804A9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9120);
  }

  return result;
}

unint64_t sub_26C6C7850()
{
  result = qword_2804A9128;
  if (!qword_2804A9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9128);
  }

  return result;
}

double static SetupServiceAction.from(_:metaData:handler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = a3;
        *(v18 + 24) = a4;
        *a5 = sub_26C68AF88;
        *(a5 + 8) = v18;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v10 = 4;
      }

      else
      {
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = a4;
        *a5 = sub_26C68AF88;
        *(a5 + 8) = v11;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v10 = 5;
      }

      goto LABEL_20;
    }

    if (a1 == 6)
    {
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v23 = sub_26C689928(v55), (v24 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v23, v56);
        sub_26C678324(v55);
        if (swift_dynamicCast())
        {
          v25 = swift_allocObject();
          *(v25 + 16) = a3;
          *(v25 + 24) = a4;
          *a5 = 7235952;
          *(a5 + 8) = 0xE300000000000000;
          *(a5 + 16) = sub_26C68AF88;
          *(a5 + 24) = v25;
          *(a5 + 32) = 6;
          goto LABEL_32;
        }
      }

      else
      {
        sub_26C678324(v55);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v41 = sub_26C6D8898();
      __swift_project_value_buffer(v41, qword_2804AD228);

      v28 = sub_26C6D8878();
      v29 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_54;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v30 = 136446467;
      v56[0] = 6;
      type metadata accessor for WFSetupServiceAction(0);
      v42 = sub_26C6D8A18();
      v44 = sub_26C67A77C(v42, v43, v55);

      *(v30 + 4) = v44;
      *(v30 + 12) = 2081;
      v45 = sub_26C6D89C8();
      v47 = sub_26C67A77C(v45, v46, v55);

      *(v30 + 14) = v47;
      v38 = "Unable to decode WFSetupServiceAction: %{public}s with data: %{private}s";
      goto LABEL_53;
    }

    if (a1 != 7)
    {
LABEL_33:
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v27 = sub_26C6D8898();
      __swift_project_value_buffer(v27, qword_2804AD228);

      v28 = sub_26C6D8878();
      v29 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_54;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v30 = 136446466;
      v56[0] = a1;
      type metadata accessor for WFSetupServiceAction(0);
      v32 = sub_26C6D8A18();
      v34 = sub_26C67A77C(v32, v33, v55);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_26C6D89C8();
      v37 = sub_26C67A77C(v35, v36, v55);

      *(v30 + 14) = v37;
      v38 = "Unable to decode unknown WFSetupServiceAction type: %{public}s with data: %{public}s";
LABEL_53:
      _os_log_impl(&dword_26C66B000, v28, v29, v38, v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v31, -1, -1);
      MEMORY[0x26D6A7490](v30, -1, -1);
LABEL_54:

      result = 0.0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = -1;
      return result;
    }

    sub_26C6D8CD8();
    if (*(a2 + 16) && (v13 = sub_26C689928(v55), (v14 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v13, v56);
      sub_26C678324(v55);
      if (swift_dynamicCast())
      {
        v15 = sub_26C6D8DB8();

        if (v15 <= 2)
        {
          v16 = swift_allocObject();
          *(v16 + 16) = a3;
          *(v16 + 24) = a4;
          *a5 = v15;
          *(a5 + 8) = sub_26C6C8B68;
          *(a5 + 16) = v16;
          *(a5 + 24) = 0;
          *(a5 + 32) = 7;
LABEL_32:

          return result;
        }
      }
    }

    else
    {
      sub_26C678324(v55);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v48 = sub_26C6D8898();
    __swift_project_value_buffer(v48, qword_2804AD228);

    v28 = sub_26C6D8878();
    v29 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_54;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55[0] = v31;
    *v30 = 136446466;
    v40 = 7;
LABEL_52:
    v56[0] = v40;
    type metadata accessor for WFSetupServiceAction(0);
    v49 = sub_26C6D8A18();
    v51 = sub_26C67A77C(v49, v50, v55);

    *(v30 + 4) = v51;
    *(v30 + 12) = 2082;
    v52 = sub_26C6D89C8();
    v54 = sub_26C67A77C(v52, v53, v55);

    *(v30 + 14) = v54;
    v38 = "Unable to decode WFSetupServiceAction: %{public}s with data: %{public}s";
    goto LABEL_53;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = a3;
      *(v12 + 24) = a4;
      *a5 = sub_26C6C8B74;
      *(a5 + 8) = v12;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      v10 = 3;
      goto LABEL_20;
    }

    sub_26C6D8CD8();
    if (*(a2 + 16) && (v20 = sub_26C689928(v55), (v21 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v20, v56);
      sub_26C678324(v55);
      if (swift_dynamicCast())
      {
        v22 = swift_allocObject();
        *(v22 + 16) = a3;
        *(v22 + 24) = a4;
        *a5 = 2003790950;
        *(a5 + 8) = sub_26C68AF88;
        *(a5 + 16) = v22;
        *(a5 + 24) = 0;
        *(a5 + 32) = 2;
        goto LABEL_32;
      }
    }

    else
    {
      sub_26C678324(v55);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v39 = sub_26C6D8898();
    __swift_project_value_buffer(v39, qword_2804AD228);

    v28 = sub_26C6D8878();
    v29 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_54;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55[0] = v31;
    *v30 = 136446466;
    v40 = 2;
    goto LABEL_52;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a3;
      *(v9 + 24) = a4;
      *a5 = sub_26C689A70;
      *(a5 + 8) = v9;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      v10 = 1;
LABEL_20:
      *(a5 + 32) = v10;
      goto LABEL_21;
    }

    goto LABEL_33;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *a5 = sub_26C68AF88;
  *(a5 + 8) = v17;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
LABEL_21:

  return result;
}

uint64_t sub_26C6C81E0(char a1, void (*a2)(unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = a1;
  v5 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  a2(v5);
}

uint64_t sub_26C6C82B8(uint64_t a1, char a2, void (*a3)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    sub_26C6D8CD8();
    swift_getErrorValue();
    *(inited + 96) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
    v6 = sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C6A012C(inited + 32);
  }

  else
  {
    v6 = sub_26C689E88(MEMORY[0x277D84F90]);
  }

  a3(v6);
}

uint64_t SetupServiceAction.to()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 > 3)
  {
    if (*(v0 + 32) <= 5u)
    {
      v6 = *(v0 + 8);
      if (v5 == 4)
      {
        v8 = 4;
        sub_26C698320(v1, v2, v4, v3, 4u);
      }

      else
      {
        v8 = 5;
        sub_26C698320(v1, v2, v4, v3, 5u);
      }

      sub_26C689E88(MEMORY[0x277D84F90]);
      v7 = swift_allocObject();
      goto LABEL_16;
    }

    if (v5 == 6)
    {
      v10 = *(v0 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;

      v12 = MEMORY[0x277D837D0];
      sub_26C6D8CD8();
      *(inited + 96) = v12;
      *(inited + 72) = v1;
      *(inited + 80) = v2;
      sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C6A012C(inited + 32);
      v7 = swift_allocObject();
      v8 = 6;
      v2 = v4;
      v4 = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_26C6DA0F0;

      v15 = MEMORY[0x277D837D0];
      sub_26C6D8CD8();
      if (v1)
      {
        if (v1 == 1)
        {
          v16 = "SessionDisconnect";
          v17 = 0xD000000000000019;
        }

        else
        {
          v16 = "ignoreOnSessionDisconnect";
          v17 = 0xD00000000000001DLL;
        }
      }

      else
      {
        v17 = 0xD000000000000021;
        v16 = "prescriptionRecords";
      }

      *(v14 + 96) = v15;
      *(v14 + 72) = v17;
      *(v14 + 80) = v16 | 0x8000000000000000;
      sub_26C689E88(v14);
      swift_setDeallocating();
      sub_26C6A012C(v14 + 32);
      v8 = 7;
      v7 = swift_allocObject();
    }
  }

  else
  {
    if (*(v0 + 32) <= 1u)
    {
      v6 = *(v0 + 8);
      if (v5)
      {
        v8 = 1;
        sub_26C698320(v1, v2, v4, v3, 1u);
        sub_26C689E88(MEMORY[0x277D84F90]);
        v7 = swift_allocObject();
      }

      else
      {
        sub_26C698320(v1, v2, v4, v3, 0);
        sub_26C689E88(MEMORY[0x277D84F90]);
        v7 = swift_allocObject();
        v8 = 0;
      }

      goto LABEL_16;
    }

    if (v5 != 2)
    {
      v6 = *(v0 + 8);
      v8 = 3;
      sub_26C698320(v1, v2, v4, v3, 3u);
      sub_26C689E88(MEMORY[0x277D84F90]);
      v7 = swift_allocObject();
LABEL_16:
      v2 = v1;
      v4 = v6;
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_26C6DA0F0;

    sub_26C6D8CD8();
    *(v9 + 96) = MEMORY[0x277D83B88];
    *(v9 + 72) = v1;
    sub_26C689E88(v9);
    swift_setDeallocating();
    sub_26C6A012C(v9 + 32);
    v7 = swift_allocObject();
    v8 = 2;
  }

LABEL_17:
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  return v8;
}

void sub_26C6C88D4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v4 = sub_26C689928(v14), (v5 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v4, v15);
    sub_26C678324(v14);
    if (swift_dynamicCast())
    {
      a2(115);
      return;
    }
  }

  else
  {
    sub_26C678324(v14);
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD228);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BA8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    v11 = sub_26C6D89C8();
    v13 = sub_26C67A77C(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Unable to decode WFSetupServiceAction handler for .resume with data: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }
}

uint64_t sub_26C6C8B30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t sub_26C6C8BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_26C6C8BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_26C6C8CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26C677C9C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_26C6C8E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26C676B2C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing23FileTransferSourceEventO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_26C6C8FA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6C8FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6C9030(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_26C6C9068(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6C90B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26C6C910C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C6C9134(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26C6C917C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C6C91C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26C6C9210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C6C9274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD258);

  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v69[0] = v7;
    *v6 = 136446210;
    v8 = sub_26C6D89C8();
    v10 = sub_26C67A77C(v8, v9, v69);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26C66B000, v4, v5, "Attemping to decode preauth data: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v67 = 0x73676E616CLL;
  v68 = 0xE500000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v11 = sub_26C689928(v69), (v12 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v11, &v70);
    sub_26C678324(v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D58, &unk_26C6DC170);
    if (swift_dynamicCast())
    {
      if (v72)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_26C678324(v69);
  }

  v72 = 0;
LABEL_12:
  v67 = 1735287148;
  v68 = 0xE400000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v13 = sub_26C689928(v69), (v14 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v13, &v70);
    sub_26C678324(v69);
    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9130, "HS");
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_26C6DA0F0;
      *(v15 + 32) = 1735287148;
      *(v15 + 40) = 0xE400000000000000;
      v72 = v15;
    }
  }

  else
  {
    sub_26C678324(v69);
  }

LABEL_17:
  v70 = 0x656C61636F6CLL;
  v71 = 0xE600000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v16 = sub_26C689928(v69), (v17 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v16, &v70);
    sub_26C678324(v69);
    v18 = swift_dynamicCast();
    v19 = v67;
    if (!v18)
    {
      v19 = 0;
    }

    v63 = v19;
    if (v18)
    {
      v20 = v68;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_26C678324(v69);
    v63 = 0;
    v20 = 0;
  }

  v70 = 0x6C65646F6DLL;
  v71 = 0xE500000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v21 = sub_26C689928(v69), (v22 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v21, &v70);
    sub_26C678324(v69);
    v23 = swift_dynamicCast();
    v24 = v67;
    if (!v23)
    {
      v24 = 0;
    }

    v64 = v24;
    if (v23)
    {
      v25 = v68;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_26C678324(v69);
    v64 = 0;
    v25 = 0;
  }

  sub_26C6D8CD8();
  if (*(a1 + 16) && (v26 = sub_26C689928(v69), (v27 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v26, &v70);
    sub_26C678324(v69);
    if (swift_dynamicCast())
    {
      SFDeviceClassCodeToString(0x64u);
      v28 = sub_26C6D8A58();
      v30 = v29;

      v31 = sub_26C6D8878();
      v32 = sub_26C6D8BB8();

      v66 = v28;
      if (os_log_type_enabled(v31, v32))
      {
        v61 = v32;
        v33 = v28;
        v34 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v69[0] = v62;
        *v34 = 136446466;
        LOBYTE(v70) = 100;
        type metadata accessor for SFDeviceClassCode(0);
        v35 = sub_26C6D8A18();
        v37 = sub_26C67A77C(v35, v36, v69);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2082;
        *(v34 + 14) = sub_26C67A77C(v33, v30, v69);
        _os_log_impl(&dword_26C66B000, v31, v61, "Found Device Class Code: %{public}s. DeviceClass is %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6A7490](v62, -1, -1);
        MEMORY[0x26D6A7490](v34, -1, -1);
      }

      goto LABEL_42;
    }
  }

  else
  {
    sub_26C678324(v69);
  }

  SFDeviceClassCodeToString(0);
  v38 = sub_26C6D8A58();
  v30 = v39;

  v31 = sub_26C6D8878();
  v40 = sub_26C6D8BA8();

  v66 = v38;
  if (os_log_type_enabled(v31, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v69[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_26C67A77C(v38, v30, v69);
    _os_log_impl(&dword_26C66B000, v31, v40, "Failed to find Device Class Code using .codeUnknown. DeviceClass is %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x26D6A7490](v42, -1, -1);
    MEMORY[0x26D6A7490](v41, -1, -1);
  }

LABEL_42:

  v70 = 1951627361;
  v71 = 0xE400000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v43 = sub_26C689928(v69), (v44 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v43, &v70);
    sub_26C678324(v69);
    v45 = swift_dynamicCast();
    if (v45)
    {
      v46 = 0x7373616C6364;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = 0xE600000000000000;
    }

    else
    {
      v47 = 0xF000000000000000;
    }
  }

  else
  {
    sub_26C678324(v69);
    v46 = 0;
    v47 = 0xF000000000000000;
  }

  v70 = 0x646C697542736FLL;
  v71 = 0xE700000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v48 = sub_26C689928(v69), (v49 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v48, &v70);
    sub_26C678324(v69);
    result = swift_dynamicCast();
    v51 = 0x7373616C6364;
    if (result)
    {
      v52 = 0xE600000000000000;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {
    result = sub_26C678324(v69);
    v51 = 0;
    v52 = 0;
  }

  if (v72)
  {
    if (v20 && v25)
    {
      if (v47 >> 60 != 15)
      {
        *a2 = v72;
        a2[1] = v63;
        a2[2] = v20;
        a2[3] = v64;
        a2[4] = v25;
        a2[5] = v66;
        a2[6] = v30;
        a2[7] = v46;
        a2[8] = v47;
        a2[9] = v51;
        a2[10] = v52;
        return result;
      }
    }
  }

  else
  {
  }

  v53 = sub_26C6D8878();
  v54 = sub_26C6D8BA8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v69[0] = v56;
    *v55 = 136446210;
    v57 = sub_26C6D89C8();
    v59 = sub_26C67A77C(v57, v58, v69);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_26C66B000, v53, v54, "Failed to decode pre-auth data payload with data: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x26D6A7490](v56, -1, -1);
    MEMORY[0x26D6A7490](v55, -1, -1);
  }

  sub_26C678378();
  swift_allocError();
  *v60 = 257;
  swift_willThrow();
  sub_26C67EE70(v46, v47);
}

uint64_t sub_26C6C9CE0(uint64_t a1)
{
  *(&v5 + 1) = 0xE200000000000000;

  sub_26C6D8CD8();
  v6 = MEMORY[0x277D849A8];
  *&v5 = 3;
  sub_26C68A024(&v5, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26C689CC0(v4, v7, isUniquelyReferenced_nonNull_native);
  sub_26C678324(v7);
  return a1;
}

const char *SFDeviceClassCodeToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_279D43F20[a1];
  }
}

id sub_26C6C9DF4()
{
  v0 = sub_26C6D8868();
  v86 = *(v0 - 8);
  v87 = v0;
  v1 = *(v86 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C689E88(MEMORY[0x277D84F90]);
  v5 = _AXSCopySettingsDataBlobForBuddy();
  if (v5)
  {
    v6 = v5;
    *&v91 = 1951627361;
    *(&v91 + 1) = 0xE400000000000000;
    sub_26C6D8CD8();
    type metadata accessor for CFData(0);
    v92 = v7;
    *&v91 = v6;
    sub_26C68A024(&v91, v90);
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v4;
    sub_26C689CC0(v90, &v93, isUniquelyReferenced_nonNull_native);

    sub_26C678324(&v93);
    v4 = v89;
  }

  else
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v10 = sub_26C6D8898();
    __swift_project_value_buffer(v10, qword_2804AD258);
    v11 = sub_26C6D8878();
    v12 = sub_26C6D8BA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C66B000, v11, v12, "Failed to get the accessibility settings", v13, 2u);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }
  }

  v14 = SFDeviceClassCodeGet();
  *&v91 = 0x7373616C6364;
  *(&v91 + 1) = 0xE600000000000000;
  sub_26C6D8CD8();
  v92 = MEMORY[0x277D84B78];
  LOBYTE(v91) = v14;
  sub_26C68A024(&v91, v90);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v4;
  sub_26C689CC0(v90, &v93, v15);
  sub_26C678324(&v93);
  v16 = v89;
  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v17 = sub_26C6D8898();
  v18 = __swift_project_value_buffer(v17, qword_2804AD258);
  v19 = sub_26C6D8878();
  v20 = sub_26C6D8BB8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v93 = v22;
    *v21 = 136446210;
    SFDeviceClassCodeToString(v14);
    v23 = sub_26C6D8A58();
    v25 = sub_26C67A77C(v23, v24, &v93);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_26C66B000, v19, v20, "Setting device class in pre-Auth data: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D6A7490](v22, -1, -1);
    MEMORY[0x26D6A7490](v21, -1, -1);
  }

  v26 = objc_opt_self();
  v27 = [v26 preferredLanguages];
  v28 = MEMORY[0x277D837D0];
  v29 = sub_26C6D8AA8();

  if (v29[2])
  {
    v31 = v29[4];
    v30 = v29[5];
    swift_bridgeObjectRetain_n();

    v32 = sub_26C6D8878();
    v33 = sub_26C6D8BB8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v93 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_26C67A77C(v31, v30, &v93);
      _os_log_impl(&dword_26C66B000, v32, v33, "Setting preferred langauge in pre-Auth data: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x26D6A7490](v35, -1, -1);
      MEMORY[0x26D6A7490](v34, -1, -1);
    }

    *&v91 = 1735287148;
    *(&v91 + 1) = 0xE400000000000000;
    v28 = MEMORY[0x277D837D0];
    sub_26C6D8CD8();
    v92 = v28;
    *&v91 = v31;
    *(&v91 + 1) = v30;
    sub_26C68A024(&v91, v90);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v16;
    sub_26C689CC0(v90, &v93, v36);
    sub_26C678324(&v93);
    v16 = v89;
  }

  else
  {

    v37 = sub_26C6D8878();
    v38 = sub_26C6D8BA8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26C66B000, v37, v38, "No preferred language", v39, 2u);
      MEMORY[0x26D6A7490](v39, -1, -1);
    }
  }

  v40 = [v26 currentLocale];
  sub_26C6D8858();

  v41 = sub_26C6D8848();
  v43 = v42;
  (*(v86 + 8))(v3, v87);
  *&v91 = 0x656C61636F6CLL;
  *(&v91 + 1) = 0xE600000000000000;
  sub_26C6D8CD8();
  v92 = v28;
  *&v91 = v41;
  *(&v91 + 1) = v43;
  sub_26C68A024(&v91, v90);

  v44 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v16;
  sub_26C689CC0(v90, &v93, v44);
  sub_26C678324(&v93);
  v45 = v89;

  v46 = sub_26C6D8878();
  v47 = sub_26C6D8BB8();

  v48 = os_log_type_enabled(v46, v47);
  v88 = v18;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v93 = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_26C67A77C(v41, v43, &v93);
    _os_log_impl(&dword_26C66B000, v46, v47, "Setting preferred NSLocale in pre-Auth data: %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x26D6A7490](v50, -1, -1);
    MEMORY[0x26D6A7490](v49, -1, -1);
  }

  v51 = [objc_opt_self() processInfo];
  [v51 operatingSystemVersion];
  v52 = v93;
  v53 = v94;
  v54 = v95;

  v93 = v52;
  v93 = sub_26C6D8E28();
  v94 = v55;

  MEMORY[0x26D6A6940](46, 0xE100000000000000);

  v56 = v93;
  v57 = v94;
  v93 = v53;
  v58 = sub_26C6D8E28();
  v60 = v59;
  v93 = v56;
  v94 = v57;

  MEMORY[0x26D6A6940](v58, v60);

  MEMORY[0x26D6A6940](46, 0xE100000000000000);

  v61 = v93;
  v62 = v94;
  v93 = v54;
  v63 = sub_26C6D8E28();
  v65 = v64;
  v93 = v61;
  v94 = v62;

  MEMORY[0x26D6A6940](v63, v65);

  v67 = v93;
  v66 = v94;
  *&v91 = 0x646C697542736FLL;
  *(&v91 + 1) = 0xE700000000000000;
  v68 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  v92 = v68;
  *&v91 = v67;
  *(&v91 + 1) = v66;
  sub_26C68A024(&v91, v90);

  v69 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v45;
  sub_26C689CC0(v90, &v93, v69);
  sub_26C678324(&v93);
  v70 = v89;

  v71 = sub_26C6D8878();
  v72 = sub_26C6D8BB8();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v93 = v74;
    *v73 = 136446210;
    *(v73 + 4) = sub_26C67A77C(v67, v66, &v93);
    _os_log_impl(&dword_26C66B000, v71, v72, "Setting SFMessageKeyOSBuild in pre-Auth data to : %{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x26D6A7490](v74, -1, -1);
    MEMORY[0x26D6A7490](v73, -1, -1);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v76 = result;

    v77 = MobileGestalt_copy_productType_obj();

    if (v77)
    {
      v78 = sub_26C6D8A08();
      v80 = v79;

      *&v91 = 0x6C65646F6DLL;
      *(&v91 + 1) = 0xE500000000000000;
      sub_26C6D8CD8();
      v92 = v68;
      *&v91 = v78;
      *(&v91 + 1) = v80;
      sub_26C68A024(&v91, v90);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v70;
      sub_26C689CC0(v90, &v93, v81);
      sub_26C678324(&v93);
      return v89;
    }

    else
    {
      v82 = sub_26C6D8878();
      v83 = sub_26C6D8BA8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_26C66B000, v82, v83, "Failed to get model for device", v84, 2u);
        MEMORY[0x26D6A7490](v84, -1, -1);
      }
    }

    return v70;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AnalyticsError.hashValue.getter()
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

unint64_t sub_26C6CA96C()
{
  result = qword_2804A9138;
  if (!qword_2804A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9138);
  }

  return result;
}

uint64_t sub_26C6CA9DC()
{
  v1 = *v0;
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

uint64_t sub_26C6CAAB0()
{
  *v0;
  *v0;
  *v0;
  sub_26C6D8A38();
}

uint64_t sub_26C6CAB70()
{
  v1 = *v0;
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

uint64_t sub_26C6CAC40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26C6CC7EC();
  *a2 = result;
  return result;
}

void sub_26C6CAC70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F697369766F7270;
  v5 = 0xE500000000000000;
  v6 = 0x6573617265;
  v7 = 0xE500000000000000;
  v8 = 0x6863746566;
  if (v2 != 3)
  {
    v8 = 0x79636167656CLL;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1668184435;
    v3 = 0xE400000000000000;
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

uint64_t sub_26C6CAD18()
{
  sub_26C6D8CF8();

  MEMORY[0x26D6A6940](*(v0 + OBJC_IVAR___WFAnisetteRequest_id), *(v0 + OBJC_IVAR___WFAnisetteRequest_id + 8));
  MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);
  v1 = *(v0 + OBJC_IVAR___WFAnisetteRequest_data);

  v2 = sub_26C6D89C8();
  v4 = v3;

  MEMORY[0x26D6A6940](v2, v4);

  return 540697705;
}

id sub_26C6CAEBC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___WFAnisetteRequest_data;
  *&v1[v5] = sub_26C68AC4C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C6DA0F0;
  v7 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v6 + 32) = v7;
  sub_26C6D8C48();

  if (!v28)
  {
    sub_26C677B60(v27, &qword_2804A8950, &qword_26C6DAC50);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD1F8);
    v17 = sub_26C6D8878();
    v18 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_18;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_26C67A77C(0x6574746573696E41, 0xEF74736575716552, v27);
    v21 = "Failed to decode id for object %s";
    goto LABEL_17;
  }

  v9 = v25;
  v8 = v26;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C6DE3D0;
  *(v10 + 32) = v7;
  *(v10 + 40) = sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  *(v10 + 48) = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  *(v10 + 56) = sub_26C6779D0(0, &qword_2804A8808, 0x277CBEAC0);
  sub_26C6D8C48();

  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9198, &qword_26C6DE428);
    if (swift_dynamicCast())
    {
      v11 = v25;
      v12 = &v1[OBJC_IVAR___WFAnisetteRequest_id];
      *v12 = v9;
      *(v12 + 1) = v8;
      v13 = *&v1[v5];
      *&v1[v5] = v11;

      v24.receiver = v1;
      v24.super_class = ObjectType;
      v14 = objc_msgSendSuper2(&v24, sel_init);

      return v14;
    }
  }

  else
  {

    sub_26C677B60(v27, &qword_2804A8950, &qword_26C6DAC50);
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v22 = sub_26C6D8898();
  __swift_project_value_buffer(v22, qword_2804AD1F8);
  v17 = sub_26C6D8878();
  v18 = sub_26C6D8BA8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_26C67A77C(0x6574746573696E41, 0xEF74736575716552, v27);
    v21 = "Failed to decode data for object %s";
LABEL_17:
    _os_log_impl(&dword_26C66B000, v17, v18, v21, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6A7490](v20, -1, -1);
    MEMORY[0x26D6A7490](v19, -1, -1);
  }

LABEL_18:

  v23 = *&v2[v5];

  swift_deallocPartialClassInstance();
  return 0;
}

NSObject *sub_26C6CB368()
{
  v37[1] = *MEMORY[0x277D85DE8];
  v35 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v35];
  v2 = v35;
  if (v1)
  {
    v3 = sub_26C6D87A8();

    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD1F8);
    v5 = v0;
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = 0;
      *v8 = 136315138;
      v36 = 0xE000000000000000;
      v37[0] = v34;
      sub_26C6D8CF8();

      v35 = 540697705;
      v36 = 0xE400000000000000;
      MEMORY[0x26D6A6940](*&v5[OBJC_IVAR___WFAnisetteRequest_id], *&v5[OBJC_IVAR___WFAnisetteRequest_id + 8]);
      MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);
      v9 = *&v5[OBJC_IVAR___WFAnisetteRequest_data];

      v10 = sub_26C6D89C8();
      v11 = v3;
      v13 = v12;

      MEMORY[0x26D6A6940](v10, v13);

      v14 = sub_26C67A77C(v35, v36, v37);

      *(v8 + 4) = v14;
      v3 = v11;
      _os_log_impl(&dword_26C66B000, v6, v7, "Successfully archived request: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x26D6A7490](v34, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }
  }

  else
  {
    v15 = v2;
    v16 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v17 = sub_26C6D8898();
    __swift_project_value_buffer(v17, qword_2804AD1F8);
    v18 = v0;
    v19 = v16;
    v3 = sub_26C6D8878();
    v20 = sub_26C6D8BA8();

    if (os_log_type_enabled(v3, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 136315394;
      v35 = 0;
      v36 = 0xE000000000000000;
      v37[0] = v22;
      sub_26C6D8CF8();

      v35 = 540697705;
      v36 = 0xE400000000000000;
      MEMORY[0x26D6A6940](*&v18[OBJC_IVAR___WFAnisetteRequest_id], *&v18[OBJC_IVAR___WFAnisetteRequest_id + 8]);
      MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);
      v23 = *&v18[OBJC_IVAR___WFAnisetteRequest_data];

      v24 = sub_26C6D89C8();
      v26 = v25;

      MEMORY[0x26D6A6940](v24, v26);

      v27 = sub_26C67A77C(v35, v36, v37);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2082;
      v35 = v16;
      v28 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v29 = sub_26C6D8A18();
      v31 = sub_26C67A77C(v29, v30, v37);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_26C66B000, v3, v20, "Failed to archive request %s with error: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v22, -1, -1);
      MEMORY[0x26D6A7490](v21, -1, -1);
    }

    swift_willThrow();
  }

  v32 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_26C6CB8B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26C6CB940(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26C6D89E8();

  return v5;
}

uint64_t sub_26C6CB9B0()
{
  sub_26C6D8CF8();

  MEMORY[0x26D6A6940](*(v0 + OBJC_IVAR___WFAnisetteResponse_id), *(v0 + OBJC_IVAR___WFAnisetteResponse_id + 8));
  MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);
  v1 = *(v0 + OBJC_IVAR___WFAnisetteResponse_data);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8950, &qword_26C6DAC50);
  v2 = sub_26C6D89C8();
  MEMORY[0x26D6A6940](v2);

  return 540697705;
}

uint64_t sub_26C6CBAB8(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = (v5 + *a2);
  v11 = *v10;
  v12 = v10[1];
  v34 = MEMORY[0x277D837D0];
  v33[0] = v11;
  v33[1] = v12;
  sub_26C684E18(v33, v31);
  v13 = v32;
  if (v32)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v15 = *(v13 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x28223BE20](v14);
    v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);

    v19 = sub_26C6D8E38();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {

    v19 = 0;
  }

  v20 = sub_26C6D89E8();
  [a1 encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  sub_26C677B60(v33, &qword_2804A8950, &qword_26C6DAC50);
  v21 = *(v5 + *a3);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v33[0] = v21;
  sub_26C684E18(v33, v31);
  v22 = v32;
  if (v32)
  {
    v23 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v27 = v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27);

    v28 = sub_26C6D8E38();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {

    v28 = 0;
  }

  v29 = sub_26C6D89E8();
  [a1 encodeObject:v28 forKey:v29];
  swift_unknownObjectRelease();

  return sub_26C677B60(v33, &qword_2804A8950, &qword_26C6DAC50);
}

id sub_26C6CBE3C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C6DA0F0;
  v4 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v3 + 32) = v4;
  sub_26C6D8C48();

  if (!v23)
  {
    sub_26C677B60(v22, &qword_2804A8950, &qword_26C6DAC50);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v12 = sub_26C6D8898();
    __swift_project_value_buffer(v12, qword_2804AD1F8);
    v13 = sub_26C6D8878();
    v14 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_26C67A77C(0xD000000000000010, 0x800000026C6DE3E0, v22);
    v17 = "Failed to decode id for object %s";
    goto LABEL_17;
  }

  v6 = v20;
  v5 = v21;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C6DAAC0;
  *(v7 + 32) = v4;
  *(v7 + 40) = sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  *(v7 + 48) = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  *(v7 + 56) = sub_26C6779D0(0, &qword_2804A8808, 0x277CBEAC0);
  *(v7 + 64) = sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
  sub_26C6D8C48();

  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9180, &unk_26C6DE418);
    if (swift_dynamicCast())
    {
      v8 = v20;
      v9 = &v1[OBJC_IVAR___WFAnisetteResponse_id];
      *v9 = v6;
      *(v9 + 1) = v5;
      *&v1[OBJC_IVAR___WFAnisetteResponse_data] = v8;
      v19.receiver = v1;
      v19.super_class = type metadata accessor for AnisetteResponse();
      v10 = objc_msgSendSuper2(&v19, sel_init);

      return v10;
    }
  }

  else
  {

    sub_26C677B60(v22, &qword_2804A8950, &qword_26C6DAC50);
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v18 = sub_26C6D8898();
  __swift_project_value_buffer(v18, qword_2804AD1F8);
  v13 = sub_26C6D8878();
  v14 = sub_26C6D8BA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_26C67A77C(0xD000000000000010, 0x800000026C6DE3E0, v22);
    v17 = "Failed to decode data for object %s";
LABEL_17:
    _os_log_impl(&dword_26C66B000, v13, v14, v17, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6A7490](v16, -1, -1);
    MEMORY[0x26D6A7490](v15, -1, -1);
  }

LABEL_18:

  type metadata accessor for AnisetteResponse();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_26C6CC2C8()
{
  v35[1] = *MEMORY[0x277D85DE8];
  v35[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v35];
  v2 = v35[0];
  if (v1)
  {
    v3 = sub_26C6D87A8();

    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD1F8);
    v5 = v0;
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35[0] = v9;
      *v8 = 136315138;
      v10 = [v5 description];
      v11 = sub_26C6D8A08();
      v13 = v12;

      v14 = sub_26C67A77C(v11, v13, v35);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_26C66B000, v6, v7, "Successfully archived response: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6A7490](v9, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }
  }

  else
  {
    v15 = v2;
    v16 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v17 = sub_26C6D8898();
    __swift_project_value_buffer(v17, qword_2804AD1F8);
    v18 = v0;
    v19 = v16;
    v20 = sub_26C6D8878();
    v21 = sub_26C6D8BA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35[0] = v23;
      *v22 = 136315394;
      v24 = [v18 description];
      v25 = sub_26C6D8A08();
      v27 = v26;

      v28 = sub_26C67A77C(v25, v27, v35);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      v29 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v30 = sub_26C6D8A18();
      v32 = sub_26C67A77C(v30, v31, v35);

      *(v22 + 14) = v32;
      _os_log_impl(&dword_26C66B000, v20, v21, "Failed to archive request %s with error: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v23, -1, -1);
      MEMORY[0x26D6A7490](v22, -1, -1);
    }

    else
    {
    }

    v3 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_26C6CC6F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnisetteResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26C6CC740(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4);
}

uint64_t sub_26C6CC7B0(uint64_t (*a1)(void))
{
  v1 = a1();

  return MEMORY[0x2821FE788](v1, 0);
}

uint64_t sub_26C6CC7EC()
{
  v0 = sub_26C6D8DB8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

id sub_26C6CC838(void *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  if (a2 <= 1u)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    if (a2)
    {
      *(inited + 32) = 0x6465636E79537369;
      v23 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = a1 & 1;
      v24 = sub_26C68AB1C(inited);
      swift_setDeallocating();
      sub_26C677B60(v23, &qword_2804A8B48, &qword_26C6DB3D0);
      v25 = type metadata accessor for AnisetteResponse();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR___WFAnisetteResponse_id];
      *v27 = 1668184435;
      *(v27 + 1) = 0xE400000000000000;
      *&v26[OBJC_IVAR___WFAnisetteResponse_data] = v24;
      v42.receiver = v26;
      v42.super_class = v25;
      return objc_msgSendSuper2(&v42, sel_init);
    }

    else
    {
      *(inited + 32) = 0x7369766F72507369;
      v8 = inited + 32;
      *(inited + 40) = 0xED000064656E6F69;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = a1 & 1;
      v9 = sub_26C68AB1C(inited);
      swift_setDeallocating();
      sub_26C677B60(v8, &qword_2804A8B48, &qword_26C6DB3D0);
      v10 = type metadata accessor for AnisetteResponse();
      v11 = objc_allocWithZone(v10);
      v12 = &v11[OBJC_IVAR___WFAnisetteResponse_id];
      *v12 = 0x6F697369766F7270;
      *(v12 + 1) = 0xE90000000000006ELL;
      *&v11[OBJC_IVAR___WFAnisetteResponse_data] = v9;
      v41.receiver = v11;
      v41.super_class = v10;
      return objc_msgSendSuper2(&v41, sel_init);
    }
  }

  else if (a2 == 2)
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_26C6DA0F0;
    *(v14 + 32) = 0x6465736172457369;
    v15 = v14 + 32;
    *(v14 + 40) = 0xE800000000000000;
    *(v14 + 72) = MEMORY[0x277D839B0];
    *(v14 + 48) = a1 & 1;
    v16 = sub_26C68AB1C(v14);
    swift_setDeallocating();
    sub_26C677B60(v15, &qword_2804A8B48, &qword_26C6DB3D0);
    v17 = type metadata accessor for AnisetteResponse();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___WFAnisetteResponse_id];
    *v19 = 0x6573617265;
    *(v19 + 1) = 0xE500000000000000;
    *&v18[OBJC_IVAR___WFAnisetteResponse_data] = v16;
    v43.receiver = v18;
    v43.super_class = v17;
    return objc_msgSendSuper2(&v43, sel_init);
  }

  else
  {
    if (a2 == 3)
    {
      v4 = swift_initStackObject();
      *(v4 + 16) = xmmword_26C6DA0F0;
      strcpy((v4 + 32), "anisetteData");
      *(v4 + 45) = 0;
      *(v4 + 46) = -5120;
      if (a1)
      {
        v5 = sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
        v6 = a1;
      }

      else
      {
        v6 = 0;
        v5 = 0;
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
      }

      *(v4 + 48) = v6;
      *(v4 + 72) = v5;
      v28 = a1;
      v29 = sub_26C68AB1C(v4);
      swift_setDeallocating();
      sub_26C677B60(v4 + 32, &qword_2804A8B48, &qword_26C6DB3D0);
      v30 = type metadata accessor for AnisetteResponse();
      v31 = objc_allocWithZone(v30);
      v32 = &v31[OBJC_IVAR___WFAnisetteResponse_id];
      *v32 = 0x6863746566;
      *(v32 + 1) = 0xE500000000000000;
      *&v31[OBJC_IVAR___WFAnisetteResponse_data] = v29;
      v44.receiver = v31;
      v44.super_class = v30;
      v33 = objc_msgSendSuper2(&v44, sel_init);
      v34 = a1;
      v35 = 3;
    }

    else
    {
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_26C6DA0F0;
      strcpy((v20 + 32), "anisetteData");
      *(v20 + 45) = 0;
      *(v20 + 46) = -5120;
      if (a1)
      {
        v21 = sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
        v22 = a1;
      }

      else
      {
        v22 = 0;
        v21 = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
      }

      *(v20 + 48) = v22;
      *(v20 + 72) = v21;
      v36 = a1;
      v37 = sub_26C68AB1C(v20);
      swift_setDeallocating();
      sub_26C677B60(v20 + 32, &qword_2804A8B48, &qword_26C6DB3D0);
      v38 = type metadata accessor for AnisetteResponse();
      v39 = objc_allocWithZone(v38);
      v40 = &v39[OBJC_IVAR___WFAnisetteResponse_id];
      *v40 = 0x79636167656CLL;
      *(v40 + 1) = 0xE600000000000000;
      *&v39[OBJC_IVAR___WFAnisetteResponse_data] = v37;
      v45.receiver = v39;
      v45.super_class = v38;
      v33 = objc_msgSendSuper2(&v45, sel_init);
      v34 = a1;
      v35 = 4;
    }

    sub_26C6CCD10(v34, v35);
    return v33;
  }
}

void sub_26C6CCD10(id a1, unsigned __int8 a2)
{
  if (a2 - 3 <= 1)
  {
  }
}

id sub_26C6CCD28(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      *(inited + 32) = 1684632420;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
      *(inited + 48) = a1;
      *(inited + 56) = a2;

      v17 = sub_26C68AC4C(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &unk_2804A91C0, &unk_26C6DB3E0);
      v18 = type metadata accessor for AnisetteRequest();
      v19 = objc_allocWithZone(v18);
      v20 = OBJC_IVAR___WFAnisetteRequest_data;
      *&v19[v20] = sub_26C68AC4C(MEMORY[0x277D84F90]);
      v21 = &v19[OBJC_IVAR___WFAnisetteRequest_id];
      *v21 = 0x79636167656CLL;
      *(v21 + 1) = 0xE600000000000000;
      *&v19[v20] = v17;

      v41.receiver = v19;
      v41.super_class = v18;
      v11 = objc_msgSendSuper2(&v41, sel_init);
      v12 = a1;
      v13 = a2;
      v14 = 2;
      goto LABEL_6;
    }

    v30 = a1 | a2;
    v31 = MEMORY[0x277D84F90];
    v32 = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v33 = type metadata accessor for AnisetteRequest();
    v34 = objc_allocWithZone(v33);
    v35 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v34[v35] = sub_26C68AC4C(v31);
    v36 = &v34[OBJC_IVAR___WFAnisetteRequest_id];
    if (v30)
    {
      *v36 = 0x6573617265;
      *(v36 + 1) = 0xE500000000000000;
      *&v34[v35] = v32;

      v39.receiver = v34;
      v39.super_class = v33;
      return objc_msgSendSuper2(&v39, sel_init, v37.receiver, v37.super_class);
    }

    else
    {
      *v36 = 0x6F697369766F7270;
      *(v36 + 1) = 0xE90000000000006ELL;
      *&v34[v35] = v32;

      return objc_msgSendSuper2(&v37, sel_init, v34, v33);
    }
  }

  else
  {
    if (!a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
      v5 = swift_initStackObject();
      *(v5 + 16) = xmmword_26C6DA0F0;
      *(v5 + 32) = 0x617461446D6973;
      *(v5 + 40) = 0xE700000000000000;
      *(v5 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87A8, &qword_26C6DA5A0);
      *(v5 + 48) = a1;
      *(v5 + 56) = a2;
      sub_26C67ED18(a1, a2);
      v6 = sub_26C68AC4C(v5);
      swift_setDeallocating();
      sub_26C677B60(v5 + 32, &unk_2804A91C0, &unk_26C6DB3E0);
      v7 = type metadata accessor for AnisetteRequest();
      v8 = objc_allocWithZone(v7);
      v9 = OBJC_IVAR___WFAnisetteRequest_data;
      *&v8[v9] = sub_26C68AC4C(MEMORY[0x277D84F90]);
      v10 = &v8[OBJC_IVAR___WFAnisetteRequest_id];
      *v10 = 1668184435;
      *(v10 + 1) = 0xE400000000000000;
      *&v8[v9] = v6;

      v38.receiver = v8;
      v38.super_class = v7;
      v11 = objc_msgSendSuper2(&v38, sel_init);
      v12 = a1;
      v13 = a2;
      v14 = 0;
LABEL_6:
      sub_26C6CD15C(v12, v13, v14);
      return v11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_26C6DA0F0;
    *(v23 + 32) = 0x7250646C756F6873;
    v24 = v23 + 32;
    *(v23 + 40) = 0xEF6E6F697369766FLL;
    *(v23 + 72) = MEMORY[0x277D839B0];
    *(v23 + 48) = a1 & 1;
    v25 = sub_26C68AC4C(v23);
    swift_setDeallocating();
    sub_26C677B60(v24, &unk_2804A91C0, &unk_26C6DB3E0);
    v26 = type metadata accessor for AnisetteRequest();
    v27 = objc_allocWithZone(v26);
    v28 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v27[v28] = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v29 = &v27[OBJC_IVAR___WFAnisetteRequest_id];
    *v29 = 0x6863746566;
    *(v29 + 1) = 0xE500000000000000;
    *&v27[v28] = v25;

    v40.receiver = v27;
    v40.super_class = v26;
    return objc_msgSendSuper2(&v40, sel_init, v37.receiver, v37.super_class);
  }
}

uint64_t sub_26C6CD15C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (!a3)
  {
    return sub_26C67EE70(result, a2);
  }

  return result;
}

unint64_t sub_26C6CD190()
{
  result = qword_2804A91D0;
  if (!qword_2804A91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A91D0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C6CD1F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26C6CD240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C6CD438(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9200, &qword_26C6DE5D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6CDDA0();
  sub_26C6D8F38();
  v16 = 0;
  sub_26C6D8DF8();
  if (!v4)
  {
    v15 = 1;
    sub_26C6D8E08();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26C6CD5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026C6E03F0 == a2 || (sub_26C6D8E48() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C6E0410 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26C6D8E48();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_26C6CD6E4(uint64_t a1)
{
  v2 = sub_26C6CDDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6CD720(uint64_t a1)
{
  v2 = sub_26C6CDDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26C6CD784@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_26C6CD81C();
  if (v2)
  {
    *a1 = result;
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7 & 1;
  }

  return result;
}

uint64_t sub_26C6CD7C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26C6CDBC8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_26C6CD81C()
{
  v1 = v0;
  v28[3] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_26C6D89A8();
  v27 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v27];

  v5 = v27;
  if (v4)
  {
    v6 = sub_26C6D87A8();
    v8 = v7;

    v9 = sub_26C6D8678();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_26C6D8668();
    sub_26C6CDB74();
    sub_26C6D8658();
    if (!v0)
    {

      sub_26C678418(v6, v8);
      v24 = v28[0];
      goto LABEL_11;
    }

    sub_26C678418(v6, v8);
  }

  else
  {
    v12 = v5;
    v1 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD258);

  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = &type metadata for EnrollmentsReceivedRequest;
    v28[0] = v17;
    *v16 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A91E0, &qword_26C6DE5C0);
    v18 = sub_26C6D8A18();
    v20 = sub_26C67A77C(v18, v19, v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = sub_26C6D89C8();
    v23 = sub_26C67A77C(v21, v22, v28);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_26C66B000, v14, v15, "Unabled to decode %{public}s from %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v17, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  v24 = 1;
  LOBYTE(v28[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

unint64_t sub_26C6CDB74()
{
  result = qword_2804A91E8;
  if (!qword_2804A91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A91E8);
  }

  return result;
}

uint64_t sub_26C6CDBC8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A91F0, &qword_26C6DE5C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6CDDA0();
  sub_26C6D8F28();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_26C6D8DC8();
    v10[14] = 1;
    sub_26C6D8DD8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_26C6CDDA0()
{
  result = qword_2804A91F8;
  if (!qword_2804A91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A91F8);
  }

  return result;
}

unint64_t sub_26C6CDE08()
{
  result = qword_2804A9208;
  if (!qword_2804A9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9208);
  }

  return result;
}

unint64_t sub_26C6CDE60()
{
  result = qword_2804A9210;
  if (!qword_2804A9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9210);
  }

  return result;
}

unint64_t sub_26C6CDEB8()
{
  result = qword_2804A9218;
  if (!qword_2804A9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9218);
  }

  return result;
}

uint64_t sub_26C6CDF0C(void *a1)
{
  v3 = v1;
  result = sub_26C6CF5EC(a1);
  if (!v2)
  {
    if (qword_2804A85C8 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD2B8);
    sub_26C67749C(a1, v22);

    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BB8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v9 = 136446466;
      v11 = v23;
      v10 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v12 = (*(v10 + 32))(v11, v10);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v15 = sub_26C67A77C(v12, v14, &v25);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2082;
      sub_26C677D78();
      v16 = sub_26C6D89C8();
      v18 = sub_26C67A77C(v16, v17, &v25);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_26C66B000, v7, v8, "Sending analytics event %{public}s with payload %{public}s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v21, -1, -1);
      MEMORY[0x26D6A7490](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    (*(v20 + 32))(v19, v20);
    off_287D2B790();
  }

  return result;
}

uint64_t sub_26C6CE1BC(uint64_t a1)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_26C6D86A8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_26C6D8698();
  v14 = sub_26C6D8688();
  v16 = v15;

  if (!v2)
  {
    v38 = v4;
    v19 = objc_opt_self();
    v20 = sub_26C6D8798();
    v40[0] = 0;
    v21 = [v19 JSONObjectWithData:v20 options:0 error:v40];

    v22 = v40[0];
    if (v21)
    {
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      sub_26C676984(v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9220, &qword_26C6DE738);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        sub_26C678418(v14, v16);
        result = v39;
      }

      else
      {
        if (qword_2804A85C8 != -1)
        {
          swift_once();
        }

        v24 = sub_26C6D8898();
        __swift_project_value_buffer(v24, qword_2804AD2B8);
        v25 = v38;
        v37 = *(v38 + 16);
        v37(v10, v1, a1);
        v26 = sub_26C6D8878();
        v27 = sub_26C6D8BA8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v36 = v27;
          v29 = v28;
          v35 = swift_slowAlloc();
          v40[0] = v35;
          *v29 = 136315138;
          v37(v8, v10, a1);
          v30 = sub_26C6D8A18();
          v32 = v31;
          (*(v25 + 8))(v10, a1);
          v33 = sub_26C67A77C(v30, v32, v40);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_26C66B000, v26, v36, "Failed to encode object as [String: NSObject]: %s", v29, 0xCu);
          v34 = v35;
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          MEMORY[0x26D6A7490](v34, -1, -1);
          MEMORY[0x26D6A7490](v29, -1, -1);
        }

        else
        {

          (*(v25 + 8))(v10, a1);
        }

        sub_26C6CF980();
        swift_allocError();
        swift_willThrow();
        sub_26C678418(v14, v16);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v41);
      }
    }

    else
    {
      v23 = v22;
      sub_26C6D86F8();

      swift_willThrow();
      result = sub_26C678418(v14, v16);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C6CE5FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_26C6CE658(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B70, &qword_26C6DB3F0);
  result = sub_26C6D8D98();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_26C68A024((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_26C68ADDC(v24, &v38);
        sub_26C676984(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_26C6D8CB8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_26C68A024(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26C6CE910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B30, &qword_26C6DE730);
  v39 = a2;
  result = sub_26C6D8D98();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26C6D8EE8();
      sub_26C6D8A38();
      result = sub_26C6D8F08();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26C6CEBB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B58, &unk_26C6DE740);
  v36 = a2;
  result = sub_26C6D8D98();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_26C67ED2C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_26C6D8EE8();
      sub_26C6D8A38();
      result = sub_26C6D8F08();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_26C6CEE70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B70, &qword_26C6DB3F0);
  v2 = *v0;
  v3 = sub_26C6D8D88();
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
        v18 = 40 * v17;
        sub_26C68ADDC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_26C676984(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_26C68A024(v22, (*(v4 + 56) + v17));
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