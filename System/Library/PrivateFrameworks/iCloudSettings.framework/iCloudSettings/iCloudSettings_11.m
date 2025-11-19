uint64_t sub_275961614(uint64_t a1)
{
  v4 = *(sub_2759B8768() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275960CF0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_275961708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758DB20C(a1, v4, v5, v7, v6);
}

void sub_2759617D8(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel) = *a1;
  v3 = v2;
}

uint64_t sub_275961824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27596186C()
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  return *(v0 + 16);
}

uint64_t sub_27596190C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2759619B4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_275961AC4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  *a2 = *(a1 + 16);
  return result;
}

uint64_t sub_275961B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_27588B550;

  return sub_275962908(a5);
}

uint64_t sub_275961C48()
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  return *(v0 + 17);
}

uint64_t sub_275961CE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_275961D90(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_275961EA0@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  *a2 = *(a1 + 17);
  return result;
}

uint64_t sub_275961F68(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = *a1;
  sub_2759BA4E8();
  v14 = sub_2759BA518();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_2759BA4C8();

  v15 = sub_2759BA4B8();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = a4;
  *(v16 + 40) = v13;
  sub_27587D460(0, 0, v12, a6, v16);
}

uint64_t sub_27596209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2758CA09C;

  return sub_275963834(a5);
}

id sub_275962158()
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  v1 = *(v0 + 40);

  return v1;
}

id sub_275962208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
  sub_2759B8638();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_2759622EC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  sub_275861AF8(0, &qword_280A11CA8, 0x277D262A0);
  v5 = v4;
  v6 = sub_2759BA788();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
    sub_2759B8628();
  }
}

id sub_275962458()
{
  result = [*(v0 + 24) accounts];
  if (result)
  {
    v2 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_2759645A4(&qword_280A0E500, type metadata accessor for AIDAServiceType);
    v3 = sub_2759BA1D8();

    if (*(v3 + 16) && (v4 = sub_2758A342C(*MEMORY[0x277CED1A0]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275962554()
{
  v1 = v0;
  v2 = sub_275962458();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa:*MEMORY[0x277CB8A58] useCellularForDataclass:?];
    v5 = [v3 aa:*MEMORY[0x277CB89B8] useCellularForDataclass:?];
    v6 = v5;
    v7 = v4 & v5;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315906;
      *(v11 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759E28E0, &v20);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v4;
      *(v11 + 18) = 1024;
      *(v11 + 20) = v6 & 1;
      *(v11 + 24) = 1024;
      *(v11 + 26) = v7;
      _os_log_impl(&dword_275819000, v9, v10, "%s ubiquity: %{BOOL}d keyValue: %{BOOL}d returning: %{BOOL}d", v11, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    if (v7 == *(v1 + 16))
    {

      *(v1 + 16) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v20 = v1;
      sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
      sub_2759B8628();
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A238A0);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759E28E0, &v20);
      _os_log_impl(&dword_275819000, v15, v16, "%s missing account", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x277C85860](v18, -1, -1);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_275962908(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 209) = a1;
  sub_2759BA4C8();
  *(v2 + 152) = sub_2759BA4B8();
  v4 = sub_2759BA468();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return MEMORY[0x2822009F8](sub_2759629A4, v4, v3);
}

uint64_t sub_2759629A4()
{
  v28 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 209);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v27);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_275819000, v2, v3, "%s setting %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 209);
  if (v8 == *(v7 + 16))
  {
    *(v7 + 16) = v8;
  }

  else
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    *(v0 + 80) = v7;
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
    sub_2759B8628();
  }

  v10 = *(v0 + 144);
  v11 = sub_275962458();
  *(v0 + 184) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 144);
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = *(v0 + 209);
      v16 = v14;
      ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(0, v15);

      v13 = *(v0 + 144);
    }

    v17 = *(v0 + 209);
    [v12 aa:v17 setUseCellular:*MEMORY[0x277CB8A58] forDataclass:?];
    [v12 aa:v17 setUseCellular:*MEMORY[0x277CB89B8] forDataclass:?];
    v18 = [*(v13 + 24) accountStore];
    *(v0 + 192) = v18;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_275962E70;
    v19 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2758DCBF0;
    *(v0 + 104) = &block_descriptor_36;
    *(v0 + 112) = v19;
    [v18 saveAccount:v12 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v20 = *(v0 + 152);

    v21 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v27);
      _os_log_impl(&dword_275819000, v21, v22, "%s missing account", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x277C85860](v24, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_275962E70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_27596317C;
  }

  else
  {
    v6 = sub_275962FA0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_275962FA0()
{
  v21 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);

  v4 = *(v0 + 208);

  if ((v4 & 1) == 0)
  {
    [*(v0 + 184) reload];
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = sub_275962554();
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 209);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, &v20);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v10;
    *(v11 + 18) = 1024;
    *(v11 + 20) = v4;
    *(v11 + 24) = 1024;
    *(v11 + 26) = v7 & 1;
    _os_log_impl(&dword_275819000, v8, v9, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v11, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x277C85860](v12, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  v13 = *(*(v0 + 144) + 32);
  if (v13)
  {
    v14 = *(v0 + 184);
    v15 = *(v0 + 209);
    if (v4)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = v13;
    ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(v16, v15);
  }

  else
  {
    v17 = *(v0 + 184);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_27596317C()
{
  v31 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);

  swift_willThrow();

  v6 = v1;
  v7 = sub_2759B8988();
  v8 = sub_2759BA648();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 200);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v30);
    *(v11 + 12) = 2112;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_275819000, v7, v8, "%s error during account save: %@", v11, 0x16u);
    sub_275875554(v12);
    MEMORY[0x277C85860](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  else
  {
  }

  [*(v0 + 184) reload];
  v16 = *(v0 + 176);
  v17 = *(v0 + 144);
  v18 = sub_275962554();
  v19 = sub_2759B8988();
  v20 = sub_2759BA668();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 209);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315906;
    *(v22 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v30);
    *(v22 + 12) = 1024;
    *(v22 + 14) = v21;
    *(v22 + 18) = 1024;
    *(v22 + 20) = 0;
    *(v22 + 24) = 1024;
    *(v22 + 26) = v18 & 1;
    _os_log_impl(&dword_275819000, v19, v20, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v22, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x277C85860](v23, -1, -1);
    MEMORY[0x277C85860](v22, -1, -1);
  }

  v24 = *(*(v0 + 144) + 32);
  if (v24)
  {
    v25 = *(v0 + 184);
    v26 = *(v0 + 209);
    v27 = v24;
    ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(2, v26);
  }

  else
  {
    v27 = *(v0 + 184);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_275963480()
{
  v1 = v0;
  v2 = sub_275962458();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa:*MEMORY[0x277CB8A58] allowUnlimitedUpdatesForDataclass:?];
    v5 = [v3 aa:*MEMORY[0x277CB89B8] allowUnlimitedUpdatesForDataclass:?];
    v6 = v5;
    v7 = v4 & v5;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315906;
      *(v11 + 4) = sub_2758937B8(0xD00000000000001ELL, 0x80000002759E28A0, &v20);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v4;
      *(v11 + 18) = 1024;
      *(v11 + 20) = v6 & 1;
      *(v11 + 24) = 1024;
      *(v11 + 26) = v7;
      _os_log_impl(&dword_275819000, v9, v10, "%s ubiquity: %{BOOL}d keyValue: %{BOOL}d returning: %{BOOL}d", v11, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    if (v7 == *(v1 + 17))
    {

      *(v1 + 17) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v20 = v1;
      sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
      sub_2759B8628();
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A238A0);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2758937B8(0xD00000000000001ELL, 0x80000002759E28A0, &v20);
      _os_log_impl(&dword_275819000, v15, v16, "%s missing account", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x277C85860](v18, -1, -1);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_275963834(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 209) = a1;
  sub_2759BA4C8();
  *(v2 + 152) = sub_2759BA4B8();
  v4 = sub_2759BA468();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return MEMORY[0x2822009F8](sub_2759638D0, v4, v3);
}

uint64_t sub_2759638D0()
{
  v28 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 209);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v27);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_275819000, v2, v3, "%s setting %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 209);
  if (v8 == *(v7 + 17))
  {
    *(v7 + 17) = v8;
  }

  else
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    *(v0 + 80) = v7;
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel);
    sub_2759B8628();
  }

  v10 = *(v0 + 144);
  v11 = sub_275962458();
  *(v0 + 184) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 144);
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = *(v0 + 209);
      v16 = v14;
      ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(0, v15);

      v13 = *(v0 + 144);
    }

    v17 = *(v0 + 209);
    [v12 aa:v17 setAllowUnlimitedUpdates:*MEMORY[0x277CB8A58] forDataclass:?];
    [v12 aa:v17 setAllowUnlimitedUpdates:*MEMORY[0x277CB89B8] forDataclass:?];
    v18 = [*(v13 + 24) accountStore];
    *(v0 + 192) = v18;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_275963D9C;
    v19 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2758DCBF0;
    *(v0 + 104) = &block_descriptor_13;
    *(v0 + 112) = v19;
    [v18 saveAccount:v12 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v20 = *(v0 + 152);

    v21 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v27);
      _os_log_impl(&dword_275819000, v21, v22, "%s missing account", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x277C85860](v24, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_275963D9C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_2759640A8;
  }

  else
  {
    v6 = sub_275963ECC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_275963ECC()
{
  v21 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);

  v4 = *(v0 + 208);

  if ((v4 & 1) == 0)
  {
    [*(v0 + 184) reload];
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = sub_275963480();
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 209);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, &v20);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v10;
    *(v11 + 18) = 1024;
    *(v11 + 20) = v4;
    *(v11 + 24) = 1024;
    *(v11 + 26) = v7 & 1;
    _os_log_impl(&dword_275819000, v8, v9, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v11, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x277C85860](v12, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  v13 = *(*(v0 + 144) + 32);
  if (v13)
  {
    v14 = *(v0 + 184);
    v15 = *(v0 + 209);
    if (v4)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = v13;
    ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(v16, v15);
  }

  else
  {
    v17 = *(v0 + 184);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2759640A8()
{
  v31 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);

  swift_willThrow();

  v6 = v1;
  v7 = sub_2759B8988();
  v8 = sub_2759BA648();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 200);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v30);
    *(v11 + 12) = 2112;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_275819000, v7, v8, "%s error during account save: %@", v11, 0x16u);
    sub_275875554(v12);
    MEMORY[0x277C85860](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  else
  {
  }

  [*(v0 + 184) reload];
  v16 = *(v0 + 176);
  v17 = *(v0 + 144);
  v18 = sub_275963480();
  v19 = sub_2759B8988();
  v20 = sub_2759BA668();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 209);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315906;
    *(v22 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v30);
    *(v22 + 12) = 1024;
    *(v22 + 14) = v21;
    *(v22 + 18) = 1024;
    *(v22 + 20) = 0;
    *(v22 + 24) = 1024;
    *(v22 + 26) = v18 & 1;
    _os_log_impl(&dword_275819000, v19, v20, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v22, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x277C85860](v23, -1, -1);
    MEMORY[0x277C85860](v22, -1, -1);
  }

  v24 = *(*(v0 + 144) + 32);
  if (v24)
  {
    v25 = *(v0 + 184);
    v26 = *(v0 + 209);
    v27 = v24;
    ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(2, v26);
  }

  else
  {
    v27 = *(v0 + 184);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2759643AC()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings25ICSDriveCellularViewModel___observationRegistrar;
  v2 = sub_2759B8678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ICSDriveCellularViewModel()
{
  result = qword_280A11C98;
  if (!qword_280A11C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2759644B4()
{
  result = sub_2759B8678();
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

uint64_t sub_2759645A4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2759645EC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  sub_2759B8668();
  *(v4 + 24) = a1;
  *(v4 + 40) = a2;
  if (a3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
LABEL_9:
    v21 = *(v4 + 32);
    *(v4 + 32) = v10;
    v22 = a3;

    sub_275962554();
    sub_275963480();
    return v4;
  }

  v11 = a1;
  v12 = a2;
  result = [v11 accounts];
  if (result)
  {
    v14 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_2759645A4(&qword_280A0E500, type metadata accessor for AIDAServiceType);
    v15 = sub_2759BA1D8();

    if (*(v15 + 16) && (v16 = sub_2758A342C(*MEMORY[0x277CED1A0]), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = v18;
    }

    else
    {
      v18 = 0;
    }

    v20 = objc_allocWithZone(type metadata accessor for ICSAnalyticsController());
    v10 = sub_275935F68(v18);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_275964780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_27596209C(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275964884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_275961B8C(a1, v4, v5, v6, v7);
}

uint64_t sub_275964980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = MEMORY[0x277CE11C8];
  v14 = MEMORY[0x277CE11C0];
  v12[0] = a4;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);

    do
    {
      v6 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_2759B8B28();
      sub_275827D1C(&v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_275827D1C(v11, v12);
      v5 += 5;
      --v4;
    }

    while (v4);
    v7 = v13;
  }

  else
  {

    v7 = MEMORY[0x277CE11C8];
  }

  __swift_project_boxed_opaque_existential_1(v12, v7);
  v8 = sub_27592E400(v7);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t sub_275964AD0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F960, &qword_2759CA1E0);
  v17 = v4;
  *&v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F968, &qword_2759C4A10);
  *(&v13 + 1) = sub_2759B9608();
  v14 = sub_2758BF024();
  v15 = MEMORY[0x277CE0380];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_2759B8B28();
      sub_275827D1C(&v12, &v13);
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_275827D1C(&v13, v16);
      v7 += 5;
      --v6;
    }

    while (v6);
  }

  v9 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v10 = sub_27592E400(v9);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v10;
}

uint64_t sub_275964C9C(uint64_t a1)
{
  v2 = v1;
  v14 = type metadata accessor for WebViewRepresentable(0);
  v15 = sub_2759662FC(&qword_280A0FB58, 255, type metadata accessor for WebViewRepresentable);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_275966298(v2, boxed_opaque_existential_1);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_2759B8B28();
      sub_275827D1C(&v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v13);
      sub_275827D1C(v12, v13);
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = sub_27592E400(v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_275964E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v33 = a4;
  v9 = sub_2759BA728();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_27595CE18(v15);

  v17 = sub_27592E2A4(v16, a2, a3, v13, v12);

  if (*(v5 + 24))
  {
    v18 = *(v5 + 24);
  }

  else
  {
    v18 = v14;
  }

  v19 = sub_27595CE18(v18);

  v32 = sub_275964980(v19, a2, a3, v17);

  v20 = [objc_opt_self() defaultCenter];
  if (qword_280A0E3F0 != -1)
  {
    swift_once();
  }

  v21 = v34;
  sub_2759BA738();

  v22 = swift_allocObject();
  *(v22 + 2) = v5;
  *(v22 + 3) = a2;
  *(v22 + 4) = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CC0, &unk_2759D0680);
  v24 = v33;
  v33[3] = v23;
  v24[4] = sub_2759660C8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v27 = v35;
  v26 = v36;
  (*(v35 + 16))(boxed_opaque_existential_1 + *(v23 + 52), v21, v36);
  *boxed_opaque_existential_1 = v32;
  v28 = (boxed_opaque_existential_1 + *(v23 + 56));
  *v28 = sub_2759660BC;
  v28[1] = v22;
  v29 = *(v27 + 8);

  return v29(v21, v26);
}

uint64_t sub_2759650E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2759B8278();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  strcpy(&v14, "ResultSuccess");
  HIWORD(v14) = -4864;
  sub_2759BA878();
  if (!*(v4 + 16) || (v5 = sub_2758A24F8(v13), (v6 & 1) == 0))
  {

    sub_275864C40(v13);
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  sub_275864C94(*(v4 + 56) + 32 * v5, &v14);
  sub_275864C40(v13);

  if (!*(&v15 + 1))
  {
LABEL_9:
    sub_275860FE4(&v14);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v7 = v13[0];
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
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
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_275819000, v9, v10, "MessagesDisableAndDeleteAction completed with success %{BOOL}d", v11, 8u);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  if (v7)
  {
    if (!*(a2 + 16))
    {
      return sub_275952B58(v7 ^ 1u, sub_27594A594);
    }

    goto LABEL_19;
  }

  if (*(a2 + 24))
  {
LABEL_19:
    sub_2759BA438();
  }

  return sub_275952B58(v7 ^ 1u, sub_27594A594);
}

