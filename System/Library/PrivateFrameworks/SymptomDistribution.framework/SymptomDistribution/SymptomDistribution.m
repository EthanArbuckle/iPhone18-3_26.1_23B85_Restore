void sub_2329A5828(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2329A5838(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2329A5848()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2329A5890()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2329A58EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A5934()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A5984()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A59C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A59FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5A4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2329A5A9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2329A5AE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329A5B54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5B8C()
{
  MEMORY[0x23838B560](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5BC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2329A5C24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2329A5C64()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2329A5D28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5D60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5D98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2329A5DD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2329A5E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2329A5F3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2329A6030()
{
  v0 = sub_2329D2E14();
  __swift_allocate_value_buffer(v0, qword_2814DA990);
  v1 = __swift_project_value_buffer(v0, qword_2814DA990);
  v2 = sub_2329A8F40();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2329A60BC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2329A94F8();
  v2 = *v1;
  v3 = v1[1];

  v4 = sub_2329D3384();

  [v0 addSuiteNamed_];

  qword_2814DA9B0 = v0;
}

uint64_t sub_2329A614C()
{
  type metadata accessor for NDFDaemonConfiguration();
  v0 = swift_allocObject();
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814DA9B0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD20, &qword_2329D4560);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  v0[2] = sub_2329D2FF4();
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = v5;
  v0[3] = sub_2329D2FF4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v8;
  v0[4] = sub_2329D2FF4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v12;
  v0[5] = sub_2329D2FF4();
  v17 = *(v13 + 48);
  v18 = *(v13 + 52);
  swift_allocObject();
  v19 = v16;
  v0[6] = sub_2329D2FF4();
  v20 = *(v9 + 48);
  v21 = *(v9 + 52);
  swift_allocObject();
  v22 = v19;
  v0[7] = sub_2329D2FF4();
  v23 = *(v9 + 48);
  v24 = *(v9 + 52);
  swift_allocObject();
  v25 = v22;
  v0[8] = sub_2329D2FF4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD38, &qword_2329D4578);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v25;
  v0[9] = sub_2329D2FF4();
  v30 = *(v13 + 48);
  v31 = *(v13 + 52);
  swift_allocObject();
  v0[10] = sub_2329D2FF4();
  v32 = *(v26 + 48);
  v33 = *(v26 + 52);
  swift_allocObject();
  v0[11] = sub_2329D2FF4();
  if (qword_2814DA988 != -1)
  {
    swift_once();
  }

  v34 = sub_2329D2E14();
  __swift_project_value_buffer(v34, qword_2814DA990);
  v35 = sub_2329D2DF4();
  v36 = sub_2329D3634();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2329A4000, v35, v36, "Initialized NDF Daemon Configuration", v37, 2u);
    MEMORY[0x23838B4F0](v37, -1, -1);
  }

  result = (*(*v0 + 408))();
  qword_2814DAC08 = v0;
  return result;
}

uint64_t *sub_2329A65F4()
{
  if (qword_2814DA980 != -1)
  {
    swift_once();
  }

  return &qword_2814DAC08;
}

uint64_t sub_2329A6644()
{
  if (qword_2814DA980 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2329A66A0()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD20, &qword_2329D4560);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
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

uint64_t sub_2329A67AC()
{
  v1 = *(v0 + 16);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A67F0()
{
  v1 = *(v0 + 16);

  sub_2329D3024();
}

uint64_t (*sub_2329A6834(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 16);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A68C0()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD20, &qword_2329D4560);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

uint64_t sub_2329A6984()
{
  v1 = *(v0 + 24);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A69C8()
{
  v1 = *(v0 + 24);

  sub_2329D3024();
}

uint64_t (*sub_2329A6A0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 24);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A6A90()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

double sub_2329A6B54()
{
  v1 = *(v0 + 32);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A6B98()
{
  v1 = *(v0 + 32);

  sub_2329D3024();
}

uint64_t (*sub_2329A6BDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 32);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A6C70()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

uint64_t sub_2329A6D30()
{
  v1 = *(v0 + 40);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A6D74()
{
  v1 = *(v0 + 40);

  sub_2329D3024();
}

uint64_t (*sub_2329A6DB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 40);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A6E44()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

uint64_t sub_2329A6F04()
{
  v1 = *(v0 + 48);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A6F48()
{
  v1 = *(v0 + 48);

  sub_2329D3024();
}

uint64_t (*sub_2329A6F8C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 48);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A7010()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

double sub_2329A70D4()
{
  v1 = *(v0 + 56);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A7118()
{
  v1 = *(v0 + 56);

  sub_2329D3024();
}

uint64_t (*sub_2329A715C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 56);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A71F0()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD28, &qword_2329D4568);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

double sub_2329A72B4()
{
  v1 = *(v0 + 64);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A72F8()
{
  v1 = *(v0 + 64);

  sub_2329D3024();
}

uint64_t (*sub_2329A733C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 64);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A73D0()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD38, &qword_2329D4578);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

uint64_t sub_2329A748C()
{
  v1 = *(v0 + 72);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A74D0()
{
  v1 = *(v0 + 72);

  sub_2329D3024();
}

uint64_t (*sub_2329A7514(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 72);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A7598;
}

uint64_t sub_2329A75A4()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD30, &qword_2329D4570);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

uint64_t sub_2329A7664()
{
  v1 = *(v0 + 80);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A76A8()
{
  v1 = *(v0 + 80);

  sub_2329D3024();
}

uint64_t (*sub_2329A76EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 80);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

uint64_t sub_2329A7778()
{
  if (qword_2814DA9A8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814DA9B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD38, &qword_2329D4578);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_2329D2FF4();
}

uint64_t sub_2329A7838()
{
  v1 = *(v0 + 88);

  sub_2329D3014();

  return v3;
}

uint64_t sub_2329A787C()
{
  v1 = *(v0 + 88);

  sub_2329D3024();
}

uint64_t (*sub_2329A78C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 88);

  *(v4 + 40) = sub_2329D3004();
  return sub_2329A8D20;
}

void sub_2329A7944(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void sub_2329A79A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2329D4530;
  v3 = (*(*v0 + 208))();
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  v5 = sub_2329D33C4();
  v7 = v6;
  if (qword_2814DA988 != -1)
  {
    swift_once();
  }

  v8 = sub_2329D2E14();
  __swift_project_value_buffer(v8, qword_2814DA990);
  v9 = sub_2329D2DF4();
  v10 = sub_2329D3634();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2329A4000, v9, v10, " \t========== [ Begin NDF Daemon Configuration Dump ] ========== ", v11, 2u);
    MEMORY[0x23838B4F0](v11, -1, -1);
  }

  v12 = sub_2329D2DF4();
  v13 = sub_2329D3634();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2329A4000, v12, v13, " \t[Cleanup task parameters]", v14, 2u);
    MEMORY[0x23838B4F0](v14, -1, -1);
  }

  v15 = sub_2329D2DF4();
  v16 = sub_2329D3634();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = 1;
    *(v17 + 8) = 1024;
    *(v17 + 10) = (*(*v1 + 160))() & 1;

    _os_log_impl(&dword_2329A4000, v15, v16, " \t\t should schedule cleanup task: %{BOOL}d, will schedule task: %{BOOL}d", v17, 0xEu);
    MEMORY[0x23838B4F0](v17, -1, -1);
  }

  else
  {
  }

  v18 = sub_2329D2DF4();
  v19 = sub_2329D3634();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66 = v21;
    *v20 = 136315138;
    v22 = sub_2329A8630(v5, v7, &v66);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_2329A4000, v18, v19, " \t\t stale record cleanup threshold: %ss", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23838B4F0](v21, -1, -1);
    MEMORY[0x23838B4F0](v20, -1, -1);
  }

  else
  {
  }

  v23 = *(*v1 + 232);
  v24 = v23();
  if (v24 >= 1)
  {

    v25 = sub_2329D2DF4();
    v26 = sub_2329D3634();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v23();

      _os_log_impl(&dword_2329A4000, v25, v26, " \t\t (Override present)cleanup activity interval: %llds", v27, 0xCu);
      MEMORY[0x23838B4F0](v27, -1, -1);
    }

    else
    {
    }
  }

  v28 = (*v1 + 256);
  v29 = *v28;
  if ((*v28)(v24) >= 1)
  {

    v30 = sub_2329D2DF4();
    v31 = sub_2329D3634();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v29();

      _os_log_impl(&dword_2329A4000, v30, v31, " \t\t (Override present)cleanup activity delay: %llds", v32, 0xCu);
      MEMORY[0x23838B4F0](v32, -1, -1);
    }

    else
    {
    }
  }

  v33 = sub_2329D2DF4();
  v34 = sub_2329D3634();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2329A4000, v33, v34, " \t[Daemon lifecycle parameters]", v35, 2u);
    MEMORY[0x23838B4F0](v35, -1, -1);
  }

  v36 = sub_2329D2DF4();
  v37 = sub_2329D3634();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = (*(*v1 + 280))();
    _os_log_impl(&dword_2329A4000, v36, v37, " \t\t daemon time to live: %fs", v38, 0xCu);
    MEMORY[0x23838B4F0](v38, -1, -1);
  }

  v39 = sub_2329D2DF4();
  v40 = sub_2329D3634();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = (*(*v1 + 304))();
    _os_log_impl(&dword_2329A4000, v39, v40, " \t\t clean exit interval: %fs", v41, 0xCu);
    MEMORY[0x23838B4F0](v41, -1, -1);
  }

  v42 = sub_2329D2DF4();
  v43 = sub_2329D3634();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = (*(*v1 + 328))();

    _os_log_impl(&dword_2329A4000, v42, v43, " \t\t timer leeway: %lds", v44, 0xCu);
    MEMORY[0x23838B4F0](v44, -1, -1);
  }

  else
  {
  }

  v45 = sub_2329D2DF4();
  v46 = sub_2329D3634();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2329A4000, v45, v46, " \t[CoreData/CloudKit parameters]", v47, 2u);
    MEMORY[0x23838B4F0](v47, -1, -1);
  }

  v48 = sub_2329D2DF4();
  v49 = sub_2329D3634();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = (*(*v1 + 352))();

    _os_log_impl(&dword_2329A4000, v48, v49, " \t\t CloudKit operation memory threshold: %lld bytes", v50, 0xCu);
    MEMORY[0x23838B4F0](v50, -1, -1);
  }

  else
  {
  }

  v51 = sub_2329D2DF4();
  v52 = sub_2329D3634();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = (*(*v1 + 376))();

    _os_log_impl(&dword_2329A4000, v51, v52, " \t\t persistent store connection pool size: %ld", v53, 0xCu);
    MEMORY[0x23838B4F0](v53, -1, -1);
  }

  else
  {
  }

  v54 = sub_2329D2DF4();
  v55 = sub_2329D3634();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v66 = v57;
    *v56 = 136315138;
    v58 = (*(*v1 + 184))();
    v59 = (v58 & 1) == 0;
    if (v58)
    {
      v60 = 0x64656C62616E65;
    }

    else
    {
      v60 = 0x64656C6261736964;
    }

    if (v59)
    {
      v61 = 0xE800000000000000;
    }

    else
    {
      v61 = 0xE700000000000000;
    }

    v62 = sub_2329A8630(v60, v61, &v66);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_2329A4000, v54, v55, " \t\t DB Telemetry submission %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23838B4F0](v57, -1, -1);
    MEMORY[0x23838B4F0](v56, -1, -1);
  }

  oslog = sub_2329D2DF4();
  v63 = sub_2329D3634();
  if (os_log_type_enabled(oslog, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v63, " \t========== [ End NDF Configuration Dump ] ========== ", v64, 2u);
    MEMORY[0x23838B4F0](v64, -1, -1);
  }
}

void *sub_2329A855C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  return v0;
}

