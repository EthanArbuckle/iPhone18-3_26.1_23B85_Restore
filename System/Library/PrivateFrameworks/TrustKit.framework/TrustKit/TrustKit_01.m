uint64_t TKDecisioningService.TKSpamDecisioningOutput.TKSpamClassification.rawValue.getter()
{
  v1 = 0x6D617053746F6ELL;
  if (*v0 != 1)
  {
    v1 = 1852989815;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835102323;
  }
}

uint64_t TKDecisioningService.TKSpamDecisioningOutput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  if (qword_28141B580 != -1)
  {
    swift_once();
  }

  v3 = qword_28141B5C8;
  v4 = unk_28141B5D0;
  v5 = qword_28141B5C8 == 0x6C74636B74 && unk_28141B5D0 == 0xE500000000000000;
  if (v5 || (sub_26F779748() & 1) != 0 || v3 == 0xD000000000000014 && 0x800000026F7800A0 == v4 || (sub_26F779748() & 1) != 0)
  {
    sub_26F7794F8();

    v6 = 0xE700000000000000;
    v7 = 0x6D617053746F6ELL;
    if (v1 != 1)
    {
      v7 = 1852989815;
      v6 = 0xE400000000000000;
    }

    if (v1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1835102323;
    }

    if (v1)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    MEMORY[0x274395240](v8, v9);

    MEMORY[0x274395240](0x697369636564202CLL, 0xEF3D6F666E496E6FLL);
    v10 = sub_26F779208();
  }

  else
  {
    v12 = 0x6D617053746F6ELL;
    if (v1 != 1)
    {
      v12 = 1852989815;
    }

    if (v1)
    {
      v10 = v12;
    }

    else
    {
      v10 = 1835102323;
    }
  }

  MEMORY[0x274395240](v10);

  return 0x6E6F697369636564;
}

uint64_t TKDecisioningService.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC8TrustKit20TKDecisioningService_logger;
  v4 = sub_26F779188();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TKDecisioningService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC8TrustKit20TKDecisioningService_logger;
  v4 = sub_26F779188();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F75B060()
{
  v1 = sub_26F779188();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  v6 = type metadata accessor for ClientAnalyticsManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  if (qword_28141B5B0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v1, qword_28141B608);
  v12 = *(v2 + 16);
  v12(v9 + v10, v11, v1);
  v13 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_eligibilityManager;
  v14 = type metadata accessor for EligibilityManager();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  if (qword_28141B5A8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_28141B5F0);
  v12(v17 + v18, v19, v1);
  *(v9 + v13) = v17;
  *(v0 + 24) = v9;
  v20 = type metadata accessor for SignpostsManager(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 112) = MEMORY[0x277D84F98];
  if (qword_28141B5A0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v1, qword_28141B5D8);
  v12(v5, v24, v1);
  sub_26F7790D8();
  v12(v23 + OBJC_IVAR____TtC8TrustKit16SignpostsManager_logger, v11, v1);
  *(v0 + 32) = v23;
  *(v0 + 40) = xmmword_26F77BBE0;
  v25 = OBJC_IVAR____TtC8TrustKit20TKDecisioningService_logger;
  if (qword_28141B5B8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v1, qword_28141B620);
  v12(v0 + v25, v26, v1);
  return v0;
}

id sub_26F75B350()
{
  v0 = objc_allocWithZone(type metadata accessor for ServerClient());
  result = sub_26F754794(0);
  qword_28141B318 = result;
  return result;
}

uint64_t sub_26F75B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v4 + 24) = v10;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  return MEMORY[0x2822009F8](sub_26F75B444, 0, 0);
}

uint64_t sub_26F75B444()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D859B8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_26F75B52C;
  v4 = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x282200740](v0 + 56, v4, v5, 0, 0, &unk_26F77C120, v1, v6);
}

uint64_t sub_26F75B52C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_26F75B6B8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_26F75B648;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26F75B648()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 56);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_26F75B6B8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[6];

  return v4(0);
}

uint64_t sub_26F75B734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75B7D4, 0, 0);
}

uint64_t sub_26F75B7D4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_26F779338();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_26F7576F0(v1, &unk_26F77C188, v7);
  sub_26F75E244(v1);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_26F7576F0(v1, &unk_26F77C198, v8);
  sub_26F75E244(v1);
  v9 = *(MEMORY[0x277D85818] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF718, &unk_26F77C1A0);
  *v10 = v0;
  v10[1] = sub_26F75B9C8;
  v12 = v0[2];

  return MEMORY[0x2822004D0](v0 + 8, 0, 0, v11);
}

uint64_t sub_26F75B9C8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26F75BB8C;
  }

  else
  {
    v3 = sub_26F75BADC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F75BADC()
{
  if (*(v0 + 64))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 40);
    v2 = **(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779388();

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_26F75BB8C()
{
  v1 = *(v0 + 40);
  v2 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779388();

  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3();
}

uint64_t sub_26F75BC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75BCD0, 0, 0);
}

uint64_t sub_26F75BCD0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_26F779338();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_26F7576F0(v1, &unk_26F77C138, v7);
  sub_26F75E244(v1);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_26F7576F0(v1, &unk_26F77C148, v8);
  sub_26F75E244(v1);
  v9 = *(MEMORY[0x277D85818] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF710, &qword_26F77C150);
  *v10 = v0;
  v10[1] = sub_26F75BEBC;
  v12 = v0[2];

  return MEMORY[0x2822004D0](v0 + 8, 0, 0, v11);
}

uint64_t sub_26F75BEBC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26F75C090;
  }

  else
  {
    v3 = sub_26F75BFD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_26F75BFD0()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = **(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779388();

    v4 = *(v0 + 8);

    v4(v1 & 1);
  }
}

uint64_t sub_26F75C090()
{
  v1 = *(v0 + 40);
  v2 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779388();

  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3(0);
}

uint64_t sub_26F75C134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75C1D4, 0, 0);
}

uint64_t sub_26F75C1D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_26F779338();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_26F7576F0(v1, &unk_26F77C0E8, v7);
  sub_26F75E244(v1);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_26F7576F0(v1, &unk_26F77C0F8, v8);
  sub_26F75E244(v1);
  v9 = *(MEMORY[0x277D85818] + 4);
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F8, &unk_26F77C100);
  *v10 = v0;
  v10[1] = sub_26F75C3C0;
  v12 = v0[5];

  return MEMORY[0x2822004D0](v0 + 2, 0, 0, v11);
}

uint64_t sub_26F75C3C0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_26F75C58C;
  }

  else
  {
    v3 = sub_26F75C4D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F75C4D4()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[8];
    v4 = v0[4];
    v3 = v0[5];
    *v4 = v0[2];
    *(v4 + 8) = v1;
    v5 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779388();

    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26F75C58C()
{
  v1 = *(v0 + 64);
  v2 = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779388();

  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3();
}

uint64_t sub_26F75C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75C64C, 0, 0);
}

uint64_t sub_26F75C64C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26F75C768;
  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_26F75C768()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26F75F014;
  }

  else
  {
    v3 = sub_26F75F02C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F75C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75C89C, 0, 0);
}

uint64_t sub_26F75C89C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26F75C9B8;
  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_26F75C9B8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26F75CB30;
  }

  else
  {
    v3 = sub_26F75CACC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F75CACC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F75CB30()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_26F75CB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_26F7795B8();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_26F7795A8();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75CCBC, 0, 0);
}

uint64_t sub_26F75CCBC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_26F779588();
  sub_26F779598();
  v8 = *(v4 + 8);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_26F7797C8();
  v9 = *(MEMORY[0x277D857F0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v11 = sub_26F75E3D0();
  *v10 = v0;
  v10[1] = sub_26F75CDEC;
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  return MEMORY[0x282200488](v12, v0 + 16, v13, v14, v11);
}

uint64_t sub_26F75CDEC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v12 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[14];
  v4 = v2[15];
  if (v0)
  {
    v6 = v2[13];
    v7 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v6, v7);
    v8 = sub_26F75F020;
  }

  else
  {
    v9 = v2[13];
    v10 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v9, v10);
    v8 = sub_26F75F024;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26F75CF68(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_26F7795B8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_26F7795A8();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75D090, 0, 0);
}

uint64_t sub_26F75D090()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_26F779588();
  sub_26F779598();
  v8 = *(v4 + 8);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_26F7797C8();
  v9 = *(MEMORY[0x277D857F0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v11 = sub_26F75E3D0();
  *v10 = v0;
  v10[1] = sub_26F75D1C0;
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  return MEMORY[0x282200488](v12, v0 + 16, v13, v14, v11);
}

uint64_t sub_26F75D1C0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v12 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[14];
  v4 = v2[15];
  if (v0)
  {
    v6 = v2[13];
    v7 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v6, v7);
    v8 = sub_26F75D3E4;
  }

  else
  {
    v9 = v2[13];
    v10 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v9, v10);
    v8 = sub_26F75D33C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26F75D33C()
{
  sub_26F75E428();
  swift_allocError();
  swift_willThrow();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_26F75D3E4()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_26F75D468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_26F7795B8();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_26F7795A8();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75D590, 0, 0);
}

uint64_t sub_26F75D590()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_26F779588();
  sub_26F779598();
  v8 = *(v4 + 8);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_26F7797C8();
  v9 = *(MEMORY[0x277D857F0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v11 = sub_26F75E3D0();
  *v10 = v0;
  v10[1] = sub_26F75D6C0;
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  return MEMORY[0x282200488](v12, v0 + 16, v13, v14, v11);
}

uint64_t sub_26F75D6C0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v12 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[14];
  v4 = v2[15];
  if (v0)
  {
    v6 = v2[13];
    v7 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v6, v7);
    v8 = sub_26F75D8E0;
  }

  else
  {
    v9 = v2[13];
    v10 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5(v9, v10);
    v8 = sub_26F75D83C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26F75D83C()
{
  sub_26F75E428();
  swift_allocError();
  swift_willThrow();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26F75D8E0()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26F75D960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_26F75DA00;

  return sub_26F75CF68(a2, a3);
}

uint64_t sub_26F75DA00(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_26F75DB14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F7486D8;

  return sub_26F75D960(a1, v5, v4);
}

uint64_t sub_26F75DBCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F75DC30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26F75DC48(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F7486D8;

  return sub_26F759608(a1, v1 + 16, v4);
}

unint64_t sub_26F75DCF8()
{
  result = qword_2806EF6D8;
  if (!qword_2806EF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF6D8);
  }

  return result;
}

unint64_t sub_26F75DD50()
{
  result = qword_2806EF6E0;
  if (!qword_2806EF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF6E0);
  }

  return result;
}

unint64_t sub_26F75DDA8()
{
  result = qword_2806EF6E8;
  if (!qword_2806EF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF6E8);
  }

  return result;
}

uint64_t type metadata accessor for TKDecisioningService()
{
  result = qword_28141B2F0;
  if (!qword_28141B2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F75DE50()
{
  result = sub_26F779188();
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

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26F75DF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_26F75DF88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F75E030(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F748118;

  return sub_26F75D468(a1, v5, v4);
}

uint64_t sub_26F75E0DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F7486D8;

  return sub_26F75C134(a1, a2, v7, v6);
}

uint64_t sub_26F75E190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C62C(a1, v4, v5, v6);
}

uint64_t sub_26F75E244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F75E2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C87C(a1, v4, v5, v6);
}

uint64_t sub_26F75E360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F75E3D0()
{
  result = qword_28141B148;
  if (!qword_28141B148)
  {
    sub_26F7795B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141B148);
  }

  return result;
}

unint64_t sub_26F75E428()
{
  result = qword_2806EF700;
  if (!qword_2806EF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF700);
  }

  return result;
}

uint64_t sub_26F75E47C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_26F75E490(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_26F75E490(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_26F75E4D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_26F75E4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_26F75F028;

  return sub_26F75BC30(a2, a3, a4);
}

uint64_t sub_26F75E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75E5C0, 0, 0);
}

uint64_t sub_26F75E5C0()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26F75E6DC;

  return v6(v0 + 10);
}

uint64_t sub_26F75E6DC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26F75F014;
  }

  else
  {
    v3 = sub_26F75F01C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F75E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75E810, 0, 0);
}

uint64_t sub_26F75E810()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26F75E92C;

  return v6(v0 + 10);
}

uint64_t sub_26F75E92C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26F75CB30;
  }

  else
  {
    v3 = sub_26F75EA40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F75EA40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  *v2 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F75EAB0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F7486D8;

  return sub_26F75E4F0(a1, a2, v7, v6);
}

uint64_t sub_26F75EB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75E5A0(a1, v4, v5, v6);
}

uint64_t sub_26F75EC40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75E7F0(a1, v4, v5, v6);
}

uint64_t sub_26F75ED08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F7486D8;

  return sub_26F75CB94(a1, v5, v4);
}

uint64_t sub_26F75EDB4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F7486D8;

  return sub_26F75B734(a1, a2, v7, v6);
}

uint64_t sub_26F75EE68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C62C(a1, v4, v5, v6);
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F75EF5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C62C(a1, v4, v5, v6);
}