uint64_t sub_275965310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F7272456E6FLL;
  }

  else
  {
    v4 = 0x7365636375536E6FLL;
  }

  if (v3)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F7272456E6FLL;
  }

  else
  {
    v6 = 0x7365636375536E6FLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE900000000000073;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_2759653BC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275965444()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_2759654B8()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27596553C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_27596559C(uint64_t *a1@<X8>)
{
  v2 = 0x7365636375536E6FLL;
  if (*v1)
  {
    v2 = 0x726F7272456E6FLL;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2759655E0()
{
  if (*v0)
  {
    result = 0x726F7272456E6FLL;
  }

  else
  {
    result = 0x7365636375536E6FLL;
  }

  *v0;
  return result;
}

uint64_t sub_275965620@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_275965684(uint64_t a1)
{
  v2 = sub_27596612C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2759656C0(uint64_t a1)
{
  v2 = sub_27596612C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2759656FC(uint64_t *a1)
{
  v3 = v1;
  v58 = *v1;
  v59 = v2;
  v5 = sub_2759B8BD8();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CD0, &unk_2759CD2F8);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27596612C();
  v14 = v59;
  sub_2759BAC18();
  v15 = v14;
  if (v14)
  {
    goto LABEL_13;
  }

  v53 = v1;
  v59 = v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v60[0]) = 0;
  v17 = sub_2758C7304();
  sub_2759BAA68();
  v52 = v17;
  if (v62)
  {
    v51 = v16;
    v18 = *(v62 + 16);
    v19 = v53;
    if (v18)
    {
      v47 = v12;
      v48 = 0;
      v49 = v9;
      v50 = a1;
      v61 = MEMORY[0x277D84F90];
      v20 = v62;
      sub_2759509B0(0, v18, 0);
      v21 = v61;
      v22 = *(v54 + 16);
      v23 = *(v54 + 80);
      v46[1] = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v56 = *(v54 + 72);
      v57 = v22;
      v25 = (v54 + 8);
      v26 = v59;
      do
      {
        v57(v8, v24, v26);
        sub_2759B8BC8();
        v26 = v59;
        (*v25)(v8, v59);
        v61 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2759509B0((v27 > 1), v28 + 1, 1);
          v26 = v59;
          v21 = v61;
        }

        *(v21 + 16) = v28 + 1;
        sub_275827D1C(v60, v21 + 40 * v28 + 32);
        v24 += v56;
        --v18;
      }

      while (v18);

      v29 = v53;
      v9 = v49;
      a1 = v50;
      v12 = v47;
      v15 = v48;
    }

    else
    {

      v29 = v19;
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = 0;
    v29 = v53;
  }

  v30 = v29;
  v29[2] = v21;
  LOBYTE(v60[0]) = 1;
  sub_2759BAA68();
  if (v15)
  {
    (*(v55 + 8))(v12, v9);
    v3 = v30;
    v31 = v30[2];

LABEL_13:
    swift_deallocPartialClassInstance();
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  if (v62)
  {
    v33 = *(v62 + 16);
    if (v33)
    {
      v47 = v12;
      v48 = 0;
      v49 = v9;
      v50 = a1;
      v61 = MEMORY[0x277D84F90];
      v34 = v62;
      sub_2759509B0(0, v33, 0);
      v35 = v61;
      v36 = v54 + 16;
      v37 = *(v54 + 16);
      v38 = *(v54 + 80);
      v56 = v34;
      v39 = v34 + ((v38 + 32) & ~v38);
      v57 = *(v54 + 72);
      v58 = v37;
      v40 = (v54 + 8);
      v41 = v59;
      do
      {
        v42 = v36;
        v58(v8, v39, v41);
        sub_2759B8BC8();
        v41 = v59;
        (*v40)(v8, v59);
        v61 = v35;
        v44 = *(v35 + 16);
        v43 = *(v35 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2759509B0((v43 > 1), v44 + 1, 1);
          v41 = v59;
          v35 = v61;
        }

        *(v35 + 16) = v44 + 1;
        sub_275827D1C(v60, v35 + 40 * v44 + 32);
        v39 += v57;
        --v33;
        v36 = v42;
      }

      while (v33);

      v30 = v53;
      v9 = v49;
      a1 = v50;
      v12 = v47;
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v35 = 0;
  }

  v3 = v30;
  v30[3] = v35;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v45 = result;
    (*(v55 + 8))(v12, v9);
    v30[4] = v45;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_275965CB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_275965D1C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_275965F5C();
}

void *sub_275965E74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2759656FC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_275965F7C()
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
    _os_log_impl(&dword_275819000, v2, v3, "Messages disable and delete action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 32);
  [v6 setupIMCloudKitHooks];
  [v6 tryToDisableAllDevices];
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2759660BC(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_2759650E4(a1, v1[2]);
}

unint64_t sub_2759660C8()
{
  result = qword_280A11CC8;
  if (!qword_280A11CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11CC0, &unk_2759D0680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CC8);
  }

  return result;
}

unint64_t sub_27596612C()
{
  result = qword_280A11CD8;
  if (!qword_280A11CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CD8);
  }

  return result;
}

unint64_t sub_275966194()
{
  result = qword_280A11CE0;
  if (!qword_280A11CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CE0);
  }

  return result;
}

unint64_t sub_2759661EC()
{
  result = qword_280A11CE8;
  if (!qword_280A11CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CE8);
  }

  return result;
}

unint64_t sub_275966244()
{
  result = qword_280A11CF0;
  if (!qword_280A11CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CF0);
  }

  return result;
}

uint64_t sub_275966298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebViewRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759662FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for IfLSRecordView()
{
  result = qword_280A11D00;
  if (!qword_280A11D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759663B8()
{
  sub_27585AF10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_27585AF10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2759664DC();
      if (v2 <= 0x3F)
      {
        sub_27585AF74();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2759664DC()
{
  if (!qword_280A11D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D18, &qword_2759CD480);
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A11D10);
    }
  }
}

uint64_t sub_275966540@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v108[1] = *MEMORY[0x277D85DE8];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D40, &qword_2759CD5A8);
  v2 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v82 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCC8, &qword_2759C5670);
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v82 - v11;
  v12 = sub_2759B8A38();
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v82 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D48, &qword_2759CD5B0);
  v17 = *(*(v95 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v95);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v82 - v21;
  v23 = sub_2759B8AF8();
  v101 = *(v23 - 8);
  v24 = *(v101 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v100 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v102 = &v82 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v82 - v30;
  v32 = type metadata accessor for IfLSRecordView();
  sub_27586FBC8(v1 + v32[8], v31, &qword_280A11CF8, &unk_2759CD458);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D18, &qword_2759CD480);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v31, 1, v33) == 1)
  {
    sub_27586BF04(v31, &qword_280A11CF8, &unk_2759CD458);
    goto LABEL_5;
  }

  v85 = v20;
  v84 = v22;
  v35 = v32[9];
  v86 = v1;
  v36 = (v1 + v35);
  if (!*v36)
  {
    v81 = v36[1];
    sub_2759B8C08();
    sub_27596824C(&qword_280A0E6E0, MEMORY[0x277D23330]);
    result = sub_2759B9158();
    __break(1u);
    return result;
  }

  sub_27596817C();

  sub_2759B8AA8();

  (*(v34 + 8))(v31, v33);
  v52 = v108[0];
  v53 = *(v108[0] + 2);
  if (!v53)
  {

    v1 = v86;
    v20 = v85;
LABEL_5:
    v37 = v1 + v32[7];
    v38 = v92;
    sub_27586FBC8(v37, v92, &qword_280A0E6B0, &qword_2759C0D00);
    v40 = v93;
    v39 = v94;
    v41 = (*(v93 + 48))(v38, 1, v94);
    v42 = v97;
    v43 = v98;
    if (v41 == 1)
    {
      sub_27586BF04(v38, &qword_280A0E6B0, &qword_2759C0D00);
      v44 = 1;
    }

    else
    {
      v45 = *(v40 + 32);
      v46 = v90;
      v45(v90, v38, v39);
      v47 = v91;
      v48 = &v91[*(v42 + 36)];
      v49 = &v48[*(sub_2759B8FD8() + 20)];
      sub_2759BA4E8();
      *v48 = &unk_2759CD5B8;
      *(v48 + 1) = 0;
      v45(v47, v46, v39);
      sub_27589F26C(v47, v20, &qword_280A0FCC8, &qword_2759C5670);
      v44 = 0;
    }

    goto LABEL_8;
  }

  v83 = v32;
  v54 = 0;
  v55 = v101;
  v56 = v108[0] + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v106 = v101 + 16;
  v105 = v101 + 88;
  v104 = *MEMORY[0x277D232A0];
  v107 = (v101 + 8);
  v89 = (v101 + 96);
  v57 = v102;
  v58 = v100;
  while (1)
  {
    if (v54 >= v52[2])
    {
      __break(1u);
    }

    v60 = *(v55 + 16);
    v60(v57, &v56[*(v55 + 72) * v54], v23);
    v60(v58, v57, v23);
    v61 = (*(v55 + 88))(v58, v23);
    if (v61 == v104)
    {
      break;
    }

    v59 = *v107;
    (*v107)(v57, v23);
    v59(v58, v23);
LABEL_12:
    if (v53 == ++v54)
    {

      v20 = v85;
      v32 = v83;
      v1 = v86;
      goto LABEL_5;
    }
  }

  v62 = v53;
  (*v89)(v58, v23);
  v63 = *v58;
  v64 = *(v63 + 16);
  v65 = *(v63 + 24);
  v66 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v67 = sub_2759BA258();

  v108[0] = 0;
  v68 = [v66 initWithBundleIdentifier:v67 allowPlaceholder:0 error:v108];

  if (!v68)
  {
    v69 = v108[0];
    v70 = sub_2759B8448();

    swift_willThrow();
    v57 = v102;
    (*v107)(v102, v23);

    v58 = v100;
    v55 = v101;
    v53 = v62;
    goto LABEL_12;
  }

  v71 = *v107;
  v72 = v108[0];
  v71(v102, v23);

  v73 = v88;
  sub_27586FBC8(v86 + v83[6], v88, &qword_280A0E6B0, &qword_2759C0D00);
  v75 = v93;
  v74 = v94;
  if ((*(v93 + 48))(v73, 1, v94) == 1)
  {
    sub_27586BF04(v73, &qword_280A0E6B0, &qword_2759C0D00);
    v44 = 1;
    v43 = v98;
    v42 = v97;
    v20 = v84;
  }

  else
  {
    v76 = *(v75 + 32);
    v77 = v87;
    v76(v87, v73, v74);
    v42 = v97;
    v78 = v91;
    v79 = &v91[*(v97 + 36)];
    v80 = &v79[*(sub_2759B8FD8() + 20)];
    sub_2759BA4E8();
    *v79 = &unk_2759CD5C0;
    *(v79 + 1) = 0;
    v76(v78, v77, v74);
    v20 = v84;
    sub_27589F26C(v78, v84, &qword_280A0FCC8, &qword_2759C5670);
    v44 = 0;
    v43 = v98;
  }

LABEL_8:
  (*(v96 + 56))(v20, v44, 1, v42);
  sub_27586FBC8(v20, v43, &qword_280A11D48, &qword_2759CD5B0);
  swift_storeEnumTagMultiPayload();
  sub_2759680F8();
  sub_2759B95E8();
  result = sub_27586BF04(v20, &qword_280A11D48, &qword_2759CD5B0);
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27596703C()
{
  sub_2759BA4C8();
  *(v0 + 16) = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759670D0, v2, v1);
}

uint64_t sub_2759670D0()
{
  v1 = *(v0 + 16);

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A23900);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "IFLSRecordView: record found", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2759671EC()
{
  sub_2759BA4C8();
  *(v0 + 16) = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275967280, v2, v1);
}

uint64_t sub_275967280()
{
  v1 = *(v0 + 16);

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A23900);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "IFLSRecordView: record not found", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2759673A8()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275967454()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_2759674EC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275967594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275968554();
  *a2 = result;
  return result;
}

void sub_2759675C4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1702063205;
  if (*v1 != 2)
  {
    v5 = 0x6449656C646E7562;
    v4 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 1852139636;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_27596762C()
{
  v1 = 25705;
  v2 = 1702063205;
  if (*v0 != 2)
  {
    v2 = 0x6449656C646E7562;
  }

  if (*v0)
  {
    v1 = 1852139636;
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

uint64_t sub_275967690@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275968554();
  *a1 = result;
  return result;
}

uint64_t sub_2759676B8(uint64_t a1)
{
  v2 = sub_2759681F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2759676F4(uint64_t a1)
{
  v2 = sub_2759681F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275967730@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v42 - v11;
  v45 = sub_2759B85A8();
  v52 = *(v45 - 8);
  v12 = *(v52 + 8);
  MEMORY[0x28223BE20](v45);
  v50 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D60, &qword_2759CD5C8);
  v53 = *(v51 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v16 = &v42 - v15;
  v17 = type metadata accessor for IfLSRecordView();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v21 + 2) = MEMORY[0x277D84F90];
  v22 = &v21[*(v19 + 36)];
  sub_2759B8C08();
  sub_27596824C(&qword_280A0E6E0, MEMORY[0x277D23330]);
  *v22 = sub_2759B9168();
  v22[1] = v23;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759681F8();
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = v52;
    v43 = v17;
    v44 = v21;
    v57 = 0;
    v26 = v50;
    v27 = v51;
    v28 = sub_2759BAA58();
    if (!v29)
    {
      sub_2759B8598();
      v31 = sub_2759B8588();
      v33 = v32;
      v25[1](v26, v45);
      v29 = v33;
      v28 = v31;
    }

    v34 = v44;
    *v44 = v28;
    v34[1] = v29;
    sub_2759B8A38();
    v56 = 1;
    sub_27596824C(&qword_280A0E738, MEMORY[0x277D231A8]);
    v35 = v46;
    v52 = v16;
    sub_2759BAA68();
    v50 = a1;
    v37 = v43;
    v36 = v44;
    sub_27589F26C(v35, v44 + *(v43 + 24), &qword_280A0E6B0, &qword_2759C0D00);
    v55 = 2;
    v38 = v47;
    sub_2759BAA68();
    v39 = v48;
    sub_27589F26C(v38, v36 + *(v37 + 28), &qword_280A0E6B0, &qword_2759C0D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D18, &qword_2759CD480);
    v54 = 3;
    sub_275968294();
    v40 = v52;
    sub_2759BAA68();
    (*(v53 + 8))(v40, v27);
    v41 = v49;
    sub_27589F26C(v39, v36 + *(v37 + 32), &qword_280A11CF8, &unk_2759CD458);
    sub_2759682F8(v36, v41);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_27596835C(v36);
  }
}

uint64_t sub_275967D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_27596824C(&qword_280A11048, type metadata accessor for IfLSRecordView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_275967DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27596824C(&qword_280A11D20, type metadata accessor for IfLSRecordView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_275967E78(uint64_t a1)
{
  v2 = sub_27596824C(&qword_280A11D20, type metadata accessor for IfLSRecordView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_275967EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_27596824C(&qword_280A11D38, type metadata accessor for IfLSRecordView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_275967FB0()
{
  sub_27596824C(&qword_280A11048, type metadata accessor for IfLSRecordView);
  sub_27596824C(&qword_280A11D20, type metadata accessor for IfLSRecordView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2759680F8()
{
  result = qword_280A11D50;
  if (!qword_280A11D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D48, &qword_2759CD5B0);
    sub_2758CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D50);
  }

  return result;
}

unint64_t sub_27596817C()
{
  result = qword_280A11D58;
  if (!qword_280A11D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FA60, &qword_2759C4B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D58);
  }

  return result;
}

unint64_t sub_2759681F8()
{
  result = qword_280A11D68;
  if (!qword_280A11D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D68);
  }

  return result;
}

uint64_t sub_27596824C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_275968294()
{
  result = qword_280A11D70;
  if (!qword_280A11D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D18, &qword_2759CD480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D70);
  }

  return result;
}

uint64_t sub_2759682F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfLSRecordView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27596835C(uint64_t a1)
{
  v2 = type metadata accessor for IfLSRecordView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759683C8()
{
  result = qword_280A11D78;
  if (!qword_280A11D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D80, &qword_2759CD5E0);
    sub_2759680F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D78);
  }

  return result;
}

unint64_t sub_275968450()
{
  result = qword_280A11D88;
  if (!qword_280A11D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D88);
  }

  return result;
}

unint64_t sub_2759684A8()
{
  result = qword_280A11D90;
  if (!qword_280A11D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D90);
  }

  return result;
}

unint64_t sub_275968500()
{
  result = qword_280A11D98;
  if (!qword_280A11D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D98);
  }

  return result;
}

uint64_t sub_275968554()
{
  v0 = sub_2759BAA48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2759685A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (v5[3])
  {
    v11 = v5[3];
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_27595CE18(v11);

  v13 = sub_27592E2A4(v12, a2, a3, v9, v10);

  v14 = MEMORY[0x277D84F90];
  if (v5[4])
  {
    v15 = v5[4];
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_27595CE18(v15);

  v17 = sub_275964980(v16, a2, a3, v13);

  if (v5[5])
  {
    v18 = v5[5];
  }

  else
  {
    v18 = v14;
  }

  v19 = sub_27595CE18(v18);

  sub_275964980(v19, a2, a3, v17);

  swift_getKeyPath();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11DB0, &unk_2759CD8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_2759B9B18();
}

uint64_t sub_2759687E8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_27596880C, 0, 0);
}

uint64_t sub_27596880C()
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
    _os_log_impl(&dword_275819000, v2, v3, "Health disable and delete action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[10];

  if (*(v5 + 24))
  {
    v6 = v0[8];
    v7 = v0[9];
    sub_2759BA438();
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v11 = *(v8 + 16);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v0[6] = sub_27596A170;
  v0[7] = v12;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_275956A0C;
  v0[5] = &block_descriptor_14;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];

  [v11 disableCloudSyncAndDeleteAllCloudDataWithCompletion_];
  _Block_release(v13);
  v15 = v0[1];

  return v15();
}

void sub_275968A0C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v14 = sub_2759B89A8();
  __swift_project_value_buffer(v14, qword_2815ADE70);
  v15 = a2;
  v16 = sub_2759B8988();
  v17 = sub_2759BA668();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 67109378;
    *(v18 + 4) = a1 & 1;
    *(v18 + 8) = 2112;
    if (a2)
    {
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v18 + 10) = v21;
    *v19 = v22;
    _os_log_impl(&dword_275819000, v16, v17, "Health disabled with success: %{BOOL}d error: %@", v18, 0x12u);
    sub_275875554(v19);
    MEMORY[0x277C85860](v19, -1, -1);
    MEMORY[0x277C85860](v18, -1, -1);
  }

  if (a1)
  {
    if (*(a3 + 32))
    {
      sub_2759BA438();
    }

    a2 = 0;
  }

  else
  {
    v23 = sub_2759BA518();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = a3;
    v24[5] = a4;
    v24[6] = a5;

    sub_27587D460(0, 0, v13, &unk_2759CD878, v24);

    v25 = a2;
    v26 = a2;
  }

  sub_275952E8C(a2, (a1 & 1) == 0, sub_27594A594);
}

uint64_t sub_275968CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_275968D10, 0, 0);
}

uint64_t sub_275968D10()
{
  v1 = *(v0[3] + 48);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_275968EC4;

    return ManageStorageAppsListViewModel.fetchHealthEnabled()();
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_2815ADE70);
    v5 = sub_2759B8988();
    v6 = sub_2759BA668();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_275819000, v5, v6, "Health disable failed but health is disabled, running success actions", v7, 2u);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    v8 = v0[3];

    if (*(v8 + 32))
    {
      v9 = v0[4];
      v10 = v0[5];
      sub_2759BA438();
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_275968EC4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_275968FD8, 0, 0);
}

uint64_t sub_275968FD8()
{
  v1 = *(v0[3] + 48);
  if (v1)
  {
    swift_getKeyPath();
    v0[2] = v1;
    sub_27596A2F4(&qword_280A12810, 255, type metadata accessor for ManageStorageAppsListViewModel);
    v2 = v1;
    sub_2759B8638();

    v3 = v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled];

    if (v3 == 1)
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v4 = sub_2759B89A8();
      __swift_project_value_buffer(v4, qword_2815ADE70);
      v5 = sub_2759B8988();
      v6 = sub_2759BA668();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_275819000, v5, v6, "Health disable failed, health is still enabled, running error actions", v7, 2u);
        MEMORY[0x277C85860](v7, -1, -1);
      }

      v8 = v0[3];

      if (!*(v8 + 40))
      {
        goto LABEL_15;
      }

LABEL_14:
      v14 = v0[4];
      v15 = v0[5];
      sub_2759BA438();
      goto LABEL_15;
    }
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v9 = sub_2759B89A8();
  __swift_project_value_buffer(v9, qword_2815ADE70);
  v10 = sub_2759B8988();
  v11 = sub_2759BA668();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_275819000, v10, v11, "Health disable failed but health is disabled, running success actions", v12, 2u);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  v13 = v0[3];

  if (*(v13 + 32))
  {
    goto LABEL_14;
  }

LABEL_15:
  v16 = v0[1];

  return v16();
}

uint64_t sub_275969270(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7365636375536E6FLL;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x726F7272456E6FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74726174536E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7365636375536E6FLL;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x726F7272456E6FLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74726174536E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27596937C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275969424()
{
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_2759694B8()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27596955C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27596A454();
  *a2 = result;
  return result;
}

void sub_27596958C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x7365636375536E6FLL;
  if (v2 != 1)
  {
    v5 = 0x726F7272456E6FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74726174536E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2759695F0()
{
  v1 = 0x7365636375536E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F7272456E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726174536E6FLL;
  }
}

uint64_t sub_275969650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27596A454();
  *a1 = result;
  return result;
}

uint64_t sub_275969678(uint64_t a1)
{
  v2 = sub_27596A2A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2759696B4(uint64_t a1)
{
  v2 = sub_27596A2A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2759696F0(uint64_t *a1)
{
  v3 = v1;
  v74 = *v1;
  v75 = v2;
  v76 = sub_2759B8BD8();
  v71 = *(v76 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v76);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11DB8, &unk_2759CD8E8);
  v72 = *(v8 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  *(v1 + 48) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277CCD128]) initWithHealthStore_];

  *(v3 + 16) = v13;
  v14 = a1[4];
  v15 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27596A2A0();
  v16 = v75;
  sub_2759BAC18();
  v17 = v16;
  if (v16)
  {

LABEL_4:
    swift_deallocPartialClassInstance();
    v22 = a1;
    goto LABEL_5;
  }

  v75 = v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v77[0]) = 0;
  v19 = sub_2758C7304();
  v20 = v11;
  sub_2759BAA68();
  v21 = v8;
  v70 = v19;
  a1 = v15;
  if (v79)
  {
    v69 = v8;
    v24 = *(v79 + 2);
    v25 = v75;
    if (v24)
    {
      v64 = 0;
      v65 = v18;
      v66 = v20;
      v67 = v3;
      v68 = a1;
      v78 = MEMORY[0x277D84F90];
      v26 = v79;
      sub_2759509B0(0, v24, 0);
      v27 = v78;
      v73 = *(v71 + 16);
      v28 = *(v71 + 80);
      v63 = v26;
      v29 = &v26[(v28 + 32) & ~v28];
      v30 = *(v71 + 72);
      v31 = (v71 + 8);
      do
      {
        v32 = v76;
        v73(v25, v29, v76);
        sub_2759B8BC8();
        (*v31)(v25, v32);
        v78 = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_2759509B0((v33 > 1), v34 + 1, 1);
          v27 = v78;
        }

        *(v27 + 16) = v34 + 1;
        sub_275827D1C(v77, v27 + 40 * v34 + 32);
        v29 += v30;
        --v24;
        v25 = v75;
      }

      while (v24);

      v3 = v67;
      a1 = v68;
      v21 = v69;
      v18 = v65;
      v20 = v66;
      v17 = v64;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
      v21 = v69;
    }
  }

  else
  {
    v27 = 0;
    v25 = v75;
  }

  *(v3 + 24) = v27;
  LOBYTE(v77[0]) = 1;
  sub_2759BAA68();
  v35 = v17;
  if (v17)
  {
    goto LABEL_27;
  }

  if (v79)
  {
    v64 = 0;
    v36 = *(v79 + 2);
    if (v36)
    {
      v65 = v18;
      v66 = v20;
      v68 = a1;
      v69 = v21;
      v67 = v3;
      v78 = MEMORY[0x277D84F90];
      v37 = v79;
      sub_2759509B0(0, v36, 0);
      v38 = v78;
      v73 = *(v71 + 16);
      v39 = *(v71 + 80);
      v63 = v37;
      v40 = &v37[(v39 + 32) & ~v39];
      v41 = *(v71 + 72);
      v42 = (v71 + 8);
      do
      {
        v43 = v76;
        v73(v25, v40, v76);
        sub_2759B8BC8();
        (*v42)(v25, v43);
        v78 = v38;
        v45 = *(v38 + 16);
        v44 = *(v38 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2759509B0((v44 > 1), v45 + 1, 1);
          v38 = v78;
        }

        *(v38 + 16) = v45 + 1;
        sub_275827D1C(v77, v38 + 40 * v45 + 32);
        v40 += v41;
        --v36;
        v25 = v75;
      }

      while (v36);

      v3 = v67;
      a1 = v68;
      v21 = v69;
      v20 = v66;
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v35 = v64;
  }

  else
  {
    v38 = 0;
  }

  *(v3 + 32) = v38;
  LOBYTE(v77[0]) = 2;
  sub_2759BAA68();
  if (v35)
  {
LABEL_27:
    (*(v72 + 8))(v20, v21);

    v46 = *(v3 + 24);

    if (!v35)
    {
      v47 = *(v3 + 32);
    }

    goto LABEL_4;
  }

  v68 = a1;
  v48 = v72;
  if (!v79)
  {
    (*(v72 + 8))(v20, v21);
    v61 = 0;
LABEL_38:
    v22 = v68;
    *(v3 + 40) = v61;
    goto LABEL_5;
  }

  v49 = *(v79 + 2);
  if (!v49)
  {

    (*(v48 + 8))(v20, v21);
    v61 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v64 = 0;
  v66 = v20;
  v67 = v3;
  v69 = v21;
  v78 = MEMORY[0x277D84F90];
  v50 = v79;
  sub_2759509B0(0, v49, 0);
  v51 = v78;
  v53 = *(v71 + 16);
  v52 = v71 + 16;
  v73 = v50;
  v74 = v53;
  v54 = v50 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v55 = *(v71 + 72);
  v56 = (v71 + 8);
  do
  {
    v57 = v76;
    v58 = v52;
    v74(v25, v54, v76);
    sub_2759B8BC8();
    (*v56)(v25, v57);
    v78 = v51;
    v60 = *(v51 + 16);
    v59 = *(v51 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_2759509B0((v59 > 1), v60 + 1, 1);
      v51 = v78;
    }

    *(v51 + 16) = v60 + 1;
    sub_275827D1C(v77, v51 + 40 * v60 + 32);
    v54 += v55;
    --v49;
    v52 = v58;
    v25 = v75;
  }

  while (v49);
  (*(v72 + 8))(v66, v69);

  v3 = v67;
  v22 = v68;
  *(v67 + 40) = v51;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v3;
}

uint64_t sub_275969EB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_275969F2C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585A7E4;

  return sub_2759687E8(a1, a2);
}

