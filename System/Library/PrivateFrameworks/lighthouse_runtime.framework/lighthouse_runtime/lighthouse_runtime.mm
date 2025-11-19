uint64_t sub_2771BA5B0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA630()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA6B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2771BA6E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 48);

  v7 = (v0 + v3);
  v8 = type metadata accessor for PluginContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    v9 = *v7;

    v10 = *(v7 + 1);

    v11 = *(v8 + 24);
    v12 = sub_2771CA944();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA848()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BA8C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 48);

  v6 = (v0 + v3);
  v7 = type metadata accessor for PluginContext();
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = *v6;

    v9 = *(v6 + 1);

    v10 = *(v7 + 24);
    v11 = sub_2771CA944();
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2771BAA20()
{
  v1 = (type metadata accessor for PluginContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v6 + 8);

  v9 = v1[8];
  v10 = sub_2771CA944();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  v11 = *(v0 + v4);

  v12 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v2 | 7);
}

uint64_t sub_2771BAB4C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2771CA944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2771BABF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2771CA944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2771BACA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2771BACE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2771BAD1C()
{
  MEMORY[0x277CA8C70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2771BAD54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2771BAD94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2771BADD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2771BAE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void *sub_2771BAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_2771CB4A8;
}

uint64_t sub_2771BAFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2771BB108;

  return v13(a1, a4, a5);
}

uint64_t sub_2771BB108()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2771BB1FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2771BB21C, 0, 0);
}

uint64_t sub_2771BB21C()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2771BB310;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_2771BB310()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t GenericReporter.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GenericReporter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2771BB45C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2771BB9C4;

  return sub_2771BB1FC(a1);
}

void *sub_2771BB514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2771BAEB0(a1, *(*v3 + 80), a2, a3);
  v3[3] = v4;
  return v3;
}

void *sub_2771BB550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  type metadata accessor for GenericReporter();
  v9 = swift_allocObject();
  v9[2] = sub_2771BAEB0(a1, *(*v9 + 80), a2, a3);
  v9[3] = v10;
  return v9;
}

uint64_t dispatch thunk of Reporter.report(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2771BB9C4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GenericReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2771BB108;

  return v8(a1);
}

uint64_t sub_2771BB8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771BAFDC(a1, v1 + v7, v4, v5, v6);
}

uint64_t sub_2771BB9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void *sub_2771BBA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a4);
  return &unk_2771CB580;
}

uint64_t sub_2771BBB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 40);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_2771BB108;

  return v16(a1, a2, a6, a7);
}

uint64_t sub_2771BBCD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2771BBCF4, 0, 0);
}

uint64_t sub_2771BBCF4()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  v8 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2771BBDE8;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6);
}

uint64_t sub_2771BBDE8()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t GenericWorker.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GenericWorker.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2771BBF34(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2771BB9C4;

  return sub_2771BBCD0(a1, a2);
}

void *sub_2771BBFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2771BBA64(a1, *(*v3 + 80), *(*v3 + 88), a2, a3);
  v3[3] = v4;
  return v3;
}

void *sub_2771BC034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(v3 + 80);
  v11 = *(v3 + 96);
  type metadata accessor for GenericWorker();
  v7 = swift_allocObject();
  v7[2] = sub_2771BBA64(a1, *(*v7 + 80), *(*v7 + 88), a2, a3);
  v7[3] = v8;
  return v7;
}

uint64_t dispatch thunk of Worker.doWork(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2771BB9C4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GenericWorker.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2771BB108;

  return v10(a1, a2);
}

uint64_t sub_2771BC3D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2771BB9C4;

  return sub_2771BBB98(a1, a2, v2 + v10, v6, v7, v8, v9);
}

uint64_t *LighthouseRuntimeProcessor.init(task:plugin:enforceDiagnosticCheck:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v4;
  v4[3] = 0;
  if ((a3 & 1) != 0 && (static LighthouseRuntimeProcessor.isDiagnosticsSubmissionAllowed()() & 1) == 0)
  {
    (*(*(*(v7 + 80) - 8) + 8))(a2);

    v15 = v4[3];

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v10 = v7 + 80;
    v8 = *(v7 + 80);
    v9 = *(v10 + 8);
    v11 = v9[1];
    swift_getAssociatedTypeWitness();
    v12 = v9[2];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for LighthouseRuntime();
    v13 = a1;
    sub_2771C5EA8(a1);

    v14 = LighthouseRuntime.setLighthousePlugin<A>(_:)(a2, v8, v9);

    (*(*(v8 - 8) + 8))(a2, v8);
    v4[2] = v14;
  }

  return v4;
}

uint64_t LighthouseRuntimeProcessor.process()@<X0>(void *a1@<X8>)
{
  v3 = sub_2771CAB84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v14 - v9;
  v11 = *(v1 + 16);
  v12 = type metadata accessor for PluginContext();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_2771C0210(v10);
  result = sub_2771BE59C(v10, &qword_280A683D0, &unk_2771CB5A0);
  *a1 = 1;
  return result;
}

uint64_t LighthouseRuntimeProcessor.process(withContext:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2771CAB84();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v16 - v11;
  v13 = *(v2 + 16);
  sub_2771BDDB0(a1, v16 - v11);
  v14 = type metadata accessor for PluginContext();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_2771C0210(v12);
  result = sub_2771BE59C(v12, &qword_280A683D0, &unk_2771CB5A0);
  *a2 = 1;
  return result;
}

uint64_t LighthouseRuntimeProcessor.processAsync(withContext:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_2771CAB84();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v3[10] = v7;
  v3[11] = *(v7 + 64);
  v3[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771BCCCC, 0, 0);
}

uint64_t sub_2771BCCCC()
{
  v1 = v0[5];
  v2 = v0[12];
  v3 = v0[13];
  if (*(v1 + 24))
  {
    v4 = v0[9];
    sub_2771BDF9C();
    swift_allocError();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[6];
    v10 = v0[4];
    v11 = sub_2771CABA4();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    sub_2771BE534(v10, v2, &qword_280A683D0, &unk_2771CB5A0);
    v13 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = *(v9 + 80);
    v14[5] = *(v9 + 88);
    v14[6] = v12;
    sub_2771BDE14(v2, v14 + v13);
    v15 = sub_2771BD518(0, 0, v3, &unk_2771CB5C8, v14);
    v0[14] = v15;
    v16 = *(v1 + 24);
    *(v1 + 24) = v15;

    v17 = *(MEMORY[0x277D857C8] + 4);
    v18 = swift_task_alloc();
    v0[15] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    v0[16] = v19;
    *v18 = v0;
    v18[1] = sub_2771BCF60;
    v20 = MEMORY[0x277D84950];
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v19, v15, v21, v19, v20);
  }
}

uint64_t sub_2771BCF60()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2771BD120;
  }

  else
  {
    v3 = sub_2771BD074;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2771BD074()
{
  **(v0 + 24) = 1;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2771BD120()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = v1;
  v6 = swift_dynamicCast();
  v7 = *(v0 + 136);
  if (v6)
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = *(v0 + 24);

    *v11 = 2;
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = *(v0 + 24);

    *v12 = v7;
  }

  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 96);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);
  v18 = *(v17 + 24);
  *(v17 + 24) = 0;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2771BD250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2771BD270, 0, 0);
}

uint64_t sub_2771BD270()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 16);

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2771BD378;
    v4 = v0[6];

    return sub_2771C051C(1000, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2771BD378()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2771BD4B4, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2771BD4B4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2771BD518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_2771BE534(a3, v25 - v11, &qword_280A683E0, &qword_2771CBC60);
  v13 = sub_2771CABA4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2771BE59C(v12, &qword_280A683E0, &qword_2771CBC60);
  }

  else
  {
    sub_2771CAB94();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2771CAB74();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2771CAB14() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_2771BE59C(a3, &qword_280A683E0, &qword_2771CBC60);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2771BE59C(a3, &qword_280A683E0, &qword_2771CBC60);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall LighthouseRuntimeProcessor.stop()()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }
}