uint64_t sub_26F75F030()
{
  v1 = OBJC_IVAR____TtC8TrustKit22TrustKitUIServerClient_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustKitUIServerClient()
{
  result = qword_2806EF730;
  if (!qword_2806EF730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F75F140()
{
  result = sub_26F779188();
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

void sub_26F75F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_26F7793B8();
  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xE000000000000000;
  sub_26F7794F8();
  MEMORY[0x274395240](0xD00000000000002FLL, 0x800000026F7802F0);
  MEMORY[0x274395240](a1, a2);
  MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
  MEMORY[0x274395240](a3, a4);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v10, 0, 0xE000000000000000, 0xD000000000000059, 0x800000026F7803A0, 75);

  v11 = *(v4 + 24);
  if (!v11 || (v32 = &unk_287FCC678, (v12 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    v21 = sub_26F7793C8();
    sub_26F756E10(v21, 0xD00000000000002CLL, 0x800000026F780400, 0xD000000000000059, 0x800000026F7803A0, 78);
    return;
  }

  v13 = v12;
  v27 = v11;
  v14 = sub_26F779238();
  v15 = sub_26F779238();
  v16 = [objc_opt_self() attributeWithDomain:v14 name:v15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7A0, qword_26F77C210);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26F77C1B0;
  *(v17 + 32) = v16;
  sub_26F75FCC4();
  v18 = v16;
  v19 = sub_26F7792C8();

  v20 = [v13 remoteTargetWithLaunchingAssertionAttributes_];

  if (v20)
  {
    sub_26F779468();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B0, &qword_26F77C228);
    if (swift_dynamicCast())
    {
      v22 = sub_26F779238();
      v23 = sub_26F779238();
      [v28 bannerWith:v22 and:v23];

      v24 = *(v5 + 24);
      if (v24)
      {
        v25 = v24;
        [v25 invalidate];
      }

      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    sub_26F74B148(v31);
  }

  v26 = sub_26F7793C8();
  sub_26F756E10(v26, 0xD00000000000002FLL, 0x800000026F780450, 0xD000000000000059, 0x800000026F7803A0, 84);

LABEL_14:
}

void sub_26F75F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v48 = sub_26F7793B8();
  *&v52[0] = 0;
  *(&v52[0] + 1) = 0xE000000000000000;
  sub_26F7794F8();
  MEMORY[0x274395240]();
  MEMORY[0x274395240](a1, a2);
  MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
  MEMORY[0x274395240](a3, a4);
  MEMORY[0x274395240](0x547261646172202CLL, 0xED00003D656C7469);
  MEMORY[0x274395240](a5, a6);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F780320);
  MEMORY[0x274395240](a7, a8);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F780340);
  v21 = [a9 description];
  v22 = sub_26F779248();
  v24 = v23;

  MEMORY[0x274395240](v22, v24);

  MEMORY[0x274395240](0xD000000000000015, 0x800000026F780360);
  MEMORY[0x274395240](a10, a11);
  MEMORY[0x274395240](0xD000000000000018, 0x800000026F780380);
  MEMORY[0x274395240](a12, a13);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v48, 0, 0xE000000000000000, 0xD000000000000059, 0x800000026F7803A0, 93);

  v25 = *(v47 + 24);
  if (!v25 || (v53 = &unk_287FCC678, (v26 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    v36 = sub_26F7793C8();
    sub_26F756E10(v36, 0xD00000000000002CLL, 0x800000026F780400, 0xD000000000000059, 0x800000026F7803A0, 96);
    return;
  }

  v27 = v26;
  v28 = v25;
  v29 = sub_26F779238();
  v30 = sub_26F779238();
  v31 = [objc_opt_self() attributeWithDomain:v29 name:v30];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7A0, qword_26F77C210);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26F77C1B0;
  *(v32 + 32) = v31;
  sub_26F75FCC4();
  v33 = v31;
  v34 = sub_26F7792C8();

  v35 = [v27 remoteTargetWithLaunchingAssertionAttributes_];

  if (v35)
  {
    sub_26F779468();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52[0] = v50;
  v52[1] = v51;
  if (*(&v51 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B0, &qword_26F77C228);
    if (swift_dynamicCast())
    {
      v37 = v28;
      v38 = sub_26F779238();
      v39 = sub_26F779238();
      v40 = sub_26F779238();
      v41 = sub_26F779238();
      v42 = sub_26F779238();
      v43 = sub_26F779238();
      [v49 bannerWith:v38 and:v39 radarTitle:v40 radarDescription:v41 radarComponentID:a9 radarComponentName:v42 radarComponentVersion:v43];

      v44 = *(v47 + 24);
      if (v44)
      {
        v45 = v44;
        [v45 invalidate];
      }

      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    sub_26F74B148(v52);
  }

  v46 = sub_26F7793C8();
  sub_26F756E10(v46, 0xD00000000000002FLL, 0x800000026F780450, 0xD000000000000059, 0x800000026F7803A0, 102);

LABEL_14:
}

unint64_t sub_26F75FCC4()
{
  result = qword_2806EF7A8;
  if (!qword_2806EF7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806EF7A8);
  }

  return result;
}

uint64_t sub_26F75FD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_26F7625DC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_26F768DE0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_26F762B0C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_26F762090(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_26F75FE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26F754784(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_26F762754(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_26F763768(a1, &qword_2806EF4B0, &qword_26F77C2E0);
    sub_26F7615FC(a2, a3, v10);

    return sub_26F763768(v10, &qword_2806EF4B0, &qword_26F77C2E0);
  }

  return result;
}

uint64_t sub_26F75FED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SignpostsManager.SignpostState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_26F763768(a1, &qword_2806EF7B8, &qword_26F77C2B8);
    sub_26F7616A0(a2, a3, v10);

    return sub_26F763768(v10, &qword_2806EF7B8, &qword_26F77C2B8);
  }

  else
  {
    sub_26F761598(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_26F7628A4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void sub_26F760098(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v93) = a6;
  v92 = a5;
  v89 = sub_26F779118();
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_26F7790C8();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v83[-v17];
  MEMORY[0x28223BE20](v16);
  v97 = &v83[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v83[-v24];
  v26 = type metadata accessor for SignpostsManager.SignpostState(0);
  v96 = *(v26 - 8);
  v27 = *(v96 + 64);
  MEMORY[0x28223BE20](v26);
  v98 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_26F7790E8() & 1) == 0)
  {
    v39 = sub_26F7793D8();
    sub_26F756E10(v39, 0xD000000000000036, 0x800000026F7804D0, 0xD000000000000055, 0x800000026F780510, 21);
    return;
  }

  v86 = a1;
  v101 = sub_26F779508();
  v102 = v29;
  MEMORY[0x274395240](45, 0xE100000000000000);
  MEMORY[0x274395240](a4, v92);
  v30 = v101;
  v31 = v102;
  swift_beginAccess();
  v32 = *(v6 + 112);
  v33 = *(v32 + 16);
  v34 = a3;
  v92 = v30;
  if (v33)
  {

    v35 = sub_26F768DE0(v30, v31);
    if (v36)
    {
      v37 = v96;
      sub_26F7614D8(*(v32 + 56) + *(v96 + 72) * v35, v25);

      v38 = *(v37 + 56);
      v38(v25, 0, 1, v26);
      sub_26F761598(v25, v98);
      goto LABEL_10;
    }
  }

  v84 = a3;
  v40 = v98;
  v85 = v31;
  v41 = v96;
  v38 = *(v96 + 56);
  v38(v25, 1, 1, v26);
  sub_26F7790F8();
  sub_26F7790A8();
  *&v40[*(v26 + 20)] = 0;
  if ((*(v41 + 48))(v25, 1, v26) != 1)
  {
    sub_26F763768(v25, &qword_2806EF7B8, &qword_26F77C2B8);
  }

  v31 = v85;
  v34 = v84;
LABEL_10:
  sub_26F7614D8(v98, v23);
  v38(v23, 0, 1, v26);
  swift_beginAccess();

  sub_26F75FED8(v23, v92, v31);
  swift_endAccess();
  v42 = v97;
  if ((v93 & 1) == 0)
  {
LABEL_16:
    v50 = v94;
    v49 = v95;
    v93 = *(v94 + 16);
    v93(v42, v98, v95);
    v51 = sub_26F7790F8();
    v52 = sub_26F7793F8();
    if ((sub_26F779418() & 1) == 0)
    {
LABEL_20:

      v53 = v97;
LABEL_27:
      v93(v91, v53, v49);
      v60 = sub_26F779148();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      v63 = sub_26F779138();
      (*(v50 + 8))(v53, v49);
      v64 = sub_26F760B48();
      v65 = sub_26F760A74(v100, v92, v31);
      v67 = v66;
      if (!(*(v96 + 48))(v66, 1, v26))
      {
        v68 = *(v26 + 20);
        v69 = *(v67 + v68);
        *(v67 + v68) = v63;
      }

      (v65)(v100, 0);
      (v64)(&v101, 0);

      goto LABEL_30;
    }

    LODWORD(v90) = v52;
    if ((v34 & 1) == 0)
    {
      if (!v86)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_26:
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v101 = v55;
      *v54 = 136315138;
      v56 = sub_26F779508();
      v58 = sub_26F760F20(v56, v57, &v101);

      *(v54 + 4) = v58;
      v53 = v97;
      v59 = sub_26F7790B8();
      _os_signpost_emit_with_name_impl(&dword_26F744000, v51, v90, v59, v86, "%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x274395F50](v55, -1, -1);
      MEMORY[0x274395F50](v54, -1, -1);

      v50 = v94;
      v49 = v95;
      goto LABEL_27;
    }

    if (v86 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v86 & 0xFFFFF800) == 0xD800)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v86 >> 16 <= 0x10)
      {
        v86 = &v99;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v43 = *(v26 + 20);
  if (!*&v98[v43])
  {
LABEL_30:
    sub_26F76153C(v98);

    return;
  }

  v44 = *&v98[v43];

  v45 = sub_26F7790F8();
  v46 = v90;
  sub_26F779128();
  v47 = sub_26F7793E8();
  if (sub_26F779418())
  {
    if (v34)
    {
      if (v86 >> 32)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if ((v86 & 0xFFFFF800) == 0xD800)
      {
LABEL_46:
        __break(1u);
        return;
      }

      if (v86 >> 16 > 0x10)
      {
        goto LABEL_44;
      }

      v48 = &v101;
    }

    else
    {

      v48 = v86;
      if (!v86)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    v70 = v89;
    v71 = v88;
    v72 = v87;
    v86 = v48;

    sub_26F779158();

    if ((*(v71 + 88))(v72, v70) == *MEMORY[0x277D85B00])
    {
      v73 = 0;
      v74 = 0;
      v75 = "[Error] Interval already ended";
    }

    else
    {
      (*(v71 + 8))(v72, v70);
      v75 = "%s";
      v74 = 2;
      v73 = 1;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v101 = v77;
    *v76 = v74;
    *(v76 + 1) = v73;
    *(v76 + 2) = 2080;
    v78 = sub_26F779508();
    v80 = sub_26F760F20(v78, v79, &v101);

    *(v76 + 4) = v80;
    v81 = v90;
    v82 = sub_26F7790B8();
    _os_signpost_emit_with_name_impl(&dword_26F744000, v45, v47, v82, v86, v75, v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x274395F50](v77, -1, -1);
    MEMORY[0x274395F50](v76, -1, -1);

    (*(v94 + 8))(v81, v95);
  }

  else
  {

    (*(v94 + 8))(v46, v95);
  }

  sub_26F76153C(v98);
}

void (*sub_26F760A74(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26F76304C(v6, a2, a3);
  return sub_26F760AFC;
}

void sub_26F760AFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26F760B9C()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC8TrustKit16SignpostsManager_signposter;
  v3 = sub_26F779108();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC8TrustKit16SignpostsManager_logger;
  v5 = sub_26F779188();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26F760C84()
{
  result = sub_26F779108();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26F779188();
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

void sub_26F760DB0()
{
  sub_26F7790C8();
  if (v0 <= 0x3F)
  {
    sub_26F760E34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F760E34()
{
  if (!qword_28141B5C0)
  {
    sub_26F779148();
    v0 = sub_26F779428();
    if (!v1)
    {
      atomic_store(v0, &qword_28141B5C0);
    }
  }
}

uint64_t sub_26F760E8C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26F760EC4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26F760F20(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26F760F20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26F760FEC(v11, 0, 0, 1, a1, a2);
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
    sub_26F74B0EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26F760FEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26F7610F8(a5, a6);
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
    result = sub_26F779528();
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

uint64_t sub_26F7610F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26F761144(a1, a2);
  sub_26F761274(&unk_287FC5E48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26F761144(uint64_t a1, unint64_t a2)
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

  v6 = sub_26F761360(v5, 0);
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

  result = sub_26F779528();
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
        v10 = sub_26F7792B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26F761360(v10, 0);
        result = sub_26F7794E8();
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

uint64_t sub_26F761274(uint64_t result)
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

  result = sub_26F7613D4(result, v12, 1, v3);
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

void *sub_26F761360(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C8, &qword_26F77C2C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26F7613D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C8, &qword_26F77C2C8);
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

_BYTE **sub_26F7614C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26F7614D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F76153C(uint64_t a1)
{
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F761598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_26F7615FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26F768DE0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F762C78();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_26F754784((*(v12 + 56) + 32 * v9), a3);
    sub_26F762240(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26F7616A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26F768DE0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F762E1C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for SignpostsManager.SignpostState(0);
    v22 = *(v15 - 8);
    sub_26F761598(v14 + *(v22 + 72) * v9, a3);
    sub_26F7623F0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SignpostsManager.SignpostState(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26F7617F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D0, &qword_26F77C2D0);
  v39 = a2;
  result = sub_26F7795F8();
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
      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
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

uint64_t sub_26F761A9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D8, &qword_26F77C2D8);
  v36 = a2;
  result = sub_26F7795F8();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26F754784(v25, v37);
      }

      else
      {
        sub_26F74B0EC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26F754784(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26F761D54(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SignpostsManager.SignpostState(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C0, &qword_26F77C2C0);
  v44 = a2;
  result = sub_26F7795F8();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_26F761598(v31, v45);
      }

      else
      {
        sub_26F7614D8(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_26F761598(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_26F762090(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F779478() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26F779848();

      sub_26F779298();
      v13 = sub_26F779888();

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

uint64_t sub_26F762240(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F779478() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_26F779848();

      sub_26F779298();
      v14 = sub_26F779888();

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
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
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

unint64_t sub_26F7623F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F779478() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26F779848();

      sub_26F779298();
      v13 = sub_26F779888();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26F7625DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F768DE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26F7617F8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26F768DE0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26F779798();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26F762B0C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

_OWORD *sub_26F762754(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F768DE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26F762C78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26F761A9C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26F768DE0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26F779798();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_26F754784(a1, v23);
  }

  else
  {
    sub_26F762A08(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26F7628A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26F768DE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_26F762E1C();
      goto LABEL_7;
    }

    sub_26F761D54(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_26F768DE0(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26F779798();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72) * v12;

    return sub_26F763704(a1, v20);
  }

LABEL_13:
  sub_26F762A74(v12, a2, a3, a1, v18);
}

_OWORD *sub_26F762A08(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26F754784(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26F762A74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SignpostsManager.SignpostState(0);
  result = sub_26F761598(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_26F762B0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D0, &qword_26F77C2D0);
  v2 = *v0;
  v3 = sub_26F7795E8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_26F762C78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D8, &qword_26F77C2D8);
  v2 = *v0;
  v3 = sub_26F7795E8();
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
        sub_26F74B0EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26F754784(v25, (*(v4 + 56) + v22));
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

void *sub_26F762E1C()
{
  v1 = v0;
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C0, &qword_26F77C2C0);
  v5 = *v0;
  v6 = sub_26F7795E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_26F7614D8(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_26F761598(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void (*sub_26F76304C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_26F763608(v8);
  v8[9] = sub_26F763158(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26F7630F8;
}

void sub_26F7630F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26F763158(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for SignpostsManager.SignpostState(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_26F768DE0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_26F761598(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_26F763420;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_26F762E1C();
      goto LABEL_16;
    }

    sub_26F761D54(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_26F768DE0(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_26F779798();
  __break(1u);
  return result;
}

void sub_26F763420(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_26F76363C(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_26F761598(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_26F761598(v13, v14);
        sub_26F762A74(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_26F76363C(v5, v17);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_26F761598(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_26F761598(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_26F763768(v9, &qword_2806EF7B8, &qword_26F77C2B8);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_26F7636AC(*(v20 + 48) + 16 * v19);
    sub_26F7623F0(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_26F763768(v23, &qword_2806EF7B8, &qword_26F77C2B8);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_26F763608(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26F763630;
}

uint64_t sub_26F76363C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F763704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F763768(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26F7637C8()
{
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
  v1[10] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v1[11] = v4;
  v5 = sub_26F778EF8();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[15] = v8;
  *v8 = v1;
  v8[1] = sub_26F763914;

  return sub_26F764320(v4);
}

uint64_t sub_26F763914()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26F763BF8;
  }

  else
  {
    v3 = sub_26F763A28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F763A28()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = *(v2 + 16);
    *(v0 + 16) = *v2;
    *(v0 + 24) = v4;
    *(v0 + 32) = v5;
    sub_26F747008();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    v7 = *(v0 + 112);
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), v2, *(v0 + 96));
    v11 = [objc_opt_self() defaultSessionConfiguration];
    *(v0 + 136) = [objc_opt_self() sessionWithConfiguration_];

    v12 = *(MEMORY[0x277CC9D18] + 4);
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_26F763C68;
    v14 = *(v0 + 112);

    return MEMORY[0x28211ECF8](v14, 0);
  }
}

uint64_t sub_26F763BF8()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26F763C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 144);
  v9 = *v4;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = v3;

  if (v3)
  {
    v7 = sub_26F764280;
  }

  else
  {
    v7 = sub_26F763D80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26F763D80()
{
  v1 = v0[21];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    if ([v2 statusCode] == 200)
    {
      v4 = v0[22];
      v6 = v0[19];
      v5 = v0[20];
      v7 = sub_26F778F28();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_26F778F18();
      sub_26F7698D0();
      sub_26F778F08();
      v10 = v0[20];
      v11 = v0[21];
      v12 = v0[19];
      v13 = v0[17];
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[12];
      if (v4)
      {
        (*(v15 + 8))(v0[14], v0[12]);

        sub_26F74F35C(v12, v10);
        v17 = v0[14];
        v18 = v0[11];

        v19 = v0[1];

        return v19();
      }

      sub_26F74F35C(v12, v10);

      v26 = v0[5];
      v27 = v0[6];
      (*(v15 + 8))(v14, v16);
    }

    else
    {
      v40 = v0[20];
      v42 = v0[21];
      v36 = v0[17];
      v38 = v0[19];
      v4 = v0[13];
      v44 = v0[12];
      v46 = v0[14];
      v34 = v0[9];
      v28 = sub_26F7793C8();
      sub_26F7794F8();

      v0[7] = [v3 statusCode];
      v29 = sub_26F779738();
      MEMORY[0x274395240](v29);

      MEMORY[0x274395240](32032, 0xE200000000000000);
      sub_26F756E10(v28, 0xD000000000000022, 0x800000026F780B20, 0xD000000000000051, 0x800000026F780AC0, 45);

      sub_26F7794F8();

      v0[8] = [v3 statusCode];
      v30 = sub_26F779738();
      MEMORY[0x274395240](v30);

      MEMORY[0x274395240](32032, 0xE200000000000000);

      sub_26F74F35C(v38, v40);
      v26 = 0xD000000000000022;
      v27 = 0x800000026F780B20;
      (*(v4 + 8))(v46, v44);
      LODWORD(v4) = 1;
    }
  }

  else
  {
    v39 = v0[20];
    v41 = v0[21];
    v35 = v0[17];
    v37 = v0[19];
    v21 = v0[13];
    v43 = v0[12];
    v45 = v0[14];
    v22 = v0[9];
    v23 = sub_26F7793C8();
    sub_26F7794F8();
    MEMORY[0x274395240](0xD00000000000003ALL, 0x800000026F780840);
    v24 = sub_26F779268();
    MEMORY[0x274395240](v24);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v23, 0, 0xE000000000000000, 0xD000000000000051, 0x800000026F780AC0, 40);

    sub_26F7794F8();
    MEMORY[0x274395240](0xD00000000000003ALL, 0x800000026F780840);
    v25 = sub_26F779268();
    MEMORY[0x274395240](v25);

    MEMORY[0x274395240](32032, 0xE200000000000000);

    sub_26F74F35C(v37, v39);
    v26 = 0;
    v27 = 0xE000000000000000;
    (*(v21 + 8))(v45, v43);
    LODWORD(v4) = 1;
  }

  v31 = v0[14];
  v32 = v0[11];

  v33 = v0[1];

  return v33(v26, v27, v4 | (v4 << 8));
}

uint64_t sub_26F764280()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 176);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26F764320(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26F778EF8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF828, &qword_26F77C3B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_26F779008();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F764480, 0, 0);
}

uint64_t sub_26F764480()
{
  if (qword_28141B570 != -1)
  {
    swift_once();
  }

  if (qword_28141B578 && (v1 = qword_28141B578, v2 = sub_26F779238(), v3 = [v1 BOOLForKey_], v2, v1, v3))
  {
    v4 = "eports.apple.com/v1/public_key";
    v5 = 0xD000000000000033;
  }

  else
  {
    v4 = "key. { statusCode=";
    v5 = 0xD00000000000002ELL;
  }

  v6 = v0[9];
  v27 = v0[8];
  v7 = v0[7];
  v8 = v0[3];
  v9 = sub_26F7793B8();
  sub_26F7794F8();

  MEMORY[0x274395240](v5, v4 | 0x8000000000000000);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v9, 0xD000000000000023, 0x800000026F780990, 0xD000000000000051, 0x800000026F780AC0, 71);

  sub_26F778FF8();

  if ((*(v6 + 48))(v7, 1, v27) == 1)
  {
    v10 = v0[2];
    sub_26F763768(v0[7], &qword_2806EF828, &qword_26F77C3B0);
    v11 = sub_26F7793B8();
    sub_26F7794F8();

    v12 = sub_26F779268();
    MEMORY[0x274395240](v12);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v11, 0xD000000000000018, 0x800000026F7809C0, 0xD000000000000051, 0x800000026F780AC0, 74);

    *v10 = 0xD000000000000015;
    *(v10 + 8) = 0x800000026F7809E0;
    *(v10 + 16) = 2;
  }

  else
  {
    v13 = v0[10];
    v14 = v0[11];
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[6];
    v18 = v0[4];
    v19 = v0[5];
    v20 = v0[2];
    (*(v16 + 32))(v14, v0[7], v15);
    (*(v16 + 16))(v13, v14, v15);
    sub_26F778EC8();
    sub_26F778EB8();
    (*(v16 + 8))(v14, v15);
    (*(v19 + 32))(v20, v17, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
  swift_storeEnumTagMultiPayload();
  v22 = v0[10];
  v21 = v0[11];
  v24 = v0[6];
  v23 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_26F76489C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
  v2[21] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v2[22] = v6;
  v7 = sub_26F778EF8();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v9 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[26] = v10;
  *v10 = v2;
  v10[1] = sub_26F7649F4;

  return sub_26F7652C8(v6, a1);
}

uint64_t sub_26F7649F4()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_26F764CD8;
  }

  else
  {
    v3 = sub_26F764B08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F764B08()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = *(v2 + 16);
    *(v0 + 112) = *v2;
    *(v0 + 120) = v4;
    *(v0 + 128) = v5;
    sub_26F747008();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(*(v0 + 192) + 32))(*(v0 + 200), v2, *(v0 + 184));
    v11 = [objc_opt_self() defaultSessionConfiguration];
    *(v0 + 224) = [objc_opt_self() sessionWithConfiguration_];

    v12 = *(MEMORY[0x277CC9D18] + 4);
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = sub_26F764D48;
    v14 = *(v0 + 200);

    return MEMORY[0x28211ECF8](v14, 0);
  }
}

uint64_t sub_26F764CD8()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26F764D48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 232);
  v11 = *v4;
  *(v7 + 240) = a3;
  *(v7 + 248) = v3;

  if (v3)
  {
    v9 = sub_26F765228;
  }

  else
  {
    sub_26F74F35C(a1, a2);
    v9 = sub_26F764E78;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26F764E78()
{
  v1 = *(v0 + 240);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statusCode];
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 184);
    if (v4 == 200)
    {

      (*(v8 + 8))(v7, v9);
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_7;
    }

    v32 = *(v0 + 160);
    v29 = sub_26F7793C8();
    v28 = v7;
    sub_26F7794F8();

    *(v0 + 136) = [v3 statusCode];
    v22 = sub_26F779738();
    MEMORY[0x274395240](v22);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v29, 0xD000000000000026, 0x800000026F780920, 0xD000000000000054, 0x800000026F780880, 37);

    sub_26F7794F8();

    *(v0 + 144) = [v3 statusCode];
    v23 = sub_26F779738();
    MEMORY[0x274395240](v23);

    MEMORY[0x274395240](32032, 0xE200000000000000);

    v11 = 0xD000000000000026;
    v12 = 0x800000026F780920;
    (*(v8 + 8))(v28, v9);
  }

  else
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    v15 = *(v0 + 192);
    v30 = *(v0 + 184);
    v31 = *(v0 + 200);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v18 = sub_26F7793C8();
    sub_26F7794F8();
    MEMORY[0x274395240](0xD00000000000003ALL, 0x800000026F780840);
    v19 = *v17;
    v20 = v17[2];
    *(v0 + 32) = v17[1];
    *(v0 + 48) = v20;
    *(v0 + 16) = v19;
    sub_26F769640(v17, v0 + 64);
    v21 = sub_26F779268();
    MEMORY[0x274395240](v21);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v18, 0, 0xE000000000000000, 0xD000000000000054, 0x800000026F780880, 32);

    v12 = 0x800000026F7808E0;
    (*(v15 + 8))(v31, v30);
    v11 = 0xD000000000000037;
  }

  v10 = 1;
LABEL_7:
  v24 = *(v0 + 200);
  v25 = *(v0 + 176);

  v26 = *(v0 + 8);

  return v26(v11, v12, v10 | (v10 << 8));
}

uint64_t sub_26F765228()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26F7652C8(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_26F778EF8();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF828, &qword_26F77C3B0) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = sub_26F779008();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v11 = *(*(sub_26F778F48() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v12 = sub_26F779058();
  v3[38] = v12;
  v13 = *(v12 - 8);
  v3[39] = v13;
  v14 = *(v13 + 64) + 15;
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F7654B4, 0, 0);
}

uint64_t sub_26F7654B4()
{
  v2 = *(v0 + 216);
  v4 = *v2;
  v3 = *(v2 + 8);
  v126 = v3;
  v118 = *v2;
  if (!v3)
  {
    v120 = 0;
    v122 = 0xE000000000000000;
    goto LABEL_20;
  }

  if (v3 >> 62)
  {
    v5 = sub_26F7795D8();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v128 = MEMORY[0x277D84F90];
      v6 = v4;

      sub_26F76901C(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
LABEL_64:
        swift_once();
        goto LABEL_33;
      }

      v7 = v128;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        do
        {
          v9 = MEMORY[0x2743954B0](v8, v3);
          v10 = SecCertificateCopyData(v9);
          v11 = sub_26F779048();
          v13 = v12;

          v14 = sub_26F779028();
          MEMORY[0x274395240](v14);

          MEMORY[0x274395240](10, 0xE100000000000000);
          MEMORY[0x274395240](0xD000000000000019, 0x800000026F780A80);
          sub_26F74F35C(v11, v13);
          swift_unknownObjectRelease();
          v16 = *(v128 + 16);
          v15 = *(v128 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_26F76901C((v15 > 1), v16 + 1, 1);
          }

          ++v8;
          *(v128 + 16) = v16 + 1;
          v17 = v128 + 16 * v16;
          *(v17 + 32) = 0xD00000000000001CLL;
          *(v17 + 40) = 0x800000026F780AA0;
        }

        while (v5 != v8);
      }

      else
      {
        v18 = (v3 + 32);
        do
        {
          v19 = *v18;
          v20 = SecCertificateCopyData(v19);
          v21 = sub_26F779048();
          v23 = v22;

          v24 = sub_26F779028();
          MEMORY[0x274395240](v24);

          MEMORY[0x274395240](10, 0xE100000000000000);
          MEMORY[0x274395240](0xD000000000000019, 0x800000026F780A80);
          sub_26F74F35C(v21, v23);

          v26 = *(v128 + 16);
          v25 = *(v128 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_26F76901C((v25 > 1), v26 + 1, 1);
          }

          *(v128 + 16) = v26 + 1;
          v27 = v128 + 16 * v26;
          *(v27 + 32) = 0xD00000000000001CLL;
          *(v27 + 40) = 0x800000026F780AA0;
          ++v18;
          --v5;
        }

        while (v5);
      }

      goto LABEL_19;
    }
  }

  v28 = v4;

  v7 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 200) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF680, &qword_26F77B990);
  sub_26F7696F4();
  v120 = sub_26F779228();
  v122 = v29;

  v2 = *(v0 + 216);
LABEL_20:
  v30 = *(v2 + 32);
  v31 = *(v2 + 40);
  if (v31 >> 62 == 2)
  {
    v32 = *(v30 + 16);
  }

  v33 = *(v0 + 320);
  v34 = *(v0 + 304);
  sub_26F7546E4(v30, v31);
  sub_26F779068();
  sub_26F76969C();
  sub_26F779438();
  if (*(v0 + 178))
  {
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
    v52 = MEMORY[0x277D84B78];
    v53 = MEMORY[0x277D84BC0];
    do
    {
      v54 = *(v0 + 177);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF848, &qword_26F77C3B8);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_26F77A180;
      *(v55 + 56) = v52;
      *(v55 + 64) = v53;
      *(v55 + 32) = v54;
      v56 = sub_26F779258();
      v58 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_26F768CD4(0, *(v35 + 2) + 1, 1, v35);
      }

      v60 = *(v35 + 2);
      v59 = *(v35 + 3);
      if (v60 >= v59 >> 1)
      {
        v35 = sub_26F768CD4((v59 > 1), v60 + 1, 1, v35);
      }

      v61 = *(v0 + 320);
      v62 = *(v0 + 304);
      *(v35 + 2) = v60 + 1;
      v63 = &v35[16 * v60];
      *(v63 + 4) = v56;
      *(v63 + 5) = v58;
      sub_26F779438();
    }

    while (*(v0 + 178) != 1);
  }

  v36 = *(v0 + 296);
  v37 = *(v0 + 216);
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  *(v0 + 184) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF680, &qword_26F77B990);
  sub_26F7696F4();
  v38 = sub_26F779228();
  v40 = v39;

  v42 = *(v37 + 16);
  v41 = *(v37 + 24);
  v43 = sub_26F778F88();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();

  sub_26F778F78();
  sub_26F778F38();
  sub_26F778F58();
  *(v0 + 16) = v42;
  *(v0 + 24) = v41;
  *(v0 + 32) = v120;
  *(v0 + 40) = v122;
  *(v0 + 48) = v38;
  *(v0 + 56) = v40;
  sub_26F769758();
  v3 = sub_26F778F68();
  v1 = v64;

  if (qword_28141B570 != -1)
  {
    goto LABEL_64;
  }

LABEL_33:
  v127 = v1;
  v121 = v3;
  if (qword_28141B578 && (v65 = qword_28141B578, v66 = sub_26F779238(), v67 = [v65 BOOLForKey_], v66, v65, (v67 & 1) != 0))
  {
    v68 = "X-Apple-FSR-Signature";
    v69 = 0xD000000000000036;
  }

  else
  {
    v68 = " report. { statusCode=";
    v69 = 0xD000000000000031;
  }

  v70 = *(v0 + 272);
  v123 = *(v0 + 264);
  v71 = *(v0 + 256);
  v72 = *(v0 + 224);
  v73 = sub_26F7793B8();
  sub_26F7794F8();

  MEMORY[0x274395240](v69, v68 | 0x8000000000000000);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v73, 0xD000000000000023, 0x800000026F780990, 0xD000000000000054, 0x800000026F780880, 74);

  sub_26F778FF8();

  if ((*(v70 + 48))(v71, 1, v123) != 1)
  {
    v81 = *(v0 + 280);
    v82 = *(v0 + 288);
    v84 = *(v0 + 264);
    v83 = *(v0 + 272);
    v85 = *(v0 + 248);
    (*(v83 + 32))(v82, *(v0 + 256), v84);
    (*(v83 + 16))(v81, v82, v84);
    sub_26F778EC8();
    sub_26F778EB8();
    sub_26F7546E4(v121, v127);
    sub_26F778ED8();
    result = sub_26F778EE8();
    v87 = v127 >> 62;
    if ((v127 >> 62) > 1)
    {
      v88 = 0;
      if (v87 != 2)
      {
        goto LABEL_50;
      }

      v90 = *(v121 + 16);
      v89 = *(v121 + 24);
      v91 = __OFSUB__(v89, v90);
      v88 = v89 - v90;
      if (!v91)
      {
LABEL_48:
        if (v88 < 0)
        {
          __break(1u);
        }

LABEL_50:
        v92 = *(v0 + 248);
        *(v0 + 192) = v88;
        v93 = sub_26F779738();
        MEMORY[0x274395240](v93);

        sub_26F778EE8();

        if (v126)
        {
          if (!v118)
          {

            sub_26F74F35C(v121, v127);

            goto LABEL_57;
          }

          v94 = v118;
          v95 = sub_26F74EC80(v121, v127, v94);
          v98 = v95;
          v99 = v97;
          if ((v97 & 0x100) != 0)
          {
            v125 = *(v0 + 288);
            v112 = *(v0 + 272);
            v119 = *(v0 + 264);
            v113 = *(v0 + 240);
            v116 = *(v0 + 232);
            v117 = *(v0 + 248);
            *(v0 + 160) = v95;
            *(v0 + 168) = v96;
            *(v0 + 176) = v97;
            v114 = v96;
            sub_26F747008();
            swift_willThrowTypedImpl();
            swift_allocError();
            *v115 = v98;
            *(v115 + 8) = v114;
            *(v115 + 16) = v99;

            sub_26F74F35C(v121, v127);
            (*(v113 + 8))(v117, v116);
            (*(v112 + 8))(v125, v119);
            v46 = *(v0 + 320);
            v47 = *(v0 + 288);
            v48 = *(v0 + 296);
            v49 = *(v0 + 280);
            v51 = *(v0 + 248);
            v50 = *(v0 + 256);

            v111 = *(v0 + 8);
            goto LABEL_59;
          }

          v100 = *(v0 + 248);
          v124 = v96;
          sub_26F779028();
          sub_26F778EE8();

          sub_26F7697AC(v98, v124, v99, 0);
        }

        else
        {
        }

        sub_26F74F35C(v121, v127);
LABEL_57:
        v102 = *(v0 + 240);
        v101 = *(v0 + 248);
        v103 = *(v0 + 232);
        v104 = *(v0 + 208);
        (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
        (*(v102 + 32))(v104, v101, v103);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
        goto LABEL_58;
      }

      __break(1u);
    }

    else if (!v87)
    {
      v88 = BYTE6(v127);
      goto LABEL_50;
    }

    LODWORD(v88) = HIDWORD(v121) - v121;
    if (__OFSUB__(HIDWORD(v121), v121))
    {
      __break(1u);
      return result;
    }

    v88 = v88;
    goto LABEL_48;
  }

  v74 = *(v0 + 256);
  v75 = *(v0 + 208);
  v76 = *(v0 + 216);
  sub_26F7694E0(v118, v126);
  sub_26F763768(v74, &qword_2806EF828, &qword_26F77C3B0);
  v77 = sub_26F7793B8();
  sub_26F7794F8();

  v79 = v76[1];
  v78 = v76[2];
  *(v0 + 64) = *v76;
  *(v0 + 80) = v79;
  *(v0 + 96) = v78;
  sub_26F769640(v76, v0 + 112);
  v80 = sub_26F779268();
  MEMORY[0x274395240](v80);

  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v77, 0xD000000000000018, 0x800000026F7809C0, 0xD000000000000054, 0x800000026F780880, 77);

  sub_26F74F35C(v121, v1);

  *v75 = 0xD000000000000015;
  *(v75 + 8) = 0x800000026F7809E0;
  *(v75 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
LABEL_58:
  swift_storeEnumTagMultiPayload();
  v105 = *(v0 + 320);
  v106 = *(v0 + 288);
  v107 = *(v0 + 296);
  v108 = *(v0 + 280);
  v110 = *(v0 + 248);
  v109 = *(v0 + 256);

  v111 = *(v0 + 8);
LABEL_59:

  return v111();
}

uint64_t sub_26F7661F8()
{
  v15 = v0;
  v1 = *(*(v0 + 264) + 16);
  *(v0 + 92) = 0u;
  *(v0 + 108) = 0u;
  *(v0 + 124) = 1;
  if (sub_26F76A25C(0, v0 + 92))
  {
    v2 = *(*(*(v0 + 264) + 40) + 16);
    v3 = swift_task_alloc();
    *(v0 + 272) = v3;
    *v3 = v0;
    v3[1] = sub_26F766478;

    return sub_26F7637C8();
  }

  else
  {
    v5 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F77A180;
    *(inited + 32) = 0x626967696C656E69;
    *(inited + 40) = 0xEA0000000000656CLL;
    sub_26F766F04();
    *(inited + 48) = sub_26F779408();
    v7 = sub_26F7693B4(inited);
    swift_setDeallocating();
    sub_26F763768(inited + 32, &qword_2806EF7F0, &qword_26F77C2F8);
    v8 = *(v5 + 48);
    v12 = 0xD000000000000025;
    v13 = 0x800000026F7805B0;
    v14 = 0;
    sub_26F74B1B0(1u, v7, &v12);

    sub_26F75E47C(v12, v13, v14);
    v9 = sub_26F7793C8();
    sub_26F756E10(v9, 0xD000000000000025, 0x800000026F7805B0, 0xD000000000000058, 0x800000026F7805E0, 37);
    sub_26F74AEE0();
    swift_allocError();
    *v10 = 0xD000000000000025;
    *(v10 + 8) = 0x800000026F7805B0;
    *(v10 + 16) = 0;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_26F766478(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  v6 = *(*v4 + 272);
  v9 = *v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  *(v5 + 90) = a3;
  *(v5 + 296) = v3;

  if (v3)
  {
    v7 = sub_26F766C14;
  }

  else
  {
    v7 = sub_26F766594;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26F766594()
{
  v54 = v0;
  v1 = *(v0 + 90);
  if ((v1 & 0x100) != 0)
  {
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    *(v0 + 152) = v13;
    *(v0 + 160) = v12;
    *(v0 + 168) = v1;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v11 = swift_allocError();
    *v14 = v13;
    *(v14 + 8) = v12;
    *(v14 + 16) = v1;
    *(v0 + 248) = v11;
    MEMORY[0x274395DF0]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 80);
      v17 = *(v0 + 88);
      if (v17 > 0x11)
      {
        v45 = sub_26F74705C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
        v47 = v46;
        sub_26F7694B8(v15, v16, v17);
        v19 = 2;
        v15 = v45;
        v16 = v47;
      }

      else
      {
        if (((1 << v17) & 0x4001) != 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v0 + 88);
        }

        if (((1 << v17) & 0x3BFFC) != 0)
        {
          v19 = 2;
        }

        else
        {
          v19 = v18;
        }
      }

      v20 = *(*(v0 + 264) + 48);
      v51 = v15;
      v52 = v16;
      v53 = v19;
      sub_26F75E4D8(v15, v16, v19);
      sub_26F74B1B0(1u, 0, &v51);

      sub_26F75E47C(v51, v52, v53);
      v21 = sub_26F7793C8();
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_26F7794F8();

      v51 = 0xD000000000000028;
      v52 = 0x800000026F780660;
      *(v0 + 128) = v15;
      *(v0 + 136) = v16;
      *(v0 + 144) = v19;
      sub_26F74AEE0();
      v22 = sub_26F7797F8();
      MEMORY[0x274395240](v22);

      MEMORY[0x274395240](32032, 0xE200000000000000);
      v23 = v51;
      v24 = v21;
      v25 = v52;
      v26 = 54;
      goto LABEL_28;
    }

    v27 = *(v0 + 264);
    v28 = sub_26F7793C8();
    v29 = 47;
LABEL_30:
    sub_26F756E10(v28, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, v29);
    sub_26F74AEE0();
    swift_allocError();
    *v43 = 0xD00000000000001ALL;
    *(v43 + 8) = 0x800000026F780640;
    *(v43 + 16) = 2;
    goto LABEL_31;
  }

  v2 = *(v0 + 296);
  v3 = sub_26F74F3B0(*(v0 + 280), *(v0 + 288));
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 90);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  if (v2)
  {
    v11 = v2;
    sub_26F7694D0(v9, v10, v8, 0);
LABEL_19:
    *(v0 + 256) = v11;
    MEMORY[0x274395DF0](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 176);
      v16 = *(v0 + 184);
      v36 = *(v0 + 192);
      if (v36 > 0x11)
      {
        v48 = sub_26F74705C(*(v0 + 176), *(v0 + 184), *(v0 + 192));
        v50 = v49;
        sub_26F7694B8(v15, v16, v36);
        v19 = 2;
        v15 = v48;
        v16 = v50;
      }

      else
      {
        if (((1 << v36) & 0x4001) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(v0 + 192);
        }

        if (((1 << v36) & 0x3BFFC) != 0)
        {
          v19 = 2;
        }

        else
        {
          v19 = v37;
        }
      }

      v38 = *(*(v0 + 264) + 48);
      v51 = v15;
      v52 = v16;
      v53 = v19;
      sub_26F75E4D8(v15, v16, v19);
      sub_26F74B1B0(1u, 0, &v51);

      sub_26F75E47C(v51, v52, v53);
      v39 = sub_26F7793C8();
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_26F7794F8();

      v51 = 0xD00000000000002DLL;
      v52 = 0x800000026F780690;
      *(v0 + 200) = v15;
      *(v0 + 208) = v16;
      *(v0 + 216) = v19;
      sub_26F74AEE0();
      v40 = sub_26F7797F8();
      MEMORY[0x274395240](v40);

      MEMORY[0x274395240](32032, 0xE200000000000000);
      v23 = v51;
      v24 = v39;
      v25 = v52;
      v26 = 70;
LABEL_28:
      sub_26F756E10(v24, v23, v25, 0xD000000000000058, 0x800000026F7805E0, v26);

      swift_allocError();
      *v41 = v15;
      *(v41 + 8) = v16;
      *(v41 + 16) = v19;
LABEL_31:
      swift_willThrow();

      v44 = *(v0 + 8);

      return v44();
    }

    v42 = *(v0 + 264);
    v28 = sub_26F7793C8();
    v29 = 63;
    goto LABEL_30;
  }

  sub_26F7694D0(v9, v10, v8, 0);
  if ((v7 & 0x100) != 0)
  {
    *(v0 + 224) = v3;
    *(v0 + 232) = v5;
    *(v0 + 240) = v7;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v11 = swift_allocError();
    *v35 = v3;
    *(v35 + 8) = v5;
    *(v35 + 16) = v7;
    goto LABEL_19;
  }

  v30 = *(v0 + 264);
  v31 = sub_26F7793D8();
  sub_26F756E10(v31, 0xD000000000000017, 0x800000026F7806C0, 0xD000000000000058, 0x800000026F7805E0, 74);
  v32 = *(v30 + 48);
  v51 = 0;
  v52 = 0;
  v53 = -1;
  sub_26F74B1B0(1u, 0, &v51);

  v33 = *(v0 + 8);

  return v33(v3, v5);
}

uint64_t sub_26F766C14()
{
  v21 = v0;
  v1 = *(v0 + 296);
  *(v0 + 248) = v1;
  MEMORY[0x274395DF0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 88);
    if (v4 > 0x11)
    {
      v15 = sub_26F74705C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
      v17 = v16;
      sub_26F7694B8(v3, v2, v4);
      v6 = 2;
      v3 = v15;
      v2 = v17;
    }

    else
    {
      if (((1 << v4) & 0x4001) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v0 + 88);
      }

      if (((1 << v4) & 0x3BFFC) != 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = v5;
      }
    }

    v7 = *(*(v0 + 264) + 48);
    v18 = v3;
    v19 = v2;
    v20 = v6;
    sub_26F75E4D8(v3, v2, v6);
    sub_26F74B1B0(1u, 0, &v18);

    sub_26F75E47C(v18, v19, v20);
    v8 = sub_26F7793C8();
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_26F7794F8();

    v18 = 0xD000000000000028;
    v19 = 0x800000026F780660;
    *(v0 + 128) = v3;
    *(v0 + 136) = v2;
    *(v0 + 144) = v6;
    sub_26F74AEE0();
    v9 = sub_26F7797F8();
    MEMORY[0x274395240](v9);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v8, v18, v19, 0xD000000000000058, 0x800000026F7805E0, 54);
  }

  else
  {
    v10 = *(v0 + 264);
    v11 = sub_26F7793C8();
    v2 = 0x800000026F780640;
    sub_26F756E10(v11, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 47);
    v6 = 2;
    sub_26F74AEE0();
    v3 = 0xD00000000000001ALL;
  }

  swift_allocError();
  *v12 = v3;
  *(v12 + 8) = v2;
  *(v12 + 16) = v6;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_26F766F04()
{
  result = qword_28141B158;
  if (!qword_28141B158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141B158);
  }

  return result;
}

uint64_t TKRecordService.upload(_:)(uint64_t a1, uint64_t a2)
{
  v3[52] = a2;
  v3[53] = v2;
  v3[51] = a1;
  return MEMORY[0x2822009F8](sub_26F766F74, 0, 0);
}

uint64_t sub_26F766F74()
{
  v43 = v0;
  v1 = *(*(v0 + 424) + 16);
  *(v0 + 236) = 0u;
  *(v0 + 252) = 0u;
  *(v0 + 268) = 1;
  if (sub_26F76A25C(0, v0 + 236))
  {
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    *(v0 + 432) = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
    v4 = sub_26F7793B8();
    sub_26F7794F8();

    v41 = 0xD000000000000021;
    v42 = 0x800000026F780740;
    sub_26F7794F8();

    v38 = 0x444964726F636572;
    v39 = 0xE90000000000003DLL;
    swift_beginAccess();
    v5 = v2[2];
    v6 = v2[3];

    MEMORY[0x274395240](v5, v6);

    MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
    swift_beginAccess();
    v7 = v2[4];
    v8 = v2[5];
    sub_26F7546E4(v7, v8);
    v9 = sub_26F779028();
    v11 = v10;
    sub_26F74F35C(v7, v8);
    MEMORY[0x274395240](v9, v11);

    MEMORY[0x274395240](0x444964726F636572, 0xE90000000000003DLL);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v4, 0xD000000000000021, 0x800000026F780740, 0xD000000000000058, 0x800000026F7805E0, 97);

    v12 = type metadata accessor for AttestationManager();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    *(v0 + 440) = v15;
    *(v15 + 16) = sub_26F756138();
    v16 = OBJC_IVAR____TtC8TrustKit18AttestationManager_logger;
    if (qword_2806EF298 != -1)
    {
      swift_once();
    }

    v17 = sub_26F779188();
    v18 = __swift_project_value_buffer(v17, qword_2806F4998);
    (*(*(v17 - 8) + 16))(v15 + v16, v18, v17);
    if (DeviceIdentityIsSupported())
    {
      v19 = swift_task_alloc();
      *(v0 + 448) = v19;
      *v19 = v0;
      v19[1] = sub_26F7675E8;

      return sub_26F7551D8();
    }

    v23 = *(v0 + 408);

    v36 = sub_26F7793C8();
    v24 = 0x800000026F780770;
    sub_26F756E10(v36, 0xD00000000000001CLL, 0x800000026F780770, 0xD000000000000058, 0x800000026F7805E0, 103);
    *v23 = 0xD00000000000001CLL;
    v35 = 2;
  }

  else
  {
    v21 = *(v0 + 416);
    v22 = *(v0 + 424);
    v23 = *(v0 + 408);
    v24 = 0x800000026F7806E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F77A180;
    *(inited + 32) = 0x626967696C656E69;
    *(inited + 40) = 0xEA0000000000656CLL;
    sub_26F766F04();
    *(inited + 48) = sub_26F779408();
    v26 = sub_26F7693B4(inited);
    swift_setDeallocating();
    sub_26F763768(inited + 32, &qword_2806EF7F0, &qword_26F77C2F8);
    v27 = *(v22 + 48);
    v38 = 0xD000000000000029;
    v39 = 0x800000026F7806E0;
    v40 = 0;
    sub_26F74B1B0(2u, v26, &v38);

    sub_26F75E47C(v38, v39, v40);
    LOBYTE(inited) = sub_26F7793C8();
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26F7794F8();

    v41 = 0xD00000000000002CLL;
    v42 = 0x800000026F780710;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26F7794F8();

    v38 = 0x444964726F636572;
    v39 = 0xE90000000000003DLL;
    swift_beginAccess();
    v28 = v21[2];
    v29 = v21[3];

    MEMORY[0x274395240](v28, v29);

    MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
    swift_beginAccess();
    v30 = v21[4];
    v31 = v21[5];
    sub_26F7546E4(v30, v31);
    v32 = sub_26F779028();
    v34 = v33;
    sub_26F74F35C(v30, v31);
    MEMORY[0x274395240](v32, v34);

    MEMORY[0x274395240](v38, v39);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(inited, v41, v42, 0xD000000000000058, 0x800000026F7805E0, 93);

    v35 = 0;
    *v23 = 0xD000000000000029;
  }

  v23[1] = v24;
  *(*(v0 + 408) + 16) = v35;
  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_26F7675E8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  v6 = *(*v4 + 448);
  v9 = *v4;
  *(v5 + 456) = a1;
  *(v5 + 464) = a2;
  *(v5 + 234) = a3;
  *(v5 + 472) = v3;

  if (v3)
  {
    v7 = sub_26F768460;
  }

  else
  {
    v7 = sub_26F767704;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26F767704()
{
  v36 = v0;
  v1 = *(v0 + 234);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 440);
  if ((v1 & 0x100) != 0)
  {
    *(v0 + 296) = v3;
    *(v0 + 304) = v2;
    *(v0 + 312) = v1;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v17 = swift_allocError();
    *v18 = v3;
    *(v18 + 8) = v2;
    *(v18 + 16) = v1;

    *(v0 + 392) = v17;
    MEMORY[0x274395DF0](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    v19 = swift_dynamicCast();
    v20 = *(v0 + 432);
    v21 = *(v0 + 408);
    if (v19)
    {
      v23 = *(v0 + 216);
      v22 = *(v0 + 224);
      v32 = *(v0 + 432);
      v24 = *(v0 + 232);
      v25 = *(*(v0 + 424) + 48);
      v33 = v23;
      v34 = v22;
      v35 = v24;
      sub_26F75E4D8(v23, v22, v24);
      sub_26F75E4D8(v23, v22, v24);
      sub_26F74B1B0(2u, 0, &v33);

      sub_26F75E47C(v33, v34, v35);
      v31 = sub_26F7793C8();
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_26F7794F8();

      v33 = 0xD000000000000025;
      v34 = 0x800000026F780790;
      *(v0 + 272) = v23;
      *(v0 + 280) = v22;
      *(v0 + 288) = v24;
      sub_26F74AEE0();
      v26 = sub_26F7797F8();
      v28 = v27;
      sub_26F75E490(v23, v22, v24);
      MEMORY[0x274395240](v26, v28);

      MEMORY[0x274395240](32032, 0xE200000000000000);
      sub_26F756E10(v31, v33, v34, 0xD000000000000058, 0x800000026F7805E0, 116);
    }

    else
    {
      v29 = sub_26F7793C8();
      v22 = 0x800000026F780640;
      sub_26F756E10(v29, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 110);

      v24 = 2;
      v23 = 0xD00000000000001ALL;
    }

    *v21 = v23;
    v21[1] = v22;
    *(*(v0 + 408) + 16) = v24;
    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 424);
    v7 = *(v0 + 440);

    v8 = v5[2];
    v9 = v5[3];
    *(v0 + 480) = v9;
    v10 = v5[4];
    *(v0 + 488) = v10;
    v11 = v5[5];
    *(v0 + 496) = v11;
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;
    *(v0 + 88) = v8;
    *(v0 + 96) = v9;
    *(v0 + 104) = v10;
    *(v0 + 112) = v11;
    v12 = *(v6 + 32);
    v13 = v3;

    sub_26F7546E4(v10, v11);
    v14 = *(v12 + 16);
    v15 = swift_task_alloc();
    *(v0 + 504) = v15;
    *v15 = v0;
    v15[1] = sub_26F767AA8;

    return sub_26F76489C(v0 + 72);
  }
}

uint64_t sub_26F767AA8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  v6 = *(*v4 + 504);
  v9 = *v4;
  *(v5 + 512) = a1;
  *(v5 + 520) = a2;
  *(v5 + 270) = a3;
  *(v5 + 528) = v3;

  if (v3)
  {
    v7 = sub_26F768138;
  }

  else
  {
    v7 = sub_26F767BC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26F767BC8()
{
  v53 = v0;
  v1 = *(v0 + 270);
  if ((v1 & 0x100) != 0)
  {
    v18 = *(v0 + 520);
    v19 = *(v0 + 512);
    *(v0 + 368) = v19;
    *(v0 + 376) = v18;
    *(v0 + 384) = v1;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v20 = swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v18;
    *(v21 + 16) = v1;
    v23 = *(v0 + 488);
    v22 = *(v0 + 496);
    v24 = *(v0 + 480);
    sub_26F7694E0(*(v0 + 456), *(v0 + 464));

    sub_26F74F35C(v23, v22);
    *(v0 + 400) = v20;
    MEMORY[0x274395DF0](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    if (swift_dynamicCast())
    {
      v25 = *(v0 + 320);
      v26 = *(v0 + 328);
      v27 = *(v0 + 336);
      if (v27 > 0x11)
      {
        v42 = sub_26F74705C(*(v0 + 320), *(v0 + 328), *(v0 + 336));
        v44 = v43;
        sub_26F7694B8(v25, v26, v27);
        v17 = 2;
        v25 = v42;
        v26 = v44;
      }

      else
      {
        if (((1 << v27) & 0x4001) != 0)
        {
          v28 = 0;
        }

        else
        {
          v28 = *(v0 + 336);
        }

        if (((1 << v27) & 0x3BFFC) != 0)
        {
          v17 = 2;
        }

        else
        {
          v17 = v28;
        }
      }

      v46 = *(v0 + 456);
      v47 = *(v0 + 464);
      v49 = *(v0 + 408);
      v45 = *(v0 + 432);
      v29 = *(*(v0 + 424) + 48);
      v50 = v25;
      v51 = v26;
      v52 = v17;
      sub_26F75E4D8(v25, v26, v17);
      sub_26F75E4D8(v25, v26, v17);
      sub_26F74B1B0(2u, 0, &v50);

      sub_26F75E47C(v50, v51, v52);
      v30 = sub_26F7793C8();
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_26F7794F8();

      v50 = 0xD000000000000025;
      v51 = 0x800000026F780790;
      *(v0 + 344) = v25;
      *(v0 + 352) = v26;
      *(v0 + 360) = v17;
      sub_26F74AEE0();
      v31 = sub_26F7797F8();
      v33 = v32;
      sub_26F75E490(v25, v26, v17);
      MEMORY[0x274395240](v31, v33);

      MEMORY[0x274395240](32032, 0xE200000000000000);
      sub_26F756E10(v30, v50, v51, 0xD000000000000058, 0x800000026F7805E0, 133);

      *v49 = v25;
      v49[1] = v26;
    }

    else
    {
      v35 = *(v0 + 456);
      v34 = *(v0 + 464);
      v37 = *(v0 + 424);
      v36 = *(v0 + 432);
      v38 = *(v0 + 408);
      v39 = sub_26F7793C8();
      sub_26F756E10(v39, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 126);

      *v38 = 0xD00000000000001ALL;
      v38[1] = 0x800000026F780640;
      v17 = 2;
    }
  }

  else
  {
    v3 = *(v0 + 488);
    v2 = *(v0 + 496);
    v4 = *(v0 + 480);
    v5 = *(v0 + 456);
    v6 = *(v0 + 424);
    v48 = *(v0 + 432);
    v8 = *(v0 + 408);
    v7 = *(v0 + 416);
    sub_26F7694E0(v5, *(v0 + 464));

    sub_26F74F35C(v3, v2);
    LOBYTE(v3) = sub_26F7793D8();
    sub_26F7794F8();

    sub_26F7794F8();

    v50 = 0x444964726F636572;
    v51 = 0xE90000000000003DLL;
    v9 = v7[2];
    v10 = v7[3];

    MEMORY[0x274395240](v9, v10);

    MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
    v11 = v7[4];
    v12 = v7[5];
    sub_26F7546E4(v11, v12);
    v13 = sub_26F779028();
    v15 = v14;
    sub_26F74F35C(v11, v12);
    MEMORY[0x274395240](v13, v15);

    MEMORY[0x274395240](0x444964726F636572, 0xE90000000000003DLL);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v3, 0xD000000000000013, 0x800000026F7807C0, 0xD000000000000058, 0x800000026F7805E0, 137);

    v16 = *(v6 + 48);
    v50 = 0;
    v51 = 0;
    v17 = -1;
    v52 = -1;
    sub_26F74B1B0(2u, 0, &v50);

    *v8 = 0;
    v8[1] = 0;
  }

  *(*(v0 + 408) + 16) = v17;
  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_26F768138()
{
  v32 = v0;
  v1 = *(v0 + 528);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 480);
  sub_26F7694E0(*(v0 + 456), *(v0 + 464));

  sub_26F74F35C(v3, v2);
  *(v0 + 400) = v1;
  MEMORY[0x274395DF0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 336);
    if (v7 > 0x11)
    {
      v22 = sub_26F74705C(*(v0 + 320), *(v0 + 328), *(v0 + 336));
      v24 = v23;
      sub_26F7694B8(v6, v5, v7);
      v9 = 2;
      v6 = v22;
      v5 = v24;
    }

    else
    {
      if (((1 << v7) & 0x4001) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v0 + 336);
      }

      if (((1 << v7) & 0x3BFFC) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = v8;
      }
    }

    v27 = *(v0 + 456);
    v28 = *(v0 + 464);
    v10 = *(v0 + 408);
    v26 = *(v0 + 432);
    v11 = *(*(v0 + 424) + 48);
    v29 = v6;
    v30 = v5;
    v31 = v9;
    sub_26F75E4D8(v6, v5, v9);
    sub_26F75E4D8(v6, v5, v9);
    sub_26F74B1B0(2u, 0, &v29);

    sub_26F75E47C(v29, v30, v31);
    v25 = sub_26F7793C8();
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_26F7794F8();

    v29 = 0xD000000000000025;
    v30 = 0x800000026F780790;
    *(v0 + 344) = v6;
    *(v0 + 352) = v5;
    *(v0 + 360) = v9;
    sub_26F74AEE0();
    v12 = sub_26F7797F8();
    v14 = v13;
    sub_26F75E490(v6, v5, v9);
    MEMORY[0x274395240](v12, v14);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v25, v29, v30, 0xD000000000000058, 0x800000026F7805E0, 133);

    *v10 = v6;
  }

  else
  {
    v16 = *(v0 + 456);
    v15 = *(v0 + 464);
    v18 = *(v0 + 424);
    v17 = *(v0 + 432);
    v10 = *(v0 + 408);
    v19 = sub_26F7793C8();
    v5 = 0x800000026F780640;
    sub_26F756E10(v19, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 126);

    *v10 = 0xD00000000000001ALL;
    v9 = 2;
  }

  v10[1] = v5;
  *(*(v0 + 408) + 16) = v9;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26F768460()
{
  v21 = v0;
  v1 = *(v0 + 440);

  v2 = *(v0 + 472);
  *(v0 + 392) = v2;
  MEMORY[0x274395DF0](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 408);
    v17 = *(v0 + 432);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = *(*(v0 + 424) + 48);
    v18 = v5;
    v19 = v4;
    v20 = v6;
    sub_26F75E4D8(v5, v4, v6);
    sub_26F75E4D8(v5, v4, v6);
    sub_26F74B1B0(2u, 0, &v18);

    sub_26F75E47C(v18, v19, v20);
    v8 = sub_26F7793C8();
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_26F7794F8();

    v18 = 0xD000000000000025;
    v19 = 0x800000026F780790;
    *(v0 + 272) = v5;
    *(v0 + 280) = v4;
    *(v0 + 288) = v6;
    sub_26F74AEE0();
    v9 = sub_26F7797F8();
    v11 = v10;
    sub_26F75E490(v5, v4, v6);
    MEMORY[0x274395240](v9, v11);

    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v8, v18, v19, 0xD000000000000058, 0x800000026F7805E0, 116);

    *v3 = v5;
  }

  else
  {
    v13 = *(v0 + 424);
    v12 = *(v0 + 432);
    v3 = *(v0 + 408);
    v14 = sub_26F7793C8();
    v4 = 0x800000026F780640;
    sub_26F756E10(v14, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 110);

    *v3 = 0xD00000000000001ALL;
    v6 = 2;
  }

  v3[1] = v4;
  *(*(v0 + 408) + 16) = v6;
  v15 = *(v0 + 8);

  return v15();
}

void *sub_26F7686E4()
{
  v0 = type metadata accessor for TKRecordService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_26F7688CC();
  qword_2806EF7E0 = v3;
  return result;
}

uint64_t static TKRecordService.shared.getter()
{
  if (qword_2806EF2A8 != -1)
  {
    swift_once();
  }
}

char *TKRecordService.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  v6 = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
  v7 = sub_26F779188();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t TKRecordService.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  v6 = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
  v7 = sub_26F779188();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_26F7688CC()
{
  v1 = type metadata accessor for EligibilityManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  if (qword_28141B5A8 != -1)
  {
    swift_once();
  }

  v6 = sub_26F779188();
  v7 = __swift_project_value_buffer(v6, qword_28141B5F0);
  v8 = *(*(v6 - 8) + 16);
  v8(v4 + v5, v7, v6);
  v0[2] = v4;
  v9 = type metadata accessor for AttestationManager();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26F756138();
  v13 = OBJC_IVAR____TtC8TrustKit18AttestationManager_logger;
  if (qword_2806EF298 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_2806F4998);
  v8(v12 + v13, v14, v6);
  if (!DeviceIdentityIsSupported())
  {

    v12 = 0;
  }

  v0[3] = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF810, &qword_26F77C390);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = type metadata accessor for RecordOperation();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC8TrustKit15RecordOperation_logger;
  if (qword_2806EF2A0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_2806F49B0);
  v8(v22 + v23, v24, v6);
  v18[2] = v22;
  v8(v18 + *(*v18 + 104), v24, v6);
  v0[4] = v18;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF818, &qword_26F77C398);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = type metadata accessor for KeyOperation();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v8(v32 + OBJC_IVAR____TtC8TrustKit12KeyOperation_logger, v24, v6);
  v28[2] = v32;
  v8(v28 + *(*v28 + 104), v24, v6);
  v0[5] = v28;
  v33 = type metadata accessor for ClientAnalyticsManager();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  if (qword_28141B5B0 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v6, qword_28141B608);
  v8(v36 + v37, v38, v6);
  v39 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_eligibilityManager;
  v40 = *(v1 + 48);
  v41 = *(v1 + 52);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v8(v42 + OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger, v7, v6);
  *(v36 + v39) = v42;
  v0[6] = v36;
  v43 = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
  if (qword_2806EF278 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v6, qword_2806F4938);
  v8(v0 + v43, v44, v6);
  return v0;
}