uint64_t sub_27596A088@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2759696F0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27596A194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_275968CEC(a1, v4, v5, v6, v7, v8);
}

void sub_27596A25C(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 48);
  *(v1 + 48) = *a1;
  v3 = v2;
}

unint64_t sub_27596A2A0()
{
  result = qword_280A11DC0;
  if (!qword_280A11DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DC0);
  }

  return result;
}

uint64_t sub_27596A2F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_27596A350()
{
  result = qword_280A11DC8;
  if (!qword_280A11DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DC8);
  }

  return result;
}

unint64_t sub_27596A3A8()
{
  result = qword_280A11DD0;
  if (!qword_280A11DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DD0);
  }

  return result;
}

unint64_t sub_27596A400()
{
  result = qword_280A11DD8;
  if (!qword_280A11DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DD8);
  }

  return result;
}

uint64_t sub_27596A454()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27596A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_2759BA258();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2758B677C;
  v11[3] = &block_descriptor_15;
  v9 = _Block_copy(v11);

  [v7 fetchStorageByApp:v8 completion:v9];
  _Block_release(v9);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27596A598@<X0>(void *a1@<X8>)
{
  type metadata accessor for ICSDriveCellularViewModel();

  result = sub_2759B9D58();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

id DriveCellularViewPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DriveCellularViewPresenter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DriveCellularViewPresenter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DriveCellularViewPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DriveCellularViewPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s14iCloudSettings26DriveCellularViewPresenterC7present4from14accountManagerySo16UIViewControllerC_So011AIDAAccountJ0CtFZ_0(void *a1, void *a2)
{
  v43 = a1;
  v3 = sub_2759B87B8();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2759B8788();
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2759B8798();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v18 = result;
    v19 = type metadata accessor for ICSDriveCellularViewModel();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = a2;
    v23 = sub_2759645EC(v22, v18, 0);

    v24 = [v43 traitCollection];
    sub_2759BA6E8();

    (*(v10 + 104))(v14, *MEMORY[0x277D40278], v9);
    sub_27596AD0C(&qword_280A11DE0, MEMORY[0x277D40290]);
    sub_2759BA3B8();
    sub_2759BA3B8();
    v25 = *(v10 + 8);
    v25(v14, v9);
    v25(v16, v9);
    if (v44 == v45)
    {
      sub_27596ACB8();
      sub_2759B8778();
      v26 = [v43 traitCollection];
      v27 = v39;
      sub_2759BA6D8();

      sub_27596AD0C(&unk_280A10D60, MEMORY[0x277D40260]);
      v28 = v40;
      sub_2759B87A8();

      (*(v41 + 8))(v27, v42);
      return (*(v38 + 8))(v8, v28);
    }

    else
    {
      v29 = [v43 navigationController];
      if (v29)
      {
        v30 = v29;
        v45 = v23;

        sub_2759B9D58();
        v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11DE8, &unk_2759CDAF0));
        v32 = sub_2759B9508();
        [v30 pushViewController:v32 animated:1];
      }

      else
      {
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v33 = sub_2759B89A8();
        __swift_project_value_buffer(v33, qword_2815ADE70);
        v34 = sub_2759B8988();
        v35 = sub_2759BA648();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_275819000, v34, v35, "DriveCellularViewController: no navigation controller", v36, 2u);
          MEMORY[0x277C85860](v36, -1, -1);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_27596ACB8()
{
  result = qword_280A11DF0;
  if (!qword_280A11DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DF0);
  }

  return result;
}

uint64_t sub_27596AD0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27596AD54()
{
  sub_2759B89E8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2759BA258();
  v3 = [v1 objectForInfoDictionaryKey_];

  if (v3)
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2759B8228();
    }
  }

  else
  {
    sub_275860FE4(v7);
  }

  sub_2759B8A18();
  sub_2759B8228();
}

uint64_t sub_27596AF28(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = a2 & 1;
  sub_2759BA4D8();
  v14 = sub_2759BA518();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v15;
  *(v16 + 40) = xmmword_2759CDB00;
  *(v16 + 56) = 10;
  *(v16 + 57) = a4;
  *(v16 + 58) = 0;
  *(v16 + 64) = a1;
  *(v16 + 72) = 0;
  *(v16 + 80) = v13;
  *(v16 + 88) = 0;
  *(v16 + 96) = 4;
  sub_275931D20(0, 0, v12, a5, v16);

  return sub_275936100(v12);
}

uint64_t ICSAnalyticsController.sendToggleEvent(for:actionType:enabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = a4 & 1;

  sub_2759BA4D8();
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = 1282;
  *(v15 + 58) = 0;
  *(v15 + 64) = a3;
  *(v15 + 72) = 0;
  *(v15 + 80) = v12;
  *(v15 + 88) = 0;
  *(v15 + 96) = 1;

  sub_275931D20(0, 0, v11, &unk_2759CDB18, v15);

  return sub_275936100(v11);
}

uint64_t ICSAnalyticsController.sendBackupToggleEvent(actionType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  sub_2759BA4D8();
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 40) = xmmword_2759C7B30;
  *(v8 + 56) = 522;
  *(v8 + 58) = 0;
  *(v8 + 64) = a1;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = -1;
  sub_275931D20(0, 0, v5, &unk_2759CDB20, v8);

  return sub_275936100(v5);
}

uint64_t sub_27596B530@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  v7[0] = v3;
  v7[1] = v5;
  v7[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v7);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v7, OpaqueTypeMetadata2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_27596B758()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27596B848()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_27596B924()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27596BA10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27596D324();
  *a2 = result;
  return result;
}

void sub_27596BA40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xEB00000000444974;
  v6 = 0x6E656E6F706D6F63;
  v7 = 0xEA00000000006570;
  v8 = 0x79546E6F69746361;
  if (v2 != 3)
  {
    v8 = 0x6956746567726174;
    v7 = 0xEC00000044497765;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x444977656976;
    v3 = 0xE600000000000000;
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

uint64_t sub_27596BAEC()
{
  v1 = *v0;
  v2 = 0x746E657665;
  v3 = 0x6E656E6F706D6F63;
  v4 = 0x79546E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x6956746567726174;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x444977656976;
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

uint64_t sub_27596BB94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27596D324();
  *a1 = result;
  return result;
}

uint64_t sub_27596BBBC(uint64_t a1)
{
  v2 = sub_27596D170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27596BBF8(uint64_t a1)
{
  v2 = sub_27596D170();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_27596BC34(uint64_t *a1)
{
  v3 = v1;
  v54 = *v3;
  v55 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v49 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = v46 - v10;
  MEMORY[0x28223BE20](v9);
  v47 = v46 - v11;
  v12 = sub_2759B8C48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = v46 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E18, &qword_2759CDCB8);
  v20 = *(v19 - 8);
  v51 = v19;
  v52 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v46 - v22;
  v3[2] = 0;
  v3[3] = 0;
  v50 = v13;
  v26 = *(v13 + 56);
  v24 = v13 + 56;
  v25 = v26;
  v56 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_componentID;
  v26(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_componentID, 1, 1, v12);
  v57 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_actionType;
  v26(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_actionType, 1, 1, v12);
  v58 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_targetViewID;
  v26(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_targetViewID, 1, 1, v12);
  v28 = a1[3];
  v27 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_27596D170();
  v29 = v55;
  sub_2759BAC18();
  if (v29)
  {

    sub_27586BF04(v3 + v56, &qword_280A0E8A8, qword_2759C2120);
    sub_27586BF04(v3 + v57, &qword_280A0E8A8, qword_2759C2120);
    sub_27586BF04(v3 + v58, &qword_280A0E8A8, qword_2759C2120);
    v33 = *(*v3 + 12);
    v34 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46[1] = v24;
    v46[2] = v25;
    v55 = v17;
    v30 = v50;
    v59 = 0;
    v31 = sub_27596D1C4(&qword_280A0E8C0, MEMORY[0x277D23340]);
    v32 = v51;
    sub_2759BAA78();
    v36 = v53;
    v53 = *(v30 + 32);
    (v53)(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_event, v36, v12);
    v59 = 1;
    v37 = v55;
    sub_2759BAA78();
    (v53)(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_viewID, v37, v12);
    v59 = 2;
    v38 = v47;
    v54 = v31;
    v55 = v23;
    sub_2759BAA68();
    v39 = v48;
    v40 = v56;
    swift_beginAccess();
    sub_27585F470(v38, v3 + v40);
    swift_endAccess();
    v59 = 3;
    sub_2759BAA68();
    v41 = v52;
    v42 = v57;
    swift_beginAccess();
    sub_27585F470(v39, v3 + v42);
    swift_endAccess();
    v59 = 4;
    v43 = v49;
    v44 = v55;
    sub_2759BAA68();
    (*(v41 + 8))(v44, v32);
    v45 = v58;
    swift_beginAccess();
    sub_27585F470(v43, v3 + v45);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  return v3;
}

uint64_t sub_27596C348()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_event;
  v2 = sub_2759B8C48();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_viewID, v2);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_componentID, &qword_280A0E8A8, qword_2759C2120);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_actionType, &qword_280A0E8A8, qword_2759C2120);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_targetViewID, &qword_280A0E8A8, qword_2759C2120);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendAnalyticsEventAction()
{
  result = qword_280A11DF8;
  if (!qword_280A11DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27596C4D0()
{
  v0 = sub_2759B8C48();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_27585EA38();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27596C5AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return (sub_27596C7F8)(a1);
}

id *sub_27596C710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_27596BC34(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_27596C7F8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = sub_2759B8C48();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27596C914, 0, 0);
}

uint64_t sub_27596D148(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_27589F7F0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_27596D15C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_27591E640(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_27596D170()
{
  result = qword_280A11E20;
  if (!qword_280A11E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E20);
  }

  return result;
}

uint64_t sub_27596D1C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27596D220()
{
  result = qword_280A11E28;
  if (!qword_280A11E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E28);
  }

  return result;
}

unint64_t sub_27596D278()
{
  result = qword_280A11E30;
  if (!qword_280A11E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E30);
  }

  return result;
}

unint64_t sub_27596D2D0()
{
  result = qword_280A11E38;
  if (!qword_280A11E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E38);
  }

  return result;
}

uint64_t sub_27596D324()
{
  v0 = sub_2759BAA48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27596D370()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_27596D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v28[7] = a2;
  v6 = *(v3 + 24);
  sub_27586E058(a1, &v25);
  v7 = *(v6 + 16);

  if (v7)
  {
    v9 = 0;
    v10 = v6 + 32;
    while (1)
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      sub_27586E058(v10, &v22);
      v11 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, v23);
      v12 = *(v11 + 8);
      sub_2759B8B28();
      if (v4)
      {
        break;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1(&v25);
      __swift_destroy_boxed_opaque_existential_1(&v22);
      result = sub_275827D1C(&v21, &v25);
      v10 += 40;
      if (v7 == v9)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v25);

    v19 = &v22;
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
LABEL_6:

    sub_275827D1C(&v25, v28);
    v13 = *(v20 + 32);
    sub_27586E058(v28, a3);
    v14 = *(v13 + 16);

    if (v14)
    {
      v15 = 0;
      v16 = v13 + 32;
      while (v15 < *(v13 + 16))
      {
        sub_27586E058(v16, &v25);
        v17 = v27;
        __swift_project_boxed_opaque_existential_1(&v25, v26);
        v18 = *(v17 + 8);
        sub_2759B8B28();
        if (v4)
        {

          __swift_destroy_boxed_opaque_existential_1(a3);
          __swift_destroy_boxed_opaque_existential_1(v28);
          v19 = &v25;
          return __swift_destroy_boxed_opaque_existential_1(v19);
        }

        ++v15;
        __swift_destroy_boxed_opaque_existential_1(a3);
        __swift_destroy_boxed_opaque_existential_1(&v25);
        result = sub_275827D1C(&v22, a3);
        v16 += 40;
        if (v14 == v15)
        {
          goto LABEL_11;
        }
      }

LABEL_16:
      __break(1u);
    }

    else
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return result;
}

uint64_t sub_27596D5F4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_27596D618, 0, 0);
}

uint64_t sub_27596D618()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[21] = __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Disabling Siri cloud sync.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[20];

  v6 = *(v5 + 16);
  v0[2] = v0;
  v0[3] = sub_27596D7E4;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E50, &unk_2759D0FD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27596DB7C;
  v0[13] = &block_descriptor_16;
  v0[14] = v7;
  [v6 disableAndDeleteCloudSyncWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27596D7E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_27596D9C4;
  }

  else
  {
    v3 = sub_27596D8F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27596D8F4()
{
  v1 = v0[19];
  v2 = *(v0[20] + 24);
  v3 = v0[18];
  v4 = v0[22] != 0;

  sub_2759BA438();

  sub_27595211C(0, v4, sub_27594A594);

  v5 = v0[1];

  return v5();
}

uint64_t sub_27596D9C4()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();
  v3 = v2;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Unable to disable siri: %@", v7, 0xCu);
    sub_275875554(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = v0[22];
  v12 = v0[20];

  v13 = *(v12 + 32);
  v14 = v11;
  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[22] != 0;

  sub_2759BA438();

  sub_27595211C(v11, v17, sub_27594A594);

  v18 = v0[1];

  return v18();
}

uint64_t sub_27596DB7C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_27596DC28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F7272456E6FLL;
  }

  else
  {
    v4 = 0x656C706D6F436E6FLL;
  }

  if (v3)
  {
    v5 = 0xEC0000006E6F6974;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F7272456E6FLL;
  }

  else
  {
    v6 = 0x656C706D6F436E6FLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEC0000006E6F6974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_27596DCD8()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27596DD64()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_27596DDDC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27596DE64@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_27596DEC4(uint64_t *a1@<X8>)
{
  v2 = 0x656C706D6F436E6FLL;
  if (*v1)
  {
    v2 = 0x726F7272456E6FLL;
  }

  v3 = 0xEC0000006E6F6974;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27596DF0C()
{
  if (*v0)
  {
    result = 0x726F7272456E6FLL;
  }

  else
  {
    result = 0x656C706D6F436E6FLL;
  }

  *v0;
  return result;
}

uint64_t sub_27596DF50@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_27596DFB4(uint64_t a1)
{
  v2 = sub_27596E888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27596DFF0(uint64_t a1)
{
  v2 = sub_27596E888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_27596E02C(uint64_t *a1)
{
  v2 = v1;
  v59 = *v1;
  v4 = sub_2759B8BD8();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E58, &unk_2759CDF90);
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v49 - v10;
  v1[2] = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27596E888();
  v13 = v62;
  sub_2759BAC18();
  v14 = v13;
  if (v13)
  {

LABEL_4:
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v62 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v64) = 0;
  v16 = sub_2758C7304();
  sub_2759BAA68();
  v54 = v16;
  v55 = v15;
  v56 = v11;
  v18 = MEMORY[0x277D84F90];
  if (*&v63[0])
  {
    v19 = *&v63[0];
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);
  if (v20)
  {
    v50 = v8;
    v51 = 0;
    v52 = a1;
    v53 = v1;
    v64 = MEMORY[0x277D84F90];
    v21 = v19;
    sub_2759509B0(0, v20, 0);
    v22 = v64;
    v23 = *(v57 + 16);
    v24 = *(v57 + 80);
    v49[1] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v60 = *(v57 + 72);
    v61 = v23;
    v26 = (v57 + 8);
    do
    {
      v27 = v62;
      v61(v7, v25, v62);
      sub_2759B8BC8();
      (*v26)(v7, v27);
      v64 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2759509B0((v28 > 1), v29 + 1, 1);
        v22 = v64;
      }

      *(v22 + 16) = v29 + 1;
      sub_275827D1C(v63, v22 + 40 * v29 + 32);
      v25 += v60;
      --v20;
    }

    while (v20);

    a1 = v52;
    v2 = v53;
    v30 = v50;
    v14 = v51;
    v31 = v58;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = v8;
    v22 = MEMORY[0x277D84F90];
    v31 = v58;
  }

  v2[3] = v22;
  LOBYTE(v64) = 1;
  v32 = v56;
  sub_2759BAA68();
  v33 = v30;
  if (v14)
  {
    (*(v31 + 8))(v32, v30);

    v34 = v2[3];

    goto LABEL_4;
  }

  if (*&v63[0])
  {
    v35 = *&v63[0];
  }

  else
  {
    v35 = v18;
  }

  v36 = *(v35 + 16);
  if (v36)
  {
    v50 = v33;
    v51 = 0;
    v52 = a1;
    v53 = v2;
    v64 = v18;
    v37 = v35;
    sub_2759509B0(0, v36, 0);
    v38 = v64;
    v39 = v57 + 16;
    v40 = *(v57 + 16);
    v41 = *(v57 + 80);
    v59 = v37;
    v42 = v37 + ((v41 + 32) & ~v41);
    v60 = *(v57 + 72);
    v61 = v40;
    v43 = (v57 + 8);
    do
    {
      v44 = v62;
      v45 = v39;
      v61(v7, v42, v62);
      sub_2759B8BC8();
      (*v43)(v7, v44);
      v64 = v38;
      v47 = *(v38 + 16);
      v46 = *(v38 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2759509B0((v46 > 1), v47 + 1, 1);
        v38 = v64;
      }

      *(v38 + 16) = v47 + 1;
      sub_275827D1C(v63, v38 + 40 * v47 + 32);
      v42 += v60;
      --v36;
      v39 = v45;
    }

    while (v36);
    (*(v58 + 8))(v56, v50);

    a1 = v52;
    v2 = v53;
  }

  else
  {
    v48 = v33;

    (*(v31 + 8))(v32, v48);
    v38 = MEMORY[0x277D84F90];
  }

  v2[4] = v38;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_27596E5AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_27596E618(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585A7E4;

  return sub_27596D5F4(a1, a2);
}

uint64_t *sub_27596E774@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27596E02C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_27596E888()
{
  result = qword_280A11E60;
  if (!qword_280A11E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E60);
  }

  return result;
}

uint64_t sub_27596E8DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_27596E938()
{
  result = qword_280A11E68;
  if (!qword_280A11E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E68);
  }

  return result;
}

unint64_t sub_27596E990()
{
  result = qword_280A11E70;
  if (!qword_280A11E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E70);
  }

  return result;
}

unint64_t sub_27596E9E8()
{
  result = qword_280A11E78;
  if (!qword_280A11E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E78);
  }

  return result;
}

