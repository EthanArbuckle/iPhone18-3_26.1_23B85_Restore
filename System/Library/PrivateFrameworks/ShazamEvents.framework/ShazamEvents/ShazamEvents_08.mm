uint64_t sub_1E108A4FC()
{
  v1 = v0[125];
  if (v0[164])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[165] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[165];

    v3 = v0[164];
  }

  v5 = v0[178];
  v6 = v0[147];
  v7 = v0[146];
  v8 = v0[136];
  v0[106] = v0[177];
  v0[107] = v5;
  v0[108] = v3;
  v0[109] = v4;
  v0[110] = v1;
  sub_1E1081D8C(v8);

  v9 = (*(v6 + 48))(v8, 1, v7);
  v10 = v0[165];
  if (v9 == 1)
  {
    v11 = v0[135];
    v12 = v0[134];
    v13 = v0[133];
    v14 = v0[132];
    sub_1E0FF0440(v0[136], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20]);
    sub_1E10ADB6C();
    v15 = sub_1E10ADEAC();
    (*(v12 + 8))(v11, v13);
    swift_willThrow();

    v0[186] = v15;
    v16 = v0[159];
    v17 = sub_1E108B104;
  }

  else
  {
    v18 = v0[159];
    v19 = v0[148];
    v20 = v0[147];
    v21 = v0[146];
    v22 = v0[136];
    v23 = *(v20 + 32);
    v0[180] = v23;
    v0[181] = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v19, v22, v21);

    v17 = sub_1E108A7C0;
    v16 = v18;
  }

  return MEMORY[0x1EEE6DFA0](v17, v16, 0);
}

uint64_t sub_1E108A750()
{
  v1 = v0[165];

  v0[186] = v0[179];
  v2 = v0[159];

  return MEMORY[0x1EEE6DFA0](sub_1E108B104, v2, 0);
}

uint64_t sub_1E108A7C0()
{
  v1 = *(v0 + 1448);
  (*(v0 + 1440))(*(v0 + 1192), *(v0 + 1184), *(v0 + 1168));
  v2 = swift_task_alloc();
  *(v0 + 1456) = v2;
  *v2 = v0;
  v2[1] = sub_1E108A874;
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1192);

  return sub_1E101C960(v0 + 384, v4);
}

uint64_t sub_1E108A874()
{
  v2 = *v1;
  v3 = *(*v1 + 1456);
  v4 = *v1;
  *(*v1 + 1464) = v0;

  v5 = *(v2 + 1272);
  if (v0)
  {
    v6 = sub_1E108AC58;
  }

  else
  {
    v6 = sub_1E108A9A0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E108A9A0()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 464);
  *(v0 + 336) = *(v0 + 448);
  *(v0 + 352) = v2;
  *(v0 + 368) = *(v0 + 480);
  v3 = *(v0 + 400);
  *(v0 + 272) = *(v0 + 384);
  *(v0 + 288) = v3;
  v4 = *(v0 + 432);
  *(v0 + 304) = *(v0 + 416);
  *(v0 + 320) = v4;
  sub_1E1035FF8(v0 + 496);
  if (v1)
  {
    v5 = *(v0 + 1272);
    v6 = *(v0 + 1264);
    v7 = *(v0 + 1256);
    v8 = *(v0 + 1232);
    v9 = *(v0 + 1192);
    v10 = *(v0 + 1176);
    v11 = *(v0 + 1168);
    sub_1E0FF0440(v0 + 272, &qword_1ECE89880, &qword_1E10B39F8);

    (*(v10 + 8))(v9, v11);
    sub_1E0FF0440(v8, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v7, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v6, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1480) = v1;
    v12 = sub_1E108AEFC;
  }

  else
  {
    v24 = *(v0 + 1288);
    v25 = *(v0 + 1296);
    v13 = *(v0 + 1280);
    v30 = *(v0 + 1264);
    v28 = *(v0 + 1272);
    v29 = *(v0 + 1256);
    v14 = *(v0 + 1232);
    v15 = *(v0 + 1224);
    v16 = *(v0 + 1208);
    v17 = *(v0 + 1176);
    v26 = *(v0 + 1168);
    v27 = *(v0 + 1192);
    sub_1E0FF0440(v0 + 272, &qword_1ECE89880, &qword_1E10B39F8);
    sub_1E10485A8(v0 + 496, v0 + 608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B250, &unk_1E10BA7A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E10B2E70;
    sub_1E0FEDC50(v14, v15, &qword_1ECE89878, &unk_1E10B6A20);
    v19 = *(v15 + *(v16 + 48) + 8);

    v20 = sub_1E10ADCDC();
    v22 = v21;
    v24(v15, v13);
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1E10485A8(v0 + 608, v18 + 48);

    (*(v17 + 8))(v27, v26);
    sub_1E0FF0440(v14, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v29, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v30, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1472) = v18;
    v12 = sub_1E108AD50;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1E108AC58()
{
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];
  v4 = v0[154];
  v5 = v0[149];
  v6 = v0[147];
  v7 = v0[146];

  (*(v6 + 8))(v5, v7);
  sub_1E0FF0440(v4, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  v0[185] = v0[183];

  return MEMORY[0x1EEE6DFA0](sub_1E108AEFC, 0, 0);
}

uint64_t sub_1E108AD50()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = type metadata accessor for GroupScheduleXPCValueContainer();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC12ShazamEvents30GroupScheduleXPCValueContainer_value];
  *v6 = v1;
  *(v6 + 1) = 0;
  v6[16] = 0;
  *(v0 + 888) = v5;
  *(v0 + 896) = v4;
  v7 = objc_msgSendSuper2((v0 + 888), sel_init);
  v3();

  v8 = *(v0 + 1264);
  v9 = *(v0 + 1256);
  v10 = *(v0 + 1248);
  v11 = *(v0 + 1240);
  v12 = *(v0 + 1232);
  v13 = *(v0 + 1224);
  v14 = *(v0 + 1200);
  v15 = *(v0 + 1192);
  v16 = *(v0 + 1184);
  v17 = *(v0 + 1160);
  v20 = *(v0 + 1136);
  v21 = *(v0 + 1128);
  v22 = *(v0 + 1120);
  v23 = *(v0 + 1112);
  v24 = *(v0 + 1088);
  v25 = *(v0 + 1080);
  v26 = *(v0 + 1056);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1E108AEFC()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  *(v0 + 984) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 904);
  if (v5)
  {
    v7 = *(v0 + 904);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = *(v0 + 912);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for GroupScheduleXPCValueContainer();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC12ShazamEvents30GroupScheduleXPCValueContainer_value];
  *v11 = v7;
  *(v11 + 1) = v8;
  v11[16] = 1;
  *(v0 + 920) = v10;
  *(v0 + 928) = v9;
  v12 = objc_msgSendSuper2((v0 + 920), sel_init);
  v3();

  v13 = *(v0 + 1264);
  v14 = *(v0 + 1256);
  v15 = *(v0 + 1248);
  v16 = *(v0 + 1240);
  v17 = *(v0 + 1232);
  v18 = *(v0 + 1224);
  v19 = *(v0 + 1200);
  v20 = *(v0 + 1192);
  v21 = *(v0 + 1184);
  v22 = *(v0 + 1160);
  v25 = *(v0 + 1136);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1120);
  v28 = *(v0 + 1112);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 1080);
  v31 = *(v0 + 1056);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1E108B104()
{
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];
  v4 = v0[154];

  sub_1E0FF0440(v4, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  v0[185] = v0[186];

  return MEMORY[0x1EEE6DFA0](sub_1E108AEFC, 0, 0);
}

uint64_t sub_1E108B1D0()
{
  v2 = *(sub_1E10ADCBC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E0FE6540;

  return sub_1E1089268(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t ShazamEventsService.serviceVersion(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1E0FE5278(&unk_1E10BA6E8, v6);
}

uint64_t sub_1E108B3E0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89520, &qword_1E10B26A0);
  v2[11] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = *(*(type metadata accessor for EventService.Version() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E108B4B8, 0, 0);
}

uint64_t sub_1E108B4B8()
{
  type metadata accessor for PartialEventFetcher();
  v1 = swift_allocObject();
  v0[15] = v1;
  swift_defaultActor_initialize();
  type metadata accessor for PartialEventNetworkHandler();
  swift_allocObject();
  *(v1 + 112) = sub_1E1078764();
  v2 = type metadata accessor for PartialEventConfigurationProvider(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  v7 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask) = 0;
  *(v1 + 120) = v5;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1E108B610;
  v9 = v0[14];

  return sub_1E101D7F4(v9, 0);
}

uint64_t sub_1E108B610()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1E108B868;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1E108B72C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E108B72C()
{
  super_class = v0[6].super_class;
  receiver = v0[7].receiver;
  v3 = v0[5].receiver;
  v4 = v0[5].super_class;
  v5 = v0[4].super_class;
  sub_1E1017590(receiver, super_class);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for VersionXPCValueContainer();
  v7 = objc_allocWithZone(v6);
  sub_1E0FEDC50(super_class, v7 + OBJC_IVAR____TtC12ShazamEvents24VersionXPCValueContainer_value, &qword_1ECE89520, &qword_1E10B26A0);
  v0[3].receiver = v7;
  v0[3].super_class = v6;
  v8 = objc_msgSendSuper2(v0 + 3, sel_init);
  sub_1E0FF0440(super_class, &qword_1ECE89520, &qword_1E10B26A0);
  v5(v8);

  sub_1E10175F4(receiver);
  v10 = v0[6].super_class;
  v9 = v0[7].receiver;
  v11 = v0[6].receiver;

  v12 = v0->super_class;

  return v12();
}

uint64_t sub_1E108B868()
{
  super_class = v0[8].super_class;
  v2 = v0[7].super_class;
  v4 = v0[5].super_class;
  receiver = v0[6].receiver;
  v6 = v0[4].super_class;
  v5 = v0[5].receiver;

  v0[4].receiver = super_class;
  v7 = super_class;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v8 = swift_dynamicCast();
  v9 = v0[1].receiver;
  v10 = v0[1].super_class;
  if (!v8)
  {
    v9 = 0;
    v10 = 1;
  }

  *receiver = v9;
  receiver[1] = v10;
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for VersionXPCValueContainer();
  v12 = objc_allocWithZone(v11);
  sub_1E0FEDC50(receiver, v12 + OBJC_IVAR____TtC12ShazamEvents24VersionXPCValueContainer_value, &qword_1ECE89520, &qword_1E10B26A0);
  v0[2].receiver = v12;
  v0[2].super_class = v11;
  v13 = objc_msgSendSuper2(v0 + 2, sel_init);
  sub_1E0FF0440(receiver, &qword_1ECE89520, &qword_1E10B26A0);
  v6(v13);

  v15 = v0[6].super_class;
  v14 = v0[7].receiver;
  v16 = v0[6].receiver;

  v17 = v0->super_class;

  return v17();
}

uint64_t sub_1E108B9F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E0FE6540;

  return sub_1E108B3E0(v2, v3);
}

uint64_t ShazamEventsService.partialEvents(geoRequests:requestTypes:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;

  sub_1E0FE5278(&unk_1E10BA6F8, v10);
}

uint64_t sub_1E108BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E108BC34, 0, 0);
}

uint64_t sub_1E108BC34()
{
  type metadata accessor for PartialEventFetcher();
  v1 = swift_allocObject();
  v0[13] = v1;
  swift_defaultActor_initialize();
  type metadata accessor for PartialEventNetworkHandler();
  swift_allocObject();
  *(v1 + 112) = sub_1E1078764();
  v2 = type metadata accessor for PartialEventConfigurationProvider(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  v7 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask) = 0;
  *(v1 + 120) = v5;
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1E108BD88;
  v10 = v0[9];
  v9 = v0[10];

  return sub_1E101ECD8(v10, v9);
}

uint64_t sub_1E108BD88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_1E108BF74;
  }

  else
  {
    v8 = *(v4 + 104);

    *(v4 + 128) = a1;
    v7 = sub_1E108BEB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E108BEB8()
{
  receiver = v0[8].receiver;
  super_class = v0[5].super_class;
  v2 = v0[6].receiver;
  v4 = type metadata accessor for PartialEventXPCValueContainer();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value];
  *v6 = receiver;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v0[3].receiver = v5;
  v0[3].super_class = v4;
  v7 = objc_msgSendSuper2(v0 + 3, sel_init);
  super_class();

  v8 = v0->super_class;

  return v8();
}

uint64_t sub_1E108BF74()
{
  super_class = v0[7].super_class;
  receiver = v0[6].receiver;
  v2 = v0[6].super_class;
  v4 = v0[5].super_class;

  v0[4].receiver = super_class;
  v5 = super_class;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v0[1].receiver;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v0[1].super_class;
  }

  else
  {
    v8 = 3;
  }

  v9 = type metadata accessor for PartialEventXPCValueContainer();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value];
  *v11 = v7;
  *(v11 + 1) = v8;
  v11[16] = 1;
  v0[2].receiver = v10;
  v0[2].super_class = v9;
  v12 = objc_msgSendSuper2(v0 + 2, sel_init);
  v4();

  v13 = v0->super_class;

  return v13();
}

uint64_t sub_1E108C0A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E0FE6540;

  return sub_1E108BC10(v2, v3, v5, v4);
}

Swift::Void __swiftcall ShazamEventsService.shutdownService()()
{
  v1 = v0;
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = sub_1E10ADF9C();
  __swift_project_value_buffer(v2, qword_1EE185540);
  v3 = sub_1E10ADF7C();
  v4 = sub_1E10AE43C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E0FDF000, v3, v4, "Shutting down ShazamEventsService", v5, 2u);
    MEMORY[0x1E12EE9E0](v5, -1, -1);
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator) + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_1E0FE5AD0((v6 + 16));

  os_unfair_lock_unlock((v6 + 24));
}

