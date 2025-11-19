uint64_t sub_25F0F03EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_25F0F0538, 0, 0);
  }
}

uint64_t sub_25F0F0538()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_25F176F1C();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F0F05C4()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_25F0F0A6C;
  *(v3 + 24) = v2;
  *(v0 + 48) = sub_25F0EB818;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_25F0D0B0C;
  *(v0 + 40) = &block_descriptor_3;
  v4 = _Block_copy((v0 + 16));
  v5 = objc_opt_self();

  v6 = [v5 injectorWithConfigurator_];
  _Block_release(v4);
  v7 = *(v0 + 56);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v9 = *(v0 + 64);
    if (v6)
    {
      v10 = objc_opt_self();
      v11 = v6;
      v12 = [v10 identifierWithPid_];
      if (v12 && (v13 = v12, sub_25F0E6C24(), v14 = v13, v15 = sub_25F0E6930(v14), v14, v14, v15))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
        *(swift_task_alloc() + 16) = v15;
        sub_25F1786BC();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
        sub_25F17872C();
      }

      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_25F0F0B28;
      *(v17 + 24) = v16;
      v18 = v11;
      sub_25F17860C();

      v19 = *(v0 + 8);
    }

    else
    {
      sub_25F0F0A9C();
      swift_allocError();
      *v20 = v9;
      swift_willThrow();
      v19 = *(v0 + 8);
    }

    return v19();
  }

  return result;
}

uint64_t sub_25F0F09A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0F0138(a1, v4, v5, v7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F0F0A9C()
{
  result = qword_27FD47A70;
  if (!qword_27FD47A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A70);
  }

  return result;
}

uint64_t sub_25F0F0AF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F0F0B38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F0F0B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0BF3E4;

  return sub_25F0F0338(a1, v4, v5, v7);
}

unint64_t sub_25F0F0C54()
{
  result = qword_27FD47A78;
  if (!qword_27FD47A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A78);
  }

  return result;
}

unint64_t sub_25F0F0CAC()
{
  result = qword_27FD47A80;
  if (!qword_27FD47A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A80);
  }

  return result;
}

unint64_t sub_25F0F0D00()
{
  result = qword_27FD47A88;
  if (!qword_27FD47A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A88);
  }

  return result;
}

uint64_t SharedAgentServer<>.requestJITBootstrapAgent(for:bootstrapMethod:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 160) = a1;
  v5 = sub_25F1783FC();
  *(v3 + 168) = v5;
  v6 = *(v5 - 8);
  *(v3 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v3 + 184) = v8;
  *(v3 + 192) = v9;
  *(v3 + 248) = *(a2 + 8);
  *(v3 + 200) = *v2;

  return MEMORY[0x2822009F8](sub_25F0F0E38, 0, 0);
}

uint64_t sub_25F0F0E38()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v18 = *(v0 + 200);
  (*(*(v0 + 176) + 104))(*(v0 + 184), *MEMORY[0x277D404B8], *(v0 + 168));
  v4 = sub_25F17859C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_25F17858C();
  *(v0 + 216) = v7;
  *(v0 + 144) = v7;
  *(v0 + 112) = type metadata accessor for Agent(0);
  *(v0 + 120) = sub_25F0F12B8();
  *(v0 + 88) = v3;

  v8 = MEMORY[0x277D40518];
  sub_25F1784AC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  v10 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v9 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  v11 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout);
  v12 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout + 8);
  *(v0 + 72) = v4;
  *(v0 + 80) = v8;
  *(v0 + 48) = v7;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 128) = v10;
  *(v0 + 136) = v9;
  sub_25F0F1310(v2, v1);

  v13 = swift_task_alloc();
  *(v0 + 224) = v13;
  *(v13 + 16) = v18;
  *(v13 + 32) = v0 + 128;
  *(v13 + 40) = v0 + 16;
  v14 = *(MEMORY[0x277D40510] + 4);
  v19 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_25F0F1090;
  v16 = *(v0 + 208);

  return v19(v0 + 152, v0 + 128, &unk_25F17CEC0, v13);
}

uint64_t sub_25F0F1090()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_25F0F1238;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_25F0F11AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0F11AC()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[19];
  sub_25F0F26BC((v0 + 2));

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_25F0F1238()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[23];

  sub_25F0F26BC((v0 + 2));

  v4 = v0[1];
  v5 = v0[30];

  return v4();
}

unint64_t sub_25F0F12B8()
{
  result = qword_27FD47EA0;
  if (!qword_27FD47EA0)
  {
    type metadata accessor for Agent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EA0);
  }

  return result;
}

id sub_25F0F1310(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t JITBootstrapAgentConnectionIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static JITBootstrapAgentConnectionIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

uint64_t JITBootstrapAgentConnectionIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F17911C();
}

uint64_t JITBootstrapAgentConnectionIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1798CC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F0F13D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1798CC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F0F1424()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F17911C();
}

uint64_t sub_25F0F142C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1798CC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F0F1474()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F0F14A4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

id JITBootstrapAgentService.BootstrapContext.bootstrapMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_25F0F1310(v2, v3);
}

void JITBootstrapAgentService.BootstrapContext.bootstrapMethod.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_25F0F26EC(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t JITBootstrapAgentService.BootstrapContext.bootstrapTimeout.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t JITBootstrapAgentService.BootstrapContext.bootstrapTimeout.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t JITBootstrapAgentService.BootstrapContext.agentInvalidationWrapper.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return sub_25F0C0C84(a1, v1 + 32);
}

uint64_t static JITBootstrapAgentService.shellService.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CF8];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static JITBootstrapAgentService.bootstrap(client:context:endpoint:using:)(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0BF3E4;

  return sub_25F0F26F8(a1, a2);
}

void sub_25F0F1724(void *a1, uint64_t a2)
{
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() targetWithProcessIdentity_];
  [a1 setTarget_];
  v9 = *MEMORY[0x277D40CF8];
  v10 = v5[13];
  v10(v8, v9, v4);
  sub_25F176E2C();
  v11 = v5[1];
  v11(v8, v4);
  v12 = sub_25F17905C();

  [a1 setDomain_];

  v10(v8, v9, v4);
  sub_25F176E3C();
  v11(v8, v4);
  v13 = sub_25F17905C();

  [a1 setService_];

  v14 = sub_25F17905C();
  v15 = sub_25F17905C();
  v16 = [objc_opt_self() attributeWithDomain:v14 name:v15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25F17AEE0;
  *(v17 + 32) = v16;
  sub_25F0F32FC();
  v18 = v16;
  v19 = sub_25F17921C();

  [a1 setAdditionalAttributes_];
}

id sub_25F0F1A08(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v14 = a4;
  v15 = sub_25F17887C();
  v16 = sub_25F17953C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v9;
    v18 = a2;
    v19 = v17;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = a5;
    v29 = v21;
    v22 = v21;
    *v19 = 136446466;
    *(v19 + 4) = sub_25F0BECF0(v18, a3, &v29);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v14;
    *v20 = v14;
    v23 = v14;
    _os_log_impl(&dword_25F0B3000, v15, v16, "Invalidating endpoint injector for: %{public}s, processIdentity: %@", v19, 0x16u);
    sub_25F0E7CC8(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v24 = v22;
    a5 = v28;
    MEMORY[0x25F8D6230](v24, -1, -1);
    MEMORY[0x25F8D6230](v19, -1, -1);

    (*(v10 + 8))(v13, v27);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  return [a5 invalidate];
}

void sub_25F0F1C30(void *a1, uint64_t a2)
{
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() targetWithPid_];
  [a1 setTarget_];
  v9 = *MEMORY[0x277D40CF8];
  v10 = v5[13];
  v10(v8, v9, v4);
  sub_25F176E2C();
  v11 = v5[1];
  v11(v8, v4);
  v12 = sub_25F17905C();

  [a1 setDomain_];

  v10(v8, v9, v4);
  sub_25F176E3C();
  v11(v8, v4);
  v13 = sub_25F17905C();

  [a1 setService_];
}

id sub_25F0F1E24(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v14 = sub_25F17887C();
  v15 = sub_25F17953C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_25F0BECF0(a2, a3, &v22);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a4;
    _os_log_impl(&dword_25F0B3000, v14, v15, "Invalidating endpoint injector for: %{public}s, pid: %d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x25F8D6230](v18, -1, -1);
    v19 = v17;
    a5 = v21;
    MEMORY[0x25F8D6230](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  return [a5 invalidate];
}

double static JITBootstrapAgentService.bootstrapTimeout(for:)(uint64_t a1)
{
  result = *(a1 + 16);
  if (*(a1 + 24))
  {
    return 30.0;
  }

  return result;
}

uint64_t static JITBootstrapAgentService.identity(of:)@<X0>(void *a1@<X8>)
{
  v3 = sub_25F177F8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F176F3C();
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = MEMORY[0x277D405A0];
  v11[0] = 0xD00000000000001DLL;
  v11[1] = 0x800000025F184C70;
  sub_25F177F6C();
  (*(v4 + 8))(v7, v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (!v1)
  {
    v9 = v11[6];
    *a1 = v11[5];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_25F0F2174(void *a1)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000046, 0x800000025F185330);
  v2 = [a1 description];
  v3 = sub_25F17908C();
  v5 = v4;

  MEMORY[0x25F8D50D0](v3, v5);

  return 0;
}

uint64_t sub_25F0F2230(uint64_t a1)
{
  v2 = sub_25F0F34D0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0F226C(uint64_t a1)
{
  v2 = sub_25F0F34D0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0F22A8()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD00000000000003ALL, 0x800000025F185380);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  return 0;
}

uint64_t sub_25F0F2348(uint64_t a1)
{
  v2 = sub_25F0F3524();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0F2384(uint64_t a1)
{
  v2 = sub_25F0F3524();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0F23C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CF8];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25F0F2434(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0C10CC;

  return sub_25F0F26F8(a1, a2);
}

double sub_25F0F24F4(uint64_t a1)
{
  result = *(a1 + 16);
  if (*(a1 + 24))
  {
    return 30.0;
  }

  return result;
}

uint64_t sub_25F0F2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_25F0F03EC;

  return (sub_25F10C5AC)(v7, v8, a5);
}

uint64_t sub_25F0F25F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0BF3E4;

  return sub_25F0F2524(a1, v4, v5, v7, v6);
}

void sub_25F0F26EC(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_25F0F26F8(uint64_t *a1, uint64_t a2)
{
  v2[14] = a2;
  v4 = sub_25F17888C();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  v9 = a1[1];
  v2[18] = v7;
  v2[19] = v8;
  v2[20] = v9;

  return MEMORY[0x2822009F8](sub_25F0F27D0, 0, 0);
}

uint64_t sub_25F0F27D0()
{
  v61 = v0;
  v1 = v0[14];
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = v0[20];
    v3 = v0[18];
    v4 = *(v1 + 16);
    sub_25F17885C();

    v5 = sub_25F17887C();
    v6 = sub_25F17955C();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[19];
      v7 = v0[20];
      v9 = v0[18];
      v10 = v0[15];
      v11 = v0[16];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v60 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_25F0BECF0(v8, v7, &v60);
      *(v12 + 12) = 2050;
      *(v12 + 14) = v4;
      _os_log_impl(&dword_25F0B3000, v5, v6, "JIT client %{public}s bootstrap timeout override provided: %{public}f", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x25F8D6230](v13, -1, -1);
      MEMORY[0x25F8D6230](v12, -1, -1);

      (*(v11 + 8))(v9, v10);
    }

    else
    {
      v14 = v0[18];
      v15 = v0[15];
      v16 = v0[16];

      (*(v16 + 8))(v14, v15);
    }
  }

  v17 = v0[14];
  v18 = *v17;
  if ((*(v17 + 8) & 1) == 0)
  {
    v40 = swift_task_alloc();
    *(v40 + 16) = v18;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_25F0F324C;
    *(v41 + 24) = v40;
    v0[12] = sub_25F0E4290;
    v0[13] = v41;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_25F0D0B0C;
    v0[11] = &block_descriptor_33;
    v42 = _Block_copy(v0 + 8);
    v43 = objc_opt_self();

    sub_25F0F1310(v18, 0);
    v44 = [v43 injectorWithConfigurator_];
    _Block_release(v42);
    v45 = v0[13];

    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    if ((v42 & 1) == 0)
    {

      if (v44)
      {
        v47 = v0[19];
        v46 = v0[20];
        v48 = v0[14];
        v49 = v48[8];
        __swift_project_boxed_opaque_existential_1(v48 + 4, v48[7]);
        v50 = swift_allocObject();
        v50[2] = v47;
        v50[3] = v46;
        v50[4] = v18;
        v50[5] = v44;
        v51 = v44;

        sub_25F0F1310(v18, 0);
        v52 = v51;
        sub_25F17848C();

        sub_25F0F26EC(v18, 0);
        goto LABEL_14;
      }

      sub_25F0F3254();
      swift_allocError();
      *v57 = v18;
LABEL_17:
      v59 = v0[17];
      v58 = v0[18];
      swift_willThrow();

      v55 = v0[1];
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v19 = v0[17];
  sub_25F17885C();
  v20 = sub_25F17887C();
  v21 = sub_25F17952C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67240192;
    *(v22 + 4) = v18;
    _os_log_impl(&dword_25F0B3000, v20, v21, "Using legacy pid for endpoint injection: %{public}d", v22, 8u);
    MEMORY[0x25F8D6230](v22, -1, -1);
  }

  v24 = v0[16];
  v23 = v0[17];
  v25 = v0[15];

  (*(v24 + 8))(v23, v25);
  v26 = swift_task_alloc();
  *(v26 + 16) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_25F0F3178;
  *(v27 + 24) = v26;
  v0[6] = sub_25F0E0108;
  v0[7] = v27;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_25F0D0B0C;
  v0[5] = &block_descriptor_4;
  v28 = _Block_copy(v0 + 2);
  v29 = objc_opt_self();

  v30 = [v29 injectorWithConfigurator_];
  _Block_release(v28);
  v31 = v0[7];

  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!v30)
  {
    sub_25F0F31A8();
    swift_allocError();
    *v56 = v18;
    goto LABEL_17;
  }

  v34 = v0[19];
  v33 = v0[20];
  v35 = v0[14];
  v36 = v35[8];
  __swift_project_boxed_opaque_existential_1(v35 + 4, v35[7]);
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v33;
  *(v37 + 32) = v18;
  *(v37 + 40) = v30;
  v38 = v30;

  v39 = v38;
  sub_25F17848C();

LABEL_14:
  v54 = v0[17];
  v53 = v0[18];

  v55 = v0[1];
LABEL_18:

  return v55();
}

unint64_t sub_25F0F2E60()
{
  result = qword_27FD47A90;
  if (!qword_27FD47A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A90);
  }

  return result;
}

unint64_t sub_25F0F2EB8()
{
  result = qword_27FD47A98;
  if (!qword_27FD47A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A98);
  }

  return result;
}

unint64_t sub_25F0F2F10()
{
  result = qword_27FD47AA0;
  if (!qword_27FD47AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AA0);
  }

  return result;
}

uint64_t sub_25F0F2F64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25F0F2FAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25F0F3028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F0F3070(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F0F30D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F0F3118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F0F31A8()
{
  result = qword_27FD47AA8;
  if (!qword_27FD47AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AA8);
  }

  return result;
}

uint64_t sub_25F0F31FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25F0F3254()
{
  result = qword_27FD47AB0;
  if (!qword_27FD47AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AB0);
  }

  return result;
}

uint64_t sub_25F0F32A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25F0F32FC()
{
  result = qword_27FD47AB8;
  if (!qword_27FD47AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD47AB8);
  }

  return result;
}

unint64_t sub_25F0F3370()
{
  result = qword_27FD47AC0;
  if (!qword_27FD47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AC0);
  }

  return result;
}

unint64_t sub_25F0F33C8()
{
  result = qword_27FD47AC8;
  if (!qword_27FD47AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AC8);
  }

  return result;
}

unint64_t sub_25F0F3424()
{
  result = qword_27FD47AD0;
  if (!qword_27FD47AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AD0);
  }

  return result;
}

unint64_t sub_25F0F347C()
{
  result = qword_27FD47AD8;
  if (!qword_27FD47AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AD8);
  }

  return result;
}