id static LighthouseRuntimeProcessor.isDiagnosticsSubmissionAllowed()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting_];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LighthouseRuntimeProcessor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t LighthouseRuntimeProcessor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id LighthouseRuntimeProcessorResult.mlrTaskResult.getter()
{
  v1 = *v0;
  if (*v0 == 3)
  {
    v2 = &unk_28864E310;
  }

  else if (v1 == 2)
  {
    v2 = &unk_28864E2D0;
  }

  else
  {
    if (v1 != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683F0, &qword_2771CB5D0);
      inited = swift_initStackObject();
      *(inited + 32) = 0x746C75736572;
      *(inited + 16) = xmmword_2771CB590;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = 0x6572756C696166;
      *(inited + 56) = 0xE700000000000000;
      *(inited + 64) = 0x726F727265;
      *(inited + 72) = 0xE500000000000000;
      v5 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683F8, &qword_2771CB5D8);
      *(inited + 80) = sub_2771CAB04();
      *(inited + 88) = v6;
      v3 = sub_2771BE120(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68400, &qword_2771CB5E0);
      swift_arrayDestroy();
      goto LABEL_9;
    }

    v2 = &unk_28864E290;
  }

  v3 = sub_2771BE120(v2);
  sub_2771BE59C(v2 + 32, &qword_280A68400, &qword_2771CB5E0);
LABEL_9:
  sub_2771BDB10(v3);

  v7 = objc_allocWithZone(MEMORY[0x277D25408]);
  v8 = sub_2771CAAC4();

  v9 = [v7 initWithJSONResult:v8 unprivatizedVector:0];

  return v9;
}

unint64_t sub_2771BDB10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68408, &qword_2771CB758);
    v2 = sub_2771CAD04();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_2771BE4D8(&v27, v29);
        sub_2771BE4D8(v29, v30);
        sub_2771BE4D8(v30, &v28);
        result = sub_2771C5B54(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_2771BE4D8(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_2771BE4D8(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2771BDDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2771BDE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2771BDE84(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2771BB108;

  return sub_2771BD250(a1, v8, v9, v10, v1 + v7);
}

unint64_t sub_2771BDF9C()
{
  result = qword_280A683E8;
  if (!qword_280A683E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A683E8);
  }

  return result;
}

unint64_t sub_2771BDFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68408, &qword_2771CB758);
    v3 = sub_2771CAD04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2771BE534(v4, &v13, &qword_280A68410, &qword_2771CB760);
      v5 = v13;
      v6 = v14;
      result = sub_2771C5B54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2771BE4D8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2771BE120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280A68418, &qword_2771CB768);
    v3 = sub_2771CAD04();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2771C5B54(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LighthouseProcessorTaskAlreadyRunning(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LighthouseProcessorTaskAlreadyRunning(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18lighthouse_runtime32LighthouseRuntimeProcessorResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2771BE3DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2771BE438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_2771BE498(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

_OWORD *sub_2771BE4D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2771BE534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2771BE59C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2771BE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void *sub_2771BE698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_2771CB828;
}

uint64_t sub_2771BE7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2771BB108;

  return v13(a1, a4, a5);
}

uint64_t sub_2771BE8F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2771BE914, 0, 0);
}

uint64_t sub_2771BE914()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2771BB310;
  v5 = v0[2];

  return v7(v5);
}

uint64_t GenericDataProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GenericDataProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2771BEA60(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2771BB9C4;

  return sub_2771BE8F4(a1);
}

void *sub_2771BEAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2771BE698(a1, *(*v3 + 80), a2, a3);
  v3[3] = v4;
  return v3;
}

void *sub_2771BEB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  type metadata accessor for GenericDataProvider();
  v9 = swift_allocObject();
  v9[2] = sub_2771BE698(a1, *(*v9 + 80), a2, a3);
  v9[3] = v10;
  return v9;
}

uint64_t dispatch thunk of DataProvider.loadData()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2771BB108;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GenericDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2771BB9C4;

  return v8(a1);
}

uint64_t sub_2771BEE44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771BE7C4(a1, v1 + v7, v4, v5, v6);
}

void *LighthouseRuntime.__allocating_init(_:)(void *a1)
{
  v2 = sub_2771C5EA8(a1);

  return v2;
}

void *LighthouseRuntime.setLighthousePlugin<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2771C5EFC(a1, a2, a3[1]);
  v6 = a3[3];

  sub_2771C5F90(a1, a2, v6);

  v7 = sub_2771C6030(a1, a2, a3[2]);

  return v7;
}

uint64_t sub_2771BEFF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2771CAD54();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2771BF168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6174614464616F6CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74726F706572;
    }

    else
    {
      v4 = 0x6E75526C61746F74;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC000000656D6974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6B726F576F64;
    }

    else
    {
      v4 = 0x6174614464616F6CLL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x74726F706572;
  if (a2 != 2)
  {
    v8 = 0x6E75526C61746F74;
    v7 = 0xEC000000656D6974;
  }

  if (a2)
  {
    v2 = 0x6B726F576F64;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2771CAD54();
  }

  return v11 & 1;
}

uint64_t sub_2771BF2AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for PluginContext();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68550, &qword_2771CBCA8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = sub_2771CAE14();
  qword_280A684A0 = result;
  return result;
}

uint64_t static PluginContext.$current.getter()
{
  if (qword_280A68340 != -1)
  {
    swift_once();
  }
}

uint64_t static PluginContext.current.getter()
{
  if (qword_280A68340 != -1)
  {
    swift_once();
  }

  return sub_2771CAE24();
}

uint64_t PluginContext.init(MLHostContext:parameters:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  v6 = type metadata accessor for PluginContext();
  v7 = a4 + *(v6 + 24);
  result = sub_2771CA934();
  *(a4 + *(v6 + 28)) = a1;
  return result;
}

uint64_t PluginContext.parameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PluginContext.attachments.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PluginContext.correlationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PluginContext() + 24);
  v4 = sub_2771CA944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PluginContext.correlationID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginContext() + 24);
  v4 = sub_2771CA944();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id PluginContext.mlhostContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginContext() + 28));

  return v1;
}

uint64_t LighthouseRuntimeError.hashValue.getter()
{
  v1 = *v0;
  sub_2771CADA4();
  MEMORY[0x277CA8760](v1);
  return sub_2771CADC4();
}

uint64_t sub_2771BF758()
{
  v1 = *v0;
  sub_2771CADA4();
  MEMORY[0x277CA8760](v1);
  return sub_2771CADC4();
}

uint64_t sub_2771BF7CC()
{
  v1 = *v0;
  sub_2771CADA4();
  MEMORY[0x277CA8760](v1);
  return sub_2771CADC4();
}