id ShazamEventsService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShazamEventsService.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator;
  type metadata accessor for ServiceCoordinator();
  v3 = swift_allocObject();
  v4 = sub_1E1017018(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B1A0, &unk_1E10BA700);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v3 + 16) = v5;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ShazamEventsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E108C644(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E104834C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E108C6B0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E108C6B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E10AE8CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E10AE1CC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E108C878(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E108C7A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E108C7A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1E10AE8FC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E108C878(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1E1047DA8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1E108CE54((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1E10AE8FC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E10AE8FC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E1047EA0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1E1047EA0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1E108CE54((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E1047DA8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1E1047D1C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1E10AE8FC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1E108CE54(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1E10AE8FC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1E10AE8FC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1E108D07C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1E108D0C4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v10 = result;
    v11 = *(a5 + 56);
    v12 = (*(a5 + 48) + 16 * a2);
    v13 = *v12;
    v14 = v12[1];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    sub_1E0FEDC50(v11 + *(*(v15 - 8) + 72) * a2, v10, a6, a7);

    return v13;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E108D19C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = sub_1E10ADCFC();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = (*(a5 + 56) + 16 * a2);
    v11 = *v10;
    v12 = v10[1];

    return v11;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1E108D2DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E0FE5FDC;

  return sub_1E108BC10(v2, v3, v5, v4);
}

uint64_t objectdestroy_3Tm()
{
  v1 = sub_1E10ADCBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1E108D4E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_1E10181E8(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_1E1016AA4();
      }
    }

    else
    {
      v34 = v56;
      sub_1E101577C(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_1E10181E8(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1E1019254();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

uint64_t sub_1E108D780(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E108D7D4()
{
  result = qword_1EE17E418;
  if (!qword_1EE17E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE8B270, &qword_1E10B17E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E418);
  }

  return result;
}

uint64_t static Time.== infix(_:_:)()
{
  if (sub_1E10ADA7C())
  {
    v0 = *(type metadata accessor for Time() + 20);

    JUMPOUT(0x1E12ED5E0);
  }

  return 0;
}

uint64_t type metadata accessor for Time()
{
  result = qword_1EE17EE78;
  if (!qword_1EE17EE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Time.init(dateInterval:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E10ADACC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for Time() + 20);
  v8 = sub_1E10ADE6C();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t Time.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E10ADACC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Time.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Time() + 20);
  v4 = sub_1E10ADE6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E108DAAC()
{
  if (*v0)
  {
    result = 0x656E6F5A656D6974;
  }

  else
  {
    result = 0x65746E4965746164;
  }

  *v0;
  return result;
}

uint64_t sub_1E108DAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E108DBD0(uint64_t a1)
{
  v2 = sub_1E108DE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E108DC0C(uint64_t a1)
{
  v2 = sub_1E108DE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Time.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B2C0, &qword_1E10BA7C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E108DE48();
  sub_1E10AEA5C();
  v13[15] = 0;
  sub_1E10ADACC();
  sub_1E108E774(&unk_1ECE8B320, MEMORY[0x1E6968130]);
  sub_1E10AE8AC();
  if (!v1)
  {
    v11 = *(type metadata accessor for Time() + 20);
    v13[14] = 1;
    sub_1E10ADE6C();
    sub_1E108E774(&qword_1ECE8B2C8, MEMORY[0x1E6969BC0]);
    sub_1E10AE8AC();
  }

  return (*(v4 + 8))(v9, v3);
}

unint64_t sub_1E108DE48()
{
  result = qword_1EE17EEA0[0];
  if (!qword_1EE17EEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17EEA0);
  }

  return result;
}

uint64_t Time.hash(into:)()
{
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v0 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  return sub_1E10ADFFC();
}

uint64_t Time.hashValue.getter()
{
  sub_1E10AE9CC();
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v0 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t Time.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = sub_1E10ADE6C();
  v34 = *(v37 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E10ADACC();
  v36 = *(v40 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v38 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B2D0, &qword_1E10BA7D0);
  v39 = *(v41 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for Time();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E108DE48();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v18;
  v25 = v23;
  v27 = v36;
  v26 = v37;
  v43 = 0;
  sub_1E108E774(&unk_1EE180180, MEMORY[0x1E6968130]);
  v28 = v38;
  sub_1E10AE7FC();
  v29 = *(v27 + 32);
  v32 = v25;
  v29(v25, v28, v40);
  v42 = 1;
  sub_1E108E774(&qword_1EE17FF38, MEMORY[0x1E6969BC0]);
  sub_1E10AE7FC();
  (*(v39 + 8))(v17, v41);
  v30 = v32;
  (*(v34 + 32))(v32 + *(v33 + 20), v8, v26);
  sub_1E100AA5C(v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E100ACB0(v30);
}

uint64_t sub_1E108E484(uint64_t a1)
{
  sub_1E10AE9CC();
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v2 = *(a1 + 20);
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E108E570(uint64_t a1, uint64_t a2)
{
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v3 = *(a2 + 20);
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  return sub_1E10ADFFC();
}

uint64_t sub_1E108E644(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v3 = *(a2 + 20);
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E108E774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E108E7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E10ADA7C())
  {
    v4 = *(a3 + 20);

    JUMPOUT(0x1E12ED5E0);
  }

  return 0;
}

uint64_t sub_1E108E87C()
{
  result = sub_1E10ADACC();
  if (v1 <= 0x3F)
  {
    result = sub_1E10ADE6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E108E914()
{
  result = qword_1ECE8B2E0;
  if (!qword_1ECE8B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2E0);
  }

  return result;
}

unint64_t sub_1E108E96C()
{
  result = qword_1EE17EE90;
  if (!qword_1EE17EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EE90);
  }

  return result;
}

unint64_t sub_1E108E9C4()
{
  result = qword_1EE17EE98;
  if (!qword_1EE17EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EE98);
  }

  return result;
}

uint64_t sub_1E108EA28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E108EC14(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1E108EA54(void *a1)
{
  result = sub_1E108EB5C(*v1, *(v1 + 8));
  if (!v2)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E10AEA4C();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1E10AE91C();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

unint64_t sub_1E108EB08()
{
  result = qword_1ECE8B2E8;
  if (!qword_1ECE8B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2E8);
  }

  return result;
}

uint64_t sub_1E108EB5C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    while (1)
    {
      sub_1E10AE0CC();
      if (!v3)
      {
        break;
      }

      v4 = sub_1E10AE00C();

      if ((v4 & 1) == 0)
      {
      }
    }
  }

  sub_1E108ED04();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1E108EC14(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA2C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = sub_1E10AE90C();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_1E108EB5C(v3, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1E108ED04()
{
  result = qword_1ECE8B2F0;
  if (!qword_1ECE8B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2F0);
  }

  return result;
}

unint64_t sub_1E108ED6C()
{
  result = qword_1ECE8B2F8;
  if (!qword_1ECE8B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2F8);
  }

  return result;
}

uint64_t sub_1E108EDC0()
{
  v83 = sub_1E10ADB4C();
  v81 = *(v83 - 8);
  v0 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v1, v2);
  v79 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  v4 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1E10ADCBC();
  v82 = *(v84 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v80 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v77 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v72 - v18;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89650, &qword_1E10B2930) - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v72 - v23;
  v25 = sub_1E10ADE6C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E10ADDAC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E10ADE2C();
  v73 = *(v39 - 8);
  v74 = v39;
  v40 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 104))(v38, *MEMORY[0x1E6969830], v32);
  sub_1E10ADDBC();
  (*(v33 + 8))(v38, v32);
  sub_1E10ADE4C();
  result = (*(v26 + 48))(v24, 1, v25);
  if (result != 1)
  {
    (*(v26 + 32))(v31, v24, v25);
    sub_1E10ADE0C();
    v46 = OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload;
    sub_1E10911BC(v86 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload, v8);
    v85 = v44;
    v48 = v77;
    v47 = v78;
    v49 = *(v78 + 28);
    sub_1E10ADAAC();
    v50 = sub_1E10ADACC();
    v75 = *(*(v50 - 8) + 8);
    v75(&v8[v49], v50);
    sub_1E10ADDCC();
    v76 = v19;
    v51 = *(v82 + 8);
    v52 = v84;
    v51(v48, v84);
    sub_1E10911BC(v86 + v46, v8);
    v53 = *(v47 + 28);
    v54 = v85;
    sub_1E10ADA8C();
    v75(&v8[v53], v50);
    v55 = v80;
    sub_1E10ADDCC();
    v56 = v48;
    v57 = v51;
    v51(v56, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B330, &unk_1E10BAC60);
    v58 = sub_1E10ADE1C();
    v59 = *(v58 - 8);
    v60 = *(v59 + 72);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1E10B2E70;
    (*(v59 + 104))(v62 + v61, *MEMORY[0x1E6969A48], v58);
    sub_1E10906D4(v62);
    swift_setDeallocating();
    (*(v59 + 8))(v62 + v61, v58);
    swift_deallocClassInstance();
    v63 = v79;
    v64 = v76;
    sub_1E10ADDDC();

    v65 = sub_1E10ADB3C();
    LOBYTE(v58) = v66;
    result = (*(v81 + 8))(v63, v83);
    if (v58)
    {
      v69 = 1;
    }

    else
    {
      v69 = v65;
    }

    if ((v69 & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](v67, v68);
      *(&v72 - 2) = v54;
      *(&v72 - 1) = v64;
      v71 = sub_1E1035304(sub_1E1091220, (&v72 - 4), 0, v70);
      v57(v55, v52);
      v57(v64, v52);
      (*(v73 + 8))(v54, v74);
      return v71;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s12ShazamEvents22GeoXPCRequestContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = sub_1E10ADA3C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1E10ADA2C();
  v19 = *(v1 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id);
  v20 = *(v1 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id + 8);
  sub_1E0FED9C8();

  v6 = sub_1E10ADA1C();
  v8 = v7;

  type metadata accessor for GeoXPCRequestContainer.Payload(0);
  sub_1E1090ED8(&unk_1EE17F2C8, type metadata accessor for GeoXPCRequestContainer.Payload);
  v9 = v6;
  v10 = sub_1E10ADA1C();
  v11 = v8;
  v13 = v12;
  v14 = sub_1E10ADBCC();
  v15 = sub_1E10AE04C();
  [a1 encodeObject:v14 forKey:v15];

  v16 = sub_1E10ADBCC();
  v17 = sub_1E10AE04C();
  [a1 encodeObject:v16 forKey:v17];

  sub_1E0FFDAC0(v10, v13);
  sub_1E0FFDAC0(v9, v11);
}

uint64_t sub_1E108F818()
{
  v1 = 0x656475746974616CLL;
  v2 = 0x737569646172;
  if (*v0 != 2)
  {
    v2 = 0x65746E4965746164;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
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

uint64_t sub_1E108F89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1091354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E108F8C4(uint64_t a1)
{
  v2 = sub_1E10910A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E108F900(uint64_t a1)
{
  v2 = sub_1E10910A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id GeoXPCRequestContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1E10909F4(a1);
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

id GeoXPCRequestContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v3 = sub_1E10909F4(a1);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

id GeoXPCRequestContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GeoXPCRequestContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E108FC80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v5 = sub_1E10ADC1C();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v52 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v53 = &v51 - v19;
  v20 = sub_1E10ADE1C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E10ADE2C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788) - 8) + 64);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v51 - v37;
  v39 = *a1;
  (*(v28 + 16))(v33, v56, v27);
  (*(v21 + 104))(v26, *MEMORY[0x1E6969A48], v20);
  sub_1E10ADDFC();
  (*(v21 + 8))(v26, v20);
  (*(v28 + 8))(v33, v27);
  v40 = sub_1E10ADCBC();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v38, 1, v40) == 1)
  {
    result = sub_1E0FF0440(v38, &unk_1ECE8B220, &qword_1E10BA788);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    MEMORY[0x1E12ED140]();
    v45 = v51;
    sub_1E10ADBFC();
    v46 = v55;
    v47 = *(v54 + 8);
    v47(v10, v55);
    v48 = v52;
    sub_1E10ADC0C();
    v47(v45, v46);
    v49 = v53;
    sub_1E10ADBEC();
    v47(v48, v46);
    sub_1E1090ED8(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v47(v49, v46);
    result = (*(v41 + 8))(v38, v40);
    v43 = v59;
    v44 = v60;
  }

  v50 = v58;
  *v58 = v43;
  v50[1] = v44;
  return result;
}

uint64_t sub_1E1090108(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B318, &unk_1E10BAC50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10910A8();
  sub_1E10AEA5C();
  v13 = *v3;
  v18[15] = 0;
  sub_1E10AE88C();
  if (!v2)
  {
    v14 = v3[1];
    v18[14] = 1;
    sub_1E10AE88C();
    v15 = v3[2];
    v18[13] = 2;
    sub_1E10AE88C();
    v16 = *(type metadata accessor for GeoXPCRequestContainer.Payload(0) + 28);
    v18[12] = 3;
    sub_1E10ADACC();
    sub_1E1090ED8(&unk_1ECE8B320, MEMORY[0x1E6968130]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E1090344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1E10ADACC();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B310, &qword_1E10BAC48);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10910A8();
  v22 = v39;
  sub_1E10AEA3C();
  if (!v22)
  {
    v23 = v20;
    v39 = v15;
    v24 = v8;
    v43 = 0;
    v25 = v37;
    sub_1E10AE7DC();
    *v23 = v26;
    v42 = 1;
    sub_1E10AE7DC();
    v27 = v25;
    v23[1] = v28;
    v41 = 2;
    sub_1E10AE7DC();
    v30 = v23;
    v23[2] = v31;
    v40 = 3;
    sub_1E1090ED8(&unk_1EE180180, MEMORY[0x1E6968130]);
    v32 = v24;
    v33 = v38;
    sub_1E10AE7FC();
    (*(v27 + 8))(v14, v33);
    (*(v35 + 32))(v30 + *(v39 + 28), v32, v3);
    sub_1E10910FC(v30, v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E10906D4(uint64_t a1)
{
  v2 = sub_1E10ADE1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = &v35 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B338, &unk_1E10BAC70);
    v13 = sub_1E10AE5BC();
    v14 = 0;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v40 = v16;
    v41 = v13 + 56;
    v17 = *(v15 + 64);
    v37 = v12;
    v38 = a1 + ((v17 + 32) & ~v17);
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    v36 = (v15 + 16);
    while (1)
    {
      v39 = v14;
      v40(v42, v38 + v18 * v14, v2);
      v20 = *(v13 + 40);
      sub_1E1090ED8(&qword_1EE17FF50, MEMORY[0x1E6969AD0]);
      v21 = sub_1E10ADFEC();
      v22 = ~(-1 << *(v13 + 32));
      v23 = v21 & v22;
      v24 = (v21 & v22) >> 6;
      v25 = *(v41 + 8 * v24);
      v26 = 1 << (v21 & v22);
      if ((v26 & v25) != 0)
      {
        while (1)
        {
          v27 = v15;
          v40(v8, *(v13 + 48) + v23 * v18, v2);
          sub_1E1090ED8(&qword_1ECE8B348, MEMORY[0x1E6969AD0]);
          v28 = sub_1E10AE03C();
          v29 = *v19;
          (*v19)(v8, v2);
          if (v28)
          {
            break;
          }

          v23 = (v23 + 1) & v22;
          v24 = v23 >> 6;
          v25 = *(v41 + 8 * (v23 >> 6));
          v26 = 1 << v23;
          v15 = v27;
          if (((1 << v23) & v25) == 0)
          {
            goto LABEL_8;
          }
        }

        v29(v42, v2);
        v15 = v27;
      }

      else
      {
LABEL_8:
        v30 = v42;
        *(v41 + 8 * v24) = v26 | v25;
        result = (*v36)(*(v13 + 48) + v23 * v18, v30, v2);
        v32 = *(v13 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          __break(1u);
          return result;
        }

        *(v13 + 16) = v34;
      }

      v14 = v39 + 1;
      if (v39 + 1 == v37)
      {
        return v13;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

id sub_1E10909F4(void *a1)
{
  v2 = *(*(type metadata accessor for GeoXPCRequestContainer.Payload(0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  sub_1E100A428();
  v11 = sub_1E10AE48C();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1E10AE48C();
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E10ADA0C();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_1E10AD9FC();
      v18 = v12;
      v19 = sub_1E10ADBDC();
      v21 = v20;

      sub_1E0FEDD04();
      sub_1E10AD9EC();
      v36 = v18;
      sub_1E0FFDAC0(v19, v21);
      v33 = v38;
      v35 = v39;
      v22 = v14;
      v23 = sub_1E10ADBDC();
      v25 = v24;
      v34 = v22;

      sub_1E1090ED8(&qword_1EE17F2C0, type metadata accessor for GeoXPCRequestContainer.Payload);
      sub_1E10AD9EC();
      sub_1E0FFDAC0(v23, v25);
      sub_1E10911BC(v10, v6);
      v26 = type metadata accessor for GeoXPCRequestContainer(0);
      v27 = objc_allocWithZone(v26);
      v28 = &v27[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
      v29 = v35;
      *v28 = v33;
      *(v28 + 1) = v29;
      sub_1E10911BC(v6, &v27[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload]);
      v37.receiver = v27;
      v37.super_class = v26;
      v30 = objc_msgSendSuper2(&v37, sel_init);

      sub_1E1091160(v6);
      sub_1E1091160(v10);
      return v30;
    }
  }

  return 0;
}

uint64_t sub_1E1090ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1090F48()
{
  result = type metadata accessor for GeoXPCRequestContainer.Payload(319);
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

uint64_t sub_1E1091024()
{
  result = sub_1E10ADACC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E10910A8()
{
  result = qword_1EE17F2F8;
  if (!qword_1EE17F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F2F8);
  }

  return result;
}

uint64_t sub_1E10910FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1091160(uint64_t a1)
{
  v2 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E10911BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E1091250()
{
  result = qword_1ECE8B350;
  if (!qword_1ECE8B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B350);
  }

  return result;
}

unint64_t sub_1E10912A8()
{
  result = qword_1EE17F2D8;
  if (!qword_1EE17F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F2D8);
  }

  return result;
}

unint64_t sub_1E1091300()
{
  result = qword_1EE17F2E0[0];
  if (!qword_1EE17F2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F2E0);
  }

  return result;
}

uint64_t sub_1E1091354(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E10914C0(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E6969EC0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E109214C;

  return MEMORY[0x1EEDC6260](a1, 0);
}

id sub_1E1091570()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[3];
  }

  else
  {
    sub_1E10915CC(v0);
    v3 = v0[3];
    v0[3] = v4;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E10915CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 amsBag];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    sub_1E10AE05C();

    v8 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
    v9 = v4;
    v10 = sub_1E10AE04C();

    v11 = [v8 initWithClientIdentifier:v10 bag:v9];

    [v11 setClientType_];
    v12 = a1[2];
    [v11 setSession_];
    v13 = [objc_allocWithZone(MEMORY[0x1E698C9B8]) initWithTokenService_];
    [v12 setProtocolHandler_];

    [objc_allocWithZone(MEMORY[0x1E698C9C0]) initWithTokenService:v11 bag:v9];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E10917B8(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E10917D8, 0, 0);
}

uint64_t sub_1E10917D8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = sub_1E1091570();
  v4 = sub_1E10AD96C();
  v5 = [v3 requestByEncodingRequest:v4 parameters:0];
  v0[29] = v5;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1E1091940;
  v6 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B358, &qword_1E10BAE08);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1092150;
  v0[21] = &block_descriptor_5;
  v0[22] = v6;
  [v5 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1091940()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1E0FFA9C4;
  }

  else
  {
    v3 = sub_1E1091A50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1091A50()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v0[31] = v3;

  v4 = [*(v2 + 16) dataTaskPromiseWithRequest_];
  v0[32] = v4;
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E1091BA4;
  v5 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B360, &unk_1E10BAE10);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1092150;
  v0[21] = &block_descriptor_9;
  v0[22] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E1091BA4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1E1091DA4;
  }

  else
  {
    v3 = sub_1E1091CB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1091CB4()
{
  v1 = *(v0 + 208);

  v2 = [v1 data];
  v3 = sub_1E10ADBDC();
  v5 = v4;

  v6 = [v1 response];
  if (!v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AF70]) init];
  }

  v7 = *(v0 + 8);

  return v7(v3, v5, v6);
}

uint64_t sub_1E1091DA4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  swift_willThrow();

  v4 = v0[33];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E1091E1C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E1091EF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1091F58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E1091FF0;

  return sub_1E10917B8(a1);
}

uint64_t sub_1E1091FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t Playlist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1E1092190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1092210(uint64_t a1)
{
  v2 = sub_1E109241C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109224C(uint64_t a1)
{
  v2 = sub_1E109241C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Playlist.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

uint64_t Playlist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B368, &qword_1E10BAE70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109241C();

  sub_1E10AEA5C();
  v14[0] = v10;
  v14[1] = v11;
  sub_1E0FED9C8();
  sub_1E10AE8AC();

  return (*(v4 + 8))(v9, v3);
}

unint64_t sub_1E109241C()
{
  result = qword_1ECE8B370;
  if (!qword_1ECE8B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B370);
  }

  return result;
}

uint64_t Playlist.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Playlist.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t Playlist.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B378, &qword_1E10BAE78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109241C();
  sub_1E10AEA3C();
  if (!v2)
  {
    sub_1E0FEDD04();
    sub_1E10AE7FC();
    (*(v6 + 8))(v11, v5);
    v13 = v15[1];
    *a2 = v15[0];
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E1092668()
{
  result = qword_1ECE8B380;
  if (!qword_1ECE8B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B380);
  }

  return result;
}

unint64_t sub_1E10926E0()
{
  result = qword_1ECE8B388;
  if (!qword_1ECE8B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B388);
  }

  return result;
}

unint64_t sub_1E1092738()
{
  result = qword_1ECE8B390;
  if (!qword_1ECE8B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B390);
  }

  return result;
}

unint64_t sub_1E1092790()
{
  result = qword_1ECE8B398;
  if (!qword_1ECE8B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B398);
  }

  return result;
}

uint64_t EventAttribution.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EventAttribution.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventAttribution() + 20);
  v4 = sub_1E10ADBBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EventAttribution()
{
  result = qword_1EE17F798;
  if (!qword_1EE17F798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E10928DC(uint64_t a1)
{
  v2 = sub_1E1092B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1092918(uint64_t a1)
{
  v2 = sub_1E1092B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static EventAttribution.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for EventAttribution() + 20);

  return sub_1E10ADB8C();
}

uint64_t EventAttribution.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3A0, &qword_1E10BB0C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1092B88();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  v17[15] = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v15 = *(type metadata accessor for EventAttribution() + 20);
    v17[14] = 1;
    sub_1E10ADBBC();
    sub_1E109331C(&qword_1ECE88CC0, MEMORY[0x1E6968FB0]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

unint64_t sub_1E1092B88()
{
  result = qword_1ECE8B3A8;
  if (!qword_1ECE8B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3A8);
  }

  return result;
}

uint64_t EventAttribution.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = *(type metadata accessor for EventAttribution() + 20);
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  return sub_1E10ADFFC();
}

uint64_t EventAttribution.hashValue.getter()
{
  sub_1E10AE9CC();
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = *(type metadata accessor for EventAttribution() + 20);
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t EventAttribution.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E10ADBBC();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3B0, &qword_1E10BB0C8);
  v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for EventAttribution();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1092B88();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v22 = v28;
  v21 = v29;
  v32 = 0;
  *v19 = sub_1E10AE7BC();
  v19[1] = v23;
  v31 = 1;
  sub_1E109331C(&qword_1ECE88D38, MEMORY[0x1E6968FB0]);
  sub_1E10AE7FC();
  (*(v22 + 8))(v13, v30);
  (*(v26 + 32))(v19 + *(v25 + 20), v8, v21);
  sub_1E1093214(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E1093278(v19);
}

uint64_t sub_1E109303C(uint64_t a1)
{
  sub_1E10AE9CC();
  v3 = *v1;
  v4 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v5 = *(a1 + 20);
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E10930E4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = *(a2 + 20);
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  return sub_1E10ADFFC();
}

uint64_t sub_1E1093170(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  v4 = *v2;
  v5 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = *(a2 + 20);
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1093214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttribution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1093278(uint64_t a1)
{
  v2 = type metadata accessor for EventAttribution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E109331C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E10933D0()
{
  result = qword_1ECE8B3C0;
  if (!qword_1ECE8B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3C0);
  }

  return result;
}

unint64_t sub_1E1093428()
{
  result = qword_1ECE8B3C8;
  if (!qword_1ECE8B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3C8);
  }

  return result;
}

unint64_t sub_1E1093480()
{
  result = qword_1ECE8B3D0;
  if (!qword_1ECE8B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3D0);
  }

  return result;
}

uint64_t sub_1E10934D4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a4 + 32;
  v10 = *(a4 + 16) + 1;
  while (--v10)
  {
    v11 = *(v9 + 112);
    v34[6] = *(v9 + 96);
    v34[7] = v11;
    v35 = *(v9 + 128);
    v12 = *(v9 + 48);
    v34[2] = *(v9 + 32);
    v34[3] = v12;
    v13 = *(v9 + 80);
    v34[4] = *(v9 + 64);
    v34[5] = v13;
    v14 = *(v9 + 16);
    v34[0] = *v9;
    v34[1] = v14;
    if (v34[0] != __PAIR128__(a2, a1))
    {
      v9 += 136;
      if ((sub_1E10AE8FC() & 1) == 0)
      {
        continue;
      }
    }

    sub_1E10968F0(v34, v33);
    sub_1E1095C84(a5);
    return sub_1E109694C(v34);
  }

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v16 = sub_1E10ADF9C();
  __swift_project_value_buffer(v16, qword_1EE185540);

  v17 = sub_1E10ADF7C();
  v18 = sub_1E10AE44C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33[0] = v20;
    *v19 = 136315138;
    v21 = 0xE500000000000000;
    v22 = 0x636973756DLL;
    v23 = 0x80000001E10BF070;
    v24 = 0xD000000000000011;
    if (a3 != 6)
    {
      v24 = 0x66696C746867696ELL;
      v23 = 0xE900000000000065;
    }

    v25 = 0xE700000000000000;
    v26 = 0x72657461656874;
    if (a3 != 4)
    {
      v26 = 0x657665656C707061;
      v25 = 0xEA0000000000746ELL;
    }

    if (a3 <= 5u)
    {
      v24 = v26;
      v23 = v25;
    }

    v27 = 0xEE00736D75657375;
    v28 = 0x6D646E6173747261;
    if (a3 != 2)
    {
      v28 = 0x65636E6164;
      v27 = 0xE500000000000000;
    }

    if (a3)
    {
      v22 = 0x74726F7073;
      v21 = 0xE500000000000000;
    }

    if (a3 > 1u)
    {
      v22 = v28;
      v21 = v27;
    }

    if (a3 <= 3u)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    if (a3 <= 3u)
    {
      v30 = v21;
    }

    else
    {
      v30 = v23;
    }

    v31 = sub_1E1078CFC(v29, v30, v33);

    *(v19 + 4) = v31;
    _os_log_impl(&dword_1E0FDF000, v17, v18, "Failed to find %s result in response", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12EE9E0](v20, -1, -1);
    MEMORY[0x1E12EE9E0](v19, -1, -1);
  }

  sub_1E10095EC();
  swift_allocError();
  *v32 = xmmword_1E10B4430;
  return swift_willThrow();
}

uint64_t sub_1E1093818(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v2[3];
  v8 = v2[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (v8)
  {
    v16 = *(v2 + 2);
    v18 = *(v2 + 4);
    v19 = *(v2 + 5);
    v20 = v2[12];
    *&v17 = v2[6];
    *(&v17 + 1) = v8;
    sub_1E10AE9EC();
    v21 = *(v2 + 2);
    v22 = v2[6];
    v23 = v8;
    v9 = *(v2 + 5);
    v24 = *(v2 + 4);
    v25 = v9;
    v26 = v2[12];
    sub_1E1004E80(&v21, v27);
    Artwork.hash(into:)();
    v27[2] = v18;
    v27[3] = v19;
    v28 = v20;
    v27[0] = v16;
    v27[1] = v17;
    sub_1E1004EDC(v27);
  }

  else
  {
    sub_1E10AE9EC();
  }

  v10 = v2[13];
  *&v27[0] = v10;
  v11 = *(v10 + 16);
  result = MEMORY[0x1E12EE160](v11);
  if (v11)
  {
    v13 = *(type metadata accessor for Music() - 8);
    v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);

    do
    {
      Music.hash(into:)(a1);
      v14 += v15;
      --v11;
    }

    while (v11);
    return sub_1E0FF0440(v27, &qword_1ECE8B458, &unk_1E10BB500);
  }

  return result;
}

uint64_t ArtistPromotionalAssets.promotionalContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1E10939CC(v2);
}

uint64_t sub_1E10939CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for ArtistPromotionalAssets()
{
  result = qword_1ECE8B418;
  if (!qword_1ECE8B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArtistPromotionalAssets.schedule.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArtistPromotionalAssets() + 24));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16 = v5;
  v17 = v3[6];
  v6 = v17;
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[6] = v6;
  return sub_1E1093B38(v12, &v11);
}

uint64_t sub_1E1093B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ArtistPromotionalAssets.init(artistID:service:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[3] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3E0, &qword_1E10BB2E0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[4] = v9;
  v4[2] = *a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1E1093CA8;

  return sub_1E1093F60(v9, a2, a3, v4 + 2);
}

uint64_t sub_1E1093CA8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E1093EFC;
  }

  else
  {
    v3 = sub_1E1093DBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1093DBC()
{
  v1 = v0[4];
  v2 = type metadata accessor for ArtistPromotionalAssets();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1E0FF0440(v1, &qword_1ECE8B3E0, &qword_1E10BB2E0);
    v4 = 1;
  }

  else
  {
    sub_1E1096278(v1, v0[3], type metadata accessor for ArtistPromotionalAssets);
    v4 = 0;
  }

  v5 = v0[4];
  (*(v3 + 56))(v0[3], v4, 1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E1093EFC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1E1093F60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[52] = a2;
  v4[53] = a3;
  v4[51] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A060, &qword_1E10B4E38) - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v7 = type metadata accessor for Music();
  v4[56] = v7;
  v8 = *(v7 - 8);
  v4[57] = v8;
  v9 = *(v8 + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v10 = sub_1E10ADCBC();
  v4[63] = v10;
  v11 = *(v10 - 8);
  v4[64] = v11;
  v12 = *(v11 + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v13 = sub_1E10ADCFC();
  v4[68] = v13;
  v14 = *(v13 - 8);
  v4[69] = v14;
  v15 = *(v14 + 64) + 15;
  v4[70] = swift_task_alloc();
  v4[71] = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1E1094174, 0, 0);
}

uint64_t sub_1E1094174()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v7 = v0[52];
  v6 = v0[53];
  sub_1E10ADCEC();
  v8 = sub_1E10ADCDC();
  v10 = v9;
  v0[72] = v8;
  v0[73] = v9;
  (*(v3 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = 0;

  v12 = sub_1E1017314(inited);
  v0[74] = v12;
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &qword_1ECE896B8, &qword_1E10B2E90);
  sub_1E1094D1C(v5);
  v13 = swift_task_alloc();
  v0[75] = v13;
  v13[2] = v1;
  v13[3] = v7;
  v13[4] = v6;
  v13[5] = v12;
  v13[6] = v5;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  v0[76] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89410, qword_1E10B2400);
  *v15 = v0;
  v15[1] = sub_1E1094360;

  return MEMORY[0x1EEE6DE38](v0 + 50, 0, 0, 0xD000000000000037, 0x80000001E10BFBA0, sub_1E1096870, v13, v16);
}

uint64_t sub_1E1094360()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  v2[77] = v0;

  v5 = v2[75];
  v6 = v2[74];
  if (v0)
  {
    v7 = v2[73];
    v8 = v2[53];

    v9 = sub_1E1094BFC;
  }

  else
  {
    v10 = v2[53];

    v9 = sub_1E10944E8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E10944E8()
{
  v98 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 536);
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);

  v8 = *(v0 + 400);
  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_1E10934D4(v3, v2, 0, v8, v96);
  v10 = *(v0 + 584);
  if (!v1)
  {

    v22 = v96[6];
    v23 = v96[4];
    *(v0 + 96) = v96[5];
    *(v0 + 112) = v22;
    v24 = v96[1];
    *(v0 + 16) = v96[0];
    *(v0 + 32) = v24;
    v25 = v96[2];
    *(v0 + 64) = v96[3];
    *(v0 + 80) = v23;
    *(v0 + 48) = v25;
    v26 = *(v0 + 120);
    v92 = *(v26 + 16);
    v94 = v26;
    if (v92)
    {
      v90 = v9;
      v27 = 0;
      v88 = *(v0 + 448);
      v89 = *(v0 + 456);
      v28 = MEMORY[0x1E69E7CC0];
      while (v27 < *(v26 + 16))
      {
        v29 = *(v0 + 528);
        v30 = *(v0 + 520);
        v31 = *(v0 + 496);
        v32 = *(v0 + 504);
        v33 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v34 = *(v89 + 72);
        sub_1E1096330(v26 + v33 + v34 * v27, v31, type metadata accessor for Music);
        v35 = v31 + *(v88 + 28);
        sub_1E10ADAAC();
        sub_1E10ADC9C();
        LOBYTE(v35) = sub_1E10ADC4C();
        v90(v30, v32);
        v90(v29, v32);
        v36 = *(v0 + 496);
        if (v35)
        {
          sub_1E1096278(v36, *(v0 + 488), type metadata accessor for Music);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E1059EB4(0, *(v28 + 16) + 1, 1);
            v28 = v97;
          }

          v39 = *(v28 + 16);
          v38 = *(v28 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1E1059EB4(v38 > 1, v39 + 1, 1);
            v28 = v97;
          }

          v40 = *(v0 + 488);
          *(v28 + 16) = v39 + 1;
          result = sub_1E1096278(v40, v28 + v33 + v39 * v34, type metadata accessor for Music);
        }

        else
        {
          result = sub_1E1096398(v36, type metadata accessor for Music);
        }

        ++v27;
        v26 = v94;
        if (v92 == v27)
        {
          v41 = *(v94 + 16);
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v41 = 0;
      v28 = MEMORY[0x1E69E7CC0];
LABEL_16:
      v42 = *(v0 + 96);
      *(v0 + 192) = *(v0 + 80);
      *(v0 + 208) = v42;
      v43 = *(v0 + 112);
      v44 = *(v0 + 32);
      *(v0 + 128) = *(v0 + 16);
      *(v0 + 144) = v44;
      v45 = *(v0 + 64);
      *(v0 + 160) = *(v0 + 48);
      *(v0 + 176) = v45;
      *(v0 + 224) = v43;
      *(v0 + 232) = v28;
      result = sub_1E0FF02C8(v0 + 16, v0 + 240);
      if (!v41)
      {
LABEL_25:
        sub_1E0FF0440(v0 + 16, &qword_1ECE8B3D8, &qword_1E10BB2D0);
        v52 = 1;
LABEL_27:
        v55 = *(v0 + 448);
        v56 = *(v0 + 456);
        v58 = *(v0 + 432);
        v57 = *(v0 + 440);
        (*(v56 + 56))(v57, v52, 1, v55);
        sub_1E1096880(v57, v58);
        if ((*(v56 + 48))(v58, 1, v55) == 1)
        {
          v59 = *(v0 + 432);
          v60 = *(v0 + 408);
          sub_1E0FF0440(v0 + 128, &qword_1ECE8B3D8, &qword_1E10BB2D0);
          sub_1E0FF0440(v59, &qword_1ECE8A060, &qword_1E10B4E38);
          v61 = type metadata accessor for ArtistPromotionalAssets();
          (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
        }

        else
        {
          v63 = *(v0 + 464);
          v62 = *(v0 + 472);
          v64 = *(v0 + 448);
          v65 = *(v0 + 408);
          sub_1E1096278(*(v0 + 432), v62, type metadata accessor for Music);
          sub_1E1096278(v62, v63, type metadata accessor for Music);
          v66 = type metadata accessor for ArtistPromotionalAssets();
          sub_1E1096330(v63, v65 + *(v66 + 20), type metadata accessor for Music);
          v67 = (v63 + *(v64 + 60));
          v68 = *v67;
          v69 = v67[1];
          v70 = v67[2];
          v71 = v67[3];

          sub_1E1096398(v63, type metadata accessor for Music);
          *v65 = v68;
          v65[1] = v69;
          v65[2] = v70;
          v65[3] = v71;
          v72 = (v65 + *(v66 + 24));
          v73 = *(v0 + 176);
          v74 = *(v0 + 192);
          v75 = *(v0 + 224);
          v72[5] = *(v0 + 208);
          v72[6] = v75;
          v72[3] = v73;
          v72[4] = v74;
          v77 = *(v0 + 144);
          v76 = *(v0 + 160);
          *v72 = *(v0 + 128);
          v72[1] = v77;
          v72[2] = v76;
          (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
        }

        v78 = *(v0 + 560);
        v79 = *(v0 + 536);
        v80 = *(v0 + 528);
        v81 = *(v0 + 520);
        v83 = *(v0 + 488);
        v82 = *(v0 + 496);
        v85 = *(v0 + 472);
        v84 = *(v0 + 480);
        v86 = *(v0 + 464);
        v87 = *(v0 + 440);
        v95 = *(v0 + 432);

        v20 = *(v0 + 8);
        goto LABEL_31;
      }

      v46 = 0;
      v48 = *(v0 + 448);
      v47 = *(v0 + 456);
      while (v46 < *(v94 + 16))
      {
        v49 = *(v0 + 480);
        sub_1E1096330(v94 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, v49, type metadata accessor for Music);
        v50 = (v49 + *(v48 + 60));
        if (*(*v50 + 16) || *(v50[3] + 16) || *(v50[1] + 16) || *(v50[2] + 16) || (v51 = *(v0 + 480), *(*(v51 + *(v48 + 64)) + 16)))
        {
          v53 = *(v0 + 480);
          v54 = *(v0 + 440);
          sub_1E0FF0440(v0 + 16, &qword_1ECE8B3D8, &qword_1E10BB2D0);
          sub_1E1096278(v53, v54, type metadata accessor for Music);
          v52 = 0;
          goto LABEL_27;
        }

        ++v46;
        result = sub_1E1096398(v51, type metadata accessor for Music);
        if (v41 == v46)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
    return result;
  }

  v11 = *(v0 + 560);
  v12 = *(v0 + 536);
  v13 = *(v0 + 528);
  v14 = *(v0 + 520);
  v16 = *(v0 + 488);
  v15 = *(v0 + 496);
  v18 = *(v0 + 472);
  v17 = *(v0 + 480);
  v19 = *(v0 + 464);
  v91 = *(v0 + 440);
  v93 = *(v0 + 432);

  v20 = *(v0 + 8);
LABEL_31:

  return v20();
}

uint64_t sub_1E1094BFC()
{
  v1 = v0[71];
  v2 = v0[67];
  v3 = v0[63];
  v4 = v0[64];

  (*(v4 + 8))(v2, v3);
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v10 = v0[61];
  v9 = v0[62];
  v12 = v0[59];
  v11 = v0[60];
  v13 = v0[58];
  v14 = v0[55];
  v17 = v0[54];
  v18 = v0[77];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E1094D1C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1E10ADCBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E10ADE1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E10ADE2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788) - 8) + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v29 - v25;
  sub_1E10ADDEC();
  (*(v9 + 104))(v14, *MEMORY[0x1E6969A48], v8);
  sub_1E10ADC9C();
  sub_1E10ADDFC();
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  (*(v16 + 8))(v21, v15);
  v27 = *(v2 + 48);
  if (v27(v26, 1, v1) != 1)
  {
    return (*(v2 + 32))(v30, v26, v1);
  }

  sub_1E10ADC9C();
  result = (v27)(v26, 1, v1);
  if (result != 1)
  {
    return sub_1E0FF0440(v26, &unk_1ECE8B220, &qword_1E10BA788);
  }

  return result;
}

unint64_t sub_1E1095040()
{
  v1 = 0x656C756465686373;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1E10950A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1096748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E10950C8(uint64_t a1)
{
  v2 = sub_1E10961C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1095104(uint64_t a1)
{
  v2 = sub_1E10961C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtistPromotionalAssets.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3E8, &qword_1E10BB2F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v27 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10961C4();
  sub_1E10AEA5C();
  v13 = v3[1];
  v14 = v3[2];
  v15 = v3[3];
  *&v35 = *v3;
  *(&v35 + 1) = v13;
  *&v36 = v14;
  *(&v36 + 1) = v15;
  LOBYTE(v28) = 0;
  sub_1E10939CC(v35);
  sub_1E1004AA8();
  sub_1E10AE85C();
  sub_1E1096218(v35);
  if (!v2)
  {
    v16 = type metadata accessor for ArtistPromotionalAssets();
    v17 = *(v16 + 20);
    v43 = 1;
    type metadata accessor for Music();
    sub_1E10965E8(&qword_1EE17EB70, type metadata accessor for Music);
    sub_1E10AE8AC();
    v19 = (v3 + *(v16 + 24));
    v20 = v19[3];
    v21 = v19[5];
    v39 = v19[4];
    v40 = v21;
    v22 = v19[5];
    v41 = v19[6];
    v23 = v19[1];
    v35 = *v19;
    v36 = v23;
    v24 = v19[3];
    v26 = *v19;
    v25 = v19[1];
    v37 = v19[2];
    v38 = v24;
    v32 = v39;
    v33 = v22;
    v34 = v19[6];
    v28 = v26;
    v29 = v25;
    v30 = v37;
    v31 = v20;
    v42 = 2;
    sub_1E1093B38(&v35, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
    sub_1E10962E0(&qword_1ECE8B3F8);
    sub_1E10AE8AC();
    v27[4] = v32;
    v27[5] = v33;
    v27[6] = v34;
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    v27[3] = v31;
    sub_1E0FF0440(v27, &qword_1ECE8B3D8, &qword_1E10BB2D0);
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t ArtistPromotionalAssets.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (*v1)
  {
    v6 = v1[2];
    v5 = v1[3];
    v7 = v1[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(a1, v4);
    sub_1E0FEC1BC(a1, v7);
    sub_1E0FEC108(a1, v6);
    sub_1E0FEBFF0(a1, v5);
  }

  else
  {
    sub_1E10AE9EC();
  }

  v8 = type metadata accessor for ArtistPromotionalAssets();
  v9 = v1 + *(v8 + 20);
  Music.hash(into:)(a1);
  v10 = (v2 + *(v8 + 24));
  v16 = v10[4];
  v17 = v10[5];
  v18 = v10[6];
  v12 = *v10;
  v13 = v10[1];
  v14 = v10[2];
  v15 = v10[3];
  return sub_1E1093818(a1);
}

uint64_t ArtistPromotionalAssets.hashValue.getter()
{
  v1 = v0;
  sub_1E10AE9CC();
  v2 = *v0;
  if (*v0)
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = v0[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(v13, v2);
    sub_1E0FEC1BC(v13, v5);
    sub_1E0FEC108(v13, v4);
    sub_1E0FEBFF0(v13, v3);
  }

  else
  {
    sub_1E10AE9EC();
  }

  v6 = type metadata accessor for ArtistPromotionalAssets();
  v7 = v0 + *(v6 + 20);
  Music.hash(into:)(v13);
  v8 = (v1 + *(v6 + 24));
  v9 = v8[5];
  v18 = v8[4];
  v19 = v9;
  v20 = v8[6];
  v10 = v8[1];
  v14 = *v8;
  v15 = v10;
  v11 = v8[3];
  v16 = v8[2];
  v17 = v11;
  sub_1E1093818(v13);
  return sub_1E10AEA0C();
}

uint64_t ArtistPromotionalAssets.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = *(*(type metadata accessor for Music() - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B400, &qword_1E10BB2F8);
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ArtistPromotionalAssets();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E10961C4();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v23 = v20;
  v42 = 0;
  sub_1E1004D30();
  v24 = v33;
  sub_1E10AE7AC();
  v25 = v36;
  *v23 = v35;
  v23[1] = v25;
  LOBYTE(v35) = 1;
  sub_1E10965E8(&qword_1EE17EB58, type metadata accessor for Music);
  sub_1E10AE7FC();
  sub_1E1096278(v8, v23 + *(v15 + 20), type metadata accessor for Music);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
  v42 = 2;
  sub_1E10962E0(&qword_1ECE8B408);
  sub_1E10AE7FC();
  (*(v32 + 8))(v14, v24);
  v26 = (v23 + *(v15 + 24));
  v27 = v40;
  v26[4] = v39;
  v26[5] = v27;
  v26[6] = v41;
  v28 = v36;
  *v26 = v35;
  v26[1] = v28;
  v29 = v38;
  v26[2] = v37;
  v26[3] = v29;
  sub_1E1096330(v23, v31, type metadata accessor for ArtistPromotionalAssets);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1E1096398(v23, type metadata accessor for ArtistPromotionalAssets);
}

uint64_t sub_1E1095A68(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  if (*v2)
  {
    v8 = v2[2];
    v7 = v2[3];
    v9 = v2[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(a1, v6);
    sub_1E0FEC1BC(a1, v9);
    sub_1E0FEC108(a1, v8);
    sub_1E0FEBFF0(a1, v7);
  }

  else
  {
    sub_1E10AE9EC();
  }

  v10 = v2 + *(a2 + 20);
  Music.hash(into:)(a1);
  v11 = (v4 + *(a2 + 24));
  v17 = v11[4];
  v18 = v11[5];
  v19 = v11[6];
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[3];
  return sub_1E1093818(a1);
}

uint64_t sub_1E1095B50(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E10AE9CC();
  v5 = *v2;
  if (*v2)
  {
    v7 = v2[2];
    v6 = v2[3];
    v8 = v2[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(v15, v5);
    sub_1E0FEC1BC(v15, v8);
    sub_1E0FEC108(v15, v7);
    sub_1E0FEBFF0(v15, v6);
  }

  else
  {
    sub_1E10AE9EC();
  }

  v9 = v2 + *(a2 + 20);
  Music.hash(into:)(v15);
  v10 = (v4 + *(a2 + 24));
  v11 = v10[5];
  v20 = v10[4];
  v21 = v11;
  v22 = v10[6];
  v12 = v10[1];
  v16 = *v10;
  v17 = v12;
  v13 = v10[3];
  v18 = v10[2];
  v19 = v13;
  sub_1E1093818(v15);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1095C84@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 128))
  {
    v2 = *(v1 + 32);
    v21 = *(v1 + 16);
    v22 = v2;
    v3 = *(v1 + 64);
    v23 = *(v1 + 48);
    v24 = v3;
    *&v25 = *(v1 + 80);
    sub_1E0FEE058(&v21, v20);

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v4 = sub_1E10ADF9C();
    __swift_project_value_buffer(v4, qword_1EE185540);
    v5 = sub_1E10ADF7C();
    v6 = sub_1E10AE44C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1E1078CFC(0x636973754DLL, 0xE500000000000000, v20);
      _os_log_impl(&dword_1E0FDF000, v5, v6, "Failed to cast ParticipantSchedule to %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12EE9E0](v8, -1, -1);
      MEMORY[0x1E12EE9E0](v7, -1, -1);
    }

    sub_1E10095EC();
    swift_allocError();
    *v9 = xmmword_1E10B4430;
    return swift_willThrow();
  }

  else
  {
    v11 = *(v1 + 112);
    v26 = *(v1 + 96);
    v12 = v26;
    v27 = v11;
    v13 = *(v1 + 80);
    v24 = *(v1 + 64);
    v14 = v24;
    v25 = v13;
    v16 = *(v1 + 32);
    v21 = *(v1 + 16);
    v15 = v21;
    v22 = v16;
    v23 = *(v1 + 48);
    v17 = v23;
    v18 = *(&v27 + 1);
    *(a1 + 64) = v13;
    *(a1 + 80) = v12;
    v19 = *(v1 + 112);
    *a1 = v15;
    *(a1 + 16) = v16;
    *(a1 + 32) = v17;
    *(a1 + 48) = v14;
    *(a1 + 96) = v19;
    *(a1 + 104) = v18;
    sub_1E0FF02C8(&v21, v20);
  }
}

uint64_t _s12ShazamEvents23ArtistPromotionalAssetsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  if (*a1)
  {
    v12 = *a1;
    if (v9)
    {
      if (sub_1E0FFE8B4(v12, *a2) & 1) != 0 && (sub_1E0FFE8B4(v4, v8) & 1) != 0 && (sub_1E0FFE958(v7, v11))
      {
        v29 = sub_1E0FFEA58(v6, v10);
        sub_1E10939CC(v5);
        sub_1E10939CC(v9);
        sub_1E10939CC(v5);
        sub_1E1096218(v9);

        sub_1E1096218(v5);
        if ((v29 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_17;
      }

      sub_1E10939CC(v5);
      sub_1E10939CC(v9);
      sub_1E10939CC(v5);
      sub_1E1096218(v9);

      v13 = v5;
LABEL_13:
      sub_1E1096218(v13);
      return 0;
    }

    sub_1E10939CC(v12);
    sub_1E10939CC(0);
    sub_1E10939CC(v5);

LABEL_12:
    sub_1E1096218(v5);
    v13 = v9;
    goto LABEL_13;
  }

  sub_1E10939CC(0);
  if (v9)
  {
    sub_1E10939CC(v9);
    goto LABEL_12;
  }

  sub_1E10939CC(0);
  sub_1E1096218(0);
LABEL_17:
  v15 = type metadata accessor for ArtistPromotionalAssets();
  if (_s12ShazamEvents5MusicV2eeoiySbAC_ACtFZ_0((a1 + *(v15 + 20)), (a2 + *(v15 + 20))))
  {
    v16 = *(v15 + 24);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v18 + 5);
    v30[4] = *(v18 + 4);
    v30[5] = v19;
    v20 = *(v18 + 1);
    v30[0] = *v18;
    v30[1] = v20;
    v21 = *(v18 + 3);
    v30[2] = *(v18 + 2);
    v30[3] = v21;
    v22 = *(v18 + 12);
    v23 = *(v18 + 13);
    v24 = *(v17 + 5);
    v33[4] = *(v17 + 4);
    v33[5] = v24;
    v25 = *(v17 + 1);
    v33[0] = *v17;
    v33[1] = v25;
    v26 = *(v17 + 3);
    v27 = *(v17 + 12);
    v28 = *(v17 + 13);
    v33[2] = *(v17 + 2);
    v33[3] = v26;
    v34 = v27;
    v35 = v28;
    v31 = v22;
    v32 = v23;
    if (_s12ShazamEvents5MusicV6ArtistV2eeoiySbAE_AEtFZ_0(v33, v30) & 1) != 0 && (sub_1E0FFE6FC(v28, v23))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E10961C4()
{
  result = qword_1ECE8B3F0;
  if (!qword_1ECE8B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3F0);
  }

  return result;
}

uint64_t sub_1E1096218(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E1096278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10962E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1096330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1096398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E1096468()
{
  sub_1E1096504();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Music();
    if (v1 <= 0x3F)
    {
      sub_1E1096554();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E1096504()
{
  if (!qword_1ECE8B428)
  {
    v0 = sub_1E10AE4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8B428);
    }
  }
}

void sub_1E1096554()
{
  if (!qword_1ECE8B430)
  {
    type metadata accessor for Music();
    sub_1E10965E8(&qword_1ECE8B438, type metadata accessor for Music);
    v0 = type metadata accessor for ParticipantSchedule();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8B430);
    }
  }
}

uint64_t sub_1E10965E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E1096644()
{
  result = qword_1ECE8B440;
  if (!qword_1ECE8B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B440);
  }

  return result;
}

unint64_t sub_1E109669C()
{
  result = qword_1ECE8B448;
  if (!qword_1ECE8B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B448);
  }

  return result;
}

unint64_t sub_1E10966F4()
{
  result = qword_1ECE8B450;
  if (!qword_1ECE8B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B450);
  }

  return result;
}

uint64_t sub_1E1096748(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E10BF780 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E10C0E20 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E1096880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A060, &qword_1E10B4E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E10969E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B618, &qword_1E10BBDB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E5C();
  sub_1E10AEA5C();
  v19 = 0;
  sub_1E10AE86C();
  if (v5)
  {
    return (*(v8 + 8))(v13, v7);
  }

  v18 = 1;
  sub_1E10AE89C();
  v17 = 2;
  sub_1E10AE89C();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E1096B94()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1E1096BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1098240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1096C08(uint64_t a1)
{
  v2 = sub_1E1099E5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1096C44(uint64_t a1)
{
  v2 = sub_1E1099E5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1096C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E1098350(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1E1096CD0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B570, &qword_1E10BB7B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099868();
  sub_1E10AEA5C();
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
  sub_1E1099790();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E1096E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736F746F6870 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1096EC4(uint64_t a1)
{
  v2 = sub_1E1099868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1096F00(uint64_t a1)
{
  v2 = sub_1E1099868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E1096F3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E1098558(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1E1096FB0()
{
  result = qword_1ECE8B460;
  if (!qword_1ECE8B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B460);
  }

  return result;
}

unint64_t sub_1E1097004()
{
  result = qword_1ECE8B468;
  if (!qword_1ECE8B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B468);
  }

  return result;
}

uint64_t sub_1E1097058(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B548, &qword_1E10BB7A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099664();
  sub_1E10AEA5C();
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
  sub_1E1099790();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E10971D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657061706C6C6177 && a2 == 0xEA00000000007372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1097260(uint64_t a1)
{
  v2 = sub_1E1099664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109729C(uint64_t a1)
{
  v2 = sub_1E1099664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E10972D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E10986DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1E109734C()
{
  result = qword_1ECE8B470;
  if (!qword_1ECE8B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B470);
  }

  return result;
}

unint64_t sub_1E10973A0()
{
  result = qword_1ECE8B478;
  if (!qword_1ECE8B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B478);
  }

  return result;
}

uint64_t sub_1E10973F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B5E8, &qword_1E10BBD90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099D4C();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v22) = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v22) = 1;
    sub_1E10AE86C();
    v18 = *(v3 + 3);
    v22 = *(v3 + 2);
    v23 = v18;
    v21[15] = 2;
    sub_1E1099814();
    sub_1E10AE8AC();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v22) = 3;
    sub_1E10AE86C();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E10975F4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4C8, &qword_1E10BB778);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1098ED0();
  sub_1E10AEA5C();
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4B0, &qword_1E10BB770);
  sub_1E1098FFC();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E1097750()
{
  v1 = 25705;
  v2 = 0x4177656976657270;
  if (*v0 != 2)
  {
    v2 = 0x656C746974;
  }

  if (*v0)
  {
    v1 = 0x6C7255736C68;
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

uint64_t sub_1E10977C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1098860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E10977EC(uint64_t a1)
{
  v2 = sub_1E1099D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1097828(uint64_t a1)
{
  v2 = sub_1E1099D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E1097864@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E10989BC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1E10978DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736F65646976 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1097960(uint64_t a1)
{
  v2 = sub_1E1098ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109799C(uint64_t a1)
{
  v2 = sub_1E1098ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E10979D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E1098D4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E1097A20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B600, &qword_1E10BBDA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E08();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v18) = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v15 = *(v3 + 2);
    v18 = *(v3 + 1);
    v19 = v15;
    v17[15] = 1;
    sub_1E1099814();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E1097B9C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B508, &qword_1E10BB790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099460();
  sub_1E10AEA5C();
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4F0, &qword_1E10BB788);
  sub_1E109958C();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E1097CF8()
{
  if (*v0)
  {
    result = 0x4177656976657270;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1E1097D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E1097E1C(uint64_t a1)
{
  v2 = sub_1E1099E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1097E58(uint64_t a1)
{
  v2 = sub_1E1099E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1097E94@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E10990D4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1E1097F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6361466863746177 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1097F9C(uint64_t a1)
{
  v2 = sub_1E1099460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1097FD8(uint64_t a1)
{
  v2 = sub_1E1099460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E1098014@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E10992DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1E1098088()
{
  result = qword_1ECE8B480;
  if (!qword_1ECE8B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B480);
  }

  return result;
}

unint64_t sub_1E10980DC()
{
  result = qword_1ECE8B488;
  if (!qword_1ECE8B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B488);
  }

  return result;
}

uint64_t sub_1E109815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1098198()
{
  result = qword_1ECE8B490;
  if (!qword_1ECE8B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B490);
  }

  return result;
}

unint64_t sub_1E10981EC()
{
  result = qword_1ECE8B498;
  if (!qword_1ECE8B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B498);
  }

  return result;
}

uint64_t sub_1E1098240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E1098350(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B608, &qword_1E10BBDA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E5C();
  sub_1E10AEA3C();
  if (!v1)
  {
    v15 = 0;
    v10 = sub_1E10AE7BC();
    v14 = 1;
    sub_1E10AE7EC();
    v13 = 2;
    sub_1E10AE7EC();
    (*(v4 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void *sub_1E1098558(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B560, &qword_1E10BB7B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v13 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099868();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E10996B8();
    sub_1E10AE7FC();
    (*(v4 + 8))(v9, v3);
    v11 = v13[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

void *sub_1E10986DC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B520, &qword_1E10BB798);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v13 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099664();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E10996B8();
    sub_1E10AE7FC();
    (*(v4 + 8))(v9, v3);
    v11 = v13[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t sub_1E1098860(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E10989BC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B5D8, &qword_1E10BBD88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099D4C();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v13 = sub_1E10AE7BC();
  v30 = v14;
  LOBYTE(v36) = 1;
  v15 = sub_1E10AE7BC();
  *(&v29 + 1) = v16;
  *&v29 = v15;
  LOBYTE(v31) = 2;
  sub_1E109973C();
  sub_1E10AE7FC();
  v28 = v36;
  v26 = *(&v37 + 1);
  v27 = v37;
  v44 = 3;
  v17 = sub_1E10AE7BC();
  v19 = v18;
  (*(v6 + 8))(v11, v5);
  v20 = v30;
  *&v31 = v13;
  *(&v31 + 1) = v30;
  v21 = v29;
  v32 = v29;
  v22 = *(&v28 + 1);
  v33 = v28;
  *&v34 = v27;
  *(&v34 + 1) = v26;
  *&v35 = v17;
  *(&v35 + 1) = v19;
  sub_1E1099DA0(&v31, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v36 = v13;
  *(&v36 + 1) = v20;
  v37 = __PAIR128__(*(&v29 + 1), v21);
  v38 = v28;
  v39 = v22;
  v40 = v27;
  v41 = v26;
  v42 = v17;
  v43 = v19;
  result = sub_1E1099DD8(&v36);
  v24 = v34;
  a2[2] = v33;
  a2[3] = v24;
  a2[4] = v35;
  v25 = v32;
  *a2 = v31;
  a2[1] = v25;
  return result;
}

void *sub_1E1098D4C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4A0, &qword_1E10BB768);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v13 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1098ED0();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4B0, &qword_1E10BB770);
    sub_1E1098F24();
    sub_1E10AE7FC();
    (*(v4 + 8))(v9, v3);
    v11 = v13[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

unint64_t sub_1E1098ED0()
{
  result = qword_1ECE8B4A8;
  if (!qword_1ECE8B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4A8);
  }

  return result;
}

unint64_t sub_1E1098F24()
{
  result = qword_1ECE8B4B8;
  if (!qword_1ECE8B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4B0, &qword_1E10BB770);
    sub_1E1098FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4B8);
  }

  return result;
}

unint64_t sub_1E1098FA8()
{
  result = qword_1ECE8B4C0;
  if (!qword_1ECE8B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4C0);
  }

  return result;
}

unint64_t sub_1E1098FFC()
{
  result = qword_1ECE8B4D0;
  if (!qword_1ECE8B4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4B0, &qword_1E10BB770);
    sub_1E1099080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4D0);
  }

  return result;
}

unint64_t sub_1E1099080()
{
  result = qword_1ECE8B4D8;
  if (!qword_1ECE8B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4D8);
  }

  return result;
}

uint64_t sub_1E10990D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B5F0, &qword_1E10BBD98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E08();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v13 = sub_1E10AE7BC();
  v15 = v14;
  v16 = v13;
  v24 = 1;
  sub_1E109973C();
  sub_1E10AE7FC();
  (*(v6 + 8))(v11, v5);
  v20 = v21;
  v17 = v22;
  v18 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v20;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  return result;
}

void *sub_1E10992DC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4E0, &qword_1E10BB780);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v13 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099460();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4F0, &qword_1E10BB788);
    sub_1E10994B4();
    sub_1E10AE7FC();
    (*(v4 + 8))(v9, v3);
    v11 = v13[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

unint64_t sub_1E1099460()
{
  result = qword_1ECE8B4E8;
  if (!qword_1ECE8B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4E8);
  }

  return result;
}

unint64_t sub_1E10994B4()
{
  result = qword_1ECE8B4F8;
  if (!qword_1ECE8B4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4F0, &qword_1E10BB788);
    sub_1E1099538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4F8);
  }

  return result;
}

unint64_t sub_1E1099538()
{
  result = qword_1ECE8B500;
  if (!qword_1ECE8B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B500);
  }

  return result;
}

unint64_t sub_1E109958C()
{
  result = qword_1ECE8B510;
  if (!qword_1ECE8B510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4F0, &qword_1E10BB788);
    sub_1E1099610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B510);
  }

  return result;
}

unint64_t sub_1E1099610()
{
  result = qword_1ECE8B518;
  if (!qword_1ECE8B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B518);
  }

  return result;
}

unint64_t sub_1E1099664()
{
  result = qword_1ECE8B528;
  if (!qword_1ECE8B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B528);
  }

  return result;
}

unint64_t sub_1E10996B8()
{
  result = qword_1ECE8B538;
  if (!qword_1ECE8B538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E109973C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B538);
  }

  return result;
}

unint64_t sub_1E109973C()
{
  result = qword_1ECE8B540;
  if (!qword_1ECE8B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B540);
  }

  return result;
}

unint64_t sub_1E1099790()
{
  result = qword_1ECE8B550;
  if (!qword_1ECE8B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E1099814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B550);
  }

  return result;
}