uint64_t sub_2329A85C4()
{
  sub_2329A855C();

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2329A8630(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2329A8748(v11, 0, 0, 1, a1, a2);
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
    sub_2329A8C48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

unint64_t sub_2329A8748(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2329A8854(a5, a6);
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
    result = sub_2329D3804();
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

uint64_t sub_2329A8854(uint64_t a1, unint64_t a2)
{
  v4 = sub_2329A88A0(a1, a2);
  sub_2329A89D0(&unk_284800568);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2329A88A0(uint64_t a1, unint64_t a2)
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

  v6 = sub_2329A8ABC(v5, 0);
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

  result = sub_2329D3804();
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
        v10 = sub_2329D3444();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2329A8ABC(v10, 0);
        result = sub_2329D37A4();
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

uint64_t sub_2329A89D0(uint64_t result)
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

  result = sub_2329A8B30(result, v12, 1, v3);
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

void *sub_2329A8ABC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBDF20, &unk_2329D51B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2329A8B30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBDF20, &unk_2329D51B0);
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

uint64_t sub_2329A8C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_2329A8EC4()
{
  v0 = sub_2329D2E14();
  __swift_allocate_value_buffer(v0, qword_2814DAC18);
  __swift_project_value_buffer(v0, qword_2814DAC18);
  v1 = sub_2329A92B4();
  v2 = *v1;
  v3 = v1[1];

  sub_2329D33F4();
  return sub_2329D2E04();
}

uint64_t sub_2329A9078(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_2329D2E14();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = sub_2329A92B4();
  v7 = *v6;
  v8 = v6[1];

  v10 = a3(v9);
  v11 = *v10;
  v12 = v10[1];

  return sub_2329D2E04();
}

uint64_t sub_2329A9130(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2329D2E14();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_2329A91A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2329D2E14();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2329A9278()
{
  v0 = sub_2329D30B4();
  sub_2329D30A4();
  sub_2329D3094();
  return v0;
}

uint64_t sub_2329A9520()
{
  v0 = sub_2329D2DD4();
  __swift_allocate_value_buffer(v0, qword_27DDBEAE8);
  __swift_project_value_buffer(v0, qword_27DDBEAE8);
  return sub_2329D2DB4();
}

uint64_t sub_2329A9598()
{
  if (qword_27DDBE2C0 != -1)
  {
    swift_once();
  }

  v0 = sub_2329D2DD4();

  return __swift_project_value_buffer(v0, qword_27DDBEAE8);
}

uint64_t sub_2329A95FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDBE2C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2329D2DD4();
  v3 = __swift_project_value_buffer(v2, qword_27DDBEAE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2329A96A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8FA8();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329A9714@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v4 = sub_2329D2E14();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *sub_2329A97C0()
{
  if (qword_2814DA8F0 != -1)
  {
    swift_once();
  }

  return &qword_2814DABD8;
}

uint64_t sub_2329A985C(uint64_t a1, uint64_t (*a2)(void), void *a3, void *a4)
{
  v6 = a2();
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;
}

uint64_t *sub_2329A98A4()
{
  if (qword_2814DA958 != -1)
  {
    swift_once();
  }

  return &qword_2814DABF0;
}

uint64_t sub_2329A991C(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_2329A99AC(uint64_t a1)
{
  v81[4] = *MEMORY[0x277D85DE8];
  v3 = sub_2329D2CF4();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = (&v73 - v10);
  if (!*MEMORY[0x277CBECB0])
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v78 = v9;
  v79 = v1;
  v77 = v8;
  sub_2329D33B4();
  v11 = sub_2329D3384();

  if (!*MEMORY[0x277CBECB8])
  {
    goto LABEL_30;
  }

  sub_2329D33B4();
  v12 = sub_2329D3384();

  v13 = sub_2329D2CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDD0, &qword_2329D48B8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2329D46B0;
  v15 = *MEMORY[0x277CBE878];
  *(v14 + 32) = *MEMORY[0x277CBE878];
  *(v14 + 40) = v11;
  *(v14 + 48) = v12;
  type metadata accessor for URLResourceKey();
  v16 = v15;
  v17 = v11;
  v18 = v12;
  v19 = sub_2329D3474();

  v81[0] = 0;
  v20 = [v13 resourceValuesForKeys:v19 error:v81];

  v21 = v81[0];
  if (v20)
  {
    v73 = a1;
    sub_2329BF1B0(&qword_27DDBDDD8, type metadata accessor for URLResourceKey);
    v22 = sub_2329D3354();
    v23 = v21;

    if (*(v22 + 16))
    {
      v24 = sub_2329BB3D8(v16);
      v25 = v76;
      v26 = v78;
      if ((v27 & 1) != 0 && (sub_2329A8C48(*(v22 + 56) + 32 * v24, v81), swift_dynamicCast()))
      {
        v28 = v80;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
      v25 = v76;
      v26 = v78;
    }

    v45 = *(v22 + 16);
    v75 = v13;
    if (v45 && (v46 = sub_2329BB3D8(v17), (v47 & 1) != 0) && (sub_2329A8C48(*(v22 + 56) + 32 * v46, v81), swift_dynamicCast()))
    {
      v48 = v80;
    }

    else
    {
      v48 = 0;
    }

    v49 = v18;
    v50 = *(v22 + 16);
    v74 = v17;
    if (v50 && (v51 = sub_2329BB3D8(v18), (v52 & 1) != 0))
    {
      sub_2329A8C48(*(v22 + 56) + 32 * v51, v81);

      if (swift_dynamicCast())
      {
        v53 = v80;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v53 = 0;
LABEL_23:
    v54 = v77;
    v55 = v48;
    v56 = v28 & v48 & v53;
    (*(v26 + 16))(v25, v73, v77);
    v57 = v28;
    v58 = sub_2329D2DF4();
    v59 = sub_2329D3634();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      LODWORD(v78) = v55;
      v61 = v60;
      v62 = swift_slowAlloc();
      LODWORD(v77) = v57;
      v63 = v25;
      v64 = v62;
      v81[0] = v62;
      *v61 = 136316162;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
      v65 = sub_2329D38B4();
      v79 = v49;
      v66 = v65;
      v67 = v54;
      v69 = v68;
      (*(v26 + 8))(v63, v67);
      v70 = sub_2329A8630(v66, v69, v81);

      *(v61 + 4) = v70;
      *(v61 + 12) = 1024;
      *(v61 + 14) = v56;
      *(v61 + 18) = 1024;
      *(v61 + 20) = v77;
      *(v61 + 24) = 1024;
      *(v61 + 26) = v78;
      *(v61 + 30) = 1024;
      *(v61 + 32) = v53;
      _os_log_impl(&dword_2329A4000, v58, v59, "Checking backup exclusion flags on %s, all: %{BOOL}d (excludedFromBackup: %{BOOL}d, excludedFromCloudBackup: %{BOOL}d, excludedFromUnencryptedBackup: %{BOOL}d)", v61, 0x24u);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23838B4F0](v64, -1, -1);
      MEMORY[0x23838B4F0](v61, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v25, v54);
    }

    goto LABEL_28;
  }

  v29 = v81[0];
  v30 = sub_2329D2C84();

  swift_willThrow();
  v31 = v77;
  v32 = v78;
  (*(v78 + 16))(v7, a1, v77);
  v33 = v30;
  v34 = sub_2329D2DF4();
  v35 = sub_2329D3614();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v81[0] = v79;
    *v36 = 136315394;
    sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
    v37 = sub_2329D38B4();
    v39 = v38;
    (*(v32 + 8))(v7, v31);
    v40 = sub_2329A8630(v37, v39, v81);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2112;
    v41 = v30;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 14) = v42;
    v43 = v76;
    *v76 = v42;
    _os_log_impl(&dword_2329A4000, v34, v35, "An error occurred while getting URL resource values on %s: %@", v36, 0x16u);
    sub_2329BFB8C(v43, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v43, -1, -1);
    v44 = v79;
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x23838B4F0](v44, -1, -1);
    MEMORY[0x23838B4F0](v36, -1, -1);
  }

  else
  {

    (*(v32 + 8))(v7, v31);
  }

  v56 = 0;
LABEL_28:
  v71 = *MEMORY[0x277D85DE8];
  return v56;
}

uint64_t sub_2329AA184(uint64_t a1)
{
  v103[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2329D2CF4();
  v102 = *(v2 - 8);
  v3 = *(v102 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v100 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v90 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v90 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v98 = &v90 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v90 - v14;
  v16 = sub_2329D2CA4();
  v17 = sub_2329D34C4();
  v18 = *MEMORY[0x277CBE878];
  v103[0] = 0;
  v19 = [v16 setResourceValue:v17 forKey:v18 error:v103];

  v20 = v103[0];
  v101 = v16;
  if (!v19)
  {
    v33 = v103[0];
    v34 = sub_2329D2C84();

    swift_willThrow();
    v35 = *(v102 + 16);
LABEL_16:
    v66 = v100;
    v35(v100, a1, v2);
    v67 = v34;
    v68 = sub_2329D2DF4();
    v69 = sub_2329D3614();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v103[0] = v72;
      *v70 = 136315394;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
      v73 = sub_2329D38B4();
      v75 = v74;
      (*(v102 + 8))(v66, v2);
      v76 = sub_2329A8630(v73, v75, v103);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2112;
      v77 = v34;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v78;
      *v71 = v78;
      _os_log_impl(&dword_2329A4000, v68, v69, "An error occurred while setting URL resource values on %s: %@", v70, 0x16u);
      sub_2329BFB8C(v71, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v71, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x23838B4F0](v72, -1, -1);
      MEMORY[0x23838B4F0](v70, -1, -1);
    }

    else
    {

      (*(v102 + 8))(v66, v2);
    }

    result = 0;
    goto LABEL_25;
  }

  v93 = v11;
  v21 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v99 = *(v102 + 16);
  v97 = v102 + 16;
  v99(v15, a1, v2);
  v22 = v20;
  v95 = v21;
  v23 = sub_2329D2DF4();
  v24 = sub_2329D3604();
  v25 = os_log_type_enabled(v23, v24);
  v94 = v8;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v103[0] = v27;
    *v26 = 136315138;
    sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
    v28 = sub_2329D38B4();
    v30 = v29;
    v96 = *(v102 + 8);
    v96(v15, v2);
    v31 = sub_2329A8630(v28, v30, v103);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2329A4000, v23, v24, "Successfully set backup exclusion flag on %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23838B4F0](v27, -1, -1);
    v32 = v26;
    v16 = v101;
    MEMORY[0x23838B4F0](v32, -1, -1);
  }

  else
  {

    v96 = *(v102 + 8);
    v96(v15, v2);
  }

  v36 = sub_2329D34C4();
  result = *MEMORY[0x277CBECB0];
  if (*MEMORY[0x277CBECB0])
  {
    sub_2329D33B4();
    v38 = sub_2329D3384();

    v103[0] = 0;
    v39 = [v16 setResourceValue:v36 forKey:v38 error:v103];

    v40 = v103[0];
    if (!v39)
    {
LABEL_15:
      v65 = v40;
      v34 = sub_2329D2C84();

      swift_willThrow();
      v35 = v99;
      goto LABEL_16;
    }

    v41 = v98;
    v99(v98, a1, v2);
    v42 = v40;
    v43 = sub_2329D2DF4();
    v44 = sub_2329D3604();
    v45 = os_log_type_enabled(v43, v44);
    v92 = a1;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v103[0] = v91;
      *v46 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
      v47 = sub_2329D38B4();
      v49 = v48;
      v96(v41, v2);
      v50 = sub_2329A8630(v47, v49, v103);
      a1 = v92;

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2329A4000, v43, v44, "Successfully set cloud backup exclusion flag on %s", v46, 0xCu);
      v51 = v91;
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x23838B4F0](v51, -1, -1);
      MEMORY[0x23838B4F0](v46, -1, -1);
    }

    else
    {

      v96(v41, v2);
    }

    v52 = sub_2329D34C4();
    result = *MEMORY[0x277CBECB8];
    v16 = v101;
    if (*MEMORY[0x277CBECB8])
    {
      sub_2329D33B4();
      v53 = sub_2329D3384();

      v103[0] = 0;
      v54 = [v16 setResourceValue:v52 forKey:v53 error:v103];

      v40 = v103[0];
      if (v54)
      {
        v55 = v93;
        v99(v93, a1, v2);
        v56 = v40;
        v57 = sub_2329D2DF4();
        v58 = sub_2329D3604();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v103[0] = v60;
          *v59 = 136315138;
          sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
          v61 = sub_2329D38B4();
          v63 = v62;
          v96(v55, v2);
          v64 = sub_2329A8630(v61, v63, v103);

          *(v59 + 4) = v64;
          _os_log_impl(&dword_2329A4000, v57, v58, "Successfully set unencrypted backup exclusion flag on %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x23838B4F0](v60, -1, -1);
          MEMORY[0x23838B4F0](v59, -1, -1);
        }

        else
        {

          v96(v55, v2);
        }

        v79 = v94;
        v99(v94, v92, v2);
        v80 = sub_2329D2DF4();
        v81 = sub_2329D3634();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v103[0] = v83;
          *v82 = 136315138;
          sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
          v84 = sub_2329D38B4();
          v85 = v79;
          v87 = v86;
          v96(v85, v2);
          v88 = sub_2329A8630(v84, v87, v103);

          *(v82 + 4) = v88;
          _os_log_impl(&dword_2329A4000, v80, v81, "Successfully set all backup exclusion flags on %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);
          MEMORY[0x23838B4F0](v83, -1, -1);
          MEMORY[0x23838B4F0](v82, -1, -1);
        }

        else
        {

          v96(v79, v2);
        }

        result = 1;
LABEL_25:
        v89 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2329AACE0@<X0>(uint64_t a1@<X8>)
{
  v137 = a1;
  v140[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2329D2C94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDC0, &qword_2329D48A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v122 - v8;
  v10 = sub_2329D2CF4();
  v139 = *(v10 - 8);
  v11 = *(v139 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v126 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v130 = &v122 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v125 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v135 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v134 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v122 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v122 - v28;
  v30 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v31 = sub_2329D3484();

  if (v31[2])
  {
    v136 = v24;
    v32 = v31[4];
    v33 = v31[5];

    v128 = *(v139 + 56);
    v129 = v139 + 56;
    v128(v9, 1, 1, v10);
    (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
    v34 = v136;
    sub_2329D2CE4();
    v35 = sub_2329A945C();
    v36 = *v35;
    v37 = v35[1];

    sub_2329D2CB4();

    v38 = sub_2329A9484();
    v39 = *v38;
    v40 = *(v38 + 1);

    v132 = v27;
    sub_2329D2CB4();

    v41 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
    v133 = *(v139 + 16);
    v42 = v134;
    (v133)(v134, v34, v10);
    v127 = v41;
    v43 = sub_2329D2DF4();
    v44 = sub_2329D3604();
    v45 = os_log_type_enabled(v43, v44);
    v131 = v29;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v140[0] = v47;
      *v46 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
      v48 = sub_2329D38B4();
      v50 = v49;
      v134 = *(v139 + 8);
      (v134)(v42, v10);
      v51 = sub_2329A8630(v48, v50, v140);
      v34 = v136;

      *(v46 + 4) = v51;
      _os_log_impl(&dword_2329A4000, v43, v44, "Private store directory: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23838B4F0](v47, -1, -1);
      MEMORY[0x23838B4F0](v46, -1, -1);
    }

    else
    {

      v134 = *(v139 + 8);
      (v134)(v42, v10);
    }

    v59 = v10;
    v60 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDC8, &qword_2329D48B0);
    v61 = *(v139 + 72);
    v62 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2329D4530;
    v64 = v133;
    (v133)(v63 + v62, v34, v10);
    v124 = v62;
    v65 = v135;
    v64(v135, v63 + v62, v10);
    sub_2329D2CD4();
    v66 = sub_2329D3384();

    LOBYTE(v62) = [v60 fileExistsAtPath_];

    if (v62)
    {
      v67 = v130;
      v64(v130, v65, v10);
      v68 = sub_2329D2DF4();
      v69 = sub_2329D3604();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v133 = v70;
        v138 = swift_slowAlloc();
        v140[0] = v138;
        *v70 = 136315138;
        sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
        LODWORD(v127) = v69;
        v71 = sub_2329D38B4();
        v123 = v60;
        v72 = v71;
        v74 = v73;
        v75 = v134;
        (v134)(v67, v10);
        v76 = sub_2329A8630(v72, v74, v140);
        v77 = v131;

        v78 = v133;
        *(v133 + 1) = v76;
        v60 = v123;
        _os_log_impl(&dword_2329A4000, v68, v127, "Database directory already exists %s", v78, 0xCu);
        v79 = v138;
        __swift_destroy_boxed_opaque_existential_0(v138);
        MEMORY[0x23838B4F0](v79, -1, -1);
        MEMORY[0x23838B4F0](v78, -1, -1);

        v75(v135, v10);
        v34 = v136;
        v80 = v137;
      }

      else
      {

        v75 = v134;
        (v134)(v67, v10);
        v75(v65, v10);
        v34 = v136;
        v80 = v137;
        v77 = v131;
      }

      goto LABEL_25;
    }

    v81 = sub_2329D2CA4();
    v140[0] = 0;
    v82 = [v60 createDirectoryAtURL:v81 withIntermediateDirectories:1 attributes:0 error:v140];

    if (!v82)
    {
      v123 = v60;
      v99 = v140[0];

      v100 = sub_2329D2C84();

      swift_willThrow();
      v101 = v126;
      (v133)(v126, v65, v10);
      v102 = v100;
      v103 = sub_2329D2DF4();
      v104 = sub_2329D3614();

      v105 = os_log_type_enabled(v103, v104);
      v106 = v131;
      if (v105)
      {
        v107 = swift_slowAlloc();
        LODWORD(v133) = v104;
        v108 = v107;
        v109 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v140[0] = v138;
        *v108 = 136315394;
        sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
        v110 = sub_2329D38B4();
        v112 = v111;
        v113 = v134;
        (v134)(v101, v59);
        v114 = sub_2329A8630(v110, v112, v140);

        *(v108 + 4) = v114;
        *(v108 + 12) = 2112;
        v115 = v100;
        v116 = _swift_stdlib_bridgeErrorToNSError();
        *(v108 + 14) = v116;
        *v109 = v116;
        _os_log_impl(&dword_2329A4000, v103, v133, "Failed to create database directory %s: %@", v108, 0x16u);
        sub_2329BFB8C(v109, &qword_27DDBE070, &unk_2329D4750);
        MEMORY[0x23838B4F0](v109, -1, -1);
        v117 = v138;
        __swift_destroy_boxed_opaque_existential_0(v138);
        MEMORY[0x23838B4F0](v117, -1, -1);
        MEMORY[0x23838B4F0](v108, -1, -1);

        v113(v135, v59);
        v113(v136, v59);
        v113(v132, v59);
        v113(v131, v59);
      }

      else
      {

        v118 = v134;
        (v134)(v101, v59);
        v118(v65, v59);
        v118(v34, v59);
        v118(v132, v59);
        v118(v106, v59);
      }

      v119 = v137;
      v120 = 1;
      goto LABEL_26;
    }

    v83 = v140[0];
    v84 = v132;
    v85 = sub_2329A99AC(v132);
    v77 = v131;
    if (v85)
    {
      (v133)(v125, v84, v10);
      v86 = sub_2329D2DF4();
      v87 = sub_2329D3634();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v133 = v88;
        v138 = swift_slowAlloc();
        v140[0] = v138;
        *v88 = 136315138;
        sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
        v89 = v125;
        v90 = sub_2329D38B4();
        v123 = v60;
        v91 = v90;
        v92 = v77;
        v94 = v93;
        v95 = v89;
        v75 = v134;
        (v134)(v95, v59);
        v96 = sub_2329A8630(v91, v94, v140);
        v77 = v92;

        v97 = v133;
        *(v133 + 1) = v96;
        v60 = v123;
        _os_log_impl(&dword_2329A4000, v86, v87, "Backup exclusion flag already set on %s", v97, 0xCu);
        v98 = v138;
        __swift_destroy_boxed_opaque_existential_0(v138);
        MEMORY[0x23838B4F0](v98, -1, -1);
        MEMORY[0x23838B4F0](v97, -1, -1);

        v75(v135, v59);
        v34 = v136;
        v80 = v137;
LABEL_25:

        swift_setDeallocating();
        v75((v63 + v124), v59);
        swift_deallocClassInstance();
        v75(v132, v59);
        v75(v77, v59);
        (*(v139 + 32))(v80, v34, v59);
        v119 = v80;
        v120 = 0;
LABEL_26:
        result = (v128)(v119, v120, 1, v59);
        v121 = *MEMORY[0x277D85DE8];
        return result;
      }

      v75 = v134;
      (v134)(v125, v59);
      v75(v65, v59);
    }

    else
    {
      sub_2329AA184(v84);
      sub_2329A99AC(v84);
      v75 = v134;
      (v134)(v65, v10);
    }

    v80 = v137;
    goto LABEL_25;
  }

  v52 = v137;

  v53 = sub_2329D2DF4();
  v54 = sub_2329D3614();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_2329A4000, v53, v54, "Failed to find user Library directory", v55, 2u);
    MEMORY[0x23838B4F0](v55, -1, -1);
  }

  v56 = *(v139 + 56);
  v57 = *MEMORY[0x277D85DE8];

  return v56(v52, 1, 1, v10);
}

void sub_2329ABC10(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329ABC28(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2329ABBC8();
  return sub_2329ABC70;
}

void *sub_2329ABCD8(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2(v4);
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;
    v11 = v8;
    a3(v10);
  }

  a4(v7);
  return v8;
}

id sub_2329ABD60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDC0, &qword_2329D48A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v6 = sub_2329D2CF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  sub_2329AACE0(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2329BFB8C(v5, &qword_27DDBDDC0, &qword_2329D48A8);
    v17 = sub_2329D2DF4();
    v18 = sub_2329D3614();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2329A4000, v17, v18, "Unable to get private store database directory", v19, 2u);
      MEMORY[0x23838B4F0](v19, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v7 + 32))(v16, v5, v6);
    v21 = sub_2329A9434();
    v22 = *v21;
    v23 = v21[1];

    v55 = v16;
    sub_2329D2CB4();

    v24 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v25 = sub_2329D2CA4();
    v26 = [v24 initWithURL_];

    v27 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
    (*(v7 + 16))(v11, v14, v6);
    v53 = a1;
    v54 = v27;
    v28 = sub_2329D2DF4();
    v29 = sub_2329D3634();
    v30 = os_log_type_enabled(v28, v29);
    v56 = v14;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v52 = v7;
      v32 = v31;
      v33 = swift_slowAlloc();
      v57 = v33;
      *v32 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
      v34 = sub_2329D38B4();
      v36 = v35;
      v37 = *(v52 + 8);
      v37(v11, v6);
      v38 = sub_2329A8630(v34, v36, &v57);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2329A4000, v28, v29, "Database URL is: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23838B4F0](v33, -1, -1);
      MEMORY[0x23838B4F0](v32, -1, -1);

      v39 = v37;
    }

    else
    {

      v39 = *(v7 + 8);
      v39(v11, v6);
    }

    [v26 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
    sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
    v40 = sub_2329D3714();
    [v26 setOption:v40 forKey:*MEMORY[0x277CBE280]];

    v41 = *(**sub_2329A65F4() + 376);

    v41(v42);

    v43 = sub_2329D35D4();
    [v26 setOption:v43 forKey:*MEMORY[0x277CBE218]];

    v44 = sub_2329D3714();
    [v26 setOption:v44 forKey:*MEMORY[0x277CBE270]];

    v45 = (*(*v53 + 312))();
    [v26 setCloudKitContainerOptions_];

    v20 = v26;
    v46 = sub_2329D2DF4();
    v47 = sub_2329D3634();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v20;
      *v49 = v20;
      v50 = v20;
      _os_log_impl(&dword_2329A4000, v46, v47, "Successfully created persistent store description %@", v48, 0xCu);
      sub_2329BFB8C(v49, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v49, -1, -1);
      MEMORY[0x23838B4F0](v48, -1, -1);
    }

    v39(v56, v6);
    v39(v55, v6);
  }

  return v20;
}

void sub_2329AC408(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329AC420(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2329ABC90();
  return sub_2329AC468;
}

id sub_2329AC488()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    [v4 setUseZoneWidePCS_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2329AC510()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions);
  }

  else
  {
    v4 = v0;
    if (qword_2814DA958 != -1)
    {
      swift_once();
    }

    v5 = objc_allocWithZone(MEMORY[0x277CBE498]);
    v6 = sub_2329D3384();
    v7 = [v5 initWithContainerIdentifier_];

    v8 = sub_2329A94D0();
    v9 = *v8;
    v10 = v8[1];

    v11 = sub_2329D3384();

    [v7 setApsConnectionMachServiceName_];

    [v7 setDatabaseScope_];
    [v7 setUseDeviceToDeviceEncryption_];
    v12 = *(**sub_2329A65F4() + 352);

    v12(v13);

    v14 = sub_2329D3924();
    [v7 setOperationMemoryThresholdBytes_];

    v15 = objc_opt_self();
    v16 = sub_2329AC488();
    [v15 setContainerOptions:v16 onCloudKitContainerOptions:v7];

    v17 = v7;
    v18 = sub_2329D2DF4();
    v19 = sub_2329D35F4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      v22 = *(v4 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions);
      *(v20 + 4) = v22;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v22;
      v21[1] = v17;
      v23 = v17;
      v24 = v22;
      _os_log_impl(&dword_2329A4000, v18, v19, "Set CKContainerOptions %@ on to NSPersistentCloudKitContainerOptions %@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE070, &unk_2329D4750);
      swift_arrayDestroy();
      MEMORY[0x23838B4F0](v21, -1, -1);
      MEMORY[0x23838B4F0](v20, -1, -1);
    }

    v25 = v17;
    v26 = sub_2329D2DF4();
    v27 = sub_2329D3634();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_2329A4000, v26, v27, "Finished creating persistent cloud kit container options %@", v28, 0xCu);
      sub_2329BFB8C(v29, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v29, -1, -1);
      MEMORY[0x23838B4F0](v28, -1, -1);
    }

    v31 = *(v4 + v1);
    *(v4 + v1) = v25;
    v3 = v25;

    v2 = 0;
  }

  v32 = v2;
  return v3;
}

uint64_t sub_2329AC8E8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_2329AC8FC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2329AC510();
  return sub_2329AC944;
}

void sub_2329AC944(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions) = v2;
}

id sub_2329AC95C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v0;
    v5 = (*(*v0 + 240))();
    if (v5)
    {
      v6 = v5;
      v7 = (*(*v0 + 264))();
      if (v7)
      {
        v8 = v7;
        v9 = objc_allocWithZone(MEMORY[0x277CBE470]);
        v10 = v6;
        v11 = sub_2329D3384();
        v12 = [v9 initWithName:v11 managedObjectModel:v10];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_2329D46C0;
        *(v13 + 32) = v8;
        sub_2329BFB44(0, &qword_2814D9E28, 0x277CBE4E0);
        v3 = v12;
        v14 = v8;
        v15 = sub_2329D3474();

        [v3 setPersistentStoreDescriptions_];

LABEL_11:
        v21 = *(v4 + v1);
        *(v4 + v1) = v3;
        v22 = v3;
        sub_2329A5828(v21);
        goto LABEL_12;
      }

      v16 = sub_2329D2DF4();
      v19 = sub_2329D3614();
      if (os_log_type_enabled(v16, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2329A4000, v16, v19, "Unable to create private store description for persistent cloud kit container", v20, 2u);
        MEMORY[0x23838B4F0](v20, -1, -1);
      }
    }

    else
    {
      v16 = sub_2329D2DF4();
      v17 = sub_2329D3614();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2329A4000, v16, v17, "Unable to create managed object model for persistent cloud kit container", v18, 2u);
        MEMORY[0x23838B4F0](v18, -1, -1);
      }
    }

    v3 = 0;
    goto LABEL_11;
  }

LABEL_12:
  sub_2329A5838(v2);
  return v3;
}