uint64_t sub_27596EA68@<X0>(uint64_t a1@<X8>)
{
  sub_27589F2D4();

  result = sub_2759B99C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27596EAD4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  return sub_2759B9DB8();
}

uint64_t sub_27596EB94()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_27596EBBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_27596EA68(a1);
}

unint64_t sub_27596EBC8()
{
  result = qword_280A107A8;
  if (!qword_280A107A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10798, &qword_2759C7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A107A8);
  }

  return result;
}

uint64_t sub_27596EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27596ECA8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_27596ECA8()
{
  result = qword_280A11E80;
  if (!qword_280A11E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11E88, qword_2759CE200);
    sub_27596ED2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E80);
  }

  return result;
}

unint64_t sub_27596ED2C()
{
  result = qword_280A11E90[0];
  if (!qword_280A11E90[0])
  {
    sub_27596ED84();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A11E90);
  }

  return result;
}

unint64_t sub_27596ED84()
{
  result = qword_280A0EFC8;
  if (!qword_280A0EFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0EFC8);
  }

  return result;
}

uint64_t sub_27596EED4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return v9(a1, a2);
}

uint64_t sub_27596F000(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B95D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_2759B95E8();
}

uint64_t sub_27596F0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2759B95D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_2759B95E8();
}

uint64_t sub_27596F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2759B8E68();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  (*(v13 + 16))(v16, v7, a3);
  sub_2759B8E78();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = v20[0];
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  return sub_2759B8FF8();
}

id sub_27596F398()
{
  v0 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v1 = sub_2759BA258();
  v2 = [v0 initWithType_];

  return v2;
}

uint64_t sub_27596F404@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SixPackCard(0);
  sub_27586FBC8(v1 + *(v12 + 20), v11, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
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

uint64_t sub_27596F60C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SixPackCard(0);
  sub_27586FBC8(v1 + *(v12 + 28), v11, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B94D8();
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

uint64_t sub_27596F814@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v57 = sub_2759B8DA8();
  v59 = *(v57 - 8);
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SixPackButtonStyle(0);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SixPackCard(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = v10;
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12028, &qword_2759CE488);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12030, &qword_2759CE490);
  v18 = *(v17 - 8);
  v53 = v17;
  v54 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12038, &qword_2759CE498);
  v22 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v50 = &v44 - v23;
  v45 = v1;
  v48 = type metadata accessor for SixPackCard;
  v49 = v11;
  sub_27597FCCC(v1, v11, type metadata accessor for SixPackCard);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  sub_27597FC64(v11, v25 + v24, type metadata accessor for SixPackCard);
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12040, &qword_2759CE4A0);
  sub_27597E538();
  sub_2759B9DB8();
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v26 = sub_27589B02C(&qword_280A120C0, &qword_280A12028, &qword_2759CE488);
  v27 = sub_27597E8D8(&qword_280A120C8, type metadata accessor for SixPackButtonStyle);
  v28 = v46;
  v29 = v51;
  sub_2759B9A78();
  sub_27597E920(v6, type metadata accessor for SixPackButtonStyle);
  (*(v47 + 8))(v16, v28);
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_2759BA8C8();

  strcpy(v61, "six-pack-card-");
  HIBYTE(v61[1]) = -18;
  v30 = v45;
  v31 = *v45;
  v32 = v45[1];
  ObjectType = swift_getObjectType();
  v34 = (*(v32 + 16))(ObjectType, v32);
  MEMORY[0x277C840E0](v34);

  v61[0] = v28;
  v61[1] = v29;
  v61[2] = v26;
  v61[3] = v27;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  v36 = v53;
  sub_2759B9B38();

  (*(v54 + 8))(v21, v36);
  v37 = v56;
  sub_27596F404(v56);
  v39 = v48;
  v38 = v49;
  sub_27597FCCC(v30, v49, v48);
  v40 = swift_allocObject();
  sub_27597FC64(v38, v40 + v24, v39);
  sub_27597EC6C();
  sub_27597E8D8(&qword_280A120D8, MEMORY[0x277CDF3E0]);
  v41 = v37;
  v42 = v57;
  sub_2759B9B88();

  (*(v59 + 8))(v41, v42);
  return sub_27586BF04(v35, &qword_280A12038, &qword_2759CE498);
}

uint64_t sub_27596FEAC(uint64_t a1)
{
  v2 = type metadata accessor for SixPackCard(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_27597FCCC(a1, v5, type metadata accessor for SixPackCard);
  sub_2759BA4C8();
  v11 = sub_2759BA4B8();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_27597FC64(v5, v13 + v12, type metadata accessor for SixPackCard);
  sub_27587D460(0, 0, v9, &unk_2759CE728, v13);
}

uint64_t sub_275970080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2759BA4C8();
  v4[3] = sub_2759BA4B8();
  v6 = sub_2759BA468();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_275970118, v6, v5);
}

uint64_t sub_275970118()
{
  v1 = *(v0 + 16);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_27597023C;

  return v9(ObjectType, v2);
}

uint64_t sub_27597023C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_27588B68C, v4, v3);
}

uint64_t sub_27597035C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12098, &qword_2759CE4C8);
  v3 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v5 = &v74 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120E0, &qword_2759CE4E0);
  v6 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120E8, &qword_2759CE4E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12058, &qword_2759CE4A8);
  v14 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v16 = &v74 - v15;
  v17 = sub_2759B94D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v74 - v23;
  sub_27596F60C(&v74 - v23);
  (*(v18 + 104))(v22, *MEMORY[0x277CE0280], v17);
  v25 = sub_2758B2220(v24, v22);
  v26 = *(v18 + 8);
  v26(v22, v17);
  v26(v24, v17);
  if (v25)
  {
    *v16 = sub_2759B9418();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v27 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120F8, &qword_2759CE4F8) + 44)];
    *v13 = sub_2759B94F8();
    *(v13 + 1) = 0x4000000000000000;
    v13[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12100, &qword_2759CE500);
    sub_275972458(a1, &v13[*(v28 + 44)]);
    v29 = v74;
    sub_27586FBC8(v13, v74, &qword_280A120E8, &qword_2759CE4E8);
    sub_27586FBC8(v29, v27, &qword_280A120E8, &qword_2759CE4E8);
    v30 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12108, &qword_2759CE508) + 48);
    *v30 = 0;
    *(v30 + 8) = 1;
    sub_27586BF04(v13, &qword_280A120E8, &qword_2759CE4E8);
    sub_27586BF04(v29, &qword_280A120E8, &qword_2759CE4E8);
    LOBYTE(v27) = sub_2759B9808();
    sub_2759B8D78();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12078, &qword_2759CE4B8) + 36)];
    *v39 = v27;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    LOBYTE(v27) = sub_2759B9818();
    sub_2759B8D78();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12068, &qword_2759CE4B0) + 36)];
    *v48 = v27;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    LOBYTE(v27) = sub_2759B97F8();
    sub_2759B8D78();
    v49 = &v16[*(v75 + 36)];
    *v49 = v27;
    *(v49 + 1) = v50;
    *(v49 + 2) = v51;
    *(v49 + 3) = v52;
    *(v49 + 4) = v53;
    v49[40] = 0;
    sub_27586FBC8(v16, v77, &qword_280A12058, &qword_2759CE4A8);
    swift_storeEnumTagMultiPayload();
    sub_27597E5C4();
    sub_27597E794();
    sub_2759B95E8();
    return sub_27586BF04(v16, &qword_280A12058, &qword_2759CE4A8);
  }

  else
  {
    v56 = v77;
    v55 = v78;
    if (qword_280A0E328 != -1)
    {
      swift_once();
    }

    *v5 = qword_280A23890;
    *(v5 + 1) = 0;
    v5[16] = 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120F0, &qword_2759CE4F0);
    sub_275970A28(a1, &v5[*(v57 + 44)]);
    v58 = sub_2759B9808();
    sub_2759B8D78();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120A8, &qword_2759CE4D0) + 36)];
    *v67 = v58;
    *(v67 + 1) = v60;
    *(v67 + 2) = v62;
    *(v67 + 3) = v64;
    *(v67 + 4) = v66;
    v67[40] = 0;
    v68 = sub_2759B9818();
    sub_2759B8D78();
    v69 = &v5[*(v55 + 36)];
    *v69 = v68;
    *(v69 + 1) = v70;
    *(v69 + 2) = v71;
    *(v69 + 3) = v72;
    *(v69 + 4) = v73;
    v69[40] = 0;
    sub_27586FBC8(v5, v56, &qword_280A12098, &qword_2759CE4C8);
    swift_storeEnumTagMultiPayload();
    sub_27597E5C4();
    sub_27597E794();
    sub_2759B95E8();
    return sub_27586BF04(v5, &qword_280A12098, &qword_2759CE4C8);
  }
}

uint64_t sub_2759709A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v1 + 128))(ObjectType, v1);
  (*(v1 + 96))(0, ObjectType, v1);
  return (*(v1 + 112))(ObjectType, v1);
}

uint64_t sub_275970A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12248, &qword_2759CE650);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v88 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = (&v73 - v7);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12250, &qword_2759CE658);
  v8 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v73 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12258, &qword_2759CE660);
  v10 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v78 = &v73 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12260, &qword_2759CE668);
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v73 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12268, &qword_2759CE670);
  v14 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v83 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12270, &qword_2759CE678);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12278, &qword_2759CE680);
  v20 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12148, &qword_2759CE560);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12280, &qword_2759CE688);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v86 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v73 - v31;
  v33 = a1;
  v34 = *a1;
  v35 = a1[1];
  ObjectType = swift_getObjectType();
  if ((*(v35 + 40))(ObjectType, v35))
  {
    sub_2759B8E88();
    v37 = sub_275971484();
    v38 = &v26[*(v23 + 36)];
    *v38 = v37;
    *(v38 + 1) = v39;
    *(v38 + 2) = 0xD000000000000010;
    *(v38 + 3) = 0x80000002759E2C50;
    v38[32] = 1;
    sub_27586FBC8(v26, v19, &qword_280A12148, &qword_2759CE560);
    swift_storeEnumTagMultiPayload();
    sub_27597F238();
    sub_27597F6A0();
    sub_2759B95E8();
    sub_27586FBC8(v22, v83, &qword_280A12278, &qword_2759CE680);
    swift_storeEnumTagMultiPayload();
    sub_27597F758();
    sub_27597F7E4();
    sub_2759B95E8();
    sub_27586BF04(v22, &qword_280A12278, &qword_2759CE680);
    sub_27586BF04(v26, &qword_280A12148, &qword_2759CE560);
    v40 = v33;
    v41 = v32;
  }

  else
  {
    v74 = v23;
    v75 = v32;
    v73 = v33;
    v42 = (*(v35 + 56))(ObjectType, v35);
    if (v42)
    {
      v43 = *(v35 + 64);
      v78 = v42;
      v43(ObjectType, v35);
      v44 = v79;
      sub_2759B8888();
      v40 = v73;
      v45 = sub_275971484();
      v46 = v44 + *(v80 + 36);
      *v46 = v45;
      *(v46 + 8) = v47;
      strcpy((v46 + 16), "six-pack-icon");
      *(v46 + 30) = -4864;
      *(v46 + 32) = 1;
      sub_27586FBC8(v44, v19, &qword_280A12260, &qword_2759CE668);
      swift_storeEnumTagMultiPayload();
      sub_27597F238();
      sub_27597F6A0();
      sub_2759B95E8();
      sub_27586FBC8(v22, v83, &qword_280A12278, &qword_2759CE680);
      swift_storeEnumTagMultiPayload();
      sub_27597F758();
      sub_27597F7E4();
      v41 = v75;
      sub_2759B95E8();

      sub_27586BF04(v22, &qword_280A12278, &qword_2759CE680);
      v48 = v44;
      v49 = &qword_280A12260;
      v50 = &qword_2759CE668;
    }

    else
    {
      v51 = (*(v35 + 88))(ObjectType, v35);
      if (v51)
      {
        v52 = *(v35 + 64);
        v53 = v51;
        v52(ObjectType, v35);
        v54 = v79;
        sub_2759B8888();
        v40 = v73;
        v55 = sub_275971484();
        v56 = v54 + *(v80 + 36);
        *v56 = v55;
        *(v56 + 8) = v57;
        strcpy((v56 + 16), "six-pack-icon");
        *(v56 + 30) = -4864;
        *(v56 + 32) = 1;
        sub_27586FBC8(v54, v77, &qword_280A12260, &qword_2759CE668);
        swift_storeEnumTagMultiPayload();
        sub_27597F6A0();
        sub_27597F238();
        v58 = v78;
        sub_2759B95E8();
        sub_27586FBC8(v58, v83, &qword_280A12258, &qword_2759CE660);
        swift_storeEnumTagMultiPayload();
        sub_27597F758();
        sub_27597F7E4();
        v41 = v75;
        sub_2759B95E8();

        sub_27586BF04(v58, &qword_280A12258, &qword_2759CE660);
        v48 = v54;
        v49 = &qword_280A12260;
        v50 = &qword_2759CE668;
      }

      else
      {
        v59 = v26;
        sub_2759B8E88();
        v40 = v73;
        v60 = sub_275971484();
        v61 = v59 + *(v74 + 36);
        *v61 = v60;
        *(v61 + 8) = v62;
        *(v61 + 16) = 0xD000000000000010;
        *(v61 + 24) = 0x80000002759E2C50;
        *(v61 + 32) = 1;
        sub_27586FBC8(v59, v77, &qword_280A12148, &qword_2759CE560);
        swift_storeEnumTagMultiPayload();
        sub_27597F6A0();
        sub_27597F238();
        v63 = v78;
        sub_2759B95E8();
        sub_27586FBC8(v63, v83, &qword_280A12258, &qword_2759CE660);
        swift_storeEnumTagMultiPayload();
        sub_27597F758();
        sub_27597F7E4();
        v41 = v75;
        sub_2759B95E8();
        sub_27586BF04(v63, &qword_280A12258, &qword_2759CE660);
        v48 = v59;
        v49 = &qword_280A12148;
        v50 = &qword_2759CE560;
      }
    }

    sub_27586BF04(v48, v49, v50);
  }

  v64 = sub_2759B94F8();
  v65 = v85;
  *v85 = v64;
  *(v65 + 8) = 0;
  *(v65 + 16) = 0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122A0, &qword_2759CE690);
  sub_2759716B4(v40, (v65 + *(v66 + 44)));
  v67 = v86;
  sub_27586FBC8(v41, v86, &qword_280A12280, &qword_2759CE688);
  v68 = v88;
  sub_27586FBC8(v65, v88, &qword_280A12248, &qword_2759CE650);
  v69 = v87;
  sub_27586FBC8(v67, v87, &qword_280A12280, &qword_2759CE688);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122A8, &qword_2759CE698);
  sub_27586FBC8(v68, v69 + *(v70 + 48), &qword_280A12248, &qword_2759CE650);
  v71 = v69 + *(v70 + 64);
  *v71 = 0;
  *(v71 + 8) = 0;
  sub_27586BF04(v65, &qword_280A12248, &qword_2759CE650);
  sub_27586BF04(v41, &qword_280A12280, &qword_2759CE688);
  sub_27586BF04(v68, &qword_280A12248, &qword_2759CE650);
  return sub_27586BF04(v67, &qword_280A12280, &qword_2759CE688);
}

double sub_275971484()
{
  v0 = sub_2759B94D8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  sub_27596F60C(&v14 - v6);
  v8 = v1[13];
  v8(v5, *MEMORY[0x277CE0288], v0);
  v9 = sub_2759B94C8();
  v10 = v1[1];
  v10(v5, v0);
  v10(v7, v0);
  if (v9)
  {
    return 42.0;
  }

  sub_27596F60C(v7);
  v8(v5, *MEMORY[0x277CE0250], v0);
  v11 = sub_2759B94C8();
  v10(v5, v0);
  v10(v7, v0);
  if (v11)
  {
    return 42.0;
  }

  sub_27596F60C(v7);
  v8(v5, *MEMORY[0x277CE0258], v0);
  v13 = sub_2759B94C8();
  v10(v5, v0);
  v10(v7, v0);
  result = 42.0;
  if ((v13 & 1) == 0)
  {
    return 28.0;
  }

  return result;
}

uint64_t sub_2759716B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v156 = a2;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122B0, &qword_2759CE6A0);
  v150 = *(v152 - 8);
  v3 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v149 = &v121 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122B8, &qword_2759CE6A8);
  v5 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v151 = &v121 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122C0, &qword_2759CE6B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v155 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v154 = &v121 - v11;
  v157 = sub_2759B98B8();
  v12 = *(v157 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v157);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10740, &qword_2759C72D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v121 - v18;
  v20 = sub_2759B9908();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v24 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122C8, &qword_2759CE6B8);
  v25 = *(*(v158 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v158);
  v147 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v124 = &v121 - v28;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122D0, &qword_2759CE6C0);
  v29 = *(*(v140 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v140);
  v148 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v123 = &v121 - v32;
  v34 = *a1;
  v33 = a1[1];
  ObjectType = swift_getObjectType();
  v36 = *(v33 + 16);
  v138 = v34;
  v136 = ObjectType;
  v139 = v33;
  v159 = v36(ObjectType, v33);
  v160 = v37;
  v137 = sub_27589F2D4();
  v38 = sub_2759B99C8();
  v40 = v39;
  v42 = v41;
  v122 = v43;
  v44 = v21[13];
  v134 = *MEMORY[0x277CE0A58];
  v135 = v21 + 13;
  v133 = v44;
  v44(v24);
  v45 = sub_2759B9878();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v132 = v45;
  v131 = v47;
  v130 = v46 + 56;
  (v47)(v19, 1, 1);
  sub_2759B98A8();
  v144 = v19;
  sub_27586BF04(v19, &qword_280A10740, &qword_2759C72D0);
  v48 = v21[1];
  v141 = v24;
  v143 = v20;
  v142 = v21 + 1;
  v129 = v48;
  v48(v24, v20);
  v49 = v12[13];
  v127 = *MEMORY[0x277CE0A10];
  v50 = v157;
  v128 = v12 + 13;
  v126 = v49;
  v49(v15);
  sub_2759B98C8();

  v51 = v12[1];
  v145 = v15;
  v146 = v12 + 1;
  v125 = v51;
  v51(v15, v50);
  v52 = sub_2759B9988();
  v54 = v53;
  LOBYTE(v50) = v55;

  sub_27589F328(v38, v40, v42 & 1);

  sub_2759B9888();
  v56 = sub_2759B9948();
  v58 = v57;
  v60 = v59;
  sub_27589F328(v52, v54, v50 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v159 = qword_280A239B8;

  v61 = sub_2759B9958();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_27589F328(v56, v58, v60 & 1);

  KeyPath = swift_getKeyPath();
  v159 = v61;
  v160 = v63;
  v161 = v65 & 1;
  v162 = v67;
  v163 = KeyPath;
  v164 = 0x3FE8000000000000;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12178, &qword_2759CE5E0);
  v70 = sub_27597EEA0();
  v71 = v124;
  v122 = v69;
  v121 = v70;
  sub_2759B9BB8();
  sub_27589F328(v61, v63, v65 & 1);

  v72 = swift_getKeyPath();
  v73 = v71 + *(v158 + 36);
  *v73 = v72;
  *(v73 + 8) = 0;
  sub_27597F870();
  v74 = v123;
  sub_2759B9B38();
  sub_27586BF04(v71, &qword_280A122C8, &qword_2759CE6B8);
  *(v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122F0, &qword_2759CE700) + 36)) = 256;
  if (qword_280A0E328 != -1)
  {
    swift_once();
  }

  v75 = qword_280A23890;
  v76 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122F8, &qword_2759CE708) + 36));
  *v76 = v75;
  v76[1] = sub_2759803B0;
  v76[2] = 0;
  LOBYTE(v75) = sub_2759B97F8();
  sub_2759B8D78();
  v77 = v74 + *(v140 + 36);
  *v77 = v75;
  *(v77 + 8) = v78;
  *(v77 + 16) = v79;
  *(v77 + 24) = v80;
  *(v77 + 32) = v81;
  *(v77 + 40) = 0;
  v82 = (*(v139 + 24))(v136);
  if (v83)
  {
    v84 = v82;
  }

  else
  {
    v84 = 0;
  }

  v85 = 0xE000000000000000;
  if (v83)
  {
    v85 = v83;
  }

  v159 = v84;
  v160 = v85;
  v86 = sub_2759B99C8();
  v88 = v87;
  v90 = v89;
  v91 = v141;
  v92 = v143;
  v133(v141, v134, v143);
  v93 = v144;
  v131(v144, 1, 1, v132);
  sub_2759B98A8();
  sub_27586BF04(v93, &qword_280A10740, &qword_2759C72D0);
  v129(v91, v92);
  v94 = v145;
  v95 = v157;
  v126(v145, v127, v157);
  sub_2759B98C8();

  v125(v94, v95);
  v96 = sub_2759B9988();
  v98 = v97;
  v100 = v99;

  sub_27589F328(v86, v88, v90 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v159 = qword_280A239C0;

  v101 = sub_2759B9958();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  sub_27589F328(v96, v98, v100 & 1);

  v108 = swift_getKeyPath();
  v159 = v101;
  v160 = v103;
  v161 = v105 & 1;
  v162 = v107;
  v163 = v108;
  v164 = 0x3FE8000000000000;
  v109 = v149;
  sub_2759B9BB8();
  sub_27589F328(v101, v103, v105 & 1);

  v110 = swift_getKeyPath();
  v111 = v147;
  (*(v150 + 32))(v147, v109, v152);
  v112 = v111 + *(v158 + 36);
  *v112 = v110;
  *(v112 + 8) = 0;
  v113 = v151;
  sub_275826024(v111, v151);
  *(v113 + *(v153 + 36)) = 256;
  sub_27597F964();
  v114 = v154;
  sub_2759B9B38();
  sub_27586BF04(v113, &qword_280A122B8, &qword_2759CE6A8);
  v115 = v148;
  sub_27586FBC8(v74, v148, &qword_280A122D0, &qword_2759CE6C0);
  v116 = v155;
  sub_27586FBC8(v114, v155, &qword_280A122C0, &qword_2759CE6B0);
  v117 = v156;
  *v156 = 0;
  *(v117 + 8) = 0;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12308, &unk_2759CE710);
  sub_27586FBC8(v115, v117 + v118[12], &qword_280A122D0, &qword_2759CE6C0);
  sub_27586FBC8(v116, v117 + v118[16], &qword_280A122C0, &qword_2759CE6B0);
  v119 = v117 + v118[20];
  *v119 = 0;
  v119[8] = 0;
  sub_27586BF04(v114, &qword_280A122C0, &qword_2759CE6B0);
  sub_27586BF04(v74, &qword_280A122D0, &qword_2759CE6C0);
  sub_27586BF04(v116, &qword_280A122C0, &qword_2759CE6B0);
  return sub_27586BF04(v115, &qword_280A122D0, &qword_2759CE6C0);
}