unint64_t sub_25F0F34D0()
{
  result = qword_27FD47AE0;
  if (!qword_27FD47AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AE0);
  }

  return result;
}

unint64_t sub_25F0F3524()
{
  result = qword_27FD47AE8;
  if (!qword_27FD47AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AE8);
  }

  return result;
}

__n128 SceneCrashedStyle.init(snapshotStyle:redCrossVisible:reloadHandler:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 8) = *a3;
  *(a4 + 24) = v5;
  *(a4 + 40) = *(a3 + 32);
  return result;
}

void *SceneSettingsUpdate.transitionContext.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SceneSettingsUpdate.init(sceneSettings:transitionContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SceneSnapshotStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_25F1798CC();
  MEMORY[0x25F8D5860](a1);
  return sub_25F17990C();
}

double static SceneCrashedStyle.default.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = 257;
  return result;
}

double static SceneCrashedStyle.none.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = 3;
  return result;
}

unint64_t sub_25F0F377C()
{
  result = qword_27FD47AF0[0];
  if (!qword_27FD47AF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD47AF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneSnapshotStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneSnapshotStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_25F0F3AB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25F0F3B10(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneStoppedStyle(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneStoppedStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25F0F3CE0(uint64_t a1)
{
  v3 = sub_25F176E8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000018, 0x800000025F1853F0);
  v8 = *v1;
  sub_25F17947C();
  MEMORY[0x25F8D50D0](0xD00000000000001FLL, 0x800000025F185410);
  v9 = *(a1 + 36);
  v12 = a1 + 16;
  v10 = *(a1 + 16);
  v11 = *(v12 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F17982C();
  MEMORY[0x25F8D50D0](0x206E6F2027, 0xE500000000000000);
  (*(v11 + 40))(v10, v11);
  sub_25F0F4A48();
  v13 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v13);

  (*(v4 + 8))(v7, v3);
  return v15[0];
}

uint64_t sub_25F0F3F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F0F3F68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t AsyncAgentServer.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for AsyncAgentServer.ActivatedState();
  sub_25F17945C();
  sub_25F17942C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 8))(v0 + v1, TupleTypeMetadata2);
  v5 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t AsyncAgentServer.__deallocating_deinit()
{
  AsyncAgentServer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of static AgentService.bootstrap(client:context:endpoint:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25F0BF3E4;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25F0F42E4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for AsyncAgentServer.ActivatedState();
  result = sub_25F17942C();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8);
    v6 = MEMORY[0x277D83428] + 64;
    swift_getTupleTypeLayout2();
    v7[4] = v7;
    v7[5] = v6;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F0F43E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F0F443C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25F0F44AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_25F0F44F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0F4554(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0F45E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
LABEL_23:
    v17 = *(v9 + 48);

    return v17((a1 + v11 + 8) & ~v11);
  }

  v12 = ((v11 + 8) & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v15 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v15 < 2)
    {
LABEL_22:
      if (v10)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_22;
  }

LABEL_11:
  v16 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v16 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v10 + (v12 | v16) + 1;
}

void sub_25F0F4794(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = ((v11 + 8) & ~v11) + *(v9 + 64);
  if (a3 <= v10)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 - v10 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (v10 < a2)
  {
    v14 = ~v10 + a2;
    if (v12 < 4)
    {
      v15 = (v14 >> (8 * v12)) + 1;
      if (v12)
      {
        v18 = v14 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_39:
              if (v13 == 2)
              {
                *&a1[v12] = v15;
              }

              else
              {
                *&a1[v12] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v13)
    {
      a1[v12] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v12] = 0;
  }

  else if (v13)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v9 + 56);

  v19(&a1[v11 + 8] & ~v11, a2);
}

unint64_t sub_25F0F4A48()
{
  result = qword_27FD473C8;
  if (!qword_27FD473C8)
  {
    sub_25F176E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD473C8);
  }

  return result;
}

uint64_t sub_25F0F4B00()
{
  type metadata accessor for JITManager();
  v0 = swift_allocObject();
  sub_25F0ED004(MEMORY[0x277D84F90]);
  result = sub_25F17883C();
  *(v0 + 16) = result;
  qword_27FD47D00 = v0;
  return result;
}

uint64_t static JITManager.shared.getter()
{
  if (qword_27FD46800 != -1)
  {
    swift_once();
  }
}

uint64_t JITManager.setUpJIT<A>(agent:bootstrapMethod:configuration:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a2;
  *(v7 + 56) = a5;
  *(v7 + 40) = a1;
  v10 = sub_25F17888C();
  *(v7 + 80) = v10;
  v11 = *(v10 - 8);
  *(v7 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *a3;
  *(v7 + 96) = v13;
  *(v7 + 104) = v14;
  *(v7 + 27) = *(a3 + 8);
  *(v7 + 28) = *a4;
  *(v7 + 29) = a4[1];

  return MEMORY[0x2822009F8](sub_25F0F4CB4, 0, 0);
}

uint64_t sub_25F0F4CB4()
{
  v19 = v0;
  v1 = *(v0 + 72);
  *(v0 + 112) = sub_25F0F5498(*(v0 + 48));
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  sub_25F17885C();

  v4 = sub_25F17887C();
  v5 = sub_25F17955C();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  if (v6)
  {
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25F0BECF0(*(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8), &v18);
    _os_log_impl(&dword_25F0B3000, v4, v5, "JITManager: Initializing for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = *(v0 + 29);
  v14 = *(v0 + 28);
  v15 = *(v0 + 27);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = v15;
  *(v0 + 25) = v14;
  *(v0 + 26) = v13;
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = sub_25F0F4F00;

  return sub_25F0F5848((v0 + 16), (v0 + 25));
}

uint64_t sub_25F0F4F00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25F0F5278, 0, 0);
  }

  else
  {
    v12 = (v4[7] + *v4[7]);
    v7 = *(v4[7] + 4);
    v8 = swift_task_alloc();
    v4[18] = v8;
    *v8 = v6;
    v8[1] = sub_25F0F50EC;
    v9 = v4[8];
    v10 = v4[5];

    return v12(v10, a1);
  }
}

uint64_t sub_25F0F50EC()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_25F0F5384;
  }

  else
  {
    v3 = sub_25F0F5200;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F0F5200()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F0F5278()
{
  v1 = v0[17];
  v2 = v0[14];
  v0[4] = v2;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
  sub_25F17800C();
  swift_willThrow();

  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F0F5384()
{
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[14];
  v0[4] = v3;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
  sub_25F17800C();
  swift_willThrow();

  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F0F5498(uint64_t a1)
{
  v3 = sub_25F1787BC();
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E88, &qword_25F17DC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E90, &qword_25F17DC60);
  sub_25F0FDC70(&qword_27FD47E98, &qword_27FD47E88, &qword_25F17DC58);
  v7 = v17;
  sub_25F17855C();
  v8 = (v16 + 8);
  if (v7)
  {
    (*v8)(v6, v3);
  }

  else
  {
    v17 = v1;
    (*v8)(v6, v3);

    v3 = v18;
    if (v19 == 1)
    {
      v9 = *(a1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
      v10 = *(a1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
      v18 = a1;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = v10;
      v12[4] = v11;
      type metadata accessor for Agent(0);
      sub_25F0FE11C(&qword_27FD47EA0, type metadata accessor for Agent);
      swift_bridgeObjectRetain_n();

      sub_25F17802C();

      v18 = v3;
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v9;
      v14[4] = v10;
      type metadata accessor for PreviewsJITConfigurator();
      sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);

      sub_25F17802C();
    }
  }

  return v3;
}

uint64_t sub_25F0F5848(uint64_t *a1, _BYTE *a2)
{
  v4 = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = swift_getObjectType();
  v7 = sub_25F178F9C();
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v10 = sub_25F176EBC();
  *(v3 + 128) = v10;
  v11 = *(v10 - 8);
  *(v3 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v13 = sub_25F17888C();
  *(v3 + 152) = v13;
  v14 = *(v13 - 8);
  *(v3 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v16 = sub_25F1787BC();
  *(v3 + 184) = v16;
  v17 = *(v16 - 8);
  *(v3 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v19 = swift_task_alloc();
  v20 = *a1;
  *(v3 + 208) = v19;
  *(v3 + 216) = v20;
  *(v3 + 41) = *(a1 + 8);
  *(v3 + 42) = *a2;
  *(v3 + 43) = a2[1];

  return MEMORY[0x2822009F8](sub_25F0F5A70, 0, 0);
}

uint64_t sub_25F0F5A70()
{
  v36 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent);
  v4 = *(v0 + 208);
  *(v0 + 224) = v3;
  v5 = v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier;
  v6 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  *(v0 + 232) = v6;
  v7 = *(v5 + 8);
  *(v0 + 240) = v7;
  v34 = v3;
  v35[0] = v6;
  v35[1] = v7;
  v8 = objc_allocWithZone(type metadata accessor for JITXPCListener());
  swift_bridgeObjectRetain_n();
  v9 = sub_25F0FACBC(v35);
  *(v0 + 248) = v9;
  *(v0 + 48) = v1;
  *(swift_allocObject() + 16) = v9;
  *(v0 + 256) = sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
  v10 = v9;
  sub_25F17802C();

  v11 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox);
  *(v0 + 56) = v11;
  *(v0 + 264) = v11;

  sub_25F1787CC();
  v12 = swift_task_alloc();
  v12[2] = v10;
  v12[3] = v6;
  v33 = v6;
  v12[4] = v7;
  *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DF8, &qword_25F17DC20);
  *(v0 + 280) = sub_25F0FDC70(&qword_27FD47E00, &qword_27FD47DF8, &qword_25F17DC20);
  sub_25F17855C();
  v13 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = *(v0 + 192) + 8;
  v16 = *(v0 + 176);

  v17 = *v15;
  *(v0 + 288) = *v15;
  *(v0 + 296) = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);

  sub_25F17884C();

  v18 = sub_25F17887C();
  v19 = sub_25F17951C();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  if (v20)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35[0] = v25;
    *v24 = 136446210;

    v26 = sub_25F0BECF0(v33, v7, v35);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_25F0B3000, v18, v19, "PreviewsJITConfigurator(%{public}s): Requesting JIT bootstrap agent", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v24, -1, -1);
  }

  v27 = *(v23 + 8);
  v27(v21, v22);
  *(v0 + 304) = v27;
  v28 = *(v0 + 41);
  v29 = *(v0 + 216);
  v30 = *(v34 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer + 8);
  *(v0 + 16) = *(v34 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer);
  *(v0 + 24) = v30;
  *(v0 + 32) = v29;
  *(v0 + 40) = v28;

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_25F0F5F50;

  return SharedAgentServer<>.requestJITBootstrapAgent(for:bootstrapMethod:)(v34, (v0 + 32));
}

uint64_t sub_25F0F5F50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v12 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v5 = v3[30];
    v6 = v3[2];
    v7 = v3[3];

    v8 = sub_25F0F6A68;
  }

  else
  {
    v9 = v3[2];
    v10 = v3[3];

    v8 = sub_25F0F6090;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25F0F6090()
{
  v30 = v0;
  v1 = v0[30];
  v2 = v0[21];
  sub_25F17884C();

  v3 = sub_25F17887C();
  v4 = sub_25F17951C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[38];
  if (v5)
  {
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[20];
    v28 = v0[21];
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;

    v13 = sub_25F0BECF0(v8, v7, &v29);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_25F0B3000, v3, v4, "PreviewsJITConfigurator(%{public}s): Received JIT bootstrap agent", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v14 = v28;
  }

  else
  {
    v16 = v0[20];
    v15 = v0[21];
    v10 = v0[19];

    v14 = v15;
  }

  v6(v14, v10);
  v17 = v0[40];
  v18 = v0[30];
  v19 = sub_25F176F4C();
  v0[42] = v19;

  v20 = v19;

  v21 = swift_task_alloc();
  v0[43] = v21;
  *v21 = v0;
  v21[1] = sub_25F0F62B4;
  v22 = v0[40];
  v24 = v0[30];
  v23 = v0[31];
  v25 = v0[29];
  v26 = v0[18];

  return sub_25F0F9A70(v26, v20, v23, v25, v24, v20, v22);
}

uint64_t sub_25F0F62B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v8 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v5 = v3[30];

    v6 = sub_25F0F6B18;
  }

  else
  {
    (*(v3[17] + 8))(v3[18], v3[16]);
    v6 = sub_25F0F63E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F0F63E8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 240);
  v16 = *(v0 + 232);
  v18 = *(v0 + 224);
  v19 = *(v0 + 43);
  v17 = *(v0 + 42);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = [v1 _xpcConnection];
  *(v0 + 368) = v7;
  sub_25F0C1014(0, &qword_27FD47E08, 0x277D85C78);
  (*(v4 + 104))(v5, *MEMORY[0x277D851C8], v6);
  v8 = v1;
  *(v0 + 376) = sub_25F1795CC();
  (*(v4 + 8))(v5, v6);
  v9 = swift_allocObject();
  *(v0 + 384) = v9;
  *(v9 + 16) = v16;
  *(v9 + 24) = v3;
  *(v9 + 32) = v2;
  *(v9 + 40) = v18;
  *(v9 + 48) = v17;
  *(v9 + 49) = v19;
  *(v9 + 56) = v7;
  *(v9 + 64) = 1;
  *(v9 + 72) = v1;
  v10 = *(MEMORY[0x277D40608] + 4);

  v11 = v2;
  v12 = v8;

  swift_unknownObjectRetain();
  v13 = swift_task_alloc();
  *(v0 + 392) = v13;
  v14 = type metadata accessor for PreviewsJITLinker();
  *v13 = v0;
  v13[1] = sub_25F0F65F4;

  return MEMORY[0x2821A0D70](v0 + 64, sub_25F0FD8EC, v9, v14);
}

uint64_t sub_25F0F65F4()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  v2[50] = v0;

  v5 = v2[48];
  v6 = v2[47];
  if (v0)
  {
    v7 = v2[30];

    v8 = sub_25F0F6BDC;
  }

  else
  {

    v8 = sub_25F0F6754;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25F0F6754()
{
  v0[10] = v0[33];
  v1 = v0[50];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[8];

  sub_25F1787CC();
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v5;
  sub_25F17855C();
  if (v1)
  {
    v10 = v0[36];
    v9 = v0[37];
    v11 = v0[33];
    v12 = v0[30];
    v13 = v0[25];
    v14 = v0[23];

    v10(v13, v14);

    v15 = v0[46];
    v16 = v0[44];
    v17 = v0[42];
    v18 = v0[40];
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[12];
    v0[9] = v0[11];
    sub_25F17800C();
    swift_willThrow();
    swift_unknownObjectRelease();

    v23 = v0[25];
    v22 = v0[26];
    v25 = v0[21];
    v24 = v0[22];
    v26 = v0[18];
    v27 = v0[15];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[46];
    v31 = v0[44];
    v32 = v0[42];
    v33 = v0[40];
    v39 = v0[36];
    v40 = v0[37];
    v34 = v0[30];
    v35 = v0[31];
    v36 = v0[25];
    v41 = v0[33];
    v42 = v0[26];
    v37 = v0[23];
    v43 = v0[22];
    v44 = v0[21];
    v45 = v0[18];
    v46 = v0[15];

    swift_unknownObjectRelease();

    v39(v36, v37);

    v38 = v0[1];

    return v38(v7);
  }
}

uint64_t sub_25F0F6A68()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25F0F6B18()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);

  v3 = *(v0 + 360);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 144);
  v9 = *(v0 + 120);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25F0F6BDC()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[40];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[12];
  v0[9] = v0[11];
  sub_25F17800C();
  swift_willThrow();
  swift_unknownObjectRelease();

  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[18];
  v14 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t JITManager.requestJIT(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25F0F6D60, 0, 0);
}