void sub_2329ACC2C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329ACC44(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2329AC95C();
  return sub_2329ACC8C;
}

id sub_2329ACCAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext;
  v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext);
  v4 = v3;
  if (v3 == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) == 1)
    {
      v5 = (*(*v1 + 336))();
      if (v5)
      {
        v6 = v5;
        v4 = [v5 newBackgroundContext];

        if (v4)
        {
          [v4 setAutomaticallyMergesChangesFromParent_];
          [v4 setMergePolicy_];
          [v4 setUndoManager_];
LABEL_12:
          v11 = *(v1 + v2);
          *(v1 + v2) = v4;
          v12 = v4;
          sub_2329A5828(v11);
          goto LABEL_13;
        }
      }

      v7 = sub_2329D2DF4();
      v8 = sub_2329D3614();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Failed to create new background MOC";
        goto LABEL_10;
      }
    }

    else
    {
      v7 = sub_2329D2DF4();
      v8 = sub_2329D3614();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "PSC is not loaded, return";
LABEL_10:
        _os_log_impl(&dword_2329A4000, v7, v8, v10, v9, 2u);
        MEMORY[0x23838B4F0](v9, -1, -1);
      }
    }

    v4 = 0;
    goto LABEL_12;
  }

LABEL_13:
  sub_2329A5838(v3);
  return v4;
}

void sub_2329ACE90(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext) = a1;
  sub_2329A5828(v2);
}

void (*sub_2329ACEA8(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2329ACCAC();
  return sub_2329ACEF0;
}

void sub_2329ACF10(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v5 + *a3);
  *(v5 + *a3) = *a1;
  if (a2)
  {
    v8 = v4;
    a4(v6);
  }

  else
  {

    a4(v6);
  }
}

uint64_t sub_2329ACFA0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2329ACFE0(a1);
  return v5;
}

uint64_t sub_2329ACFE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2329D2E14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v10 = sub_2329A8FA8();
  v11 = *(v5 + 16);
  v11(v2 + v9, v10, v4);
  sub_2329D2DC4();
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel) = 1;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription) = 1;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___privateCloudKitContainerOptions) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateCloudKitContainerOptions) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer) = 1;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext) = 1;
  v11(v8, v2 + v9, v4);
  v12 = sub_2329D2DF4();
  v13 = sub_2329D3634();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2329A4000, v12, v13, "Initializing persistenceController", v14, 2u);
    MEMORY[0x23838B4F0](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_relayController) = a1;

  sub_2329AF8F0();
  v15 = (*(*v2 + 392))();
  v16 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded;
  if (*(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) == 1)
  {
    (*(*v2 + 400))(v15);

    v17 = sub_2329D2DF4();
    v18 = sub_2329D3634();
    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_10;
    }

    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 1) = *(v2 + v16);

    v20 = "Successfully initialized PSC, loaded: %{BOOL}d";
    v21 = v18;
    v22 = v17;
    v23 = v19;
    v24 = 8;
    goto LABEL_8;
  }

  v17 = sub_2329D2DF4();
  v25 = sub_2329D3614();
  if (os_log_type_enabled(v17, v25))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "PSC is not loaded, return";
    v21 = v25;
    v22 = v17;
    v23 = v19;
    v24 = 2;
LABEL_8:
    _os_log_impl(&dword_2329A4000, v22, v21, v20, v23, v24);
    MEMORY[0x23838B4F0](v19, -1, -1);
  }

LABEL_10:

  return v2;
}

uint64_t sub_2329AD48C()
{
  (*(*v0 + 408))();
  v1 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_relayController);

  v4 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentAuthorID;
  v5 = sub_2329D2DD4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___ckManagedObjectModel));
  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentPrivateStoreDescription));

  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___persistentCloudKitContainer));
  sub_2329A5828(*(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController____lazy_storage___currentContext));
  return v0;
}

uint64_t sub_2329AD5D8()
{
  sub_2329AD48C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2329AD630()
{
  v1 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  v2 = (*(*v0 + 336))();
  if (v2)
  {
    v3 = v2;
    v4 = sub_2329D2DF4();
    v5 = sub_2329D3634();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Loading PSC", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    v42[0] = 0;
    if ([v3 load_])
    {
      v7 = v42[0];

      *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded) = 1;
      goto LABEL_30;
    }

    v11 = v42[0];
    v12 = sub_2329D2C84();

    swift_willThrow();
    v42[0] = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
    sub_2329BFB44(0, &qword_27DDBDD50, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v14 = [v41 domain];
      v15 = sub_2329D33B4();
      v17 = v16;

      v18 = *MEMORY[0x277CBE2C8];
      if (v15 == sub_2329D33B4() && v17 == v19)
      {

        goto LABEL_14;
      }

      v20 = sub_2329D38D4();

      if (v20)
      {
LABEL_14:

        v21 = [v41 code];
        if (v21 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v22 = v21;
          if (v21 <= 0x7FFFFFFF)
          {
            v23 = v41;
            v24 = sub_2329D2DF4();
            v25 = sub_2329D3614();

            v26 = os_log_type_enabled(v24, v25);
            if (v22 == 4618)
            {
              if (v26)
              {
                v27 = swift_slowAlloc();
                v28 = swift_slowAlloc();
                *v27 = 138412290;
                *(v27 + 4) = v23;
                *v28 = v23;
                v38 = v23;
                v30 = "I/O error opening/creating .shm index file for SQLite: %@";
                goto LABEL_28;
              }
            }

            else if (v22 == 13)
            {
              if (v26)
              {
                v27 = swift_slowAlloc();
                v28 = swift_slowAlloc();
                *v27 = 138412290;
                *(v27 + 4) = v23;
                *v28 = v23;
                v29 = v23;
                v30 = "Error writing main DB or temporary file when disk is full: %@";
LABEL_28:
                _os_log_impl(&dword_2329A4000, v24, v25, v30, v27, 0xCu);
                sub_2329BFB8C(v28, &qword_27DDBE070, &unk_2329D4750);
                MEMORY[0x23838B4F0](v28, -1, -1);
                MEMORY[0x23838B4F0](v27, -1, -1);
              }
            }

            else if (v26)
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              *v27 = 138412290;
              *(v27 + 4) = v23;
              *v28 = v23;
              v39 = v23;
              v30 = "Other NSSQLiteErrorDomain error, %@";
              goto LABEL_28;
            }

            swift_willThrow();
            goto LABEL_30;
          }
        }

        __break(1u);
      }
    }

    v31 = v12;
    v32 = sub_2329D2DF4();
    v33 = sub_2329D3614();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v12;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_2329A4000, v32, v33, "Other load() error, %@", v34, 0xCu);
      sub_2329BFB8C(v35, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v35, -1, -1);
      MEMORY[0x23838B4F0](v34, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v8 = sub_2329D2DF4();
    v9 = sub_2329D3614();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "Unable to initialize persistent store container!!", v10, 2u);
      MEMORY[0x23838B4F0](v10, -1, -1);
    }
  }

LABEL_30:
  v40 = *MEMORY[0x277D85DE8];
}

void sub_2329ADBD8()
{
  v1 = v0;
  v2 = sub_2329D2DF4();
  v3 = sub_2329D3634();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2329A4000, v2, v3, "Setting up persistent store notifications", v4, 2u);
    MEMORY[0x23838B4F0](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = *MEMORY[0x277CBE260];
  v8 = (*(*v1 + 336))();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 persistentStoreCoordinator];

    sub_2329BFB44(0, &qword_2814D9E30, 0x277CBE4D8);
    v11 = sub_2329D38C4();
  }

  else
  {
    v11 = 0;
  }

  v22 = sub_2329BC9C8;
  v23 = v1;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2329ADEF8;
  v21 = &block_descriptor;
  v12 = _Block_copy(&v18);

  v13 = [v6 addObserverForName:v7 object:v11 queue:0 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v14 = [v5 defaultCenter];
  v15 = *MEMORY[0x277CBE1F0];
  v22 = sub_2329BC9E4;
  v23 = v1;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2329ADEF8;
  v21 = &block_descriptor_3;
  v16 = _Block_copy(&v18);

  v17 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

uint64_t sub_2329ADEF8(uint64_t a1)
{
  v2 = sub_2329D2C34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2329D2C14();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_2329ADFEC(uint64_t a1)
{
  v2 = sub_2329D2D84();
  v3 = *(v2 - 8);
  v176 = v2;
  v177 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v175 = v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE60, &qword_2329D4918);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v174 = v165 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v165 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v173 = v165 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v165 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v165 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v165 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v165 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v165 - v30;
  v32 = sub_2329D2C24();
  if (v32)
  {
    v33 = v32;
    MEMORY[0x28223BE20](v32);
    v165[-2] = a1;
    v171 = v35;
    v172 = v34;
    nullsub_1(sub_2329BF95C);
    v36 = *MEMORY[0x277CBE1F8];
    v178 = sub_2329D33B4();
    v179 = v37;
    sub_2329D3774();
    if (*(v33 + 16) && (v38 = sub_2329BB46C(v180), (v39 & 1) != 0))
    {
      sub_2329A8C48(*(v33 + 56) + 32 * v38, v181);
      sub_2329BFA2C(v180);

      sub_2329BFB44(0, &qword_2814D9E20, 0x277CBE480);
      if (swift_dynamicCast())
      {
        v170 = v178;
        v40 = [v178 endDate];
        v168 = v40;
        if (v40)
        {
          v41 = v40;
          sub_2329D2D64();

          v42 = 0;
        }

        else
        {
          v42 = 1;
        }

        v43 = v176;
        v44 = v177 + 56;
        v45 = 1;
        v169 = *(v177 + 56);
        v169(v31, v42, 1, v176);
        sub_2329BFB8C(v31, &qword_27DDBDE60, &qword_2329D4918);
        v46 = [v170 endDate];
        if (v46)
        {
          v47 = v46;
          sub_2329D2D64();

          v45 = 0;
        }

        v169(v26, v45, 1, v43);
        sub_2329BFA80(v26, v29, &qword_27DDBDE60, &qword_2329D4918);
        v48 = v177;
        v166 = *(v177 + 48);
        v165[1] = v177 + 48;
        v49 = v166(v29, 1, v43);
        v167 = v44;
        if (v49 == 1)
        {
          sub_2329BFB8C(v29, &qword_27DDBDE60, &qword_2329D4918);
          v50 = 0;
          v51 = v170;
        }

        else
        {
          v51 = v170;
          v52 = [v170 startDate];
          v53 = v175;
          sub_2329D2D64();

          sub_2329D2D34();
          v50 = v54;
          v55 = *(v48 + 8);
          v55(v53, v43);
          v55(v29, v43);
          v48 = v177;
        }

        v56 = [v51 type];
        if (v56 == 2)
        {
          if (v168)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
            v98 = swift_allocObject();
            v99 = MEMORY[0x277D839F8];
            *(v98 + 16) = xmmword_2329D4530;
            v100 = MEMORY[0x277D83A80];
            *(v98 + 56) = v99;
            *(v98 + 64) = v100;
            *(v98 + 32) = v50;
            v101 = sub_2329D33C4();
            v103 = v102;
            v63 = v51;
            v104 = sub_2329D2DF4();
            v105 = sub_2329D35F4();

            if (os_log_type_enabled(v104, v105))
            {
              v106 = v101;
              v177 = v103;
              v107 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              v180[0] = v173;
              *v107 = 136315906;
              if ([v63 succeeded])
              {
                v108 = 0x73736563637573;
              }

              else
              {
                v108 = 0x6572756C696166;
              }

              v109 = sub_2329A8630(v108, 0xE700000000000000, v180);

              *(v107 + 4) = v109;
              *(v107 + 12) = 2048;
              v110 = [v63 startDate];
              v111 = v175;
              sub_2329D2D64();

              sub_2329D2D24();
              v113 = v112;
              v114 = *(v48 + 8);
              v114(v111, v176);
              *(v107 + 14) = v113;
              *(v107 + 22) = 2048;
              v115 = [v63 endDate];
              if (v115)
              {
                v116 = v115;
                sub_2329D2D64();

                v117 = 0;
              }

              else
              {
                v117 = 1;
              }

              v149 = v176;
              v169(v10, v117, 1, v176);
              v150 = v174;
              sub_2329BFA80(v10, v174, &qword_27DDBDE60, &qword_2329D4918);
              if (v166(v150, 1, v149) == 1)
              {
                sub_2329BFB8C(v150, &qword_27DDBDE60, &qword_2329D4918);
                v151 = 0;
              }

              else
              {
                sub_2329D2D24();
                v151 = v152;
                v114(v150, v149);
              }

              *(v107 + 24) = v151;
              *(v107 + 32) = 2080;
              v153 = sub_2329A8630(v106, v177, v180);

              *(v107 + 34) = v153;
              _os_log_impl(&dword_2329A4000, v104, v105, "ContainerExport ended with %s - %f -> %f (%s)", v107, 0x2Au);
              v154 = v173;
              swift_arrayDestroy();
              MEMORY[0x23838B4F0](v154, -1, -1);
              MEMORY[0x23838B4F0](v107, -1, -1);
            }

            else
            {
            }

            if ([v63 succeeded])
            {
              goto LABEL_89;
            }

            v63 = v63;
            v118 = sub_2329D2DF4();
            v144 = sub_2329D3614();

            if (os_log_type_enabled(v118, v144))
            {
              v145 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              *v145 = 138412290;
              v155 = [v63 error];
              if (v155)
              {
                v155 = _swift_stdlib_bridgeErrorToNSError();
                v156 = v155;
              }

              else
              {
                v156 = 0;
              }

              *(v145 + 4) = v155;
              *v146 = v156;
              v164 = "Export error: %@";
              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v63 = v51;
          v122 = sub_2329D2DF4();
          v123 = sub_2329D35F4();

          if (!os_log_type_enabled(v122, v123))
          {
            goto LABEL_49;
          }

          v124 = swift_slowAlloc();
          *v124 = 134217984;
          v130 = [v63 startDate];
          v131 = v175;
          sub_2329D2D64();

          sub_2329D2D24();
          v133 = v132;
          (*(v177 + 8))(v131, v176);
          *(v124 + 4) = v133;
          v129 = "ContainerExport started on: %f";
        }

        else
        {
          if (v56 != 1)
          {
            if (v56)
            {
              v63 = v51;
              v118 = sub_2329D2DF4();
              v119 = sub_2329D3634();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                *v120 = 134217984;
                *(v120 + 4) = [v63 type];

                _os_log_impl(&dword_2329A4000, v118, v119, "Unknown persistent CloudKit container event type: %ld", v120, 0xCu);
                v121 = v120;
LABEL_88:
                MEMORY[0x23838B4F0](v121, -1, -1);

                goto LABEL_89;
              }

LABEL_89:
              return;
            }

            if (v168)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
              v57 = swift_allocObject();
              v58 = MEMORY[0x277D839F8];
              *(v57 + 16) = xmmword_2329D4530;
              v59 = MEMORY[0x277D83A80];
              *(v57 + 56) = v58;
              *(v57 + 64) = v59;
              *(v57 + 32) = v50;
              v60 = sub_2329D33C4();
              v62 = v61;
              v63 = v51;
              v64 = sub_2329D2DF4();
              v65 = sub_2329D35F4();

              if (os_log_type_enabled(v64, v65))
              {
                LODWORD(v174) = v65;
                v66 = v60;
                v177 = v62;
                v67 = swift_slowAlloc();
                v173 = swift_slowAlloc();
                v180[0] = v173;
                *v67 = 136315906;
                if ([v63 succeeded])
                {
                  v68 = 0x73736563637573;
                }

                else
                {
                  v68 = 0x6572756C696166;
                }

                v69 = sub_2329A8630(v68, 0xE700000000000000, v180);

                *(v67 + 4) = v69;
                *(v67 + 12) = 2048;
                v70 = [v63 startDate];
                v71 = v175;
                sub_2329D2D64();

                sub_2329D2D24();
                v73 = v72;
                v74 = *(v48 + 8);
                v74(v71, v176);
                *(v67 + 14) = v73;
                *(v67 + 22) = 2048;
                v75 = [v63 endDate];
                if (v75)
                {
                  v76 = v75;
                  sub_2329D2D64();

                  v77 = 0;
                }

                else
                {
                  v77 = 1;
                }

                v157 = v176;
                v169(v20, v77, 1, v176);
                sub_2329BFA80(v20, v23, &qword_27DDBDE60, &qword_2329D4918);
                if (v166(v23, 1, v157) == 1)
                {
                  sub_2329BFB8C(v23, &qword_27DDBDE60, &qword_2329D4918);
                  v158 = 0;
                }

                else
                {
                  sub_2329D2D24();
                  v158 = v159;
                  v74(v23, v157);
                }

                *(v67 + 24) = v158;
                *(v67 + 32) = 2080;
                v160 = sub_2329A8630(v66, v177, v180);

                *(v67 + 34) = v160;
                _os_log_impl(&dword_2329A4000, v64, v174, "ContainerSetup ended with %s - %f -> %f (%s)", v67, 0x2Au);
                v161 = v173;
                swift_arrayDestroy();
                MEMORY[0x23838B4F0](v161, -1, -1);
                MEMORY[0x23838B4F0](v67, -1, -1);
              }

              else
              {
              }

              if ([v63 succeeded])
              {
                goto LABEL_89;
              }

              v63 = v63;
              v118 = sub_2329D2DF4();
              v144 = sub_2329D3614();

              if (os_log_type_enabled(v118, v144))
              {
                v145 = swift_slowAlloc();
                v146 = swift_slowAlloc();
                *v145 = 138412290;
                v162 = [v63 error];
                if (v162)
                {
                  v162 = _swift_stdlib_bridgeErrorToNSError();
                  v163 = v162;
                }

                else
                {
                  v163 = 0;
                }

                *(v145 + 4) = v162;
                *v146 = v163;
                v164 = "Setup error: %@";
LABEL_87:
                _os_log_impl(&dword_2329A4000, v118, v144, v164, v145, 0xCu);
                sub_2329BFB8C(v146, &qword_27DDBE070, &unk_2329D4750);
                MEMORY[0x23838B4F0](v146, -1, -1);
                v121 = v145;
                goto LABEL_88;
              }

              goto LABEL_80;
            }

            v63 = v51;
            v122 = sub_2329D2DF4();
            v123 = sub_2329D35F4();

            if (os_log_type_enabled(v122, v123))
            {
              v124 = swift_slowAlloc();
              *v124 = 134217984;
              v134 = [v63 startDate];
              v135 = v175;
              sub_2329D2D64();

              sub_2329D2D24();
              v137 = v136;
              (*(v177 + 8))(v135, v176);
              *(v124 + 4) = v137;
              v129 = "ContainerSetup started on: %f";
              goto LABEL_48;
            }

LABEL_49:

            return;
          }

          if (v168)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
            v78 = swift_allocObject();
            v79 = MEMORY[0x277D839F8];
            *(v78 + 16) = xmmword_2329D4530;
            v80 = MEMORY[0x277D83A80];
            *(v78 + 56) = v79;
            *(v78 + 64) = v80;
            *(v78 + 32) = v50;
            v81 = sub_2329D33C4();
            v83 = v82;
            v63 = v51;
            v84 = sub_2329D2DF4();
            v85 = sub_2329D35F4();

            if (os_log_type_enabled(v84, v85))
            {
              LODWORD(v174) = v85;
              v86 = v81;
              v177 = v83;
              v87 = swift_slowAlloc();
              v170 = swift_slowAlloc();
              v180[0] = v170;
              *v87 = 136315906;
              if ([v63 succeeded])
              {
                v88 = 0x73736563637573;
              }

              else
              {
                v88 = 0x6572756C696166;
              }

              v89 = sub_2329A8630(v88, 0xE700000000000000, v180);

              *(v87 + 4) = v89;
              *(v87 + 12) = 2048;
              v90 = [v63 startDate];
              v91 = v175;
              sub_2329D2D64();

              sub_2329D2D24();
              v93 = v92;
              v94 = *(v48 + 8);
              v94(v91, v176);
              *(v87 + 14) = v93;
              *(v87 + 22) = 2048;
              v95 = [v63 endDate];
              if (v95)
              {
                v96 = v95;
                sub_2329D2D64();

                v97 = 0;
              }

              else
              {
                v97 = 1;
              }

              v138 = v173;
              v139 = v176;
              v169(v15, v97, 1, v176);
              sub_2329BFA80(v15, v138, &qword_27DDBDE60, &qword_2329D4918);
              if (v166(v138, 1, v139) == 1)
              {
                sub_2329BFB8C(v138, &qword_27DDBDE60, &qword_2329D4918);
                v140 = 0;
              }

              else
              {
                sub_2329D2D24();
                v140 = v141;
                v94(v138, v139);
              }

              *(v87 + 24) = v140;
              *(v87 + 32) = 2080;
              v142 = sub_2329A8630(v86, v177, v180);

              *(v87 + 34) = v142;
              _os_log_impl(&dword_2329A4000, v84, v174, "ContainerImport ended with %s - %f -> %f (%s)", v87, 0x2Au);
              v143 = v170;
              swift_arrayDestroy();
              MEMORY[0x23838B4F0](v143, -1, -1);
              MEMORY[0x23838B4F0](v87, -1, -1);
            }

            else
            {
            }

            if ([v63 succeeded])
            {
              goto LABEL_89;
            }

            v63 = v63;
            v118 = sub_2329D2DF4();
            v144 = sub_2329D3614();

            if (os_log_type_enabled(v118, v144))
            {
              v145 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              *v145 = 138412290;
              v147 = [v63 error];
              if (v147)
              {
                v147 = _swift_stdlib_bridgeErrorToNSError();
                v148 = v147;
              }

              else
              {
                v148 = 0;
              }

              *(v145 + 4) = v147;
              *v146 = v148;
              v164 = "Import error: %@";
              goto LABEL_87;
            }

LABEL_80:

            return;
          }

          v63 = v51;
          v122 = sub_2329D2DF4();
          v123 = sub_2329D35F4();

          if (!os_log_type_enabled(v122, v123))
          {
            goto LABEL_49;
          }

          v124 = swift_slowAlloc();
          *v124 = 134217984;
          v125 = [v63 startDate];
          v126 = v175;
          sub_2329D2D64();

          sub_2329D2D24();
          v128 = v127;
          (*(v177 + 8))(v126, v176);
          *(v124 + 4) = v128;
          v129 = "ContainerImport started on: %f";
        }

LABEL_48:
        _os_log_impl(&dword_2329A4000, v122, v123, v129, v124, 0xCu);
        MEMORY[0x23838B4F0](v124, -1, -1);

        goto LABEL_89;
      }
    }

    else
    {

      sub_2329BFA2C(v180);
    }
  }
}