unint64_t sub_1E1099814()
{
  result = qword_1ECE8B558;
  if (!qword_1ECE8B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B558);
  }

  return result;
}

unint64_t sub_1E1099868()
{
  result = qword_1ECE8B568;
  if (!qword_1ECE8B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B568);
  }

  return result;
}

unint64_t sub_1E1099930()
{
  result = qword_1ECE8B578;
  if (!qword_1ECE8B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B578);
  }

  return result;
}

unint64_t sub_1E1099988()
{
  result = qword_1ECE8B580;
  if (!qword_1ECE8B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B580);
  }

  return result;
}

unint64_t sub_1E10999E0()
{
  result = qword_1ECE8B588;
  if (!qword_1ECE8B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B588);
  }

  return result;
}

unint64_t sub_1E1099A38()
{
  result = qword_1ECE8B590;
  if (!qword_1ECE8B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B590);
  }

  return result;
}

unint64_t sub_1E1099A90()
{
  result = qword_1ECE8B598;
  if (!qword_1ECE8B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B598);
  }

  return result;
}

unint64_t sub_1E1099AE8()
{
  result = qword_1ECE8B5A0;
  if (!qword_1ECE8B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5A0);
  }

  return result;
}

unint64_t sub_1E1099B40()
{
  result = qword_1ECE8B5A8;
  if (!qword_1ECE8B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5A8);
  }

  return result;
}