lighthouse_runtime::LHRStates_optional __swiftcall LHRStates.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2771CAD14();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LHRStates.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x737365636F7270;
  v4 = 0x64616F6C7075;
  if (v1 != 3)
  {
    v4 = 0x64656873696E6966;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684107116;
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

uint64_t sub_2771BF910()
{
  v1 = *v0;
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

uint64_t sub_2771BF9E4()
{
  *v0;
  *v0;
  *v0;
  sub_2771CAB24();
}

uint64_t sub_2771BFAA4()
{
  v1 = *v0;
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

void sub_2771BFB80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
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

const char *LRSignpostName.staticString.getter()
{
  v1 = "LoadData";
  v2 = "Report";
  if (*v0 != 2)
  {
    v2 = "TotalRuntime";
  }

  if (*v0)
  {
    v1 = "DoWork";
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

lighthouse_runtime::LRSignpostName_optional __swiftcall LRSignpostName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2771CAD14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LRSignpostName.rawValue.getter()
{
  v1 = 0x6174614464616F6CLL;
  v2 = 0x74726F706572;
  if (*v0 != 2)
  {
    v2 = 0x6E75526C61746F74;
  }

  if (*v0)
  {
    v1 = 0x6B726F576F64;
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

uint64_t sub_2771BFD64()
{
  v1 = *v0;
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

uint64_t sub_2771BFE28()
{
  *v0;
  *v0;
  *v0;
  sub_2771CAB24();
}

uint64_t sub_2771BFED8()
{
  v1 = *v0;
  sub_2771CADA4();
  sub_2771CAB24();

  return sub_2771CADC4();
}

void sub_2771BFFA4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6174614464616F6CLL;
  v4 = 0xE600000000000000;
  v5 = 0x74726F706572;
  if (*v1 != 2)
  {
    v5 = 0x6E75526C61746F74;
    v4 = 0xEC000000656D6974;
  }

  if (*v1)
  {
    v3 = 0x6B726F576F64;
    v2 = 0xE600000000000000;
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

const char *sub_2771C0024()
{
  v1 = "LoadData";
  v2 = "Report";
  if (*v0 != 2)
  {
    v2 = "TotalRuntime";
  }

  if (*v0)
  {
    v1 = "DoWork";
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

void createSignposter(subsystem:category:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D24458]);
  v1 = sub_2771CAAF4();
  v2 = [v0 initWithName_];

  v3 = objc_allocWithZone(MEMORY[0x277D24450]);
  v4 = v2;
  v5 = sub_2771CAAF4();
  v6 = [v3 initWithName:v5 subsystem:v4];

  [v6 setSignpostPersisted_];

  sub_2771CA9E4();
}

uint64_t sub_2771C01B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2771C01C0(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2771C01D0(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *LighthouseRuntime.init(_:)(void *a1)
{
  v2 = sub_2771C5C84(a1);

  return v2;
}

void sub_2771C0210(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = &v22 - v10;
  sub_2771BE534(a1, &v22 - v10, &qword_280A683D0, &unk_2771CB5A0);
  v12 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(v4 + 80);
  *(v13 + 24) = *(v5 + 88);
  *(v13 + 40) = *(v4 + 104);
  *(v13 + 48) = v2;
  sub_2771BDE14(v11, v13 + v12);
  objc_allocWithZone(type metadata accessor for AsyncOperation());

  v14 = AsyncOperation.init(_:)(&unk_2771CB850, v13);
  v15 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A684A8, &qword_2771CB858);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2771CB830;
  *(v16 + 32) = v14;
  sub_2771C61F4();
  v17 = v14;
  v18 = sub_2771CAB44();

  [v15 addOperations:v18 waitUntilFinished:1];

  v19 = *&v17[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error];
  if (v19)
  {
    v20 = *&v17[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error];
    swift_willThrow();
    v21 = v19;
  }
}

uint64_t sub_2771C047C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2771BB108;

  return sub_2771C051C(1000, a2);
}

uint64_t sub_2771C051C(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = sub_2771CAA04();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for PluginContext();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v3[17] = *(v9 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = sub_2771CA9C4();
  v3[20] = v10;
  v11 = *(v10 - 8);
  v3[21] = v11;
  v12 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2771C0750, 0, 0);
}

uint64_t sub_2771C0750()
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 72);
  *(v0 + 200) = qword_280A684B8;
  sub_2771CA9B4();
  v3 = sub_2771CA9D4();
  v4 = sub_2771CACA4();
  if (sub_2771CACB4())
  {
    v5 = *(v0 + 192);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v3, v4, v7, "TotalRuntime", "", v6, 2u);
    MEMORY[0x277CA8BF0](v6, -1, -1);
  }

  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 64);

  (*(v11 + 16))(v8, v9, v10);
  v16 = sub_2771CAA34();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_2771CAA24();
  v19 = *(v11 + 8);
  *(v0 + 216) = v19;
  *(v0 + 224) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v9, v10);
  sub_2771BE534(v15, v14, &qword_280A683D0, &unk_2771CB5A0);
  v20 = *(v13 + 48);
  if (v20(v14, 1, v12) == 1)
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 72);
    sub_2771C4504(*(v0 + 152));
    if (v20(v22, 1, v21) != 1)
    {
      sub_2771BE59C(*(v0 + 112), &qword_280A683D0, &unk_2771CB5A0);
    }
  }

  else
  {
    sub_2771C6324(*(v0 + 112), *(v0 + 152));
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 120);
  *(v0 + 232) = *(*(v0 + 72) + qword_280A684C0);
  *(v0 + 42) = 0;
  *(v0 + 240) = *(v24 + *(v25 + 28));
  sub_2771CA974();
  sub_2771C6240();
  v26 = sub_2771CAB74();
  *(v0 + 248) = v26;
  *(v0 + 256) = v27;
  v28 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2771C0A00, v26, v27);
}

uint64_t sub_2771C0A00()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = v0[29];
  v1 = v0[30];
  v0[33] = sub_2771C6298();
  sub_2771CA954();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2771C0AB8, 0, 0);
}

uint64_t sub_2771C0AB8()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = v1 + *(*(v0 + 120) + 24);
  v3 = sub_2771CA924();
  v5 = v4;
  v41 = v3;
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  v6 = *v1;
  v7 = objc_opt_self();
  v8 = sub_2771CAAC4();
  *(v0 + 48) = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v0 + 48];

  v10 = *(v0 + 48);
  if (v9)
  {
    v11 = sub_2771CA914();
    v13 = v12;

    v14 = sub_2771CA8E4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_2771CA8D4();
    sub_2771C65D4();
    sub_2771CA8C4();
    v20 = *(v0 + 56);
    sub_2771C6628(v11, v13);

    v21 = *(v0 + 32);
    if (*(v0 + 40))
    {
      v21 = v20;
    }

    if (*(v0 + 24))
    {
      v19 = v21;
    }

    else
    {
      v19 = *(v0 + 16);
    }
  }

  else
  {
    v17 = v10;
    v18 = sub_2771CA8F4();

    swift_willThrow();
    v19 = *(v0 + 56);
  }

  if (qword_280A68348 != -1)
  {
    swift_once();
  }

  v22 = sub_2771CAA74();
  __swift_project_value_buffer(v22, qword_280A69280);
  v23 = sub_2771CAA54();
  v24 = sub_2771CAC24();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v19;
    _os_log_impl(&dword_2771B9000, v23, v24, "Running task with timeout %llu", v25, 0xCu);
    MEMORY[0x277CA8BF0](v25, -1, -1);
  }

  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);

  sub_2771BDDB0(v26, v27);
  v32 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v33 = (v28 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v0 + 288) = v34;
  *(v34 + 16) = *(v30 + 80);
  *(v34 + 24) = *(v30 + 88);
  *(v34 + 40) = *(v30 + 104);
  sub_2771C6324(v27, v34 + v32);
  *(v34 + v33) = v31;
  v35 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v35 = v41;
  v35[1] = v5;

  v36 = swift_task_alloc();
  *(v0 + 296) = v36;
  v36[2] = &unk_2771CB870;
  v36[3] = v34;
  v36[4] = v19;
  v37 = *(MEMORY[0x277D859B8] + 4);
  v38 = swift_task_alloc();
  *(v0 + 304) = v38;
  *v38 = v0;
  v38[1] = sub_2771C0ED4;
  v39 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200740]();
}

uint64_t sub_2771C0ED4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 304);
  v10 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_2771C102C;
  }

  else
  {
    v5 = *(v2 + 288);
    v6 = *(v2 + 296);

    v4 = sub_2771C1150;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2771C102C()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[14];
  v15 = v0[13];

  sub_2771C6578(v8);

  v11 = v0[1];
  v12 = v0[39];
  v13 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_2771C1150()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 72);

  v6 = sub_2771CA9D4();
  sub_2771CAA14();
  v7 = sub_2771CAC94();

  if (sub_2771CACB4())
  {
    v8 = *(v0 + 208);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 88);

    sub_2771CAA44();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
    {
      v12 = 0;
      v13 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      format = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v13 = 2;
      v12 = 1;
    }

    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v32 = *(v0 + 216);
    v33 = *(v0 + 224);
    v21 = *(v0 + 176);
    v31 = *(v0 + 160);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v22 = v13;
    *(v22 + 1) = v12;
    *(v22 + 2) = 2082;
    v24 = sub_2771C55AC(v20, v19, v34);

    *(v22 + 4) = v24;
    v25 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v6, v7, v25, "TotalRuntime", format, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x277CA8BF0](v23, -1, -1);
    MEMORY[0x277CA8BF0](v22, -1, -1);

    v32(v21, v31);
  }

  else
  {
    v14 = *(v0 + 280);
    v16 = *(v0 + 216);
    v15 = *(v0 + 224);
    v17 = *(v0 + 176);
    v18 = *(v0 + 160);

    v16(v17, v18);
  }

  *(v0 + 43) = 4;
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2771C13E0, v26, v27);
}

uint64_t sub_2771C13E0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  sub_2771CA954();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2771C1484, 0, 0);
}

uint64_t sub_2771C1484()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[13];
  v7 = v0[14];

  sub_2771C6578(v5);

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_2771C157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C1620, 0, 0);
}