uint64_t sub_25F0F6D60()
{
  v1 = v0[4];
  v2 = sub_25F0F5498(v0[3]);
  v0[5] = *(v2 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_future);
  v3 = v2;

  v4 = *(MEMORY[0x277D40550] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_25F0F6E68;

  return MEMORY[0x2821A0BA0](v0 + 2);
}

uint64_t sub_25F0F6E68()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);

  if (v0)
  {
    v6 = sub_25F0F6F9C;
  }

  else
  {
    v6 = sub_25F0F0060;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_25F0F6FB4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for JITManager.Storage.Record();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_25F0C8D24(*(a2 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(a2 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8)), (v14 & 1) != 0))
  {
    sub_25F0FDEB8(*(v12 + 56) + *(v8 + 72) * v13, v11, type metadata accessor for JITManager.Storage.Record);
    v15 = *v11;
    sub_25F0FDE5C(v11);
    v16 = 0;
  }

  else
  {
    v17 = objc_allocWithZone(type metadata accessor for PreviewsJITConfigurator());

    v15 = sub_25F0F7BD4(v18);
    sub_25F0F7124(v15);
    if (v3)
    {

      return;
    }

    v16 = 1;
  }

  *a3 = v15;
  *(a3 + 8) = v16;
}

uint64_t sub_25F0F7124(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EA8, &qword_25F17DC68);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = *&a1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent];
  v12 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v11 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  v13 = *v1;
  v14 = *(*v1 + 16);

  if (v14 && (v15 = sub_25F0C8D24(v12, v11), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v13 + 56);
    v19 = type metadata accessor for JITManager.Storage.Record();
    v20 = v12;
    v21 = *(v19 - 8);
    sub_25F0FDEB8(v18 + *(v21 + 72) * v17, v9, type metadata accessor for JITManager.Storage.Record);
    (*(v21 + 56))(v9, 0, 1, v19);
    sub_25F0B7E94(v9, &qword_27FD47EA8, &qword_25F17DC68);
    sub_25F0FDF20();
    swift_allocError();
    *v22 = v20;
    v22[1] = v11;
    return swift_willThrow();
  }

  else
  {
    v24 = type metadata accessor for JITManager.Storage.Record();
    v25 = *(*(v24 - 8) + 56);
    v28 = v12;
    v25(v9, 1, 1, v24);
    sub_25F0B7E94(v9, &qword_27FD47EA8, &qword_25F17DC68);
    sub_25F0FDEB8(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, &v7[*(v24 + 20)], type metadata accessor for BatchIdentity);
    *v7 = a1;
    v25(v7, 0, 1, v24);
    v26 = a1;
    return sub_25F169CAC(v7, v28, v11);
  }
}

void sub_25F0F73E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v9 = sub_25F17887C();
  v10 = sub_25F17952C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25F0BECF0(a1, a2, &v16);
    _os_log_impl(&dword_25F0B3000, v9, v10, "JITManager: Agent invalidated, so invalidating the JIT configurator: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v14 = Strong;
    type metadata accessor for PreviewsJITConfigurator();
    sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
    sub_25F17800C();
  }
}

uint64_t sub_25F0F7640(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F17888C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v27 = v6;
    sub_25F17885C();

    v17 = a3;
    v18 = sub_25F17887C();
    v19 = sub_25F17952C();
    v28 = v17;

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v26 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_25F0BECF0(a2, v28, &v29);
      _os_log_impl(&dword_25F0B3000, v18, v19, "JITManager: Cleaning up old connection record for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x25F8D6230](v22, -1, -1);
      v23 = v21;
      v5 = v26;
      MEMORY[0x25F8D6230](v23, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v29 = *(v16 + 16);

    v24 = sub_25F1787CC();
    MEMORY[0x28223BE20](v24);
    v25 = v28;
    *(&v26 - 2) = a2;
    *(&v26 - 1) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E88, &qword_25F17DC58);
    sub_25F0FDC70(&qword_27FD47E98, &qword_27FD47E88, &qword_25F17DC58);
    sub_25F17855C();

    (*(v27 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_25F0F79A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EA8, &qword_25F17DC68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = *a1;
  v11 = sub_25F0C8D24(a2, a3);
  if (v12)
  {
    v13 = v11;
    v14 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    v24 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F170120();
      v16 = v24;
    }

    v17 = *(*(v16 + 48) + 16 * v13 + 8);

    v18 = *(v16 + 56);
    v19 = type metadata accessor for JITManager.Storage.Record();
    v20 = *(v19 - 8);
    sub_25F0FDDF8(v18 + *(v20 + 72) * v13, v9);
    sub_25F16D880(v13, v16);
    *a1 = v16;
    (*(v20 + 56))(v9, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for JITManager.Storage.Record();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  }

  return sub_25F0B7E94(v9, &qword_27FD47EA8, &qword_25F17DC68);
}

uint64_t JITManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t JITManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_25F0F7BD4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v26[1] = ObjectType;
  v29 = sub_25F17767C();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_invalidationHandle;
  v7 = sub_25F1782AC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v1[v6] = sub_25F17829C();
  v28 = a1;
  *&v1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EB8, &qword_25F17DC70);

  v10 = sub_25F17867C();
  v26[2] = v11;
  *&v1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_future] = v10;
  v31 = v11;
  v32 = 0;

  *&v1[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox] = sub_25F17883C();
  v30.receiver = v1;
  v30.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v30, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent];
  v14 = *(v13 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v15 = *(v13 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  v16 = *&v12[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox];
  v17 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v18 = v17 + *(type metadata accessor for BatchIdentity(0) + 20);
  v31 = v12;
  v19 = v13 + v18;
  v20 = v27;
  v21 = v29;
  (*(v4 + 16))(v27, v19, v29);
  v22 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v16;
  *(v23 + 3) = v14;
  *(v23 + 4) = v15;
  (*(v4 + 32))(&v23[v22], v20, v21);
  sub_25F0FE11C(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
  swift_retain_n();
  v24 = v12;

  sub_25F17802C();

  return v24;
}

uint64_t sub_25F0F7F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F1787BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  sub_25F1787CC();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DF8, &qword_25F17DC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E78, &qword_25F17DC50);
  sub_25F0FDC70(&qword_27FD47E00, &qword_27FD47DF8, &qword_25F17DC20);
  sub_25F17855C();
  result = (*(v9 + 8))(v12, v8);
  v14 = v21;
  if (v21)
  {

    v14(v15);
    sub_25F0FDB90(v14);
    return sub_25F0FDB90(v14);
  }

  return result;
}

uint64_t sub_25F0F8108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)()@<X8>)
{
  v69 = a3;
  v68 = a2;
  v70 = a5;
  v7 = sub_25F17767C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = sub_25F17888C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v23 = &v60 - v22;
  v25 = *a1;
  v24 = a1[1];
  if (!(v24 >> 62))
  {
    v65 = v21;
    v66 = result;
    v67 = v25;
    sub_25F17885C();
    (*(v8 + 16))(v14, a4, v7);
    v43 = v69;

    v44 = v43;
    v45 = sub_25F17887C();
    v46 = sub_25F17952C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v71 = v64;
      *v47 = 136446466;
      v63 = v45;
      v48 = v68;
      *(v47 + 4) = sub_25F0BECF0(v68, v44, &v71);
      *(v47 + 12) = 2080;
      sub_25F0FE11C(&qword_27FD47EC0, MEMORY[0x277D408A0]);
      v49 = sub_25F17980C();
      LODWORD(v62) = v46;
      v51 = v50;
      (*(v8 + 8))(v14, v7);
      v52 = sub_25F0BECF0(v49, v51, &v71);

      *(v47 + 14) = v52;
      v44 = v69;
      v53 = v63;
      _os_log_impl(&dword_25F0B3000, v63, v62, "PreviewsJITConfigurator(%{public}s): Agent invalidated while waiting for JIT connection setup for %s", v47, 0x16u);
      v54 = v64;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v54, -1, -1);
      MEMORY[0x25F8D6230](v47, -1, -1);

      (*(v65 + 8))(v23, v66);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
      (*(v65 + 8))(v23, v66);
      v48 = v68;
    }

    *a1 = xmmword_25F17D940;
    v58 = swift_allocObject();
    *(v58 + 2) = v67;
    *(v58 + 3) = v48;
    *(v58 + 4) = v44;
    v59 = v70;
    *v70 = sub_25F0FE1A4;
    v59[1] = v58;
  }

  if (v24 >> 62 == 1)
  {
    v65 = v21;
    v66 = result;
    v67 = v25;
    v26 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
    sub_25F17885C();
    (*(v8 + 16))(v12, a4, v7);
    v27 = v69;

    v28 = v27;
    v29 = sub_25F17887C();
    v30 = sub_25F17952C();

    LODWORD(v64) = v30;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v61 = v29;
      v63 = v26;
      v32 = v31;
      v62 = swift_slowAlloc();
      v71 = v62;
      *v32 = 136446466;
      v33 = v68;
      *(v32 + 4) = sub_25F0BECF0(v68, v28, &v71);
      *(v32 + 12) = 2080;
      sub_25F0FE11C(&qword_27FD47EC0, MEMORY[0x277D408A0]);
      v34 = sub_25F17980C();
      v36 = v35;
      (*(v8 + 8))(v12, v7);
      v37 = sub_25F0BECF0(v34, v36, &v71);
      v38 = v33;

      *(v32 + 14) = v37;
      v28 = v69;
      v39 = v61;
      _os_log_impl(&dword_25F0B3000, v61, v64, "PreviewsJITConfigurator(%{public}s): Agent invalidated while setting up JIT connection for %s", v32, 0x16u);
      v40 = v62;
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v40, -1, -1);
      v41 = v32;
      v26 = v63;
      MEMORY[0x25F8D6230](v41, -1, -1);

      (*(v65 + 8))(v19, v66);
      v42 = v70;
    }

    else
    {

      (*(v8 + 8))(v12, v7);
      (*(v65 + 8))(v19, v66);
      v42 = v70;
      v38 = v68;
    }

    *a1 = xmmword_25F17D940;
    v56 = swift_allocObject();
    v57 = v67;
    *(v56 + 2) = v26;
    *(v56 + 3) = v57;
    *(v56 + 4) = v38;
    *(v56 + 5) = v28;
    *v42 = sub_25F0FE110;
    v42[1] = v56;
  }

  v55 = v70;
  if (!(v25 | v24 ^ 0x8000000000000000))
  {
    *a1 = xmmword_25F17D940;
  }

  *v55 = 0;
  v55[1] = 0;
  return result;
}

void sub_25F0F8788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F0FE1B0();
  v5 = swift_allocError();
  *v6 = a2;
  v6[1] = a3;

  sub_25F17874C();
}

void sub_25F0F8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JITXPCListener();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener);
  sub_25F17800C();
  sub_25F0FE204();
  v6 = swift_allocError();
  *v7 = a3;
  v7[1] = a4;

  sub_25F17874C();
}

id sub_25F0F8908()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_25F17888C();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F1787BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*&v0[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_agent] + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v12 = v11[1];
  v21 = *v11;
  v25 = *&v0[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_stateBox];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DF8, &qword_25F17DC20);
  sub_25F0FDC70(&qword_27FD47E00, &qword_27FD47DF8, &qword_25F17DC20);
  sub_25F17856C();
  (*(v7 + 8))(v10, v6);

  v13 = v28;
  v14 = v29;
  if ((v29 & 0x8000000000000000) != 0 && v28 | v29 & 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_25F17885C();

    v15 = sub_25F17887C();
    v16 = sub_25F17952C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446210;
      v19 = sub_25F0BECF0(v21, v12, &v28);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_25F0B3000, v15, v16, "PreviewsJITConfigurator(%{public}s): deinit", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x25F8D6230](v18, -1, -1);
      MEMORY[0x25F8D6230](v17, -1, -1);
    }

    else
    {
    }

    (*(v22 + 8))(v5, v23);
    v27.receiver = v1;
    v27.super_class = ObjectType;
    return objc_msgSendSuper2(&v27, sel_dealloc);
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD000000000000018, 0x800000025F1856C0);
    MEMORY[0x25F8D50D0](v21, v12);
    MEMORY[0x25F8D50D0](0xD00000000000003FLL, 0x800000025F1856E0);
    v25 = v13;
    v26 = v14;
    sub_25F17976C();
    result = sub_25F17977C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25F0F8DB8()
{
  swift_getObjectType();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener);
  return sub_25F17800C();
}

id sub_25F0F8E60(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {
      sub_25F0FDB10();
    }

    else if (*a1 | v4 ^ 0x8000000000000000)
    {
      sub_25F0FDA68();
    }

    else
    {
      sub_25F0FDABC();
    }

    swift_allocError();
    *v8 = a3;
    v8[1] = a4;
    swift_willThrow();
  }

  else
  {
    a1[1] = a2 | 0x4000000000000000;
    return a2;
  }
}

uint64_t sub_25F0F8F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_25F176EDC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E28, &unk_25F17DC38);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_25F17888C();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0F90C0, 0, 0);
}

uint64_t sub_25F0F90C0()
{
  v26 = v0;
  v1 = v0[17];
  v2 = v0[5];
  v3 = v0[6];
  sub_25F17885C();

  v4 = v3;
  v5 = sub_25F17887C();
  v6 = sub_25F17951C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[6];
  if (v7)
  {
    v13 = v0[4];
    v12 = v0[5];
    v24 = v0[17];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_25F0BECF0(v13, v12, &v25);
    *(v14 + 12) = 1026;
    *(v14 + 14) = [v11 pid];

    _os_log_impl(&dword_25F0B3000, v5, v6, "PreviewsJITConfigurator(%{public}s): Passing endpoint for JIT to control agent service for pid: %{public}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x25F8D6230](v15, -1, -1);
    MEMORY[0x25F8D6230](v14, -1, -1);

    v16 = *(v9 + 8);
    v16(v24, v10);
  }

  else
  {

    v16 = *(v9 + 8);
    v16(v8, v10);
  }

  v0[18] = v16;
  v17 = sub_25F1770BC();
  v18 = *(MEMORY[0x277D40D70] + 4);
  v19 = swift_task_alloc();
  v0[19] = v19;
  v20 = sub_25F0FE11C(&qword_27FD47E30, MEMORY[0x277D40E20]);
  *v19 = v0;
  v19[1] = sub_25F0F9304;
  v21 = v0[13];
  v22 = v0[7];

  return MEMORY[0x2821A1908](v21, v17, v17, v20);
}

uint64_t sub_25F0F9304()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_25F0F9924;
  }

  else
  {
    v3 = sub_25F0F9418;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F0F9418()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[3];
  sub_25F176ECC();
  v5 = sub_25F176EBC();
  sub_25F0FE11C(&qword_27FD47E38, MEMORY[0x277D40D58]);
  sub_25F0FE11C(&unk_27FD47E40, MEMORY[0x277D40D68]);
  v6 = sub_25F17702C();
  v0[21] = v6;
  v7 = *(MEMORY[0x277D857C8] + 4);
  v8 = swift_task_alloc();
  v0[22] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v8 = v0;
  v8[1] = sub_25F0F959C;
  v10 = v0[2];
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v10, v6, v5, v9, v11);
}