unint64_t sub_1E1099B98()
{
  result = qword_1ECE8B5B0;
  if (!qword_1ECE8B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5B0);
  }

  return result;
}

unint64_t sub_1E1099BF0()
{
  result = qword_1ECE8B5B8;
  if (!qword_1ECE8B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5B8);
  }

  return result;
}

unint64_t sub_1E1099C48()
{
  result = qword_1ECE8B5C0;
  if (!qword_1ECE8B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5C0);
  }

  return result;
}

unint64_t sub_1E1099CA0()
{
  result = qword_1ECE8B5C8;
  if (!qword_1ECE8B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5C8);
  }

  return result;
}

unint64_t sub_1E1099CF8()
{
  result = qword_1ECE8B5D0;
  if (!qword_1ECE8B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5D0);
  }

  return result;
}

unint64_t sub_1E1099D4C()
{
  result = qword_1ECE8B5E0;
  if (!qword_1ECE8B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5E0);
  }

  return result;
}

unint64_t sub_1E1099E08()
{
  result = qword_1ECE8B5F8;
  if (!qword_1ECE8B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5F8);
  }

  return result;
}

unint64_t sub_1E1099E5C()
{
  result = qword_1ECE8B610;
  if (!qword_1ECE8B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B610);
  }

  return result;
}