void sub_2329AF41C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277CBE260] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277CBE1F0] object:0];
}

uint64_t sub_2329AF4E4(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_persistentStoresLoaded);
  v4 = sub_2329D2DF4();
  if (v3 == 1)
  {
    v5 = sub_2329D35F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Preparing to save persistent store...", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    if ([a1 hasChanges])
    {
      sub_2329D2D94();
      v7 = sub_2329D3384();

      [a1 setTransactionAuthor_];

      v30[0] = 0;
      v8 = [a1 save_];
      if (v8)
      {
        v9 = v30[0];
        v10 = sub_2329D2DF4();
        v11 = sub_2329D3634();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_2329A4000, v10, v11, "Persistent store save complete", v12, 2u);
          MEMORY[0x23838B4F0](v12, -1, -1);
        }
      }

      else
      {
        v19 = v30[0];
        v20 = sub_2329D2C84();

        swift_willThrow();
        v21 = v20;
        v22 = sub_2329D2DF4();
        v23 = sub_2329D3614();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v30[0] = v25;
          *v24 = 136315138;
          swift_getErrorValue();
          v26 = sub_2329D3914();
          v28 = sub_2329A8630(v26, v27, v30);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_2329A4000, v22, v23, "Error saving to persistent store: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x23838B4F0](v25, -1, -1);
          MEMORY[0x23838B4F0](v24, -1, -1);
        }

        else
        {
        }
      }

      [a1 setTransactionAuthor_];
      result = v8;
    }

    else
    {
      v16 = sub_2329D2DF4();
      v17 = sub_2329D3634();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2329A4000, v16, v17, "No changes found, skipping save", v18, 2u);
        MEMORY[0x23838B4F0](v18, -1, -1);
      }

      result = 1;
    }
  }

  else
  {
    v13 = sub_2329D3614();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2329A4000, v4, v13, "PSC is not loaded yet", v14, 2u);
      MEMORY[0x23838B4F0](v14, -1, -1);
    }

    result = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2329AF8F0()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_2329D3384();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_2329D2D14();
    v7 = v6;

    sub_2329BFB44(0, &qword_2814DA838, 0x277CCAAC8);
    sub_2329BFB44(0, &qword_2814D9E38, 0x277CBE4C0);
    v11 = sub_2329D3644();
    sub_2329BE828(v5, v7);

    v12 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
    *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = v11;
  }

  else
  {
    v8 = sub_2329D2DF4();
    v9 = sub_2329D3634();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "No persisted history token was found", v10, 2u);
      MEMORY[0x23838B4F0](v10, -1, -1);
    }

    v12 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
    *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = 0;
  }
}

void sub_2329AFBF0(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = objc_opt_self();
    v33[0] = 0;
    v4 = a1;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v33];
    v6 = v33[0];
    if (v5)
    {
      v7 = sub_2329D2D14();
      v9 = v8;

      v10 = [objc_opt_self() standardUserDefaults];
      v11 = sub_2329D2D04();
      v12 = sub_2329D3384();
      [v10 setObject:v11 forKey:v12];

      v13 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
      *(v1 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = a1;
      v14 = v4;

      v15 = sub_2329D2DF4();
      v16 = sub_2329D35F4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2329A4000, v15, v16, "Persisted updated history token", v17, 2u);
        MEMORY[0x23838B4F0](v17, -1, -1);
      }

      sub_2329BE828(v7, v9);
    }

    else
    {
      v21 = v6;
      v22 = sub_2329D2C84();

      swift_willThrow();
      v23 = v22;
      v24 = sub_2329D2DF4();
      v25 = sub_2329D3614();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33[0] = v27;
        *v26 = 136315138;
        swift_getErrorValue();
        v28 = sub_2329D3914();
        v30 = sub_2329A8630(v28, v29, v33);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_2329A4000, v24, v25, "Failed to persist history token: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x23838B4F0](v27, -1, -1);
        MEMORY[0x23838B4F0](v26, -1, -1);
      }

      else
      {
      }
    }

    v31 = *MEMORY[0x277D85DE8];
  }

  else
  {
    oslog = sub_2329D2DF4();
    v18 = sub_2329D3614();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2329A4000, oslog, v18, "Cannot store a nil history token", v19, 2u);
      MEMORY[0x23838B4F0](v19, -1, -1);
    }

    v20 = *MEMORY[0x277D85DE8];
  }
}

void sub_2329AFFCC()
{
  v6 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2329D3384();
  [v6 removeObjectForKey_];

  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken) = 0;

  v3 = sub_2329D2DF4();
  v4 = sub_2329D3634();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2329A4000, v3, v4, "Removed history token", v5, 2u);
    MEMORY[0x23838B4F0](v5, -1, -1);
  }
}

void sub_2329B00F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v48 - v6;
  v7 = sub_2329D2C34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  (*(v8 + 16))(v11, a1, v7);
  v51 = v12;
  v13 = sub_2329D2DF4();
  v14 = sub_2329D3604();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    sub_2329BF1B0(&qword_27DDBDDA0, MEMORY[0x277CC8900]);
    v17 = sub_2329D38B4();
    v19 = v18;
    (*(v8 + 8))(v11, v7);
    v20 = sub_2329A8630(v17, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2329A4000, v13, v14, "Persistent store remote change: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23838B4F0](v16, -1, -1);
    MEMORY[0x23838B4F0](v15, -1, -1);
  }

  else
  {

    v21 = (*(v8 + 8))(v11, v7);
  }

  v22 = (*(*v2 + 360))(v21);
  if (v22)
  {
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = MEMORY[0x277D84F90];
    v25 = (v24 + 16);
    v26 = *(v2 + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_currentHistoryToken);
    v49 = v26;
    v27 = sub_2329D2DF4();
    v28 = sub_2329D35F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2329A4000, v27, v28, "Ready to process persistent store remote change transactions", v29, 2u);
      MEMORY[0x23838B4F0](v29, -1, -1);
    }

    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v23;
    v31[4] = v25;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2329BE8C8;
    *(v32 + 24) = v31;
    aBlock[4] = sub_2329BFCF8;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2329B08FC;
    aBlock[3] = &block_descriptor_108;
    v33 = _Block_copy(aBlock);
    v34 = v23;

    [v34 performBlockAndWait:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }

    else if (!(*v25 >> 62))
    {
      if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_10:

        v35 = sub_2329D2DF4();
        v36 = sub_2329D3634();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 134217984;
          swift_beginAccess();
          v38 = *v25;
          if (*v25 >> 62)
          {
            if (v38 < 0)
            {
              v47 = *v25;
            }

            v39 = sub_2329D3864();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v41 = v49;
          v40 = v50;
          *(v37 + 4) = v39;

          _os_log_impl(&dword_2329A4000, v35, v36, "Sending updates for %ld devices", v37, 0xCu);
          MEMORY[0x23838B4F0](v37, -1, -1);
        }

        else
        {

          v41 = v49;
          v40 = v50;
        }

        v44 = sub_2329D3504();
        (*(*(v44 - 8) + 56))(v40, 1, 1, v44);
        v45 = swift_allocObject();
        v45[2] = 0;
        v45[3] = 0;
        v45[4] = v2;
        v45[5] = v24;
        v45[6] = v26;
        v46 = v41;

        sub_2329B0D4C(0, 0, v40, &unk_2329D4870, v45);

        goto LABEL_21;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (sub_2329D3864() >= 1)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v34 = sub_2329D2DF4();
  v42 = sub_2329D3614();
  if (os_log_type_enabled(v34, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2329A4000, v34, v42, "Failed to get current MOC", v43, 2u);
    MEMORY[0x23838B4F0](v43, -1, -1);
  }

LABEL_21:
}

uint64_t sub_2329B080C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2329D3864();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2329D3864();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2329BBA04(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2329BC100(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2329B0924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_2329B0948, 0, 0);
}

uint64_t sub_2329B0948()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_relayController);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v0[8] = v3;
  v4 = *(*v2 + 96);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2329B0A98;

  return v8(v3);
}

uint64_t sub_2329B0A98()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2329B0BD4, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2329B0BD4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v1;
  v5 = sub_2329D2DF4();
  v6 = sub_2329D3614();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2329A4000, v5, v6, "Failed to send remote device updates: %@", v8, 0xCu);
    sub_2329BFB8C(v9, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v9, -1, -1);
    MEMORY[0x23838B4F0](v8, -1, -1);
  }

  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[5];

  sub_2329AFBF0(v13);
  v15 = v0[1];

  return v15();
}

uint64_t sub_2329B0D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2329BF474(a3, v27 - v11, &qword_27DDBDD98, &qword_2329D4860);
  v13 = sub_2329D3504();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2329BFB8C(v12, &qword_27DDBDD98, &qword_2329D4860);
  }

  else
  {
    sub_2329D34F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2329D34D4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2329D33E4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);

      return v25;
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

  sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_2329B104C()
{
  v1 = (*(v0->isa + 45))();
  if (v1)
  {
    v2 = v1;
    v16 = MEMORY[0x277D84F90];
    v3 = swift_allocObject();
    v3[2] = v0;
    v3[3] = &v16;
    v3[4] = v2;
    v4 = swift_allocObject();
    v5 = v4;
    *(v4 + 16) = sub_2329BF8A8;
    *(v4 + 24) = v3;
    aBlock[4] = sub_2329BFCF8;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2329B08FC;
    aBlock[3] = &block_descriptor_145;
    v6 = _Block_copy(aBlock);

    v7 = v2;

    [v7 performBlockAndWait_];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v0 = sub_2329D2DF4();
      v5 = sub_2329D35F4();
      if (!os_log_type_enabled(v0, v5))
      {
LABEL_7:

        swift_beginAccess();
        v10 = v16;

        return v10;
      }

      isEscapingClosureAtFileLocation = swift_slowAlloc();
      *isEscapingClosureAtFileLocation = 134217984;
      swift_beginAccess();
      if (!(v16 >> 62))
      {
        v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        *(isEscapingClosureAtFileLocation + 4) = v9;
        _os_log_impl(&dword_2329A4000, v0, v5, "Fetched %ld device records", isEscapingClosureAtFileLocation, 0xCu);
        MEMORY[0x23838B4F0](isEscapingClosureAtFileLocation, -1, -1);
        goto LABEL_7;
      }
    }

    v9 = sub_2329D3864();
    goto LABEL_6;
  }

  v11 = sub_2329D2DF4();
  v12 = sub_2329D3614();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void sub_2329B1354(uint64_t a1, void *a2, void *a3)
{
  v270 = a3;
  v264 = a2;
  v308 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE60, &qword_2329D4918);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v279 = &v253 - v6;
  v284 = sub_2329D2D84();
  v285 = *(v284 - 8);
  v7 = *(v285 + 8);
  v8 = MEMORY[0x28223BE20](v284);
  v263 = &v253 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v273 = &v253 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v256 = &v253 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v262 = &v253 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v253 - v18;
  MEMORY[0x28223BE20](v17);
  v295 = &v253 - v20;
  v300 = sub_2329D2DD4();
  v276 = *(v300 - 8);
  v21 = *(v276 + 64);
  v22 = MEMORY[0x28223BE20](v300);
  v253 = &v253 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v255 = &v253 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v261 = &v253 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v292 = &v253 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v297 = &v253 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v253 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v294 = &v253 - v36;
  MEMORY[0x28223BE20](v35);
  *&v293 = &v253 - v37;
  type metadata accessor for NDFNetworkDevice();
  v38 = [swift_getObjCClassFromMetadata() entityName];
  if (!v38)
  {
    sub_2329D33B4();
    v38 = sub_2329D3384();
  }

  v39 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v39 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v40 = swift_allocObject();
  v272 = xmmword_2329D4530;
  *(v40 + 16) = xmmword_2329D4530;
  v41 = sub_2329C002C();
  v43 = *v41;
  v42 = v41[1];
  v44 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 32) = v43;
  *(v40 + 40) = v42;

  v45 = sub_2329D3474();

  [v39 setPropertiesToGroupBy_];

  v46 = swift_allocObject();
  *(v46 + 16) = v272;
  v48 = *v41;
  v47 = v41[1];
  v299 = v41;
  *(v46 + 56) = v44;
  *(v46 + 32) = v48;
  *(v46 + 40) = v47;

  v49 = sub_2329D3474();

  [v39 setPropertiesToFetch_];

  *&v306 = 0;
  v254 = v39;
  v50 = [v39 execute_];
  v51 = v306;
  v52 = &unk_2814DA000;
  if (v50)
  {
    v53 = v50;
    v287 = v19;
    v269 = sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
    v54 = sub_2329D3484();
    v55 = v51;

    v57 = v54;
    v281 = a1;
    if (v54 >> 62)
    {
      goto LABEL_151;
    }

    for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v252)
    {
      v59 = v295;
      v283 = v34;
      if (i)
      {
        if (i < 1)
        {
          __break(1u);
        }

        v60 = 0;
        v298 = v57 & 0xC000000000000001;
        v296 = v52[381];
        v61 = (v276 + 56);
        v62 = (v276 + 48);
        v291 = (v276 + 32);
        v289 = (v276 + 16);
        v288 = (v276 + 8);
        v286 = MEMORY[0x277D84F90];
        *&v56 = 138412290;
        v290 = v56;
        v301 = v57;
        while (1)
        {
          if (v298)
          {
            v63 = MEMORY[0x23838AD30](v60);
          }

          else
          {
            v63 = *(v57 + 8 * v60 + 32);
          }

          v64 = v63;
          v65 = sub_2329D2DF4();
          v66 = sub_2329D35F4();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v67 = v290;
            *(v67 + 4) = v64;
            *v68 = v64;
            v69 = v64;
            _os_log_impl(&dword_2329A4000, v65, v66, "Result dict %@", v67, 0xCu);
            sub_2329BFB8C(v68, &qword_27DDBE070, &unk_2329D4750);
            v70 = v68;
            v59 = v295;
            MEMORY[0x23838B4F0](v70, -1, -1);
            v34 = v283;
            MEMORY[0x23838B4F0](v67, -1, -1);
          }

          v71 = v299[1];
          *&v304 = *v299;
          *(&v304 + 1) = v71;

          v72 = [v64 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v72)
          {
            sub_2329D3734();
            swift_unknownObjectRelease();
          }

          else
          {
            v304 = 0u;
            v305 = 0u;
          }

          v306 = v304;
          v307 = v305;
          if (*(&v305 + 1))
          {
            v73 = v34;
            v74 = v300;
            v75 = swift_dynamicCast();
            (*v61)(v59, v75 ^ 1u, 1, v74);
            if ((*v62)(v59, 1, v74) != 1)
            {
              v76 = *v291;
              v77 = v293;
              (*v291)(v293, v59, v74);
              (*v289)(v294, v77, v74);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v286 = sub_2329BAF0C(0, v286[2] + 1, 1, v286);
              }

              v79 = v286[2];
              v78 = v286[3];
              if (v79 >= v78 >> 1)
              {
                v286 = sub_2329BAF0C(v78 > 1, v79 + 1, 1, v286);
              }

              v80 = v276;
              v81 = v300;
              (*(v276 + 8))(v293, v300);
              v82 = v286;
              v286[2] = v79 + 1;
              v76(v82 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v79, v294, v81);
              v34 = v73;
              v59 = v295;
              goto LABEL_11;
            }

            v34 = v73;
          }

          else
          {

            sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
            (*v61)(v59, 1, 1, v300);
          }

          sub_2329BFB8C(v59, &qword_27DDBDD90, &qword_2329D4858);
LABEL_11:
          v57 = v301;
          if (i == ++v60)
          {
            goto LABEL_31;
          }
        }
      }

      v286 = MEMORY[0x277D84F90];