uint64_t sub_2771C1620()
{
  if (qword_280A68340 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v11 = *(v0 + 3);
  sub_2771BDDB0(v0[3], v1);
  v4 = type metadata accessor for PluginContext();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[1] = vextq_s8(v11, v11, 8uLL);
  v5[2].i64[0] = v3;
  v5[2].i64[1] = v2;
  v6 = *(MEMORY[0x277D85A70] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_2771C17D0;
  v8 = v0[7];
  v9 = v0[2];

  return MEMORY[0x282200908](v9, v8, &unk_2771CBCA0, v5, 0, 0, 0xD00000000000002ALL, 0x80000002771CC100);
}

uint64_t sub_2771C17D0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_2771BE59C(v5, &qword_280A683D0, &unk_2771CB5A0);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2771C1974, 0, 0);
  }

  else
  {
    v7 = *(v2 + 56);

    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_2771C1974()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_2771C19D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *a2;
  v7 = *(*a2 + 88);
  v5[6] = v7;
  v8 = sub_2771CACC4();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v10 = *(v9 + 64) + 15;
  v5[9] = swift_task_alloc();
  v11 = *(v7 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = sub_2771CAA04();
  v5[12] = v13;
  v14 = *(v13 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v16 = *(v6 + 80);
  v5[19] = v16;
  v17 = sub_2771CACC4();
  v5[20] = v17;
  v18 = *(v17 - 8);
  v5[21] = v18;
  v19 = *(v18 + 64) + 15;
  v5[22] = swift_task_alloc();
  v20 = *(v16 - 8);
  v5[23] = v20;
  v21 = *(v20 + 64) + 15;
  v5[24] = swift_task_alloc();
  v22 = sub_2771CA9C4();
  v5[25] = v22;
  v23 = *(v22 - 8);
  v5[26] = v23;
  v24 = *(v23 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C1D28, 0, 0);
}

uint64_t sub_2771C1D28()
{
  sub_2771CABD4();
  v1 = *(v0 + 280);
  v2 = *(v0 + 16);
  *(v0 + 288) = qword_280A684B8;
  sub_2771CA9B4();
  v3 = sub_2771CA9D4();
  v4 = sub_2771CACA4();
  if (sub_2771CACB4())
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v3, v4, v7, "LoadData", "", v6, 2u);
    MEMORY[0x277CA8BF0](v6, -1, -1);
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  v14 = *(v11 + 16);
  *(v0 + 296) = v14;
  *(v0 + 304) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v8, v9, v10);
  v15 = sub_2771CAA34();
  *(v0 + 312) = v15;
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 320) = sub_2771CAA24();
  v18 = *(v11 + 8);
  *(v0 + 328) = v18;
  *(v0 + 336) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v9, v10);
  *(v0 + 344) = *(v13 + qword_280A684C0);
  *(v0 + 472) = 1;
  *(v0 + 352) = *(v12 + *(type metadata accessor for PluginContext() + 28));
  sub_2771CA974();
  sub_2771C6240();
  v20 = sub_2771CAB74();
  *(v0 + 360) = v20;
  *(v0 + 368) = v19;

  return MEMORY[0x2822009F8](sub_2771C203C, v20, v19);
}

uint64_t sub_2771C203C()
{
  v2 = v0[43];
  v1 = v0[44];
  v0[47] = sub_2771C6298();
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C20C0, 0, 0);
}

uint64_t sub_2771C20C0()
{
  v55 = v0;
  v1 = *(v0[2] + 16);
  v0[48] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[49] = v2;
    *v2 = v0;
    v2[1] = sub_2771C250C;
    v3 = v0[22];

    return sub_2771BE8F4(v3);
  }

  else
  {
    v5 = v0[40];
    v6 = v0[36];
    v7 = v0[33];
    v8 = v0[22];
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[5];
    (*(v0[23] + 56))(v8, 1, 1, v0[19]);
    (*(v10 + 8))(v8, v9);

    v12 = sub_2771CA9D4();
    sub_2771CAA14();
    v13 = sub_2771CAC94();

    if (sub_2771CACB4())
    {
      v14 = v0[40];
      v16 = v0[13];
      v15 = v0[14];
      v17 = v0[12];

      sub_2771CAA44();

      if ((*(v16 + 88))(v15, v17) == *MEMORY[0x277D85B00])
      {
        v18 = 0;
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[13] + 8))(v0[14], v0[12]);
        v19 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nerrorMessage=%{public, signpost.telemetry:string2, name=errorMessage,public}s\nenableTelemetry=YES";
        v18 = 2;
      }

      v51 = v0[41];
      v53 = v0[42];
      v24 = v0[33];
      v49 = v0[25];
      v26 = v0[4];
      v25 = v0[5];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v54[0] = v28;
      *v27 = v18;
      *(v27 + 1) = v18;
      *(v27 + 2) = 2082;
      *(v27 + 4) = sub_2771C55AC(v26, v25, v54);
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_2771C55AC(0xD000000000000014, 0x80000002771CC150, v54);
      v29 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v12, v13, v29, "LoadData", v19, v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277CA8BF0](v28, -1, -1);
      MEMORY[0x277CA8BF0](v27, -1, -1);

      v51(v24, v49);
    }

    else
    {
      v21 = v0[41];
      v20 = v0[42];
      v22 = v0[33];
      v23 = v0[25];

      v21(v22, v23);
    }

    v30 = v0[40];
    sub_2771C7524();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v33 = v0[34];
    v32 = v0[35];
    v35 = v0[32];
    v34 = v0[33];
    v36 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v38 = v0[29];
    v40 = v0[27];
    v41 = v0[24];
    v43 = v0[22];
    v44 = v0[18];
    v45 = v0[17];
    v46 = v0[16];
    v47 = v0[15];
    v48 = v0[14];
    v50 = v0[11];
    v52 = v0[9];

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_2771C250C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_2771C406C;
  }

  else
  {
    v5 = *(v2 + 384);

    v4 = sub_2771C2628;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2771C2628()
{
  v76 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  (*(v5 + 56))(v6, 0, 1, v7);
  (*(v5 + 32))(v4, v6, v7);

  v10 = sub_2771CA9D4();
  sub_2771CAA14();
  v11 = sub_2771CAC94();

  if (sub_2771CACB4())
  {
    v73 = v11;
    v12 = *(v0 + 320);
    v13 = *(v0 + 144);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);

    sub_2771CAA44();

    if ((*(v14 + 88))(v13, v15) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 104) + 8))(*(v0 + 144), *(v0 + 96));
      v18 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v17 = 2;
      v16 = 1;
    }

    v69 = *(v0 + 328);
    v71 = *(v0 + 336);
    v23 = *(v0 + 256);
    v67 = *(v0 + 200);
    v25 = *(v0 + 32);
    v24 = *(v0 + 40);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v75 = v27;
    *v26 = v17;
    *(v26 + 1) = v16;
    *(v26 + 2) = 2082;
    *(v26 + 4) = sub_2771C55AC(v25, v24, &v75);
    v28 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v10, v73, v28, "LoadData", v18, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x277CA8BF0](v27, -1, -1);
    MEMORY[0x277CA8BF0](v26, -1, -1);

    v69(v23, v67);
  }

  else
  {
    v20 = *(v0 + 328);
    v19 = *(v0 + 336);
    v21 = *(v0 + 256);
    v22 = *(v0 + 200);

    v20(v21, v22);
  }

  v29 = *(v0 + 400);
  sub_2771CABD4();
  if (v29)
  {
    v30 = *(v0 + 320);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 152));

    v32 = *(v0 + 272);
    v31 = *(v0 + 280);
    v34 = *(v0 + 256);
    v33 = *(v0 + 264);
    v35 = *(v0 + 240);
    v36 = *(v0 + 248);
    v38 = *(v0 + 224);
    v37 = *(v0 + 232);
    v39 = *(v0 + 216);
    v62 = *(v0 + 192);
    v63 = *(v0 + 176);
    v64 = *(v0 + 144);
    v65 = *(v0 + 136);
    v66 = *(v0 + 128);
    v68 = *(v0 + 120);
    v70 = *(v0 + 112);
    v72 = *(v0 + 88);
    v74 = *(v0 + 72);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v42 = *(v0 + 288);
    v43 = *(v0 + 248);
    v44 = *(v0 + 16);
    sub_2771CA9B4();
    v45 = sub_2771CA9D4();
    v46 = sub_2771CACA4();
    if (sub_2771CACB4())
    {
      v47 = *(v0 + 248);
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v45, v46, v49, "DoWork", "", v48, 2u);
      MEMORY[0x277CA8BF0](v48, -1, -1);
    }

    v51 = *(v0 + 328);
    v50 = *(v0 + 336);
    v53 = *(v0 + 304);
    v52 = *(v0 + 312);
    v54 = *(v0 + 296);
    v55 = *(v0 + 272);
    v56 = *(v0 + 248);
    v57 = *(v0 + 200);

    v54(v55, v56, v57);
    v58 = *(v52 + 48);
    v59 = *(v52 + 52);
    swift_allocObject();
    *(v0 + 408) = sub_2771CAA24();
    v51(v56, v57);
    *(v0 + 473) = 2;
    v60 = *(v0 + 360);
    v61 = *(v0 + 368);

    return MEMORY[0x2822009F8](sub_2771C2AF4, v60, v61);
  }
}