uint64_t sub_275972458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v209 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12110, &unk_2759CE510);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v208 = v181 - v5;
  v217 = sub_2759B98B8();
  v222 = *(v217 - 8);
  v6 = *(v222 + 64);
  MEMORY[0x28223BE20](v217);
  v216 = v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10740, &qword_2759C72D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v215 = v181 - v10;
  v214 = sub_2759B9908();
  v221 = *(v214 - 8);
  v11 = *(v221 + 64);
  MEMORY[0x28223BE20](v214);
  v213 = v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12118, &qword_2759CE520);
  v13 = *(*(v218 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v218);
  v207 = v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v206 = v181 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v204 = v181 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v205 = v181 - v21;
  MEMORY[0x28223BE20](v20);
  v219 = v181 - v22;
  v23 = type metadata accessor for SixPackCard(0);
  v185 = *(v23 - 8);
  v24 = *(v185 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v186 = v25;
  v187 = v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12120, &unk_2759CE528);
  v26 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v188 = v181 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF88, qword_2759C5C20);
  v194 = *(v28 - 8);
  v195 = v28;
  v29 = *(v194 + 64);
  MEMORY[0x28223BE20](v28);
  v193 = v181 - v30;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12128, &unk_2759CE538);
  v31 = *(*(v198 - 1) + 64);
  MEMORY[0x28223BE20](v198);
  v196 = v181 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v184 = v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v189 = v181 - v37;
  v38 = sub_2759B8508();
  v191 = *(v38 - 8);
  v192 = v38;
  v39 = v191[8];
  v40 = MEMORY[0x28223BE20](v38);
  v182 = v41;
  v183 = v181 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v190 = v181 - v42;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12130, &qword_2759CE548);
  v43 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v201 = v181 - v44;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12138, &qword_2759CE550);
  v45 = *(*(v197 - 1) + 64);
  MEMORY[0x28223BE20](v197);
  v47 = v181 - v46;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12140, &qword_2759CE558);
  v48 = *(*(v199 - 1) + 64);
  MEMORY[0x28223BE20](v199);
  v50 = v181 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12148, &qword_2759CE560);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = v181 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12150, &qword_2759CE568);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v203 = v181 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = v181 - v59;
  v61 = a1;
  v62 = *a1;
  v63 = a1[1];
  ObjectType = swift_getObjectType();
  v65 = (*(v63 + 40))(ObjectType, v63);
  v220 = v60;
  v211 = v63;
  v212 = v62;
  v210 = ObjectType;
  if (v65)
  {
    sub_2759B8E88();
    v66 = sub_275971484();
    v67 = &v54[*(v51 + 36)];
    *v67 = v66;
    *(v67 + 1) = v68;
    *(v67 + 2) = 0xD000000000000010;
    *(v67 + 3) = 0x80000002759E2C50;
    v67[32] = 0;
    sub_27586FBC8(v54, v47, &qword_280A12148, &qword_2759CE560);
    swift_storeEnumTagMultiPayload();
    sub_27597F238();
    sub_27597F344();
    sub_2759B95E8();
    sub_27586FBC8(v50, v201, &qword_280A12140, &qword_2759CE558);
    swift_storeEnumTagMultiPayload();
    sub_27597F1AC();
    sub_27597F42C();
    sub_2759B95E8();
    sub_27586BF04(v50, &qword_280A12140, &qword_2759CE558);
    sub_27586BF04(v54, &qword_280A12148, &qword_2759CE560);
  }

  else
  {
    v181[2] = v51;
    v69 = (*(v63 + 56))(ObjectType, v63);
    if (v69)
    {
      v70 = v63;
      v71 = *(v63 + 72);
      v72 = v69;
      v71(ObjectType, v70);
      v73 = v193;
      v74 = v72;
      sub_2759B8888();
      sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20);
      v75 = v195;
      v76 = v196;
      sub_2759B9B38();
      (*(v194 + 8))(v73, v75);
      sub_27586FBC8(v76, v47, &qword_280A12128, &unk_2759CE538);
      swift_storeEnumTagMultiPayload();
      sub_27597F238();
      sub_27597F344();
      sub_2759B95E8();
      sub_27586FBC8(v50, v201, &qword_280A12140, &qword_2759CE558);
      swift_storeEnumTagMultiPayload();
      sub_27597F1AC();
      sub_27597F42C();
      v60 = v220;
      sub_2759B95E8();

      sub_27586BF04(v50, &qword_280A12140, &qword_2759CE558);
      sub_27586BF04(v76, &qword_280A12128, &unk_2759CE538);
    }

    else
    {
      v77 = v189;
      (*(v63 + 32))(ObjectType, v63);
      v79 = v191;
      v78 = v192;
      if ((v191[6])(v77, 1, v192) == 1)
      {
        sub_27586BF04(v77, &unk_280A0EB10, &qword_2759C0740);
        v80 = 1;
        v82 = v216;
        v81 = v217;
        v83 = v222;
        v84 = v215;
        v60 = v220;
        goto LABEL_9;
      }

      v198 = v79[4];
      v85 = v190;
      v198();
      v86 = v79[2];
      v87 = v184;
      v88 = v85;
      v89 = v85;
      v90 = v78;
      v86(v184, v89, v78);
      (v79[7])(v87, 0, 1, v78);
      v91 = v183;
      v86(v183, v88, v90);
      v181[1] = v61;
      v92 = v61;
      v93 = v187;
      sub_27597FCCC(v92, v187, type metadata accessor for SixPackCard);
      v94 = (*(v79 + 80) + 16) & ~*(v79 + 80);
      v95 = (v182 + *(v185 + 80) + v94) & ~*(v185 + 80);
      v96 = swift_allocObject();
      v97 = v91;
      v98 = v192;
      (v198)(v96 + v94, v97, v192);
      sub_27597FC64(v93, v96 + v95, type metadata accessor for SixPackCard);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121A8, &qword_2759CE600);
      sub_27597F03C();
      v99 = v188;
      sub_2759B8D38();
      v100 = sub_275971484();
      v101 = v99 + *(v202 + 36);
      *v101 = v100;
      *(v101 + 8) = v102;
      strcpy((v101 + 16), "six-pack-icon");
      *(v101 + 30) = -4864;
      *(v101 + 32) = 0;
      sub_27586FBC8(v99, v201, &qword_280A12120, &unk_2759CE528);
      swift_storeEnumTagMultiPayload();
      sub_27597F1AC();
      sub_27597F42C();
      v60 = v220;
      sub_2759B95E8();
      sub_27586BF04(v99, &qword_280A12120, &unk_2759CE528);
      (v79[1])(v190, v98);
    }
  }

  v80 = 0;
  v82 = v216;
  v81 = v217;
  v83 = v222;
  v84 = v215;
LABEL_9:
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12158, &qword_2759CE570);
  (*(*(v103 - 8) + 56))(v60, v80, 1, v103);
  *&v235[0] = (*(v211 + 16))(v210);
  *(&v235[0] + 1) = v104;
  v202 = sub_27589F2D4();
  v105 = sub_2759B99C8();
  v189 = v106;
  v190 = v105;
  v108 = v107;
  v188 = v109;
  v110 = v221;
  v111 = *(v221 + 104);
  v112 = v213;
  v113 = v214;
  LODWORD(v201) = *MEMORY[0x277CE0A58];
  v199 = v111;
  v200 = v221 + 104;
  v111(v213);
  v114 = sub_2759B9878();
  v115 = *(v114 - 8);
  v197 = *(v115 + 56);
  v198 = v114;
  v196 = (v115 + 56);
  v197(v84, 1, 1);
  sub_2759B98A8();
  sub_27586BF04(v84, &qword_280A10740, &qword_2759C72D0);
  v116 = *(v110 + 8);
  v221 = v110 + 8;
  v195 = v116;
  v116(v112, v113);
  v117 = *(v83 + 104);
  LODWORD(v194) = *MEMORY[0x277CE0A10];
  v192 = v117;
  v193 = (v83 + 104);
  v117(v82);
  sub_2759B98C8();

  v118 = *(v83 + 8);
  v222 = v83 + 8;
  v191 = v118;
  (v118)(v82, v81);
  v120 = v189;
  v119 = v190;
  v121 = sub_2759B9988();
  v123 = v122;
  v125 = v124;

  sub_27589F328(v119, v120, v108 & 1);

  sub_2759B9888();
  v126 = sub_2759B9948();
  v128 = v127;
  v130 = v129;
  sub_27589F328(v121, v123, v125 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  *&v235[0] = qword_280A239B8;

  v131 = sub_2759B9958();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  sub_27589F328(v126, v128, v130 & 1);

  KeyPath = swift_getKeyPath();
  v139 = swift_getKeyPath();
  LOBYTE(v223) = v135 & 1;
  v234 = 0;
  *&v229 = v131;
  *(&v229 + 1) = v133;
  LOBYTE(v230) = v135 & 1;
  *(&v230 + 1) = v137;
  *&v231 = KeyPath;
  *(&v231 + 1) = 0x3FE999999999999ALL;
  *&v232 = v139;
  *(&v232 + 1) = 3;
  v233 = 0;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12160, &qword_2759CE5D8);
  v141 = sub_27597EDE8();
  v142 = v219;
  v189 = v141;
  v190 = v140;
  sub_2759B9B38();
  v235[2] = v231;
  v235[3] = v232;
  v236 = v233;
  v235[0] = v229;
  v235[1] = v230;
  sub_27586BF04(v235, &qword_280A12160, &qword_2759CE5D8);
  *(v142 + *(v218 + 36)) = 256;
  v143 = (*(v211 + 24))(v210);
  if (v144)
  {
    v145 = v143;
  }

  else
  {
    v145 = 0;
  }

  v146 = 0xE000000000000000;
  if (v144)
  {
    v146 = v144;
  }

  *&v229 = v145;
  *(&v229 + 1) = v146;
  v147 = sub_2759B99C8();
  v149 = v148;
  v151 = v150;
  v152 = v213;
  v153 = v214;
  (v199)(v213, v201, v214);
  v154 = v215;
  (v197)(v215, 1, 1, v198);
  sub_2759B98A8();
  sub_27586BF04(v154, &qword_280A10740, &qword_2759C72D0);
  v195(v152, v153);
  v156 = v216;
  v155 = v217;
  v192(v216, v194, v217);
  sub_2759B98C8();

  (v191)(v156, v155);
  v157 = sub_2759B9988();
  v159 = v158;
  v161 = v160;

  sub_27589F328(v147, v149, v151 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  *&v229 = qword_280A239C0;

  v162 = sub_2759B9958();
  v164 = v163;
  v166 = v165;
  v168 = v167;
  sub_27589F328(v157, v159, v161 & 1);

  v169 = swift_getKeyPath();
  v170 = swift_getKeyPath();
  v234 = v166 & 1;
  v228 = 0;
  *&v223 = v162;
  *(&v223 + 1) = v164;
  LOBYTE(v224) = v166 & 1;
  *(&v224 + 1) = v168;
  *&v225 = v169;
  *(&v225 + 1) = 0x3FE999999999999ALL;
  *&v226 = v170;
  *(&v226 + 1) = 3;
  v227 = 0;
  v171 = v208;
  sub_2759B9B38();
  v231 = v225;
  v232 = v226;
  v233 = v227;
  v229 = v223;
  v230 = v224;
  sub_27586BF04(&v229, &qword_280A12160, &qword_2759CE5D8);
  v172 = v204;
  sub_27589F26C(v171, v204, &qword_280A12110, &unk_2759CE510);
  *(v172 + *(v218 + 36)) = 256;
  v173 = v205;
  sub_27589F26C(v172, v205, &qword_280A12118, &qword_2759CE520);
  v174 = v203;
  sub_27586FBC8(v220, v203, &qword_280A12150, &qword_2759CE568);
  v175 = v219;
  v176 = v206;
  sub_27586FBC8(v219, v206, &qword_280A12118, &qword_2759CE520);
  v177 = v207;
  sub_27586FBC8(v173, v207, &qword_280A12118, &qword_2759CE520);
  v178 = v209;
  sub_27586FBC8(v174, v209, &qword_280A12150, &qword_2759CE568);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121A0, &qword_2759CE5F8);
  sub_27586FBC8(v176, v178 + *(v179 + 48), &qword_280A12118, &qword_2759CE520);
  sub_27586FBC8(v177, v178 + *(v179 + 64), &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v173, &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v175, &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v220, &qword_280A12150, &qword_2759CE568);
  sub_27586BF04(v177, &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v176, &qword_280A12118, &qword_2759CE520);
  return sub_27586BF04(v174, &qword_280A12150, &qword_2759CE568);
}

uint64_t sub_2759739EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v58 = a2;
  v63 = a1;
  v68 = a4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD08, &qword_2759C56A0);
  v59 = *(v66 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v66);
  v57 = v52 - v5;
  v6 = type metadata accessor for SixPackCard(0);
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = v8;
  v55 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = v52 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121D0, &unk_2759CE610);
  v62 = *(v64 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = v52 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12210, &qword_2759CE628);
  v14 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12218, &qword_2759CE630);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v52 - v19);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121C0, &qword_2759CE608);
  v21 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v23 = v52 - v22;
  v24 = sub_2759B9CC8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2759B9098();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v33, v63, v29);
  v34 = (*(v30 + 88))(v33, v29);
  if (v34 == *MEMORY[0x277CDD9C8])
  {
    (*(v30 + 96))(v33, v29);
    v35 = *v33;
    (*(v25 + 104))(v28, *MEMORY[0x277CE0FE0], v24);
    v36 = sub_2759B9D28();
    (*(v25 + 8))(v28, v24);
    *v20 = v36;
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A121C8, &qword_280A121D0, &unk_2759CE610);
    swift_retain_n();
    sub_2759B95E8();
    sub_27586FBC8(v23, v16, &qword_280A121C0, &qword_2759CE608);
    swift_storeEnumTagMultiPayload();
    sub_27597F0F4();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    sub_2759B95E8();

    return sub_27586BF04(v23, &qword_280A121C0, &qword_2759CE608);
  }

  else
  {
    v52[1] = v17;
    v63 = v23;
    v38 = v16;
    v39 = v64;
    if (v34 == *MEMORY[0x277CDD9C0])
    {
      (*(v30 + 8))(v33, v29);
      v40 = sub_2759B8508();
      v41 = *(v40 - 8);
      v42 = v56;
      (*(v41 + 16))(v56, v58, v40);
      (*(v41 + 56))(v42, 0, 1, v40);
      v43 = v55;
      sub_27597FCCC(v60, v55, type metadata accessor for SixPackCard);
      v44 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v45 = swift_allocObject();
      sub_27597FC64(v43, v45 + v44, type metadata accessor for SixPackCard);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12220, &qword_2759CE638);
      sub_27597F564();
      v46 = v61;
      sub_2759B8D38();
      v47 = v62;
      (*(v62 + 16))(v20, v46, v39);
      swift_storeEnumTagMultiPayload();
      sub_27589B02C(&qword_280A121C8, &qword_280A121D0, &unk_2759CE610);
      v48 = v63;
      sub_2759B95E8();
      sub_27586FBC8(v48, v38, &qword_280A121C0, &qword_2759CE608);
      swift_storeEnumTagMultiPayload();
      sub_27597F0F4();
      sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
      sub_2759B95E8();
      sub_27586BF04(v48, &qword_280A121C0, &qword_2759CE608);
      return (*(v47 + 8))(v46, v39);
    }

    else
    {
      v49 = v57;
      sub_2759B8E88();
      v50 = v59;
      v51 = v66;
      (*(v59 + 16))(v16, v49, v66);
      swift_storeEnumTagMultiPayload();
      sub_27597F0F4();
      sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
      sub_2759B95E8();
      (*(v50 + 8))(v49, v51);
      return (*(v30 + 8))(v33, v29);
    }
  }
}