LABEL_31:

      v92 = v281;
      v301 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
      v93 = sub_2329D2DF4();
      v94 = sub_2329D3634();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v306 = v96;
        *v95 = 134218242;
        v97 = v286;
        *(v95 + 4) = v286[2];
        *(v95 + 12) = 2080;

        v99 = MEMORY[0x23838A9E0](v98, v300);
        v101 = v100;

        v102 = sub_2329A8630(v99, v101, &v306);
        v34 = v283;

        *(v95 + 14) = v102;
        _os_log_impl(&dword_2329A4000, v93, v94, "Found %ld unique device identifiers: %s", v95, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x23838B4F0](v96, -1, -1);
        MEMORY[0x23838B4F0](v95, -1, -1);

        v103 = v287;
        v104 = v297;
      }

      else
      {

        v103 = v287;
        v104 = v297;
        v97 = v286;
      }

      v105 = *v264;
      *v264 = MEMORY[0x277D84F90];

      v268 = v97[2];
      if (!v268)
      {
        goto LABEL_144;
      }

      v267 = sub_2329BFB44(0, &qword_2814D9E78, 0x277CCAC30);
      v266 = v97 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
      v275 = v276 + 16;
      *&v290 = v276 + 8;
      v296 = (v276 + 56);
      v291 = (v276 + 48);
      v288 = (v276 + 32);
      v277 = (v285 + 56);
      v271 = (v285 + 48);
      v260 = (v285 + 32);
      v259 = (v285 + 16);
      v258 = (v285 + 8);
      v286 = v97;

      v106 = 0;
      v280 = 0;
      *&v107 = 136315138;
      v257 = v107;
      *(&v107 + 1) = 3;
      v265 = xmmword_2329D46C0;
      *&v107 = 138412290;
      v293 = v107;
      v52 = v300;
      while (1)
      {
        if (v106 >= v286[2])
        {
          __break(1u);
          goto LABEL_150;
        }

        v108 = *(v276 + 72);
        v298 = v106;
        v109 = *(v276 + 16);
        v109(v34, &v266[v108 * v106], v52);
        v274 = v109;
        v109(v104, v34, v52);
        v110 = sub_2329D2DF4();
        v111 = sub_2329D3604();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = v52;
          v113 = v104;
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *&v306 = v115;
          *v114 = v257;
          sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
          v116 = sub_2329D38B4();
          v118 = v117;
          v289 = *v290;
          v289(v113, v112);
          v119 = sub_2329A8630(v116, v118, &v306);
          v34 = v283;

          *(v114 + 4) = v119;
          _os_log_impl(&dword_2329A4000, v110, v111, "Fetching %s...", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v115);
          MEMORY[0x23838B4F0](v115, -1, -1);
          MEMORY[0x23838B4F0](v114, -1, -1);
        }

        else
        {

          v289 = *v290;
          v289(v104, v52);
        }

        v120 = sub_2329BFFD4();
        v121 = *v120;
        v122 = *(v120 + 1);
        v123 = objc_allocWithZone(MEMORY[0x277CBE428]);

        v124 = sub_2329D3384();

        v125 = [v123 initWithEntityName_];

        [v125 setResultType_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
        v126 = swift_allocObject();
        *(v126 + 16) = v265;
        v127 = sub_2329C01E0();
        v128 = *v127;
        v129 = *(v127 + 1);
        v285 = v127;
        v130 = objc_allocWithZone(MEMORY[0x277CCAC98]);

        v131 = sub_2329D3384();

        v132 = [v130 initWithKey:v131 ascending:0];

        *(v126 + 32) = v132;
        sub_2329BFB44(0, &qword_2814D9E68, 0x277CCAC98);
        v133 = sub_2329D3474();

        [v125 setSortDescriptors_];

        [v125 setFetchLimit_];
        v134 = v299[1];
        *&v306 = *v299;
        *(&v306 + 1) = v134;

        MEMORY[0x23838A970](0x4025203D3D20, 0xE600000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
        v135 = swift_allocObject();
        *(v135 + 16) = v272;
        v136 = sub_2329D2D94();
        v138 = v137;
        *(v135 + 56) = MEMORY[0x277D837D0];
        *(v135 + 64) = sub_2329BF8B4();
        *(v135 + 32) = v136;
        *(v135 + 40) = v138;
        v139 = sub_2329D35E4();

        [v125 setPredicate_];

        v278 = v125;
        v140 = v280;
        v141 = sub_2329D36E4();
        v280 = v140;
        if (v140)
        {

          v229 = v253;
          v230 = v34;
          v231 = v34;
          v232 = v300;
          v274(v253, v230, v300);
          v233 = v280;
          v234 = v280;
          v235 = sub_2329D2DF4();
          v236 = sub_2329D3614();

          if (os_log_type_enabled(v235, v236))
          {
            v237 = v229;
            v238 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            *&v306 = v240;
            *v238 = 136315394;
            sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
            v241 = sub_2329D38B4();
            v243 = v242;
            v244 = v237;
            v245 = v289;
            v289(v244, v232);
            v246 = sub_2329A8630(v241, v243, &v306);

            *(v238 + 4) = v246;
            *(v238 + 12) = 2112;
            v247 = v233;
            v248 = _swift_stdlib_bridgeErrorToNSError();
            *(v238 + 14) = v248;
            *v239 = v248;
            _os_log_impl(&dword_2329A4000, v235, v236, "Failed to fetch network device with identifier %s: %@", v238, 0x16u);
            sub_2329BFB8C(v239, &qword_27DDBE070, &unk_2329D4750);
            MEMORY[0x23838B4F0](v239, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v240);
            MEMORY[0x23838B4F0](v240, -1, -1);
            MEMORY[0x23838B4F0](v238, -1, -1);

            v245(v283, v232);

            goto LABEL_147;
          }

          v250 = v289;
          v289(v229, v232);
          v250(v231, v232);
LABEL_145:

          goto LABEL_147;
        }

        v57 = v141;
        if (v141 >> 62)
        {
          v227 = v141;
          v228 = sub_2329D3864();
          v57 = v227;
          v34 = v228;
        }

        else
        {
          v34 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v104 = v297;
        v142 = v298;
        v52 = v300;
        if (v34)
        {
          break;
        }

LABEL_36:
        v106 = v142 + 1;

        v34 = v283;
        v289(v283, v52);
        if (v106 == v268)
        {

LABEL_144:
          [v270 reset];

          goto LABEL_145;
        }
      }

      if (v34 >= 1)
      {
        v143 = 0;
        v294 = (v57 & 0xC000000000000001);
        v295 = v57;
        while (1)
        {
          if (v294)
          {
            v148 = MEMORY[0x23838AD30](v143);
          }

          else
          {
            v148 = *(v57 + 8 * v143 + 32);
          }

          v149 = v148;
          v150 = sub_2329D2DF4();
          v151 = sub_2329D3604();

          if (os_log_type_enabled(v150, v151))
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            *v152 = v293;
            *(v152 + 4) = v149;
            *v153 = v149;
            v154 = v149;
            _os_log_impl(&dword_2329A4000, v150, v151, "fetched entity: %@", v152, 0xCu);
            sub_2329BFB8C(v153, &qword_27DDBE070, &unk_2329D4750);
            MEMORY[0x23838B4F0](v153, -1, -1);
            v155 = v152;
            v52 = v300;
            MEMORY[0x23838B4F0](v155, -1, -1);
          }

          v156 = v299[1];
          *&v304 = *v299;
          *(&v304 + 1) = v156;

          v157 = [v149 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v157)
          {
            sub_2329D3734();
            swift_unknownObjectRelease();
          }

          else
          {
            v304 = 0u;
            v305 = 0u;
          }

          v306 = v304;
          v307 = v305;
          if (!*(&v305 + 1))
          {
            sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
            (*v296)(v103, 1, 1, v52);
LABEL_62:
            sub_2329BFB8C(v103, &qword_27DDBDD90, &qword_2329D4858);
            goto LABEL_78;
          }

          v158 = swift_dynamicCast();
          v159 = *v296;
          (*v296)(v103, v158 ^ 1u, 1, v52);
          v160 = *v291;
          if ((*v291)(v103, 1, v52) == 1)
          {
            goto LABEL_62;
          }

          v161 = v103;
          v162 = v92;
          v163 = *v288;
          (*v288)(v292, v161, v52);
          v164 = sub_2329C0080();
          v166 = *v164;
          v165 = *(v164 + 1);
          *&v304 = v166;
          *(&v304 + 1) = v165;

          v167 = [v149 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v167)
          {
            sub_2329D3734();
            swift_unknownObjectRelease();
          }

          else
          {
            v304 = 0u;
            v305 = 0u;
          }

          v306 = v304;
          v307 = v305;
          if (!*(&v305 + 1))
          {
            break;
          }

          if (swift_dynamicCast())
          {
            LODWORD(v282) = v302;
            v168 = *(v285 + 1);
            *&v304 = *v285;
            *(&v304 + 1) = v168;

            v169 = [v149 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v169)
            {
              sub_2329D3734();
              swift_unknownObjectRelease();
            }

            else
            {
              v304 = 0u;
              v305 = 0u;
            }

            v173 = v279;
            v174 = v284;
            v306 = v304;
            v307 = v305;
            if (*(&v305 + 1))
            {
              v175 = swift_dynamicCast();
              (*v277)(v173, v175 ^ 1u, 1, v174);
              if ((*v271)(v173, 1, v174) != 1)
              {
                v180 = v273;
                (*v260)(v273, v173, v174);
                (*v259)(v263, v180, v174);
                v52 = v300;
                v274(v261, v292, v300);
                v181 = objc_allocWithZone(sub_2329D2FA4());
                v282 = sub_2329D2F94();
                v182 = sub_2329C0054();
                v184 = *v182;
                v183 = *(v182 + 1);
                *&v304 = v184;
                *(&v304 + 1) = v183;

                v185 = [v149 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v185)
                {
                  sub_2329D3734();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v304 = 0u;
                  v305 = 0u;
                }

                v306 = v304;
                v307 = v305;
                if (*(&v305 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    sub_2329D2E74();
                  }
                }

                else
                {
                  sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                }

                v186 = sub_2329C00A8();
                v188 = *v186;
                v187 = v186[1];
                *&v304 = v188;
                *(&v304 + 1) = v187;

                v189 = [v149 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v189)
                {
                  sub_2329D3734();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v304 = 0u;
                  v305 = 0u;
                }

                v190 = v262;
                v306 = v304;
                v307 = v305;
                if (*(&v305 + 1))
                {
                  v191 = swift_dynamicCast();
                  v159(v190, v191 ^ 1u, 1, v52);
                  v192 = v160(v190, 1, v52);
                  v104 = v297;
                  if (v192 != 1)
                  {
                    v193 = v255;
                    v163(v255, v190, v52);
                    v194 = v256;
                    v274(v256, v193, v52);
                    v159(v194, 0, 1, v52);
                    sub_2329D2EC4();
                    v289(v193, v52);
                    v92 = v162;
LABEL_95:
                    v195 = sub_2329C0120();
                    v197 = *v195;
                    v196 = *(v195 + 1);
                    *&v304 = v197;
                    *(&v304 + 1) = v196;

                    v198 = [v149 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    v103 = v287;
                    if (v198)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v304 = 0u;
                      v305 = 0u;
                    }

                    v306 = v304;
                    v307 = v305;
                    if (*(&v305 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        sub_2329D2EA4();
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v199 = sub_2329C0150();
                    v201 = *v199;
                    v200 = v199[1];
                    *&v304 = v201;
                    *(&v304 + 1) = v200;

                    v202 = [v149 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v202)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v304 = 0u;
                      v305 = 0u;
                    }

                    v306 = v304;
                    v307 = v305;
                    if (*(&v305 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v203 = v302;
                        v204 = v303;
                        sub_2329BF908(v302, v303);
                        sub_2329D2F54();
                        v205 = v204;
                        v52 = v300;
                        sub_2329BE828(v203, v205);
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v206 = sub_2329C0180();
                    v208 = *v206;
                    v207 = v206[1];
                    *&v304 = v208;
                    *(&v304 + 1) = v207;

                    v209 = [v149 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v209)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v304 = 0u;
                      v305 = 0u;
                    }

                    v306 = v304;
                    v307 = v305;
                    if (*(&v305 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v210 = v302;
                        v211 = v303;
                        sub_2329BF908(v302, v303);
                        sub_2329D2F74();
                        v212 = v211;
                        v52 = v300;
                        sub_2329BE828(v210, v212);
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v213 = sub_2329C0004();
                    v215 = *v213;
                    v214 = v213[1];
                    *&v304 = v215;
                    *(&v304 + 1) = v214;

                    v216 = [v149 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v216)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v304 = 0u;
                      v305 = 0u;
                    }

                    v306 = v304;
                    v307 = v305;
                    if (*(&v305 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        sub_2329D2F04();
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v217 = sub_2329C00D0();
                    v219 = *v217;
                    v218 = *(v217 + 1);
                    *&v304 = v219;
                    *(&v304 + 1) = v218;

                    v220 = [v149 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v220)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v304 = 0u;
                      v305 = 0u;
                    }

                    v306 = v304;
                    v307 = v305;
                    if (*(&v305 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        sub_2329D2F34();
                      }
                    }

                    else
                    {
                      sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v221 = sub_2329C00F8();
                    v223 = *v221;
                    v222 = v221[1];
                    *&v304 = v223;
                    *(&v304 + 1) = v222;

                    v224 = [v149 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v224)
                    {
                      sub_2329D3734();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v304 = 0u;
                      v305 = 0u;
                    }

                    v306 = v304;
                    v307 = v305;
                    if (*(&v305 + 1))
                    {
                      v225 = swift_dynamicCast();
                      if (v225)
                      {
                        v225 = sub_2329D2EE4();
                      }
                    }

                    else
                    {
                      v225 = sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                    }

                    v226 = v264;
                    MEMORY[0x23838A9B0](v225);
                    if (*((*v226 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v226 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_2329D34A4();
                    }

                    sub_2329D34B4();

                    (*v258)(v273, v284);
                    v289(v292, v52);
                    goto LABEL_48;
                  }
                }

                else
                {
                  sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
                  v159(v190, 1, 1, v52);
                  v104 = v297;
                }

                sub_2329BFB8C(v190, &qword_27DDBDD90, &qword_2329D4858);
                v92 = v162;
                goto LABEL_95;
              }

              v52 = v300;
              v289(v292, v300);
            }

            else
            {
              v176 = v284;
              v52 = v300;
              (v289)(v292);
              sub_2329BFB8C(&v306, &unk_27DDBE0F0, &qword_2329D4890);
              (*v277)(v173, 1, 1, v176);
            }

            v170 = v173;
            v171 = &qword_27DDBDE60;
            v172 = &qword_2329D4918;
            goto LABEL_76;
          }

          v289(v292, v52);
LABEL_77:
          v92 = v162;
          v103 = v287;
LABEL_78:
          v104 = v297;
          v177 = v149;
          v178 = sub_2329D2DF4();
          v179 = sub_2329D3614();

          if (os_log_type_enabled(v178, v179))
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            *v144 = v293;
            *(v144 + 4) = v177;
            *v145 = v177;
            v146 = v177;
            _os_log_impl(&dword_2329A4000, v178, v179, "Unable to extract timestamp or device ID or device role from record %@", v144, 0xCu);
            sub_2329BFB8C(v145, &qword_27DDBE070, &unk_2329D4750);
            MEMORY[0x23838B4F0](v145, -1, -1);
            v147 = v144;
            v52 = v300;
            MEMORY[0x23838B4F0](v147, -1, -1);
          }

          else
          {
          }

LABEL_48:
          ++v143;
          v142 = v298;
          v57 = v295;
          if (v34 == v143)
          {
            goto LABEL_36;
          }
        }

        v289(v292, v52);
        v170 = &v306;
        v171 = &unk_27DDBE0F0;
        v172 = &qword_2329D4890;
LABEL_76:
        sub_2329BFB8C(v170, v171, v172);
        goto LABEL_77;
      }

LABEL_150:
      __break(1u);
LABEL_151:
      v251 = v57;
      v252 = sub_2329D3864();
      v57 = v251;
    }
  }

  v83 = v306;
  v84 = sub_2329D2C84();

  swift_willThrow();
  v85 = v84;
  v86 = sub_2329D2DF4();
  v87 = sub_2329D3614();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v88 = 138412290;
    v90 = v84;
    v91 = _swift_stdlib_bridgeErrorToNSError();
    *(v88 + 4) = v91;
    *v89 = v91;
    _os_log_impl(&dword_2329A4000, v86, v87, "Failed to fetch list of unique device identifiers: %@", v88, 0xCu);
    sub_2329BFB8C(v89, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v89, -1, -1);
    MEMORY[0x23838B4F0](v88, -1, -1);
  }

  else
  {
  }

LABEL_147:
  v249 = *MEMORY[0x277D85DE8];
}

id sub_2329B38C8(void *a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_2329D3044();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v74 - v8;
  v9 = sub_2329D2D84();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2329D2DD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v19 = a1;
  v20 = sub_2329D2DF4();
  v21 = sub_2329D3634();

  v22 = os_log_type_enabled(v20, v21);
  v84 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v76 = v18;
    v25 = v24;
    v75 = swift_slowAlloc();
    v85 = v75;
    *v23 = 136315394;
    sub_2329D2F14();
    sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
    v26 = sub_2329D38B4();
    v74 = v13;
    v28 = v27;
    (*(v84 + 8))(v17, v13);
    v29 = sub_2329A8630(v26, v28, &v85);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v19;
    *v25 = v19;
    v30 = v19;
    _os_log_impl(&dword_2329A4000, v20, v21, "Creating record for device identifier %s: %@", v23, 0x16u);
    sub_2329BFB8C(v25, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v25, -1, -1);
    v31 = v75;
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x23838B4F0](v31, -1, -1);
    v32 = v23;
    v14 = v84;
    MEMORY[0x23838B4F0](v32, -1, -1);

    v33 = v74;
  }

  else
  {

    v33 = v13;
  }

  type metadata accessor for NDFNetworkDevice();
  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v35 = [v34 initWithContext_];
  [v35 setRecordVersion_];
  sub_2329D2F84();
  v36 = sub_2329D2D44();
  (*(v80 + 8))(v12, v81);
  [v35 setTimestamp_];

  sub_2329D2F14();
  v37 = sub_2329D2DA4();
  v38 = *(v14 + 8);
  v38(v17, v33);
  [v35 setDeviceIdentifier_];

  [v35 setDeviceRole_];
  v39 = sub_2329D2F44();
  v41 = 0;
  v42 = v33;
  if (v40 >> 60 != 15)
  {
    v43 = v39;
    v44 = v40;
    v41 = sub_2329D2D04();
    sub_2329BE814(v43, v44);
  }

  [v35 setNwSignatureIPv4_];

  v45 = sub_2329D2F64();
  if (v46 >> 60 == 15)
  {
    v47 = 0;
  }

  else
  {
    v48 = v45;
    v49 = v46;
    v47 = sub_2329D2D04();
    sub_2329BE814(v48, v49);
  }

  v50 = v83;
  [v35 setNwSignatureIPv6_];

  sub_2329D2E94();
  if (v51)
  {
    v52 = sub_2329D3384();
  }

  else
  {
    v52 = 0;
  }

  [v35 setNwObscuredSSID_];

  sub_2329D2EB4();
  if ((*(v84 + 48))(v50, 1, v42) == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_2329D2DA4();
    v38(v50, v42);
  }

  [v35 setHomeKitGroupIdentifier_];

  v54 = sub_2329D2EF4();
  if ((v54 & 0x10000) != 0)
  {
    v55 = v77;
    v56 = v78;
    v57 = v79;
    (*(v78 + 104))(v77, *MEMORY[0x277D6B330], v79);
    v58 = sub_2329D2E24();
    (*(v56 + 8))(v55, v57);
    LOWORD(v54) = v58;
  }

  [v35 setDesignatedDeviceReachability_];
  v59 = sub_2329D2F24();
  if ((v59 & 0x10000) != 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59;
  }

  [v35 setNwNATCount_];
  v61 = sub_2329D2ED4();
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v61;
  }

  [v35 setNwNetworkProperties_];
  sub_2329D2E64();
  if (v64)
  {
    v65 = sub_2329D3384();

    [v35 setDeviceModel_];
  }

  else
  {
    v66 = sub_2329D2DF4();
    v67 = sub_2329D3614();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2329A4000, v66, v67, "No device model found in payload, falling back to local lookup", v68, 2u);
      MEMORY[0x23838B4F0](v68, -1, -1);
    }

    v69 = MobileGestalt_get_current_device();
    if (v69)
    {
      v70 = v69;
      v65 = MobileGestalt_copy_productType_obj();
      [v35 setDeviceModel_];
    }

    else
    {
      v65 = sub_2329D2DF4();
      v71 = sub_2329D3614();
      if (os_log_type_enabled(v65, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_2329A4000, v65, v71, "Unable to access MobileGestalt, cannot populate device model", v72, 2u);
        MEMORY[0x23838B4F0](v72, -1, -1);
      }
    }
  }

  return v35;
}

uint64_t sub_2329B40E0(void *a1)
{
  v3 = (*(*v1 + 360))();
  if (!v3)
  {
    v12 = sub_2329D2DF4();
    v13 = sub_2329D3614();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2329A4000, v12, v13, "Failed to get current MOC", v14, 2u);
      MEMORY[0x23838B4F0](v14, -1, -1);
    }

    return 0;
  }

  v4 = v3;
  v16 = 0;
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v4;
  v5[5] = &v16;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2329BC9EC;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2329BC9F8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_9;
  v7 = _Block_copy(aBlock);

  v8 = a1;
  v9 = v4;

  [v9 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v11 = v16;

    return v11;
  }

  __break(1u);
  return result;
}