unint64_t sub_1E1099EE4()
{
  result = qword_1ECE8B620;
  if (!qword_1ECE8B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B620);
  }

  return result;
}

unint64_t sub_1E1099F3C()
{
  result = qword_1ECE8B628;
  if (!qword_1ECE8B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B628);
  }

  return result;
}

unint64_t sub_1E1099F94()
{
  result = qword_1ECE8B630;
  if (!qword_1ECE8B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B630);
  }

  return result;
}

unint64_t sub_1E1099FEC()
{
  result = qword_1ECE8B638;
  if (!qword_1ECE8B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B638);
  }

  return result;
}

unint64_t sub_1E109A044()
{
  result = qword_1ECE8B640;
  if (!qword_1ECE8B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B640);
  }

  return result;
}

unint64_t sub_1E109A09C()
{
  result = qword_1ECE8B648;
  if (!qword_1ECE8B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B648);
  }

  return result;
}

unint64_t sub_1E109A0F4()
{
  result = qword_1ECE8B650;
  if (!qword_1ECE8B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B650);
  }

  return result;
}

unint64_t sub_1E109A14C()
{
  result = qword_1ECE8B658;
  if (!qword_1ECE8B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B658);
  }

  return result;
}

unint64_t sub_1E109A1A4()
{
  result = qword_1ECE8B660;
  if (!qword_1ECE8B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B660);
  }

  return result;
}

uint64_t sub_1E109A208()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E109A270()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E109A2C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E109A324(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (v7 = sub_1E10AE8FC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E10AE8FC();
    }
  }

  return result;
}

unint64_t sub_1E109A3CC()
{
  result = qword_1ECE8B668;
  if (!qword_1ECE8B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B668);
  }

  return result;
}

unint64_t sub_1E109A424()
{
  result = qword_1ECE8B670;
  if (!qword_1ECE8B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B670);
  }

  return result;
}