char *sub_26F768CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF678, &qword_26F77B988);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26F768DE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26F779848();
  sub_26F779298();
  v6 = sub_26F779888();

  return sub_26F768E9C(a1, a2, v6);
}

unint64_t sub_26F768E58(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26F779488();

  return sub_26F768F54(a1, v5);
}

unint64_t sub_26F768E9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26F779748())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26F768F54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26F769820(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x274395430](v9, a1);
      sub_26F76987C(v9);
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

char *sub_26F76901C(char *a1, int64_t a2, char a3)
{
  result = sub_26F76903C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F76903C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF678, &qword_26F77B988);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26F769148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D8, &qword_26F77C2D8);
    v3 = sub_26F779608();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F7697B8(v4, &v13, &qword_2806EF2E8, &qword_26F77A568);
      v5 = v13;
      v6 = v14;
      result = sub_26F768DE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26F754784(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26F769278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF850, &qword_26F77C3C0);
    v3 = sub_26F779608();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F7697B8(v4, v13, &qword_2806EF688, &qword_26F77B998);
      result = sub_26F768E58(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26F754784(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_26F7693B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D0, &qword_26F77C2D0);
    v3 = sub_26F779608();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F768DE0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_26F7694B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Cu)
  {
  }

  return result;
}

uint64_t sub_26F7694D0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_26F7694B8(a1, a2, a3);
  }

  else
  {
  }
}