void sub_2329B4318(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v38 = a4;
  v7 = sub_2329D2DD4();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2;
  v12 = sub_2329D2DF4();
  v13 = sub_2329D3634();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = a3;
    v15 = v14;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v15 = 136315394;
    sub_2329D2F14();
    sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
    v16 = sub_2329D38B4();
    v18 = v17;
    (*(v37 + 8))(v10, v7);
    v19 = sub_2329A8630(v16, v18, &v39);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    v20 = v34;
    *v34 = v11;
    v21 = v11;
    _os_log_impl(&dword_2329A4000, v12, v13, "Creating record for device identifier %s: %@", v15, 0x16u);
    sub_2329BFB8C(v20, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v20, -1, -1);
    v22 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23838B4F0](v22, -1, -1);
    v23 = v15;
    a3 = v36;
    MEMORY[0x23838B4F0](v23, -1, -1);
  }

  v24 = sub_2329B38C8(v11, a3);
  v25 = sub_2329D2DF4();
  v26 = sub_2329D35F4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_2329A4000, v25, v26, "Saving new record... %@", v27, 0xCu);
    sub_2329BFB8C(v28, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v28, -1, -1);
    MEMORY[0x23838B4F0](v27, -1, -1);
  }

  v30 = (*(*a1 + 416))(a3);
  *v38 = v30 & 1;
  if ((v30 & 1) == 0)
  {
    v31 = sub_2329D2DF4();
    v32 = sub_2329D3614();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2329A4000, v31, v32, "Failed to save record", v33, 2u);
      MEMORY[0x23838B4F0](v33, -1, -1);
    }
  }

  [a3 reset];
}

uint64_t sub_2329B4740(uint64_t a1)
{
  v3 = (*(*v1 + 360))();
  if (!v3)
  {
    v11 = sub_2329D2DF4();
    v12 = sub_2329D3614();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
      MEMORY[0x23838B4F0](v13, -1, -1);
    }

    return 0;
  }

  v4 = v3;
  v15 = 0;
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v4;
  v5[5] = &v15;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2329BCA20;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_19;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  [v8 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    v10 = v15;

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B497C()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = (*(*v0 + 336))();
  if (!v1)
  {
    v8 = sub_2329D2DF4();
    v9 = sub_2329D3614();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "Failed to get persistent container", v10, 2u);
      MEMORY[0x23838B4F0](v10, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = v1;
  v21[0] = 0;
  if (![v1 initializeCloudKitSchemaWithOptions:4 error:v21])
  {
    v11 = v21[0];
    v12 = sub_2329D2C84();

    swift_willThrow();
    v13 = v12;
    v14 = sub_2329D2DF4();
    v15 = sub_2329D3614();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_2329A4000, v14, v15, "Error initializing CloudKit schema: %@", v16, 0xCu);
      sub_2329BFB8C(v17, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v17, -1, -1);
      MEMORY[0x23838B4F0](v16, -1, -1);
    }

    else
    {
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v3 = v21[0];
  v4 = sub_2329D2DF4();
  v5 = sub_2329D3634();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2329A4000, v4, v5, "Finished initializing CloudKit schema", v6, 2u);
    MEMORY[0x23838B4F0](v6, -1, -1);
  }

  result = 1;
LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2329B4C58()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v10 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v10, v11, "Failed to get current MOC", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v14 = 0;
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v0;
  v3[4] = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2329BCE90;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_29;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v14;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_2329B4E80(void *a1, uint64_t a2, _BYTE *a3)
{
  v33 = a3;
  v5 = sub_2329D2E34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2329D2D84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDFNetworkDevice();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v15 setRecordVersion_];
  sub_2329D2D74();
  v16 = sub_2329D2D44();
  (*(v11 + 8))(v14, v10);
  [v15 setTimestamp_];

  (*(v6 + 104))(v9, *MEMORY[0x277D6B2D0], v5);
  LOWORD(v14) = sub_2329D2E24();
  (*(v6 + 8))(v9, v5);
  [v15 setDeviceRole_];
  v17 = MobileGestalt_get_current_device();
  if (v17)
  {
    v18 = v17;
    v19 = MobileGestalt_copy_productType_obj();
    [v15 setDeviceModel_];
  }

  else
  {
    v19 = sub_2329D2DF4();
    v20 = sub_2329D3634();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2329A4000, v19, v20, "Unable to access MobileGestalt", v21, 2u);
      MEMORY[0x23838B4F0](v21, -1, -1);
    }
  }

  v22 = v15;
  v23 = sub_2329D2DF4();
  v24 = sub_2329D35F4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_2329A4000, v23, v24, "Saving new record... %@", v25, 0xCu);
    sub_2329BFB8C(v26, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v26, -1, -1);
    MEMORY[0x23838B4F0](v25, -1, -1);
  }

  v28 = (*(*a2 + 416))(a1);
  *v33 = v28 & 1;
  if ((v28 & 1) == 0)
  {
    v29 = sub_2329D2DF4();
    v30 = sub_2329D3614();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2329A4000, v29, v30, "Failed to save record", v31, 2u);
      MEMORY[0x23838B4F0](v31, -1, -1);
    }
  }

  [a1 reset];
}

uint64_t sub_2329B52E8()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v10 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v10, v11, "Failed to get current MOC", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v14 = 0;
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v0;
  v3[4] = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2329BCEDC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_39;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v14;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B5510()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v11 = sub_2329D2DF4();
    v12 = sub_2329D3614();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
      MEMORY[0x23838B4F0](v13, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2329BD500;
  *(v5 + 24) = v4;
  v14[4] = sub_2329BFCF8;
  v14[5] = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2329B08FC;
  v14[3] = &block_descriptor_52;
  v6 = _Block_copy(v14);

  v7 = v2;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v3 + 16);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B577C()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v11 = sub_2329D2DF4();
    v12 = sub_2329D3614();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2329A4000, v11, v12, "Failed to get current MOC", v13, 2u);
      MEMORY[0x23838B4F0](v13, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2329BD8A4;
  *(v5 + 24) = v4;
  v14[4] = sub_2329BFCF8;
  v14[5] = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2329B08FC;
  v14[3] = &block_descriptor_63;
  v6 = _Block_copy(v14);
  v7 = v2;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v3 + 16);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329B59E8()
{
  v0 = sub_2329B104C();

  v1 = sub_2329D2DF4();
  v2 = sub_2329D3634();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (v0 >> 62)
    {
      v4 = sub_2329D3864();
    }

    else
    {
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v3 + 4) = v4;

    _os_log_impl(&dword_2329A4000, v1, v2, "fetchLatestNetworkDeviceEntries fetched %ld results", v3, 0xCu);
    MEMORY[0x23838B4F0](v3, -1, -1);
  }

  else
  {
  }

  v5 = sub_2329D2DF4();
  v6 = sub_2329D3604();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = sub_2329D2FA4();
    v10 = MEMORY[0x23838A9E0](v0, v9);
    v12 = v11;

    v13 = sub_2329A8630(v10, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_2329A4000, v5, v6, "results: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23838B4F0](v8, -1, -1);
    MEMORY[0x23838B4F0](v7, -1, -1);
  }

  else
  {
  }

  return 1;
}

BOOL sub_2329B5C10()
{
  v1 = v0;
  v2 = sub_2329D2DF4();
  v3 = sub_2329D3634();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2329A4000, v2, v3, "Preparing to clean up stale NetworkDevice records", v4, 2u);
    MEMORY[0x23838B4F0](v4, -1, -1);
  }

  v5 = (*(*v1 + 360))();
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2329BE6B0;
    *(v7 + 24) = v6;
    v14[4] = sub_2329BFCF8;
    v14[5] = v7;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2329B08FC;
    v14[3] = &block_descriptor_73;
    v8 = _Block_copy(v14);

    v9 = v5;

    [v9 performBlockAndWait_];

    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return v5 != 0;
    }

    __break(1u);
  }

  v10 = sub_2329D2DF4();
  v11 = sub_2329D3614();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2329A4000, v10, v11, "Failed to get current MOC", v12, 2u);
    MEMORY[0x23838B4F0](v12, -1, -1);
  }

  return v5 != 0;
}

uint64_t sub_2329B5E9C()
{
  v1 = v0;
  v2 = sub_2329D2DD4();
  v94 = *(v2 - 8);
  *&v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x28223BE20](v2);
  v93 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD58, &qword_2329D4760);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v81 - v10;
  v12 = sub_2329D2DF4();
  v13 = sub_2329D3634();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2329A4000, v12, v13, "=== Submitting NDF DB Telemetry ===", v14, 2u);
    MEMORY[0x23838B4F0](v14, -1, -1);
  }

  v15 = sub_2329BA0D4();
  if (*(v15 + 16) && (v16 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL), (v17 & 1) != 0) && (sub_2329A8C48(*(v15 + 56) + 32 * v16, &aBlock), swift_dynamicCast()))
  {
    v18 = v96;
    if (!*(v15 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    if (!*(v15 + 16))
    {
      goto LABEL_13;
    }
  }

  v19 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63);
  if ((v20 & 1) == 0 || (sub_2329A8C48(*(v15 + 56) + 32 * v19, &aBlock), !swift_dynamicCast()))
  {
LABEL_13:
    v21 = 0;
    if (*(v15 + 16))
    {
      goto LABEL_14;
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v21 = v96;
  if (!*(v15 + 16))
  {
    goto LABEL_17;
  }

LABEL_14:
  v22 = sub_2329BB4B0(0x6F72476C61746F74, 0xEB00000000737075);
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_2329A8C48(*(v15 + 56) + 32 * v22, &aBlock);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v24 = v96;
LABEL_18:
  v91 = v1;
  v25 = sub_2329D2DF4();
  v26 = sub_2329D3634();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    *(v27 + 4) = v18;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v21;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v24;
    _os_log_impl(&dword_2329A4000, v25, v26, "Submit DB stats - Total: %ld, Unique: %ld, Groups: %ld", v27, 0x20u);
    MEMORY[0x23838B4F0](v27, -1, -1);
  }

  v28 = sub_2329D3384();
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v21;
  v29[4] = v24;
  v101 = sub_2329BF6FC;
  v102 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_2329BA880;
  v100 = &block_descriptor_135;
  v30 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v30);

  if (!*(v15 + 16))
  {
    goto LABEL_51;
  }

  v31 = sub_2329BB4B0(0x61745370756F7267, 0xEA00000000007374);
  if ((v32 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_2329A8C48(*(v15 + 56) + 32 * v31, &aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD60, &qword_2329D4768);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  result = v96;
  if (!*(v96 + 16))
  {
LABEL_51:

    return 1;
  }

  v34 = 0;
  v90 = v96;
  v35 = v96 + 64;
  v36 = 1 << *(v96 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v96 + 64);
  v84 = (v36 + 63) >> 6;
  v86 = v94 + 32;
  v87 = v94 + 16;
  v92 = (v94 + 8);
  v83 = MEMORY[0x277D84F90];
  v39 = &unk_27DDBDD68;
  v88 = v11;
  v89 = v9;
  v85 = v96 + 64;
  while (v38)
  {
    v40 = v34;
LABEL_39:
    v43 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v44 = v43 | (v40 << 6);
    v45 = v90;
    v46 = v93;
    v47 = v94;
    v48 = v95;
    (*(v94 + 16))(v93, *(v90 + 48) + *(v94 + 72) * v44, v95);
    v49 = *(*(v45 + 56) + 8 * v44);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, &qword_2329D4770);
    v51 = v39;
    v52 = *(v50 + 48);
    v53 = *(v47 + 32);
    v9 = v89;
    v53(v89, v46, v48);
    *&v9[v52] = v49;
    v39 = v51;
    (*(*(v50 - 8) + 56))(v9, 0, 1, v50);

    v11 = v88;
    v35 = v85;
LABEL_40:
    sub_2329BFA80(v9, v11, &qword_27DDBDD58, &qword_2329D4760);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, &qword_2329D4770);
    if ((*(*(v54 - 8) + 48))(v11, 1, v54) == 1)
    {

      v68 = *(v83 + 2);
      if (v68)
      {
        v69 = v83 + 40;
        *&v67 = 134218240;
        v95 = v67;
        v94 = v68;
        do
        {
          v73 = *(v69 - 1);
          v74 = *v69;
          v75 = sub_2329D2DF4();
          v76 = sub_2329D3634();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = v95;
            *(v77 + 4) = v73;
            *(v77 + 12) = 2048;
            *(v77 + 14) = v74;
            _os_log_impl(&dword_2329A4000, v75, v76, "Submit groupwise DB stats - Total: %ld, Unique: %ld", v77, 0x16u);
            MEMORY[0x23838B4F0](v77, -1, -1);
          }

          v69 += 16;

          v70 = sub_2329D3384();
          v71 = swift_allocObject();
          *(v71 + 16) = v73;
          *(v71 + 24) = v74;
          v101 = sub_2329BF4DC;
          v102 = v71;
          aBlock = MEMORY[0x277D85DD0];
          v98 = 1107296256;
          v99 = sub_2329BA880;
          v100 = &block_descriptor_129;
          v72 = _Block_copy(&aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v72);

          --v68;
        }

        while (v68);

        v78 = sub_2329D2DF4();
        v79 = sub_2329D35F4();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 134217984;
          *(v80 + 4) = v94;

          _os_log_impl(&dword_2329A4000, v78, v79, "Submitted %ld groups to CA", v80, 0xCu);
          MEMORY[0x23838B4F0](v80, -1, -1);
        }

        else
        {
        }
      }

      goto LABEL_51;
    }

    v55 = *&v11[*(v54 + 48)];
    if (*(v55 + 16) && (v56 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL), (v57 & 1) != 0) && *(v55 + 16) && (v58 = *(*(v55 + 56) + 8 * v56), v59 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63), (v60 & 1) != 0))
    {
      v82 = *(*(v55 + 56) + 8 * v59);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_2329BB0E4(0, *(v83 + 2) + 1, 1, v83);
      }

      v62 = *(v83 + 2);
      v61 = *(v83 + 3);
      if (v62 >= v61 >> 1)
      {
        v83 = sub_2329BB0E4((v61 > 1), v62 + 1, 1, v83);
      }

      v63 = v83;
      *(v83 + 2) = v62 + 1;
      v64 = &v63[16 * v62];
      v65 = v82;
      *(v64 + 4) = v58;
      *(v64 + 5) = v65;
    }

    else
    {
    }

    result = (*v92)(v11, v95);
  }

  if (v84 <= v34 + 1)
  {
    v41 = v34 + 1;
  }

  else
  {
    v41 = v84;
  }

  v42 = v41 - 1;
  while (1)
  {
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v40 >= v84)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, &qword_2329D4770);
      (*(*(v66 - 8) + 56))(v9, 1, 1, v66);
      v38 = 0;
      v34 = v42;
      goto LABEL_40;
    }

    v38 = *(v35 + 8 * v40);
    ++v34;
    if (v38)
    {
      v34 = v40;
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

void sub_2329B69A4(uint64_t a1, void *a2)
{
  v208 = a2;
  v225 = a1;
  v232 = *MEMORY[0x277D85DE8];
  v224 = sub_2329D2D84();
  v193 = *(v224 - 8);
  v2 = *(v193 + 64);
  v3 = MEMORY[0x28223BE20](v224);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v198 = &v192 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v205 = &v192 - v9;
  MEMORY[0x28223BE20](v8);
  v222 = &v192 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v226 = (&v192 - v13);
  v14 = sub_2329D2DD4();
  v214 = *(v14 - 8);
  v15 = *(v214 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v211 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v197 = &v192 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v204 = &v192 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v221 = &v192 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v217 = &v192 - v25;
  MEMORY[0x28223BE20](v24);
  v216 = (&v192 - v26);
  type metadata accessor for NDFNetworkDevice();
  v27 = [swift_getObjCClassFromMetadata() entityName];
  if (!v27)
  {
    sub_2329D33B4();
    v27 = sub_2329D3384();
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v28 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v29 = swift_allocObject();
  v223 = xmmword_2329D4530;
  *(v29 + 16) = xmmword_2329D4530;
  v30 = sub_2329C002C();
  v32 = *v30;
  v31 = v30[1];
  v33 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 32) = v32;
  *(v29 + 40) = v31;

  v34 = sub_2329D3474();

  [v28 setPropertiesToGroupBy_];

  v35 = swift_allocObject();
  *(v35 + 16) = v223;
  v37 = *v30;
  v36 = v30[1];
  *&v223 = v30;
  *(v35 + 56) = v33;
  *(v35 + 32) = v37;
  *(v35 + 40) = v36;

  v38 = sub_2329D3474();

  [v28 setPropertiesToFetch_];

  *&v230 = 0;
  v195 = v28;
  v39 = [v28 execute_];
  v40 = v230;
  if (!v39)
  {
    v69 = v230;
    v70 = sub_2329D2C84();

    swift_willThrow();
    v71 = v70;
    v72 = sub_2329D2DF4();
    v73 = sub_2329D3614();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      v76 = v70;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v77;
      *v75 = v77;
      _os_log_impl(&dword_2329A4000, v72, v73, "Failed to fetch list of deviceIDs: (%@)", v74, 0xCu);
      sub_2329BFB8C(v75, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v75, -1, -1);
      MEMORY[0x23838B4F0](v74, -1, -1);
    }

    else
    {
    }

    goto LABEL_68;
  }

  v41 = v39;
  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v42 = sub_2329D3484();
  v43 = v40;

  v45 = v42;
  if (v42 >> 62)
  {
LABEL_72:
    v190 = v45;
    v191 = sub_2329D3864();
    v45 = v190;
    v46 = v191;
  }

  else
  {
    v46 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v206 = v5;
  if (v46)
  {
    if (v46 < 1)
    {
      __break(1u);
    }

    v47 = 0;
    v219 = v45 & 0xC000000000000001;
    v218 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
    v48 = (v214 + 56);
    v213 = (v214 + 48);
    v215 = (v214 + 32);
    v210 = (v214 + 16);
    v209 = (v214 + 8);
    v49 = MEMORY[0x277D84F90];
    *&v44 = 138412290;
    v212 = v44;
    v220 = v45;
    while (1)
    {
      if (v219)
      {
        v50 = MEMORY[0x23838AD30](v47);
      }

      else
      {
        v50 = *(v45 + 8 * v47 + 32);
      }

      v51 = v50;
      v52 = sub_2329D2DF4();
      v53 = sub_2329D3604();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = v14;
        v56 = v49;
        v57 = swift_slowAlloc();
        *v54 = v212;
        *(v54 + 4) = v51;
        *v57 = v51;
        v58 = v51;
        _os_log_impl(&dword_2329A4000, v52, v53, "Result dict %@", v54, 0xCu);
        sub_2329BFB8C(v57, &qword_27DDBE070, &unk_2329D4750);
        v59 = v57;
        v49 = v56;
        v14 = v55;
        MEMORY[0x23838B4F0](v59, -1, -1);
        MEMORY[0x23838B4F0](v54, -1, -1);
      }

      v60 = *(v223 + 8);
      *&v228 = *v223;
      *(&v228 + 1) = v60;

      v61 = [v51 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v61)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v228 = 0u;
        v229 = 0u;
      }

      v230 = v228;
      v231 = v229;
      if (*(&v229 + 1))
      {
        v62 = v226;
        v63 = swift_dynamicCast();
        (*v48)(v62, v63 ^ 1u, 1, v14);
        if ((*v213)(v62, 1, v14) != 1)
        {
          v64 = *v215;
          v65 = v216;
          (*v215)(v216, v226, v14);
          (*v210)(v217, v65, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_2329BAF0C(0, v49[2] + 1, 1, v49);
          }

          v67 = v49[2];
          v66 = v49[3];
          if (v67 >= v66 >> 1)
          {
            v49 = sub_2329BAF0C(v66 > 1, v67 + 1, 1, v49);
          }

          v68 = v214;
          (*(v214 + 8))(v216, v14);
          v49[2] = v67 + 1;
          v64((v49 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67), v217, v14);
          goto LABEL_11;
        }
      }

      else
      {

        sub_2329BFB8C(&v230, &unk_27DDBE0F0, &qword_2329D4890);
        (*v48)(v226, 1, 1, v14);
      }

      sub_2329BFB8C(v226, &qword_27DDBDD90, &qword_2329D4858);
LABEL_11:
      v45 = v220;
      if (v46 == ++v47)
      {
        goto LABEL_31;
      }
    }
  }

  v49 = MEMORY[0x277D84F90];
LABEL_31:

  v219 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v78 = sub_2329D2DF4();
  v79 = sub_2329D3634();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v230 = v81;
    *v80 = 134218242;
    *(v80 + 4) = v49[2];
    *(v80 + 12) = 2080;

    v83 = MEMORY[0x23838A9E0](v82, v14);
    v85 = v84;

    v86 = sub_2329A8630(v83, v85, &v230);

    *(v80 + 14) = v86;
    _os_log_impl(&dword_2329A4000, v78, v79, "Ready to process %ld deviceIDs: %s", v80, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x23838B4F0](v81, -1, -1);
    MEMORY[0x23838B4F0](v80, -1, -1);
  }

  v87 = v224;
  v88 = v221;
  v89 = v205;
  v90 = *(**sub_2329A65F4() + 208);

  v90(v91);

  sub_2329D2D54();
  v199 = v49[2];
  if (!v199)
  {
LABEL_59:
    [v208 reset];

    (*(v193 + 8))(v222, v87);
    goto LABEL_67;
  }

  v202 = sub_2329BFB44(0, &qword_2814D9E78, 0x277CCAC30);
  v201 = v49 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
  v217 = (v214 + 16);
  v216 = (v193 + 16);
  v218 = (v193 + 8);
  v226 = (v214 + 8);

  v5 = 0;
  *&v92 = 136315394;
  v196 = v92;
  *(&v92 + 1) = 4;
  v200 = xmmword_2329D46D0;
  *&v92 = 136315650;
  v194 = v92;
  *&v92 = 134218498;
  v192 = v92;
  v93 = v204;
  v207 = v49;
  while (1)
  {
    if (v5 >= v49[2])
    {
      __break(1u);
      goto LABEL_72;
    }

    v96 = *(v214 + 16);
    v96(v88, &v201[*(v214 + 72) * v5], v14);
    v213 = v96;
    v96(v93, v88, v14);
    *&v212 = *v216;
    (v212)(v89, v222, v87);
    v97 = sub_2329D2DF4();
    v98 = sub_2329D3604();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v230 = v100;
      *v99 = v196;
      sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
      v101 = sub_2329D38B4();
      v103 = v102;
      v220 = *v226;
      v220(v93, v14);
      v104 = sub_2329A8630(v101, v103, &v230);

      *(v99 + 4) = v104;
      *(v99 + 12) = 2080;
      sub_2329BF1B0(&qword_2814DA7D8, MEMORY[0x277CC9578]);
      v105 = sub_2329D38B4();
      v107 = v106;
      v215 = *v218;
      v215(v89, v224);
      v108 = sub_2329A8630(v105, v107, &v230);

      *(v99 + 14) = v108;
      _os_log_impl(&dword_2329A4000, v97, v98, "Cleaning up records for %s created before %s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23838B4F0](v100, -1, -1);
      v109 = v99;
      v49 = v207;
      MEMORY[0x23838B4F0](v109, -1, -1);
    }

    else
    {

      v215 = *v218;
      v215(v89, v87);
      v220 = *v226;
      v220(v93, v14);
    }

    v110 = sub_2329BFFD4();
    v111 = *v110;
    v112 = *(v110 + 1);
    v113 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v114 = sub_2329D3384();

    v115 = [v113 initWithEntityName_];

    *&v230 = 0;
    *(&v230 + 1) = 0xE000000000000000;
    sub_2329D37B4();
    v117 = *v223;
    v116 = *(v223 + 8);

    *&v230 = v117;
    *(&v230 + 1) = v116;
    MEMORY[0x23838A970](0x41204025203D3D20, 0xEB0000000020444ELL);
    v118 = sub_2329C01E0();
    v119 = *v118;
    v120 = *(v118 + 1);

    MEMORY[0x23838A970](v119, v120);

    MEMORY[0x23838A970](0x4025203C20, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD40, &qword_2329D4580);
    v121 = swift_allocObject();
    *(v121 + 16) = v200;
    v122 = sub_2329D2DA4();
    *(v121 + 56) = sub_2329BFB44(0, &qword_2814DA828, 0x277CCAD78);
    *(v121 + 64) = sub_2329BF858(&qword_27DDBDE48, &qword_2814DA828, 0x277CCAD78);
    *(v121 + 32) = v122;
    v123 = sub_2329D2D44();
    *(v121 + 96) = sub_2329BFB44(0, &qword_2814DA830, 0x277CBEAA8);
    *(v121 + 104) = sub_2329BF858(&qword_27DDBDE50, &qword_2814DA830, 0x277CBEAA8);
    *(v121 + 72) = v123;
    v124 = sub_2329D35E4();

    [v115 setPredicate_];

    v125 = objc_allocWithZone(MEMORY[0x277CBE360]);
    v210 = v115;
    v126 = [v125 initWithFetchRequest_];
    [v126 setResultType_];
    *&v230 = 0;
    v127 = [v208 executeRequest:v126 error:&v230];
    v128 = v230;
    v129 = v211;
    v209 = v126;
    if (!v127)
    {
      v136 = v230;
      v137 = sub_2329D2C84();

      swift_willThrow();
      v88 = v221;
      v87 = v224;
      goto LABEL_55;
    }

    v130 = v127;
    objc_opt_self();
    v131 = swift_dynamicCastObjCClass();
    if (!v131)
    {
      v178 = v128;

      v179 = sub_2329D2DF4();
      v180 = sub_2329D3614();
      v181 = os_log_type_enabled(v179, v180);
      v182 = v221;
      v183 = v224;
      if (v181)
      {
        v184 = v126;
        v185 = swift_slowAlloc();
        *v185 = 0;
        _os_log_impl(&dword_2329A4000, v179, v180, "Unable to cast NSBatchDeleteResult", v185, 2u);
        MEMORY[0x23838B4F0](v185, -1, -1);
      }

      else
      {
      }

      v220(v182, v14);
      v215(v222, v183);
      goto LABEL_67;
    }

    v132 = v131;
    v133 = v128;
    v134 = [v132 result];
    v135 = v221;
    v87 = v224;
    if (v134)
    {
      sub_2329D3734();
      swift_unknownObjectRelease();
    }

    else
    {
      v228 = 0u;
      v229 = 0u;
    }

    v138 = v198;
    v139 = v197;
    v230 = v228;
    v231 = v229;
    if (!*(&v229 + 1))
    {

      sub_2329BFB8C(&v230, &unk_27DDBE0F0, &qword_2329D4890);
      goto LABEL_64;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v203 = v130;
    v140 = v227;
    v213(v139, v135, v14);
    (v212)(v138, v222, v87);
    v141 = sub_2329D2DF4();
    v142 = sub_2329D3634();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *&v230 = v144;
      *v143 = v192;
      *(v143 + 4) = v140;
      *(v143 + 12) = 2080;
      sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
      v145 = sub_2329D38B4();
      v147 = v146;
      v220(v139, v14);
      v148 = sub_2329A8630(v145, v147, &v230);

      *(v143 + 14) = v148;
      *(v143 + 22) = 2080;
      sub_2329BF1B0(&qword_2814DA7D8, MEMORY[0x277CC9578]);
      v149 = sub_2329D38B4();
      v151 = v150;
      v215(v138, v224);
      v152 = sub_2329A8630(v149, v151, &v230);

      *(v143 + 24) = v152;
      _os_log_impl(&dword_2329A4000, v141, v142, "Completed batch deletion of %ld device records for %s older than %s", v143, 0x20u);
      swift_arrayDestroy();
      v153 = v144;
      v87 = v224;
      MEMORY[0x23838B4F0](v153, -1, -1);
      MEMORY[0x23838B4F0](v143, -1, -1);
    }

    else
    {

      v215(v138, v87);
      v220(v139, v14);
    }

    v154 = v203;
    *&v230 = 0;
    v155 = [v208 save_];
    v156 = v230;
    v88 = v221;
    v129 = v211;
    v49 = v207;
    if (!v155)
    {
      v157 = v156;
      v137 = sub_2329D2C84();

      swift_willThrow();
LABEL_55:
      v213(v129, v88, v14);
      v158 = v206;
      (v212)(v206, v222, v87);
      v159 = v137;
      v160 = sub_2329D2DF4();
      v161 = v129;
      v162 = sub_2329D3614();

      if (os_log_type_enabled(v160, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        *&v230 = v213;
        *v163 = v194;
        sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
        v165 = sub_2329D38B4();
        v167 = v166;
        v220(v211, v14);
        v168 = sub_2329A8630(v165, v167, &v230);

        *(v163 + 4) = v168;
        *(v163 + 12) = 2080;
        sub_2329BF1B0(&qword_2814DA7D8, MEMORY[0x277CC9578]);
        v169 = sub_2329D38B4();
        v171 = v170;
        v215(v206, v224);
        v172 = sub_2329A8630(v169, v171, &v230);
        v49 = v207;

        *(v163 + 14) = v172;
        *(v163 + 22) = 2112;
        v173 = v137;
        v174 = _swift_stdlib_bridgeErrorToNSError();
        *(v163 + 24) = v174;
        *v164 = v174;
        _os_log_impl(&dword_2329A4000, v160, v162, "Failed to batch delete device records matching %s older than %s: %@", v163, 0x20u);
        sub_2329BFB8C(v164, &qword_27DDBE070, &unk_2329D4750);
        v175 = v164;
        v88 = v221;
        MEMORY[0x23838B4F0](v175, -1, -1);
        v176 = v213;
        swift_arrayDestroy();
        MEMORY[0x23838B4F0](v176, -1, -1);
        v177 = v163;
        v87 = v224;
        MEMORY[0x23838B4F0](v177, -1, -1);

        v220(v88, v14);
      }

      else
      {

        v215(v158, v87);
        v94 = v161;
        v95 = v220;
        v220(v94, v14);
        v95(v88, v14);
      }

      goto LABEL_36;
    }

    v220(v221, v14);

LABEL_36:
    v93 = v204;
    ++v5;
    v89 = v205;
    if (v199 == v5)
    {

      goto LABEL_59;
    }
  }

LABEL_64:
  v186 = sub_2329D2DF4();
  v187 = sub_2329D3614();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&dword_2329A4000, v186, v187, "Unable to cast Int from NSBatchDeleteResult", v188, 2u);
    MEMORY[0x23838B4F0](v188, -1, -1);
  }

  v220(v135, v14);
  v215(v222, v87);