uint64_t sub_1E109A488@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E18, &qword_1E10B6B80) + 44);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 7);
  v58 = *(v5 + 6);
  v59 = v8;
  v9 = *(v5 + 5);
  v56 = *(v5 + 4);
  v57 = v9;
  v10 = *(v5 + 3);
  v54 = *(v5 + 2);
  v55 = v10;
  v53 = *(v5 + 1);
  v52[0] = v6;
  v52[1] = v7;
  if (sub_1E10306A0(v52) == 1)
  {
    goto LABEL_8;
  }

  v11 = *(v5 + 1);
  v43[0] = *v5;
  v43[1] = v11;
  v43[2] = *(v5 + 2);
  v12 = *(v5 + 6);
  v13 = v5 + 56;
  v14 = *(v5 + 7);
  v15 = *(v5 + 8);
  v47 = *(v5 + 72);
  v48 = *(v5 + 88);
  v16 = *(v5 + 13);
  v17 = *(v5 + 14);
  v18 = *(v5 + 15);
  v44 = v12;
  v45 = v14;
  v49 = v16;
  v50 = v17;
  v46 = v15;
  v31 = v17;
  v51 = v18;
  if (sub_1E10306A0(v43) == 1)
  {
    goto LABEL_8;
  }

  v29 = v4;
  v30 = v3;
  v28 = v6;
  if (v15)
  {
    v27 = v14;
  }

  else
  {
    v31 = 0;
    v18 = 0;
    v27 = 0;
  }

  v32 = *v5;
  v19 = *v13;
  v39 = *(v5 + 72);
  v20 = *(v5 + 104);
  v40 = *(v5 + 88);
  v41 = v20;
  v21 = *(v5 + 2);
  v22 = *(v5 + 3);
  v23 = *(v5 + 4);
  v24 = *(v5 + 5);
  v25 = *(v5 + 6);
  v42 = *(v13 + 8);
  v38 = v19;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  if (sub_1E10306A0(&v32) == 1)
  {
LABEL_8:
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {
    *a1 = v29;
    a1[1] = v30;
    a1[2] = v28;
    a1[3] = v7;
    a1[4] = v31;
    a1[5] = v18;
    a1[6] = v27;
    a1[7] = v15;
    a1[8] = v21;
    a1[9] = v22;
    a1[10] = v23;
    a1[11] = v24;
    a1[12] = v25;
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1E109A6B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1E109A6FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E109A76C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B698, &unk_1E10BC300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109B0A0();
  sub_1E10AEA5C();
  v21 = *v3;
  LOBYTE(v19[0]) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v13 = v3[2];
    v21 = v3[1];
    v22 = v13;
    *&v23 = *(v3 + 6);
    LOBYTE(v19[0]) = 1;
    sub_1E0FEE620();
    sub_1E10AE85C();
    v14 = *(v3 + 72);
    v15 = *(v3 + 104);
    v26[2] = *(v3 + 88);
    v26[3] = v15;
    v27 = *(v3 + 15);
    v26[0] = *(v3 + 56);
    v26[1] = v14;
    v16 = *(v3 + 72);
    v17 = *(v3 + 104);
    v23 = *(v3 + 88);
    v24 = v17;
    v25 = *(v3 + 15);
    v21 = *(v3 + 56);
    v22 = v16;
    v28 = 2;
    sub_1E1028CE0(v26, v19);
    sub_1E1028D50();
    sub_1E10AE85C();
    v19[2] = v23;
    v19[3] = v24;
    v20 = v25;
    v19[1] = v22;
    v19[0] = v21;
    sub_1E1028DA4(v19);
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E109A9F4()
{
  v1 = 0x726F6C6F436762;
  if (*v0 != 1)
  {
    v1 = 1869049708;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E109AA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E109AC24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E109AA68(uint64_t a1)
{
  v2 = sub_1E109B0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109AAA4(uint64_t a1)
{
  v2 = sub_1E109B0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E109AAE0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E109AD3C(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

unint64_t sub_1E109AB4C(uint64_t a1)
{
  *(a1 + 8) = sub_1E109AB7C();
  result = sub_1E109ABD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E109AB7C()
{
  result = qword_1ECE8B678;
  if (!qword_1ECE8B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B678);
  }

  return result;
}

unint64_t sub_1E109ABD0()
{
  result = qword_1ECE8B680;
  if (!qword_1ECE8B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B680);
  }

  return result;
}

uint64_t sub_1E109AC24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E109AD3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B688, &qword_1E10BC2F8);
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109B0A0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v35 = a2;
  LOBYTE(v36) = 0;
  sub_1E0FF4EE4();
  v13 = v63;
  sub_1E10AE7FC();
  v14 = v40;
  v34 = v41;
  LOBYTE(v36) = 1;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  v31 = v40;
  v32 = v14;
  v29 = v42;
  v30 = v41;
  v33 = v43;
  v15 = v44;
  v52 = 2;
  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v12 + 8))(v10, v13);
  v60 = v55;
  v61 = v56;
  v62 = v57;
  v58 = v53;
  v59 = v54;
  v17 = v31;
  v16 = v32;
  v18 = v15;
  v28 = v15;
  v19 = v34;
  *&v36 = v32;
  *(&v36 + 1) = v34;
  v20 = v29;
  v21 = v30;
  *&v37 = v31;
  *(&v37 + 1) = v30;
  *&v38 = v29;
  *(&v38 + 1) = v33;
  *&v39[0] = v18;
  *(&v39[1] + 8) = v54;
  *(&v39[2] + 8) = v55;
  *(&v39[3] + 8) = v56;
  *(&v39[4] + 1) = v57;
  *(v39 + 8) = v53;
  sub_1E109B0F4(&v36, &v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v48 = v59;
  v49 = v60;
  v50 = v61;
  v40 = v16;
  v41 = v19;
  v42 = v17;
  v43 = v21;
  v44 = v20;
  v45 = v33;
  v46 = v28;
  v51 = v62;
  v47 = v58;
  result = sub_1E109B12C(&v40);
  v23 = v39[2];
  v24 = v35;
  v35[4] = v39[1];
  v24[5] = v23;
  v25 = v39[4];
  v24[6] = v39[3];
  v24[7] = v25;
  v26 = v37;
  *v24 = v36;
  v24[1] = v26;
  v27 = v39[0];
  v24[2] = v38;
  v24[3] = v27;
  return result;
}

unint64_t sub_1E109B0A0()
{
  result = qword_1ECE8B690;
  if (!qword_1ECE8B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B690);
  }

  return result;
}

unint64_t sub_1E109B170()
{
  result = qword_1ECE8B6A0;
  if (!qword_1ECE8B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6A0);
  }

  return result;
}

unint64_t sub_1E109B1C8()
{
  result = qword_1ECE8B6A8;
  if (!qword_1ECE8B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6A8);
  }

  return result;
}

unint64_t sub_1E109B220()
{
  result = qword_1ECE8B6B0;
  if (!qword_1ECE8B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6B0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E109B324(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 56);
    v6 = MEMORY[0x1E69E7CC0];
    v21 = a1[1];
    do
    {
      v10 = *(v5 - 3);
      v11 = *(v5 - 2);
      v12 = *(v5 - 1);
      v13 = *v5;
      v14 = v10 == v2 && v11 == v3;
      if (v14 || (v15 = *(v5 - 3), v16 = *(v5 - 2), (sub_1E10AE8FC() & 1) != 0))
      {

        v22 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E1059C7C(0, *(v6 + 16) + 1, 1);
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1E1059C7C((v7 > 1), v8 + 1, 1);
        }

        *(v6 + 16) = v8 + 1;
        v9 = v6 + 32 * v8;
        *(v9 + 32) = v10;
        *(v9 + 40) = v11;
        *(v9 + 48) = v12;
        *(v9 + 56) = v13;
        v3 = v21;
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  sub_1E10ADFAC();
  MEMORY[0x1EEE9AC00](v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE893C0, qword_1E10B23B0);
  sub_1E10AE20C();
  sub_1E0FEDEAC(&qword_1ECE8BAE0, &qword_1ECE893C0, qword_1E10B23B0);
  sub_1E10AE13C();

  return v22;
}

uint64_t sub_1E109B560@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v6 = a1[1];
  v38 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *a1;
    v9 = (a2 + 48);
    while (1)
    {
      v10 = v9[4];
      v11 = v9[6];
      v66 = v9[5];
      v67 = v11;
      v12 = *v9;
      v13 = v9[2];
      v62 = v9[1];
      v63 = v13;
      v14 = v9[2];
      v15 = v9[4];
      v64 = v9[3];
      v65 = v15;
      v16 = *v9;
      v61[0] = *(v9 - 1);
      v61[1] = v16;
      v57 = v10;
      v58 = v66;
      v59 = v9[6];
      v53 = v12;
      v54 = v62;
      v68 = *(v9 + 112);
      v17 = *(&v61[0] + 1);
      v18 = *&v61[0];
      v60 = *(v9 + 112);
      v55 = v14;
      v56 = v64;
      if (v61[0] == __PAIR128__(v6, v8))
      {
        break;
      }

      v19 = sub_1E10AE8FC();
      if (v5)
      {
        goto LABEL_32;
      }

      if (v19)
      {
        goto LABEL_31;
      }

      v44 = __PAIR128__(v17, v18);
      v49 = v57;
      v50 = v58;
      v51 = v59;
      v52 = v60;
      v45 = v53;
      v46 = v54;
      v47 = v55;
      v48 = v56;
      sub_1E10968F0(v61, v42);
      sub_1E109694C(&v44);
      v9 = (v9 + 136);
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v18 = v8;
    if (!v5)
    {
LABEL_31:
      *&v44 = v18;
      *(&v44 + 1) = v17;
      v49 = v57;
      v50 = v58;
      v51 = v59;
      v52 = v60;
      v45 = v53;
      v46 = v54;
      v47 = v55;
      v48 = v56;
      v42[6] = v58;
      v42[7] = v59;
      v43 = v60;
      v42[2] = v54;
      v42[3] = v55;
      v42[4] = v56;
      v42[5] = v57;
      v42[0] = v44;
      v42[1] = v53;
      sub_1E10968F0(v61, v41);
      sub_1E109E1C8(a3, a5);
      return sub_1E109694C(&v44);
    }

LABEL_32:
    sub_1E10968F0(v61, &v44);

    *&v44 = v18;
    *(&v44 + 1) = v17;
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    result = sub_1E109694C(&v44);
    __break(1u);
  }

  else
  {
LABEL_7:
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v20 = sub_1E10ADF9C();
    __swift_project_value_buffer(v20, qword_1EE185540);

    v21 = sub_1E10ADF7C();
    v22 = sub_1E10AE44C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v61[0] = v24;
      v25 = 0xE500000000000000;
      v26 = 0x636973756DLL;
      *v23 = 136315138;
      v27 = 0x80000001E10BF070;
      v28 = 0xD000000000000011;
      if (v38 != 6)
      {
        v28 = 0x66696C746867696ELL;
        v27 = 0xE900000000000065;
      }

      v29 = 0xE700000000000000;
      v30 = 0x72657461656874;
      if (v38 != 4)
      {
        v30 = 0x657665656C707061;
        v29 = 0xEA0000000000746ELL;
      }

      if (v38 <= 5)
      {
        v28 = v30;
        v27 = v29;
      }

      v31 = 0xEE00736D75657375;
      v32 = 0x6D646E6173747261;
      if (v38 != 2)
      {
        v32 = 0x65636E6164;
        v31 = 0xE500000000000000;
      }

      if (v38)
      {
        v26 = 0x74726F7073;
        v25 = 0xE500000000000000;
      }

      if (v38 > 1)
      {
        v26 = v32;
        v25 = v31;
      }

      if (v38 <= 3)
      {
        v33 = v26;
      }

      else
      {
        v33 = v28;
      }

      if (v38 <= 3)
      {
        v34 = v25;
      }

      else
      {
        v34 = v27;
      }

      v35 = sub_1E1078CFC(v33, v34, v61);

      *(v23 + 4) = v35;
      _os_log_impl(&dword_1E0FDF000, v21, v22, "Failed to find %s result in response", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12EE9E0](v24, -1, -1);
      MEMORY[0x1E12EE9E0](v23, -1, -1);
    }

    sub_1E10095EC();
    swift_allocError();
    *v36 = xmmword_1E10B4430;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E109BA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a4;
  v54 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89740, &unk_1E10BCCC0);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v12 = sub_1E10AE3BC();
  v13 = sub_1E10AE4EC();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = &v48 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BAC8, &qword_1E10BCCD0);
  v53 = *(v56 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48 - v21;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BAD0, &qword_1E10BCCD8);
  v23 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  type metadata accessor for EventService.GeoRequest();
  if (swift_dynamicCastMetatype())
  {
    v49 = a7;
    v50 = &v48;
    v60 = a1;
    MEMORY[0x1EEE9AC00](v26, v27);
    v28 = v54;
    *(&v48 - 2) = a5;
    *(&v48 - 1) = v28;
    sub_1E10AE20C();

    swift_getWitnessTable();
    sub_1E10AE12C();
    v57 = v12;
    *(&v48 - 4) = MEMORY[0x1EEE9AC00](v29, v30);
    *(&v48 - 3) = a2;
    v31 = v58;
    *(&v48 - 2) = a3;
    *(&v48 - 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89970, &qword_1E10BCCE0);
    (*(v53 + 104))(v22, *MEMORY[0x1E69E8790], v56);
    sub_1E10AE3CC();

    v32 = v57;
    v33 = v59;
    if (swift_dynamicCast())
    {

      v34 = *(v32 - 8);
      (*(v34 + 56))(v33, 0, 1, v32);
      return (*(v34 + 32))(v49, v33, v32);
    }

    else
    {
      (*(*(v32 - 8) + 56))(v33, 1, 1, v32);
      (*(v51 + 8))(v33, v52);
      if (qword_1EE180170 != -1)
      {
        swift_once();
      }

      v42 = sub_1E10ADF9C();
      __swift_project_value_buffer(v42, qword_1EE185540);
      v43 = sub_1E10ADF7C();
      v44 = sub_1E10AE44C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v60 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_1E1078CFC(0x65757165526F6547, 0xEA00000000007473, &v60);
        _os_log_impl(&dword_1E0FDF000, v43, v44, "Failed to cast result of a %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1E12EE9E0](v46, -1, -1);
        MEMORY[0x1E12EE9E0](v45, -1, -1);
      }

      sub_1E10095EC();
      swift_allocError();
      *v47 = xmmword_1E10B4430;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v36 = sub_1E10ADF9C();
    __swift_project_value_buffer(v36, qword_1EE185540);
    v37 = sub_1E10ADF7C();
    v38 = sub_1E10AE44C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1E1078CFC(0xD000000000000013, 0x80000001E10C0E40, &v60);
      _os_log_impl(&dword_1E0FDF000, v37, v38, "This type of %s is not supported", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1E12EE9E0](v40, -1, -1);
      MEMORY[0x1E12EE9E0](v39, -1, -1);
    }

    sub_1E10095EC();
    swift_allocError();
    *v41 = xmmword_1E10B4430;
    return swift_willThrow();
  }
}

uint64_t sub_1E109C148(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 56);
    v6 = MEMORY[0x1E69E7CC0];
    v21 = a1[1];
    do
    {
      v10 = *(v5 - 3);
      v11 = *(v5 - 2);
      v12 = *(v5 - 1);
      v13 = *v5;
      v14 = v10 == v2 && v11 == v3;
      if (v14 || (v15 = *(v5 - 3), v16 = *(v5 - 2), (sub_1E10AE8FC() & 1) != 0))
      {

        v22 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E1059CB4(0, *(v6 + 16) + 1, 1);
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1E1059CB4((v7 > 1), v8 + 1, 1);
        }

        *(v6 + 16) = v8 + 1;
        v9 = v6 + 32 * v8;
        *(v9 + 32) = v10;
        *(v9 + 40) = v11;
        *(v9 + 48) = v12;
        *(v9 + 56) = v13;
        v3 = v21;
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  type metadata accessor for PartialEvent();
  sub_1E10ADFAC();
  MEMORY[0x1EEE9AC00](v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89740, &unk_1E10BCCC0);
  sub_1E10AE20C();
  sub_1E0FEDEAC(&qword_1ECE8BAC0, &qword_1ECE89740, &unk_1E10BCCC0);
  sub_1E10AE13C();

  return v22;
}

uint64_t sub_1E109C394(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 != 6)
      {
        if (a1 > 3u && a1 > 5u && a1 != 6)
        {
          v3 = 1;
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (a1 <= 3u || a1 != 6)
      {
LABEL_39:
        v3 = sub_1E10AE8FC();
        goto LABEL_40;
      }

      v3 = 1;
    }

    else if (a3 == 4)
    {
      if (a1 != 4)
      {
        goto LABEL_39;
      }

      v3 = 1;
    }

    else
    {
      if (a1 <= 3u || a1 > 5u || a1 == 4)
      {
        goto LABEL_39;
      }

      v3 = 1;
    }
  }

  else
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        if (a1 != 1)
        {
          goto LABEL_39;
        }
      }

      else if (a1)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    if (a3 != 2)
    {
      if (a1 != 3)
      {
        goto LABEL_39;
      }

LABEL_33:
      v3 = 1;
      goto LABEL_40;
    }

    if (a1 != 2)
    {
      goto LABEL_39;
    }

    v3 = 1;
  }

LABEL_40:

  return v3 & 1;
}

uint64_t sub_1E109CC6C()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E109CDE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E10A215C();
  *a2 = result;
  return result;
}