void sub_26F7694E0(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

uint64_t type metadata accessor for TKRecordService()
{
  result = qword_2806EF800;
  if (!qword_2806EF800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F769578()
{
  result = sub_26F779188();
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

unint64_t sub_26F76969C()
{
  result = qword_2806EF830;
  if (!qword_2806EF830)
  {
    sub_26F779058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF830);
  }

  return result;
}

unint64_t sub_26F7696F4()
{
  result = qword_2806EF838;
  if (!qword_2806EF838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF680, &qword_26F77B990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF838);
  }

  return result;
}

unint64_t sub_26F769758()
{
  result = qword_2806EF840;
  if (!qword_2806EF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF840);
  }

  return result;
}

uint64_t sub_26F7697AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_26F7694B8(a1, a2, a3);
  }

  else
  {
    return sub_26F74F35C(a1, a2);
  }
}

uint64_t sub_26F7697B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26F7698D0()
{
  result = qword_2806EF858;
  if (!qword_2806EF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF858);
  }

  return result;
}

uint64_t sub_26F76994C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x636E657265666E69;
  }

  else
  {
    v4 = 0x756F72676B636162;
  }

  if (v3)
  {
    v5 = 0xEA0000000000646ELL;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x636E657265666E69;
  }

  else
  {
    v6 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xEA0000000000646ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F779748();
  }

  return v9 & 1;
}