LABEL_67:

LABEL_68:
  v189 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2329B85FC()
{
  v1 = (*(*v0 + 360))();
  if (!v1)
  {
    v10 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v10, v11, "Failed to get current MOC", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v14 = MEMORY[0x277D84F90];
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = &v14;
  v3[4] = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2329BE6B8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2329BFCF8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329B08FC;
  aBlock[3] = &block_descriptor_83;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v14;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_2329B8830(void *a1, size_t *a2, uint64_t a3)
{
  v106 = a3;
  v111 = a2;
  v101 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778);
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = *(v109 + 64);
  MEMORY[0x28223BE20](v3);
  v114 = &v95 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD90, &qword_2329D4858);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v95 - v8;
  v9 = sub_2329D2DD4();
  v103 = *(v9 - 8);
  v10 = *(v103 + 64);
  MEMORY[0x28223BE20](v9);
  v115 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2329BFFD4();
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v16 = sub_2329D3384();

  v17 = [v15 initWithEntityName_];
  v100 = v17;

  [v17 setResultType_];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v19 = swift_allocObject();
  v113 = xmmword_2329D4530;
  *(v19 + 16) = xmmword_2329D4530;
  v20 = objc_opt_self();
  v21 = [v20 expressionForEvaluatedObject];
  v22 = sub_2329BFB44(0, &qword_27DDBDE08, 0x277CCA9C0);
  *(v19 + 56) = v22;
  *(v19 + 32) = v21;
  v23 = sub_2329D3384();
  v24 = sub_2329D3474();

  v25 = [v20 expressionForFunction:v23 arguments:v24];

  v26 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v27 = sub_2329D3384();
  [v26 setName_];

  v99 = v25;
  [v26 setExpression_];
  [v26 setExpressionResultType_];
  v107 = v18;
  v28 = swift_allocObject();
  *(v28 + 16) = v113;
  v29 = swift_allocObject();
  *(v29 + 16) = v113;
  v30 = sub_2329C002C();
  v31 = *v30;
  v32 = v30[1];

  v33 = sub_2329D3384();

  v34 = [v20 expressionForKeyPath_];

  *(v29 + 56) = v22;
  *(v29 + 32) = v34;
  v35 = sub_2329D3384();
  v36 = sub_2329D3474();

  v37 = [v20 expressionForFunction:v35 arguments:v36];

  *(v28 + 56) = v22;
  *(v28 + 32) = v37;
  v38 = sub_2329D3384();
  v39 = sub_2329D3474();

  v40 = [v20 expressionForFunction:v38 arguments:v39];

  v41 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v42 = sub_2329D3384();
  [v41 setName_];

  v43 = v100;
  v98 = v40;
  [v41 setExpression_];
  [v41 setExpressionResultType_];
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2329D46B0;
  v45 = sub_2329C00A8();
  v46 = *v45;
  v47 = v45[1];
  *(v44 + 56) = MEMORY[0x277D837D0];
  *(v44 + 32) = v46;
  *(v44 + 40) = v47;
  v48 = sub_2329BFB44(0, &qword_27DDBDE10, 0x277CBE410);
  *(v44 + 64) = v26;
  *(v44 + 120) = v48;
  *(v44 + 88) = v48;
  *(v44 + 96) = v41;
  v97 = v26;
  v49 = v41;
  v50 = v45;

  v51 = sub_2329D3474();

  [v43 setPropertiesToFetch_];

  v52 = swift_allocObject();
  *(v52 + 16) = v113;
  v54 = *v45;
  v53 = v45[1];
  *(v52 + 56) = MEMORY[0x277D837D0];
  v55 = v101;
  *(v52 + 32) = v54;
  *(v52 + 40) = v53;

  v56 = sub_2329D3474();

  [v43 setPropertiesToGroupBy_];

  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v57 = sub_2329D36E4();
  v58 = v57;
  v59 = v103;
  v96 = v49;
  if (v57 >> 62)
  {
    v90 = v57;
    v60 = sub_2329D3864();
    v58 = v90;
    v61 = v112;
    if (v60)
    {
      goto LABEL_3;
    }

LABEL_40:

LABEL_41:
    v91 = v99;
    v92 = v98;
    v93 = v96;
    v94 = v97;
    [v55 reset];

    return;
  }

  v60 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v112;
  if (!v60)
  {
    goto LABEL_40;
  }

LABEL_3:
  if (v60 >= 1)
  {
    v62 = v59;
    v63 = 0;
    v105 = v58 & 0xC000000000000001;
    v104 = (v62 + 56);
    *&v113 = v62 + 48;
    v102 = (v62 + 32);
    v64 = (v62 + 16);
    v103 = v62 + 8;
    v65 = MEMORY[0x277D837D0];
    v107 = v58;
    v108 = v50;
    v106 = v60;
    while (1)
    {
      if (v105)
      {
        v66 = MEMORY[0x23838AD30](v63);
      }

      else
      {
        v66 = *(v58 + 8 * v63 + 32);
      }

      v67 = v66;
      v68 = v50[1];
      *&v117 = *v50;
      *(&v117 + 1) = v68;

      v69 = [v67 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v69)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
      }

      v119 = v117;
      v120 = v118;
      if (*(&v118 + 1))
      {
        v70 = swift_dynamicCast();
        (*v104)(v61, v70 ^ 1u, 1, v9);
        if ((*v113)(v61, 1, v9) != 1)
        {
          (*v102)(v115, v61, v9);
          goto LABEL_17;
        }
      }

      else
      {
        sub_2329BFB8C(&v119, &unk_27DDBE0F0, &qword_2329D4890);
        (*v104)(v61, 1, 1, v9);
      }

      v71 = sub_2329A9598();
      (*v64)(v115, v71, v9);
      if ((*v113)(v61, 1, v9) != 1)
      {
        sub_2329BFB8C(v61, &qword_27DDBDD90, &qword_2329D4858);
      }

LABEL_17:
      strcpy(&v117, "total_records");
      HIWORD(v117) = -4864;
      v72 = [v67 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v72)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
      }

      v119 = v117;
      v120 = v118;
      if (*(&v118 + 1))
      {
        sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v73 = v116;
          v74 = [v116 integerValue];

          goto LABEL_25;
        }
      }

      else
      {
        sub_2329BFB8C(&v119, &unk_27DDBE0F0, &qword_2329D4890);
      }

      v74 = 0;
LABEL_25:
      strcpy(&v117, "device_count");
      BYTE13(v117) = 0;
      HIWORD(v117) = -5120;
      v75 = v65;
      v76 = [v67 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v76)
      {
        sub_2329D3734();
        swift_unknownObjectRelease();
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
      }

      v119 = v117;
      v120 = v118;
      if (!*(&v118 + 1))
      {
        sub_2329BFB8C(&v119, &unk_27DDBE0F0, &qword_2329D4890);
LABEL_32:
        v79 = v110;
        v80 = v115;
        v78 = 0;
        goto LABEL_33;
      }

      sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_32;
      }

      v77 = v116;
      v78 = [v116 integerValue];

      v79 = v110;
      v80 = v115;