uint64_t sub_275974354(uint64_t a1, uint64_t *a2)
{
  v34 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF88, qword_2759C5C20);
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v33 = &v33 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12238, &qword_2759CE640);
  v5 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12240, &qword_2759CE648);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v33 - v9);
  v11 = sub_2759B9CC8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2759B9098();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, a1, v16);
  if ((*(v17 + 88))(v20, v16) == *MEMORY[0x277CDD9C8])
  {
    (*(v17 + 96))(v20, v16);
    v21 = *v20;
    (*(v12 + 104))(v15, *MEMORY[0x277CE0FE0], v11);
    v22 = sub_2759B9D28();
    (*(v12 + 8))(v15, v11);
    *v10 = v22;
    swift_storeEnumTagMultiPayload();
    sub_27597F5F0();
    swift_retain_n();
    sub_2759B95E8();
  }

  else
  {
    v25 = *v34;
    v24 = v34[1];
    ObjectType = swift_getObjectType();
    if ((*(v24 + 48))(ObjectType, v24))
    {
      (*(v24 + 72))(ObjectType, v24);
      v27 = v33;
      sub_2759B8888();
      v28 = v35;
      v29 = v36;
      v30 = v27;
      v31 = v37;
      (*(v35 + 32))(v36, v30, v37);
      v32 = 0;
    }

    else
    {
      v32 = 1;
      v29 = v36;
      v31 = v37;
      v28 = v35;
    }

    (*(v28 + 56))(v29, v32, 1, v31);
    sub_27586FBC8(v29, v10, &qword_280A12238, &qword_2759CE640);
    swift_storeEnumTagMultiPayload();
    sub_27597F5F0();
    sub_2759B95E8();
    sub_27586BF04(v29, &qword_280A12238, &qword_2759CE640);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_275974844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_27586FBC8(v2, &v17 - v11, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B94D8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_275974A48(uint64_t a1)
{
  v6 = *(v1 + *(a1 + 44));
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  sub_2759BA448();
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759BA3A8();

  v2 = sub_2759BA428();

  return v2;
}

uint64_t sub_275974B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v183 = *(a1 + 16);
  v3 = sub_2759BA448();
  v4 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v180 = a1;
  v184 = *(a1 + 24);
  v187 = sub_2759B9EF8();
  sub_2759B95F8();
  v5 = sub_27597DA50();
  v236 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  v181 = swift_getWitnessTable();
  v234 = v5;
  v235 = v181;
  v169 = MEMORY[0x277CE0340];
  swift_getWitnessTable();
  v6 = sub_2759B9F18();
  v7 = swift_getWitnessTable();
  v233 = v184;
  v168 = v3;
  v237 = v4;
  v238 = v3;
  v189 = v4;
  v239 = v6;
  v240 = v7;
  v170 = swift_getWitnessTable();
  v171 = v7;
  v241 = v170;
  v8 = v170;
  sub_2759B9EF8();
  v182 = MEMORY[0x277CDF0A0];
  v232 = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_2759B9928();
  v158 = *(v9 - 8);
  v10 = *(v158 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v157 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v156 = &v153 - v13;
  v176 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759B95F8();
  v175 = sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0);
  v14 = sub_2759B8FE8();
  v237 = v4;
  v15 = v168;
  v238 = v168;
  v239 = v14;
  v240 = v7;
  v241 = v8;
  v16 = sub_2759B9EF8();
  v17 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
  v174 = v17;
  v230 = sub_27597DC18();
  v231 = v181;
  v18 = swift_getWitnessTable();
  v228 = v17;
  v229 = v18;
  v173 = MEMORY[0x277CDF7A8];
  v227 = swift_getWitnessTable();
  v172 = v16;
  v19 = swift_getWitnessTable();
  v20 = sub_2759B9E38();
  v164 = *(v20 - 8);
  v21 = *(v164 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v163 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v162 = &v153 - v24;
  v179 = v25;
  v185 = v9;
  v188 = sub_2759B95F8();
  v167 = *(v188 - 8);
  v26 = *(v167 + 64);
  v27 = MEMORY[0x28223BE20](v188);
  v166 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v165 = &v153 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  v237 = v15;
  v238 = v183;
  v239 = v30;
  v240 = WitnessTable;
  v241 = v184;
  sub_2759B9EF8();
  v226 = sub_27597DB08();
  v31 = swift_getWitnessTable();
  sub_2759B9F18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  sub_2759B95F8();
  v224 = sub_27597DD00();
  v225 = v31;
  swift_getWitnessTable();
  v32 = sub_2759B9F18();
  v237 = v189;
  v238 = v15;
  v239 = v32;
  v240 = v171;
  v241 = v170;
  sub_2759B9EF8();
  sub_2759B95F8();
  v33 = swift_getWitnessTable();
  v223 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v221 = v33;
  v222 = v34;
  swift_getWitnessTable();
  v35 = sub_2759B9928();
  v155 = *(v35 - 8);
  v36 = *(v155 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v154 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v153 = &v153 - v39;
  sub_2759B8FE8();
  sub_2759B95F8();
  v219 = v174;
  v220 = v181;
  v217 = swift_getWitnessTable();
  v218 = v19;
  swift_getWitnessTable();
  v40 = sub_2759B9E38();
  v161 = *(v40 - 8);
  v41 = *(v161 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v160 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v159 = &v153 - v44;
  v187 = v45;
  v189 = v35;
  v46 = sub_2759B95F8();
  v169 = *(v46 - 8);
  v47 = *(v169 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v173 = &v153 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v172 = &v153 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  v237 = v15;
  v238 = v183;
  v239 = v51;
  v240 = WitnessTable;
  v241 = v184;
  sub_2759B9EF8();
  v216 = sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8);
  swift_getWitnessTable();
  v52 = sub_2759B9928();
  v181 = v46;
  v53 = sub_2759B95F8();
  v175 = *(v53 - 8);
  v54 = *(v175 + 64);
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v153 - v56;
  v171 = *(v52 - 8);
  v58 = *(v171 + 64);
  v59 = MEMORY[0x28223BE20](v55);
  v170 = &v153 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v176 = &v153 - v61;
  v62 = sub_2759B94D8();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v153 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v69 = &v153 - v68;
  WitnessTable = v53;
  v70 = sub_2759B95F8();
  v183 = *(v70 - 8);
  v184 = v70;
  v71 = *(v183 + 64);
  MEMORY[0x28223BE20](v70);
  v182 = &v153 - v72;
  v73 = v177;
  sub_275974844(v69);
  (*(v63 + 104))(v67, *MEMORY[0x277CE0280], v62);
  LOBYTE(v53) = sub_2758B2220(v69, v67);
  v74 = *(v63 + 8);
  v74(v67, v62);
  v74(v69, v62);
  v174 = v57;
  if (v53)
  {
    v75 = v170;
    sub_275976178(v180);
    v177 = MEMORY[0x277CDE590];
    v76 = swift_getWitnessTable();
    v77 = v176;
    sub_2758C832C(v75, v52, v76);
    v180 = *(v171 + 8);
    (v180)(v75, v52);
    sub_2758C832C(v77, v52, v76);
    v78 = swift_getWitnessTable();
    v79 = swift_getWitnessTable();
    v194 = v78;
    v195 = v79;
    v80 = swift_getWitnessTable();
    sub_27596F000(v75, v52);
    v192 = v76;
    v193 = v80;
    v81 = WitnessTable;
    swift_getWitnessTable();
    v82 = swift_getWitnessTable();
    v83 = swift_getWitnessTable();
    v190 = v82;
    v191 = v83;
    swift_getWitnessTable();
    v84 = v182;
    v85 = v174;
    sub_27596F000(v174, v81);
    (*(v175 + 8))(v85, v81);
    v86 = v180;
    (v180)(v75, v52);
    v86(v176, v52);
    v87 = v84;
  }

  else
  {
    v176 = v52;
    v88 = v179;
    v89 = *(v73 + *(v180 + 48));
    v90 = objc_opt_self();
    v91 = [v90 currentDevice];
    v92 = [v91 userInterfaceIdiom];

    if (v89 == 3)
    {
      v93 = v187;
      if (v92 == 1 || (v94 = [v90 currentDevice], v95 = objc_msgSend(v94, sel_userInterfaceIdiom), v94, v95 == 6))
      {
        v96 = v160;
        sub_2759762D0(v180);
        v97 = swift_getWitnessTable();
        v98 = v159;
        sub_2758C832C(v96, v93, v97);
        v99 = *(v161 + 8);
        v99(v96, v93);
        sub_2758C832C(v98, v93, v97);
        swift_getWitnessTable();
        v100 = v172;
        sub_27596F000(v96, v93);
        v99(v96, v93);
        v101 = v98;
        v102 = v93;
      }

      else
      {
        v113 = v154;
        sub_275976600(v180);
        v114 = v189;
        v115 = swift_getWitnessTable();
        v116 = v153;
        sub_2758C832C(v113, v114, v115);
        v99 = *(v155 + 8);
        v99(v113, v114);
        sub_2758C832C(v116, v114, v115);
        swift_getWitnessTable();
        v100 = v172;
        sub_27596F0F8(v113, v93, v114);
        v99(v113, v114);
        v101 = v116;
        v102 = v114;
      }

      v99(v101, v102);
      v117 = v181;
      v118 = swift_getWitnessTable();
      v119 = swift_getWitnessTable();
      v200 = v118;
      v201 = v119;
      v120 = swift_getWitnessTable();
      v121 = v173;
      sub_2758C832C(v100, v117, v120);
      v122 = v176;
      v123 = swift_getWitnessTable();
      v124 = v174;
      sub_27596F0F8(v121, v122, v117);
      v198 = v123;
      v199 = v120;
      v125 = WitnessTable;
      v180 = swift_getWitnessTable();
      v126 = swift_getWitnessTable();
      v127 = swift_getWitnessTable();
      v196 = v126;
      v197 = v127;
      swift_getWitnessTable();
      v87 = v182;
      sub_27596F000(v124, v125);
      (*(v175 + 8))(v124, v125);
      v128 = *(v169 + 8);
      v128(v173, v117);
      v128(v172, v117);
    }

    else
    {
      v103 = v188;
      if (v92 == 1 || (v104 = [v90 currentDevice], v105 = objc_msgSend(v104, sel_userInterfaceIdiom), v104, v105 == 6))
      {
        v106 = v163;
        sub_275976890(v180);
        v107 = swift_getWitnessTable();
        v108 = v162;
        sub_2758C832C(v106, v88, v107);
        v109 = *(v164 + 8);
        v109(v106, v88);
        sub_2758C832C(v108, v88, v107);
        swift_getWitnessTable();
        v110 = v165;
        sub_27596F000(v106, v88);
        v109(v106, v88);
        v111 = v108;
        v112 = v88;
      }

      else
      {
        v129 = v157;
        sub_275976B64(v180);
        v130 = v185;
        v131 = swift_getWitnessTable();
        v132 = v156;
        sub_2758C832C(v129, v130, v131);
        v109 = *(v158 + 8);
        v109(v129, v130);
        sub_2758C832C(v132, v130, v131);
        swift_getWitnessTable();
        v110 = v165;
        sub_27596F0F8(v129, v88, v130);
        v109(v129, v130);
        v111 = v132;
        v112 = v130;
      }

      v109(v111, v112);
      v133 = swift_getWitnessTable();
      v134 = swift_getWitnessTable();
      v214 = v133;
      v215 = v134;
      v180 = swift_getWitnessTable();
      v135 = v166;
      sub_2758C832C(v110, v103, v180);
      v136 = swift_getWitnessTable();
      v137 = swift_getWitnessTable();
      v138 = swift_getWitnessTable();
      v212 = v137;
      v213 = v138;
      v139 = swift_getWitnessTable();
      v210 = v136;
      v211 = v139;
      v140 = WitnessTable;
      swift_getWitnessTable();
      v87 = v182;
      sub_27596F0F8(v135, v140, v103);
      v141 = *(v167 + 8);
      v141(v135, v103);
      v141(v110, v103);
    }
  }

  v142 = swift_getWitnessTable();
  v143 = swift_getWitnessTable();
  v144 = swift_getWitnessTable();
  v208 = v143;
  v209 = v144;
  v145 = swift_getWitnessTable();
  v206 = v142;
  v207 = v145;
  v146 = swift_getWitnessTable();
  v147 = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v204 = v147;
  v205 = v148;
  v149 = swift_getWitnessTable();
  v202 = v146;
  v203 = v149;
  v150 = v184;
  v151 = swift_getWitnessTable();
  sub_2758C832C(v87, v150, v151);
  return (*(v183 + 8))(v87, v150);
}

uint64_t sub_275976178(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_2759BA028();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8);
  swift_getWitnessTable();
  return sub_2759B9918();
}

uint64_t sub_2759762D0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_2759B94E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  sub_2759BA448();
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0);
  sub_2759B8FE8();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759B95F8();
  sub_2759B8FE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_27597DC18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9E28();
}

uint64_t sub_275976600(uint64_t a1)
{
  sub_2759BA038();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27597DB08();
  swift_getWitnessTable();
  sub_2759B9F18();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  sub_2759B95F8();
  sub_27597DD00();
  swift_getWitnessTable();
  sub_2759B9F18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9918();
}

uint64_t sub_275976890(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_2759B94E8();
  sub_2759BA448();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0);
  sub_2759B8FE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
  sub_27597DC18();
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9E28();
}

uint64_t sub_275976B64(uint64_t a1)
{
  sub_2759BA038();
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_2759BA448();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27597DA50();
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9F18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9918();
}

uint64_t sub_275976DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a1;
  v83 = a5;
  v79 = a4;
  v7 = type metadata accessor for SixPackGrid();
  v74 = *(v7 - 8);
  v72 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v64 - v8;
  v9 = sub_2759BA448();
  v10 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  WitnessTable = swift_getWitnessTable();
  v94 = v9;
  v95 = a2;
  v77 = a2;
  v96 = v11;
  v97 = WitnessTable;
  v98 = a3;
  sub_2759B9EF8();
  sub_2759B95F8();
  v13 = sub_27597DD00();
  v93 = sub_27597DB08();
  v14 = swift_getWitnessTable();
  v91 = v13;
  v92 = v14;
  swift_getWitnessTable();
  v15 = sub_2759B9F18();
  v16 = swift_getWitnessTable();
  v78 = a3;
  v90 = a3;
  v17 = swift_getWitnessTable();
  v75 = v10;
  v94 = v10;
  v95 = v9;
  v82 = v15;
  v96 = v15;
  v97 = v16;
  v69 = v16;
  v68 = v17;
  v98 = v17;
  v18 = sub_2759B9EF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v71 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v70 = &v64 - v23;
  v67 = v14;
  v24 = sub_2759B9F18();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v64 - v30;
  v32 = sub_2759B95F8();
  v80 = *(v32 - 8);
  v81 = v32;
  v33 = *(v80 + 64);
  MEMORY[0x28223BE20](v32);
  v84 = &v64 - v34;
  v35 = v7;
  v36 = v76;
  v37 = sub_275974A48(v7);
  if (v37 == 3)
  {
    MEMORY[0x28223BE20](3);
    v39 = v78;
    v38 = v79;
    *(&v64 - 4) = v77;
    *(&v64 - 3) = v39;
    v62 = v38;
    v63 = v36;
    sub_2759B9F08();
    v40 = swift_getWitnessTable();
    sub_2758C832C(v29, v24, v40);
    v41 = *(v25 + 8);
    v41(v29, v24);
    sub_2758C832C(v31, v24, v40);
    v85 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_27596F000(v29, v24);
    v41(v29, v24);
    v41(v31, v24);
  }

  else
  {
    v42 = v36;
    v65 = *(v36 + *(v35 + 44));
    v94 = v65;
    MEMORY[0x28223BE20](v37);
    v43 = v77;
    v45 = v78;
    v44 = v79;
    *(&v64 - 4) = v77;
    *(&v64 - 3) = v45;
    v62 = v44;
    KeyPath = swift_getKeyPath();
    v46 = v74;
    v47 = *(v74 + 16);
    v67 = v19;
    v48 = v73;
    v47(v73, v42, v35);
    v49 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v50 = swift_allocObject();
    *(v50 + 2) = v43;
    *(v50 + 3) = v45;
    *(v50 + 4) = v44;
    (*(v46 + 32))(&v50[v49], v48, v35);

    v51 = swift_getWitnessTable();
    v62 = v51;
    v52 = v71;
    sub_2759B9ED8();
    v89 = v51;
    v53 = swift_getWitnessTable();
    v54 = v70;
    sub_2758C832C(v52, v18, v53);
    v55 = *(v67 + 8);
    v55(v52, v18);
    sub_2758C832C(v54, v18, v53);
    swift_getWitnessTable();
    sub_27596F0F8(v52, v24, v18);
    v55(v52, v18);
    v55(v54, v18);
  }

  v56 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v86 = v56;
  v87 = v57;
  v58 = v81;
  v59 = swift_getWitnessTable();
  v60 = v84;
  sub_2758C832C(v84, v58, v59);
  return (*(v80 + 8))(v60, v58);
}

uint64_t sub_27597764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_2759BA448();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  WitnessTable = swift_getWitnessTable();
  v36 = v9;
  v37 = a2;
  v38 = v26;
  v39 = WitnessTable;
  v40 = a3;
  v10 = sub_2759B9EF8();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v24 = &v23 - v15;
  v36 = *(a1 + *(type metadata accessor for SixPackGrid() + 44));
  v32 = a2;
  v33 = a3;
  v34 = a4;
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_2759BA3A8();

  v36 = v16;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v22 = sub_27597DB08();
  sub_2759B9ED8();
  v35 = v22;
  v18 = swift_getWitnessTable();
  v19 = v24;
  sub_2758C832C(v14, v10, v18);
  v20 = *(v27 + 8);
  v20(v14, v10);
  sub_2758C832C(v19, v10, v18);
  return (v20)(v19, v10);
}