uint64_t sub_2771C2AF4()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C2B6C, 0, 0);
}

uint64_t sub_2771C2B6C()
{
  v60 = v0;
  v1 = *(v0[2] + 24);
  v0[52] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[53] = v2;
    *v2 = v0;
    v2[1] = sub_2771C2FE8;
    v3 = v0[24];
    v4 = v0[9];

    return sub_2771BBCD0(v4, v3);
  }

  else
  {
    v6 = v0[40];
    v7 = v0[36];
    v8 = v0[30];
    v9 = v0[9];
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[5];
    (*(v0[10] + 56))(v9, 1, 1, v0[6]);
    (*(v11 + 8))(v9, v10);

    v13 = sub_2771CA9D4();
    sub_2771CAA14();
    v14 = sub_2771CAC94();

    if (sub_2771CACB4())
    {
      v15 = v0[40];
      v16 = v0[15];
      v17 = v0[12];
      v18 = v0[13];

      sub_2771CAA44();

      if ((*(v18 + 88))(v16, v17) == *MEMORY[0x277D85B00])
      {
        v19 = 0;
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[13] + 8))(v0[15], v0[12]);
        v20 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nerrorMessage=%{public, signpost.telemetry:string2, name=errorMessage,public}s\nenableTelemetry=YES";
        v19 = 2;
      }

      v56 = v0[41];
      v58 = v0[42];
      v25 = v0[30];
      v54 = v0[25];
      v27 = v0[4];
      v26 = v0[5];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59[0] = v29;
      *v28 = v19;
      *(v28 + 1) = v19;
      *(v28 + 2) = 2082;
      *(v28 + 4) = sub_2771C55AC(v27, v26, v59);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_2771C55AC(0xD000000000000015, 0x80000002771CC130, v59);
      v30 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v13, v14, v30, "LoadData", v20, v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277CA8BF0](v29, -1, -1);
      MEMORY[0x277CA8BF0](v28, -1, -1);

      v56(v25, v54);
    }

    else
    {
      v22 = v0[41];
      v21 = v0[42];
      v23 = v0[30];
      v24 = v0[25];

      v22(v23, v24);
    }

    v31 = v0[51];
    v32 = v0[40];
    v33 = v0[23];
    v34 = v0[24];
    v35 = v0[19];
    sub_2771C7524();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

    (*(v33 + 8))(v34, v35);
    v38 = v0[34];
    v37 = v0[35];
    v40 = v0[32];
    v39 = v0[33];
    v41 = v0[30];
    v42 = v0[31];
    v44 = v0[28];
    v43 = v0[29];
    v45 = v0[27];
    v46 = v0[24];
    v48 = v0[22];
    v49 = v0[18];
    v50 = v0[17];
    v51 = v0[16];
    v52 = v0[15];
    v53 = v0[14];
    v55 = v0[11];
    v57 = v0[9];

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_2771C2FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 416);

  if (v0)
  {
    v6 = sub_2771C41D0;
  }

  else
  {
    v6 = sub_2771C311C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2771C311C()
{
  v82 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);
  v3 = *(v0 + 232);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);
  (*(v5 + 56))(v6, 0, 1, v7);
  (*(v5 + 32))(v4, v6, v7);

  v9 = sub_2771CA9D4();
  sub_2771CAA14();
  v10 = sub_2771CAC94();

  if (sub_2771CACB4())
  {
    v80 = v10;
    v11 = *(v0 + 408);
    v12 = *(v0 + 136);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);

    sub_2771CAA44();

    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x277D85B00])
    {
      v15 = 0;
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 104) + 8))(*(v0 + 136), *(v0 + 96));
      v17 = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v16 = 2;
      v15 = 1;
    }

    v76 = *(v0 + 328);
    v78 = *(v0 + 336);
    v22 = *(v0 + 232);
    v74 = *(v0 + 200);
    v24 = *(v0 + 32);
    v23 = *(v0 + 40);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v81 = v26;
    *v25 = v16;
    *(v25 + 1) = v15;
    *(v25 + 2) = 2082;
    *(v25 + 4) = sub_2771C55AC(v24, v23, &v81);
    v27 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, v9, v80, v27, "DoWork", v17, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x277CA8BF0](v26, -1, -1);
    MEMORY[0x277CA8BF0](v25, -1, -1);

    v76(v22, v74);
  }

  else
  {
    v19 = *(v0 + 328);
    v18 = *(v0 + 336);
    v20 = *(v0 + 232);
    v21 = *(v0 + 200);

    v19(v20, v21);
  }

  v28 = *(v0 + 432);
  sub_2771CABD4();
  if (v28)
  {
    v29 = *(v0 + 408);
    v30 = *(v0 + 320);
    v32 = *(v0 + 184);
    v31 = *(v0 + 192);
    v33 = *(v0 + 152);
    v35 = *(v0 + 80);
    v34 = *(v0 + 88);
    v36 = *(v0 + 48);

    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v40 = *(v0 + 256);
    v39 = *(v0 + 264);
    v41 = *(v0 + 240);
    v42 = *(v0 + 248);
    v44 = *(v0 + 224);
    v43 = *(v0 + 232);
    v45 = *(v0 + 216);
    v46 = *(v0 + 192);
    v69 = *(v0 + 176);
    v70 = *(v0 + 144);
    v71 = *(v0 + 136);
    v72 = *(v0 + 128);
    v73 = *(v0 + 120);
    v75 = *(v0 + 112);
    v77 = *(v0 + 88);
    v79 = *(v0 + 72);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v49 = *(v0 + 288);
    v50 = *(v0 + 224);
    v51 = *(v0 + 16);
    sub_2771CA9B4();
    v52 = sub_2771CA9D4();
    v53 = sub_2771CACA4();
    if (sub_2771CACB4())
    {
      v54 = *(v0 + 224);
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, v52, v53, v56, "Report", "", v55, 2u);
      MEMORY[0x277CA8BF0](v55, -1, -1);
    }

    v58 = *(v0 + 328);
    v57 = *(v0 + 336);
    v60 = *(v0 + 304);
    v59 = *(v0 + 312);
    v61 = *(v0 + 296);
    v62 = *(v0 + 272);
    v63 = *(v0 + 224);
    v64 = *(v0 + 200);

    v61(v62, v63, v64);
    v65 = *(v59 + 48);
    v66 = *(v59 + 52);
    swift_allocObject();
    *(v0 + 440) = sub_2771CAA24();
    v58(v63, v64);
    *(v0 + 474) = 3;
    v67 = *(v0 + 360);
    v68 = *(v0 + 368);

    return MEMORY[0x2822009F8](sub_2771C3614, v67, v68);
  }
}

uint64_t sub_2771C3614()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  sub_2771CA954();

  return MEMORY[0x2822009F8](sub_2771C368C, 0, 0);
}