void sub_1E109CE10(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973756DLL;
  v5 = 0x80000001E10BF070;
  v6 = 0xD000000000000011;
  if (v2 != 6)
  {
    v6 = 0x66696C746867696ELL;
    v5 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x72657461656874;
  if (v2 != 4)
  {
    v8 = 0x657665656C707061;
    v7 = 0xEA0000000000746ELL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00736D75657375;
  v10 = 0x6D646E6173747261;
  if (v2 != 2)
  {
    v10 = 0x65636E6164;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x74726F7073;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1E109CF2C()
{
  result = qword_1ECE8B6C8;
  if (!qword_1ECE8B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6C8);
  }

  return result;
}

uint64_t sub_1E109CF80(uint64_t a1)
{
  v2 = sub_1E10A56D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109CFBC(uint64_t a1)
{
  v2 = sub_1E10A56D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109CFF8(uint64_t a1)
{
  v2 = sub_1E10A59E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D034(uint64_t a1)
{
  v2 = sub_1E10A59E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D070(uint64_t a1)
{
  v2 = sub_1E10A546C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D0AC(uint64_t a1)
{
  v2 = sub_1E10A546C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D0E8(uint64_t a1)
{
  v2 = sub_1E10A58E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D124(uint64_t a1)
{
  v2 = sub_1E10A58E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D160(uint64_t a1)
{
  v2 = sub_1E10A55C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D19C(uint64_t a1)
{
  v2 = sub_1E10A55C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D1D8(uint64_t a1)
{
  v2 = sub_1E10A5BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D214(uint64_t a1)
{
  v2 = sub_1E10A5BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D250(uint64_t a1)
{
  v2 = sub_1E10A54C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D28C(uint64_t a1)
{
  v2 = sub_1E10A54C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D2C8(uint64_t a1)
{
  v2 = sub_1E10A5AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D304(uint64_t a1)
{
  v2 = sub_1E10A5AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D340(uint64_t a1)
{
  v2 = sub_1E10A57D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D37C(uint64_t a1)
{
  v2 = sub_1E10A57D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D3B8(uint64_t a1)
{
  v2 = sub_1E10A4378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D3F4(uint64_t a1)
{
  v2 = sub_1E10A4378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74726F7073 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E109D4C8(uint64_t a1)
{
  v2 = sub_1E10A62E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D504(uint64_t a1)
{
  v2 = sub_1E10A62E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D540(uint64_t a1)
{
  v2 = sub_1E10A633C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D57C(uint64_t a1)
{
  v2 = sub_1E10A633C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D5B8(uint64_t a1)
{
  v2 = sub_1E10A4474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D5F4(uint64_t a1)
{
  v2 = sub_1E10A4474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D630()
{
  if (*v0)
  {
    return 0x74726F7073;
  }

  else
  {
    return 0x636973756DLL;
  }
}

uint64_t sub_1E109D65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74726F7073 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E109D730(uint64_t a1)
{
  v2 = sub_1E10A6390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D76C(uint64_t a1)
{
  v2 = sub_1E10A6390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D7A8(uint64_t a1)
{
  v2 = sub_1E10A6438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D7E4(uint64_t a1)
{
  v2 = sub_1E10A6438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E109D8EC(uint64_t a1)
{
  v2 = sub_1E10A63E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D928(uint64_t a1)
{
  v2 = sub_1E10A63E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D964(uint64_t a1)
{
  v2 = sub_1E10A45A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D9A0(uint64_t a1)
{
  v2 = sub_1E10A45A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D9DC(uint64_t a1)
{
  v2 = sub_1E10A76EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DA18(uint64_t a1)
{
  v2 = sub_1E10A76EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DA54(uint64_t a1)
{
  v2 = sub_1E10A79F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DA90(uint64_t a1)
{
  v2 = sub_1E10A79F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DACC()
{
  v1 = *v0;
  v2 = 0x636973756DLL;
  v3 = 0x6C61766974736566;
  if (v1 != 6)
  {
    v3 = 0x66696C746867696ELL;
  }

  v4 = 0x72657461656874;
  if (v1 != 4)
  {
    v4 = 0x656C707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7631457;
  if (v1 != 2)
  {
    v5 = 0x65636E6164;
  }

  if (*v0)
  {
    v2 = 0x74726F7073;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E109DBAC(uint64_t a1)
{
  v2 = sub_1E10A7490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DBE8(uint64_t a1)
{
  v2 = sub_1E10A7490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DC24(uint64_t a1)
{
  v2 = sub_1E10A78F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DC60(uint64_t a1)
{
  v2 = sub_1E10A78F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DC9C(uint64_t a1)
{
  v2 = sub_1E10A75E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DCD8(uint64_t a1)
{
  v2 = sub_1E10A75E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DD14(uint64_t a1)
{
  v2 = sub_1E10A7C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DD50(uint64_t a1)
{
  v2 = sub_1E10A7C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DD8C(uint64_t a1)
{
  v2 = sub_1E10A74E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DDC8(uint64_t a1)
{
  v2 = sub_1E10A74E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DE04(uint64_t a1)
{
  v2 = sub_1E10A7AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DE40(uint64_t a1)
{
  v2 = sub_1E10A7AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E109DEFC(uint64_t a1)
{
  v2 = sub_1E10A77F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DF38(uint64_t a1)
{
  v2 = sub_1E10A77F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5474736575716572 && a2 == 0xED00004449657079;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E109E054(uint64_t a1)
{
  v2 = sub_1E10A6680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109E090(uint64_t a1)
{
  v2 = sub_1E10A6680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109E0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = *(*(a3(0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1E10A86B0(a1, &v15 - v12, a4);
  v13 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a5, v13 ^ 1u, 1, a2);
}

uint64_t sub_1E109E1C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40[1] = a1;
  v41 = a2;
  v3 = type metadata accessor for ParticipantSchedule();
  v4 = sub_1E10AE4EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v40 - v13;
  v55 = *(v2 + 128);
  v15 = *(v2 + 96);
  v52 = *(v2 + 80);
  v53 = v15;
  v54 = *(v2 + 112);
  v16 = *(v2 + 32);
  v51[0] = *(v2 + 16);
  v51[1] = v16;
  v17 = *(v2 + 64);
  v51[2] = *(v2 + 48);
  v51[3] = v17;
  if (v55)
  {
    v18 = *(v2 + 32);
    v43 = *(v2 + 16);
    v44 = v18;
    v19 = *(v2 + 64);
    v45 = *(v2 + 48);
    v46 = v19;
    *&v47 = v52;
    sub_1E0FEE058(v51, v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BAD8, &qword_1E10BCCE8);
    v20 = swift_dynamicCast();
    v21 = *(*(v3 - 8) + 56);
    if (v20)
    {
      v22 = *(v3 - 8);
      v21(v10, 0, 1, v3);
      return (*(v22 + 32))(v41, v10, v3);
    }

    v21(v10, 1, 1, v3);
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v24 = *(v2 + 96);
    v47 = *(v2 + 80);
    v48 = v24;
    v25 = *(v2 + 112);
    v26 = *(v2 + 32);
    v43 = *(v2 + 16);
    v44 = v26;
    v27 = *(v2 + 64);
    v45 = *(v2 + 48);
    v46 = v27;
    v49 = v25;
    v50 = *(&v54 + 1);
    sub_1E0FF02C8(v51, v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
    v28 = swift_dynamicCast();
    v29 = *(*(v3 - 8) + 56);
    if (v28)
    {
      v30 = *(v3 - 8);
      v29(v14, 0, 1, v3);
      return (*(v30 + 32))(v41, v14, v3);
    }

    v29(v14, 1, 1, v3);
    (*(v5 + 8))(v14, v4);
  }

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v31 = sub_1E10ADF9C();
  __swift_project_value_buffer(v31, qword_1EE185540);
  v32 = sub_1E10ADF7C();
  v33 = sub_1E10AE44C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v43 = v35;
    *v34 = 136315138;
    v36 = sub_1E10AEAEC();
    v38 = sub_1E1078CFC(v36, v37, &v43);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1E0FDF000, v32, v33, "Failed to cast ParticipantSchedule to %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12EE9E0](v35, -1, -1);
    MEMORY[0x1E12EE9E0](v34, -1, -1);
  }

  sub_1E10095EC();
  swift_allocError();
  *v39 = xmmword_1E10B4430;
  return swift_willThrow();
}

uint64_t sub_1E109E62C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1E0FEDC50(a1, &v15 - v11, a2, a3);
  v12 = type metadata accessor for PartialEvent();
  v13 = swift_dynamicCast();
  return (*(*(v12 - 8) + 56))(a4, v13 ^ 1u, 1, v12);
}

uint64_t sub_1E109E800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v19 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B6E8, &qword_1E10BCA50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A4378();
  sub_1E10AEA5C();
  v20 = a2;
  v21 = a3;
  v23 = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v5)
  {
    v20 = v19;
    LOBYTE(v21) = v22;
    v23 = 1;
    sub_1E10A4420();
    sub_1E10AE8AC();
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1E109E9AC(void *a1, uint64_t a2, int a3)
{
  v83 = a3;
  v84 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B858, &qword_1E10BCB08);
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B860, &qword_1E10BCB10);
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v77 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B868, &qword_1E10BCB18);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B870, &qword_1E10BCB20);
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v71 = &v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B878, &qword_1E10BCB28);
  v69 = *(v24 - 8);
  v70 = v24;
  v25 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v63 - v28;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B880, &qword_1E10BCB30);
  v66 = *(v67 - 8);
  v29 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v63 - v32;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B888, &qword_1E10BCB38);
  v64 = *(v65 - 8);
  v34 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v63 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B890, &qword_1E10BCB40);
  v63 = *(v39 - 8);
  v40 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v63 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B898, &qword_1E10BCB48);
  v46 = *(v45 - 8);
  v85 = v45;
  v86 = v46;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v63 - v50;
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A546C();
  sub_1E10AEA5C();
  if (v83 > 3u)
  {
    if (v83 > 5u)
    {
      v55 = v85;
      if (v83 == 6)
      {
        LOBYTE(v87) = 6;
        sub_1E10A55C8();
        v56 = v77;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7C0, &qword_1E10BCAD0);
        sub_1E10A5DB4();
        v57 = v79;
        sub_1E10AE8AC();
        v58 = v78;
      }

      else
      {
        LOBYTE(v87) = 7;
        sub_1E10A54C0();
        v56 = v80;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7A8, &qword_1E10BCAC8);
        sub_1E10A5D00();
        v57 = v82;
        sub_1E10AE8AC();
        v58 = v81;
      }
    }

    else
    {
      v55 = v85;
      if (v83 == 4)
      {
        LOBYTE(v87) = 4;
        sub_1E10A57D8();
        v56 = v71;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7F0, &qword_1E10BCAE0);
        sub_1E10A5F1C();
        v57 = v73;
        sub_1E10AE8AC();
        v58 = v72;
      }

      else
      {
        LOBYTE(v87) = 5;
        sub_1E10A56D0();
        v56 = v74;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7D8, &qword_1E10BCAD8);
        sub_1E10A5E68();
        v57 = v76;
        sub_1E10AE8AC();
        v58 = v75;
      }
    }

    goto LABEL_16;
  }

  if (v83 > 1u)
  {
    if (v83 == 2)
    {
      LOBYTE(v87) = 2;
      sub_1E10A59E8();
      v55 = v85;
      sub_1E10AE82C();
      v87 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B820, &qword_1E10BCAF0);
      sub_1E10A6084();
      v59 = v67;
      sub_1E10AE8AC();
      (*(v66 + 8))(v33, v59);
      v60 = *(v86 + 8);
      v61 = v51;
      return v60(v61, v55);
    }

    LOBYTE(v87) = 3;
    sub_1E10A58E0();
    v56 = v68;
    v55 = v85;
    sub_1E10AE82C();
    v87 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B808, &qword_1E10BCAE8);
    sub_1E10A5FD0();
    v57 = v70;
    sub_1E10AE8AC();
    v58 = v69;
LABEL_16:
    (*(v58 + 8))(v56, v57);
    v60 = *(v86 + 8);
    v61 = v51;
    return v60(v61, v55);
  }

  if (!v83)
  {
    LOBYTE(v87) = 0;
    sub_1E10A5BF8();
    v53 = v85;
    sub_1E10AE82C();
    v87 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
    sub_1E10A61EC();
    sub_1E10AE8AC();
    (*(v63 + 8))(v44, v39);
    return (*(v86 + 8))(v51, v53);
  }

  LOBYTE(v87) = 1;
  sub_1E10A5AF0();
  v55 = v85;
  sub_1E10AE82C();
  v87 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
  sub_1E10A6138();
  v62 = v65;
  sub_1E10AE8AC();
  (*(v64 + 8))(v38, v62);
  v60 = *(v86 + 8);
  v61 = v51;
  return v60(v61, v55);
}

uint64_t sub_1E109F3D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B710, &qword_1E10BCA60);
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  sub_1E10485A8((v1 + 2), v19);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A4474();

  sub_1E10AEA5C();
  v18[0] = v9;
  v18[1] = v10;
  v17[0] = 0;
  sub_1E0FED9C8();
  v12 = v15[1];
  sub_1E10AE8AC();

  if (v12)
  {
    return (*(v16 + 8))(v8, v3);
  }

  sub_1E10485A8(v19, v18);
  v19[135] = 1;
  sub_1E106C7A4(v19, v17);
  sub_1E10A451C();
  sub_1E10AE8AC();
  v14 = (v16 + 8);
  sub_1E10485A8(v18, v17);
  sub_1E10A4570(v17);
  return (*v14)(v8, v3);
}

uint64_t sub_1E109F5E0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B6F8, &qword_1E10BCA58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A4474();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v13 = v23;
  LOBYTE(v25[0]) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v28 = v26[0];
  v36 = 1;
  sub_1E10A44C8();
  sub_1E10AE7FC();
  (*(v12 + 8))(v10, v4);
  sub_1E10485A8(&v27, v24);
  sub_1E10485A8(v24, &v29);
  v14 = v32;
  v15 = v33;
  v25[4] = v32;
  v25[5] = v33;
  v16 = v35;
  v25[6] = v34;
  v25[7] = v35;
  v17 = v28;
  v18 = v29;
  v25[0] = v28;
  v25[1] = v29;
  v19 = v30;
  v20 = v31;
  v25[2] = v30;
  v25[3] = v31;
  v13[6] = v34;
  v13[7] = v16;
  v13[4] = v14;
  v13[5] = v15;
  v13[2] = v19;
  v13[3] = v20;
  *v13 = v17;
  v13[1] = v18;
  sub_1E106C748(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v26[4] = v32;
  v26[5] = v33;
  v26[6] = v34;
  v26[7] = v35;
  v26[0] = v28;
  v26[1] = v29;
  v26[2] = v30;
  v26[3] = v31;
  return sub_1E106C800(v26);
}

uint64_t sub_1E109F890(void *a1)
{
  v2 = v1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B900, &qword_1E10BCB60);
  v31 = *(v28 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B908, &qword_1E10BCB68);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  v26 = *v2;
  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  v17 = *(v2 + 13);
  v27 = *(v2 + 12);
  v25 = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A62E8();
  sub_1E10AEA5C();
  sub_1E10A633C();
  sub_1E10AE82C();
  v32 = v26;
  v33 = v16;
  v34 = v15;
  v19 = v28;
  v20 = v2[3];
  v35 = v2[2];
  v36 = v20;
  v21 = v2[5];
  v37 = v2[4];
  v38 = v21;
  v39 = v27;
  v40 = 0;
  sub_1E0FEDBA8();
  v22 = v29;
  sub_1E10AE8AC();
  if (!v22)
  {
    *&v32 = v25;
    v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
    sub_1E10A6138();
    sub_1E10AE8AC();
  }

  (*(v31 + 8))(v8, v19);
  return (*(v30 + 8))(v14, v9);
}

uint64_t sub_1E109FB40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B8E0, &qword_1E10BCB50);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B8E8, &qword_1E10BCB58);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E10A62E8();
  v18 = v31;
  sub_1E10AEA3C();
  if (!v18)
  {
    v19 = v30;
    v31 = v10;
    v20 = sub_1E10AE80C();
    v21 = (2 * *(v20 + 16)) | 1;
    v52 = v20;
    v53 = v20 + 32;
    v54 = 0;
    v55 = v21;
    if (sub_1E101A824() || v54 != v55 >> 1)
    {
      v23 = sub_1E10AE62C();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0) + 48);
      *v25 = &_s13GroupResponseV9ValueTypeON;
      sub_1E10AE77C();
      sub_1E10AE61C();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v31 + 8))(v15, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1E10A633C();
      sub_1E10AE76C();
      v44 = 0;
      sub_1E0FEDF5C();
      sub_1E10AE7FC();
      v22 = v31;
      v28 = v9;
      v41 = v49;
      v42 = v50;
      v43 = v51;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
      v35 = 1;
      sub_1E10A5B44();
      sub_1E10AE7FC();
      (*(v19 + 8))(v8, v3);
      (*(v22 + 8))(v15, v28);
      swift_unknownObjectRelease();
      v32[4] = v41;
      v32[5] = v42;
      v32[0] = v37;
      v32[1] = v38;
      v32[2] = v39;
      v32[3] = v40;
      v33 = v43;
      v34 = v36;
      sub_1E10485A8(v32, v29);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1E109FFF0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B738, &qword_1E10BCA70) - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v21 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 6);
  v36 = *(v1 + 5);
  v37 = v11;
  v38 = *(v1 + 7);
  v39 = *(v1 + 128);
  v12 = *(v1 + 2);
  v32 = *(v1 + 1);
  v33 = v12;
  v13 = *(v1 + 4);
  v34 = *(v1 + 3);
  v35 = v13;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_1E10A45A0();

  sub_1E10AEA5C();
  *&v24 = v9;
  *(&v24 + 1) = v10;
  LOBYTE(v22[0]) = 0;
  sub_1E0FED9C8();
  v19 = v21[1];
  sub_1E10AE8AC();

  if (!v19)
  {
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v40 = 1;
    sub_1E10A4648(&v32, v22);
    sub_1E10A4680();
    sub_1E10AE8AC();
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v30;
    v23 = v31;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_1E10A46D4(v22);
  }

  return (*(v3 + 8))(v8, v18);
}

uint64_t sub_1E10A0248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B720, &qword_1E10BCA68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A45A0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v13 = v59;
  LOBYTE(v26[0]) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v14 = v33;
  v25 = v32;
  v42 = 1;
  sub_1E10A45F4();
  sub_1E10AE7FC();
  (*(v12 + 8))(v10, v4);
  v15 = v47;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v16 = v43;
  v51 = v43;
  v52 = v44;
  v17 = v45;
  v53 = v45;
  v54 = v46;
  v27 = v46;
  v26[3] = v45;
  v58 = v50;
  v18 = v25;
  *&v26[0] = v25;
  *(&v26[0] + 1) = v14;
  v26[2] = v44;
  v26[1] = v43;
  v19 = v50;
  v31 = v50;
  v30 = v49;
  v29 = v48;
  v28 = v47;
  v20 = v26[0];
  *(v13 + 32) = v44;
  *(v13 + 48) = v17;
  *v13 = v20;
  *(v13 + 16) = v16;
  v21 = v27;
  v22 = v29;
  v23 = v30;
  *(v13 + 128) = v19;
  *(v13 + 96) = v22;
  *(v13 + 112) = v23;
  *(v13 + 64) = v21;
  *(v13 + 80) = v15;
  sub_1E10968F0(v26, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32 = v18;
  v33 = v14;
  v38 = v55;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  return sub_1E109694C(&v32);
}

uint64_t sub_1E10A0584(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B940, &qword_1E10BCB88);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B948, &qword_1E10BCB90);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B950, &qword_1E10BCB98);
  v44 = *(v42 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  v20 = *(v2 + 8);
  v36 = *(v2 + 13);
  v21 = *(v2 + 112);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A6390();
  v23 = v19;
  sub_1E10AEA5C();
  if (v21)
  {
    LOBYTE(v45) = 1;
    sub_1E10A63E4();
    v24 = v37;
    v25 = v42;
    sub_1E10AE82C();
    v26 = v2[1];
    v45 = *v2;
    v46 = v26;
    v27 = v2[3];
    v47 = v2[2];
    v48 = v27;
    v52 = 0;
    sub_1E0FEEB48();
    v28 = v41;
    v29 = v43;
    sub_1E10AE8AC();
    if (!v29)
    {
      *&v45 = v20;
      v52 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
      sub_1E10A6138();
      sub_1E10AE8AC();
    }

    (*(v40 + 8))(v24, v28);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_1E10A6438();
    v25 = v42;
    sub_1E10AE82C();
    v30 = v2[1];
    v45 = *v2;
    v46 = v30;
    v31 = v2[3];
    v47 = v2[2];
    v48 = v31;
    v49 = v20;
    v50 = *(v2 + 72);
    v51 = *(v2 + 88);
    v52 = 0;
    sub_1E1005408();
    v32 = v39;
    v33 = v43;
    sub_1E10AE8AC();
    if (!v33)
    {
      *&v45 = v36;
      v52 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
      sub_1E10A61EC();
      sub_1E10AE8AC();
    }

    (*(v38 + 8))(v14, v32);
  }

  return (*(v44 + 8))(v23, v25);
}

uint64_t sub_1E10A099C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B910, &qword_1E10BCB70);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B918, &qword_1E10BCB78);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B920, &qword_1E10BCB80);
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E10A6390();
  v23 = v49;
  sub_1E10AEA3C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v49 = v9;
  v24 = v46;
  v25 = v47;
  v26 = sub_1E10AE80C();
  v27 = (2 * *(v26 + 16)) | 1;
  v70 = v26;
  v71 = v26 + 32;
  v72 = 0;
  v73 = v27;
  v28 = sub_1E101A850();
  if (v28 == 2 || v72 != v73 >> 1)
  {
    v29 = sub_1E10AE62C();
    swift_allocError();
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0) + 48);
    *v31 = &_s19ParticipantResponseV9ValueTypeON;
    sub_1E10AE77C();
    sub_1E10AE61C();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v48 + 8))(v20, v15);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (v28)
  {
    LOBYTE(v56) = 1;
    sub_1E10A63E4();
    sub_1E10AE76C();
    v76 = 0;
    sub_1E0FEEAF4();
    sub_1E10AE7FC();
    v49 = v20;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
    v37 = 1;
    v75 = 1;
    sub_1E10A5B44();
    sub_1E10AE7FC();
    (*(v45 + 8))(v8, v24);
    (*(v48 + 8))(v49, v15);
    swift_unknownObjectRelease();
    v39 = v63;
    v66 = v51;
    v67 = v52;
    v68 = v53;
    v69 = v54;
    v74 = 1;
  }

  else
  {
    LOBYTE(v56) = 0;
    sub_1E10A6438();
    v34 = v14;
    sub_1E10AE76C();
    v76 = 0;
    sub_1E10053B4();
    v35 = v49;
    sub_1E10AE7FC();
    v36 = v48;
    v55[0] = v60;
    v55[1] = v61;
    *&v55[2] = v62;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
    v75 = 1;
    sub_1E10A5C4C();
    sub_1E10AE7FC();
    (*(v44 + 8))(v34, v35);
    (*(v36 + 8))(v20, v15);
    swift_unknownObjectRelease();
    v37 = 0;
    v38 = v63;
    v66 = v51;
    v67 = v52;
    v68 = v53;
    v69 = v54;
    v39 = *&v55[0];
    v64 = *(v55 + 8);
    v65 = *(&v55[1] + 8);
    v74 = 0;
  }

  v40 = v67;
  *v25 = v66;
  *(v25 + 16) = v40;
  v41 = v69;
  *(v25 + 32) = v68;
  *(v25 + 48) = v41;
  v42 = v65;
  *(v25 + 72) = v64;
  *(v25 + 64) = v39;
  *(v25 + 88) = v42;
  *(v25 + 104) = v38;
  *(v25 + 112) = v37;
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_1E10A10B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v19 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B960, &qword_1E10BCBA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A6680();
  sub_1E10AEA5C();
  v20 = a2;
  v21 = a3;
  v23 = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v5)
  {
    v20 = v19;
    LOBYTE(v21) = v22;
    v23 = 1;
    sub_1E10A6728();
    sub_1E10AE8AC();
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1E10A125C(void *a1, uint64_t a2, int a3)
{
  v83 = a3;
  v84 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9F8, &qword_1E10BCC78);
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA00, &qword_1E10BCC80);
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v77 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA08, &qword_1E10BCC88);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA10, &qword_1E10BCC90);
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v71 = &v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA18, &qword_1E10BCC98);
  v69 = *(v24 - 8);
  v70 = v24;
  v25 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v63 - v28;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA20, &qword_1E10BCCA0);
  v66 = *(v67 - 8);
  v29 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v63 - v32;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA28, &qword_1E10BCCA8);
  v64 = *(v65 - 8);
  v34 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v63 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA30, &qword_1E10BCCB0);
  v63 = *(v39 - 8);
  v40 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v63 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA38, &qword_1E10BCCB8);
  v46 = *(v45 - 8);
  v85 = v45;
  v86 = v46;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v63 - v50;
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A7490();
  sub_1E10AEA5C();
  if (v83 > 3u)
  {
    if (v83 > 5u)
    {
      v55 = v85;
      if (v83 == 6)
      {
        LOBYTE(v87) = 6;
        sub_1E10A75E8();
        v56 = v77;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C0, &qword_1E10BCC08);
        sub_1E10A7DB4();
        v57 = v79;
        sub_1E10AE8AC();
        v58 = v78;
      }

      else
      {
        LOBYTE(v87) = 7;
        sub_1E10A74E4();
        v56 = v80;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9B8, &qword_1E10BCBF8);
        sub_1E10A7D04();
        v57 = v82;
        sub_1E10AE8AC();
        v58 = v81;
      }
    }

    else
    {
      v55 = v85;
      if (v83 == 4)
      {
        LOBYTE(v87) = 4;
        sub_1E10A77F0();
        v56 = v71;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D0, &qword_1E10BCC28);
        sub_1E10A7F14();
        v57 = v73;
        sub_1E10AE8AC();
        v58 = v72;
      }

      else
      {
        LOBYTE(v87) = 5;
        sub_1E10A76EC();
        v56 = v74;
        sub_1E10AE82C();
        v87 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C8, &qword_1E10BCC18);
        sub_1E10A7E64();
        v57 = v76;
        sub_1E10AE8AC();
        v58 = v75;
      }
    }

    goto LABEL_16;
  }

  if (v83 > 1u)
  {
    if (v83 == 2)
    {
      LOBYTE(v87) = 2;
      sub_1E10A79F8();
      v55 = v85;
      sub_1E10AE82C();
      v87 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E0, &qword_1E10BCC48);
      sub_1E10A8074();
      v59 = v67;
      sub_1E10AE8AC();
      (*(v66 + 8))(v33, v59);
      v60 = *(v86 + 8);
      v61 = v51;
      return v60(v61, v55);
    }

    LOBYTE(v87) = 3;
    sub_1E10A78F4();
    v56 = v68;
    v55 = v85;
    sub_1E10AE82C();
    v87 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D8, &qword_1E10BCC38);
    sub_1E10A7FC4();
    v57 = v70;
    sub_1E10AE8AC();
    v58 = v69;
LABEL_16:
    (*(v58 + 8))(v56, v57);
    v60 = *(v86 + 8);
    v61 = v51;
    return v60(v61, v55);
  }

  if (!v83)
  {
    LOBYTE(v87) = 0;
    sub_1E10A7C00();
    v53 = v85;
    sub_1E10AE82C();
    v87 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9F0, &qword_1E10BCC68);
    sub_1E10A81D4();
    sub_1E10AE8AC();
    (*(v63 + 8))(v44, v39);
    return (*(v86 + 8))(v51, v53);
  }

  LOBYTE(v87) = 1;
  sub_1E10A7AFC();
  v55 = v85;
  sub_1E10AE82C();
  v87 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E8, &qword_1E10BCC58);
  sub_1E10A8124();
  v62 = v65;
  sub_1E10AE8AC();
  (*(v64 + 8))(v38, v62);
  v60 = *(v86 + 8);
  v61 = v51;
  return v60(v61, v55);
}

uint64_t sub_1E10A1E10@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1E10A1E98@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1E10A1EEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a3, a4);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for EventService.GeoRequest();
  v9 = swift_dynamicCast();
  return (*(*(v8 - 8) + 56))(a2, v9 ^ 1u, 1, v8);
}

uint64_t sub_1E10A2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_1E10A2434(a5, *(a2 + 16), *(a2 + 24));
  sub_1E10AE20C();
  swift_getWitnessTable();
  return sub_1E10AE1FC();
}

uint64_t sub_1E10A20A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_1E10A3280(a5, *(a2 + 16), *(a2 + 24));
  type metadata accessor for PartialEvent();
  sub_1E10AE20C();
  swift_getWitnessTable();
  return sub_1E10AE1FC();
}

uint64_t sub_1E10A215C()
{
  v0 = sub_1E10AE74C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E10A21A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F7073 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7631457 && a2 == 0xE300000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6164 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72657461656874 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C707061 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C61766974736566 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x66696C746867696ELL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1E10A2434(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 4)
      {
        if (a1 <= 3u || a1 > 5u || a1 == 4)
        {
          v18 = sub_1E10AE8FC();

          if ((v18 & 1) == 0)
          {
            return sub_1E10AE1BC();
          }
        }

        else
        {
        }

        MEMORY[0x1EEE9AC00](v19, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7D8, &qword_1E10BCAD8);
        sub_1E0FEDEAC(&qword_1ECE8BAF8, &qword_1ECE8B7D8, &qword_1E10BCAD8);
        return sub_1E10AE12C();
      }

      if (a1 == 4)
      {
      }

      else
      {
        v25 = sub_1E10AE8FC();

        if ((v25 & 1) == 0)
        {
          return sub_1E10AE1BC();
        }
      }

      MEMORY[0x1EEE9AC00](v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7F0, &qword_1E10BCAE0);
      sub_1E0FEDEAC(&qword_1ECE8BB00, &qword_1ECE8B7F0, &qword_1E10BCAE0);
      return sub_1E10AE12C();
    }

    if (a3 == 6)
    {
      if (a1 > 3u && a1 == 6)
      {
      }

      else
      {
        v26 = sub_1E10AE8FC();

        if ((v26 & 1) == 0)
        {
          return sub_1E10AE1BC();
        }
      }

      MEMORY[0x1EEE9AC00](v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7C0, &qword_1E10BCAD0);
      sub_1E0FEDEAC(&qword_1ECE8BAF0, &qword_1ECE8B7C0, &qword_1E10BCAD0);
      return sub_1E10AE12C();
    }

    if (a1 <= 3u || a1 <= 5u || a1 == 6)
    {
      v21 = sub_1E10AE8FC();

      if ((v21 & 1) == 0)
      {
        return sub_1E10AE1BC();
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7A8, &qword_1E10BCAC8);
    sub_1E0FEDEAC(&qword_1ECE8BAE8, &qword_1ECE8B7A8, &qword_1E10BCAC8);
    return sub_1E10AE12C();
  }

  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a1 == 1)
      {
      }

      else
      {
        v13 = sub_1E10AE8FC();

        if ((v13 & 1) == 0)
        {
          return sub_1E10AE1BC();
        }
      }

      MEMORY[0x1EEE9AC00](v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
      sub_1E0FEDEAC(&qword_1ECE8BB18, &qword_1ECE8B838, &unk_1E10BCAF8);
      return sub_1E10AE12C();
    }

    if (!a1)
    {

LABEL_51:
      MEMORY[0x1EEE9AC00](v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
      sub_1E0FEDEAC(&qword_1ECE8BB20, &qword_1ECE8B458, &unk_1E10BB500);
      return sub_1E10AE12C();
    }

    v24 = sub_1E10AE8FC();

    if (v24)
    {
      goto LABEL_51;
    }

    return sub_1E10AE1BC();
  }

  if (a3 != 2)
  {
    if (a1 > 3u || a1 <= 1u || a1 == 2)
    {
      v10 = sub_1E10AE8FC();

      if ((v10 & 1) == 0)
      {
        return sub_1E10AE1BC();
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B808, &qword_1E10BCAE8);
    sub_1E0FEDEAC(&qword_1ECE8BB08, &qword_1ECE8B808, &qword_1E10BCAE8);
    return sub_1E10AE12C();
  }

  if (a1 == 2)
  {
  }

  else
  {
    v7 = sub_1E10AE8FC();

    if ((v7 & 1) == 0)
    {
      return sub_1E10AE1BC();
    }
  }

  MEMORY[0x1EEE9AC00](v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B820, &qword_1E10BCAF0);
  sub_1E0FEDEAC(&qword_1ECE8BB10, &qword_1ECE8B820, &qword_1E10BCAF0);
  return sub_1E10AE12C();
}