uint64_t sub_25F0F959C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);

    v5 = sub_25F0F99B0;
  }

  else
  {
    v5 = sub_25F0F96B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F0F96B8()
{
  v35 = v0;
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[5];
  v4 = v0[6];

  sub_25F17885C();

  v5 = v4;
  v6 = sub_25F17887C();
  v7 = sub_25F17951C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v30 = v0[15];
  v10 = v0[13];
  v31 = v0[14];
  v32 = v0[16];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[10];
  v33 = v0[8];
  v15 = v0[6];
  if (v8)
  {
    v28 = v0[11];
    v29 = v0[13];
    v17 = v0[4];
    v16 = v0[5];
    v27 = v0[10];
    v18 = swift_slowAlloc();
    v26 = v9;
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_25F0BECF0(v17, v16, &v34);
    *(v18 + 12) = 1026;
    *(v18 + 14) = [v15 pid];

    _os_log_impl(&dword_25F0B3000, v6, v7, "PreviewsJITConfigurator(%{public}s): Sent endpoint for JIT to control agent service for pid: %{public}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x25F8D6230](v19, -1, -1);
    MEMORY[0x25F8D6230](v18, -1, -1);

    v26(v32, v31);
    (*(v13 + 8))(v27, v33);
    (*(v12 + 8))(v29, v28);
  }

  else
  {

    v9(v32, v31);
    (*(v13 + 8))(v14, v33);
    (*(v12 + 8))(v10, v11);
  }

  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[13];
  v23 = v0[10];

  v24 = v0[1];

  return v24();
}

uint64_t sub_25F0F9924()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F0F99B0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F0F9A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_25F176EBC();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = sub_25F17888C();
  v7[15] = v11;
  v12 = *(v11 - 8);
  v7[16] = v12;
  v13 = *(v12 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v14 = sub_25F1787BC();
  v7[19] = v14;
  v15 = *(v14 - 8);
  v7[20] = v15;
  v16 = *(v15 + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0F9C00, 0, 0);
}

uint64_t sub_25F0F9C00()
{
  v42 = v0;
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier);
  v3 = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier + 8);
  v0[2] = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox);
  v4 = v0[21];
  v5 = v0[6];

  sub_25F1787CC();
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DC8, &qword_25F17DC08);
  sub_25F0FDC70(&qword_27FD47DD8, &qword_27FD47DC8, &qword_25F17DC08);
  sub_25F17855C();
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];

  (*(v8 + 8))(v7, v9);

  sub_25F17885C();

  v11 = sub_25F17887C();
  v12 = sub_25F17952C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[16];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_25F0BECF0(v2, v3, v41);
    _os_log_impl(&dword_25F0B3000, v11, v12, "JITXPCListener(%{public}s): Listening to NSXPCListenerEndpoint", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x25F8D6230](v18, -1, -1);
    MEMORY[0x25F8D6230](v17, -1, -1);
  }

  else
  {
  }

  v40 = *(v16 + 8);
  v40(v14, v15);
  v19 = v0[17];
  v20 = v0[7];
  v21 = *(v20 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_listener);
  v22 = [v21 endpoint];
  v0[22] = v22;
  [v21 setDelegate_];
  [v21 activate];
  sub_25F17885C();

  v23 = sub_25F17887C();
  v24 = sub_25F17952C();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[16];
  v27 = v0[17];
  v28 = v0[15];
  if (v25)
  {
    v39 = v22;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_25F0BECF0(v2, v3, v41);
    _os_log_impl(&dword_25F0B3000, v23, v24, "JITXPCListener(%{public}s): Calling NSXPCListenerEndpoint configuration function", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x25F8D6230](v30, -1, -1);
    v31 = v29;
    v22 = v39;
    MEMORY[0x25F8D6230](v31, -1, -1);
  }

  v40(v27, v28);
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_25F0FA184;
  v33 = v0[14];
  v34 = v0[10];
  v35 = v0[11];
  v36 = v0[8];
  v37 = v0[9];

  return sub_25F0F8F28(v33, v22, v36, v37, v34, v35);
}

uint64_t sub_25F0FA184()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_25F0FA454;
  }

  else
  {
    v3 = sub_25F0FA298;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F0FA298()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_future);
  v2 = *(MEMORY[0x277D40550] + 4);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_25F0FA340;

  return MEMORY[0x2821A0BA0](v0 + 32);
}

uint64_t sub_25F0FA340()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_25F0FA6B0;
  }

  else
  {
    v3 = sub_25F0FA5B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F0FA454()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v10 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  *(v0 + 24) = *(v0 + 56);
  type metadata accessor for JITXPCListener();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener);
  sub_25F17800C();
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25F0FA5B8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v13 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 40);

  v12 = *(v0 + 32);
  (*(v3 + 32))(v9, v4, v5);

  v10 = *(v0 + 8);

  return v10(v12);
}

uint64_t sub_25F0FA6B0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v13 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  *(v0 + 24) = *(v0 + 56);
  type metadata accessor for JITXPCListener();
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener);
  sub_25F17800C();
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25F0FA834@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v39 = a7;
  v40 = a8;
  v37 = a4;
  v38 = a6;
  v36 = a5;
  v35 = a1;
  v14 = sub_25F17888C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v19 = a3;
  v20 = sub_25F17887C();
  v21 = sub_25F17951C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = a9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v9;
    v25 = v24;
    v41 = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_25F0BECF0(v35, a2, &v41);
    *(v23 + 12) = 1026;
    *(v23 + 14) = [v19 pid];

    _os_log_impl(&dword_25F0B3000, v20, v21, "PreviewsJITConfigurator(%{public}s): Initializing the JIT from the received XPC connection for pid: %{public}d", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v26 = v25;
    v10 = v33;
    MEMORY[0x25F8D6230](v26, -1, -1);
    v27 = v23;
    a9 = v34;
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  else
  {
  }

  (*(v15 + 8))(v18, v14);
  v28 = [v19 pid];
  type metadata accessor for PreviewsJITLinker();
  swift_allocObject();
  v29 = v37;

  v30 = v38;
  swift_unknownObjectRetain();
  v31 = v40;
  swift_unknownObjectRetain();
  result = sub_25F11DB34(v28, v29, v36 & 0x101, v30, v39, v31);
  if (!v10)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_25F0FAAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4 >> 62 == 1)
  {

    sub_25F17876C();

    *a1 = xmmword_25F17D950;
  }

  else if (v4 >> 62 == 2)
  {
    if (*a1 | v4 ^ 0x8000000000000000)
    {
      sub_25F0FD94C();
    }

    else
    {
      sub_25F0FD9A0();
    }

    swift_allocError();
    *v9 = a3;
    v9[1] = a4;
    swift_willThrow();
  }

  else
  {
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD000000000000018, 0x800000025F1856C0);
    MEMORY[0x25F8D50D0](a3, a4);
    MEMORY[0x25F8D50D0](0xD000000000000028, 0x800000025F185750);
    result = sub_25F17977C();
    __break(1u);
  }

  return result;
}

char *sub_25F0FACBC(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v5 = a1[1];
  v7 = OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_listener;
  *&v2[v7] = [objc_opt_self() anonymousListener];
  v8 = OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_invalidationHandle;
  v9 = sub_25F1782AC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v2[v8] = sub_25F17829C();
  v12 = &v2[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier];
  *v12 = v6;
  *(v12 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E70, &qword_25F17DC48);

  v22 = 2;
  *&v2[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_future] = sub_25F17867C();
  v24 = v13;
  v25 = 0;

  *&v2[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox] = sub_25F17883C();
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v23, sel_init, v22, 0, 0);
  v15 = *&v14[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_listener];
  v16 = *&v14[OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox];
  v24 = v14;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v6;
  v17[5] = v5;
  sub_25F0FE11C(&qword_27FD47E20, type metadata accessor for JITXPCListener);
  v18 = v15;
  swift_retain_n();
  v19 = v18;
  v20 = v14;
  sub_25F17802C();

  return v20;
}

uint64_t sub_25F0FAF44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F1787BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [a1 setDelegate_];
  [a1 invalidate];
  v19 = a2;
  sub_25F1787CC();
  v17 = a3;
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DC8, &qword_25F17DC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47E78, &qword_25F17DC50);
  sub_25F0FDC70(&qword_27FD47DD8, &qword_27FD47DC8, &qword_25F17DC08);
  sub_25F17855C();
  result = (*(v9 + 8))(v12, v8);
  v14 = v20;
  if (v20)
  {

    v14(v15);
    sub_25F0FDB90(v14);
    return sub_25F0FDB90(v14);
  }

  return result;
}

void sub_25F0FB134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      sub_25F0FD5E0(*a1, v6);
      *a1 = xmmword_25F17D960;
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    if (v8)
    {
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_25F17D960;
      v10 = swift_allocObject();
      *(v10 + 2) = v7;
      *(v10 + 3) = a2;
      *(v10 + 4) = a3;
      *(v10 + 5) = v13;
      v11 = sub_25F0FDBE8;
    }

    else
    {
      *a1 = xmmword_25F17D960;
      v10 = swift_allocObject();
      *(v10 + 2) = a2;
      *(v10 + 3) = a3;
      *(v10 + 4) = v7;
      v11 = sub_25F0FDBF4;
    }

    *a4 = v11;
    a4[1] = v10;
  }
}

void sub_25F0FB234(uint64_t a1, uint64_t a2)
{
  sub_25F0FDC00();
  v4 = swift_allocError();
  *v5 = 0;
  *(v5 + 4) = 1;
  *(v5 + 8) = a1;
  *(v5 + 16) = a2;

  sub_25F17874C();
}

void sub_25F0FB2B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 pid];
  sub_25F0FDC00();
  v6 = swift_allocError();
  *v7 = v5;
  *(v7 + 4) = 0;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;

  sub_25F17874C();
}

id sub_25F0FB350(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[1] >> 62)
  {
    sub_25F17885C();

    v15 = sub_25F17887C();
    v16 = sub_25F17953C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_25F0BECF0(a3, a4, &v21);
      _os_log_impl(&dword_25F0B3000, v15, v16, "JITXPCListener(%{public}s): NSXPCListenerEndpoint connection not in initialized state", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x25F8D6230](v18, -1, -1);
      MEMORY[0x25F8D6230](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    sub_25F0FDA14();
    swift_allocError();
    *v19 = a3;
    v19[1] = a4;
    swift_willThrow();
  }

  else
  {
    v13 = *a1 | 0x4000000000000000;
    *a1 = a2;
    a1[1] = v13;
    return a2;
  }
}

uint64_t sub_25F0FB558(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_25F1787BC();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25F17888C();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier);
  v14 = *(v3 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_identifier + 8);
  [a2 auditToken];
  v34 = v38;
  v32 = v39;
  v16 = objc_allocWithZone(MEMORY[0x277CF0B98]);
  v38 = v34;
  v39 = v32;
  *&v34 = [v16 initWithAuditToken_];
  sub_25F17885C();

  v17 = sub_25F17887C();
  v18 = sub_25F17952C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v32 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v3;
    v22 = a1;
    v23 = v21;
    *&v38 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_25F0BECF0(v15, v14, &v38);
    _os_log_impl(&dword_25F0B3000, v17, v18, "JITXPCListener(%{public}s): Listener for endpoint received request for new connection.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v24 = v23;
    a1 = v22;
    v3 = v31;
    MEMORY[0x25F8D6230](v24, -1, -1);
    v25 = v20;
    a2 = v32;
    MEMORY[0x25F8D6230](v25, -1, -1);
  }

  (*(v10 + 8))(v13, v33);
  v37 = *(v3 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF14JITXPCListener_stateBox);

  v26 = sub_25F1787CC();
  MEMORY[0x28223BE20](v26);
  *(&v30 - 6) = v15;
  *(&v30 - 5) = v14;
  v27 = v34;
  *(&v30 - 4) = v34;
  *(&v30 - 3) = a1;
  *(&v30 - 2) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DC8, &qword_25F17DC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47DD0, &unk_25F17DC10);
  sub_25F0FDC70(&qword_27FD47DD8, &qword_27FD47DC8, &qword_25F17DC08);
  sub_25F17855C();
  (*(v35 + 8))(v9, v36);

  (v38)(&v38, v28);

  return v38;
}

NSObject *sub_25F0FB930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, NSObject *a6@<X5>, void *a7@<X8>)
{
  v51 = a6;
  v13 = sub_25F17888C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = *(a1 + 8);
  v21 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v24 = swift_allocObject();
      v24[2] = a2;
      v24[3] = a3;
      v24[4] = v20;
      v24[5] = a4;
      *a7 = sub_25F0FD750;
      a7[1] = v24;

      sub_25F0FD75C(v20, v19);
    }

    else
    {
      v31 = swift_allocObject();
      v31[2] = a2;
      v31[3] = a3;
      v31[4] = a4;
      *a7 = sub_25F0FD6FC;
      a7[1] = v31;
    }

    return a4;
  }

  else if (v21)
  {
    v46 = v18;
    v47 = v16;
    v49 = a2;
    v50 = a7;
    v48 = v15;
    sub_25F0C1014(0, &unk_27FD47DE0, 0x277D82BB8);
    v25 = v20;

    if (sub_25F1795EC())
    {
      sub_25F0FD5E0(v20, v19);
      *a1 = v20;
      *(a1 + 8) = 0x8000000000000000;
      v26 = swift_allocObject();
      v27 = v50;
      v26[2] = v49;
      v26[3] = a3;
      v26[4] = v25;
      v26[5] = a5;
      v26[6] = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v28 = v51;
      v26[7] = v51;
      *v27 = sub_25F0FD6AC;
      v27[1] = v26;

      v29 = v25;
      v30 = a5;
      return v28;
    }

    else
    {
      v45 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v32 = v46;
      sub_25F17885C();

      v33 = a4;
      v34 = v25;
      v35 = sub_25F17887C();
      v36 = sub_25F17953C();

      v51 = v35;
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v52 = v39;
        *v37 = 136446722;
        *(v37 + 4) = sub_25F0BECF0(v49, a3, &v52);
        *(v37 + 12) = 2112;
        *(v37 + 14) = v33;
        *(v37 + 22) = 2112;
        *(v37 + 24) = v34;
        *v38 = v33;
        v38[1] = v20;
        v40 = v33;
        v41 = v34;
        v42 = v36;
        v43 = v51;
        _os_log_impl(&dword_25F0B3000, v51, v42, "JITXPCListener(%{public}s): XPC connector ignoring unrelated connection for %@ (expected %@)", v37, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x25F8D6230](v39, -1, -1);
        MEMORY[0x25F8D6230](v37, -1, -1);
      }

      else
      {
      }

      result = (*(v47 + 8))(v32, v48);
      v44 = v50;
      *v50 = sub_25F0FC3E8;
      v44[1] = 0;
    }
  }

  else
  {
    *a1 = xmmword_25F17D960;
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = v20;
    *a7 = sub_25F0FD7D4;
    a7[1] = v22;
  }

  return result;
}

void sub_25F0FBD64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v13 = sub_25F17887C();
  v14 = sub_25F17953C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a3;
    v16 = a4;
    v17 = v15;
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_25F0BECF0(a1, a2, &v23);
    _os_log_impl(&dword_25F0B3000, v13, v14, "JITXPCListener(%{public}s): XPC connector received connection before setup.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x25F8D6230](v18, -1, -1);
    v19 = v17;
    a4 = v16;
    MEMORY[0x25F8D6230](v19, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  sub_25F0FD7E0();
  v20 = swift_allocError();
  *v21 = a1;
  v21[1] = a2;

  sub_25F17874C();

  *a4 = 0;
}

uint64_t sub_25F0FBF68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v29 = a1;
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v14 = a3;
  v15 = a4;
  v16 = sub_25F17887C();
  v17 = sub_25F17953C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = a5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = v22;
    *v19 = 136446722;
    *(v19 + 4) = sub_25F0BECF0(v29, a2, &v30);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v14;
    *(v19 + 22) = 2112;
    *(v19 + 24) = v15;
    *v21 = v14;
    v21[1] = v15;
    v23 = v14;
    v24 = v15;
    _os_log_impl(&dword_25F0B3000, v16, v17, "JITXPCListener(%{public}s): Ignoring new connection attempt to JIT listener for pid: %@ from %@", v19, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
    swift_arrayDestroy();
    v25 = v21;
    a5 = v28;
    MEMORY[0x25F8D6230](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x25F8D6230](v22, -1, -1);
    MEMORY[0x25F8D6230](v19, -1, -1);

    result = (*(v10 + 8))(v13, v27);
  }

  else
  {

    result = (*(v10 + 8))(v13, v9);
  }

  *a5 = 0;
  return result;
}

uint64_t sub_25F0FC1BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v13 = a3;
  v14 = sub_25F17887C();
  v15 = sub_25F17953C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v8;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = a4;
    v28 = v20;
    v21 = v20;
    *v18 = 136446466;
    *(v18 + 4) = sub_25F0BECF0(v17, a2, &v28);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    v22 = v13;
    _os_log_impl(&dword_25F0B3000, v14, v15, "JITXPCListener(%{public}s): Invalidated, ignoring new connection attempt to JIT listener from %@", v18, 0x16u);
    sub_25F0B7E94(v19, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v23 = v21;
    a4 = v27;
    MEMORY[0x25F8D6230](v23, -1, -1);
    MEMORY[0x25F8D6230](v18, -1, -1);

    result = (*(v9 + 8))(v12, v26);
  }

  else
  {

    result = (*(v9 + 8))(v12, v8);
  }

  *a4 = 0;
  return result;
}