uint64_t sub_2771C368C()
{
  v71 = v0;
  v1 = *(v0[2] + 32);
  v0[56] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[57] = v2;
    *v2 = v0;
    v2[1] = sub_2771C3B2C;
    v3 = v0[11];

    return sub_2771BB1FC(v3);
  }

  else
  {
    v5 = v0[55];
    v6 = v0[36];
    v7 = v0[27];
    v8 = v0[5];

    v9 = sub_2771CA9D4();
    sub_2771CAA14();
    v10 = sub_2771CAC94();

    v11 = sub_2771CACB4();
    v12 = v0[55];
    if (v11)
    {
      v67 = v10;
      v13 = v0[16];
      v15 = v0[12];
      v14 = v0[13];

      sub_2771CAA44();

      log = v9;
      if ((*(v14 + 88))(v13, v15) == *MEMORY[0x277D85B00])
      {
        v16 = 0;
        v17 = 0;
        format = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[13] + 8))(v0[16], v0[12]);
        format = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
        v17 = 2;
        v16 = 1;
      }

      v46 = v0[55];
      v47 = v0[51];
      v56 = v0[41];
      v59 = v0[42];
      v48 = v0[40];
      v26 = v0[27];
      v27 = v0[23];
      v62 = v0[19];
      v65 = v0[24];
      v28 = v0[10];
      v54 = v0[11];
      v29 = v0[5];
      v50 = v0[25];
      v52 = v0[6];
      v30 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v70 = v32;
      *v31 = v17;
      *(v31 + 1) = v16;
      *(v31 + 2) = 2082;
      *(v31 + 4) = sub_2771C55AC(v30, v29, &v70);
      v33 = sub_2771CA9A4();
      _os_signpost_emit_with_name_impl(&dword_2771B9000, log, v67, v33, "Report", format, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x277CA8BF0](v32, -1, -1);
      MEMORY[0x277CA8BF0](v31, -1, -1);

      v56(v26, v50);
      (*(v28 + 8))(v54, v52);
      (*(v27 + 8))(v65, v62);
    }

    else
    {
      v18 = v0[51];
      v58 = v0[41];
      v61 = v0[42];
      v19 = v0[40];
      v20 = v0[27];
      v21 = v0[25];
      v68 = v0[24];
      v22 = v0[23];
      v64 = v0[19];
      v23 = v0[10];
      v24 = v0[11];
      v25 = v0[6];

      v58(v20, v21);
      (*(v23 + 8))(v24, v25);
      (*(v22 + 8))(v68, v64);
    }

    v35 = v0[34];
    v34 = v0[35];
    v37 = v0[32];
    v36 = v0[33];
    v39 = v0[30];
    v38 = v0[31];
    v40 = v0[28];
    v41 = v0[29];
    v42 = v0[27];
    v43 = v0[24];
    v51 = v0[22];
    v53 = v0[18];
    v55 = v0[17];
    v57 = v0[16];
    v60 = v0[15];
    v63 = v0[14];
    v66 = v0[11];
    v69 = v0[9];

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_2771C3B2C()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 448);

  if (v0)
  {
    v6 = sub_2771C4354;
  }

  else
  {
    v6 = sub_2771C3C60;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2771C3C60()
{
  v69 = v0;
  v1 = v0[55];
  v2 = v0[36];
  v3 = v0[27];
  v4 = v0[5];
  v5 = v0[2];

  v6 = sub_2771CA9D4();
  sub_2771CAA14();
  v7 = sub_2771CAC94();

  v8 = sub_2771CACB4();
  v9 = v0[55];
  if (v8)
  {
    v65 = v7;
    v10 = v0[16];
    v12 = v0[12];
    v11 = v0[13];

    sub_2771CAA44();

    log = v6;
    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D85B00])
    {
      v13 = 0;
      v14 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[13] + 8))(v0[16], v0[12]);
      format = "correlationID=%{public, signpost.telemetry:string1, name=correlationID,public}s\nenableTelemetry=YES";
      v14 = 2;
      v13 = 1;
    }

    v44 = v0[55];
    v45 = v0[51];
    v54 = v0[41];
    v57 = v0[42];
    v46 = v0[40];
    v23 = v0[27];
    v24 = v0[23];
    v60 = v0[19];
    v63 = v0[24];
    v25 = v0[10];
    v52 = v0[11];
    v26 = v0[5];
    v48 = v0[25];
    v50 = v0[6];
    v27 = v0[4];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = v14;
    *(v28 + 1) = v13;
    *(v28 + 2) = 2082;
    *(v28 + 4) = sub_2771C55AC(v27, v26, &v68);
    v30 = sub_2771CA9A4();
    _os_signpost_emit_with_name_impl(&dword_2771B9000, log, v65, v30, "Report", format, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x277CA8BF0](v29, -1, -1);
    MEMORY[0x277CA8BF0](v28, -1, -1);

    v54(v23, v48);
    (*(v25 + 8))(v52, v50);
    (*(v24 + 8))(v63, v60);
  }

  else
  {
    v15 = v0[51];
    v56 = v0[41];
    v59 = v0[42];
    v16 = v0[40];
    v17 = v0[27];
    v18 = v0[25];
    v66 = v0[24];
    v19 = v0[23];
    v62 = v0[19];
    v20 = v0[10];
    v21 = v0[11];
    v22 = v0[6];

    v56(v17, v18);
    (*(v20 + 8))(v21, v22);
    (*(v19 + 8))(v66, v62);
  }

  v32 = v0[34];
  v31 = v0[35];
  v34 = v0[32];
  v33 = v0[33];
  v36 = v0[30];
  v35 = v0[31];
  v37 = v0[28];
  v38 = v0[29];
  v39 = v0[27];
  v40 = v0[24];
  v49 = v0[22];
  v51 = v0[18];
  v53 = v0[17];
  v55 = v0[16];
  v58 = v0[15];
  v61 = v0[14];
  v64 = v0[11];
  v67 = v0[9];

  v41 = v0[1];

  return v41();
}

uint64_t sub_2771C406C()
{
  v1 = v0[48];
  v2 = v0[40];

  v23 = v0[50];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  v12 = v0[24];
  v15 = v0[22];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2771C41D0()
{
  v1 = v0[51];
  v2 = v0[40];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[19];

  (*(v4 + 8))(v3, v5);
  v26 = v0[54];
  v7 = v0[34];
  v6 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[30];
  v11 = v0[31];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  v15 = v0[24];
  v18 = v0[22];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2771C4354()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[40];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[19];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[6];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v30 = v0[58];
  v11 = v0[34];
  v10 = v0[35];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[30];
  v15 = v0[31];
  v17 = v0[28];
  v16 = v0[29];
  v18 = v0[27];
  v19 = v0[24];
  v22 = v0[22];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v26 = v0[15];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2771C4504@<X0>(unint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(sub_2771CA994());
  v3 = sub_2771CA984();
  v4 = LighthouseRuntime.parameters.getter();
  v5 = LighthouseRuntime.attachments.getter();
  *a1 = v4;
  a1[1] = v5;
  v6 = type metadata accessor for PluginContext();
  v7 = a1 + *(v6 + 24);
  result = sub_2771CA934();
  *(a1 + *(v6 + 28)) = v3;
  return result;
}

unint64_t LighthouseRuntime.parameters.getter()
{
  v1 = *(v0 + qword_2815AED28);
  if (v1)
  {
    v2 = [v1 parameters];
    v3 = [v2 dictionaryRepresentation];

    v4 = sub_2771CAAD4();
    v5 = sub_2771C47FC(v4);

    if (v5)
    {
      return v5;
    }
  }

  v7 = MEMORY[0x277D84F90];

  return sub_2771BDFF0(v7);
}

uint64_t LighthouseRuntime.attachments.getter()
{
  v1 = *(v0 + qword_2815AED28);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = [v1 attachments];
  v3 = [v2 attachmentURLs];

  sub_2771CA904();
  v4 = sub_2771CAB54();

  return v4;
}

uint64_t LighthouseRuntime.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = qword_280A684B8;
  v5 = sub_2771CA9F4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + qword_280A684C0);

  return v0;
}

uint64_t LighthouseRuntime.__deallocating_deinit()
{
  LighthouseRuntime.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_2771C47FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68408, &qword_2771CB758);
    v2 = sub_2771CAD04();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_2771C71D4(*(a1 + 48) + 40 * v14, v29);
        sub_2771C7230(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_2771C71D4(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2771C7230(v27 + 8, v22);
        sub_2771BE59C(v26, &qword_280A68528, &qword_2771CBC50);
        v23 = v20;
        sub_2771BE4D8(v22, v24);
        v15 = v23;
        sub_2771BE4D8(v24, v25);
        sub_2771BE4D8(v25, &v23);
        result = sub_2771C5B54(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_2771BE4D8(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_2771BE4D8(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_2771BE59C(v26, &qword_280A68528, &qword_2771CBC50);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2771C4AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v21 - v10;
  sub_2771BE534(a1, v21 - v10, &qword_280A683E0, &qword_2771CBC60);
  v12 = sub_2771CABA4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2771BE59C(v11, &qword_280A683E0, &qword_2771CBC60);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2771CAB74();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2771CAB94();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_2771C4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C4D68, 0, 0);
}

uint64_t sub_2771C4D68()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_2771CABA4();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  sub_2771C4AD8(v1, &unk_2771CBC70, v8);
  sub_2771BE59C(v1, &qword_280A683E0, &qword_2771CBC60);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  sub_2771C4AD8(v1, &unk_2771CBC80, v9);
  sub_2771BE59C(v1, &qword_280A683E0, &qword_2771CBC60);
  v10 = *(MEMORY[0x277D85818] + 4);
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68538, &qword_2771CBC88);
  *v11 = v0;
  v11[1] = sub_2771C4F64;
  v13 = v0[2];

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v12);
}

uint64_t sub_2771C4F64()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2771C5128;
  }

  else
  {
    v3 = sub_2771C5078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2771C5078()
{
  if (*(v0 + 72))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);
    v2 = **(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CAC04();

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_2771C5128()
{
  v1 = *(v0 + 48);
  v2 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
  sub_2771CAC04();

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3();
}

uint64_t sub_2771C51CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2771BB9C4;

  return v9(a1);
}

uint64_t sub_2771C52E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = *(MEMORY[0x277D857E8] + 4);
    v6 = swift_task_alloc();
    *(v1 + 24) = v6;
    *v6 = v1;
    v6[1] = sub_2771C5398;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2771C5398()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2771C54C8, 0, 0);
  }
}