uint64_t sub_275977958@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[0] = a5;
  v23[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  v23[13] = sub_2759BA448();
  v23[14] = a3;
  v23[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  v23[16] = swift_getWitnessTable();
  v23[17] = a4;
  sub_2759B9EF8();
  sub_2759B95F8();
  v10 = sub_27597DD00();
  v23[12] = sub_27597DB08();
  v23[10] = v10;
  v23[11] = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_2759B9F18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  v19 = *a1;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = v23[0];
  v23[7] = v19;
  v23[8] = a2;
  sub_2759B9F08();
  WitnessTable = swift_getWitnessTable();
  sub_2758C832C(v16, v11, WitnessTable);
  v21 = *(v12 + 8);
  v21(v16, v11);
  sub_2758C832C(v18, v11, WitnessTable);
  return (v21)(v18, v11);
}

uint64_t sub_275977BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v94 = a5;
  v90 = a2;
  v98 = a6;
  v9 = sub_2759BA448();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  v85 = v9;
  v105 = v9;
  v106 = a3;
  v107 = v10;
  WitnessTable = swift_getWitnessTable();
  v82 = WitnessTable;
  v91 = a4;
  v109 = a4;
  v11 = sub_2759B9EF8();
  v88 = *(v11 - 8);
  v12 = *(v88 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v77 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FA8, &qword_2759CE2F0);
  v16 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v89 = &v77 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FE0, &qword_2759CE3F8);
  v18 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F90, &qword_2759CE2E8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v77 - v24;
  v95 = v10;
  v26 = *(*(v10 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v84 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v83 = &v77 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v77 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = (&v77 - v34);
  v36 = sub_2759B95F8();
  v96 = *(v36 - 8);
  v97 = v36;
  v37 = *(v96 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v77 - v38;
  v40 = sub_2759BA428();
  if (v40 == 1)
  {
    sub_2759BA458();
    v41 = v105;
    KeyPath = swift_getKeyPath();
    v43 = type metadata accessor for SixPackCard(0);
    *(v35 + v43[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(v35 + v43[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
    swift_storeEnumTagMultiPayload();
    *(v35 + v43[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v44 = v94;
    v45 = v95;
    *v35 = v41;
    v35[1] = v44;
    v46 = v35 + *(v45 + 36);
    *v46 = 6;
    v46[8] = 0;
    sub_27586FBC8(v35, v20, &qword_280A11F30, &qword_2759CE2C0);
    swift_storeEnumTagMultiPayload();
    v47 = sub_27597DB08();
    sub_27589B02C(&qword_280A11FA0, &qword_280A11FA8, &qword_2759CE2F0);
    sub_2759B95E8();
    sub_27597DD00();
    v99 = v47;
    swift_getWitnessTable();
    sub_27596F000(v25, v21);
    sub_27586BF04(v25, &qword_280A11F90, &qword_2759CE2E8);
    sub_27586BF04(v35, &qword_280A11F30, &qword_2759CE2C0);
  }

  else
  {
    v48 = v40;
    v77 = v20;
    v78 = v25;
    v80 = v21;
    v79 = v39;
    v81 = v11;
    v49 = v91;
    v50 = v94;
    v51 = type metadata accessor for SixPackGrid();
    if (v48 == 2 && *(v90 + *(v51 + 48)) == 3)
    {
      sub_2759BA458();
      v91 = v105;
      v52 = swift_getKeyPath();
      v53 = type metadata accessor for SixPackCard(0);
      *(v35 + v53[5]) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
      swift_storeEnumTagMultiPayload();
      *(v35 + v53[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
      swift_storeEnumTagMultiPayload();
      *(v35 + v53[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      *v35 = v91;
      v35[1] = v50;
      v54 = v95;
      v55 = v35 + *(v95 + 36);
      *v55 = 3;
      v55[8] = 0;
      sub_2759BA458();
      v56 = v105;
      *(v33 + v53[5]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v33 + v53[6]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v33 + v53[7]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v33 = v56;
      v33[1] = v50;
      v57 = v33 + *(v54 + 36);
      *v57 = 3;
      v57[8] = 0;
      v58 = v83;
      sub_27586FBC8(v35, v83, &qword_280A11F30, &qword_2759CE2C0);
      v59 = v84;
      sub_27586FBC8(v33, v84, &qword_280A11F30, &qword_2759CE2C0);
      v60 = v89;
      sub_27586FBC8(v58, v89, &qword_280A11F30, &qword_2759CE2C0);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FE8, &qword_2759CE400);
      sub_27586FBC8(v59, v60 + *(v61 + 48), &qword_280A11F30, &qword_2759CE2C0);
      sub_27586BF04(v59, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586BF04(v58, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586FBC8(v60, v77, &qword_280A11FA8, &qword_2759CE2F0);
      swift_storeEnumTagMultiPayload();
      v62 = sub_27597DB08();
      sub_27589B02C(&qword_280A11FA0, &qword_280A11FA8, &qword_2759CE2F0);
      v63 = v78;
      sub_2759B95E8();
      sub_27597DD00();
      v100 = v62;
      swift_getWitnessTable();
      v39 = v79;
      sub_27596F000(v63, v80);
      sub_27586BF04(v63, &qword_280A11F90, &qword_2759CE2E8);
      sub_27586BF04(v60, &qword_280A11FA8, &qword_2759CE2F0);
      sub_27586BF04(v33, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586BF04(v35, &qword_280A11F30, &qword_2759CE2C0);
    }

    else
    {
      v105 = a1;
      MEMORY[0x28223BE20](v51);
      *(&v77 - 4) = a3;
      *(&v77 - 3) = v49;
      swift_getKeyPath();
      v64 = swift_allocObject();
      v64[2] = a3;
      v64[3] = v49;
      v64[4] = v50;
      v65 = sub_27597DB08();

      v76 = v65;
      v66 = v87;
      sub_2759B9ED8();
      v104 = v65;
      v67 = v81;
      v68 = swift_getWitnessTable();
      v69 = v86;
      sub_2758C832C(v66, v67, v68);
      v70 = *(v88 + 8);
      v70(v66, v67);
      sub_2758C832C(v69, v67, v68);
      sub_27597DD00();
      v39 = v79;
      sub_27596F0F8(v66, v80, v67);
      v70(v66, v67);
      v70(v69, v67);
    }
  }

  v71 = sub_27597DD00();
  v103 = sub_27597DB08();
  v72 = swift_getWitnessTable();
  v101 = v71;
  v102 = v72;
  v73 = v97;
  v74 = swift_getWitnessTable();
  sub_2758C832C(v39, v73, v74);
  return (*(v96 + 8))(v39, v73);
}

uint64_t sub_275978798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SixPackCard(0);
  *(a3 + v7[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  *a3 = v5;
  a3[1] = a2;
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F30, &qword_2759CE2C0) + 36);
  *v8 = 2;
  v8[8] = 0;

  return swift_unknownObjectRetain();
}

uint64_t sub_2759788C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v48 = a5;
  v8 = type metadata accessor for SixPackGrid();
  v46 = *(v8 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = v37 - v9;
  v10 = sub_2759BA448();
  v11 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  v12 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v57 = v10;
  v58 = a2;
  v59 = v12;
  v60 = WitnessTable;
  v61 = a3;
  sub_2759B9EF8();
  sub_2759B95F8();
  v14 = sub_27597DA50();
  v56 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  v44 = MEMORY[0x277CE1290];
  v15 = swift_getWitnessTable();
  v54 = v14;
  v55 = v15;
  swift_getWitnessTable();
  v16 = sub_2759B9F18();
  v37[2] = v16;
  v41 = v11;
  v17 = swift_getWitnessTable();
  v40 = v17;
  v37[0] = a3;
  v53 = a3;
  v39 = swift_getWitnessTable();
  v57 = v11;
  v58 = v10;
  v59 = v16;
  v60 = v17;
  v61 = v39;
  v18 = sub_2759B9EF8();
  v42 = *(v18 - 8);
  v19 = *(v42 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v38 = v37 - v23;
  v24 = v8;
  v57 = *(a1 + *(v8 + 44));
  v49 = a2;
  v50 = a3;
  v25 = v43;
  v51 = v43;
  v37[1] = swift_getKeyPath();
  v26 = v45;
  v27 = v46;
  v28 = v24;
  (*(v46 + 16))(v45, a1, v24);
  v29 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v31 = v37[0];
  *(v30 + 2) = a2;
  *(v30 + 3) = v31;
  *(v30 + 4) = v25;
  (*(v27 + 32))(&v30[v29], v26, v28);

  v36 = swift_getWitnessTable();
  sub_2759B9ED8();
  v52 = v36;
  v32 = swift_getWitnessTable();
  v33 = v38;
  sub_2758C832C(v22, v18, v32);
  v34 = *(v42 + 8);
  v34(v22, v18);
  sub_2758C832C(v33, v18, v32);
  return (v34)(v33, v18);
}

uint64_t sub_275978D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[0] = a5;
  v23[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  v23[13] = sub_2759BA448();
  v23[14] = a3;
  v23[15] = type metadata accessor for SixPackCard(255);
  v23[16] = swift_getWitnessTable();
  v23[17] = a4;
  sub_2759B9EF8();
  sub_2759B95F8();
  v10 = sub_27597DA50();
  v23[12] = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  v23[10] = v10;
  v23[11] = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_2759B9F18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  v19 = *a1;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = v23[0];
  v23[7] = v19;
  v23[8] = a2;
  sub_2759B9F08();
  WitnessTable = swift_getWitnessTable();
  sub_2758C832C(v16, v11, WitnessTable);
  v21 = *(v12 + 8);
  v21(v16, v11);
  sub_2758C832C(v18, v11, WitnessTable);
  return (v21)(v18, v11);
}

uint64_t sub_275979038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a5;
  v85 = a2;
  v93 = a6;
  v9 = sub_2759BA448();
  v10 = type metadata accessor for SixPackCard(255);
  v78 = v9;
  v100 = v9;
  v101 = a3;
  v102 = v10;
  WitnessTable = swift_getWitnessTable();
  v77 = WitnessTable;
  v86 = a4;
  v104 = a4;
  v11 = sub_2759B9EF8();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v72 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F50, &qword_2759CE2C8);
  v16 = *(*(v88 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v88);
  v84 = &v72 - v18;
  v19 = *(*(v10 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v81 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v72 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FF0, &qword_2759CE408);
  v23 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F18, &qword_2759CE2B8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v72 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F30, &qword_2759CE2C0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v76 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = (&v72 - v34);
  v92 = v11;
  v36 = a1;
  v37 = sub_2759B95F8();
  v90 = *(v37 - 8);
  v91 = v37;
  v38 = *(v90 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v72 - v39;
  v41 = sub_2759BA428();
  if (v41 == 1)
  {
    sub_2759BA458();
    v42 = v100;
    *(v35 + v10[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(v35 + v10[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
    swift_storeEnumTagMultiPayload();
    *(v35 + v10[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v43 = v89;
    *v35 = v42;
    v35[1] = v43;
    v44 = v35 + *(v30 + 36);
    *v44 = 2;
    v44[8] = 0;
    sub_27586FBC8(v35, v25, &qword_280A11F30, &qword_2759CE2C0);
    swift_storeEnumTagMultiPayload();
    sub_27597DB08();
    sub_27589B02C(&qword_280A11F48, &qword_280A11F50, &qword_2759CE2C8);
    sub_2759B95E8();
    sub_27597DA50();
    v94 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
    swift_getWitnessTable();
    sub_27596F000(v29, v26);
    sub_27586BF04(v29, &qword_280A11F18, &qword_2759CE2B8);
    sub_27586BF04(v35, &qword_280A11F30, &qword_2759CE2C0);
  }

  else
  {
    v45 = v41;
    v72 = v25;
    v73 = v29;
    v74 = v26;
    v75 = v40;
    v46 = v86;
    v47 = v89;
    v48 = type metadata accessor for SixPackGrid();
    if (v45 == 2 && *(v85 + *(v48 + 48)) == 3)
    {
      sub_2759BA458();
      v86 = v100;
      *(v35 + v10[5]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
      swift_storeEnumTagMultiPayload();
      *(v35 + v10[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
      swift_storeEnumTagMultiPayload();
      *(v35 + v10[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      *v35 = v86;
      v35[1] = v47;
      v49 = v35 + *(v30 + 36);
      *v49 = 2;
      v49[8] = 0;
      sub_2759BA458();
      v50 = v100;
      KeyPath = swift_getKeyPath();
      v52 = v83;
      *&v83[v10[5]] = KeyPath;
      swift_storeEnumTagMultiPayload();
      *(v52 + v10[6]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v52 + v10[7]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v52 = v50;
      v52[1] = v47;
      v53 = v76;
      sub_27586FBC8(v35, v76, &qword_280A11F30, &qword_2759CE2C0);
      v54 = v81;
      sub_27597FCCC(v52, v81, type metadata accessor for SixPackCard);
      v55 = v84;
      sub_27586FBC8(v53, v84, &qword_280A11F30, &qword_2759CE2C0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FF8, &unk_2759CE410);
      sub_27597FCCC(v54, v55 + *(v56 + 48), type metadata accessor for SixPackCard);
      sub_27597E920(v54, type metadata accessor for SixPackCard);
      sub_27586BF04(v53, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586FBC8(v55, v72, &qword_280A11F50, &qword_2759CE2C8);
      swift_storeEnumTagMultiPayload();
      sub_27597DB08();
      sub_27589B02C(&qword_280A11F48, &qword_280A11F50, &qword_2759CE2C8);
      v57 = v73;
      sub_2759B95E8();
      sub_27597DA50();
      v95 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
      swift_getWitnessTable();
      v58 = v75;
      sub_27596F000(v57, v74);
      sub_27586BF04(v57, &qword_280A11F18, &qword_2759CE2B8);
      sub_27586BF04(v55, &qword_280A11F50, &qword_2759CE2C8);
      sub_27597E920(v52, type metadata accessor for SixPackCard);
      v40 = v58;
      sub_27586BF04(v35, &qword_280A11F30, &qword_2759CE2C0);
    }

    else
    {
      v100 = v36;
      MEMORY[0x28223BE20](v48);
      *(&v72 - 4) = a3;
      *(&v72 - 3) = v46;
      swift_getKeyPath();
      v59 = swift_allocObject();
      v59[2] = a3;
      v59[3] = v46;
      v59[4] = v47;
      v60 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);

      v71 = v60;
      v61 = v80;
      sub_2759B9ED8();
      v99 = v60;
      v62 = v92;
      v63 = swift_getWitnessTable();
      v64 = v79;
      sub_2758C832C(v61, v62, v63);
      v65 = *(v82 + 8);
      v65(v61, v62);
      sub_2758C832C(v64, v62, v63);
      sub_27597DA50();
      v40 = v75;
      sub_27596F0F8(v61, v74, v62);
      v65(v61, v62);
      v65(v64, v62);
    }
  }

  v66 = sub_27597DA50();
  v98 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  v67 = swift_getWitnessTable();
  v96 = v66;
  v97 = v67;
  v68 = v91;
  v69 = swift_getWitnessTable();
  sub_2758C832C(v40, v68, v69);
  return (*(v90 + 8))(v40, v68);
}

uint64_t sub_275979CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a1;
  v104 = a5;
  v98 = a4;
  v97 = type metadata accessor for SixPackGrid();
  v94 = *(v97 - 8);
  v91 = *(v94 + 64);
  MEMORY[0x28223BE20](v97);
  v92 = &v84 - v7;
  v8 = sub_2759BA448();
  v9 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  v10 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v136 = v8;
  v137 = a2;
  v99 = a2;
  v138 = v10;
  v139 = WitnessTable;
  v140 = a3;
  v12 = sub_2759B9EF8();
  v13 = sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0);
  v108 = v13;
  v14 = sub_2759B8FE8();
  v15 = swift_getWitnessTable();
  v100 = a3;
  v135 = a3;
  v16 = swift_getWitnessTable();
  v95 = v9;
  v136 = v9;
  v137 = v8;
  v107 = v14;
  v138 = v14;
  v139 = v15;
  v93 = v15;
  v90 = v16;
  v140 = v16;
  v17 = sub_2759B9EF8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v84 - v23;
  v106 = v12;
  v25 = v96;
  v26 = sub_2759B8FE8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v84 - v32;
  v103 = v17;
  v34 = sub_2759B95F8();
  v101 = *(v34 - 8);
  v102 = v34;
  v35 = *(v101 + 64);
  MEMORY[0x28223BE20](v34);
  v105 = &v84 - v36;
  v37 = v97;
  v38 = sub_275974A48(v97);
  if (v38 == 3)
  {
    v39 = sub_2759BA028();
    v97 = v27;
    v95 = v33;
    v40 = v39;
    v42 = v41;
    v43 = swift_allocObject();
    v44 = v100;
    *(v43 + 16) = v99;
    *(v43 + 24) = v44;
    *(v43 + 32) = v98;
    *(v43 + 40) = v40;
    *(v43 + 48) = v42;
    *(v43 + 56) = 0x4028000000000000;
    *(v43 + 64) = 0;
    MEMORY[0x28223BE20](v43);
    *(&v84 - 4) = v45;
    *(&v84 - 3) = v46;
    v83 = v25;
    v82 = v47;
    sub_27597A76C(sub_27597DE68, (&v84 - 6), v31);

    v48 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
    v116 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
    v100 = MEMORY[0x277CE1290];
    v49 = swift_getWitnessTable();
    v114 = v48;
    v115 = v49;
    v50 = swift_getWitnessTable();
    v51 = v95;
    sub_2758C832C(v31, v26, v50);
    v52 = *(v97 + 8);
    v52(v31, v26);
    sub_2758C832C(v51, v26, v50);
    v112 = sub_27597DC18();
    v113 = v49;
    v53 = swift_getWitnessTable();
    v110 = v48;
    v111 = v53;
    v109 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_27596F000(v31, v26);
    v52(v31, v26);
    v52(v51, v26);
  }

  else
  {
    v89 = v24;
    v54 = v37;
    v85 = *(v25 + *(v37 + 44));
    v136 = v85;
    MEMORY[0x28223BE20](v38);
    v56 = v99;
    v55 = v100;
    *(&v84 - 4) = v99;
    *(&v84 - 3) = v55;
    v88 = v18;
    v57 = v98;
    v82 = v98;
    KeyPath = swift_getKeyPath();
    v86 = v22;
    v87 = KeyPath;
    v59 = v94;
    v60 = v26;
    v61 = v92;
    (*(v94 + 16))(v92, v25, v54);
    v62 = (*(v59 + 80) + 40) & ~*(v59 + 80);
    v63 = swift_allocObject();
    *(v63 + 2) = v56;
    *(v63 + 3) = v55;
    *(v63 + 4) = v57;
    (*(v59 + 32))(&v63[v62], v61, v54);
    v64 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
    v99 = v64;
    v65 = sub_27597DC18();
    v134 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);

    v100 = swift_getWitnessTable();
    v132 = v65;
    v133 = v100;
    v66 = swift_getWitnessTable();
    v130 = v64;
    v131 = v66;
    v67 = swift_getWitnessTable();
    v82 = v67;
    v68 = v86;
    sub_2759B9ED8();
    v129 = v67;
    v69 = v103;
    v70 = swift_getWitnessTable();
    v71 = v89;
    sub_2758C832C(v68, v69, v70);
    v72 = *(v88 + 8);
    v72(v68, v69);
    sub_2758C832C(v71, v69, v70);
    v127 = v99;
    v128 = v100;
    swift_getWitnessTable();
    sub_27596F0F8(v68, v60, v69);
    v72(v68, v69);
    v72(v71, v69);
  }

  v73 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
  v126 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  v74 = swift_getWitnessTable();
  v124 = v73;
  v125 = v74;
  v75 = swift_getWitnessTable();
  v122 = sub_27597DC18();
  v123 = v74;
  v76 = swift_getWitnessTable();
  v120 = v73;
  v121 = v76;
  v119 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v117 = v75;
  v118 = v77;
  v78 = v102;
  v79 = swift_getWitnessTable();
  v80 = v105;
  sub_2758C832C(v105, v78, v79);
  return (*(v101 + 8))(v80, v78);
}

uint64_t sub_27597A76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2759BA448();
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  v6 = sub_2759B9EF8();
  v7 = sub_27586D8BC();
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  WitnessTable = swift_getWitnessTable();
  return sub_27596F1F0(a1, a2, &type metadata for EqualSizeHStackLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_27597A8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_2759BA448();
  v26 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v36 = v9;
  v37 = a2;
  v38 = v26;
  v39 = WitnessTable;
  v40 = a3;
  v10 = sub_2759B9EF8();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v24 = &v23 - v15;
  v36 = *(a1 + *(type metadata accessor for SixPackGrid() + 44));
  v32 = a2;
  v33 = a3;
  v34 = a4;
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_2759BA3A8();

  v36 = v16;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v22 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  sub_2759B9ED8();
  v35 = v22;
  v18 = swift_getWitnessTable();
  v19 = v24;
  sub_2758C832C(v14, v10, v18);
  v20 = *(v27 + 8);
  v20(v14, v10);
  sub_2758C832C(v19, v10, v18);
  return (v20)(v19, v10);
}

uint64_t sub_27597ABD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SixPackCard(0);
  *(a3 + v7[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  *a3 = v5;
  a3[1] = a2;

  return swift_unknownObjectRetain();
}

uint64_t sub_27597ACE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v47 = a1;
  v53 = a5;
  v42 = type metadata accessor for SixPackGrid();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v44 = v39 - v9;
  v10 = sub_2759BA448();
  v11 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  v12 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v64 = v10;
  v65 = a2;
  v66 = v12;
  v67 = WitnessTable;
  v68 = a3;
  v48 = sub_2759B9EF8();
  v46 = sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0);
  v14 = sub_2759B8FE8();
  v41 = v14;
  v51 = v11;
  v15 = swift_getWitnessTable();
  v50 = v15;
  v63 = a3;
  v49 = swift_getWitnessTable();
  v64 = v11;
  v65 = v10;
  v66 = v14;
  v67 = v15;
  v68 = v49;
  v16 = sub_2759B9EF8();
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v40 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v43 = v39 - v20;
  v21 = v42;
  v22 = v47;
  v64 = *(v47 + *(v42 + 44));
  v54 = a2;
  v55 = a3;
  v23 = v45;
  v56 = v45;
  v39[1] = swift_getKeyPath();
  v24 = v44;
  v25 = v22;
  v26 = v21;
  (*(v7 + 16))(v44, v25, v21);
  v27 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = a2;
  *(v28 + 3) = a3;
  *(v28 + 4) = v23;
  (*(v7 + 32))(&v28[v27], v24, v26);
  v29 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
  v30 = sub_27597DC18();
  v62 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);

  v31 = swift_getWitnessTable();
  v60 = v30;
  v61 = v31;
  v32 = swift_getWitnessTable();
  v58 = v29;
  v59 = v32;
  v38 = swift_getWitnessTable();
  v33 = v40;
  sub_2759B9ED8();
  v57 = v38;
  v34 = swift_getWitnessTable();
  v35 = v43;
  sub_2758C832C(v33, v16, v34);
  v36 = *(v52 + 8);
  v36(v33, v16);
  sub_2758C832C(v35, v16, v34);
  return (v36)(v35, v16);
}

uint64_t sub_27597B230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v31[1] = a6;
  v32 = a2;
  v37 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  v49 = sub_2759BA448();
  v50 = a3;
  v51 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v53 = a4;
  v34 = sub_2759B9EF8();
  v33 = sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0);
  v12 = sub_2759B8FE8();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v31 - v17;
  v19 = *a1;
  v20 = sub_2759BA028();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = v20;
  *(v23 + 48) = v22;
  *(v23 + 56) = 0x4028000000000000;
  *(v23 + 64) = 0;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = v19;
  v43 = v32;
  sub_27597B5D4(v35, v38, v16);

  v24 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
  v25 = sub_27597DC18();
  v48 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  v26 = swift_getWitnessTable();
  v46 = v25;
  v47 = v26;
  v27 = swift_getWitnessTable();
  v44 = v24;
  v45 = v27;
  v28 = swift_getWitnessTable();
  sub_2758C832C(v16, v12, v28);
  v29 = *(v36 + 8);
  v29(v16, v12);
  sub_2758C832C(v18, v12, v28);
  return (v29)(v18, v12);
}

uint64_t sub_27597B5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759BA448();
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  v6 = sub_2759B95F8();
  v7 = sub_27586D8BC();
  sub_27597DC18();
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_27596F1F0(a1, a2, &type metadata for EqualSizeHStackLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_27597B768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v83 = a7;
  v78 = a6;
  v90 = a5;
  v87 = a2;
  v94 = a8;
  v11 = sub_2759BA448();
  v12 = type metadata accessor for SixPackCard(255);
  v80 = v11;
  v101 = v11;
  v102 = a3;
  v103 = v12;
  WitnessTable = swift_getWitnessTable();
  v79 = WitnessTable;
  v88 = a4;
  v105 = a4;
  v13 = sub_2759B9EF8();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v82 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = v72 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F88, &qword_2759CE2E0);
  v18 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v86 = v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FD0, &qword_2759CE3E8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F60, &qword_2759CE2D8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v72 - v27;
  v29 = *(*(v12 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v77 = v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v76 = v72 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v85 = v72 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = (v72 - v36);
  v91 = v13;
  v38 = sub_2759B95F8();
  v92 = *(v38 - 8);
  v93 = v38;
  v39 = *(v92 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v72 - v40;
  v42 = sub_2759BA428();
  if (v42 == 1)
  {
    sub_2759BA458();
    v43 = v101;
    *(v37 + v12[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(v37 + v12[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
    swift_storeEnumTagMultiPayload();
    *(v37 + v12[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v44 = v90;
    *v37 = v43;
    v37[1] = v44;
    sub_27597FCCC(v37, v23, type metadata accessor for SixPackCard);
    swift_storeEnumTagMultiPayload();
    v45 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
    sub_27589B02C(&qword_280A11F80, &qword_280A11F88, &qword_2759CE2E0);
    sub_2759B95E8();
    sub_27597DC18();
    v95 = v45;
    swift_getWitnessTable();
    sub_27596F000(v28, v24);
    sub_27586BF04(v28, &qword_280A11F60, &qword_2759CE2D8);
    sub_27597E920(v37, type metadata accessor for SixPackCard);
  }

  else
  {
    v46 = v42;
    v72[1] = v20;
    v73 = v28;
    v74 = v24;
    v75 = v41;
    v47 = v88;
    v48 = v90;
    v49 = type metadata accessor for SixPackGrid();
    if (v46 == 2 && *(v87 + *(v49 + 48)) == 3)
    {
      sub_2759BA458();
      v88 = v101;
      *(v37 + v12[5]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
      swift_storeEnumTagMultiPayload();
      *(v37 + v12[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
      swift_storeEnumTagMultiPayload();
      *(v37 + v12[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      *v37 = v88;
      v37[1] = v48;
      sub_2759BA458();
      v50 = v101;
      KeyPath = swift_getKeyPath();
      v52 = v85;
      *&v85[v12[5]] = KeyPath;
      swift_storeEnumTagMultiPayload();
      *(v52 + v12[6]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v52 + v12[7]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v52 = v50;
      v52[1] = v48;
      v53 = v76;
      sub_27597FCCC(v37, v76, type metadata accessor for SixPackCard);
      v54 = v77;
      sub_27597FCCC(v52, v77, type metadata accessor for SixPackCard);
      v55 = v86;
      sub_27597FCCC(v53, v86, type metadata accessor for SixPackCard);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FD8, &qword_2759CE3F0);
      sub_27597FCCC(v54, v55 + *(v56 + 48), type metadata accessor for SixPackCard);
      sub_27597E920(v54, type metadata accessor for SixPackCard);
      sub_27597E920(v53, type metadata accessor for SixPackCard);
      sub_27586FBC8(v55, v23, &qword_280A11F88, &qword_2759CE2E0);
      swift_storeEnumTagMultiPayload();
      v57 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
      sub_27589B02C(&qword_280A11F80, &qword_280A11F88, &qword_2759CE2E0);
      v58 = v73;
      sub_2759B95E8();
      sub_27597DC18();
      v96 = v57;
      swift_getWitnessTable();
      v41 = v75;
      sub_27596F000(v58, v74);
      sub_27586BF04(v58, &qword_280A11F60, &qword_2759CE2D8);
      sub_27586BF04(v55, &qword_280A11F88, &qword_2759CE2E0);
      sub_27597E920(v52, type metadata accessor for SixPackCard);
      sub_27597E920(v37, type metadata accessor for SixPackCard);
    }

    else
    {
      v101 = a1;
      MEMORY[0x28223BE20](v49);
      v72[-4] = a3;
      v72[-3] = v47;
      swift_getKeyPath();
      v59 = swift_allocObject();
      v59[2] = a3;
      v59[3] = v47;
      v59[4] = v48;
      v60 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);

      v71 = v60;
      v61 = v82;
      sub_2759B9ED8();
      v100 = v60;
      v62 = v91;
      v63 = swift_getWitnessTable();
      v64 = v81;
      sub_2758C832C(v61, v62, v63);
      v65 = *(v84 + 8);
      v65(v61, v62);
      sub_2758C832C(v64, v62, v63);
      sub_27597DC18();
      v41 = v75;
      sub_27596F0F8(v61, v74, v62);
      v65(v61, v62);
      v65(v64, v62);
    }
  }

  v66 = sub_27597DC18();
  v99 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  v67 = swift_getWitnessTable();
  v97 = v66;
  v98 = v67;
  v68 = v93;
  v69 = swift_getWitnessTable();
  sub_2758C832C(v41, v68, v69);
  return (*(v92 + 8))(v41, v68);
}

uint64_t sub_27597C364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_2759BA448();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  WitnessTable = swift_getWitnessTable();
  v36 = v9;
  v37 = a2;
  v38 = v26;
  v39 = WitnessTable;
  v40 = a3;
  v10 = sub_2759B9EF8();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v24 = &v23 - v15;
  v36 = *(a1 + *(type metadata accessor for SixPackGrid() + 44));
  v32 = a2;
  v33 = a3;
  v34 = a4;
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_2759BA3A8();

  v36 = v16;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v22 = sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8);
  sub_2759B9ED8();
  v35 = v22;
  v18 = swift_getWitnessTable();
  v19 = v24;
  sub_2758C832C(v14, v10, v18);
  v20 = *(v27 + 8);
  v20(v14, v10);
  sub_2758C832C(v19, v10, v18);
  return (v20)(v19, v10);
}

uint64_t sub_27597C69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SixPackCard(0);
  *(a3 + v7[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;

  return swift_unknownObjectRetain();
}

uint64_t sub_27597C7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v58 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12378, &qword_2759CE898);
  v3 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v5 = &v56 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12380, &qword_2759CE8A0);
  v6 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12388, &qword_2759CE8A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12390, &qword_2759CE8B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = *(v2 + 32);
  v18 = *v2;
  v19 = v2[1];
  sub_2759BA028();
  if (v17)
  {
    sub_2759B8F18();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12398, &qword_2759CE8B8);
    (*(*(v20 - 8) + 16))(v12, v56, v20);
    v21 = &v12[*(v9 + 36)];
    v22 = v61;
    *v21 = v60;
    *(v21 + 1) = v22;
    *(v21 + 2) = v62;
    v24 = v2[2];
    v23 = v2[3];
    sub_27597FD34();
    sub_2759B9B38();
    sub_27586BF04(v12, &qword_280A12388, &qword_2759CE8A8);
    if (qword_280A0E328 != -1)
    {
      swift_once();
    }

    v25 = qword_280A23890;
    v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A123D0, &qword_2759CE8C8) + 36)];
    *v26 = v25;
    v26[1] = sub_2759803B0;
    v26[2] = 0;
    LOBYTE(v25) = sub_2759B97E8();
    sub_2759B8D78();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A123C0, &qword_2759CE8C0) + 36)];
    *v35 = v25;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    LOBYTE(v25) = sub_2759B97F8();
    sub_2759B8D78();
    v36 = &v16[*(v13 + 36)];
    *v36 = v25;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    v41 = &qword_280A12390;
    v42 = &qword_2759CE8B0;
    sub_27586FBC8(v16, v8, &qword_280A12390, &qword_2759CE8B0);
    swift_storeEnumTagMultiPayload();
    sub_27597FDEC();
    sub_27598004C();
    sub_2759B95E8();
    v43 = v16;
  }

  else
  {
    sub_2759B8F18();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12398, &qword_2759CE8B8);
    (*(*(v44 - 8) + 16))(v12, v56, v44);
    v45 = &v12[*(v9 + 36)];
    v46 = v61;
    *v45 = v60;
    *(v45 + 1) = v46;
    *(v45 + 2) = v62;
    v48 = v2[2];
    v47 = v2[3];
    sub_27597FD34();
    sub_2759B9B38();
    sub_27586BF04(v12, &qword_280A12388, &qword_2759CE8A8);
    v49 = sub_2759B97E8();
    sub_2759B8D78();
    v50 = &v5[*(v59 + 36)];
    *v50 = v49;
    *(v50 + 1) = v51;
    *(v50 + 2) = v52;
    *(v50 + 3) = v53;
    *(v50 + 4) = v54;
    v50[40] = 0;
    v41 = &qword_280A12378;
    v42 = &qword_2759CE898;
    sub_27586FBC8(v5, v8, &qword_280A12378, &qword_2759CE898);
    swift_storeEnumTagMultiPayload();
    sub_27597FDEC();
    sub_27598004C();
    sub_2759B95E8();
    v43 = v5;
  }

  return sub_27586BF04(v43, v41, v42);
}

uint64_t sub_27597CCB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_27586FBC8(v2, &v17 - v11, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_27597CEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v69 = sub_2759B8DA8();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v69);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  v10 = sub_2759B9108();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12320, &qword_2759CE810);
  v15 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12328, &qword_2759CE818);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12330, &qword_2759CE820);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v68 - v25;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12338, &qword_2759CE828);
  v27 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = &v68 - v28;
  v74 = a1;
  sub_2759B96D8();
  v29 = *(v23 + 44);
  v30 = v69;
  v72 = v26;
  v31 = &v26[v29];
  v32 = &v26[v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12340, &qword_2759CE830) + 28)];
  sub_2759B9138();
  *v31 = swift_getKeyPath();
  v33 = *(v11 + 28);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_2759B94B8();
  (*(*(v35 - 8) + 104))(&v14[v33], v34, v35);
  __asm { FMOV            V0.2D, #10.0 }

  *v14 = _Q0;
  sub_27597CCB8(v9);
  (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v30);
  sub_2759B8D98();
  v41 = *(v3 + 8);
  v41(v7, v30);
  if (qword_280A0E3E0 != -1)
  {
    swift_once();
  }

  v42 = qword_280A239E0;

  v41(v9, v30);
  v43 = MEMORY[0x277CDFC08];
  sub_27597FC64(v14, v17, MEMORY[0x277CDFC08]);
  v44 = v70;
  *&v17[*(v70 + 52)] = v42;
  *&v17[*(v44 + 56)] = 256;
  sub_2759B9C18();
  v45 = sub_2759B9C58();

  sub_2759B8DD8();
  sub_27597FCCC(v17, v21, v43);
  v46 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12348, &qword_2759CE868) + 36)];
  v47 = v77;
  *v46 = v76;
  *(v46 + 1) = v47;
  *(v46 + 4) = v78;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12350, &qword_2759CE870);
  *&v21[*(v48 + 52)] = v45;
  *&v21[*(v48 + 56)] = 256;
  v49 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12358, &qword_2759CE878) + 36)];
  sub_27586FBC8(v17, v49, &qword_280A12320, &qword_2759CE810);
  v50 = sub_2759BA028();
  v52 = v51;
  sub_27586BF04(v17, &qword_280A12320, &qword_2759CE810);
  v53 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12360, &qword_2759CE880) + 36));
  *v53 = v50;
  v53[1] = v52;
  v54 = sub_2759BA028();
  v56 = v55;
  v57 = v73;
  v58 = &v73[*(v71 + 36)];
  sub_27589F26C(v21, v58, &qword_280A12328, &qword_2759CE818);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12368, &qword_2759CE888) + 36));
  *v59 = v54;
  v59[1] = v56;
  sub_27589F26C(v72, v57, &qword_280A12330, &qword_2759CE820);
  if (sub_2759B96E8())
  {
    v60 = 0.95;
  }

  else
  {
    v60 = 1.0;
  }

  sub_2759BA118();
  v62 = v61;
  v64 = v63;
  v65 = v75;
  sub_27589F26C(v57, v75, &qword_280A12338, &qword_2759CE828);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12370, &qword_2759CE890);
  v67 = v65 + *(result + 36);
  *v67 = v60;
  *(v67 + 8) = v60;
  *(v67 + 16) = v62;
  *(v67 + 24) = v64;
  return result;
}

uint64_t sub_27597D4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC8, &qword_2759CE3C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27586FBC8(a1, &v6 - v4, &qword_280A11FC8, &qword_2759CE3C8);
  return sub_2759B9298();
}