void sub_25F0FC3F0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _BYTE *a7@<X8>)
{
  v32 = a1;
  v33 = a4;
  v12 = sub_25F17888C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();
  v17 = a3;

  v18 = sub_25F17887C();
  v19 = sub_25F17952C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[0] = a6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[1] = a5;
    v23 = v22;
    v24 = swift_slowAlloc();
    v31 = a7;
    v25 = v24;
    v34 = v24;
    *v21 = 136446722;
    *(v21 + 4) = sub_25F0BECF0(v32, a2, &v34);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v17;
    *(v21 + 22) = 2112;
    *(v21 + 24) = v17;
    *v23 = v17;
    v23[1] = v17;
    v26 = v17;
    _os_log_impl(&dword_25F0B3000, v18, v19, "JITXPCListener(%{public}s): Accepting connection for: %@ from %@", v21, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    a7 = v31;
    MEMORY[0x25F8D6230](v27, -1, -1);
    v28 = v21;
    a6 = v30[0];
    MEMORY[0x25F8D6230](v28, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  [v33 setDelegate_];
  v34 = a6;
  v29 = a6;
  sub_25F17877C();

  *a7 = 1;
}

uint64_t sub_25F0FC7D0(uint64_t a1, uint64_t a2)
{
  sub_25F1796DC();

  strcpy(v6, "Error type: ");
  v4 = sub_25F17992C();
  MEMORY[0x25F8D50D0](v4);

  MEMORY[0x25F8D50D0](0xD00000000000001BLL, 0x800000025F1857F0);

  MEMORY[0x25F8D50D0](a1, a2);

  return v6[0];
}

uint64_t sub_25F0FC8A8(uint64_t a1)
{
  v2 = sub_25F0FEFF0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FC8E4(uint64_t a1)
{
  v2 = sub_25F0FEFF0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FC964(uint64_t a1)
{
  v2 = sub_25F0FE8D0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FC9A0(uint64_t a1)
{
  v2 = sub_25F0FE8D0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCA1C(uint64_t a1)
{
  v2 = sub_25F0FE7A0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCA58(uint64_t a1)
{
  v2 = sub_25F0FE7A0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCAD4(uint64_t a1)
{
  v2 = sub_25F0FF120();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCB10(uint64_t a1)
{
  v2 = sub_25F0FF120();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCB8C(uint64_t a1)
{
  v2 = sub_25F0FF250();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCBC8(uint64_t a1)
{
  v2 = sub_25F0FF250();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCC44(uint64_t a1)
{
  v2 = sub_25F0FED90();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCC80(uint64_t a1)
{
  v2 = sub_25F0FED90();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCCFC(uint64_t a1)
{
  v2 = sub_25F0FEC60();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCD38(uint64_t a1)
{
  v2 = sub_25F0FEC60();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCDB4(uint64_t a1)
{
  v2 = sub_25F0FEB30();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCDF0(uint64_t a1)
{
  v2 = sub_25F0FEB30();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCE6C(uint64_t a1)
{
  v2 = sub_25F0FE670();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCEA8(uint64_t a1)
{
  v2 = sub_25F0FE670();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0FCF24(uint64_t a1)
{
  v2 = sub_25F0FEA00();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FCF60(uint64_t a1)
{
  v2 = sub_25F0FEA00();

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F0FCF9C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  if (v0[1])
  {
    sub_25F1796DC();

    MEMORY[0x25F8D50D0](v1, v2);
  }

  else
  {
    v3 = *v0;
    sub_25F1796DC();

    MEMORY[0x25F8D50D0](v1, v2);
    MEMORY[0x25F8D50D0](0x203A646970202CLL, 0xE700000000000000);
    v4 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v4);
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_25F0FD0DC(uint64_t a1)
{
  v2 = sub_25F0FEEC0();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0FD118(uint64_t a1)
{
  v2 = sub_25F0FEEC0();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t getEnumTagSinglePayload for JITManager.Configuration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for JITManager.Configuration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit14JITXPCListener33_1C89A0595A9F44E3FEB21A13643147FFLLC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25F0FD340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F0FD39C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F0FD3FC(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_15PreviewShellKit23PreviewsJITConfigurator33_1C89A0595A9F44E3FEB21A13643147FFLLC5StateO(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_25F0FD460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F0FD4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F0FD544(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

void sub_25F0FD5E0(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
    }
  }

  else
  {
    if (v3)
    {
    }
  }
}

uint64_t sub_25F0FD654()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F0FD6BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F0FD708()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_25F0FD75C(id result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {

      return result;
    }
  }

  else
  {
    if (v3)
    {
      v4 = result;
    }
  }

  return result;
}

unint64_t sub_25F0FD7E0()
{
  result = qword_27FD47DF0;
  if (!qword_27FD47DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47DF0);
  }

  return result;
}

uint64_t sub_25F0FD834()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F0FD894()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25F0FD8EC@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_25F0FA834(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v2 | *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1);
}

unint64_t sub_25F0FD94C()
{
  result = qword_27FD47E10;
  if (!qword_27FD47E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E10);
  }

  return result;
}

unint64_t sub_25F0FD9A0()
{
  result = qword_27FD47E18;
  if (!qword_27FD47E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E18);
  }

  return result;
}

unint64_t sub_25F0FDA14()
{
  result = qword_27FD47E50;
  if (!qword_27FD47E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E50);
  }

  return result;
}

unint64_t sub_25F0FDA68()
{
  result = qword_27FD47E58;
  if (!qword_27FD47E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E58);
  }

  return result;
}

unint64_t sub_25F0FDABC()
{
  result = qword_27FD47E60;
  if (!qword_27FD47E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E60);
  }

  return result;
}

unint64_t sub_25F0FDB10()
{
  result = qword_27FD47E68;
  if (!qword_27FD47E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E68);
  }

  return result;
}

uint64_t sub_25F0FDB90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F0FDBA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25F0FDC00()
{
  result = qword_27FD47E80;
  if (!qword_27FD47E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47E80);
  }

  return result;
}

uint64_t sub_25F0FDC70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F0FDCC4()
{
  MEMORY[0x25F8D62D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F0FDD48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for JITManager.Storage.Record()
{
  result = qword_27FD47EE0;
  if (!qword_27FD47EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0FDDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JITManager.Storage.Record();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0FDE5C(uint64_t a1)
{
  v2 = type metadata accessor for JITManager.Storage.Record();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0FDEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F0FDF20()
{
  result = qword_27FD47EB0;
  if (!qword_27FD47EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EB0);
  }

  return result;
}

uint64_t sub_25F0FDF74()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0FE040()
{
  v1 = *(sub_25F17767C() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_25F0F7F38(v2, v3, v4, v5);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F0FE11C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_75Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_25F0FE1B0()
{
  result = qword_27FD47EC8;
  if (!qword_27FD47EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EC8);
  }

  return result;
}

unint64_t sub_25F0FE204()
{
  result = qword_27FD47ED0;
  if (!qword_27FD47ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47ED0);
  }

  return result;
}

uint64_t sub_25F0FE290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F0FE2D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0FE3AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BatchIdentity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F0FE46C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BatchIdentity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F0FE510()
{
  result = type metadata accessor for PreviewsJITConfigurator();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BatchIdentity(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25F0FE59C()
{
  result = qword_27FD47EF8;
  if (!qword_27FD47EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EF8);
  }

  return result;
}

unint64_t sub_25F0FE5F4()
{
  result = qword_27FD47F00;
  if (!qword_27FD47F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F00);
  }

  return result;
}

unint64_t sub_25F0FE648(uint64_t a1)
{
  result = sub_25F0FE670();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FE670()
{
  result = qword_27FD47F08;
  if (!qword_27FD47F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F08);
  }

  return result;
}

unint64_t sub_25F0FE6CC()
{
  result = qword_27FD47F10;
  if (!qword_27FD47F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F10);
  }

  return result;
}

unint64_t sub_25F0FE724()
{
  result = qword_27FD47F18;
  if (!qword_27FD47F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F18);
  }

  return result;
}

unint64_t sub_25F0FE778(uint64_t a1)
{
  result = sub_25F0FE7A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FE7A0()
{
  result = qword_27FD47F20;
  if (!qword_27FD47F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F20);
  }

  return result;
}

unint64_t sub_25F0FE7FC()
{
  result = qword_27FD47F28;
  if (!qword_27FD47F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F28);
  }

  return result;
}

unint64_t sub_25F0FE854()
{
  result = qword_27FD47F30;
  if (!qword_27FD47F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F30);
  }

  return result;
}

unint64_t sub_25F0FE8A8(uint64_t a1)
{
  result = sub_25F0FE8D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FE8D0()
{
  result = qword_27FD47F38;
  if (!qword_27FD47F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F38);
  }

  return result;
}

unint64_t sub_25F0FE92C()
{
  result = qword_27FD47F40;
  if (!qword_27FD47F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F40);
  }

  return result;
}

unint64_t sub_25F0FE984()
{
  result = qword_27FD47F48;
  if (!qword_27FD47F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F48);
  }

  return result;
}

unint64_t sub_25F0FE9D8(uint64_t a1)
{
  result = sub_25F0FEA00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEA00()
{
  result = qword_27FD47F50;
  if (!qword_27FD47F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F50);
  }

  return result;
}

unint64_t sub_25F0FEA5C()
{
  result = qword_27FD47F58;
  if (!qword_27FD47F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F58);
  }

  return result;
}

unint64_t sub_25F0FEAB4()
{
  result = qword_27FD47F60;
  if (!qword_27FD47F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F60);
  }

  return result;
}

unint64_t sub_25F0FEB08(uint64_t a1)
{
  result = sub_25F0FEB30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEB30()
{
  result = qword_27FD47F68;
  if (!qword_27FD47F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F68);
  }

  return result;
}

unint64_t sub_25F0FEB8C()
{
  result = qword_27FD47F70;
  if (!qword_27FD47F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F70);
  }

  return result;
}

unint64_t sub_25F0FEBE4()
{
  result = qword_27FD47F78;
  if (!qword_27FD47F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F78);
  }

  return result;
}

unint64_t sub_25F0FEC38(uint64_t a1)
{
  result = sub_25F0FEC60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEC60()
{
  result = qword_27FD47F80;
  if (!qword_27FD47F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F80);
  }

  return result;
}

unint64_t sub_25F0FECBC()
{
  result = qword_27FD47F88;
  if (!qword_27FD47F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F88);
  }

  return result;
}

unint64_t sub_25F0FED14()
{
  result = qword_27FD47F90;
  if (!qword_27FD47F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F90);
  }

  return result;
}

unint64_t sub_25F0FED68(uint64_t a1)
{
  result = sub_25F0FED90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FED90()
{
  result = qword_27FD47F98;
  if (!qword_27FD47F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47F98);
  }

  return result;
}

unint64_t sub_25F0FEDEC()
{
  result = qword_27FD47FA0;
  if (!qword_27FD47FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FA0);
  }

  return result;
}

unint64_t sub_25F0FEE44()
{
  result = qword_27FD47FA8;
  if (!qword_27FD47FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FA8);
  }

  return result;
}

unint64_t sub_25F0FEE98(uint64_t a1)
{
  result = sub_25F0FEEC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEEC0()
{
  result = qword_27FD47FB0;
  if (!qword_27FD47FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FB0);
  }

  return result;
}

unint64_t sub_25F0FEF1C()
{
  result = qword_27FD47FB8;
  if (!qword_27FD47FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FB8);
  }

  return result;
}

unint64_t sub_25F0FEF74()
{
  result = qword_27FD47FC0;
  if (!qword_27FD47FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FC0);
  }

  return result;
}

unint64_t sub_25F0FEFC8(uint64_t a1)
{
  result = sub_25F0FEFF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FEFF0()
{
  result = qword_27FD47FC8;
  if (!qword_27FD47FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FC8);
  }

  return result;
}

unint64_t sub_25F0FF04C()
{
  result = qword_27FD47FD0;
  if (!qword_27FD47FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FD0);
  }

  return result;
}

unint64_t sub_25F0FF0A4()
{
  result = qword_27FD47FD8;
  if (!qword_27FD47FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FD8);
  }

  return result;
}

unint64_t sub_25F0FF0F8(uint64_t a1)
{
  result = sub_25F0FF120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FF120()
{
  result = qword_27FD47FE0;
  if (!qword_27FD47FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FE0);
  }

  return result;
}

unint64_t sub_25F0FF17C()
{
  result = qword_27FD47FE8;
  if (!qword_27FD47FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FE8);
  }

  return result;
}

unint64_t sub_25F0FF1D4()
{
  result = qword_27FD47FF0;
  if (!qword_27FD47FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47FF0);
  }

  return result;
}

unint64_t sub_25F0FF228(uint64_t a1)
{
  result = sub_25F0FF250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F0FF250()
{
  result = qword_27FD47FF8[0];
  if (!qword_27FD47FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD47FF8);
  }

  return result;
}

uint64_t dispatch thunk of static NonUIContentProvider.create(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25F0BF3E4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_25F0FF574(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_25F0FF5B4(a1);
  return v2;
}

void *sub_25F0FF5B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v12 = *(*(v5 + 8) + 8);
  sub_25F17828C();
  v1[4] = sub_25F17827C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48090, &unk_25F17EF60);
  v1[5] = sub_25F17883C();
  v1[6] = 0;
  v6 = sub_25F1776AC();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  (*(v7 + 32))(v10 + v8, a1, v6);
  v2[2] = &unk_25F17EFB0;
  v2[3] = v10;
  return v2;
}

uint64_t sub_25F0FF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25F0BF3E4;

  return v15(a1, a3, a2, a4, a5);
}

uint64_t sub_25F0FF8BC(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v45 = a2;
  v46 = a3;
  v47 = *v4;
  v7 = sub_25F177FFC();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25F177D2C();
  v52 = *(v43 - 8);
  v44 = *(v52 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25F17720C();
  v51 = *(v53 - 8);
  v40 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v12;
  v38 = sub_25F177F8C();
  v37 = *(v38 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v4[5];
  swift_getKeyPath();
  v56 = *a1;
  v14 = v56;
  v57 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17853C();

  v15 = v42;
  sub_25F10436C();

  v16 = v4[4];
  LODWORD(v58) = v14;
  v54 = v5;
  v55 = a1;
  v39 = sub_25F17825C();
  v17 = v37;
  v18 = v38;
  (*(v37 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v38);
  v19 = v51;
  (*(v51 + 16))(v12, v46, v53);
  v20 = v52;
  v21 = v41;
  v22 = v43;
  (*(v52 + 16))(v41, v15, v43);
  v23 = v17;
  v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v25 = (v13 + *(v19 + 80) + v24) & ~*(v19 + 80);
  v26 = (v40 + *(v20 + 80) + v25) & ~*(v20 + 80);
  v27 = (v44 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 16) = *(v47 + 80);
  *(v28 + 24) = *(v29 + 88);
  (*(v23 + 32))(v28 + v24, v35, v18);
  (*(v51 + 32))(v28 + v25, v36, v53);
  (*(v52 + 32))(v28 + v26, v21, v22);
  *(v28 + v27) = v5;

  v30 = v48;
  sub_25F177FCC();
  v31 = v30;
  v32 = sub_25F1786AC();

  (*(v49 + 8))(v31, v50);
  return v32;
}

uint64_t sub_25F0FFE24(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v25 = *v2;
  v4 = *(v25 + 80);
  v5 = sub_25F17960C();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v26 = *(v4 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  v13 = sub_25F177CBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177CAC();
  sub_25F10291C(&qword_27FD48098, MEMORY[0x277D40C50]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v30 == v28 && v31 == v29)
  {
    (*(v14 + 8))(v17, v13);

LABEL_5:
    sub_25F100E3C(v27);
    v19 = 1;
    return v19 & 1;
  }

  v22 = a2;
  v18 = sub_25F17983C();
  (*(v14 + 8))(v17, v13);

  if (v18)
  {
    goto LABEL_5;
  }

  sub_25F1008C0(v9);
  v21 = v26;
  if ((*(v26 + 48))(v9, 1, v4) == 1)
  {
    (*(v23 + 8))(v9, v24);
    v19 = 0;
  }

  else
  {
    (*(v21 + 32))(v12, v9, v4);
    v19 = (*(*(*(v25 + 88) + 8) + 32))(v27, v22, v4);
    (*(v21 + 8))(v12, v4);
  }

  return v19 & 1;
}

uint64_t sub_25F1001D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for PreviewAgentConnector();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = *(v4 + 80);
  sub_25F17873C();
  v13 = sub_25F17932C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_25F102560(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v15[2] = v12;
  v16 = *(v4 + 88);
  v15[3] = v16;
  v15[4] = a1;
  sub_25F10274C(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v16;

  return sub_25F17870C();
}

uint64_t sub_25F100434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F100458, 0, 0);
}

uint64_t sub_25F100458()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v8 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F0EB0C4;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v5);
}

uint64_t sub_25F100550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = a3;
  v32 = a4;
  v29 = *a5;
  v30 = a1;
  v7 = sub_25F177FFC();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v29 + 88);
  v11 = *(v28 + 8);
  v12 = *(v29 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v24 - v16;
  v18 = v34;
  (*(v11 + 48))(a2, v12, v11);
  if (!v18)
  {
    v34 = v14;
    v25 = v10;
    v26 = v7;
    v19 = v28;
    v33[3] = v29;
    v33[4] = &off_287153AF8;
    v33[0] = a5;
    v20 = *(v28 + 16);

    v20(v17, v31, v32, v33, v12, v19);
    (*(v34 + 8))(v17, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v22 = swift_allocObject();
    *(v22 + 16) = v12;
    *(v22 + 24) = v19;
    sub_25F177F8C();
    v23 = v25;
    sub_25F177FCC();
    AssociatedTypeWitness = sub_25F1785BC();

    (*(v27 + 8))(v23, v26);
  }

  return AssociatedTypeWitness;
}

uint64_t sub_25F1008C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[5];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17856C();
  (*(v5 + 8))(v8, v4);

  LODWORD(v12) = v13;
  BYTE4(v12) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48090, &unk_25F17EF60);
  return sub_25F100B94(sub_25F1021A8, v1, MEMORY[0x277D84A98], *(v3 + 80), v9, a1);
}