uint64_t sub_2771C54C8()
{
  sub_2771C7410();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771C5550(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_2771C559C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2771C55AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2771C5678(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2771C7230(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2771C5678(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2771C5784(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2771CACF4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2771C5784(uint64_t a1, unint64_t a2)
{
  v4 = sub_2771C57D0(a1, a2);
  sub_2771C5900(&unk_28864E268);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2771C57D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2771C59EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2771CACF4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2771CAB34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2771C59EC(v10, 0);
        result = sub_2771CACE4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2771C5900(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2771C5A60(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2771C59EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68530, &qword_2771CBC58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2771C5A60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68530, &qword_2771CBC58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2771C5B54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2771CADA4();
  sub_2771CAB24();
  v6 = sub_2771CADC4();

  return sub_2771C5BCC(a1, a2, v6);
}

unint64_t sub_2771C5BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2771CAD54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2771C5C84(void *a1)
{
  v2 = v1;
  v4 = sub_2771CA9F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  *(v2 + qword_2815AED28) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v11 = a1;
  v2[5] = [v10 init];
  v12 = objc_allocWithZone(MEMORY[0x277D24458]);
  v13 = sub_2771CAAF4();
  v14 = [v12 initWithName_];

  v15 = objc_allocWithZone(MEMORY[0x277D24450]);
  v16 = v14;
  v17 = sub_2771CAAF4();
  v18 = [v15 initWithName:v17 subsystem:v16];

  [v18 setSignpostPersisted_];
  sub_2771CA9E4();

  (*(v5 + 32))(v2 + qword_280A684B8, v9, v4);
  sub_2771CA974();
  *(v2 + qword_280A684C0) = sub_2771CA964();
  return v2;
}

void *sub_2771C5EA8(void *a1)
{
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v3 = type metadata accessor for LighthouseRuntime();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_2771C5C84(a1);
}

void *sub_2771C5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 96);
  type metadata accessor for GenericDataProvider();
  v10 = sub_2771BEB38(a1, a2, a3);
  v11 = v4[2];
  v4[2] = v10;

  return v4;
}

void *sub_2771C5F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *(*v4 + 80);
  v12 = *(*v4 + 96);
  type metadata accessor for GenericWorker();
  v8 = sub_2771BC034(a1, a2, a3);
  v9 = v4[3];
  v4[3] = v8;

  return v4;
}

void *sub_2771C6030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 104);
  type metadata accessor for GenericReporter();
  v10 = sub_2771BB550(a1, a2, a3);
  v11 = v4[4];
  v4[4] = v10;

  return v4;
}

uint64_t type metadata accessor for PluginContext()
{
  result = qword_2815AEC98;
  if (!qword_2815AEC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2771C6110()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D0, &unk_2771CB5A0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2771BB9C4;

  return sub_2771C047C(v4, v0 + v3);
}

unint64_t sub_2771C61F4()
{
  result = qword_280A684B0;
  if (!qword_280A684B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A684B0);
  }

  return result;
}

unint64_t sub_2771C6240()
{
  result = qword_280A684C8;
  if (!qword_280A684C8)
  {
    sub_2771CA974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684C8);
  }

  return result;
}

unint64_t sub_2771C6298()
{
  result = qword_280A684D0;
  if (!qword_280A684D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684D0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2771C6324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2771C6388(uint64_t a1)
{
  v4 = *(type metadata accessor for PluginContext() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2771BB9C4;

  return sub_2771C157C(a1, v1 + v5, v7, v9, v10);
}

uint64_t sub_2771C64B4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2771BB9C4;

  return sub_2771C4CC8(a1, a2, v6, v7, v8);
}

uint64_t sub_2771C6578(uint64_t a1)
{
  v2 = type metadata accessor for PluginContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2771C65D4()
{
  result = qword_280A684D8;
  if (!qword_280A684D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684D8);
  }

  return result;
}

uint64_t sub_2771C6628(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2771C6680()
{
  result = qword_280A684E0;
  if (!qword_280A684E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684E0);
  }

  return result;
}

unint64_t sub_2771C66D8()
{
  result = qword_280A684E8;
  if (!qword_280A684E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684E8);
  }

  return result;
}

unint64_t sub_2771C6730()
{
  result = qword_280A684F0;
  if (!qword_280A684F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684F0);
  }

  return result;
}

unint64_t sub_2771C6788()
{
  result = qword_280A684F8;
  if (!qword_280A684F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A684F8);
  }

  return result;
}

unint64_t sub_2771C67E0()
{
  result = qword_280A68500;
  if (!qword_280A68500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A68508, &qword_2771CBA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68500);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2771C6890()
{
  result = qword_280A68510;
  if (!qword_280A68510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68510);
  }

  return result;
}

unint64_t sub_2771C68E8()
{
  result = qword_280A68518;
  if (!qword_280A68518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68518);
  }

  return result;
}

unint64_t sub_2771C693C(uint64_t a1)
{
  result = sub_2771C6964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2771C6964()
{
  result = qword_280A68520;
  if (!qword_280A68520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68520);
  }

  return result;
}

void sub_2771C69E0()
{
  sub_2771C6A94();
  if (v0 <= 0x3F)
  {
    sub_2771C6AF8();
    if (v1 <= 0x3F)
    {
      sub_2771CA944();
      if (v2 <= 0x3F)
      {
        sub_2771CA994();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2771C6A94()
{
  if (!qword_2815AEC08)
  {
    v0 = sub_2771CAAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2815AEC08);
    }
  }
}

void sub_2771C6AF8()
{
  if (!qword_2815AEC10[0])
  {
    sub_2771CA904();
    v0 = sub_2771CAB64();
    if (!v1)
    {
      atomic_store(v0, qword_2815AEC10);
    }
  }
}

uint64_t getEnumTagSinglePayload for LighthouseRuntimeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseRuntimeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LHRStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LHRStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LRSignpostName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LRSignpostName(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2771C6F6C()
{
  result = sub_2771CA9F4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of LighthouseRuntime.processAsync(withTimeoutInMilliseconds:withContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 256);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2771BB108;

  return v10(a1, a2);
}

uint64_t sub_2771C7230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2771C7290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771C51CC(a1, v4, v5, v7);
}

uint64_t sub_2771C735C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2771BB9C4;

  return sub_2771C52C4(a1, v4, v5, v6);
}

unint64_t sub_2771C7410()
{
  result = qword_280A68540;
  if (!qword_280A68540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68540);
  }

  return result;
}

uint64_t sub_2771C7464(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771C19D8(a1, v4, v5, v7, v6);
}

unint64_t sub_2771C7524()
{
  result = qword_280A68548;
  if (!qword_280A68548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68548);
  }

  return result;
}

uint64_t Dictionary<>.toObject<A>()@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = sub_2771CAAC4();
  v19[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v19];

  v7 = v19[0];
  if (v6)
  {
    v8 = sub_2771CA914();
    v10 = v9;

    v11 = sub_2771CA8E4();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_2771CA8D4();
    sub_2771CA8C4();
    sub_2771C6628(v8, v10);

    v16 = 0;
  }

  else
  {
    v14 = v7;
    v15 = sub_2771CA8F4();

    swift_willThrow();
    v16 = 1;
  }

  result = (*(*(a1 - 8) + 56))(a2, v16, 1, a1);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LighthouseRuntimeParams.processTimeoutInMilliseconds.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