uint64_t sub_26F7699FC()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F769A88()
{
  *v0;
  sub_26F779298();
}

uint64_t sub_26F769B00()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F769B88@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F779618();

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

void sub_26F769BE8(uint64_t *a1@<X8>)
{
  v2 = 0x756F72676B636162;
  if (*v1)
  {
    v2 = 0x636E657265666E69;
  }

  v3 = 0xEA0000000000646ELL;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26F769C30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_26F769E10(v0 + OBJC_IVAR____TtC8TrustKit37SignatureAnalysisDecisioningComponent_changeTokenCache);
  v1 = *(v0 + OBJC_IVAR____TtC8TrustKit37SignatureAnalysisDecisioningComponent_analyticsManager);

  v2 = OBJC_IVAR____TtC8TrustKit37SignatureAnalysisDecisioningComponent_logger;
  v3 = sub_26F779188();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F769D1C()
{
  result = sub_26F779188();
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

uint64_t sub_26F769E10(uint64_t a1)
{
  v2 = type metadata accessor for ChangeTokenCache();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F769EB4()
{
  result = type metadata accessor for SpamDecisioningAsset();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8TrustKit21SignatureMatchUtilityO12SearchResultVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy8TrustKit37SignatureAnalysisDecisioningComponentC16FetchInformationVAC4FailOGSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F769F9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
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

uint64_t sub_26F769FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_26F76A0C0()
{
  result = type metadata accessor for SpamDecisioningAsset();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26F76A148()
{
  result = qword_2806EF8A8;
  if (!qword_2806EF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8A8);
  }

  return result;
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

uint64_t sub_26F76A1C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26F76A208(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26F76A25C(unsigned __int8 a1, uint64_t a2)
{
  if (qword_28141B580 != -1)
  {
    swift_once();
  }

  v4 = qword_28141B5C8;
  v5 = unk_28141B5D0;
  v6 = sub_26F76A884();
  v7 = sub_26F74BD78(v4, v5, v6);

  if (v7)
  {
    if (sub_26F76A420(a1, a2))
    {
      return 1;
    }

    v10 = sub_26F7793D8();
    sub_26F756E10(v10, 0xD000000000000018, 0x800000026F780D20, 0xD000000000000057, 0x800000026F780CC0, 26);
  }

  else
  {
    v9 = sub_26F7793D8();
    sub_26F7794F8();

    MEMORY[0x274395240](v4, v5);
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v9, 0xD00000000000002ALL, 0x800000026F780C90, 0xD000000000000057, 0x800000026F780CC0, 21);
  }

  return 0;
}

uint64_t sub_26F76A420(unsigned __int8 a1, uint64_t a2)
{
  error[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 32) & 1) == 0)
  {
    v8 = *(a2 + 16);
    *v28.val = *a2;
    *&v28.val[4] = v8;
    v3 = SecTaskCreateWithAuditToken(*MEMORY[0x277CBECE8], &v28);
    if (!v3)
    {
      v4 = sub_26F7793C8();
      v5 = 0xD00000000000002ALL;
      v6 = 0x800000026F780E20;
      v7 = 52;
      goto LABEL_14;
    }

LABEL_5:
    v9 = v3;
    error[0] = 0;
    if (a1 - 1 < 2)
    {
      v10 = sub_26F779238();
      v11 = SecTaskCopyValueForEntitlement(v9, v10, error);

      if (!v11 || (*v28.val = v11, !swift_dynamicCast()))
      {
        v12 = sub_26F7793C8();
        v13 = 85;
        goto LABEL_21;
      }

LABEL_17:
      v18 = error[0];
      if (!error[0])
      {
        v27 = v29;

        result = v27;
        goto LABEL_25;
      }

      v19 = sub_26F7793C8();
      *v28.val = 0;
      *&v28.val[2] = 0xE000000000000000;
      sub_26F7794F8();

      *v28.val = 0xD000000000000025;
      *&v28.val[2] = 0x800000026F780DA0;
      v20 = v18;
      v29 = v20;
      type metadata accessor for CFError(0);
      sub_26F74F238();
      v21 = sub_26F7797F8();
      v23 = v22;

      MEMORY[0x274395240](v21, v23);

      MEMORY[0x274395240](32032, 0xE200000000000000);
      sub_26F756E10(v19, *v28.val, *&v28.val[2], 0xD000000000000057, 0x800000026F780CC0, 101);

      v24 = error[0];
      if (!error[0])
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (a1)
    {
      v16 = sub_26F779238();
      v17 = SecTaskCopyValueForEntitlement(v9, v16, error);

      if (v17)
      {
        *v28.val = v17;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = sub_26F7793C8();
      v13 = 93;
    }

    else
    {
      v14 = sub_26F779238();
      v15 = SecTaskCopyValueForEntitlement(v9, v14, error);

      if (v15)
      {
        *v28.val = v15;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = sub_26F7793C8();
      v13 = 77;
    }

LABEL_21:
    sub_26F756E10(v12, 0xD00000000000001CLL, 0x800000026F780D80, 0xD000000000000057, 0x800000026F780CC0, v13);
    v24 = error[0];
    if (!error[0])
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:

    goto LABEL_23;
  }

  v3 = SecTaskCreateFromSelf(0);
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = sub_26F7793C8();
  v5 = 0xD000000000000019;
  v6 = 0x800000026F780D40;
  v7 = 59;
LABEL_14:
  sub_26F756E10(v4, v5, v6, 0xD000000000000057, 0x800000026F780CC0, v7);
LABEL_24:
  result = 0;
LABEL_25:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26F76A884()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_26F76A8E0();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_26F76A8E0()
{
  v0 = sub_26F76B458(&unk_287FC5F98);
  swift_arrayDestroy();
  v6 = v0;
  if (qword_28141B570 != -1)
  {
    swift_once();
  }

  if (qword_28141B578)
  {
    v1 = qword_28141B578;
    v2 = sub_26F779238();
    v3 = [v1 BOOLForKey_];

    if (v3)
    {
      sub_26F76AB94(&v5, 0xD000000000000014, 0x800000026F7800A0);

      return v6;
    }
  }

  return v0;
}

uint64_t sub_26F76AA00()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  v3 = sub_26F779188();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EligibilityManager()
{
  result = qword_28141B3D0;
  if (!qword_28141B3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F76AAF8()
{
  result = sub_26F779188();
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

uint64_t sub_26F76AB94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26F779848();
  sub_26F779298();
  v9 = sub_26F779888();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26F779748() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26F76AF44(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26F76ACE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
  result = sub_26F7794C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26F76AF44(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26F76ACE4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26F76B0C4();
      goto LABEL_16;
    }

    sub_26F76B220(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26F779848();
  sub_26F779298();
  result = sub_26F779888();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26F779748();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26F779788();
  __break(1u);
  return result;
}

void *sub_26F76B0C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
  v2 = *v0;
  v3 = sub_26F7794B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_26F76B220(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
  result = sub_26F7794C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26F779848();

      sub_26F779298();
      result = sub_26F779888();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26F76B458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
    v3 = sub_26F7794D8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_26F779848();

      sub_26F779298();
      result = sub_26F779888();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_26F779748();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_26F76B5C0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26F779238();
  v2 = [v0 initWithSuiteName_];

  qword_28141B578 = v2;
}

uint64_t sub_26F76B630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "it.inference.signature_analysis";
      v3 = 0xD000000000000028;
    }

    else
    {
      v4 = "it.inference.logic_graph";
      v3 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000002FLL;
    }

    else
    {
      v3 = 0xD00000000000002BLL;
    }

    if (v2)
    {
      v4 = "it.inference.sender_look_up";
    }

    else
    {
      v4 = "Read_Check_Enabled";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000028;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v6 = "it.inference.signature_analysis";
    }

    else
    {
      v6 = "it.inference.logic_graph";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000002FLL;
    }

    else
    {
      v5 = 0xD00000000000002BLL;
    }

    if (a2)
    {
      v6 = "it.inference.sender_look_up";
    }

    else
    {
      v6 = "Read_Check_Enabled";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26F779748();
  }

  return v7 & 1;
}

uint64_t sub_26F76B760(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "sResult";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD00000000000002ALL;
    }

    else
    {
      v6 = 0xD000000000000024;
    }

    if (v4)
    {
      v5 = "it.orca.createRecord";
    }

    else
    {
      v5 = "sResult";
    }
  }

  else if (a1 == 2)
  {
    v5 = "it.orca.fetchEncryptionKey";
    v6 = 0xD00000000000001ELL;
  }

  else if (a1 == 3)
  {
    v5 = "com.apple.trustkit.orca.upload";
    v6 = 0xD000000000000026;
  }

  else
  {
    v5 = "it.decisioning.prepare";
    v6 = 0xD000000000000028;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000002ALL;
    }

    else
    {
      v2 = 0xD000000000000024;
    }

    if (a2)
    {
      v3 = "it.orca.createRecord";
    }
  }

  else if (a2 == 2)
  {
    v3 = "it.orca.fetchEncryptionKey";
  }

  else if (a2 == 3)
  {
    v3 = "com.apple.trustkit.orca.upload";
    v2 = 0xD000000000000026;
  }

  else
  {
    v3 = "it.decisioning.prepare";
    v2 = 0xD000000000000028;
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26F779748();
  }

  return v7 & 1;
}

uint64_t sub_26F76B8D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = a1;
  v4 = 0xED000070756B6F6FLL;
  v5 = 0x636E657265666E49;
  if (a1 == 2)
  {
    v5 = 0x4C5F7265646E6553;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  v6 = 0xD000000000000012;
  if (a1)
  {
    v2 = 0x800000026F77E800;
  }

  else
  {
    v6 = 0x6E6974726F706552;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 1)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x4C5F7265646E6553;
    }

    else
    {
      v11 = 0x636E657265666E49;
    }

    if (a2 == 2)
    {
      v10 = 0xED000070756B6F6FLL;
    }

    else
    {
      v10 = 0xE900000000000065;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x6E6974726F706552;
    }

    if (a2)
    {
      v10 = 0x800000026F77E800;
    }

    else
    {
      v10 = 0xE900000000000067;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_26F779748();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_26F76BA30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x800000026F77E840;
    }

    else
    {
      v3 = 0x62616E455F534352;
      v4 = 0xEB0000000064656CLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x62616E455F534D53;
    }

    else
    {
      v3 = 1934381653;
    }

    if (v2)
    {
      v4 = 0xEB0000000064656CLL;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000026F77E840;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEB0000000064656CLL;
      if (v3 != 0x62616E455F534352)
      {
LABEL_26:
        v7 = sub_26F779748();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x62616E455F534D53;
    }

    else
    {
      v5 = 1934381653;
    }

    if (a2)
    {
      v6 = 0xEB0000000064656CLL;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_26F76BBAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x62616E455F534D53;
    }

    else
    {
      if (a1 == 4)
      {
        v6 = 0x800000026F77E840;
        v5 = 0xD000000000000010;
        goto LABEL_13;
      }

      v5 = 0x62616E455F534352;
    }

    v6 = 0xEB0000000064656CLL;
  }

  else
  {
    v4 = 0x800000026F77EA50;
    v5 = 0xD000000000000013;
    if (v3 != 1)
    {
      v5 = 0xD000000000000012;
      v4 = 0x800000026F77EA70;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v5 = 0xD000000000000015;
      v6 = 0x800000026F77EA30;
    }
  }

LABEL_13:
  if (a2 > 2u)
  {
    if (a2 == 4)
    {
      v11 = 0x800000026F77E840;
    }

    else
    {
      v2 = 0x62616E455F534352;
      v11 = 0xEB0000000064656CLL;
    }

    if (a2 == 3)
    {
      v12 = 0x62616E455F534D53;
    }

    else
    {
      v12 = v2;
    }

    if (a2 == 3)
    {
      v10 = 0xEB0000000064656CLL;
    }

    else
    {
      v10 = v11;
    }

    if (v5 != v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v7 = 0x800000026F77EA70;
    v8 = 0xD000000000000012;
    if (a2 == 1)
    {
      v8 = 0xD000000000000013;
      v7 = 0x800000026F77EA50;
    }

    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    if (a2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0x800000026F77EA30;
    }

    if (v5 != v9)
    {
      goto LABEL_36;
    }
  }

  if (v6 != v10)
  {
LABEL_36:
    v13 = sub_26F779748();
    goto LABEL_37;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_26F76BD54()
{
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76BE64()
{
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76BF70(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF900, &qword_26F77CBD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F76F8BC();
  sub_26F7798A8();
  v10 = v2[7];
  v11 = v2[9];
  v72 = v2[8];
  v73 = v11;
  v12 = v2[3];
  v13 = v2[5];
  v68 = v2[4];
  v69 = v13;
  v14 = v2[5];
  v15 = v2[7];
  v70 = v2[6];
  v71 = v15;
  v16 = v2[1];
  v65[0] = *v2;
  v65[1] = v16;
  v17 = v2[3];
  v19 = *v2;
  v18 = v2[1];
  v66 = v2[2];
  v67 = v17;
  v20 = v2[9];
  v60 = v72;
  v61 = v20;
  v56 = v68;
  v57 = v14;
  v58 = v70;
  v59 = v10;
  v52 = v19;
  v53 = v18;
  v74 = *(v2 + 20);
  v62 = *(v2 + 20);
  v54 = v66;
  v55 = v12;
  v51 = 0;
  sub_26F76FB28(v65, v49);
  sub_26F76FB60();
  v21 = v75;
  sub_26F779728();
  v49[8] = v60;
  v49[9] = v61;
  v50 = v62;
  v49[4] = v56;
  v49[5] = v57;
  v49[6] = v58;
  v49[7] = v59;
  v49[0] = v52;
  v49[1] = v53;
  v49[2] = v54;
  v49[3] = v55;
  sub_26F76F9B8(v49);
  if (!v21)
  {
    v22 = *(v2 + 248);
    v23 = *(v2 + 280);
    v63[6] = *(v2 + 264);
    v63[7] = v23;
    v64 = *(v2 + 37);
    v24 = *(v2 + 184);
    v25 = *(v2 + 216);
    v63[2] = *(v2 + 200);
    v63[3] = v25;
    v63[4] = *(v2 + 232);
    v63[5] = v22;
    v63[0] = *(v2 + 168);
    v63[1] = v24;
    v26 = *(v2 + 248);
    v27 = *(v2 + 280);
    v46 = *(v2 + 264);
    v47 = v27;
    v48 = *(v2 + 37);
    v28 = *(v2 + 184);
    v29 = *(v2 + 216);
    v42 = *(v2 + 200);
    v43 = v29;
    v44 = *(v2 + 232);
    v45 = v26;
    v40 = *(v2 + 168);
    v41 = v28;
    v39 = 1;
    sub_26F76FBB4(v63, v37);
    sub_26F76FBEC();
    sub_26F779728();
    v37[6] = v46;
    v37[7] = v47;
    v38 = v48;
    v37[2] = v42;
    v37[3] = v43;
    v37[4] = v44;
    v37[5] = v45;
    v37[0] = v40;
    v37[1] = v41;
    sub_26F76F9E8(v37);
    v30 = v2[20];
    v35 = v2[19];
    v36 = v30;
    v34 = 2;
    sub_26F76FC40();
    sub_26F779728();
    v31 = v2[22];
    v35 = v2[21];
    v36 = v31;
    v34 = 3;
    sub_26F76FC94();
    sub_26F779728();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26F76C348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EFB10, &qword_26F77DB20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7727E8();
  sub_26F7798A8();
  v16 = 0;
  sub_26F7796E8();
  if (!v5)
  {
    v15 = 1;
    sub_26F7796E8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26F76C564(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26F7798A8();
  v14 = v6[1];
  v18 = *v6;
  v19 = v14;
  v20 = 0;
  sub_26F7722FC();
  v15 = v17[1];
  sub_26F779728();
  if (!v15)
  {
    *&v18 = *(v6 + 4);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
    sub_26F771420(&qword_2806EF9E8);
    sub_26F779728();
    *&v18 = *(v6 + 5);
    v20 = 2;
    sub_26F779728();
    *&v18 = *(v6 + 6);
    v20 = 3;
    sub_26F779728();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26F76C7FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF9B8, &qword_26F77CFF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F770ADC();
  sub_26F7798A8();
  v11 = v3[1];
  v30[0] = *v3;
  v30[1] = v11;
  v13 = *v3;
  v12 = v3[1];
  v30[2] = v3[2];
  v31 = *(v3 + 6);
  v22 = v13;
  v23 = v12;
  v24 = v3[2];
  v25 = *(v3 + 6);
  v32 = 0;
  sub_26F771934(v30, v21);
  sub_26F77196C();
  sub_26F779728();
  if (v2)
  {

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v20 = v6;

    v15 = *(v3 + 72);
    v28[0] = *(v3 + 56);
    v28[1] = v15;
    v28[2] = *(v3 + 88);
    v29 = *(v3 + 13);
    v16 = *(v3 + 72);
    v22 = *(v3 + 56);
    v23 = v16;
    v24 = *(v3 + 88);
    v25 = *(v3 + 13);
    v32 = 1;
    sub_26F7719C0(v28, v21);
    sub_26F7719F8();
    sub_26F779728();

    v17 = v3[8];
    v26[0] = v3[7];
    v26[1] = v17;
    v19 = v3[7];
    v18 = v3[8];
    v26[2] = v3[9];
    v27 = *(v3 + 20);
    v22 = v19;
    v23 = v18;
    v24 = v3[9];
    v25 = *(v3 + 20);
    v32 = 2;
    sub_26F771A4C(v26, v21);
    sub_26F771A84();
    sub_26F779728();

    return (*(v20 + 8))(v9, v5);
  }
}

unint64_t sub_26F76CB64(char a1)
{
  result = 0x62616E455F534D53;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
    case 14:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 12:
      result = 0xD000000000000015;
      break;
    case 5:
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 15:
      return result;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x62616E455F534352;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_26F76CD5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF9D8, &qword_26F77D000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7713CC();
  sub_26F7798A8();
  v11 = *v3;
  LOBYTE(v28) = 0;
  sub_26F779708();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v28) = 1;
    sub_26F779708();
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v28) = 2;
    sub_26F7796E8();
    v15 = v3[4];
    LOBYTE(v28) = 3;
    sub_26F779708();
    v16 = v3[5];
    LOBYTE(v28) = 4;
    sub_26F779708();
    v28 = v3[6];
    HIBYTE(v27) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF978, &qword_26F77CFD8);
    sub_26F771AD8(&qword_2806EF9E0);
    sub_26F779728();
    v17 = v3[7];
    LOBYTE(v28) = 6;
    sub_26F779708();
    v18 = v3[8];
    LOBYTE(v28) = 7;
    sub_26F779708();
    v19 = v3[9];
    LOBYTE(v28) = 8;
    sub_26F779708();
    v20 = v3[10];
    LOBYTE(v28) = 9;
    sub_26F779708();
    v21 = v3[11];
    LOBYTE(v28) = 10;
    sub_26F779708();
    v22 = v3[12];
    LOBYTE(v28) = 11;
    sub_26F779718();
    v23 = *(v3 + 112);
    LOBYTE(v28) = 12;
    sub_26F7796F8();
    v24 = *(v3 + 113);
    LOBYTE(v28) = 13;
    sub_26F7796F8();
    v25 = *(v3 + 114);
    LOBYTE(v28) = 14;
    sub_26F7796F8();
    v28 = v3[13];
    HIBYTE(v27) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
    sub_26F771420(&qword_2806EF9E8);
    sub_26F779728();
    v28 = v3[15];
    HIBYTE(v27) = 16;
    sub_26F779728();
    v28 = v3[16];
    HIBYTE(v27) = 17;
    sub_26F779728();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26F76D298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void))
{
  v25 = a5;
  v23 = a3;
  v24 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8();
  v16 = v10;
  sub_26F7798A8();
  LOBYTE(v28) = 0;
  v17 = v26;
  sub_26F7796F8();
  if (v17)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v18 = v23;
  v19 = v24;
  v20 = v25;
  LOBYTE(v28) = 1;
  sub_26F7796F8();
  LOBYTE(v28) = 2;
  sub_26F7796F8();
  v28 = v18;
  v27 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
  sub_26F771420(&qword_2806EF9E8);
  sub_26F779728();
  v28 = v19;
  v27 = 4;
  sub_26F779728();
  v28 = v20;
  v27 = 5;
  sub_26F779728();
  return (*(v11 + 8))(v14, v16);
}

uint64_t sub_26F76D57C()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76D654()
{
  *v0;
  *v0;
  *v0;
  sub_26F779298();
}

uint64_t sub_26F76D718()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76D7EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F76F35C();
  *a2 = result;
  return result;
}

void sub_26F76D81C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E6974726F706552;
  v4 = 0xED000070756B6F6FLL;
  v5 = 0x4C5F7265646E6553;
  if (*v1 != 2)
  {
    v5 = 0x636E657265666E49;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000026F77E800;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_26F76D8B0()
{
  v1 = 0x6E6974726F706552;
  v2 = 0x4C5F7265646E6553;
  if (*v0 != 2)
  {
    v2 = 0x636E657265666E49;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_26F76D940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F76F35C();
  *a1 = result;
  return result;
}

uint64_t sub_26F76D968(uint64_t a1)
{
  v2 = sub_26F76F8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76D9A4(uint64_t a1)
{
  v2 = sub_26F76F8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26F76D9E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26F76F3A8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x170uLL);
  }

  return result;
}

uint64_t sub_26F76DA44()
{
  if (*v0)
  {
    result = 0x69746375646F7250;
  }

  else
  {
    result = 16721;
  }

  *v0;
  return result;
}

uint64_t sub_26F76DA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 16721 && a2 == 0xE200000000000000;
  if (v5 || (sub_26F779748() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746375646F7250 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26F779748();

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

uint64_t sub_26F76DB60(uint64_t a1)
{
  v2 = sub_26F7727E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76DB9C(uint64_t a1)
{
  v2 = sub_26F7727E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F76DBD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26F770008(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_26F76DC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F7701EC();
  *a2 = result;
  return result;
}

uint64_t sub_26F76DC58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F7701EC();
  *a1 = result;
  return result;
}

uint64_t sub_26F76DC80(uint64_t a1)
{
  v2 = sub_26F7721AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76DCBC(uint64_t a1)
{
  v2 = sub_26F7721AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F76DD3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F770238();
  *a2 = result;
  return result;
}

uint64_t sub_26F76DD6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F770238();
  *a1 = result;
  return result;
}

uint64_t sub_26F76DD94(uint64_t a1)
{
  v2 = sub_26F772254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76DDD0(uint64_t a1)
{
  v2 = sub_26F772254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F76DE50()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76DF08()
{
  *v0;
  *v0;
  *v0;
  sub_26F779298();
}

uint64_t sub_26F76DFAC()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76E060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F770634();
  *a2 = result;
  return result;
}

uint64_t sub_26F76E090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F770634();
  *a1 = result;
  return result;
}

uint64_t sub_26F76E0B8(uint64_t a1)
{
  v2 = sub_26F7722A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76E0F4(uint64_t a1)
{
  v2 = sub_26F7722A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26F76E174@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_26F770284(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    result = *&v10;
    *(a5 + 32) = v10;
    *(a5 + 48) = v11;
  }

  return result;
}

uint64_t sub_26F76E1D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E5F74726F706552;
  v4 = 0xEF6B6E754A5F746FLL;
  if (v2 != 1)
  {
    v3 = 0x4A5F74726F706552;
    v4 = 0xEB000000006B6E75;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x555F74726F706552;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE006E776F6E6B6ELL;
  }

  v7 = 0x4E5F74726F706552;
  v8 = 0xEF6B6E754A5F746FLL;
  if (*a2 != 1)
  {
    v7 = 0x4A5F74726F706552;
    v8 = 0xEB000000006B6E75;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x555F74726F706552;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE006E776F6E6B6ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F779748();
  }

  return v11 & 1;
}

uint64_t sub_26F76E308()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76E3CC()
{
  *v0;
  *v0;
  sub_26F779298();
}

uint64_t sub_26F76E47C()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76E53C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F770680();
  *a2 = result;
  return result;
}

void sub_26F76E56C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E776F6E6B6ELL;
  v4 = 0xEF6B6E754A5F746FLL;
  v5 = 0x4E5F74726F706552;
  if (v2 != 1)
  {
    v5 = 0x4A5F74726F706552;
    v4 = 0xEB000000006B6E75;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x555F74726F706552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26F76E5EC()
{
  v1 = 0x4E5F74726F706552;
  if (*v0 != 1)
  {
    v1 = 0x4A5F74726F706552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x555F74726F706552;
  }
}

uint64_t sub_26F76E668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F770680();
  *a1 = result;
  return result;
}

uint64_t sub_26F76E690(uint64_t a1)
{
  v2 = sub_26F770ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76E6CC(uint64_t a1)
{
  v2 = sub_26F770ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26F76E708@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F7706CC(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v10;
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_26F76E798(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_26F76CB64(*a1);
  v5 = v4;
  if (v3 == sub_26F76CB64(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26F779748();
  }

  return v8 & 1;
}

uint64_t sub_26F76E820()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F76CB64(v1);
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76E884()
{
  sub_26F76CB64(*v0);
  sub_26F779298();
}

uint64_t sub_26F76E8D8()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F76CB64(v1);
  sub_26F779298();

  return sub_26F779888();
}

uint64_t sub_26F76E938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F770C2C();
  *a2 = result;
  return result;
}

unint64_t sub_26F76E968@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26F76CB64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26F76E9B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F770C2C();
  *a1 = result;
  return result;
}

uint64_t sub_26F76E9E4(uint64_t a1)
{
  v2 = sub_26F7713CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76EA20(uint64_t a1)
{
  v2 = sub_26F7713CC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26F76EA5C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F770C80(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_26F76EAE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F771490();
  *a2 = result;
  return result;
}

uint64_t sub_26F76EB10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F771490();
  *a1 = result;
  return result;
}

uint64_t sub_26F76EB38(uint64_t a1)
{
  v2 = sub_26F7714DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76EB74(uint64_t a1)
{
  v2 = sub_26F7714DC();

  return MEMORY[0x2821FE720](a1, v2);
}