uint64_t sub_25F100A8C@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *a1;
  v6 = a2[4];
  sub_25F17826C();
  v7 = *(v4 + 80);
  sub_25F17873C();
  sub_25F17900C();

  if (!v9)
  {
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }

  sub_25F17861C();
}

uint64_t sub_25F100B94@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t sub_25F100E3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();

  v9 = sub_25F17887C();
  v10 = sub_25F17952C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = *(*v2 + 80);

    v15 = sub_25F17992C();
    v17 = v16;

    v18 = sub_25F0BECF0(v15, v17, &v23);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_25F0B3000, v9, v10, "Received incoming remote events message stream for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x25F8D6230](v13, -1, -1);
    MEMORY[0x25F8D6230](v12, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  sub_25F17781C();
  sub_25F10291C(&qword_27FD480A0, MEMORY[0x277D40AA8]);
  v19 = sub_25F17743C();
  v20 = v2[6];
  v2[6] = v19;
}

uint64_t sub_25F1010A0(int a1)
{
  v24 = a1;
  v22 = *v1;
  v2 = *(v22 + 80);
  v3 = sub_25F17960C();
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v23 = *(v2 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = sub_25F1787BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1[5];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17856C();
  (*(v12 + 8))(v15, v11);

  if ((v27 & 1) == 0 && v26 == v24)
  {
    sub_25F1008C0(v7);
    v16 = v23;
    if ((*(v23 + 48))(v7, 1, v2) != 1)
    {
      (*(v16 + 32))(v10, v7, v2);
      v18 = (*(*(v22 + 88) + 32))(v2);
      (*(v16 + 8))(v10, v2);
      return v18;
    }

    (*(v20 + 8))(v7, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  return sub_25F17872C();
}

uint64_t sub_25F101438(int a1)
{
  v24 = a1;
  v22 = *v1;
  v2 = *(v22 + 80);
  v3 = sub_25F17960C();
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v23 = *(v2 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = sub_25F1787BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1[5];

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48080, &unk_25F17EF50);
  sub_25F102144();
  sub_25F17856C();
  (*(v12 + 8))(v15, v11);

  if ((v27 & 1) == 0 && v26 == v24)
  {
    sub_25F1008C0(v7);
    v16 = v23;
    if ((*(v23 + 48))(v7, 1, v2) != 1)
    {
      (*(v16 + 32))(v10, v7, v2);
      v18 = (*(*(v22 + 88) + 40))(v2);
      (*(v16 + 8))(v10, v2);
      return v18;
    }

    (*(v20 + 8))(v7, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  return sub_25F17872C();
}

uint64_t sub_25F1017D0(int a1)
{
  v2 = v1;
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v9 = sub_25F17887C();
  v10 = sub_25F17952C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_25F0B3000, v9, v10, "Preview agent with pid %{public}d crashed", v11, 8u);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  if (*(v2 + 48))
  {
    *(swift_allocObject() + 16) = a1;

    sub_25F17860C();
  }

  return result;
}

uint64_t sub_25F101978(uint64_t a1, int a2)
{
  v34 = a2;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v32 - 8);
  v30[1] = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v30 - v3;
  v4 = sub_25F17781C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  sub_25F17886C();
  v16 = sub_25F17887C();
  v17 = sub_25F17955C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    *(v18 + 4) = v34;
    _os_log_impl(&dword_25F0B3000, v16, v17, "Notifying host that crash occurred for %{public}d", v18, 8u);
    MEMORY[0x25F8D6230](v18, -1, -1);
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  *v7 = v34;
  v7[4] = 0;
  swift_storeEnumTagMultiPayload();
  v20 = v32;
  sub_25F17746C();
  sub_25F10297C(v7);
  sub_25F17886C();
  v21 = sub_25F17887C();
  v22 = sub_25F17955C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67240192;
    *(v23 + 4) = v34;
    _os_log_impl(&dword_25F0B3000, v21, v22, "Gathering crash details for %{public}d", v23, 8u);
    MEMORY[0x25F8D6230](v23, -1, -1);
  }

  v19(v13, v8);
  sub_25F176FCC();
  v24 = sub_25F176FBC();
  v25 = v34;
  sub_25F176F9C();

  v26 = v31;
  (*(v2 + 16))(v31, v33, v20);
  v27 = (*(v2 + 80) + 20) & ~*(v2 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  (*(v2 + 32))(v28 + v27, v26, v20);
  sub_25F17860C();
}

uint64_t sub_25F101D6C(uint64_t a1, int a2)
{
  v4 = sub_25F17781C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v13 = sub_25F17887C();
  v14 = sub_25F17955C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67240192;
    *(v15 + 4) = a2;
    _os_log_impl(&dword_25F0B3000, v13, v14, "Sending host crash details for %{public}d", v15, 8u);
    MEMORY[0x25F8D6230](v15, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v16 = sub_25F177EAC();
  (*(*(v16 - 8) + 16))(v7, a1, v16);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  sub_25F17746C();
  return sub_25F10297C(v7);
}

void *sub_25F101FA0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_25F101FD8()
{
  sub_25F101FA0();

  return swift_deallocClassInstance();
}

uint64_t sub_25F102024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F0FF574(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F102108(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F102144()
{
  result = qword_27FD48088;
  if (!qword_27FD48088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD48080, &unk_25F17EF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48088);
  }

  return result;
}

uint64_t sub_25F1021E4()
{
  v18 = sub_25F177F8C();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v17 = sub_25F17720C();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_25F177D2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);
  v15 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v13 | 7);
}

uint64_t sub_25F1023C4(uint64_t a1)
{
  v3 = *(sub_25F177F8C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25F17720C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_25F177D2C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  return sub_25F100550(a1, v1 + v4, v1 + v7, v1 + v10, *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_25F102560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAgentConnector();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1025C4()
{
  v1 = (type metadata accessor for PreviewAgentConnector() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 32);

  v6 = v1[7];
  v7 = sub_25F17767C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = (v0 + v3 + v1[8]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = v8[3];

  v13 = v8[4];

  v14 = v8[5];

  v15 = v8[6];

  v16 = v8[7];

  v17 = v8[8];

  v18 = v8[9];

  v19 = v8[10];

  v20 = v8[11];

  v21 = v8[12];

  v22 = v8[13];

  v23 = v8[14];

  v24 = v8[15];

  v25 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F10274C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAgentConnector();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1027B0(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F100434(a1, v6, v1 + v5);
}

uint64_t sub_25F1028A4()
{
  v2 = *(v0 + 16);
  v3 = *(*(*(v0 + 24) + 8) + 8);
  return sub_25F17800C();
}

uint64_t sub_25F10291C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F10297C(uint64_t a1)
{
  v2 = sub_25F17781C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1029D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 20) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F102A6C(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_25F101D6C(a1, v4);
}

uint64_t sub_25F102AEC()
{
  v1 = sub_25F1776AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F102B74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(sub_25F1776AC() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F0C10CC;

  return sub_25F0FF738(a1, a2, v2 + v9, v6, v7);
}

uint64_t sub_25F102C80(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_25F1777CC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_25F1774BC();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F102D9C, 0, 0);
}

uint64_t sub_25F102D9C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  sub_25F17742C();
  sub_25F1048A4(v1, v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F102E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a4;
  v6[10] = a6;
  v7 = sub_25F17813C();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = sub_25F17888C();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F102FEC, 0, 0);
}

uint64_t sub_25F102FEC()
{
  v1 = v0[19];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_25F1030B8;
  v5 = v0[19];
  v6 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v6);
}

uint64_t sub_25F1030B8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F1031B4, 0, 0);
}

uint64_t sub_25F1031B4()
{
  v1 = v0[7];
  v0[21] = v1;
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
    v0[22] = v2;
    v0[5] = v2;
    v0[6] = sub_25F0B7D00(&qword_27FD475C8, &qword_27FD46D28, &qword_25F17B180);
    v0[2] = v1;
    v3 = *(MEMORY[0x277D406C8] + 4);

    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_25F103330;
    v5 = v0[10];

    return MEMORY[0x2821A0EA0](v0 + 2);
  }

  else
  {
    v6 = v0[16];
    v7 = v0[13];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25F103330()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_25F1034FC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = sub_25F10344C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F10344C()
{
  v1 = v0[21];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_25F1030B8;
  v4 = v0[19];
  v5 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_25F1034FC()
{
  v1 = v0[24];
  v2 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_25F17884C();
  v3 = v1;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_25F0B3000, v4, v5, "Failed to attach host connection to host-shell message pipe: %@", v7, 0xCu);
    sub_25F0B7E94(v8, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);
  }

  v24 = v0[24];
  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];

  (*(v13 + 8))(v14, v16);
  v0[8] = v11;
  sub_25F17812C();
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();

  (*(v18 + 8))(v15, v17);

  v19 = *(MEMORY[0x277D85798] + 4);
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_25F1030B8;
  v21 = v0[19];
  v22 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v22);
}

uint64_t sub_25F103780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480E0, &qword_25F17F038);
  result = sub_25F17883C();
  qword_27FD480B0 = result;
  return result;
}

uint64_t sub_25F1037D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v41 = a4;
  v39 = a3;
  v43 = a5;
  v7 = sub_25F17776C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v38 = a2;
  sub_25F177D1C();
  v42 = a1;
  v24 = *a1;
  if (*(*a1 + 16) && (v25 = sub_25F0C8E04(v13), (v26 & 1) != 0))
  {
    v27 = *(v24 + 56);
    v36 = v25;
    v37 = v27;
    updated = type metadata accessor for UpdateRegistry.Update();
    v29 = *(updated - 8);
    sub_25F104840(v37 + *(v29 + 72) * v36, v23);
    (*(v8 + 8))(v13, v7);
    (*(v29 + 56))(v23, 0, 1, updated);
  }

  else
  {
    (*(v8 + 8))(v13, v7);
    updated = type metadata accessor for UpdateRegistry.Update();
    (*(*(updated - 8) + 56))(v23, 1, 1, updated);
  }

  v30 = v40;
  sub_25F177D1C();
  sub_25F177D0C();
  type metadata accessor for UpdateRegistry.Update();
  v31 = &v21[*(updated + 20)];
  v32 = v41;
  *v31 = v39;
  *(v31 + 1) = v32;
  *&v21[*(updated + 24)] = MEMORY[0x277D84F90];
  v33 = *(updated - 8);
  (*(v33 + 56))(v21, 0, 1, updated);

  sub_25F169E80(v21, v30);
  sub_25F104774(v23, v18);
  if ((*(v33 + 48))(v18, 1, updated) == 1)
  {
    result = sub_25F0B7E94(v18, &qword_27FD480D8, &qword_25F17F030);
    v35 = 0;
  }

  else
  {
    v35 = *&v18[*(updated + 24)];

    result = sub_25F1047E4(v18);
  }

  *v43 = v35;
  return result;
}

uint64_t sub_25F103BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v63 = a3;
  v76 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v61 - v8;
  v64 = sub_25F1774BC();
  v70 = *(v64 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v64);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25F17757C();
  v72 = *(v74 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F0, &qword_25F17F058);
  v13 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v21 = sub_25F17776C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v62 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  updated = type metadata accessor for UpdateRegistry.Update();
  v75 = *(updated - 8);
  v28 = *(v75 + 64);
  v29 = MEMORY[0x28223BE20](updated);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v61 - v32;
  v34 = a2;
  sub_25F1776EC();
  v66 = a1;
  v35 = *a1;
  if (!*(*a1 + 16) || (v36 = sub_25F0C8E04(v27), (v37 & 1) == 0))
  {
    result = (*(v22 + 8))(v27, v21);
LABEL_11:
    v45 = v76;
    *v76 = 0;
    v45[1] = 0;
    return result;
  }

  sub_25F104840(*(v35 + 56) + *(v75 + 72) * v36, v31);
  (*(v22 + 8))(v27, v21);
  sub_25F104D40(v31, v33);
  sub_25F1776DC();
  v38 = v72;
  v39 = v74;
  (*(v72 + 56))(v20, 0, 1, v74);
  v40 = *(v71 + 48);
  v41 = v73;
  sub_25F104DA4(v33, v73);
  sub_25F104DA4(v20, v41 + v40);
  v42 = *(v38 + 48);
  if (v42(v41, 1, v39) != 1)
  {
    v71 = v34;
    v44 = v67;
    sub_25F104DA4(v41, v67);
    if (v42(v41 + v40, 1, v39) != 1)
    {
      v46 = v61;
      (*(v38 + 32))(v61, v41 + v40, v39);
      sub_25F104E48(&qword_27FD48100, MEMORY[0x277D40810]);
      v47 = sub_25F17904C();
      v48 = *(v38 + 8);
      v48(v46, v39);
      sub_25F0B7E94(v20, &qword_27FD480F8, &qword_25F17F060);
      v48(v44, v39);
      sub_25F0B7E94(v41, &qword_27FD480F8, &qword_25F17F060);
      if (v47)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_25F0B7E94(v20, &qword_27FD480F8, &qword_25F17F060);
    (*(v38 + 8))(v44, v39);
LABEL_9:
    sub_25F0B7E94(v41, &qword_27FD480F0, &qword_25F17F058);
LABEL_10:
    result = sub_25F1047E4(v33);
    goto LABEL_11;
  }

  sub_25F0B7E94(v20, &qword_27FD480F8, &qword_25F17F060);
  if (v42(v41 + v40, 1, v39) != 1)
  {
    goto LABEL_9;
  }

  sub_25F0B7E94(v41, &qword_27FD480F8, &qword_25F17F060);
LABEL_13:
  v49 = v64;
  (*(v70 + 16))(v69, v63, v64);
  v50 = *(updated + 24);
  v51 = *&v33[v50];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_25F115EC8(0, v51[2] + 1, 1, v51);
  }

  v53 = v51[2];
  v52 = v51[3];
  if (v53 >= v52 >> 1)
  {
    v51 = sub_25F115EC8(v52 > 1, v53 + 1, 1, v51);
  }

  v51[2] = v53 + 1;
  (*(v70 + 32))(v51 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v53, v69, v49);
  *&v33[v50] = v51;
  v54 = v62;
  sub_25F1776EC();
  v55 = v65;
  sub_25F104840(v33, v65);
  v56 = updated;
  (*(v75 + 56))(v55, 0, 1, updated);
  sub_25F169E80(v55, v54);
  v57 = &v33[*(v56 + 20)];
  v59 = *v57;
  v58 = *(v57 + 1);

  sub_25F1047E4(v33);
  result = swift_allocObject();
  *(result + 16) = v59;
  *(result + 24) = v58;
  v60 = v76;
  *v76 = sub_25F104E14;
  v60[1] = result;
  return result;
}