unint64_t sub_2771C775C()
{
  if (*v0)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2771C7794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001CLL && 0x80000002771CC1C0 == a2;
  if (v6 || (sub_2771CAD54() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002771CC1E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2771CAD54();

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

uint64_t sub_2771C788C(uint64_t a1)
{
  v2 = sub_2771C7CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2771C78C8(uint64_t a1)
{
  v2 = sub_2771C7CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LighthouseRuntimeParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68558, &qword_2771CBCB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v14[0] = v1[2];
  v15 = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2771C7CDC();
  sub_2771CADE4();
  v17 = 0;
  v12 = v14[1];
  sub_2771CAD44();
  if (!v12)
  {
    v16 = 1;
    sub_2771CAD44();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t LighthouseRuntimeParams.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A68568, &qword_2771CBCB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2771C7CDC();
  sub_2771CADD4();
  if (!v2)
  {
    v22 = 0;
    v12 = sub_2771CAD34();
    v20 = v13;
    v14 = v12;
    v21 = 1;
    v16 = sub_2771CAD34();
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    *a2 = v14;
    *(a2 + 8) = v20 & 1;
    *(a2 + 16) = v16;
    *(a2 + 24) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2771C7CDC()
{
  result = qword_280A68560;
  if (!qword_280A68560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68560);
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

uint64_t sub_2771C7D44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2771C7D64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

unint64_t sub_2771C7DB8()
{
  result = qword_280A68570;
  if (!qword_280A68570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68570);
  }

  return result;
}

unint64_t sub_2771C7E10()
{
  result = qword_280A68578;
  if (!qword_280A68578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68578);
  }

  return result;
}

unint64_t sub_2771C7E68()
{
  result = qword_280A68580;
  if (!qword_280A68580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68580);
  }

  return result;
}

uint64_t sub_2771C7F00()
{
  v0 = sub_2771CAA74();
  __swift_allocate_value_buffer(v0, qword_280A69280);
  __swift_project_value_buffer(v0, qword_280A69280);
  return sub_2771CAA64();
}

id AsyncOperation.init(_:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v21 = sub_2771CAC54();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v21, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2771CAC44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v11 = sub_2771CAAB4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v20 = OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_lockQueue;
  v14 = sub_2771C8238();
  v19[1] = "processTimeoutInMiliseconds";
  v19[2] = v14;
  sub_2771CAAA4();
  v25 = MEMORY[0x277D84F90];
  sub_2771C9610(&qword_280A68598, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A685A0, &qword_2771CBEA0);
  sub_2771C9658(&qword_280A685A8, &qword_280A685A0, &qword_2771CBEA0);
  sub_2771CACD4();
  (*(v3 + 104))(v7, *MEMORY[0x277D85260], v21);
  *&v2[v20] = sub_2771CAC84();
  *&v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task] = 0;
  *&v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error] = 0;
  v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation__isExecuting] = 0;
  v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation__isFinished] = 0;
  v15 = &v2[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_action];
  v16 = v23;
  *v15 = v22;
  v15[1] = v16;
  v17 = type metadata accessor for AsyncOperation();
  v24.receiver = v2;
  v24.super_class = v17;
  return objc_msgSendSuper2(&v24, sel_init);
}

unint64_t sub_2771C8238()
{
  result = qword_280A68590;
  if (!qword_280A68590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A68590);
  }

  return result;
}

uint64_t sub_2771C84EC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_lockQueue];
  v2 = a1;
  sub_2771CAC74();

  return v4;
}

uint64_t sub_2771C8570()
{
  v1 = *(v0 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_lockQueue);
  sub_2771CAC74();
  return v3;
}

void sub_2771C867C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v19[1] = a3;
  v5 = v4;
  v20 = a1;
  v6 = sub_2771CAA94();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2771CAAF4();
  [v5 willChangeValueForKey_];

  v14 = *&v5[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_lockQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A685D8, &qword_2771CBEF8);
  v15 = *(v7 + 72);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2771CBE80;
  sub_2771CAA84();
  v24 = v17;
  sub_2771C9610(&qword_280A685E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A685E8, &qword_2771CBF00);
  sub_2771C9658(&qword_280A685F0, &qword_280A685E8, &qword_2771CBF00);
  sub_2771CACD4();
  v22 = v5;
  v23 = v20;
  sub_2771CAC64();
  (*(v8 + 8))(v12, v6);
  v18 = sub_2771CAAF4();
  [v5 didChangeValueForKey_];
}

id sub_2771C88F4()
{
  if ([v0 isCancelled])
  {
    [v0 setExecuting_];
    v1 = sel_setFinished_;
    v2 = v0;
    v3 = 1;
  }

  else
  {
    [v0 setFinished_];
    [v0 setExecuting_];
    v1 = sel_main;
    v2 = v0;
  }

  return [v2 v1];
}

uint64_t sub_2771C8A48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12 - v4;
  v6 = sub_2771CABA4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v9 = sub_2771C9164(0, 0, v5, &unk_2771CBEB0, v8);
  sub_2771BE59C(v5, &qword_280A683E0, &qword_2771CBC60);
  v10 = *(v0 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task);
  *(v0 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task) = v9;
}

uint64_t sub_2771C8BBC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_action);
    v0[7] = *(Strong + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_action + 8);

    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_2771C8D24;

    return v8();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2771C8D24()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2771C8ECC;
  }

  else
  {
    v3 = sub_2771C8E38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2771C8E38()
{
  v1 = v0[7];

  v2 = v0[6];
  [v2 setExecuting_];
  [v2 setFinished_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2771C8ECC()
{
  v1 = v0[7];

  if (qword_280A68348 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_2771CAA74();
  __swift_project_value_buffer(v3, qword_280A69280);
  v4 = v2;
  v5 = sub_2771CAA54();
  v6 = sub_2771CAC34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2771B9000, v5, v6, "Error while running async operation. %@", v8, 0xCu);
    sub_2771BE59C(v9, &qword_280A685F8, &qword_2771CBF08);
    MEMORY[0x277CA8BF0](v9, -1, -1);
    MEMORY[0x277CA8BF0](v8, -1, -1);
  }

  v12 = v0[9];
  v13 = v0[6];

  v14 = *(v13 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error);
  *(v13 + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_error) = v12;

  v15 = v0[6];
  [v15 setExecuting_];
  [v15 setFinished_];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2771C90B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2771BB108;

  return sub_2771C8B9C(a1, v4, v5, v6);
}

uint64_t sub_2771C9164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_2771C96DC(a3, v25 - v11);
  v13 = sub_2771CABA4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2771BE59C(v12, &qword_280A683E0, &qword_2771CBC60);
  }

  else
  {
    sub_2771CAB94();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2771CAB74();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2771CAB14() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

id sub_2771C9414(SEL *a1)
{
  if (*&v1[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task])
  {
    v3 = *&v1[OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v5, *a1);
}

id AsyncOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2771C9610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2771C9658(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2771C96DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t waitForTaskCompletion<A>(withTimeoutInMilliseconds:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2771C9808, 0, 0);
}

uint64_t sub_2771C9808()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x277D859B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_2771C9904;
  v7 = *(v0 + 16);
  v10 = *(v0 + 48);

  return MEMORY[0x282200740](v7);
}

uint64_t sub_2771C9904()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2771C9A40, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2771C9A40()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2771C9AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v24 - v12;
  sub_2771C96DC(a1, v24 - v12);
  v14 = sub_2771CABA4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2771CA510(v13);
    if (*(a3 + 16))
    {
LABEL_3:
      v16 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_2771CAB74();
      v19 = v18;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2771CAB94();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = *v5;
  v21 = *(a4 + 16);
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t sub_2771C9C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_2771CACC4() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2771C9D54, 0, 0);
}

uint64_t sub_2771C9D54()
{
  v1 = v0[9];
  v2 = v0[7];
  v16 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_2771CABA4();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v4;
  v8[6] = v3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A683D8, &qword_2771CBC90);
  v9 = sub_2771CAC14();
  sub_2771C9AA4(v1, &unk_2771CBFC8, v8, v9);
  sub_2771CA510(v1);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v16;
  sub_2771C9AA4(v1, &unk_2771CBFE0, v10, v9);
  sub_2771CA510(v1);
  v11 = *(MEMORY[0x277D85818] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_2771C9F64;
  v13 = v0[8];
  v14 = v0[3];

  return MEMORY[0x2822004D0](v13, 0, 0, v9);
}

uint64_t sub_2771C9F64()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2771CA1B4;
  }

  else
  {
    v3 = sub_2771CA078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2771CA078()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[9];
    v6 = v0[3];
    (*(v3 + 32))(v0[2], v2, v1);
    v7 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CAC04();

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_2771CA1B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
  sub_2771CAC04();

  v5 = *(v0 + 8);
  v6 = *(v0 + 88);

  return v5();
}

uint64_t sub_2771CA264(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2771BB108;

  return sub_2771C9C80(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_2771CA33C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2771BB108;

  return v9(a1);
}

uint64_t sub_2771CA434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2771BB9C4;

  return sub_2771CA33C(a1, v4, v5, v7);
}

uint64_t sub_2771CA510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683E0, &qword_2771CBC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2771CA598(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = *(MEMORY[0x277D857E8] + 4);
    v6 = swift_task_alloc();
    *(v1 + 24) = v6;
    *v6 = v1;
    v6[1] = sub_2771CA64C;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2771CA64C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2771CA77C, 0, 0);
  }
}

uint64_t sub_2771CA77C()
{
  sub_2771C7410();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2771CA804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2771BB9C4;

  return sub_2771CA578(a1, v4, v5, v6);
}