LABEL_33:
      v81 = *(v79 + 48);
      v82 = *(v79 + 64);
      v83 = v114;
      (*v64)(v114, v80, v9);
      *(v83 + v81) = v74;
      *(v83 + v82) = v78;
      v84 = v111;
      v85 = *v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v84 = v85;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = sub_2329BB1E8(0, v85[2] + 1, 1, v85);
        *v84 = v85;
      }

      v61 = v112;
      v88 = v85[2];
      v87 = v85[3];
      if (v88 >= v87 >> 1)
      {
        *v84 = sub_2329BB1E8(v87 > 1, v88 + 1, 1, v85);
      }

      ++v63;

      (*v103)(v115, v9);
      v89 = *v84;
      *(v89 + 16) = v88 + 1;
      sub_2329BFA80(v114, v89 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v88, &qword_27DDBDD70, &qword_2329D4778);
      v58 = v107;
      v50 = v108;
      v65 = v75;
      if (v106 == v63)
      {

        v55 = v101;
        v43 = v100;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

void sub_2329B9674()
{
  v1 = sub_2329D2DD4();
  v85 = *(v1 - 8);
  v2 = *(v85 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v79 - v7;
  MEMORY[0x28223BE20](v6);
  v84 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD58, &qword_2329D4760);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v79 - v15;
  v92 = v0;
  v88 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;
  v16 = sub_2329D2DF4();
  v17 = sub_2329D3634();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2329A4000, v16, v17, "=== NDF Database Telemetry Stats ===", v18, 2u);
    MEMORY[0x23838B4F0](v18, -1, -1);
  }

  v19 = sub_2329BA0D4();
  if (*(v19 + 16) && (v20 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL), (v21 & 1) != 0) && (sub_2329A8C48(*(v19 + 56) + 32 * v20, v98), swift_dynamicCast()))
  {
    v22 = v97;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v19 + 16);
  v91 = v8;
  if (v23 && (v24 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63), (v25 & 1) != 0) && (sub_2329A8C48(*(v19 + 56) + 32 * v24, v98), swift_dynamicCast()))
  {
    v26 = v97;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v19 + 16);
  v96 = v5;
  if (v27 && (v28 = sub_2329BB4B0(0x6F72476C61746F74, 0xEB00000000737075), (v29 & 1) != 0) && (sub_2329A8C48(*(v19 + 56) + 32 * v28, v98), swift_dynamicCast()))
  {
    v30 = v97;
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_2329D2DF4();
  v32 = sub_2329D35F4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134218496;
    *(v33 + 4) = v22;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v26;
    *(v33 + 22) = 2048;
    *(v33 + 24) = v30;
    _os_log_impl(&dword_2329A4000, v31, v32, "Total: %ld, Unique: %ld, Groups: %ld", v33, 0x20u);
    MEMORY[0x23838B4F0](v33, -1, -1);
  }

  if (*(v19 + 16) && (v34 = sub_2329BB4B0(0x61745370756F7267, 0xEA00000000007374), (v35 & 1) != 0))
  {
    sub_2329A8C48(*(v19 + 56) + 32 * v34, v98);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD60, &qword_2329D4768);
    if (swift_dynamicCast())
    {
      v36 = v97;

      v37 = sub_2329D2DF4();
      v38 = sub_2329D35F4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = *(v36 + 16);

        _os_log_impl(&dword_2329A4000, v37, v38, "FETCHED device stats: %ld groups", v39, 0xCu);
        MEMORY[0x23838B4F0](v39, -1, -1);
      }

      else
      {
      }

      v41 = v91;
      v42 = 0;
      v82 = v36;
      v43 = *(v36 + 64);
      v80 = v36 + 64;
      v44 = 1 << *(v36 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & v43;
      v79 = (v44 + 63) >> 6;
      v93 = (v85 + 32);
      v94 = (v85 + 16);
      v83 = (v85 + 8);
      *&v40 = 136315650;
      v81 = v40;
      v87 = v14;
      while (v46)
      {
        v48 = v42;
LABEL_42:
        v51 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v52 = v51 | (v48 << 6);
        v53 = v82;
        v54 = v85;
        (*(v85 + 16))(v84, *(v82 + 48) + *(v85 + 72) * v52, v1);
        v55 = *(*(v53 + 56) + 8 * v52);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD68, &qword_2329D4770);
        v57 = *(v56 + 48);
        v14 = v87;
        (*(v54 + 32))();
        *&v14[v57] = v55;
        (*(*(v56 - 8) + 56))(v14, 0, 1, v56);

        v50 = v48;
        v41 = v91;
LABEL_43:
        v58 = v86;
        sub_2329BFA80(v14, v86, &qword_27DDBDD58, &qword_2329D4760);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD68, &qword_2329D4770);
        if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
        {

          return;
        }

        v95 = v50;
        v60 = *(v58 + *(v59 + 48));
        (*v93)(v41, v58, v1);
        if (*(v60 + 16))
        {
          v61 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL);
          v62 = v96;
          if (v63)
          {
            v64 = *(*(v60 + 56) + 8 * v61);
          }

          else
          {
            v64 = 0;
          }

          v65 = *(v60 + 16);
          v89 = v64;
          if (v65 && (v66 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63), (v67 & 1) != 0))
          {
            v90 = *(*(v60 + 56) + 8 * v66);
          }

          else
          {
            v90 = 0;
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v62 = v96;
        }

        (*v94)(v62, v41, v1);
        v68 = sub_2329D2DF4();
        v69 = sub_2329D3604();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v98[0] = v71;
          *v70 = v81;
          sub_2329BF1B0(&qword_2814DA7D0, MEMORY[0x277CC95F0]);
          v72 = sub_2329D38B4();
          v73 = v1;
          v75 = v74;
          v76 = *v83;
          (*v83)(v96, v73);
          v77 = sub_2329A8630(v72, v75, v98);
          v1 = v73;
          v41 = v91;

          *(v70 + 4) = v77;
          *(v70 + 12) = 2048;
          *(v70 + 14) = v89;
          *(v70 + 22) = 2048;
          *(v70 + 24) = v90;
          _os_log_impl(&dword_2329A4000, v68, v69, "HomeID: %s, Total Records: %ld, Unique Devices: %ld", v70, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x23838B4F0](v71, -1, -1);
          MEMORY[0x23838B4F0](v70, -1, -1);

          v76(v41, v1);
          v14 = v87;
        }

        else
        {

          v47 = *v83;
          (*v83)(v62, v1);
          v47(v41, v1);
        }

        v42 = v95;
      }

      if (v79 <= v42 + 1)
      {
        v49 = v42 + 1;
      }

      else
      {
        v49 = v79;
      }

      v50 = v49 - 1;
      while (1)
      {
        v48 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v48 >= v79)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD68, &qword_2329D4770);
          (*(*(v78 - 8) + 56))(v14, 1, 1, v78);
          v46 = 0;
          goto LABEL_43;
        }

        v46 = *(v80 + 8 * v48);
        ++v42;
        if (v46)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_2329BA0D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v77 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v76 = v66 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v83 = v66 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v78 = v66 - v10;
  MEMORY[0x28223BE20](v9);
  v75 = v66 - v11;
  v12 = sub_2329B5510();
  v13 = sub_2329B577C();
  v14 = sub_2329B85FC();
  v15 = *(v14 + 16);
  v84 = sub_2329BE1B4(MEMORY[0x277D84F90]);
  v16 = *(v14 + 16);
  if (v16)
  {
    v67 = v15;
    v68 = v13;
    v69 = v12;
    v74 = *(v0 + 48);
    v73 = *(v0 + 64);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD78, &qword_2329D4780);
    v17 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v66[1] = v14;
    v18 = v14 + v17;
    v70 = *(v1 + 72);
    v19 = v78;
    v71 = v0;
    while (1)
    {
      v81 = v16;
      v80 = v18;
      v22 = v75;
      sub_2329BF474(v18, v75, &qword_27DDBDD70, &qword_2329D4778);
      v23 = *(v22 + v74);
      v82 = *(v22 + v73);
      v24 = *(v0 + 48);
      v25 = *(v0 + 64);
      v26 = v0;
      v27 = sub_2329D2DD4();
      v28 = *(v27 - 8);
      (*(v28 + 32))(v19, v22, v27);
      *(v19 + v24) = v23;
      *(v19 + v25) = v82;
      sub_2329BF474(v19, v83, &qword_27DDBDD70, &qword_2329D4778);
      v29 = v76;
      sub_2329BF474(v19, v76, &qword_27DDBDD70, &qword_2329D4778);
      v30 = *(v29 + *(v26 + 48));
      v31 = v77;
      sub_2329BF474(v19, v77, &qword_27DDBDD70, &qword_2329D4778);
      v32 = *(v31 + *(v26 + 64));
      v79 = v28;
      v33 = *(v28 + 8);
      v33(v31, v27);
      v34 = v27;
      v82 = v33;
      v33(v29, v27);
      v35 = sub_2329D3894();

      v36 = sub_2329BB4B0(0x6365526C61746F74, 0xEC0000007364726FLL);
      if (v37)
      {
        break;
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v36;
      v38 = v35[6] + 16 * v36;
      strcpy(v38, "totalRecords");
      *(v38 + 13) = 0;
      *(v38 + 14) = -5120;
      *(v35[7] + 8 * v36) = v30;
      v39 = v35[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_22;
      }

      v35[2] = v41;
      v42 = sub_2329BB4B0(0x6552657571696E75, 0xED00007364726F63);
      v44 = v43;

      if (v44)
      {
        goto LABEL_23;
      }

      *(v35 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v42;
      v45 = v35[6] + 16 * v42;
      strcpy(v45, "uniqueRecords");
      *(v45 + 14) = -4864;
      *(v35[7] + 8 * v42) = v32;
      v46 = v35[2];
      v40 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v40)
      {
        goto LABEL_24;
      }

      v35[2] = v47;
      v48 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v48;
      v50 = v83;
      v52 = sub_2329BB528(v83);
      v53 = *(v48 + 16);
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_25;
      }

      v56 = v51;
      if (*(v48 + 24) >= v55)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2329BBE80();
        }
      }

      else
      {
        sub_2329BBAA4(v55, isUniquelyReferenced_nonNull_native);
        v57 = sub_2329BB528(v50);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_27;
        }

        v52 = v57;
      }

      v19 = v78;
      v59 = v85;
      v84 = v85;
      if (v56)
      {
        v20 = v85[7];
        v21 = *(v20 + 8 * v52);
        *(v20 + 8 * v52) = v35;
      }

      else
      {
        v85[(v52 >> 6) + 8] |= 1 << v52;
        (*(v79 + 16))(v59[6] + *(v79 + 72) * v52, v50, v34);
        *(v59[7] + 8 * v52) = v35;
        v60 = v59[2];
        v40 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v40)
        {
          goto LABEL_26;
        }

        v59[2] = v61;
      }

      v82(v50, v34);
      sub_2329BFB8C(v19, &qword_27DDBDD70, &qword_2329D4778);
      v18 = v80 + v70;
      v16 = v81 - 1;
      v0 = v71;
      if (v81 == 1)
      {

        v12 = v69;
        v13 = v68;
        v15 = v67;
        goto LABEL_20;
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
LABEL_27:
    result = sub_2329D3904();
    __break(1u);
  }

  else
  {

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD80, &qword_2329D4788);
    inited = swift_initStackObject();
    strcpy((inited + 32), "totalRecords");
    v63 = MEMORY[0x277D83B88];
    *(inited + 16) = xmmword_2329D46E0;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v12;
    *(inited + 72) = v63;
    strcpy((inited + 80), "uniqueRecords");
    *(inited + 94) = -4864;
    *(inited + 96) = v13;
    *(inited + 120) = v63;
    *(inited + 128) = 0x6F72476C61746F74;
    *(inited + 136) = 0xEB00000000737075;
    *(inited + 144) = v15;
    *(inited + 168) = v63;
    *(inited + 176) = 0x61745370756F7267;
    *(inited + 184) = 0xEA00000000007374;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD60, &qword_2329D4768);
    *(inited + 192) = v84;
    v64 = sub_2329BE39C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD88, &qword_2329D4790);
    swift_arrayDestroy();
    return v64;
  }

  return result;
}

id sub_2329BA880(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2329BFB44(0, &qword_27DDBDE28, 0x277D82BB8);
    v5 = sub_2329D3344();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2329BA924(uint64_t a1, id *a2)
{
  result = sub_2329D3394();
  *a2 = 0;
  return result;
}

uint64_t sub_2329BA99C(uint64_t a1, id *a2)
{
  v3 = sub_2329D33A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2329BAA1C@<X0>(uint64_t *a1@<X8>)
{
  sub_2329D33B4();
  v2 = sub_2329D3384();

  *a1 = v2;
  return result;
}

uint64_t sub_2329BAA60()
{
  v1 = *v0;
  v2 = sub_2329D33B4();
  v3 = MEMORY[0x23838A9A0](v2);

  return v3;
}

uint64_t sub_2329BAA9C()
{
  v1 = *v0;
  sub_2329D33B4();
  sub_2329D3414();
}

uint64_t sub_2329BAAF0()
{
  v1 = *v0;
  sub_2329D33B4();
  sub_2329D3934();
  sub_2329D3414();
  v2 = sub_2329D3954();

  return v2;
}

uint64_t sub_2329BAB64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2329D3384();

  *a2 = v5;
  return result;
}

uint64_t sub_2329BABAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2329D33B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2329BABD8(uint64_t a1)
{
  v2 = sub_2329BF1B0(&qword_27DDBDDD8, type metadata accessor for URLResourceKey);
  v3 = sub_2329BF1B0(&qword_27DDBDE88, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2329BAC94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2329D33B4();
  v6 = v5;
  if (v4 == sub_2329D33B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2329D38D4();
  }

  return v9 & 1;
}

uint64_t sub_2329BAD1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2329BAE14;

  return v7(a1);
}

uint64_t sub_2329BAE14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_2329BAF0C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE58, &qword_2329D4910);
  v10 = *(sub_2329D2DD4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2329D2DD4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2329BB0E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE20, &qword_2329D48E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_2329BB1E8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE18, &qword_2329D48E0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD70, &qword_2329D4778) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2329BB3D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2329D33B4();
  sub_2329D3934();
  sub_2329D3414();
  v4 = sub_2329D3954();

  return sub_2329BB5C0(a1, v4);
}

unint64_t sub_2329BB46C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2329D3754();

  return sub_2329BB6C4(a1, v5);
}

unint64_t sub_2329BB4B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2329D3934();
  sub_2329D3414();
  v6 = sub_2329D3954();

  return sub_2329BB78C(a1, a2, v6);
}

unint64_t sub_2329BB528(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2329D2DD4();
  sub_2329BF1B0(&qword_27DDBDDE8, MEMORY[0x277CC95F0]);
  v5 = sub_2329D3364();

  return sub_2329BB844(a1, v5);
}

unint64_t sub_2329BB5C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2329D33B4();
      v9 = v8;
      if (v7 == sub_2329D33B4() && v9 == v10)
      {
        break;
      }

      v12 = sub_2329D38D4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2329BB6C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2329BFAE8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23838ACB0](v9, a1);
      sub_2329BFA2C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2329BB78C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2329D38D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2329BB844(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2329D2DD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2329BF1B0(&qword_27DDBDDF8, MEMORY[0x277CC95F0]);
      v16 = sub_2329D3374();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_2329BBA04(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2329D3864();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2329D37F4();
  *v1 = result;
  return result;
}

uint64_t sub_2329BBAA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2329D2DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDE0, &qword_2329D48C0);
  v43 = a2;
  result = sub_2329D3884();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2329BF1B0(&qword_27DDBDDE8, MEMORY[0x277CC95F0]);
      result = sub_2329D3364();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

char *sub_2329BBE80()
{
  v1 = v0;
  v34 = sub_2329D2DD4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDE0, &qword_2329D48C0);
  v4 = *v0;
  v5 = sub_2329D3874();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2329BC100(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2329D3864();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2329D3864();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2329BF368();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDB0, &qword_2329D48A0);
            v9 = sub_2329BC280(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2329D2FA4();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2329BC280(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23838AD30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2329BC300;
  }

  __break(1u);
  return result;
}

id sub_2329BC308()
{
  v0 = sub_2329D2CF4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  type metadata accessor for NDFDaemonPersistenceController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  if (qword_2814DA8F0 != -1)
  {
    swift_once();
  }

  v13 = sub_2329D3384();
  v14 = sub_2329D3384();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (!v15)
  {
    v35 = v12;
    v36 = sub_2329D2DF4();
    v37 = sub_2329D3614();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_2329A4000, v36, v37, "Failed to find a MOM file in the bundle %@", v38, 0xCu);
      sub_2329BFB8C(v39, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v39, -1, -1);
      MEMORY[0x23838B4F0](v38, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_2329D2CC4();

  v16 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v17 = sub_2329D2CA4();
  v18 = [v16 initWithContentsOfURL_];

  v19 = v1[2];
  if (!v18)
  {
    v19(v8, v10, v0);
    v41 = sub_2329D2DF4();
    v42 = sub_2329D3614();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58 = v44;
      *v43 = 136315138;
      sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
      v45 = sub_2329D38B4();
      v57 = v12;
      v47 = v46;
      v48 = v1[1];
      v48(v8);
      v49 = sub_2329A8630(v45, v47, &v58);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_2329A4000, v41, v42, "Failed to allocate managed object model from %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23838B4F0](v44, -1, -1);
      MEMORY[0x23838B4F0](v43, -1, -1);

      (v48)(v10, v0);
    }

    else
    {

      v51 = v1[1];
      v51(v8, v0);
      v51(v10, v0);
    }

    return 0;
  }

  v57 = v12;
  v19(v5, v10, v0);
  v20 = v18;
  v21 = sub_2329D2DF4();
  v22 = sub_2329D3634();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v0;
    v25 = swift_slowAlloc();
    v55 = v25;
    v56 = swift_slowAlloc();
    v58 = v56;
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v25 = v18;
    *(v23 + 12) = 2080;
    sub_2329BF1B0(&qword_2814DA7E0, MEMORY[0x277CC9260]);
    v26 = v20;
    v54 = v21;
    v27 = sub_2329D38B4();
    v29 = v28;
    v30 = v1[1];
    v30(v5, v24);
    v31 = sub_2329A8630(v27, v29, &v58);

    *(v23 + 14) = v31;
    v32 = v54;
    _os_log_impl(&dword_2329A4000, v54, v22, "Successfully created managed object model %@ from %s", v23, 0x16u);
    v33 = v55;
    sub_2329BFB8C(v55, &qword_27DDBE070, &unk_2329D4750);
    MEMORY[0x23838B4F0](v33, -1, -1);
    v34 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x23838B4F0](v34, -1, -1);
    MEMORY[0x23838B4F0](v23, -1, -1);

    v30(v10, v24);
  }

  else
  {

    v50 = v1[1];
    v50(v5, v0);
    v50(v10, v0);
  }

  return v18;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2329BC9F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_2329BCA20()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v37 = v0[5];
  v4 = OBJC_IVAR____TtC19SymptomDistribution30NDFDaemonPersistenceController_logger;

  v5 = sub_2329D2DF4();
  LOBYTE(v6) = sub_2329D35F4();
  v7 = v1 >> 62;
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_6;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  if (v7)
  {
    goto LABEL_34;
  }

  v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v8 + 4) = v9;
    v10 = v8;

    _os_log_impl(&dword_2329A4000, v5, v6, "Creating %ld NDF device records...", v10, 0xCu);
    MEMORY[0x23838B4F0](v10, -1, -1);
LABEL_6:

    v36 = v1 >> 62;
    if (v7)
    {
      v8 = sub_2329D3864();
      v6 = v8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    if (v6 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_34:
    v34 = v4;
    v35 = v8;
    v9 = sub_2329D3864();
    v8 = v35;
    v4 = v34;
  }

  v11 = 0;
  v41 = v1 & 0xC000000000000001;
  v39 = v3;
  v40 = v2;
  v38 = v6;
  do
  {
    if (v41)
    {
      v12 = MEMORY[0x23838AD30](v11, v1);
    }

    else
    {
      v12 = *(v1 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = sub_2329B38C8(v12, v3);
    v15 = sub_2329D2DF4();
    v16 = sub_2329D35F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v4;
      v19 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v19 = v14;
      v20 = v1;
      v21 = v14;
      _os_log_impl(&dword_2329A4000, v15, v16, "New record: %@", v17, 0xCu);
      sub_2329BFB8C(v19, &qword_27DDBE070, &unk_2329D4750);
      v22 = v19;
      v4 = v18;
      MEMORY[0x23838B4F0](v22, -1, -1);
      v23 = v17;
      v3 = v39;
      v2 = v40;
      MEMORY[0x23838B4F0](v23, -1, -1);
      v14 = v13;
      v13 = v15;
      v15 = v21;
      v1 = v20;
      v6 = v38;
    }

    ++v11;
  }

  while (v6 != v11);
LABEL_17:

  v24 = sub_2329D2DF4();
  v25 = sub_2329D35F4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    v27 = v36;
    if (v36)
    {
      v28 = sub_2329D3864();
    }

    else
    {
      v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v28;

    _os_log_impl(&dword_2329A4000, v24, v25, "Saving %ld new records...", v26, 0xCu);
    MEMORY[0x23838B4F0](v26, -1, -1);
  }

  else
  {

    v27 = v36;
  }

  if ((*(*v2 + 416))(v3))
  {
    if (v27)
    {
      v29 = sub_2329D3864();
    }

    else
    {
      v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v30 = sub_2329D2DF4();
    v31 = sub_2329D3614();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2329A4000, v30, v31, "Failed to save records, resetting created count", v32, 2u);
      MEMORY[0x23838B4F0](v32, -1, -1);
    }

    v29 = 0;
  }

  *v37 = v29;

  return [v3 reset];
}