uint64_t sub_25F10436C()
{
  v0 = sub_25F1774BC();
  v15[0] = *(v0 - 8);
  v1 = *(v15[0] + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F1787BC();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD46808 != -1)
  {
    swift_once();
  }

  v17 = qword_27FD480B0;

  v8 = sub_25F1787CC();
  v15[1] = v15;
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480B8, &qword_25F17F020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480C0, &qword_25F17F028);
  sub_25F0B7D00(&qword_27FD480C8, &qword_27FD480B8, &qword_25F17F020);
  sub_25F17855C();
  (*(v4 + 8))(v7, v16);

  if (v18)
  {
    v16 = v18;
    v10 = *(v18 + 16);
    if (v10)
    {
      v11 = *(v15[0] + 16);
      v12 = v16 + ((*(v15[0] + 80) + 32) & ~*(v15[0] + 80));
      v13 = *(v15[0] + 72);
      v14 = (v15[0] + 8);
      do
      {
        v11(v3, v12, v0);
        sub_25F104E48(&qword_27FD480D0, MEMORY[0x277D40750]);
        sub_25F17800C();
        (*v14)(v3, v0);
        v12 += v13;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t type metadata accessor for UpdateRegistry.Update()
{
  result = qword_27FD48108;
  if (!qword_27FD48108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F104774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1047E4(uint64_t a1)
{
  updated = type metadata accessor for UpdateRegistry.Update();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_25F104840(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateRegistry.Update();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F1048A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F177CBC();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F1787BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD46808 != -1)
  {
    swift_once();
  }

  v26 = qword_27FD480B0;

  v12 = sub_25F1787CC();
  MEMORY[0x28223BE20](v12);
  v21[1] = a2;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480B8, &qword_25F17F020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480E8, &qword_25F17F050);
  sub_25F0B7D00(&qword_27FD480C8, &qword_27FD480B8, &qword_25F17F020);
  sub_25F17855C();
  (*(v8 + 8))(v11, v7);

  v13 = v27[0];
  if (!v27[0])
  {
    v19 = 0;
LABEL_8:
    sub_25F1774BC();
    sub_25F104E48(&qword_27FD480D0, MEMORY[0x277D40750]);
    sub_25F17800C();
    v18 = v19;
    return sub_25F0FDB90(v18);
  }

  v14 = v27[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  sub_25F104D30(v13);

  v16 = v22;
  sub_25F1776FC();
  v13(v27, v25, v16);

  v17 = v27[0];
  (*(v23 + 8))(v16, v24);
  if ((v17 & 1) == 0)
  {
    sub_25F0FDB90(v13);
    v19 = sub_25F104CF8;
    goto LABEL_8;
  }

  v18 = v13;
  return sub_25F0FDB90(v18);
}

uint64_t sub_25F104CC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F104CF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_25F104D30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F104D40(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateRegistry.Update();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F104DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F104E14@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25F104E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F104EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F104F90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_25F105054()
{
  sub_25F1051A0(319, &qword_27FD48118, MEMORY[0x277D40810], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25F105150();
    if (v1 <= 0x3F)
    {
      sub_25F1051A0(319, &qword_27FD48128, MEMORY[0x277D40750], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_25F105150()
{
  result = qword_27FD48120;
  if (!qword_27FD48120)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FD48120);
  }

  return result;
}

void sub_25F1051A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25F10520C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0BF3E4;

  return PreviewAgentLauncher.jitBootstrapMethod(forIdentifier:)(v6, a2, a3);
}

uint64_t PreviewAgentLauncher.jitBootstrapMethod(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_25F1052D4, 0, 0);
}

uint64_t sub_25F1052D4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  DynamicType = swift_getDynamicType();
  v5 = type metadata accessor for NoAgentJITBootstrapMethodProvided(0);
  sub_25F1091A0(&qword_27FD48130, type metadata accessor for NoAgentJITBootstrapMethodProvided);
  swift_allocError();
  v7 = v6;
  v8 = sub_25F17767C();
  (*(*(v8 - 8) + 16))(v7, v3, v8);
  *(v7 + *(v5 + 20)) = DynamicType;
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t PreviewAgentLaunchConfiguration.role.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F17773C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreviewAgentLaunchConfiguration.role.setter(uint64_t a1)
{
  v3 = sub_25F17773C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PreviewAgentLaunchConfiguration.injectionLibrary.getter()
{
  v1 = (v0 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PreviewAgentLaunchConfiguration.injectionLibrary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PreviewAgentLaunchConfiguration.binaryType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 24);
  v4 = sub_25F17718C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewAgentLaunchConfiguration.binaryType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 24);
  v4 = sub_25F17718C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreviewAgentLaunchConfiguration.environment.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 28));
}

uint64_t PreviewAgentLaunchConfiguration.environment.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PreviewAgentLaunchConfiguration.arguments.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 32));
}

uint64_t PreviewAgentLaunchConfiguration.arguments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t _s15PreviewShellKit0A24AgentLaunchConfigurationV10identifier19PreviewsMessagingOS0D10DescriptorV6BundleVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 36);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewAgentLaunchConfiguration.agentBundle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 36);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25F1059F8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(unsigned int *a1)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_25F1092B4;
  a2[1] = v6;
}

uint64_t sub_25F105A78(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));
  v7 = v6[1];

  *v6 = sub_25F109268;
  v6[1] = v5;
  return result;
}

uint64_t PreviewAgentLaunchConfiguration.pidCallback.getter()
{
  v1 = (v0 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PreviewAgentLaunchConfiguration.pidCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PreviewAgentLaunchConfiguration.init(bundle:role:injectionLibrary:binaryType:environment:arguments:pidCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  v18 = v17[9];
  v19 = sub_25F17767C();
  (*(*(v19 - 8) + 32))(a9 + v18, a1, v19);
  v20 = sub_25F17773C();
  (*(*(v20 - 8) + 32))(a9, a2, v20);
  v21 = (a9 + v17[5]);
  *v21 = a3;
  v21[1] = a4;
  v22 = v17[6];
  v23 = sub_25F17718C();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a5, v23);
  *(a9 + v17[7]) = a6;
  *(a9 + v17[8]) = a7;
  v25 = (a9 + v17[10]);
  *v25 = a8;
  v25[1] = a10;
  return result;
}

uint64_t dispatch thunk of PreviewAgentLauncher.jitBootstrapMethod(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F0BF3E4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_25F105E9C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_25F105EEC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25F105F40(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25F105F58(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25F105F9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25F17773C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_25F17718C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_25F17767C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_25F106128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25F17773C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_25F17718C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_25F17767C();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_25F1062A0()
{
  sub_25F17773C();
  if (v0 <= 0x3F)
  {
    sub_25F17718C();
    if (v1 <= 0x3F)
    {
      sub_25F10638C();
      if (v2 <= 0x3F)
      {
        sub_25F1063E8();
        if (v3 <= 0x3F)
        {
          sub_25F17767C();
          if (v4 <= 0x3F)
          {
            sub_25F105150();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25F10638C()
{
  if (!qword_27FD48148)
  {
    v0 = sub_25F178FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48148);
    }
  }
}

void sub_25F1063E8()
{
  if (!qword_27FD48150)
  {
    v0 = sub_25F1792BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48150);
    }
  }
}

uint64_t sub_25F10644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F17767C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F10651C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F17767C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_25F1065D4()
{
  result = sub_25F17767C();
  if (v1 <= 0x3F)
  {
    result = sub_25F106658();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25F106658()
{
  result = qword_27FD48168;
  if (!qword_27FD48168)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27FD48168);
  }

  return result;
}

uint64_t *sub_25F1066A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Process(0);
  v11 = *(v10 + 20);
  sub_25F109928(a1, v9, type metadata accessor for Process);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v12 = sub_25F1067D8(a1 + v11, v9, a2, a3);
  sub_25F0B7E94(v9, &qword_27FD48188, &qword_25F182550);
  return v12;
}

uint64_t *sub_25F1067D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v6 = sub_25F17767C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v9;
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = sub_25F1787BC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v24 + 8))(v27, v23);
  sub_25F1092F8();
  if (sub_25F17956C())
  {
    v54 = a1;
    v55 = v6;
    sub_25F0B7E2C(a2, v22, &qword_27FD48188, &qword_25F182550);
    v28 = type metadata accessor for Process(0);
    v29 = *(*(v28 - 8) + 48);
    if (v29(v22, 1, v28) == 1)
    {
      sub_25F0B7E94(v22, &qword_27FD48188, &qword_25F182550);
    }

    else
    {
      v33 = &v22[*(v28 + 24)];
      v34 = *(v33 + 1);
      v65 = *v33;
      v66 = v34;
      v67 = v33[32];
      sub_25F177CDC();
      sub_25F109990(v22, type metadata accessor for Process);
      sub_25F17845C();
      sub_25F17844C();
      sub_25F17841C();
    }

    sub_25F0B7E2C(a2, v20, &qword_27FD48188, &qword_25F182550);
    v35 = v29(v20, 1, v28);
    if (v35 == 1)
    {
      sub_25F0B7E94(v20, &qword_27FD48188, &qword_25F182550);
      v36 = 0;
    }

    else
    {
      v37 = &v20[*(v28 + 24)];
      v38 = *(v37 + 1);
      v62 = *v37;
      v63 = v38;
      v64 = v37[32];
      v39 = sub_25F177CDC();
      sub_25F109990(v20, type metadata accessor for Process);
      v36 = v39;
    }

    v40 = v35 == 1;
    v41 = v59;
    v42 = *(v60 + 8);
    v61 = v40;
    v43 = v54;
    v32 = v42(v54, v36 | (v40 << 32), v59);
    sub_25F0B7E2C(a2, v17, &qword_27FD48188, &qword_25F182550);
    if (v29(v17, 1, v28) == 1)
    {
      sub_25F0B7E94(v17, &qword_27FD48188, &qword_25F182550);
      v44 = sub_25F177E8C();
      v45 = v56;
      (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
    }

    else
    {
      v46 = sub_25F177E8C();
      v47 = *(v46 - 8);
      v45 = v56;
      (*(v47 + 16))(v56, v17, v46);
      sub_25F109990(v17, type metadata accessor for Process);
      (*(v47 + 56))(v45, 0, 1, v46);
    }

    v48 = v55;
    v49 = v58;
    (*(v7 + 16))(v58, v43, v55);
    v50 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v51 = swift_allocObject();
    (*(v7 + 32))(v51 + v50, v49, v48);
    sub_25F109424(v32, v45, sub_25F107E6C, 0, sub_25F1093CC, v51, 0, v41, v60);

    sub_25F0B7E94(v45, &qword_27FD48190, &unk_25F17F2F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
    type metadata accessor for ProcessError();
    sub_25F1091A0(&qword_27FD475A0, type metadata accessor for ProcessError);
    v30 = swift_allocError();
    (*(v7 + 16))(v31, a1, v6);
    swift_storeEnumTagMultiPayload();
    v32 = sub_25F17868C();
  }

  return v32;
}

uint64_t sub_25F106F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a2;
  v84 = a4;
  v85 = a3;
  v83 = *(a3 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](a1);
  v82 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F177FFC();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v86 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F176CEC();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 8);
  MEMORY[0x28223BE20](v9);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  v77 = *(v89 - 8);
  v13 = *(v77 + 64);
  v14 = MEMORY[0x28223BE20](v89);
  v78 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v67 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v67 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v67 - v21;
  v23 = sub_25F17888C();
  v76 = *(v23 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  sub_25F109928(a1, v22, type metadata accessor for PreviewAgentLaunchConfiguration);
  sub_25F109928(a1, v20, type metadata accessor for PreviewAgentLaunchConfiguration);
  v81 = a1;
  v75 = v17;
  sub_25F109928(a1, v17, type metadata accessor for PreviewAgentLaunchConfiguration);
  v27 = sub_25F17887C();
  v28 = sub_25F17952C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v72 = v5;
    v30 = v29;
    v70 = swift_slowAlloc();
    v90[0] = v70;
    *v30 = 136315650;
    v71 = v23;
    v69 = v27;
    v31 = *(v89 + 36);
    v32 = v89;
    sub_25F17767C();
    v68 = v28;
    sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0]);
    v33 = sub_25F17980C();
    v35 = v34;
    v67[1] = v13;
    sub_25F109990(v22, type metadata accessor for PreviewAgentLaunchConfiguration);
    v36 = sub_25F0BECF0(v33, v35, v90);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2082;
    v37 = *&v20[*(v32 + 28)];
    sub_25F178FEC();
    sub_25F176CDC();
    v38 = sub_25F1790FC();
    v40 = v39;

    v41 = v74;
    v42 = *(v73 + 1);
    v42(v12, v74);
    sub_25F109990(v20, type metadata accessor for PreviewAgentLaunchConfiguration);
    v43 = sub_25F0BECF0(v38, v40, v90);

    *(v30 + 14) = v43;
    *(v30 + 22) = 2082;
    v44 = *(v89 + 32);
    v73 = v26;
    v45 = v75;
    MEMORY[0x25F8D51C0](*&v75[v44], MEMORY[0x277D837D0]);
    sub_25F176CDC();
    v46 = sub_25F1790FC();
    v48 = v47;

    v42(v12, v41);
    sub_25F109990(v45, type metadata accessor for PreviewAgentLaunchConfiguration);
    v49 = sub_25F0BECF0(v46, v48, v90);

    *(v30 + 24) = v49;
    v50 = v69;
    _os_log_impl(&dword_25F0B3000, v69, v68, "Relaunch of %s, env: %{public}s, args: %{public}s", v30, 0x20u);
    v51 = v70;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v51, -1, -1);
    v52 = v30;
    v5 = v72;
    MEMORY[0x25F8D6230](v52, -1, -1);

    (*(v76 + 8))(v73, v71);
  }

  else
  {

    sub_25F109990(v22, type metadata accessor for PreviewAgentLaunchConfiguration);
    (*(v76 + 8))(v26, v23);
    sub_25F109990(v20, type metadata accessor for PreviewAgentLaunchConfiguration);
    sub_25F109990(v75, type metadata accessor for PreviewAgentLaunchConfiguration);
  }

  v53 = v80;
  v54 = v81;
  v56 = v84;
  v55 = v85;
  sub_25F1067D8(v81 + *(v89 + 36), v79, v85, v84);
  v57 = v86;
  sub_25F177FDC();
  v58 = v82;
  v59 = v83;
  (*(v83 + 16))(v82, v53, v55);
  v60 = v78;
  sub_25F109928(v54, v78, type metadata accessor for PreviewAgentLaunchConfiguration);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = (v5 + *(v77 + 80) + v61) & ~*(v77 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v55;
  *(v63 + 24) = v56;
  (*(v59 + 32))(v63 + v61, v58, v55);
  sub_25F109BF8(v60, v63 + v62);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_25F109C5C;
  *(v64 + 24) = v63;
  type metadata accessor for Process(0);
  v65 = sub_25F17864C();

  (*(v87 + 8))(v57, v88);
  return v65;
}

uint64_t *sub_25F1077A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = v46 - v6;
  v55 = sub_25F177FFC();
  v52 = *(v55 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  v10 = v9 - 8;
  v49 = *(v9 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = v12;
  v54 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25F177E8C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v56);
  v16 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = v46 - v17;
  v18 = sub_25F1787BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v19 + 8))(v22, v18);
  sub_25F1092F8();
  v23 = *(v10 + 44);
  v24 = a1;
  if (sub_25F17956C())
  {
    v25 = v58;
    sub_25F177E7C();
    v26 = *(v59 + 16);
    v48 = a1;
    v27 = v26(a1, v60);
    v28 = *(v13 + 16);
    v46[1] = v27;
    v47 = v28;
    v29 = v56;
    v28(v16, v25, v56);
    v50 = type metadata accessor for PreviewAgentLaunchConfiguration;
    v30 = v24;
    v31 = v54;
    sub_25F109928(v30, v54, type metadata accessor for PreviewAgentLaunchConfiguration);
    v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v33 = *(v49 + 80);
    v49 = v33 | 7;
    v34 = swift_allocObject();
    (*(v13 + 32))(v34 + v32, v16, v29);
    sub_25F109BF8(v31, v34 + ((v14 + v33 + v32) & ~v33));
    v35 = v51;
    sub_25F177FCC();
    type metadata accessor for Process(0);
    v36 = sub_25F1785BC();

    (*(v52 + 8))(v35, v55);
    v37 = v57;
    v38 = v58;
    v47(v57, v58, v29);
    (*(v13 + 56))(v37, 0, 1, v29);
    sub_25F109928(v48, v31, v50);
    v39 = (v33 + 16) & ~v33;
    v40 = swift_allocObject();
    sub_25F109BF8(v31, v40 + v39);
    sub_25F109424(v36, v37, sub_25F107FE8, 0, sub_25F10A1D8, v40, 1, v60, v59);

    sub_25F0B7E94(v37, &qword_27FD48190, &unk_25F17F2F0);
    (*(v13 + 8))(v38, v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD481A8, qword_25F17F300);
    type metadata accessor for ProcessError();
    sub_25F1091A0(&qword_27FD475A0, type metadata accessor for ProcessError);
    v41 = swift_allocError();
    v43 = v42;
    v44 = sub_25F17767C();
    (*(*(v44 - 8) + 16))(v43, a1 + v23, v44);
    swift_storeEnumTagMultiPayload();
    v36 = sub_25F17868C();
  }

  return v36;
}