uint64_t sub_27597D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - v14;
  v13();
  sub_2758C832C(v12, a4, a6);
  v16 = *(v8 + 8);
  v16(v12, a4);
  sub_2758C832C(v15, a4, a6);
  return (v16)(v15, a4);
}

uint64_t sub_27597D6B0(uint64_t a1)
{
  v2 = sub_2759B9148();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B9218();
}

id sub_27597D778(double a1, double a2)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, v6}];
  v8 = objc_opt_self();
  v9 = [v8 currentTraitCollection];
  v10 = [v9 layoutDirection];

  if (v10 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v7 setLanguageDirection_];
  v12 = [v8 currentTraitCollection];
  v13 = [v12 accessibilityContrast];

  [v7 setContrast_];
  [v7 setDrawBorder_];
  [v7 setShape_];
  return v7;
}

void sub_27597D8EC(uint64_t a1)
{
  sub_27597E424(319, &qword_280A0F5F0, MEMORY[0x277CE02A8]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_2759BA448();
    sub_2759BA448();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_27597D9E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27597DA50()
{
  result = qword_280A11F20;
  if (!qword_280A11F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
    sub_27597DB08();
    sub_27589B02C(&qword_280A11F48, &qword_280A11F50, &qword_2759CE2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F20);
  }

  return result;
}

unint64_t sub_27597DB08()
{
  result = qword_280A11F28;
  if (!qword_280A11F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
    sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
    sub_27597DBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F28);
  }

  return result;
}

unint64_t sub_27597DBC4()
{
  result = qword_280A11F40;
  if (!qword_280A11F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F40);
  }

  return result;
}

unint64_t sub_27597DC18()
{
  result = qword_280A11F78;
  if (!qword_280A11F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
    sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
    sub_27589B02C(&qword_280A11F80, &qword_280A11F88, &qword_2759CE2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F78);
  }

  return result;
}

unint64_t sub_27597DD00()
{
  result = qword_280A11F98;
  if (!qword_280A11F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
    sub_27597DB08();
    sub_27589B02C(&qword_280A11FA0, &qword_280A11FA8, &qword_2759CE2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F98);
  }

  return result;
}

uint64_t sub_27597DDC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FB0, &unk_2759CE2F8);
  return sub_27597C69C(v7, v6, (a2 + *(v8 + 36)));
}

uint64_t sub_27597DEE8(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(type metadata accessor for SixPackGrid() - 8);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return a2(a1, v8, v4, v5, v6);
}

uint64_t sub_27597DFB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_275978798(a1, v2[4], a2);
}

uint64_t sub_27597E014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = *(type metadata accessor for SixPackGrid() - 8);
  return sub_27597B230(a1, v4 + ((*(v12 + 80) + 40) & ~*(v12 + 80)), v9, v10, v11, a2, a3, a4);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = type metadata accessor for SixPackGrid();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(*(v4 - 8) + 64);
  v8 = &v0[v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2759B94D8();
    (*(*(v9 - 8) + 8))(&v0[v6], v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = *&v8[*(v4 + 44)];

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_27597E290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_27597ABD8(a1, v2[4], a2);
}

void sub_27597E2D8()
{
  sub_27597E3C4();
  if (v0 <= 0x3F)
  {
    sub_27597E424(319, &qword_280A0F928, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_27597E478();
      if (v2 <= 0x3F)
      {
        sub_27597E424(319, &qword_280A0F5F0, MEMORY[0x277CE02A8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_27597E3C4()
{
  result = qword_280A12018;
  if (!qword_280A12018)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280A12018);
  }

  return result;
}

void sub_27597E424(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2759B8DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27597E478()
{
  if (!qword_280A12020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FC8, &qword_2759CE3C8);
    v0 = sub_2759B8DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A12020);
    }
  }
}

unint64_t sub_27597E538()
{
  result = qword_280A12048;
  if (!qword_280A12048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12040, &qword_2759CE4A0);
    sub_27597E5C4();
    sub_27597E794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12048);
  }

  return result;
}

unint64_t sub_27597E5C4()
{
  result = qword_280A12050;
  if (!qword_280A12050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12058, &qword_2759CE4A8);
    sub_27597E650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12050);
  }

  return result;
}

unint64_t sub_27597E650()
{
  result = qword_280A12060;
  if (!qword_280A12060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12068, &qword_2759CE4B0);
    sub_27597E6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12060);
  }

  return result;
}

unint64_t sub_27597E6DC()
{
  result = qword_280A12070;
  if (!qword_280A12070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12078, &qword_2759CE4B8);
    sub_27589B02C(&qword_280A12080, &qword_280A12088, &qword_2759CE4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12070);
  }

  return result;
}

unint64_t sub_27597E794()
{
  result = qword_280A12090;
  if (!qword_280A12090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12098, &qword_2759CE4C8);
    sub_27597E820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12090);
  }

  return result;
}

unint64_t sub_27597E820()
{
  result = qword_280A120A0;
  if (!qword_280A120A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A120A8, &qword_2759CE4D0);
    sub_27589B02C(&qword_280A120B0, &qword_280A120B8, &qword_2759CE4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A120A0);
  }

  return result;
}

uint64_t sub_27597E8D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27597E920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_62Tm()
{
  v1 = type metadata accessor for SixPackCard(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);
  swift_unknownObjectRelease();
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2759B8DA8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B96B8();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
    v13 = *(v5 + v10);
  }

  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2759B94D8();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27597EBF8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SixPackCard(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27597EC6C()
{
  result = qword_280A120D0;
  if (!qword_280A120D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12038, &qword_2759CE498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12028, &qword_2759CE488);
    type metadata accessor for SixPackButtonStyle(255);
    sub_27589B02C(&qword_280A120C0, &qword_280A12028, &qword_2759CE488);
    sub_27597E8D8(&qword_280A120C8, type metadata accessor for SixPackButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_27597E8D8(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A120D0);
  }

  return result;
}

unint64_t sub_27597EDE8()
{
  result = qword_280A12168;
  if (!qword_280A12168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12160, &qword_2759CE5D8);
    sub_27597EEA0();
    sub_27589B02C(&qword_280A12190, &qword_280A12198, &qword_2759CE5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12168);
  }

  return result;
}

unint64_t sub_27597EEA0()
{
  result = qword_280A12170;
  if (!qword_280A12170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12178, &qword_2759CE5E0);
    sub_27589B02C(&qword_280A12180, &qword_280A12188, &qword_2759CE5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12170);
  }

  return result;
}

uint64_t sub_27597EF58@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2759B8508() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SixPackCard(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2759739EC(a1, v2 + v6, v9, a2);
}

unint64_t sub_27597F03C()
{
  result = qword_280A121B0;
  if (!qword_280A121B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A121A8, &qword_2759CE600);
    sub_27597F0F4();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121B0);
  }

  return result;
}

unint64_t sub_27597F0F4()
{
  result = qword_280A121B8;
  if (!qword_280A121B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A121C0, &qword_2759CE608);
    sub_27589B02C(&qword_280A121C8, &qword_280A121D0, &unk_2759CE610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121B8);
  }

  return result;
}

unint64_t sub_27597F1AC()
{
  result = qword_280A121D8;
  if (!qword_280A121D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12140, &qword_2759CE558);
    sub_27597F238();
    sub_27597F344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121D8);
  }

  return result;
}

unint64_t sub_27597F238()
{
  result = qword_280A121E0;
  if (!qword_280A121E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12148, &qword_2759CE560);
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0);
    sub_27597F2F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121E0);
  }

  return result;
}

unint64_t sub_27597F2F0()
{
  result = qword_280A121E8;
  if (!qword_280A121E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121E8);
  }

  return result;
}

unint64_t sub_27597F344()
{
  result = qword_280A121F0;
  if (!qword_280A121F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12128, &unk_2759CE538);
    sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20);
    sub_27597E8D8(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121F0);
  }

  return result;
}

unint64_t sub_27597F42C()
{
  result = qword_280A121F8;
  if (!qword_280A121F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12120, &unk_2759CE528);
    sub_27589B02C(&qword_280A12200, &qword_280A12208, &qword_2759CE620);
    sub_27597F2F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121F8);
  }

  return result;
}

uint64_t sub_27597F4E4(uint64_t a1)
{
  v3 = *(type metadata accessor for SixPackCard(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_275974354(a1, v4);
}

unint64_t sub_27597F564()
{
  result = qword_280A12228;
  if (!qword_280A12228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12220, &qword_2759CE638);
    sub_27597F5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12228);
  }

  return result;
}

unint64_t sub_27597F5F0()
{
  result = qword_280A12230;
  if (!qword_280A12230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12238, &qword_2759CE640);
    sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12230);
  }

  return result;
}

unint64_t sub_27597F6A0()
{
  result = qword_280A12288;
  if (!qword_280A12288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12260, &qword_2759CE668);
    sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20);
    sub_27597F2F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12288);
  }

  return result;
}

unint64_t sub_27597F758()
{
  result = qword_280A12290;
  if (!qword_280A12290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12278, &qword_2759CE680);
    sub_27597F238();
    sub_27597F6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12290);
  }

  return result;
}

unint64_t sub_27597F7E4()
{
  result = qword_280A12298;
  if (!qword_280A12298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12258, &qword_2759CE660);
    sub_27597F6A0();
    sub_27597F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12298);
  }

  return result;
}

unint64_t sub_27597F870()
{
  result = qword_280A122D8;
  if (!qword_280A122D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A122C8, &qword_2759CE6B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12178, &qword_2759CE5E0);
    sub_27597EEA0();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A122E0, &qword_280A122E8, &qword_2759CE6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A122D8);
  }

  return result;
}

unint64_t sub_27597F964()
{
  result = qword_280A12300;
  if (!qword_280A12300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A122B8, &qword_2759CE6A8);
    sub_27597F870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12300);
  }

  return result;
}

uint64_t sub_27597F9F0(uint64_t a1)
{
  v4 = *(type metadata accessor for SixPackCard(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_275970080(a1, v6, v7, v1 + v5);
}

void sub_27597FB08()
{
  sub_27597E424(319, &qword_280A0F928, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_27597FB90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_27597FBD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}