uint64_t sub_25F107E88()
{
  sub_25F17767C();
  sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0]);
  return sub_25F17980C();
}

__n128 sub_25F107EF4@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F177E8C();
  v15 = a1[1];
  v16 = *a1;
  (*(*(v8 - 8) + 16))(a4, a2, v8);
  v9 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 36);
  v10 = type metadata accessor for Process(0);
  v11 = *(v10 + 20);
  v12 = sub_25F17767C();
  (*(*(v12 - 8) + 16))(a4 + v11, a3 + v9, v12);
  v13 = (a4 + *(v10 + 24));
  result = v16;
  *v13 = v16;
  v13[1] = v15;
  v13[2].n128_u8[0] = 0;
  return result;
}

uint64_t sub_25F108008()
{
  v0 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) + 36);
  sub_25F17767C();
  sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0]);
  return sub_25F17980C();
}

uint64_t sub_25F10808C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_25F177E8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  sub_25F0B7E2C(a1, &v22 - v11, &qword_27FD48190, &unk_25F17F2F0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return a2();
  }

  (*(v5 + 32))(v8, v12, v4);
  v22 = 35;
  v23 = 0xE100000000000000;
  sub_25F1091A0(&qword_27FD481A0, MEMORY[0x277D403A8]);
  v14 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v14);

  v15 = MEMORY[0x25F8D50D0](8250, 0xE200000000000000);
  v17 = v22;
  v16 = v23;
  v18 = (a2)(v15);
  v20 = v19;
  v22 = v17;
  v23 = v16;

  MEMORY[0x25F8D50D0](v18, v20);

  v21 = v22;
  (*(v5 + 8))(v8, v4);
  return v21;
}

uint64_t sub_25F1082EC(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v2)
  {
    return 0;
  }

  MEMORY[0x25F8D50D0](v1);

  MEMORY[0x25F8D50D0](41, 0xE100000000000000);

  return 10272;
}

uint64_t sub_25F108380(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v114) = a6;
  v121 = a5;
  v115 = a2;
  v116 = a4;
  v118 = a3;
  v10 = *(a8 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](a1);
  v112 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v117 = &v107 - v16;
  v17 = sub_25F17888C();
  v18 = *(v17 - 8);
  v119 = v17;
  v120 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v107 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v107 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v107 - v29;
  v31 = sub_25F17811C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v107 - v34;
  (*(v32 + 16))(&v107 - v34, a1, v31);
  v36 = (*(v32 + 88))(v35, v31);
  if (v36 == *MEMORY[0x277D40498])
  {
    (*(v32 + 96))(v35, v31);
    v37 = v10[2];
    v38 = v117;
    v37(v117, v35, a8);
    v39 = v10;
    if (v114)
    {
      v114 = v35;
      sub_25F17884C();
      v40 = v113;
      v37(v113, v38, a8);

      v41 = sub_25F17887C();
      v42 = sub_25F17951C();

      v110 = v42;
      v43 = os_log_type_enabled(v41, v42);
      v44 = a8;
      if (v43)
      {
        v45 = swift_slowAlloc();
        v111 = v39;
        v46 = v45;
        v109 = swift_slowAlloc();
        v122 = v109;
        *v46 = 136446722;
        v108 = v41;
        v47 = v115();
        v49 = sub_25F0BECF0(v47, v48, &v122);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2080;
        v51 = v116(v50);
        v53 = sub_25F0BECF0(v51, v52, &v122);

        *(v46 + 14) = v53;
        *(v46 + 22) = 2082;
        v37(v112, v40, a8);
        v54 = sub_25F1790BC();
        v56 = v55;
        v57 = v111[1];
        v57(v40, a8);
        v58 = sub_25F0BECF0(v54, v56, &v122);

        *(v46 + 24) = v58;
        v59 = v108;
        _os_log_impl(&dword_25F0B3000, v108, v110, "%{public}s%s succeeded with result: %{public}s)", v46, 0x20u);
        v60 = v109;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v60, -1, -1);
        MEMORY[0x25F8D6230](v46, -1, -1);

        (*(v120 + 8))(v28, v119);
        v57(v117, v44);
      }

      else
      {

        v57 = v39[1];
        v57(v40, a8);
        (*(v120 + 8))(v28, v119);
        v57(v117, a8);
      }

      return (v57)(v114, v44);
    }

    else
    {
      v78 = v10[1];
      v79 = a8;
      v78(v38, a8);
      sub_25F17884C();

      v80 = sub_25F17887C();
      v81 = sub_25F17951C();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v117 = v78;
        v83 = v82;
        v84 = swift_slowAlloc();
        v111 = v10 + 1;
        v85 = v84;
        v122 = v84;
        *v83 = 136446466;
        v86 = v115();
        v88 = sub_25F0BECF0(v86, v87, &v122);

        *(v83 + 4) = v88;
        *(v83 + 12) = 2080;
        v90 = v116(v89);
        v92 = sub_25F0BECF0(v90, v91, &v122);

        *(v83 + 14) = v92;
        _os_log_impl(&dword_25F0B3000, v80, v81, "%{public}s%s succeeded", v83, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v85, -1, -1);
        v93 = v83;
        v78 = v117;
        MEMORY[0x25F8D6230](v93, -1, -1);
      }

      (*(v120 + 8))(v25, v119);
      return (v78)(v35, v79);
    }
  }

  else
  {
    v114 = v35;
    if (v36 == *MEMORY[0x277D40488])
    {
      v61 = v114;
      (*(v32 + 96))(v114, v31);
      v62 = *v61;
      sub_25F17884C();

      v63 = v62;
      v64 = sub_25F17887C();
      v65 = sub_25F17951C();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v122 = v67;
        *v66 = 136446722;
        v68 = v115();
        v70 = sub_25F0BECF0(v68, v69, &v122);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        v72 = v116(v71);
        v74 = sub_25F0BECF0(v72, v73, &v122);

        *(v66 + 14) = v74;
        *(v66 + 22) = 2082;
        swift_getErrorValue();
        v75 = sub_25F17986C();
        v77 = sub_25F0BECF0(v75, v76, &v122);

        *(v66 + 24) = v77;
        _os_log_impl(&dword_25F0B3000, v64, v65, "%{public}s%s failed with error: %{public}s", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v67, -1, -1);
        MEMORY[0x25F8D6230](v66, -1, -1);
      }

      else
      {
      }

      return (*(v120 + 8))(v22, v119);
    }

    else if (v36 == *MEMORY[0x277D40490])
    {
      sub_25F17884C();

      v95 = sub_25F17887C();
      v96 = sub_25F17951C();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v122 = v98;
        *v97 = 136446466;
        v99 = v115();
        v101 = sub_25F0BECF0(v99, v100, &v122);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2080;
        v103 = v116(v102);
        v105 = sub_25F0BECF0(v103, v104, &v122);

        *(v97 + 14) = v105;
        _os_log_impl(&dword_25F0B3000, v95, v96, "%{public}s%s canceled", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v98, -1, -1);
        MEMORY[0x25F8D6230](v97, -1, -1);
      }

      (*(v120 + 8))(v30, v119);
      return (*(v32 + 8))(v114, v31);
    }

    else
    {
      v122 = 0;
      v123 = 0xE000000000000000;
      sub_25F1796DC();

      v122 = 0xD00000000000001BLL;
      v123 = 0x800000025F185DF0;
      swift_getWitnessTable();
      v106 = sub_25F1093F8();
      MEMORY[0x25F8D50D0](v106);

      result = sub_25F17977C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25F108EF4()
{
  sub_25F1796DC();

  strcpy(v5, "agentBundle: ");
  HIWORD(v5[1]) = -4864;
  sub_25F17767C();
  sub_25F1091A0(&qword_27FD47EC0, MEMORY[0x277D408A0]);
  v1 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v1);

  MEMORY[0x25F8D50D0](0x3A72656C6C61630ALL, 0xE900000000000020);
  v2 = *(v0 + *(type metadata accessor for NoAgentJITBootstrapMethodProvided(0) + 20));
  v3 = sub_25F17992C();
  MEMORY[0x25F8D50D0](v3);

  return v5[0];
}

uint64_t sub_25F109038(uint64_t a1)
{
  v2 = sub_25F1091A0(&qword_27FD48180, type metadata accessor for NoAgentJITBootstrapMethodProvided);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1090A4(uint64_t a1)
{
  v2 = sub_25F1091A0(&qword_27FD48180, type metadata accessor for NoAgentJITBootstrapMethodProvided);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F1091A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F109230()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F109268(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  v6 = BYTE4(a1) & 1;
  return v2(&v5);
}

uint64_t sub_25F1092B4(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1 | (*(a1 + 4) << 32));
}

unint64_t sub_25F1092F8()
{
  result = qword_27FD48198;
  if (!qword_27FD48198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD48198);
  }

  return result;
}

uint64_t sub_25F109344()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F109424(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v31 = a7;
  v29 = a9;
  v30 = a8;
  v13 = *a1;
  v27 = a5;
  v28 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v26 - v17;
  sub_25F0B7E2C(a2, &v26 - v17, &qword_27FD48190, &unk_25F17F2F0);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  sub_25F10979C(v18, v20 + v19);
  v21 = (v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a3;
  v21[1] = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = v30;
  v24 = v29;
  *(v23 + 24) = *(v28 + *MEMORY[0x277D40560]);
  *(v23 + 32) = v24;
  *(v23 + 40) = sub_25F10980C;
  *(v23 + 48) = v20;
  *(v23 + 56) = sub_25F1098A8;
  *(v23 + 64) = v22;
  *(v23 + 72) = v31;

  sub_25F1785DC();
}

uint64_t sub_25F10966C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25F177E8C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

uint64_t sub_25F10979C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F10980C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48190, &unk_25F17F2F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_25F10808C(v0 + v2, v4);
}

uint64_t sub_25F1098B0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_25F109928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F109990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F1099F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_25F17773C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = *(v0 + v8 + v6[7] + 8);

  v13 = v6[8];
  v14 = sub_25F17718C();
  (*(*(v14 - 8) + 8))(v0 + v8 + v13, v14);
  v15 = *(v0 + v8 + v6[9]);

  v16 = *(v0 + v8 + v6[10]);

  v17 = v6[11];
  v18 = sub_25F17767C();
  (*(*(v18 - 8) + 8))(v0 + v8 + v17, v18);
  v19 = *(v0 + v8 + v6[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F109BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_25F109C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  return sub_25F1077A0(v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)), v1, v2);
}

uint64_t sub_25F109D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F109D50()
{
  v1 = sub_25F177E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_25F17773C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = *(v0 + v8 + v6[7] + 8);

  v13 = v6[8];
  v14 = sub_25F17718C();
  (*(*(v14 - 8) + 8))(v0 + v8 + v13, v14);
  v15 = *(v0 + v8 + v6[9]);

  v16 = *(v0 + v8 + v6[10]);

  v17 = v6[11];
  v18 = sub_25F17767C();
  (*(*(v18 - 8) + 8))(v0 + v8 + v17, v18);
  v19 = *(v0 + v8 + v6[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

double sub_25F109F60@<D0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_25F177E8C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  *&result = sub_25F107EF4(a1, v2 + v6, v9, a2).n128_u64[0];
  return result;
}

uint64_t sub_25F10A044()
{
  v1 = (type metadata accessor for PreviewAgentLaunchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F17773C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = v1[8];
  v8 = sub_25F17718C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[9]);

  v10 = *(v0 + v3 + v1[10]);

  v11 = v1[11];
  v12 = sub_25F17767C();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = *(v0 + v3 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F10A204(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_25F10A290@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40D28];
  v3 = sub_25F176E7C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x277D40CE8];
  v5 = sub_25F176E8C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

unint64_t sub_25F10A358(uint64_t a1)
{
  result = sub_25F10A380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F10A380()
{
  result = qword_27FD481B0;
  if (!qword_27FD481B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD481B0);
  }

  return result;
}

uint64_t sub_25F10A3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CF0];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_25F10A454(uint64_t a1)
{
  result = sub_25F10A47C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F10A47C()
{
  result = qword_27FD481B8[0];
  if (!qword_27FD481B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD481B8);
  }

  return result;
}

uint64_t sub_25F10A544(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v10 = *(v9 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = *(a3 + 32);
  v11 = *(a3 + 40);
  v13 = swift_task_alloc();
  v5[10] = v13;
  *v13 = v5;
  v13[1] = sub_25F10A674;

  return sub_25F0EFE30(a1, v12, v11);
}

uint64_t sub_25F10A674(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_25F10A98C;
  }

  else
  {
    v5 = sub_25F10A788;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F10A788()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0F00E0();
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25F10A870;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F10A870()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_25F10AC5C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_25F10A9F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F10A98C()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F10A9F0()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = (*(v0[6] + 24))();
  v7 = v6;
  v0[2] = v5;
  v0[3] = v6;
  sub_25F0E26B4();
  v8 = sub_25F17700C();
  v0[15] = v8;
  sub_25F10AF08(v5, v7);
  v9 = *(MEMORY[0x277D857C8] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v10 = v0;
  v10[1] = sub_25F10AB2C;
  v12 = MEMORY[0x277D84950];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v11, v8, v13, v11, v12);
}

uint64_t sub_25F10AB2C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_25F10AD48;
  }

  else
  {
    v4 = sub_25F10ACC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F10AC5C()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F10ACC8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F10AD48()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[17];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

id sub_25F10ADCC()
{
  v0 = sub_25F176F4C();
  v1 = [v0 pid];

  return v1;
}

uint64_t sub_25F10AE28(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);
  *v10 = v5;
  v10[1] = sub_25F0BF3E4;

  return sub_25F10A544(v9, a3, a4, v11, v12);
}

id sub_25F10AEDC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25F10ADCC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_25F10AF08(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_25F10AF1C(int a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  v4 = sub_25F1787AC();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = sub_25F176E8C();
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v2 + 80) = v10;
  v11 = *(v10 - 8);
  *(v2 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 128) = a1;

  return MEMORY[0x2822009F8](sub_25F10B0A0, 0, 0);
}

uint64_t sub_25F10B0A0()
{
  v32 = v0;
  v1 = *(v0 + 96);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  if (os_log_type_enabled(v2, v3))
  {
    v28 = *(v0 + 88);
    v4 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = *(v0 + 96);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v27 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446466;
    (*(v5 + 104))(v4, *MEMORY[0x277D40D00], v6);
    sub_25F111798(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v9 = sub_25F17980C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_25F0BECF0(v9, v11, &v31);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v0 + 132) = v27;
    v13 = sub_25F17980C();
    v15 = sub_25F0BECF0(v13, v14, &v31);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Requesting connection for %{public}s, %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 48);
  v20 = *(v0 + 136);
  v21 = *(*(v0 + 24) + *(**(v0 + 24) + 104));
  sub_25F17879C();
  v22 = swift_allocObject();
  *(v0 + 104) = v22;
  *(v22 + 16) = v20;
  v23 = *(MEMORY[0x277D40400] + 4);
  v24 = swift_task_alloc();
  *(v0 + 112) = v24;
  *v24 = v0;
  v24[1] = sub_25F10B3C8;
  v25 = *(v0 + 48);

  return MEMORY[0x2821A0530](v0 + 16, v0 + 128);
}