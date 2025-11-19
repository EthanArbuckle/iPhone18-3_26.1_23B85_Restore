uint64_t sub_26BE3C158(uint64_t a1, uint64_t a2)
{
  v4 = _s21RCSTBSParticipantInfoVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE3C1BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BE3C204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 MLS.Group.Member.init(identity:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_26BE3C290@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_26BE855EC(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_26BE85588(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_26C00909C();
    v15 = v14;
    result = sub_26BE00258(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void *MLS.Group.Group.deinit()
{
  v1 = v0[2];

  sub_26BE00258(v0[4], v0[5]);
  v2 = v0[6];

  sub_26BE0489C(v0[7], v0[8]);
  v3 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t sub_26BE3C440()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE3C4FC;
  v2 = *(v0 + 16);

  return sub_26BEAE7D0(v2, &unk_26C00ED10, v2);
}

uint64_t sub_26BE3C4FC(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BE45BEC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_26BE3C658()
{
  v1 = *(v0 + 32);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26BE3C714;
  v3 = *(v0 + 32);

  return sub_26BE8FE74(v0 + 16, v3, v3);
}

uint64_t sub_26BE3C714()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_26BE3C840;
  }

  else
  {
    v3 = sub_26BE3C828;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE3C898(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE3C8B8, 0, 0);
}

uint64_t sub_26BE3C8B8()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BE3C970;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BE96314(v3, v4, v4);
}

uint64_t sub_26BE3C970()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE3CAA4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26BE3CAC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE3CAE0, 0, 0);
}

uint64_t sub_26BE3CAE0()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BE3CB98;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BE96744(v3, v4, v4);
}

uint64_t sub_26BE3CB98()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE45BE8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26BE3CCCC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE3CCEC, 0, 0);
}

uint64_t sub_26BE3CCEC()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BE3CB98;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BE96EDC(v3, v4, v4);
}

uint64_t sub_26BE3CDA4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = *(v4 + 40);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  v5(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_26BE3CE90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE3CF34;

  return sub_26BE973DC(v0);
}

uint64_t sub_26BE3CF34(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_26BE3D034()
{
  v1 = v0;
  sub_26C00AC1C();

  v2 = *(v0 + 48);
  v3 = sub_26BE16A38();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](0x2870756F7247202CLL, 0xEC000000203A6469);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_26BE00608(v4, v5);
  sub_26BF87240(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  sub_26C00A3EC();
  sub_26BE00258(v4, v5);

  v6 = sub_26BE411D0(16);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x26D698FE0](v6, v8, v10, v12);
  v15 = v14;

  MEMORY[0x26D699090](v13, v15);

  MEMORY[0x26D699090](0x617265202C2E2E2ELL, 0xEA0000000000203ALL);
  v19 = *(v1 + 152);
  v16 = sub_26C00AEFC();
  MEMORY[0x26D699090](v16);

  MEMORY[0x26D699090](0x3A68636F7065202CLL, 0xE900000000000020);
  v20 = *(v1 + 24);
  v17 = sub_26C00AEFC();
  MEMORY[0x26D699090](v17);

  MEMORY[0x26D699090](10537, 0xE200000000000000);
  return 40;
}

uint64_t sub_26BE3D26C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE978A8)(a1, v1);
}

uint64_t sub_26BE3D320(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE97BF0)(a1, v1);
}

uint64_t sub_26BE3D3D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE97F38)(a1, v1);
}

uint64_t sub_26BE3D488(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE98280)(a1, v1);
}

uint64_t sub_26BE3D558()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x800000026C02AF60;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3D63C()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000036;
  *(v1 + 8) = 0x800000026C02AFA0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3D6E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE94B94)(a1, v1);
}

uint64_t sub_26BE3D79C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE94EDC)(a1, v1);
}

uint64_t sub_26BE3D850(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE985C8)(a1, v1);
}

uint64_t sub_26BE3D904(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE95224)(a1, v1);
}

uint64_t sub_26BE3D9B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE98910)(a1, v1);
}

uint64_t sub_26BE3DA6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE9556C)(a1, v1);
}

uint64_t sub_26BE3DB20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return (sub_26BE99630)(a1, v1);
}

uint64_t sub_26BE3DBD4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE3DC78;

  return sub_26BE99978(sub_26BE99978, v0);
}

uint64_t sub_26BE3DC78()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_26BE3DD8C;
  }

  else
  {
    v3 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE3DDA4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE98C58)(a1, v1);
}

uint64_t sub_26BE3DE58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE98FA0)(a1, v1);
}

uint64_t sub_26BE3DF0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE992E8)(a1, v1);
}

uint64_t sub_26BE3DFC0()
{
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_26BE3E06C;

  return sub_26BE9053C(v1 + 16, v0);
}

uint64_t sub_26BE3E06C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_26BE3E180;
  }

  else
  {
    v3 = sub_26BE3A098;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE3E198(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return (sub_26BE99CC0)(a1, v1);
}

uint64_t sub_26BE3E268()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000026;
  *(v1 + 8) = 0x800000026C02AFE0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E330()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x800000026C02B010;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E3F8()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000023;
  *(v1 + 8) = 0x800000026C02B040;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E4C0()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000020;
  *(v1 + 8) = 0x800000026C02B070;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E588()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x800000026C02B0A0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E670()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE3E72C;
  v2 = *(v0 + 16);

  return sub_26BEAF004(v2, &unk_26C00EE48, v2);
}

uint64_t sub_26BE3E72C(unsigned int a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BE3E880, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_26BE3E8B8()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x800000026C02B0C0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E980()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x800000026C02B0E0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3EA48()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x800000026C02B110;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3EB10()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000020;
  *(v1 + 8) = 0x800000026C02B140;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3EBBC()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478EE8);
  __swift_project_value_buffer(v0, qword_280478EE8);
  return sub_26C009A4C();
}

uint64_t sub_26BE3EC30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE3EC50, 0, 0);
}

uint64_t sub_26BE3EC70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE3EC30(a1, v1);
}

uint64_t sub_26BE3ED0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE3ED2C, 0, 0);
}

uint64_t sub_26BE3ED2C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *v2 = v3;
  v2[1] = v4;
  sub_26BE00608(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE3ED9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE3EDBC, 0, 0);
}

uint64_t sub_26BE3EDBC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  *v2 = v3;
  v2[1] = v4;
  sub_26BE04890(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE3EE24(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_26BE45B9C, 0, 0);
}

uint64_t sub_26BE3EE44(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_26BE3EE64, 0, 0);
}

uint64_t sub_26BE3EE64()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 40);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_26BE04890(v3, v4);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v2 = v3;
  v2[1] = v4;
  v8 = v0[1];

  return v8();
}

uint64_t MLS.Group.Group.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = *(v1 + 80);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

uint64_t sub_26BE3EFC0(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t *a5)
{
  v6 = v5;
  v10 = *a4;
  *log = *(a4 + 8);
  v11 = *(a4 + 3);
  v12 = *(a4 + 4);
  v14 = *a5;
  v13 = a5[1];
  *(v6 + 152) = sub_26BE4126C();
  *(v6 + 40) = a3;
  *(v6 + 48) = a1;
  *(v6 + 24) = 0;
  *(v6 + 32) = a2;
  *(v6 + 56) = v14;
  *(v6 + 64) = v13;
  *(v6 + 72) = v10;
  *(v6 + 80) = *log;
  *(v6 + 96) = v11;
  *(v6 + 104) = v12;
  swift_beginAccess();
  sub_26BE295A0(a1 + 40, v31);

  sub_26BE00608(a2, a3);
  v15 = v33;
  sub_26BE11028(v32);
  if (v15)
  {
    sub_26BE00258(a2, a3);

    sub_26BE29710(v31);
    sub_26BE00258(*(v6 + 32), *(v6 + 40));
    v16 = *(v6 + 48);

    sub_26BE0489C(*(v6 + 56), *(v6 + 64));
    v17 = *(v6 + 104);

    type metadata accessor for MLS.Group.Group();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_26BE29710(v31);
    sub_26BE03890(v32, v6 + 112);
    type metadata accessor for SMSemaphore();
    v18 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v18 + 120) = MEMORY[0x277D84FA0];
    *(v18 + 112) = 1;
    *(v6 + 16) = v18;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v19 = sub_26C009A5C();
    __swift_project_value_buffer(v19, qword_280478EE8);

    v20 = sub_26C009A3C();
    v21 = sub_26C00AA1C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v31[0] = v33;
      *v22 = 136315138;

      loga = v20;
      v23 = sub_26BE3D034();
      v25 = v24;

      v26 = sub_26BE29740(v23, v25, v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_26BDFE000, loga, v21, "%s: Initialized empty group", v22, 0xCu);
      v27 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x26D69A4E0](v27, -1, -1);
      MEMORY[0x26D69A4E0](v22, -1, -1);

      sub_26BE00258(a2, a3);
    }

    else
    {
      sub_26BE00258(a2, a3);
    }
  }

  return v6;
}

uint64_t MLS.Group.Group.__allocating_init(client:ciphersuite:initPriv:leafPriv:sigPriv:keyPackage:welcome:tree:psks:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14)
{

  sub_26BE132D4(a13, a14);
  v17 = *(a2 + 32);

  sub_26BE01654();
  swift_allocError();
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 23;
  swift_willThrow();
  sub_26BE00258(a11, a12);
  sub_26BE00258(a9, a10);
  sub_26BE00258(a7, a8);
  sub_26BE00258(a5, a6);
  sub_26BE00258(a3, a4);
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.message.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.message.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.messageID.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.messageID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.originalMessageID.getter()
{
  v1 = *(v0 + 32);
  sub_26BE2BAE8(v1, *(v0 + 40));
  return v1;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.originalMessageID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE132D4(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.init(message:messageID:originalMessageID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  result = sub_26BE132D4(0, 0xF000000000000000);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t MLS.Group.Group.SignPublicApplicationMessageInput.verifiableDerivedContent.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_26BE03890(a1, v1);
}

uint64_t MLS.Group.Group.SignPublicApplicationMessageInput.messageID.getter()
{
  v1 = *(v0 + 40);
  sub_26BE00608(v1, *(v0 + 48));
  return v1;
}

uint64_t MLS.Group.Group.SignPublicApplicationMessageInput.messageID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MLS.Group.Group.SignPublicApplicationMessageInput.init(verifiableDerivedContent:messageID:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = xmmword_26C00BBD0;
  sub_26BE03890(a1, a4);
  result = sub_26BE00258(*(a4 + 40), *(a4 + 48));
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t MLS.Group.Group.EncryptWrappedApplicationMessageInput.message.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Group.Group.EncryptWrappedApplicationMessageInput.message.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.Group.Group.EncryptWrappedApplicationMessageInput.messageID.getter()
{
  v1 = *(v0 + 72);
  sub_26BE00608(v1, *(v0 + 80));
  return v1;
}

uint64_t MLS.Group.Group.EncryptWrappedApplicationMessageInput.messageID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

__n128 MLS.Group.Group.EncryptWrappedApplicationMessageInput.init(message:recipient:messageID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v6 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v6;
  result = *(a3 + 32);
  *(a6 + 48) = result;
  *(a6 + 64) = *(a3 + 48);
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
  return result;
}

uint64_t MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.newKeyPackage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.newKeyPackage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE00258(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

__n128 MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.init(target:newKeyPackage:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = *(a1 + 48);
  result = *a2;
  *(a3 + 56) = *a2;
  return result;
}

uint64_t MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

__n128 MLS.Group.Group.ReplaceExpiredCredentialOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE41488(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t MLS.Group.Group.DowngradeOutput.commitOutput.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_26BE41450(v8, &v7);
}

__n128 MLS.Group.Group.DowngradeOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE414B8(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t MLS.Group.Group.ResurrectionInput.replaceExpired.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

__n128 MLS.Group.Group.ResurrectionOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE414E8(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 MLS.Group.Group.ResurrectionOutput.init(commitOutput:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameInput.newName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameInput.newName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameInput.init(newName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.newGroupInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.nextEpochAuthenticator.getter()
{
  v1 = *(v0 + 32);
  sub_26BE00608(v1, *(v0 + 40));
  return v1;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.nextEpochAuthenticator.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.privateMessage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.privateMessage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE00258(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.encryptedGroupName.getter()
{
  v1 = *(v0 + 64);
  sub_26BE00608(v1, *(v0 + 72));
  return v1;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.encryptedGroupName.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MLS.Group.Group.DecryptNameKeysInput.privateMessage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Group.Group.DecryptNameKeysInput.privateMessage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

__n128 MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t MLS.Group.Group.DecryptNameInput.init(encryptedName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.Group.Group.DecryptNameOutput.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MLS.Group.Group.DecryptNameOutput.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26BE40028(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE40048, 0, 0);
}

uint64_t MLS.Group.Group.CreateNewEraInput.packages.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

__n128 MLS.Group.Group.CreateNewEraOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE415F8(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t MLS.Group.Group.PriorGroupMembershipInput.init(era:epochID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t MLS.Group.Group.PriorGroupMembershipOutput.members.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MLS.Group.Group.ParticipantKeyRolledInput.telURI.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.Group.Group.ParticipantKeyRolledInput.telURI.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.Group.Group.ParticipantKeyRolledInput.init(era:epochID:telURI:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

double MLS.Group.Group.MessageMetadataOutput.retrieveField(field:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = a1 == 0x63656C6665527369 && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v5;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t MLS.Group.Group.__deallocating_deinit()
{
  v1 = v0[2];

  sub_26BE00258(v0[4], v0[5]);
  v2 = v0[6];

  sub_26BE0489C(v0[7], v0[8]);
  v3 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_26BE40448()
{
  v1 = *(*v0 + 48);
  swift_beginAccess();
  result = *(v1 + 320);
  v3 = *(v1 + 328);
  return result;
}

uint64_t sub_26BE4048C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  v3 = __swift_project_value_buffer(v2, qword_280478EE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MLS.Group.GroupInfo.rawRepresentation.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Group.GroupInfo.init(fromRaw:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.Group.CommitOutput.commitMessage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Group.CommitOutput.commitMessage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MLS.Group.CommitOutput.welcomeMessage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE2BAE8(v2, v3);
}

uint64_t sub_26BE4062C(uint64_t *a1, uint64_t (*a2)(void, void))
{
  v3 = *a1;
  v4 = a1[1];
  result = a2(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return result;
}

uint64_t MLS.Group.CommitOutput.nextGroupInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE2BAE8(v2, v3);
}

uint64_t MLS.Group.CommitOutput.nextGroupInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE132D4(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MLS.Group.CommitOutput.nextEpochAuthenticator.getter()
{
  v1 = *(v0 + 48);
  sub_26BE2BAE8(v1, *(v0 + 56));
  return v1;
}

uint64_t MLS.Group.CommitOutput.nextEpochAuthenticator.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE132D4(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MLS.Group.CommitOutput.nextRatchetTree.getter()
{
  v1 = *(v0 + 64);
  sub_26BE2BAE8(v1, *(v0 + 72));
  return v1;
}

uint64_t MLS.Group.CommitOutput.nextRatchetTree.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE132D4(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MLS.Group.Message.rawRepresentation.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.data.getter()
{
  v1 = *(v0 + 56);
  sub_26BE00608(v1, *(v0 + 64));
  return v1;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.messageID.getter()
{
  v1 = *(v0 + 72);
  sub_26BE00608(v1, *(v0 + 80));
  return v1;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.messageID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter()
{
  v1 = *(v0 + 88);
  sub_26BE00608(v1, *(v0 + 96));
  return v1;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.originalMessageID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.era.setter(uint64_t result)
{
  *(v1 + 108) = result;
  *(v1 + 112) = BYTE4(result) & 1;
  return result;
}

uint64_t MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter()
{
  v1 = *(v0 + 56);
  sub_26BE00608(v1, *(v0 + 64));
  return v1;
}

uint64_t MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t MLS.Group.StateUpdate.rosterUpdate.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

__n128 MLS.Group.StateUpdate.rosterUpdate.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  result = *a1;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v8;
  return result;
}

__n128 MLS.Group.StateUpdate.init(rosterUpdate:active:epochID:committerWasSelf:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

uint64_t MLS.Group.RosterUpdate.added.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.removed.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.serverRemoved.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.updated.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.init(added:removed:serverRemoved:updated:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 MLS.Group.MemberUpdate.init(prior:new:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  v4 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 72) = v4;
  result = *(a2 + 32);
  *(a3 + 88) = result;
  *(a3 + 104) = *(a2 + 48);
  return result;
}

uint64_t static MLS.Group.MemberUpdate.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  if ((_s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1 + 7, a2 + 7);
}

uint64_t sub_26BE40F50(unint64_t *a1, uint64_t *a2)
{
  if ((_s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1 + 7, a2 + 7);
}

uint64_t _s8SwiftMLS0B0O5GroupO11StateUpdateV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);

  if (sub_26BFB03C0(v2, v6) & 1) != 0 && (sub_26BFB03C0(v3, v7) & 1) != 0 && (sub_26BFB03C0(v4, v8))
  {
    v13 = sub_26BFB0958(v5, v9);

    return v13 & ~(v14 ^ v10) & (v15 == v11);
  }

  else
  {

    return 0;
  }
}

uint64_t _s8SwiftMLS0B0O5GroupO12RosterUpdateV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_26BFB03C0(*a1, *a2) & 1) == 0 || (sub_26BFB03C0(v2, v5) & 1) == 0 || (sub_26BFB03C0(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_26BFB0958(v3, v6);
}

uint64_t sub_26BE411D0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26C00A5AC();

    return sub_26C00A66C();
  }

  return result;
}

uint64_t sub_26BE4126C()
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 1;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26C00A45C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = sub_26C00A45C();
  v5 = [v3 integerForKey_];

  if (v5 < 1)
  {
    return 1;
  }

  if (HIDWORD(v5))
  {
    __break(1u);
    return 1;
  }

  return v5;
}

uint64_t sub_26BE41358(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE40028(a1, v1);
}

uint64_t sub_26BE41518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E698, &unk_26C0204F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE41588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E698, &unk_26C0204F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of MLS.Group.Group.epochID.getter()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE417BC;

  return v6();
}

uint64_t sub_26BE417BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.groupID.getter()
{
  v2 = *(*v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE45BC8;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.epochAuthenticator.getter()
{
  v2 = *(*v0 + 264);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE41AE0;

  return v6();
}

uint64_t sub_26BE41AE0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.ratchetTree.getter()
{
  v2 = *(*v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE3B910;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.credential.getter(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE28F58;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.signingIdentity.getter(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.memberIdentity.getter(uint64_t a1)
{
  v4 = *(*v1 + 328);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.members.getter()
{
  v2 = *(*v0 + 368);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3E0;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.hasEndMLS.getter()
{
  v2 = *(*v0 + 376);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3E0;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingMessage(message:readdedWelcome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 408);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingMessage(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingHandshakeMessage(message:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 424);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingApplicationMessage(message:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 432);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingCommit(message:readdedWelcome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 440);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingCommitList(message:)(uint64_t a1)
{
  v4 = *(*v1 + 448);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3E0;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingCommitList(message:readdedWelcome:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 456);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2CD5C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingProposalList(message:)(uint64_t a1)
{
  v4 = *(*v1 + 464);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3E0;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.addMembers(packages:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 472);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.removeMembers(signingIdentities:isServerRemove:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 480);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.proposeRemoveSelf()(uint64_t a1)
{
  v4 = *(*v1 + 488);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.selfUpdate(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 496);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.encryptApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 504);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.commit()(uint64_t a1)
{
  v4 = *(*v1 + 512);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.generateGroupInfo()(uint64_t a1)
{
  v4 = *(*v1 + 528);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.delete()()
{
  v2 = *(*v0 + 536);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3F4;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.encryptApplicationMessageWithAAD(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 544);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.signPublicApplicationMessage(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 552);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.encryptWrappedApplicationMessage(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 560);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.decryptWrappedApplicationMessage(_:)(uint64_t a1)
{
  v4 = *(*v1 + 568);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE45BF4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.replaceExpiredCredential(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 576);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.performDowngradeToUnencrypted()(uint64_t a1)
{
  v4 = *(*v1 + 584);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.performResurrection(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 592);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.changeRCSGroupName(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 600);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.decryptNameKeys(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 608);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.decryptName(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 616);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.hasGroupNameKey.getter()
{
  v2 = *(*v0 + 624);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2CD5C;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.currentEra.getter()
{
  v2 = *(*v0 + 656);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE4445C;

  return v6();
}

uint64_t sub_26BE4445C(unint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1 | ((HIDWORD(a1) & 1) << 32));
}

uint64_t dispatch thunk of MLS.Group.Group.createNewEra(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 664);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.priorGroupMembership(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 672);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE28F58;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.participantKeyRolled(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 680);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.mustUpdateLeafKey.getter()
{
  v2 = *(*v0 + 688);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3E0;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.mustUpdateLeafCredential.getter()
{
  v2 = *(*v0 + 696);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3E0;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.mustUpdateOtherMember.getter()
{
  v2 = *(*v0 + 704);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3E0;

  return v6();
}

uint64_t dispatch thunk of MLS.Group.Group.messageMetadata(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 712);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO7MessageVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_26BE44DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26BE44E2C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26BE44EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26BE44F00(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_26BE44F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE44FD8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26BE450A4(uint64_t a1, int a2)
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

uint64_t sub_26BE450EC(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8IdentityO07SigningC0VSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BE45198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26BE451F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26BE45268(uint64_t *a1, int a2)
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

uint64_t sub_26BE452B0(uint64_t result, int a2, int a3)
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

uint64_t sub_26BE4531C(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BE45378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_26BE4540C(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26BE454CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE45514(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_26BE45570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE455C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO11StateUpdateVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO15ReceivedMessageO(uint64_t a1)
{
  if ((*(a1 + 113) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 113) & 7;
  }
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BE456A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 114))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 113);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE456E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 113) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BE4573C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 113) = a2;
  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BE457AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26BE45808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_26BE4588C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26BE458E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26BE45978(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26BE459C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE45A20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26BE45A68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_26BE45ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE45B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MLS.TreeKEMPublicKey.hashes.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.TreeKEMPublicKey.ratchetTree.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

unint64_t MLS.TreeKEMPublicKey.init(ciphersuiteID:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v3 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  result = sub_26C004AC0(v3);
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t MLS.TreeKEMPublicKey.init(ciphersuiteID:serializedData:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  v81 = *MEMORY[0x277D85DE8];
  v52 = *a1;
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v8 = *(a2 + 16);
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    v8 = a2;
LABEL_6:
    sub_26BE00608(a2, a3);
  }

  v78 = a2;
  v79 = a3;
  v80 = v8;
  sub_26BE00608(a2, a3);
  sub_26BE00608(a2, a3);
  sub_26BF30764(&v78, &__dst);
  if (v4)
  {
    sub_26BE00258(v78, v79);
    v78 = a2;
    v79 = a3;
    v80 = v8;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (BYTE8(__dst))
  {
    sub_26BE00258(v78, v79);
    v10 = a3;
    v11 = a2;
LABEL_13:
    sub_26BE00258(v11, v10);
    v78 = a2;
    v79 = a3;
    v80 = v8;
    sub_26BE01600();
    swift_allocError();
    *v12 = 1;
    goto LABEL_14;
  }

  v17 = __dst;
  sub_26BE00258(a2, a3);
  if (v17 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v18 = 5;
    goto LABEL_9;
  }

  v19 = sub_26BF2A44C(v17);
  if (v20 >> 60 == 15)
  {
    v11 = v78;
    v10 = v79;
    goto LABEL_13;
  }

  v75 = v19;
  v76 = v20;
  v77 = v21;
  v22 = MEMORY[0x277D84F90];
  v51 = v8;
  while (1)
  {
    v23 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v24 = *(v19 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v23)
    {
      v24 = v19 >> 32;
    }

    else
    {
      v24 = BYTE6(v20);
    }

    v25 = __OFSUB__(v24, v21);
    v26 = v24 - v21;
    if (v25)
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v26 < 1)
    {
      break;
    }

    v27 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_71;
    }

    if (v23 <= 1)
    {
      if (v23)
      {
        v28 = v19 >> 32;
      }

      else
      {
        v28 = BYTE6(v20);
      }

LABEL_37:
      if (v28 < v27)
      {
        goto LABEL_50;
      }

      goto LABEL_40;
    }

    if (v23 == 2)
    {
      v28 = *(v19 + 24);
      goto LABEL_37;
    }

    if (v27 > 0)
    {
LABEL_50:
      sub_26BE01600();
      swift_allocError();
      *v39 = 1;
      swift_willThrow();

      sub_26BE00258(v75, v76);
      goto LABEL_10;
    }

LABEL_40:
    *&v57 = v19;
    *(&v57 + 1) = v20;
    if (v27 < v21)
    {
      goto LABEL_72;
    }

    *&v55[0] = v21;
    *(&v55[0] + 1) = v21 + 1;
    sub_26BE00608(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v57, *(&v57 + 1));
    v77 = v27;
    sub_26BE2E2B8(&v57);
    v72 = v63;
    v73 = v64;
    v74 = v65;
    v68 = v59;
    v69 = v60;
    v70 = v61;
    v71 = v62;
    __dst = v57;
    v67 = v58;
    v8 = v51;
    sub_26BE2E1F0(&v57, v55, &qword_28045E4C8, &unk_26C0112A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_26BEEB900(0, v22[2] + 1, 1, v22);
    }

    v30 = v22[2];
    v29 = v22[3];
    if (v30 >= v29 >> 1)
    {
      v22 = sub_26BEEB900((v29 > 1), v30 + 1, 1, v22);
    }

    v55[6] = v72;
    v55[7] = v73;
    v56 = v74;
    v55[2] = v68;
    v55[3] = v69;
    v55[4] = v70;
    v55[5] = v71;
    v55[0] = __dst;
    v55[1] = v67;
    sub_26BE2E258(v55, &qword_28045E4C8, &unk_26C0112A0);
    v22[2] = v30 + 1;
    v31 = &v22[17 * v30];
    *(v31 + 2) = v57;
    v32 = v61;
    v34 = v58;
    v33 = v59;
    *(v31 + 5) = v60;
    *(v31 + 6) = v32;
    *(v31 + 3) = v34;
    *(v31 + 4) = v33;
    v36 = v63;
    v35 = v64;
    v37 = v62;
    v31[20] = v65;
    *(v31 + 8) = v36;
    *(v31 + 9) = v35;
    *(v31 + 7) = v37;
    v19 = v75;
    v20 = v76;
    v21 = v77;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v38 = *(v19 + 24);
    }

    else
    {
      v38 = 0;
    }
  }

  else if (v23)
  {
    v38 = v19 >> 32;
  }

  else
  {
    v38 = BYTE6(v20);
  }

  if (__OFSUB__(v38, v21))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v38 == v21)
  {
    sub_26BE00258(v19, v20);
    sub_26BE00258(a2, a3);
    sub_26BE00258(v78, v79);
    v40 = v22[2];
    if (v40)
    {
      memmove(&__dst, &v22[17 * v40 - 13], 0x88uLL);
      if (sub_26BE58C10(&__dst) == 1)
      {
        sub_26BE01654();
        swift_allocError();
        *v41 = 35;
        *(v41 + 8) = 0u;
        *(v41 + 24) = 0u;
        *(v41 + 40) = 0u;
        *(v41 + 56) = 0u;
        *(v41 + 72) = 0u;
        *(v41 + 88) = 0u;
        *(v41 + 104) = 0;
        *(v41 + 112) = 23;
        swift_willThrow();
        sub_26BE00258(a2, a3);

        goto LABEL_15;
      }

      v54 = 0;
      *&v57 = v22;
      MLS.RatchetTree.leafCount.getter(v55);
      v43 = v55[0];
      if (LODWORD(v55[0]))
      {
        v43 = 1;
        v54 = 1;
        v44 = v22[2];
        if (v44 >= 2)
        {
          v45 = 1;
          do
          {
            if (v45 < 0)
            {
              goto LABEL_73;
            }

            v43 = 2 * v45;
            v46 = (4 * v45 - 1);
            v45 *= 2;
          }

          while (v44 > v46);
          v54 = v43;
        }
      }

      v47 = v43 != 0;
      v48 = v43 - 1;
      if (v47)
      {
        if ((v48 & 0x80000000) == 0)
        {
          sub_26BECA280((2 * v48) | 1);
          v53 = sub_26C004AC0(MEMORY[0x277D84F90]);
          LODWORD(v55[0]) = v54;
          MLS.NodeIndex.init(forRoot:)(v55, &v57);
          sub_26BE4BE9C(&v57);
          sub_26BE00258(v49, v50);
          result = sub_26BE00258(a2, a3);
          *a4 = v52;
          *(a4 + 8) = v53;
          *(a4 + 16) = v54;
          *(a4 + 24) = v22;
          goto LABEL_15;
        }

LABEL_77:
        __break(1u);
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_26BE01654();
  swift_allocError();
  *v42 = 0;
  v42[112] = 1;
  swift_willThrow();

  sub_26BE00258(v75, v76);
LABEL_10:
  sub_26BE00258(v78, v79);
  v78 = a2;
  v79 = a3;
  v80 = v8;
LABEL_14:
  swift_willThrow();
  *&__dst = &type metadata for MLS.RatchetTree;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
  v13 = sub_26C00A4FC();
  sub_26BE826C4(v13, v14, a2, a3);

  swift_willThrow();
  sub_26BE00258(a2, a3);
  result = sub_26BE00258(v78, v79);
LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.TreeKEMPublicKey.hashTree()()
{
  v5 = *(v0 + 16);
  MLS.NodeIndex.init(forRoot:)(&v5, &v6);
  if (!v1)
  {
    v4 = v6;
    sub_26BE4BE9C(&v4);
    sub_26BE00258(v2, v3);
  }
}

uint64_t MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)@<X0>(__int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v16 = xmmword_26C00BBD0;
  v17 = 0;
  v19 = v6;
  sub_26BE7D80C(&v19);

  if (v3)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v8 = *(&v16 + 1) >> 62;
  if ((*(&v16 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v16 >> 32;
LABEL_9:
    if (v9 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = *(v16 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v10 = sub_26C00909C();
  v12 = v11;
  sub_26BE00258(0, 0xC000000000000000);
  LOWORD(v19) = v5;
  result = MLS.TreeKEMPublicKey.init(ciphersuiteID:serializedData:)(&v19, v10, v12, &v16);
  v13 = *(&v16 + 1);
  v14 = v17;
  v15 = v18;
  *a3 = v16;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  return result;
}

void sub_26BE46704(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (v5 != 0x80000000)
    {
      if (v3 - 1 < 0)
      {
        goto LABEL_18;
      }

      if (v4 > 2 * (v3 - 1))
      {
        sub_26BE01654();
        swift_allocError();
        *v8 = 30;
        *(v8 + 8) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0;
        *(v8 + 112) = 23;
        swift_willThrow();
        return;
      }

      v6 = *(v1 + 24);
      if (*(v6 + 16) <= v4 || (memmove(__dst, (v6 + 136 * v4 + 32), 0x88uLL), sub_26BE58C10(__dst) == 1))
      {
        *a1 = v5;
        return;
      }

      ++v5;
      v4 += 2;
      if (v3 == v5)
      {
        if ((v3 & 0x80000000) == 0)
        {
          *(v1 + 16) = 2 * v3;
          v7 = 2 * v3 - 1;
          if (v7 >= 0)
          {
            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_12:
  v7 = 0;
  *(v1 + 16) = 1;
LABEL_13:
  sub_26BECA280((2 * v7) | 1);
  *a1 = v3;
}

unsigned int *MLS.TreeKEMPublicKey.blankAt(index:)(unsigned int *result)
{
  v2 = *(v1 + 16);
  v3 = v2 - 1;
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = *result;
  if (v4 <= 2 * v3)
  {
    v6 = *(v1 + 24);
    if (*(v6 + 16) <= v4)
    {
      sub_26BE2E2B8(v23);
    }

    else
    {
      v7 = v6 + 136 * v4;
      v14 = *(v7 + 32);
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 96);
      v17 = *(v7 + 80);
      v18 = v10;
      v15 = v8;
      v16 = v9;
      v11 = *(v7 + 112);
      v12 = *(v7 + 128);
      v13 = *(v7 + 144);
      v22 = *(v7 + 160);
      v20 = v12;
      v21 = v13;
      v19 = v11;
      sub_26BE2E1F0(&v14, v23, &qword_28045E4C8, &unk_26C0112A0);
      v23[6] = v20;
      v23[7] = v21;
      v24 = v22;
      v23[2] = v16;
      v23[3] = v17;
      v23[4] = v18;
      v23[5] = v19;
      v23[0] = v14;
      v23[1] = v15;
    }

    LOBYTE(v1) = sub_26BE58C10(v23) != 0;
    sub_26BE2E258(v23, &qword_28045E4C8, &unk_26C0112A0);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v5 = 30;
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0;
    *(v5 + 112) = 23;
    swift_willThrow();
  }

  return (v1 & 1);
}

void MLS.TreeKEMPublicKey.addLeaf(_:)(uint64_t a1@<X0>, unsigned int *a2@<X8>)
{
  v6 = *(a1 + 112);
  v152[6] = *(a1 + 96);
  v152[7] = v6;
  v153 = *(a1 + 128);
  v7 = *(a1 + 48);
  v152[2] = *(a1 + 32);
  v152[3] = v7;
  v8 = *(a1 + 80);
  v152[4] = *(a1 + 64);
  v152[5] = v8;
  v9 = *(a1 + 16);
  v152[0] = *a1;
  v152[1] = v9;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  LOWORD(v133) = *v2;
  *(&v133 + 1) = v10;
  LODWORD(v134) = v11;
  *(&v134 + 1) = v12;
  sub_26BE00758(v152, &v143);

  v13 = sub_26BE59564(&v133, v152);
  if (v3)
  {
    sub_26BE00854(v152);
LABEL_3:

    return;
  }

  v14 = v13;
  sub_26BE00854(v152);

  if (v14)
  {
    sub_26BE01654();
    swift_allocError();
    v16 = 26;
LABEL_6:
    *v15 = v16;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0;
    *(v15 + 112) = 23;
    swift_willThrow();
    return;
  }

  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  LOWORD(v133) = *v2;
  *(&v133 + 1) = v17;
  LODWORD(v134) = v18;
  *(&v134 + 1) = v19;
  sub_26BE00758(v152, &v143);

  LOBYTE(v17) = sub_26BE58C50(&v133, v152);
  sub_26BE00854(v152);

  if (v17)
  {
    sub_26BE01654();
    swift_allocError();
    v16 = 27;
    goto LABEL_6;
  }

  v154 = v2;
  sub_26BE46704(&v142);
  v20 = v142;
  if ((v142 & 0x80000000) == 0)
  {
    v132 = 2 * v142;
    v21 = *(a1 + 112);
    v139 = *(a1 + 96);
    v140 = v21;
    v141 = *(a1 + 128);
    v22 = *(a1 + 48);
    v135 = *(a1 + 32);
    v136 = v22;
    v23 = *(a1 + 64);
    v138 = *(a1 + 80);
    v137 = v23;
    v24 = *a1;
    v134 = *(a1 + 16);
    v133 = v24;
    sub_26BE140D0(&v133);
    v149 = v139;
    v150 = v140;
    v151 = v141;
    v145 = v135;
    v146 = v136;
    v148 = v138;
    v147 = v137;
    v144 = v134;
    v143 = v133;
    nullsub_1(&v143);
    v129 = v149;
    v130 = v150;
    v131 = v151;
    v125 = v145;
    v126 = v146;
    v128 = v148;
    v127 = v147;
    v124 = v144;
    v123 = v143;
    sub_26BE00758(v152, v121);
    v25 = v154;
    sub_26BE473C8(&v132, &v123);
    v121[7] = v130;
    v122 = v131;
    v121[2] = v125;
    v121[3] = v126;
    v121[5] = v128;
    v121[6] = v129;
    v121[4] = v127;
    v121[0] = v123;
    v121[1] = v124;
    sub_26BE2E258(v121, &qword_28045E4C8, &unk_26C0112A0);
    LODWORD(__dst) = 2 * v20;
    LODWORD(v110[0]) = *(v25 + 16);
    v26 = sub_26BE7B518(v110);
    v27 = v26;
    v83 = v20;
    v28 = *(v26 + 2);
    v29 = v154;
    if (!v28)
    {
LABEL_47:

      LODWORD(__dst) = v83;
      sub_26BE476A8(&__dst);
      *a2 = v83;
      return;
    }

    v30 = 0;
    v31 = v26 + 32;
    v79 = *(v26 + 2);
    v80 = v26;
    v78 = v26 + 32;
    while (v30 < *(v27 + 2))
    {
      v32 = *(v29 + 16);
      v33 = v32 != 0;
      v34 = v32 - 1;
      if (!v33)
      {
        goto LABEL_51;
      }

      if (v34 < 0)
      {
        goto LABEL_52;
      }

      v35 = *&v31[4 * v30];
      v36 = *(v29 + 24);
      if (v35 > 2 * v34)
      {
        v74 = *(v29 + 8);

        sub_26BE01654();
        swift_allocError();
        *v75 = 30;
        *(v75 + 8) = 0u;
        *(v75 + 24) = 0u;
        *(v75 + 40) = 0u;
        *(v75 + 56) = 0u;
        *(v75 + 72) = 0u;
        *(v75 + 88) = 0u;
        *(v75 + 104) = 0;
        *(v75 + 112) = 23;
        swift_willThrow();
        goto LABEL_3;
      }

      if (v36[2] > v35)
      {
        v37 = &v36[17 * v35];
        v110[0] = *(v37 + 2);
        v38 = *(v37 + 3);
        v39 = *(v37 + 4);
        v40 = *(v37 + 6);
        v110[3] = *(v37 + 5);
        v110[4] = v40;
        v110[1] = v38;
        v110[2] = v39;
        v41 = *(v37 + 7);
        v42 = *(v37 + 8);
        v43 = *(v37 + 9);
        v111 = v37[20];
        v110[6] = v42;
        v110[7] = v43;
        v110[5] = v41;
        memmove(&__dst, v37 + 4, 0x88uLL);
        if (sub_26BE58C10(&__dst) != 1)
        {
          v108[6] = v118;
          v108[7] = v119;
          v109 = v120;
          v108[2] = v114;
          v108[3] = v115;
          v108[4] = v116;
          v108[5] = v117;
          v108[0] = __dst;
          v108[1] = v113;
          if (sub_26BE592C4(v108) != 1)
          {
            sub_26BE13A3C(v108);
            v105 = v118;
            v106 = v119;
            v107 = v120;
            v101 = v114;
            v102 = v115;
            v103 = v116;
            v104 = v117;
            v99 = __dst;
            v100 = v113;
            v76 = sub_26BE13A3C(&v99);
            sub_26BE00758(v76, &v90);

            sub_26BE01654();
            swift_allocError();
            *v77 = 28;
            *(v77 + 8) = 0u;
            *(v77 + 24) = 0u;
            *(v77 + 40) = 0u;
            *(v77 + 56) = 0u;
            *(v77 + 72) = 0u;
            *(v77 + 88) = 0u;
            *(v77 + 104) = 0;
            *(v77 + 112) = 23;
            swift_willThrow();
            sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
            return;
          }

          v44 = sub_26BE13A3C(v108);
          v45 = *v44;
          v81 = v44[3];
          v46 = v44[4];
          v47 = *(v46 + 2);
          v85 = v44[2];
          v86 = *v44;
          v84 = v44[1];
          if (v47)
          {
            for (i = 0; i != v47; ++i)
            {
              if (v83 < *&v46[4 * i + 32])
              {
                sub_26BE2E1F0(v110, &v99, &qword_28045E4C8, &unk_26C0112A0);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v89 = v46;
                if (!isUniquelyReferenced_nonNull_native || v47 >= *(v46 + 3) >> 1)
                {
                  v46 = sub_26BEEBEAC(isUniquelyReferenced_nonNull_native, v47 + 1, 1, v46);
                  v89 = v46;
                }

                v56 = v81;
                sub_26BE58910(i, i, 1, v83);
                v53 = v86;
                goto LABEL_39;
              }
            }

            sub_26BE2E1F0(v110, &v99, &qword_28045E4C8, &unk_26C0112A0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_26BEEBEAC(0, v47 + 1, 1, v46);
            }

            v50 = *(v46 + 2);
            v49 = *(v46 + 3);
            v51 = v50 + 1;
            v52 = v83;
            v53 = v86;
            if (v50 >= v49 >> 1)
            {
              v54 = sub_26BEEBEAC((v49 > 1), v50 + 1, 1, v46);
              v53 = v86;
              goto LABEL_46;
            }
          }

          else
          {
            sub_26BE2E1F0(v110, &v99, &qword_28045E4C8, &unk_26C0112A0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_26BEEBEAC(0, 1, 1, v46);
            }

            v50 = *(v46 + 2);
            v55 = *(v46 + 3);
            v51 = v50 + 1;
            v52 = v83;
            if (v50 >= v55 >> 1)
            {
              v54 = sub_26BEEBEAC((v55 > 1), v50 + 1, 1, v46);
              v53 = v45;
LABEL_46:
              v52 = v83;
              v46 = v54;
            }

            else
            {
              v53 = v45;
            }
          }

          *(v46 + 2) = v51;
          *&v46[4 * v50 + 32] = v52;
          v56 = v81;
LABEL_39:
          *&v90 = v53;
          *(&v90 + 1) = v84;
          *&v91 = v85;
          *(&v91 + 1) = v56;
          *&v92 = v46;
          sub_26BE1408C(&v90);
          v105 = v96;
          v106 = v97;
          v107 = v98;
          v101 = v92;
          v102 = v93;
          v103 = v94;
          v104 = v95;
          v99 = v90;
          v100 = v91;
          nullsub_1(&v99);
          v58 = v56;
          v59 = v36;
          v82 = v36[2];
          sub_26BE00608(v86, v84);
          sub_26BE00608(v85, v58);

          if (v82 <= v35)
          {
            sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE00258(v86, v84);
            sub_26BE00258(v85, v58);
            swift_bridgeObjectRelease_n();
            v28 = v79;
            v27 = v80;
            v31 = v78;
            v29 = v154;
          }

          else
          {
            v60 = swift_isUniquelyReferenced_nonNull_native();
            v29 = v154;
            *(v154 + 24) = v36;
            if (v60)
            {
              sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
            }

            else
            {
              v59 = sub_26BE58820(v36);
              sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
              *(v29 + 24) = v59;
            }

            if (v59[2] <= v35)
            {
              goto LABEL_54;
            }

            v61 = &v59[17 * v35];
            v87[0] = *(v61 + 2);
            v62 = *(v61 + 3);
            v63 = *(v61 + 4);
            v64 = *(v61 + 6);
            v87[3] = *(v61 + 5);
            v87[4] = v64;
            v87[1] = v62;
            v87[2] = v63;
            v65 = *(v61 + 7);
            v66 = *(v61 + 8);
            v67 = *(v61 + 9);
            v88 = v61[20];
            v87[6] = v66;
            v87[7] = v67;
            v87[5] = v65;
            *(v61 + 2) = v99;
            v68 = v100;
            v69 = v101;
            v70 = v103;
            *(v61 + 5) = v102;
            *(v61 + 6) = v70;
            *(v61 + 3) = v68;
            *(v61 + 4) = v69;
            v71 = v104;
            v72 = v105;
            v73 = v106;
            v61[20] = v107;
            *(v61 + 8) = v72;
            *(v61 + 9) = v73;
            *(v61 + 7) = v71;
            sub_26BE2E258(v87, &qword_28045E4C8, &unk_26C0112A0);

            *(v29 + 24) = v59;
            v28 = v79;
            v27 = v80;
            v31 = v78;
          }
        }
      }

      if (++v30 == v28)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_26BE473C8(uint64_t result, __int128 *a2)
{
  v4 = *result;
  v5 = a2[7];
  v33 = a2[6];
  v34 = v5;
  v35 = *(a2 + 16);
  v6 = a2[3];
  v29 = a2[2];
  v30 = v6;
  v7 = a2[5];
  v31 = a2[4];
  v32 = v7;
  v8 = a2[1];
  v27 = *a2;
  v28 = v8;
  v9 = *(v3 + 16);
  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    result = sub_26BE58820(v2);
    v2 = result;
    *(v3 + 24) = result;
LABEL_7:
    if (v2[2] <= v4)
    {
      __break(1u);
    }

    else
    {
      v12 = &v2[17 * v4];
      v25[0] = *(v12 + 2);
      v13 = *(v12 + 3);
      v14 = *(v12 + 4);
      v15 = *(v12 + 6);
      v25[3] = *(v12 + 5);
      v25[4] = v15;
      v25[1] = v13;
      v25[2] = v14;
      v16 = *(v12 + 7);
      v17 = *(v12 + 8);
      v18 = *(v12 + 9);
      v26 = v12[20];
      v25[6] = v17;
      v25[7] = v18;
      v25[5] = v16;
      *(v12 + 2) = v27;
      v19 = v28;
      v20 = v29;
      v21 = v31;
      *(v12 + 5) = v30;
      *(v12 + 6) = v21;
      *(v12 + 3) = v19;
      *(v12 + 4) = v20;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v12[20] = v35;
      *(v12 + 8) = v23;
      *(v12 + 9) = v24;
      *(v12 + 7) = v22;
      result = sub_26BE2E258(v25, &qword_28045E4C8, &unk_26C0112A0);
      *(v3 + 24) = v2;
    }

    return result;
  }

  if (v11 < 0)
  {
    goto LABEL_10;
  }

  if (v4 <= 2 * v11)
  {
    v2 = *(v3 + 24);
    if (v2[2] > v4)
    {
      sub_26BE2E1F0(&v27, v25, &qword_28045E4C8, &unk_26C0112A0);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v2;
      if (result)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  return result;
}

void MLS.TreeKEMPublicKey.nodeAt(index:)(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3 - 1;
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = *a1;
  if (v5 <= 2 * v4)
  {
    v7 = *(v2 + 24);
    if (*(v7 + 16) <= v5)
    {
      sub_26BE2E2B8(&v25);
      v20 = v32;
      *(a2 + 96) = v31;
      *(a2 + 112) = v20;
      *(a2 + 128) = v33;
      v21 = v28;
      *(a2 + 32) = v27;
      *(a2 + 48) = v21;
      v22 = v30;
      *(a2 + 64) = v29;
      *(a2 + 80) = v22;
      v23 = v26;
      *a2 = v25;
      *(a2 + 16) = v23;
    }

    else
    {
      v8 = v7 + 136 * v5;
      v25 = *(v8 + 32);
      v9 = *(v8 + 48);
      v10 = *(v8 + 64);
      v11 = *(v8 + 96);
      v28 = *(v8 + 80);
      v29 = v11;
      v26 = v9;
      v27 = v10;
      v12 = *(v8 + 112);
      v13 = *(v8 + 128);
      v14 = *(v8 + 144);
      v33 = *(v8 + 160);
      v31 = v13;
      v32 = v14;
      v30 = v12;
      v15 = *(v8 + 144);
      *(a2 + 96) = *(v8 + 128);
      *(a2 + 112) = v15;
      *(a2 + 128) = *(v8 + 160);
      v16 = *(v8 + 80);
      *(a2 + 32) = *(v8 + 64);
      *(a2 + 48) = v16;
      v17 = *(v8 + 112);
      *(a2 + 64) = *(v8 + 96);
      *(a2 + 80) = v17;
      v18 = *(v8 + 48);
      *a2 = *(v8 + 32);
      *(a2 + 16) = v18;
      sub_26BE2E1F0(&v25, v24, &qword_28045E4C8, &unk_26C0112A0);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v6 = 30;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0;
    *(v6 + 112) = 23;
    swift_willThrow();
  }
}

char *sub_26BE476A8(char *result)
{
  v3 = *result;
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v1;
    v5 = 2 * v3;
    sub_26BF9277C(2 * v3, &v16);
    sub_26BE136AC(v16, *(&v16 + 1));
    LODWORD(v16) = v5;
    v17 = *(v1 + 16);
    result = sub_26BE7B518(&v17);
    if (!v2)
    {
      v6 = *(result + 2);
      if (v6)
      {
        v7 = (result + 32);
        do
        {
          v8 = *v7++;
          v9 = *(v4 + 8);
          v10 = sub_26BEBB414(v8);
          if (v11)
          {
            v12 = v10;
            v13 = *(v4 + 8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v15 = *(v4 + 8);
            *&v16 = v15;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_26BE6DC08();
              v15 = v16;
            }

            sub_26BE00258(*(*(v15 + 56) + 16 * v12), *(*(v15 + 56) + 16 * v12 + 8));
            sub_26C000898(v12, v15);
            *(v4 + 8) = v15;
          }

          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

uint64_t MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(unsigned int *a1, __int128 *a2)
{
  v134 = *MEMORY[0x277D85DE8];
  v4 = a2[5];
  v5 = a2[7];
  v122 = a2[6];
  v123 = v5;
  v6 = a2[1];
  v7 = a2[3];
  v118 = a2[2];
  v119 = v7;
  v8 = a2[3];
  v9 = a2[5];
  v120 = a2[4];
  v121 = v9;
  v10 = a2[1];
  v116 = *a2;
  v117 = v10;
  v11 = a2[7];
  v131 = v122;
  v132 = v11;
  v127 = v118;
  v128 = v8;
  v129 = v120;
  v130 = v4;
  v12 = *a1;
  v124 = *(a2 + 16);
  v133 = *(a2 + 16);
  v125 = v116;
  v126 = v6;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  LOWORD(v98) = *v2;
  *(&v98 + 1) = v13;
  LODWORD(v99) = v14;
  *(&v99 + 1) = v15;
  sub_26BE00758(&v116, &__dst);

  v16 = sub_26BE59564(&v98, &v116);
  if (v3)
  {
    sub_26BE00854(&v116);

    goto LABEL_3;
  }

  v18 = v16;
  sub_26BE00854(&v116);

  if (v18)
  {
    sub_26BE01654();
    swift_allocError();
    v20 = 26;
LABEL_6:
    *v19 = v20;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 88) = 0u;
    *(v19 + 104) = 0;
    *(v19 + 112) = 23;
    result = swift_willThrow();
    goto LABEL_68;
  }

  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  v68 = *(v2 + 8);

  if (!v21)
  {
LABEL_66:

    LODWORD(v71) = v12;
    MLS.TreeKEMPublicKey.blankPath(index:)(&v71);
    if ((v12 & 0x80000000) == 0)
    {
      *v70 = 2 * v12;
      v104 = v131;
      v105 = v132;
      v106 = v133;
      v100 = v127;
      v101 = v128;
      v102 = v129;
      v103 = v130;
      v98 = v125;
      v99 = v126;
      sub_26BE140D0(&v98);
      v113 = v104;
      v114 = v105;
      v115 = v106;
      v109 = v100;
      v110 = v101;
      v111 = v102;
      v112 = v103;
      __dst = v98;
      v108 = v99;
      nullsub_1(&__dst);
      v95 = v113;
      v96 = v114;
      v97 = v115;
      v91 = v109;
      v92 = v110;
      v93 = v111;
      v94 = v112;
      v89 = __dst;
      v90 = v108;
      sub_26BE00758(&v116, &v80);
      sub_26BE473C8(v70, &v89);
      v86 = v95;
      v87 = v96;
      v88 = v97;
      v82 = v91;
      v83 = v92;
      v84 = v93;
      v85 = v94;
      v80 = v89;
      v81 = v90;
      sub_26BE2E258(&v80, &qword_28045E4C8, &unk_26C0112A0);
      LODWORD(v69[0]) = v12;
      result = sub_26BE476A8(v69);
      goto LABEL_68;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }

  v23 = 0;
  while (1)
  {
    if (v23 == 0x100000000)
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v21 - 1 < 0)
    {
      goto LABEL_73;
    }

    if (v23 > 2 * (v21 - 1))
    {
LABEL_69:
      sub_26BE01654();
      swift_allocError();
      v57 = 30;
      goto LABEL_70;
    }

    if (*(v22 + 16) <= v23)
    {
      goto LABEL_10;
    }

    v24 = (v22 + 32 + 136 * v23);
    memmove(&__dst, v24, 0x88uLL);
    if (sub_26BE58C10(&__dst) == 1)
    {
      goto LABEL_10;
    }

    v89 = *v24;
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[4];
    v92 = v24[3];
    v93 = v27;
    v90 = v25;
    v91 = v26;
    v28 = v24[5];
    v29 = v24[6];
    v30 = v24[7];
    v97 = *(v24 + 16);
    v95 = v29;
    v96 = v30;
    v94 = v28;
    memmove(&v98, v24, 0x88uLL);
    if (sub_26BE58C10(&v98) == 1)
    {
      goto LABEL_69;
    }

    v86 = v104;
    v87 = v105;
    v88 = v106;
    v82 = v100;
    v83 = v101;
    v84 = v102;
    v85 = v103;
    v80 = v98;
    v81 = v99;
    v31 = sub_26BE592C4(&v80);
    v32 = sub_26BE13A3C(&v80);
    if (v31 == 1)
    {
      break;
    }

    if (2 * v12 == v23)
    {
      goto LABEL_10;
    }

    v33 = *(v32 + 16);
    v34 = *(v32 + 24);
    v35 = *(&v117 + 1);
    v36 = v34 >> 62;
    v37 = *(&v117 + 1) >> 62;
    if (v34 >> 62 == 3)
    {
      v38 = 0;
      if (!v33 && v34 == 0xC000000000000000 && *(&v117 + 1) >> 62 == 3)
      {
        v38 = 0;
        if (v117 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_65:

          sub_26BE01654();
          swift_allocError();
          v20 = 27;
          goto LABEL_6;
        }
      }

LABEL_35:
      if (v37 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        v38 = BYTE6(v34);
        if (v37 > 1)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      LODWORD(v38) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_78;
      }

      v38 = v38;
      goto LABEL_35;
    }

    if (v36 == 2)
    {
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      v41 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (v41)
      {
        goto LABEL_77;
      }

      goto LABEL_35;
    }

    v38 = 0;
    if (v37 > 1)
    {
LABEL_41:
      if (v37 != 2)
      {
        if (!v38)
        {
          goto LABEL_65;
        }

        goto LABEL_10;
      }

      v44 = *(v117 + 16);
      v43 = *(v117 + 24);
      v41 = __OFSUB__(v43, v44);
      v42 = v43 - v44;
      if (v41)
      {
        goto LABEL_75;
      }

      goto LABEL_43;
    }

LABEL_36:
    if (v37)
    {
      LODWORD(v42) = DWORD1(v117) - v117;
      if (__OFSUB__(DWORD1(v117), v117))
      {
        goto LABEL_76;
      }

      v42 = v42;
    }

    else
    {
      v42 = BYTE14(v117);
    }

LABEL_43:
    if (v38 != v42)
    {
      goto LABEL_10;
    }

    if (v38 < 1)
    {
      goto LABEL_65;
    }

    if (v36 > 1)
    {
      v66 = v117;
      if (v36 != 2)
      {
        memset(v69, 0, 14);
        v77 = v95;
        v78 = v96;
        v79 = v97;
        v73 = v91;
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v71 = v89;
        v72 = v90;
        sub_26BE59BD8(&v71, v70);
        v47 = v66;
        v46 = v35;
LABEL_57:
        sub_26BE567B0(v69, v47, v46, v70);
        sub_26BE2E258(&v89, &qword_28045E4C8, &unk_26C0112A0);
        if (v70[0])
        {
          goto LABEL_65;
        }

        goto LABEL_10;
      }

      v67 = *(&v117 + 1);
      v63 = *(v33 + 16);
      v64 = v2;
      v61 = *(v33 + 24);
      v77 = v95;
      v78 = v96;
      v79 = v97;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      sub_26BE59BD8(&v71, v70);
      v48 = sub_26C008E9C();
      if (v48)
      {
        v58 = v48;
        v49 = sub_26C008ECC();
        v50 = v63;
        if (__OFSUB__(v63, v49))
        {
          goto LABEL_81;
        }

        v59 = v63 - v49 + v58;
      }

      else
      {
        v59 = 0;
        v50 = v63;
      }

      if (__OFSUB__(v61, v50))
      {
        goto LABEL_80;
      }

      sub_26C008EBC();
      v54 = v59;
    }

    else
    {
      v67 = *(&v117 + 1);
      if (!v36)
      {
        v69[0] = *(v32 + 16);
        LOWORD(v69[1]) = v34;
        BYTE2(v69[1]) = BYTE2(v34);
        BYTE3(v69[1]) = BYTE3(v34);
        BYTE4(v69[1]) = BYTE4(v34);
        BYTE5(v69[1]) = BYTE5(v34);
        v73 = v91;
        v74 = v92;
        v71 = v89;
        v72 = v90;
        v79 = v97;
        v77 = v95;
        v78 = v96;
        v75 = v93;
        v76 = v94;
        v45 = v117;
        sub_26BE59BD8(&v71, v70);
        v46 = v67;
        v47 = v45;
        goto LABEL_57;
      }

      v65 = *(v32 + 24);
      v66 = v117;
      v62 = v33;
      v64 = v2;
      if (v33 >> 32 < v33)
      {
        goto LABEL_79;
      }

      v77 = v95;
      v78 = v96;
      v79 = v97;
      v73 = v91;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v71 = v89;
      v72 = v90;
      sub_26BE59BD8(&v71, v70);
      v51 = sub_26C008E9C();
      if (v51)
      {
        v60 = v51;
        v52 = sub_26C008ECC();
        if (__OFSUB__(v62, v52))
        {
          goto LABEL_82;
        }

        v53 = v62 - v52 + v60;
      }

      else
      {
        v53 = 0;
      }

      sub_26C008EBC();
      v54 = v53;
    }

    sub_26BE567B0(v54, v66, v67, v70);
    sub_26BE2E258(&v89, &qword_28045E4C8, &unk_26C0112A0);
    v2 = v64;
    if (v70[0])
    {
      goto LABEL_65;
    }

LABEL_10:
    v23 += 2;
    if (2 * v21 == v23)
    {
      goto LABEL_66;
    }
  }

  sub_26BE01654();
  swift_allocError();
  v57 = 28;
LABEL_70:
  *v56 = v57;
  *(v56 + 8) = 0u;
  *(v56 + 24) = 0u;
  *(v56 + 40) = 0u;
  *(v56 + 56) = 0u;
  *(v56 + 72) = 0u;
  *(v56 + 88) = 0u;
  *(v56 + 104) = 0;
  *(v56 + 112) = 23;
  swift_willThrow();

LABEL_3:

LABEL_68:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.TreeKEMPublicKey.blankPath(index:)(uint64_t result)
{
  if (*(*(v1 + 24) + 16))
  {
    v3 = *result;
    if ((*result & 0x80000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v4 = v1;
    v36 = 2 * v3;
    sub_26BE2E2B8(&v37);
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v27 = v37;
    v28 = v38;
    result = sub_26BE473C8(&v36, &v27);
    if (!v2)
    {
      LODWORD(v27) = 2 * v3;
      v5 = *(v1 + 16);
      v36 = v5;
      result = sub_26BE7B518(&v36);
      v46 = result;
      v6 = *(result + 16);
      if (v6)
      {
        v7 = v5 - 1;
        if (v5)
        {
          if ((v7 & 0x80000000) == 0)
          {
            v8 = 2 * v7;
            v9 = (v46 + 32);
            while (1)
            {
              v24 = *v9++;
              v23 = v24;
              if (v24 <= v8)
              {
                v25 = *(v4 + 24);
                if (v25[2] > v23)
                {
                  v26 = *(v4 + 24);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 24) = v25;
                  if ((result & 1) == 0)
                  {
                    result = sub_26BE58820(v25);
                    v25 = result;
                    *(v4 + 24) = result;
                  }

                  if (v25[2] <= v23)
                  {
                    goto LABEL_19;
                  }

                  v10 = &v25[17 * v23];
                  v27 = *(v10 + 2);
                  v11 = *(v10 + 3);
                  v12 = *(v10 + 4);
                  v13 = *(v10 + 6);
                  v30 = *(v10 + 5);
                  v31 = v13;
                  v28 = v11;
                  v29 = v12;
                  v14 = *(v10 + 7);
                  v15 = *(v10 + 8);
                  v16 = *(v10 + 9);
                  v35 = v10[20];
                  v33 = v15;
                  v34 = v16;
                  v32 = v14;
                  *(v10 + 2) = v37;
                  v17 = v38;
                  v18 = v39;
                  v19 = v41;
                  *(v10 + 5) = v40;
                  *(v10 + 6) = v19;
                  *(v10 + 3) = v17;
                  *(v10 + 4) = v18;
                  v20 = v42;
                  v21 = v43;
                  v22 = v44;
                  v10[20] = v45;
                  *(v10 + 8) = v21;
                  *(v10 + 9) = v22;
                  *(v10 + 7) = v20;
                  sub_26BE2E258(&v27, &qword_28045E4C8, &unk_26C0112A0);
                  *(v4 + 24) = v25;
                }
              }

              if (!--v6)
              {
                goto LABEL_16;
              }
            }
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

LABEL_16:

      LODWORD(v27) = v3;
      return sub_26BE476A8(&v27);
    }
  }

  return result;
}

uint64_t MLS.TreeKEMPublicKey.update(from:leafSecret:groupID:signaturePrivateKey:leafNodeOptions:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = v8;
  v148 = a6;
  v149 = a4;
  v17 = type metadata accessor for MLS.TreeKEMPrivateKey();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v23 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v268 = v133 - v21;
    v144 = a8;
    v145 = a5;
    v153 = v20;
    v154 = a2;
    v155 = v22;
    v156 = a3;
    v24 = *a7;
    v150 = a7[1];
    *&v151 = v24;
    v25 = a7[3];
    *(&v151 + 1) = a7[2];
    v26 = a7[5];
    v146 = a7[4];
    v147 = v25;
    v28 = a7[6];
    v27 = a7[7];
    v29 = *(v10 + 1);
    LODWORD(v24) = *(v10 + 4);
    v30 = *(v10 + 3);
    v255 = *v10;
    v256 = v29;
    v257 = v24;
    v258 = v30;
    v254 = v23;
    v31 = v23;

    MLS.TreeKEMPublicKey.find(leafIndex:)(&v254, &v259);
    if (v9)
    {
    }

    v152 = 0;
    *(&v139 + 1) = v27;
    v140 = v28;
    v141 = v26;
    v142 = v31;
    v143 = v10;

    v244[6] = v265;
    v244[7] = v266;
    v244[2] = v261;
    v244[3] = v262;
    v244[4] = v263;
    v244[5] = v264;
    v244[0] = v259;
    v244[1] = v260;
    v251 = v265;
    v252 = v266;
    v247 = v261;
    v248 = v262;
    v249 = v263;
    v250 = v264;
    v245 = v267;
    v253 = v267;
    v246[0] = v259;
    v246[1] = v260;
    if (sub_26BE59C80(v246) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v33 = 28;
      *(v33 + 8) = 0u;
      *(v33 + 24) = 0u;
      *(v33 + 40) = 0u;
      *(v33 + 56) = 0u;
      *(v33 + 72) = 0u;
      *(v33 + 88) = 0u;
      *(v33 + 104) = 0;
      *(v33 + 112) = 23;
      return swift_willThrow();
    }

    v34 = v142;
    v35 = 2 * v142;
    v36 = v143;
    v37 = *v143;
    v38 = *(v143 + 1);
    v39 = *(v143 + 4);
    v40 = *(v143 + 3);
    v41 = v155;
    *v155 = *v143;
    *(v41 + 4) = v34;
    v138 = xmmword_26C00BBD0;
    v210 = xmmword_26C00BBD0;
    v42 = v41 + *(v153 + 32);
    sub_26C009C5C();
    v43 = MEMORY[0x277D84F90];
    *(v41 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
    *(v41 + 16) = sub_26C004BCC(v43);
    LOWORD(v210) = v37;
    *(&v210 + 1) = v38;
    LODWORD(v211) = v39;
    *(&v211 + 1) = v40;
    LODWORD(v202) = v35;
    v44 = v152;
    sub_26BE528E8(&v210, &v202, v154, v156);
    if (v44)
    {
      sub_26BE59C98(v41);
      return sub_26BE2E258(v244, &qword_28045E6A0, &unk_26C016520);
    }

    v45 = v41;
    v46 = v268;
    sub_26BE5B2E0(v45, v268, type metadata accessor for MLS.TreeKEMPrivateKey);
    v47 = *(v36 + 1);
    v48 = *(v36 + 4);
    v49 = *(v36 + 3);
    LOWORD(v210) = *v36;
    *(&v210 + 1) = v47;
    LODWORD(v211) = v48;
    *(&v211 + 1) = v49;
    LODWORD(v173) = v35;

    MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v173, &v202);
    v50 = 0;
    DWORD2(v137) = v35;
    v152 = 0;

    v51 = v202;
    v52 = *(v202 + 16);

    v10 = MEMORY[0x277D84F90];
    v153 = v52;
    if (v52)
    {
      v53 = 0;
      v54 = (v51 + 40);
      *&v139 = v51;
      while (1)
      {
        if (v53 >= *(v51 + 16))
        {
          __break(1u);
          goto LABEL_44;
        }

        v55 = *v54;
        LODWORD(v202) = *(v54 - 2);

        v56 = v152;
        MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&v202, &v210);
        v152 = v56;
        if (v56)
        {

          sub_26BE2E258(v244, &qword_28045E6A0, &unk_26C016520);

          sub_26BE59C98(v46);
        }

        v156 = v53;
        v57 = v10;
        result = sub_26BE2E1F0(&v210, &v202, &qword_28045E6A8, &qword_26C0112B0);
        if (!*(&v203 + 1))
        {
          break;
        }

        v58 = *(&v203 + 1);
        v59 = v204;
        __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
        v60 = *(v59 + 8);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v154 = v133;
        v62 = *(AssociatedTypeWitness - 8);
        v63 = *(v62 + 64);
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v65 = v133 - v64;
        (*(v60 + 32))(v58, v60);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v67 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
        v69 = v68;
        (*(v62 + 8))(v65, AssociatedTypeWitness);
        __swift_destroy_boxed_opaque_existential_1(&v202);
        v10 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = sub_26BEECC88(0, *(v57 + 2) + 1, 1, v57);
        }

        v35 = MEMORY[0x277D84F90];
        v72 = *(v10 + 2);
        v71 = *(v10 + 3);
        v50 = v268;
        if (v72 >= v71 >> 1)
        {
          v10 = sub_26BEECC88((v71 > 1), v72 + 1, 1, v10);
        }

        v53 = v156 + 1;
        sub_26BE2E258(&v210, &qword_28045E6A8, &qword_26C0112B0);
        *(v10 + 2) = v72 + 1;
        v73 = &v10[24 * v72];
        v74 = v155;
        *(v73 + 4) = v67;
        *(v73 + 5) = v74;
        *(v73 + 6) = v35;
        v54 += 2;
        v51 = v139;
        v46 = v50;
        if (v153 == v53)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_18:

    v75 = *(v143 + 1);
    v76 = *(v143 + 4);
    v77 = *(v143 + 3);
    v231 = *v143;
    v232 = v75;
    v233 = v76;
    v234 = v77;
    v230 = *(v46 + 4);

    v78 = v152;
    MLS.TreeKEMPublicKey.find(leafIndex:)(&v230, &v235);
    if (v78)
    {
      sub_26BE2E258(v244, &qword_28045E6A0, &unk_26C016520);

      sub_26BE59C98(v46);
    }

    v156 = v10;

    v219[6] = v241;
    v219[7] = v242;
    v219[2] = v237;
    v219[3] = v238;
    v219[4] = v239;
    v219[5] = v240;
    v219[0] = v235;
    v219[1] = v236;
    v227 = v241;
    v228 = v242;
    v223 = v237;
    v224 = v238;
    v225 = v239;
    v226 = v240;
    v220 = v243;
    v229 = v243;
    v221 = v235;
    v222 = v236;
    result = sub_26BE59C80(&v221);
    if (result == 1)
    {
      goto LABEL_57;
    }

    v10 = &v182;
    v216 = v227;
    v217 = v228;
    v212 = v223;
    v213 = v224;
    v214 = v225;
    v215 = v226;
    v210 = v221;
    v211 = v222;
    *&v218 = v229;
    *(&v218 + 1) = v156;
    LODWORD(v157) = v142;
    *&v182 = v51;
    v208 = v227;
    v209[0] = v228;
    v209[1] = v218;
    v204 = v223;
    v205 = v224;
    v206 = v225;
    v207 = v226;
    v202 = v221;
    v203 = v222;
    sub_26BE2E1F0(v219, &v173, &qword_28045E6A0, &unk_26C016520);

    v79 = MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(&v157, &v182, &v202);
    if (*(v79 + 2))
    {
      v81 = *(v79 + 4);
      v80 = *(v79 + 5);
      sub_26BE00608(v81, v80);
    }

    else
    {
      v81 = 0;
      v80 = 0xC000000000000000;
    }

    LODWORD(v202) = DWORD2(v137);
    MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&v202, v201);
    v154 = v80;
    v152 = 0;
    result = sub_26BE2E1F0(v201, &v202, &qword_28045E6A8, &qword_26C0112B0);
    if (!*(&v203 + 1))
    {
      goto LABEL_58;
    }

    v155 = v81;

    v82 = *(&v203 + 1);
    v83 = v204;
    __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
    v84 = *(v83 + 8);
    v85 = *(v84 + 32);
    v199 = swift_getAssociatedTypeWitness();
    v200 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v198);
    v85(v82, v84);
    result = __swift_destroy_boxed_opaque_existential_1(&v202);
    v86 = *v143;
    if ((v86 - 3) < 0xFFFFFFFE)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

    LOBYTE(v173) = v86 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v173, &v202);
    v133[0] = v204;
    v87 = v148[3];
    v88 = v148[4];
    __swift_project_boxed_opaque_existential_1(v148, v87);
    v89 = *(v88 + 40);
    a2 = swift_getAssociatedTypeWitness();
    v197[3] = a2;
    v134 = swift_getAssociatedConformanceWitness();
    v197[4] = v134;
    v133[1] = __swift_allocate_boxed_opaque_existential_1(v197);
    v89(v87, v88);
    v90 = v151;
    v91 = v150;
    if ((~v150 & 0x3000000000000000) == 0)
    {
      v91 = *(&v247 + 1);
      v90 = v247;
      sub_26BE04890(v247, *(&v247 + 1));
    }

    *&v135 = v90;
    *(&v135 + 1) = v91;
    if (*(&v151 + 1))
    {
      v92 = v140;
      v93 = v141;
      v94 = v146;
      v95 = v147;
      *&v137 = *(&v151 + 1);
      goto LABEL_33;
    }
  }

  v95 = *(&v248 + 1);
  v93 = *(&v249 + 1);
  v94 = v249;
  v92 = v250;
  *&v137 = v248;

LABEL_33:
  v96 = *(&v139 + 1);
  if (*(&v139 + 1))
  {
    *(&v137 + 1) = v95;
    *&v139 = v94;
    *(&v139 + 1) = v93;
    v153 = v92;
    v136 = v96;
  }

  else
  {
    *(&v137 + 1) = v95;
    *&v139 = v94;
    *(&v139 + 1) = v93;
    v153 = v92;
    v136 = v252;
  }

  v97 = v199;
  v98 = v200;
  __swift_project_boxed_opaque_existential_1(v198, v199);
  v99 = *(v98 + 8);
  v100 = *(v99 + 16);
  sub_26BE2958C(v151, v150);
  sub_26BE59D48(*(&v151 + 1));

  v101 = v100(v97, v99);
  v103 = v102;
  v104 = (*(*(v134 + 8) + 16))(a2);
  v106 = v105;
  v182 = v138;
  v183 = 0;
  *&v151 = v101;
  *(&v151 + 1) = v103;
  *&v202 = v101;
  *(&v202 + 1) = v103;
  *&v203 = v104;
  *(&v203 + 1) = v105;
  v107 = *(&v135 + 1);
  v46 = v135;
  v204 = v135;
  v205 = v137;
  v206 = v139;
  *&v207 = v153;
  *(&v207 + 1) = v155;
  *&v208 = v154;
  BYTE8(v208) = 1;
  *(&v208 + 9) = *(v10 + 145);
  HIDWORD(v208) = *(v10 + 37);
  *&v209[0] = v136;
  *(v209 + 8) = v138;
  v108 = v149;
  v109 = v145;
  v157 = v149;
  v158 = v145;
  LODWORD(v159) = v142;
  sub_26BE00608(v149, v145);
  sub_26BE00608(v108, v109);
  v110 = v152;
  sub_26BFF6CA4(&v202, &v157);
  v152 = v110;
  if (v110)
  {

    sub_26BE59CF4(&v210);
    sub_26BE00258(v108, v109);
    sub_26BE2E258(v244, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v219, &qword_28045E6A0, &unk_26C016520);
    sub_26BE132D4(v157, v158);
    sub_26BE2E258(v201, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE59C98(v268);
    sub_26BE00258(v182, *(&v182 + 1));

    v173 = v151;
    *&v174 = v104;
    *(&v174 + 1) = v106;
    v175 = __PAIR128__(v107, v46);
    v176 = v137;
    v177 = v139;
    *&v178 = v153;
    *(&v178 + 1) = v155;
    *&v179 = v154;
    BYTE8(v179) = 1;
    *(&v179 + 9) = *(v10 + 145);
    HIDWORD(v179) = *(v10 + 37);
    *&v180[0] = v136;
    *(v180 + 8) = v138;
    v111 = &v173;
LABEL_50:
    sub_26BE00854(v111);
    __swift_destroy_boxed_opaque_existential_1(v197);
    return __swift_destroy_boxed_opaque_existential_1(v198);
  }

  v147 = v104;
  v150 = v106;
  sub_26BE132D4(v157, v158);
  v35 = *(&v182 + 1);
  v50 = v182;
  v112 = *(&v182 + 1) >> 62;
  if ((*(&v182 + 1) >> 62) > 1)
  {
    v53 = v152;
    if (v112 != 2)
    {
      goto LABEL_47;
    }

    v113 = *(v182 + 24);
  }

  else
  {
    v53 = v152;
    if (!v112)
    {
      goto LABEL_47;
    }

LABEL_44:
    v113 = v50 >> 32;
  }

  v114 = v155;
  if ((v113 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  __break(1u);
LABEL_47:
  v114 = v155;
LABEL_48:
  v115 = sub_26C00909C();
  v117 = v116;
  v118 = v35;
  v119 = v117;
  sub_26BE00258(v50, v118);
  v120 = v148[3];
  v121 = v148[4];
  __swift_project_boxed_opaque_existential_1(v148, v120);
  v122 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v115, v119, v120, v121);
  v152 = v53;
  if (v53)
  {

    sub_26BE59CF4(&v210);
    sub_26BE00258(v115, v119);
    sub_26BE00258(v149, v145);
    sub_26BE2E258(v244, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v219, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v201, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE59C98(v268);

    v202 = v151;
    *&v203 = v147;
    *(&v203 + 1) = v150;
    *&v204 = v46;
    *(&v204 + 1) = *(&v135 + 1);
    v205 = v137;
    v206 = v139;
    *&v207 = v153;
    *(&v207 + 1) = v114;
    *&v208 = v154;
    BYTE8(v208) = 1;
    *(&v208 + 9) = *(v10 + 145);
    HIDWORD(v208) = *(v10 + 37);
    *&v209[0] = v136;
    *(v209 + 8) = v138;
    v111 = &v202;
    goto LABEL_50;
  }

  v124 = v122;
  v125 = v123;
  v141 = v115;
  v146 = v119;
  sub_26BE00258(0, 0xC000000000000000);
  v126 = v151;
  v182 = v151;
  v183 = v147;
  v184 = v150;
  v185 = v46;
  v127 = *(&v135 + 1);
  v186 = *(&v135 + 1);
  v187 = v137;
  v188 = v139;
  v189 = v153;
  v190 = v114;
  v191 = v154;
  v192 = 1;
  *(v10 + 105) = *(v10 + 145);
  v193 = *(v10 + 37);
  v194 = v136;
  v148 = v124;
  v195 = v124;
  v196 = v125;
  v128 = *(v10 + 3);
  v204 = *(v10 + 2);
  v205 = v128;
  v129 = *(v10 + 5);
  v206 = *(v10 + 4);
  v207 = v129;
  v130 = *(v10 + 1);
  v202 = *v10;
  v203 = v130;
  v131 = *(v10 + 7);
  v208 = *(v10 + 6);
  v209[0] = v131;
  *&v209[1] = v125;
  *(&v209[1] + 1) = v156;
  v181 = v142;
  v179 = v208;
  v180[0] = v131;
  v180[1] = v209[1];
  v175 = v204;
  v176 = v128;
  v177 = v206;
  v178 = v207;
  v173 = v202;
  v174 = v203;
  sub_26BE00758(&v182, &v157);
  v132 = v152;
  MLS.TreeKEMPublicKey.merge(from:path:)(&v181, &v173);
  if (v132)
  {

    sub_26BE59CF4(&v210);
    sub_26BE00258(v141, v146);
    sub_26BE00258(v149, v145);
    sub_26BE2E258(v244, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v219, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v201, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE59C98(v268);
    sub_26BE59CF4(&v202);
  }

  else
  {
    sub_26BE2E258(v201, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE2E258(v219, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v244, &qword_28045E6A0, &unk_26C016520);
    sub_26BE00258(v149, v145);
    sub_26BE00258(v141, v146);

    sub_26BE59CF4(&v210);
    sub_26BE59CF4(&v202);
    sub_26BE5B2E0(v268, v144, type metadata accessor for MLS.TreeKEMPrivateKey);
  }

  v157 = v126;
  v158 = *(&v151 + 1);
  v159 = v147;
  v160 = v150;
  v161 = v46;
  v162 = v127;
  v163 = v137;
  v164 = v139;
  v165 = v153;
  v166 = v155;
  v167 = v154;
  v168 = 1;
  *v169 = *(v10 + 145);
  *&v169[3] = *(v10 + 37);
  v170 = v136;
  v171 = v148;
  v172 = v125;
  sub_26BE00854(&v157);
  __swift_destroy_boxed_opaque_existential_1(v197);
  return __swift_destroy_boxed_opaque_existential_1(v198);
}

void MLS.TreeKEMPublicKey.find(leafIndex:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *v2;
    v7 = *(v2 + 1);
    v8 = *(v2 + 4);
    v9 = *(v2 + 3);
    v10 = 2 * v5;
    LOWORD(v46) = *v2;
    *(&v46 + 1) = v7;
    LODWORD(v47) = v8;
    *(&v47 + 1) = v9;
    LODWORD(v39[0]) = 2 * v5;
    v11 = MLS.TreeKEMPublicKey.blankAt(index:)(v39);
    if (!v3)
    {
      if (v11)
      {
        sub_26BE59DB4(&v46);
        v12 = v53;
        *(a2 + 96) = v52;
        *(a2 + 112) = v12;
        *(a2 + 128) = v54;
        v13 = v49;
        *(a2 + 32) = v48;
        *(a2 + 48) = v13;
        v14 = v51;
        *(a2 + 64) = v50;
        *(a2 + 80) = v14;
        v15 = v47;
        *a2 = v46;
        *(a2 + 16) = v15;
      }

      else
      {
        v42 = v6;
        v43 = v7;
        v44 = v8;
        v45 = v9;
        v41 = v10;
        MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v41, &v46);
        v37[6] = v52;
        v37[7] = v53;
        v37[2] = v48;
        v37[3] = v49;
        v37[4] = v50;
        v37[5] = v51;
        v37[0] = v46;
        v37[1] = v47;
        v39[6] = v52;
        v39[7] = v53;
        v39[2] = v48;
        v39[3] = v49;
        v39[4] = v50;
        v39[5] = v51;
        v38 = v54;
        v40 = v54;
        v39[0] = v46;
        v39[1] = v47;
        if (sub_26BE592C4(v39) == 1)
        {
          sub_26BE13A3C(v39);
          sub_26BE01654();
          swift_allocError();
          *v16 = 28;
          *(v16 + 8) = 0u;
          *(v16 + 24) = 0u;
          *(v16 + 40) = 0u;
          *(v16 + 56) = 0u;
          *(v16 + 72) = 0u;
          *(v16 + 88) = 0u;
          *(v16 + 104) = 0;
          *(v16 + 112) = 23;
          swift_willThrow();
          sub_26BE13854(v37);
        }

        else
        {
          v17 = sub_26BE13A3C(v39);
          v28 = *v17;
          v18 = *(v17 + 64);
          v20 = *(v17 + 16);
          v19 = *(v17 + 32);
          v31 = *(v17 + 48);
          v32 = v18;
          v29 = v20;
          v30 = v19;
          v22 = *(v17 + 96);
          v21 = *(v17 + 112);
          v23 = *(v17 + 80);
          v36 = *(v17 + 128);
          v34 = v22;
          v35 = v21;
          v33 = v23;
          nullsub_1(&v28);
          v24 = v35;
          *(a2 + 96) = v34;
          *(a2 + 112) = v24;
          *(a2 + 128) = v36;
          v25 = v31;
          *(a2 + 32) = v30;
          *(a2 + 48) = v25;
          v26 = v33;
          *(a2 + 64) = v32;
          *(a2 + 80) = v26;
          v27 = v29;
          *a2 = v28;
          *(a2 + 16) = v27;
        }
      }
    }
  }
}

void MLS.TreeKEMPublicKey.filteredDirectPath(index:)(int *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v2 + 4);
  v8 = *(v2 + 3);
  v31 = *a1;
  v37 = v7;
  v9 = sub_26BE7B7A4(&v37);
  if (!v3)
  {
    v10 = v9;
    v22 = a2;
    v30 = *(v9 + 16);
    if (v30)
    {
      v24 = v8;
      v26 = v6;
      v11 = 0;
      v25 = v7;
      v29 = v7 == 0;
      v27 = v5;
      v28 = v7 - 1;
      v23 = (2 * (v7 - 1)) | 1;
      v12 = (v9 + 36);
      v13 = MEMORY[0x277D84F90];
      while (v11 < *(v10 + 16))
      {
        if (*v12)
        {
          goto LABEL_23;
        }

        v14 = *(v12 - 1);
        v37 = v14;
        if (v29)
        {
          goto LABEL_21;
        }

        if (v28 < 0)
        {
          goto LABEL_22;
        }

        v36 = v23;
        MLS.NodeIndex.parent(forNodeCount:)(&v36, &v31);
        v15 = v31;
        v16 = v32;
        LOWORD(v31) = v27;
        v33 = v26;
        v34 = v25;
        v35 = v24;
        v37 = v14;
        sub_26BE4B650(&v37);
        v18 = v17;
        if (*(v17 + 16))
        {
          if (v16)
          {
            goto LABEL_24;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_26BEEC6D8(0, v13[2] + 1, 1, v13);
          }

          v20 = v13[2];
          v19 = v13[3];
          if (v20 >= v19 >> 1)
          {
            v13 = sub_26BEEC6D8((v19 > 1), v20 + 1, 1, v13);
          }

          v13[2] = v20 + 1;
          v21 = &v13[2 * v20];
          *(v21 + 8) = v15;
          v21[5] = v18;
        }

        else
        {
        }

        ++v11;
        v12 += 8;
        if (v30 == v11)
        {
          goto LABEL_18;
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
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
LABEL_18:

      *v22 = v13;
    }
  }
}

unint64_t MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_26C009C8C();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  v15 = *a1;
  v16 = *(v4 + 2);
  if (*(v16 + 16))
  {
    result = sub_26BEBB414(v15);
    if (v17)
    {
      sub_26BE038A8(*(v16 + 56) + 40 * result, &v34);
      sub_26BE03890(&v34, &v38);
      return sub_26BE03890(&v38, a2);
    }
  }

  v18 = *(v4 + 1);
  if (*(v18 + 16) && (result = sub_26BEBB414(v15), (v19 & 1) != 0))
  {
    v32 = v3;
    v20 = *v4;
    if ((v20 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v21 = (*(v18 + 56) + 16 * result);
      v22 = *v21;
      v23 = v21[1];
      LOBYTE(v34) = v20 != 1;
      sub_26BE00608(v22, v23);
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v34, &v38);
      v28 = v38;
      v30 = v39;
      v31 = *(&v38 + 1);
      v29 = v40;
      v33 = v41;
      *&v34 = v22;
      *(&v34 + 1) = v23;
      sub_26BE00608(v22, v23);
      sub_26C009C5C();
      v24 = v32;
      MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v11, 1701080942, 0xE400000000000000, v14);
      if (!v24)
      {
        v32 = v22;
        v27 = v23;
        v25 = *(v42 + 8);
        v25(v11, v7);
        LOBYTE(v34) = v28;
        *(&v34 + 1) = v31;
        v35 = v30;
        v36 = v29;
        v37 = v33;
        MLS.Cryptography.Ciphersuite.deriveHPKEPrivateKey(_:)(v14, &v38);
        sub_26BE038A8(&v38, &v34);
        sub_26BE4D0C0(&v34, v15);

        sub_26BE00258(v32, v27);
        v25(v14, v7);
        return sub_26BE03890(&v38, a2);
      }

      (*(v42 + 8))(v11, v7);
      sub_26BE00258(v22, v23);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unsigned int *MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(int *a1, unsigned int **a2, uint64_t a3)
{
  result = *a2;
  if (!*(*a2 + 2))
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_26;
  }

  v8 = v3;
  v9 = *(a3 + 136);
  v42 = *a2;

  MLS.FilteredDirectPath.pop()(v37);
  if (v4)
  {
  }

  v10 = 2 * v7;

  v11 = v42;
  v12 = *(v42 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v12 >= *(v11 + 3) >> 1)
  {
    v11 = sub_26BEEC6D8(isUniquelyReferenced_nonNull_native, v12 + 1, 1, v11);
    v42 = v11;
  }

  sub_26BE59DD0(0, 0, 1, v10, MEMORY[0x277D84F90]);
  v42 = v11;
  if (*(v11 + 2) != *(v9 + 16))
  {
    sub_26BE01654();
    swift_allocError();
    *v14 = 25;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 104) = 0;
    *(v14 + 112) = 23;
    swift_willThrow();
  }

  LODWORD(v37[0]) = *(v8 + 16);
  MLS.NodeIndex.init(forRoot:)(v37, &v41);
  v15 = *(v11 + 2);
  v16 = MEMORY[0x277D84F90];
  v32 = v11;
  if (v15)
  {
    v17 = 0;
    v18 = v41;
    v19 = (v9 + 24 * v15 + 16);
    v20 = &v11[4 * v15 + 4];
    v36 = 0xC000000000000000;
    v33 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v15 > *(v32 + 2))
      {
        __break(1u);
        goto LABEL_23;
      }

      v35 = v17;
      v21 = *v20;
      v39 = *v20;
      v38 = v18;
      result = sub_26BE7BBA8(&v38, v37);
      if (v15 > *(v9 + 16))
      {
        break;
      }

      v34 = v21;
      v22 = v37[0];
      v23 = BYTE4(v37[0]);
      v24 = v16;
      v26 = *(v19 - 1);
      v25 = *v19;
      v37[0] = v26;
      v37[1] = v25;
      v37[2] = v35;
      v37[3] = v36;
      v37[4] = v24;
      if (v23)
      {
        goto LABEL_27;
      }

      v39 = v22;
      sub_26BE00608(v26, v25);
      sub_26BE00608(v35, v36);
      v27 = sub_26BE4BA44(v37, &v39);
      v29 = v28;
      v30 = *(v33 + 2);
      sub_26BE00608(v27, v28);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v33;
      if (!v31 || v30 >= *(v33 + 3) >> 1)
      {
        v33 = sub_26BEECB7C(v31, v30 + 1, 1, v33);
        v40 = v33;
      }

      --v15;
      sub_26BE59FA4(0, 0, 1, v27, v29);
      sub_26BE00258(v27, v29);
      sub_26BE00258(v35, v36);
      sub_26BE00258(v26, v25);
      sub_26BE00258(v35, v36);
      v16 = MEMORY[0x277D84F90];

      v19 -= 3;
      v20 -= 4;
      v36 = v29;
      v17 = v27;
      v18 = v34;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_23:
  v27 = 0;
  v29 = 0xC000000000000000;
  v33 = v16;
LABEL_24:
  sub_26BE00258(v27, v29);

  return v33;
}

uint64_t MLS.TreeKEMPublicKey.merge(from:path:)(unsigned int *a1, __int128 *a2)
{
  v4 = v2;
  v6 = *a1;
  v7 = a2[7];
  v96 = a2[6];
  v97 = v7;
  v98 = a2[8];
  v8 = a2[3];
  v92 = a2[2];
  v93 = v8;
  v9 = a2[5];
  v94 = a2[4];
  v95 = v9;
  v10 = a2[1];
  v90 = *a2;
  v91 = v10;
  v89 = v6;
  sub_26BE00758(&v90, &v78);
  MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(&v89, a2);
  if (v3)
  {
    v11 = a2[7];
    v84 = a2[6];
    v85 = v11;
    *&v86 = *(a2 + 16);
    v12 = a2[3];
    v80 = a2[2];
    v81 = v12;
    v13 = a2[5];
    v82 = a2[4];
    v83 = v13;
    v14 = a2[1];
    v78 = *a2;
    v79 = v14;
    return sub_26BE00854(&v78);
  }

  v16 = a2[7];
  v87[6] = a2[6];
  v87[7] = v16;
  v88 = *(a2 + 16);
  v17 = a2[3];
  v87[2] = a2[2];
  v87[3] = v17;
  v18 = a2[5];
  v87[4] = a2[4];
  v87[5] = v18;
  v19 = a2[1];
  v87[0] = *a2;
  v87[1] = v19;
  result = sub_26BE00854(v87);
  if ((v6 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = *(v2 + 8);
  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  LOWORD(v78) = *v2;
  *(&v78 + 1) = v20;
  LODWORD(v79) = v21;
  *(&v79 + 1) = v22;
  LODWORD(v67[0]) = 2 * v6;

  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(v67, &v69);

  v23 = v69;
  v24 = *(&v98 + 1);
  if (*(v69 + 16) != *(*(&v98 + 1) + 16))
  {

    sub_26BE01654();
    swift_allocError();
    *v26 = 25;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 0u;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0;
    *(v26 + 112) = 23;
    return swift_willThrow();
  }

  LODWORD(v67[0]) = v6;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v78 = v90;
  v79 = v91;
  result = MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(v67, &v69, &v78);
  v25 = v23;
  v27 = *(v23 + 16);
  if (!v27)
  {
LABEL_28:

    LODWORD(v69) = *(v4 + 16);
    MLS.NodeIndex.init(forRoot:)(&v69, &v78);
    sub_26BE4BE9C(&v78);
    return sub_26BE00258(v58, v59);
  }

  v28 = *(v2 + 16);
  v29 = v28 != 0;
  v30 = v28 - 1;
  if (!v29)
  {
    goto LABEL_32;
  }

  v61 = result;
  if ((v30 & 0x80000000) == 0)
  {
    if (v27 <= *(v24 + 16))
    {
      v31 = 0;
      v63 = 2 * v30;
      v64 = v27 - 1;
      v32 = (v24 + 40);
      v33 = 1;
      v62 = v27;
      v60 = v25;
      while (1)
      {
        v34 = *(v25 + v31 + 32);
        v99 = v31;
        v66 = v33;
        if ((v33 - 1) < v64)
        {
          if (v33 >= *(v61 + 16))
          {
            goto LABEL_30;
          }

          v35 = v25;
          v36 = *(v61 + v31 + 48);
          v37 = *(v61 + v31 + 56);
          sub_26BE00608(v36, v37);
        }

        else
        {
          v35 = v25;
          v36 = 0;
          v37 = 0xC000000000000000;
        }

        v65 = v32;
        v39 = *(v32 - 1);
        v38 = *v32;
        *&v69 = v39;
        *(&v69 + 1) = v38;
        *&v70 = v36;
        *(&v70 + 1) = v37;
        *&v71 = MEMORY[0x277D84F90];
        sub_26BE1408C(&v69);
        v84 = v75;
        v85 = v76;
        *&v86 = v77;
        v80 = v71;
        v81 = v72;
        v82 = v73;
        v83 = v74;
        v78 = v69;
        v79 = v70;
        nullsub_1(&v78);
        if (v34 <= v63)
        {
          v41 = *(v4 + 24);
          v42 = v4;
          v43 = v41[2];
          sub_26BE00608(v39, v38);
          if (v43 <= v34)
          {
            sub_26BE00258(v39, v38);
            sub_26BE00258(v36, v37);

            v4 = v42;
            v25 = v60;
            v40 = v65;
          }

          else
          {
            sub_26BE00608(v36, v37);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v42 + 24) = v41;
            v4 = v42;
            if (isUniquelyReferenced_nonNull_native)
            {
              result = sub_26BE00258(v36, v37);
            }

            else
            {
              v41 = sub_26BE58820(v41);
              result = sub_26BE00258(v36, v37);
              *(v42 + 24) = v41;
            }

            v40 = v65;
            if (v41[2] <= v34)
            {
              goto LABEL_31;
            }

            v45 = &v41[17 * v34];
            v67[0] = *(v45 + 2);
            v46 = *(v45 + 3);
            v47 = *(v45 + 4);
            v48 = *(v45 + 6);
            v67[3] = *(v45 + 5);
            v67[4] = v48;
            v67[1] = v46;
            v67[2] = v47;
            v49 = *(v45 + 7);
            v50 = *(v45 + 8);
            v51 = *(v45 + 9);
            v68 = v45[20];
            v67[6] = v50;
            v67[7] = v51;
            v67[5] = v49;
            *(v45 + 2) = v78;
            v52 = v79;
            v53 = v80;
            v54 = v82;
            *(v45 + 5) = v81;
            *(v45 + 6) = v54;
            *(v45 + 3) = v52;
            *(v45 + 4) = v53;
            v55 = v83;
            v56 = v84;
            v57 = v85;
            v45[20] = v86;
            *(v45 + 8) = v56;
            *(v45 + 9) = v57;
            *(v45 + 7) = v55;
            result = sub_26BE2E258(v67, &qword_28045E4C8, &unk_26C0112A0);
            *(v42 + 24) = v41;
            v25 = v60;
          }
        }

        else
        {
          sub_26BE00608(v39, v38);
          sub_26BE00258(v39, v38);
          sub_26BE00258(v36, v37);

          v40 = v65;
          v25 = v35;
        }

        if (v62 == v66)
        {
          goto LABEL_28;
        }

        v33 = v66 + 1;
        v31 = v99 + 16;
        v32 = v40 + 3;
      }
    }

    goto LABEL_34;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void MLS.TreeKEMPublicKey.encap(privateKey:context:exceptLeaves:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 4);
  if (v8 < 0)
  {
    goto LABEL_53;
  }

  v10 = a1;
  v11 = *v5;
  v12 = *(v5 + 1);
  v13 = *(v5 + 4);
  v14 = *(v5 + 3);
  LOWORD(__dst) = *v5;
  *(&__dst + 1) = v12;
  LODWORD(v136) = v13;
  *(&v136 + 1) = v14;
  LODWORD(v117) = 2 * v8;
  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v117, &v126);
  if (v6)
  {
    return;
  }

  v82 = a5;
  v15 = *(v126 + 16);

  v83 = v11;
  if (v15)
  {
    v17 = 0;
    v18 = v16 + 32;
    v85 = v11 != 1;
    v86 = v11 - 3;
    v96 = v13 - 1;
    v97 = v13 == 0;
    v95 = 2 * (v13 - 1);
    v93 = v14 + 32;
    v19 = MEMORY[0x277D84F90];
    v80 = v13;
    v78 = v16 + 32;
    v79 = a4;
    v87 = v16;
    v81 = v10;
    v98 = v14;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_54;
      }

      v20 = v18 + 16 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      swift_bridgeObjectRetain_n();
      v101 = sub_26BE5A08C(v22, a4);
      v84 = v17;

      v23 = *(v10 + 8);
      if (*(v23 + 16) && (v24 = sub_26BEBB414(v21), (v25 & 1) != 0))
      {
        v26 = (*(v23 + 56) + 16 * v24);
        v27 = *v26;
        v99 = v26[1];
        sub_26BE00608(*v26, v99);
      }

      else
      {
        v27 = 0;
        v99 = 0xF000000000000000;
      }

      LODWORD(__dst) = v21;
      MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&__dst, v148);
      v88 = v19;
      sub_26BE2E1F0(v148, &__dst, &qword_28045E6A8, &qword_26C0112B0);
      v28 = *(&v136 + 1);
      if (!*(&v136 + 1))
      {
        goto LABEL_57;
      }

      v29 = v137;
      __swift_project_boxed_opaque_existential_1(&__dst, *(&v136 + 1));
      v30 = *(v29 + 8);
      v31 = *(v30 + 32);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v145);
      v31(v28, v30);
      __swift_destroy_boxed_opaque_existential_1(&__dst);
      if (v86 < 0xFFFFFFFE)
      {
        goto LABEL_55;
      }

      LOBYTE(v126) = v85;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v126, &__dst);
      v100 = v137;
      v32 = v101;
      v14 = v98;
      v94 = *(v101 + 16);
      if (v94)
      {
        break;
      }

      v149 = MEMORY[0x277D84F90];
LABEL_37:

      v63 = AssociatedTypeWitness;
      v62 = AssociatedConformanceWitness;
      __swift_project_boxed_opaque_existential_1(v145, AssociatedTypeWitness);
      v64 = (*(*(v62 + 8) + 16))(v63);
      v65 = v88;
      v102 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_26BEECC88(0, *(v88 + 2) + 1, 1, v88);
      }

      v68 = *(v65 + 2);
      v67 = *(v65 + 3);
      v69 = v65;
      v70 = v64;
      if (v68 >= v67 >> 1)
      {
        v69 = sub_26BEECC88((v67 > 1), v68 + 1, 1, v65);
      }

      v17 = v84 + 1;

      sub_26BE136AC(v27, v99);
      sub_26BE2E258(v148, &qword_28045E6A8, &qword_26C0112B0);
      *(v69 + 2) = v68 + 1;
      v19 = v69;
      v71 = &v69[24 * v68];
      *(v71 + 4) = v70;
      *(v71 + 5) = v102;
      *(v71 + 6) = v149;
      __swift_destroy_boxed_opaque_existential_1(v145);
      v16 = v87;
      v10 = v81;
      v13 = v80;
      v18 = v78;
      a4 = v79;
      if (v84 + 1 == v15)
      {
        goto LABEL_44;
      }
    }

    v33 = 0;
    v92 = __dst;
    v90 = v136;
    v91 = *(&__dst + 1);
    v149 = MEMORY[0x277D84F90];
    v89 = *(&v136 + 1);
    v105 = v27;
    while (1)
    {
      if (v33 >= *(v32 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return;
      }

      if (v97)
      {
        goto LABEL_51;
      }

      if (v96 < 0)
      {
        goto LABEL_52;
      }

      v34 = *(v32 + 4 * v33 + 32);
      if (v34 > v95)
      {
        goto LABEL_48;
      }

      if (*(v14 + 16) <= v34)
      {
        goto LABEL_48;
      }

      v35 = (v93 + 136 * v34);
      v126 = *v35;
      v36 = v35[1];
      v37 = v35[2];
      v38 = v35[4];
      v129 = v35[3];
      v130 = v38;
      v127 = v36;
      v128 = v37;
      v39 = v35[5];
      v40 = v35[6];
      v41 = v35[7];
      v134 = *(v35 + 16);
      v132 = v40;
      v133 = v41;
      v131 = v39;
      memmove(&__dst, v35, 0x88uLL);
      if (sub_26BE58C10(&__dst) == 1)
      {
LABEL_48:

        sub_26BE01654();
        swift_allocError();
        *v77 = 30;
        *(v77 + 8) = 0u;
        *(v77 + 24) = 0u;
        *(v77 + 40) = 0u;
        *(v77 + 56) = 0u;
        *(v77 + 72) = 0u;
        *(v77 + 88) = 0u;
        *(v77 + 104) = 0;
        *(v77 + 112) = 23;
        swift_willThrow();

        sub_26BE136AC(v27, v99);
        sub_26BE2E258(v148, &qword_28045E6A8, &qword_26C0112B0);

        __swift_destroy_boxed_opaque_existential_1(v145);
        return;
      }

      v123 = v141;
      v124 = v142;
      v125 = v143;
      v119 = v137;
      v120 = v138;
      v121 = v139;
      v122 = v140;
      v117 = __dst;
      v118 = v136;
      v42 = sub_26BE592C4(&v117);
      v43 = sub_26BE13A3C(&v117);
      if (v42 == 1)
      {
        v44 = *v43;
        v45 = v43[1];
        if ((v92 & 1) == 0)
        {
          v109[0] = 0;
          v110 = v91;
          v111 = v90;
          v112 = v89;
          v113 = v100;
          v115 = type metadata accessor for Curve25519EncryptionPublicKey(0);
          v116 = sub_26BE5A294(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);

          sub_26BE00608(v44, v45);
LABEL_28:
          Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v44, v45, v109, boxed_opaque_existential_1);
          goto LABEL_29;
        }

        v109[0] = 1;
        v110 = v91;
        v111 = v90;
        v112 = v89;
        v113 = v100;
        v115 = type metadata accessor for P256EncryptionPublicKey(0);
        v116 = sub_26BE5A294(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey);
        v46 = __swift_allocate_boxed_opaque_existential_1(&v114);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);

        sub_26BE00608(v44, v45);
      }

      else
      {
        v44 = *v43;
        v45 = v43[1];
        if ((v92 & 1) == 0)
        {
          v109[0] = 0;
          v110 = v91;
          v111 = v90;
          v112 = v89;
          v113 = v100;
          v115 = type metadata accessor for Curve25519EncryptionPublicKey(0);
          v116 = sub_26BE5A294(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE00608(v44, v45);

          goto LABEL_28;
        }

        v109[0] = 1;
        v110 = v91;
        v111 = v90;
        v112 = v89;
        v113 = v100;
        v115 = type metadata accessor for P256EncryptionPublicKey(0);
        v116 = sub_26BE5A294(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey);
        v46 = __swift_allocate_boxed_opaque_existential_1(&v114);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE00608(v44, v45);
      }

      P256EncryptionPublicKey.init(data:ciphersuite:)(v44, v45, v109, v46);
LABEL_29:
      sub_26BE2E258(&v126, &qword_28045E4C8, &unk_26C0112A0);
      sub_26BE03890(&v114, v144);
      sub_26BE038A8(v144, v106);
      v48 = v107;
      v49 = v108;
      __swift_project_boxed_opaque_existential_1(v106, v107);
      if (v99 >> 60 == 15)
      {
        goto LABEL_56;
      }

      v50 = *(v49 + 16);
      sub_26BE00608(v105, v99);
      v51 = v50(0x6150657461647055, 0xEE0065646F4E6874, a2, a3, v105, v99, v48, v49);
      v53 = v52;
      v55 = v54;
      v57 = v56;
      sub_26BE136AC(v105, v99);
      __swift_destroy_boxed_opaque_existential_1(v106);
      sub_26BE00608(v55, v57);
      sub_26BE00608(v51, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_26BEECDA8(0, *(v149 + 2) + 1, 1, v149);
      }

      v59 = *(v149 + 2);
      v58 = *(v149 + 3);
      if (v59 >= v58 >> 1)
      {
        v149 = sub_26BEECDA8((v58 > 1), v59 + 1, 1, v149);
      }

      ++v33;
      sub_26BE00258(v51, v53);
      sub_26BE00258(v55, v57);
      sub_26BE2E258(&v126, &qword_28045E4C8, &unk_26C0112A0);
      __swift_destroy_boxed_opaque_existential_1(v144);
      v60 = v149;
      *(v149 + 2) = v59 + 1;
      v61 = &v60[32 * v59];
      *(v61 + 4) = v55;
      *(v61 + 5) = v57;
      *(v61 + 6) = v51;
      *(v61 + 7) = v53;
      v27 = v105;
      v14 = v98;
      v32 = v101;
      if (v94 == v33)
      {
        goto LABEL_37;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_44:

  LOWORD(v117) = v83;
  *(&v117 + 1) = v12;
  LODWORD(v118) = v13;
  *(&v118 + 1) = v14;
  LODWORD(v106[0]) = *(v10 + 4);
  MLS.TreeKEMPublicKey.find(leafIndex:)(v106, &__dst);
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v126 = __dst;
  v127 = v136;
  if (sub_26BE59C80(&v126) == 1)
  {
    goto LABEL_58;
  }

  v72 = v133;
  *(v82 + 96) = v132;
  *(v82 + 112) = v72;
  v73 = v134;
  v74 = v129;
  *(v82 + 32) = v128;
  *(v82 + 48) = v74;
  v75 = v131;
  *(v82 + 64) = v130;
  *(v82 + 80) = v75;
  v76 = v127;
  *v82 = v126;
  *(v82 + 16) = v76;
  *(v82 + 128) = v73;
  *(v82 + 136) = v19;
}

unsigned int *MLS.TreeKEMPublicKey.expectNodeAt(index:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3 - 1;
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = *result;
  if (v5 > 2 * v4)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + 24);
  if (*(v6 + 16) <= v5)
  {
    goto LABEL_6;
  }

  v8 = v6 + 136 * v5;
  v9 = *(v8 + 144);
  v27 = *(v8 + 128);
  v28 = v9;
  v29 = *(v8 + 160);
  v10 = *(v8 + 80);
  v23 = *(v8 + 64);
  v24 = v10;
  v11 = *(v8 + 112);
  v25 = *(v8 + 96);
  v26 = v11;
  v12 = *(v8 + 48);
  v21 = *(v8 + 32);
  v22 = v12;
  memmove(__dst, (v8 + 32), 0x88uLL);
  if (sub_26BE58C10(__dst) == 1)
  {
LABEL_6:
    sub_26BE01654();
    swift_allocError();
    *v13 = 30;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0;
    *(v13 + 112) = 23;
    return swift_willThrow();
  }

  else
  {
    v14 = __dst[7];
    *(a2 + 96) = __dst[6];
    *(a2 + 112) = v14;
    *(a2 + 128) = v31;
    v15 = __dst[3];
    *(a2 + 32) = __dst[2];
    *(a2 + 48) = v15;
    v16 = __dst[5];
    *(a2 + 64) = __dst[4];
    *(a2 + 80) = v16;
    v17 = __dst[1];
    *a2 = __dst[0];
    *(a2 + 16) = v17;
    v19[6] = v27;
    v19[7] = v28;
    v20 = v29;
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[5] = v26;
    v19[0] = v21;
    v19[1] = v22;
    return sub_26BE59BD8(v19, v18);
  }
}

void sub_26BE4B650(unsigned int *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = *(v1 + 4);
  v7 = *(v1 + 3);
  LOWORD(v33) = *v1;
  *(&v33 + 1) = v5;
  LODWORD(v34) = v6;
  *(&v34 + 1) = v7;
  LODWORD(v26[0]) = v3;
  v8 = MLS.TreeKEMPublicKey.blankAt(index:)(v26);
  if (!v2)
  {
    if (v8)
    {
      if ((v3 & 1) == 0)
      {
        return;
      }

      LOWORD(v33) = v4;
      *(&v33 + 1) = v5;
      LODWORD(v34) = v6;
      *(&v34 + 1) = v7;
      LODWORD(v23[0]) = v3;
      MLS.NodeIndex.left.getter(v24);
      if ((BYTE4(v24[0]) & 1) == 0)
      {
        v29 = v24[0];
        v10 = sub_26BE4B650(&v29);
        *&v26[0] = v10;
        LOWORD(v33) = v4;
        *(&v33 + 1) = v5;
        LODWORD(v34) = v6;
        *(&v34 + 1) = v7;
        LODWORD(v23[0]) = v3;
        MLS.NodeIndex.right.getter(v24);
        if ((BYTE4(v24[0]) & 1) == 0)
        {
          v29 = v24[0];
          v11 = sub_26BE4B650(&v29);
          sub_26BE59490(*(v10 + 16), *(v10 + 16), v11);

          return;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if ((v3 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E580, &qword_26C00E4E0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_26C011280;
      *(v9 + 32) = v3;
      return;
    }

    LOWORD(v29) = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v28 = v3;
    MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v28, &v33);
    v42 = 0;
    v24[6] = v39;
    v24[7] = v40;
    v24[2] = v35;
    v24[3] = v36;
    v24[4] = v37;
    v24[5] = v38;
    v24[0] = v33;
    v24[1] = v34;
    v26[6] = v39;
    v26[7] = v40;
    v26[2] = v35;
    v26[3] = v36;
    v26[4] = v37;
    v26[5] = v38;
    v25 = v41;
    v27 = v41;
    v26[0] = v33;
    v26[1] = v34;
    v12 = sub_26BE592C4(v26);
    v13 = sub_26BE13A3C(v26);
    if (v12 != 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v21 = 28;
      *(v21 + 8) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 40) = 0u;
      *(v21 + 56) = 0u;
      *(v21 + 72) = 0u;
      *(v21 + 88) = 0u;
      *(v21 + 104) = 0;
      *(v21 + 112) = 23;
      swift_willThrow();
      sub_26BE13854(v24);
      return;
    }

    v14 = *(v13 + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      sub_26BE59BD8(v24, v23);
      v23[0] = MEMORY[0x277D84F90];

      sub_26BECB954(0, v15, 0);
      v16 = 32;
      v17 = v23[0];
      while (1)
      {
        v18 = *(v14 + v16);
        if (v18 < 0)
        {
          break;
        }

        v23[0] = v17;
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_26BECB954((v19 > 1), v20 + 1, 1);
          v17 = v23[0];
        }

        *(v17 + 16) = v20 + 1;
        *(v17 + 4 * v20 + 32) = 2 * v18;
        v16 += 4;
        if (!--v15)
        {

          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    sub_26BE59BD8(v24, v23);
    v17 = MEMORY[0x277D84F90];
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E580, &qword_26C00E4E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26C011280;
    *(v22 + 32) = v3;
    v23[0] = v22;
    sub_26BF9E914(v17);
    sub_26BE13854(v24);
    sub_26BE13854(v24);
  }
}

uint64_t sub_26BE4BA44(uint64_t *a1, _DWORD *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  LODWORD(v33[0]) = *a2;
  sub_26BE4BE9C(v33);
  if (v3)
  {
    return v2;
  }

  v10 = v8;
  v11 = v9;
  v37 = xmmword_26C00BBD0;
  v38 = 0;
  v33[0] = v5;
  v33[1] = v4;
  v33[2] = v7;
  v34 = v6;
  v35 = v8;
  v36 = v9;
  sub_26BE00608(v5, v4);
  sub_26BE00608(v7, v6);
  sub_26BE00608(v10, v11);
  sub_26BFEA76C(v33);
  v13 = v37;
  v14 = *(&v37 + 1) >> 62;
  v31 = 0;
  if ((*(&v37 + 1) >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_12;
    }

    v15 = *(v37 + 24);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = v37 >> 32;
  }

  if (v15 < 0)
  {
    __break(1u);
  }

LABEL_12:
  v39 = sub_26C00909C();
  v32 = v16;
  result = sub_26BE00258(v13, *(&v13 + 1));
  v17 = *v2;
  if ((v17 - 3) >= 0xFFFFFFFE)
  {
    LOBYTE(v37) = v17 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v37, v33);
    v18 = *(v35 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash);
    v29 = v7;
    v30 = v6;
    v27[2] = v35;
    v28 = v4;
    if (v18)
    {
      v34 = sub_26C00A33C();
      v35 = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560]);
      __swift_allocate_boxed_opaque_existential_1(v33);
      sub_26C00A32C();
    }

    else
    {
      v34 = sub_26C00A30C();
      v35 = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540]);
      __swift_allocate_boxed_opaque_existential_1(v33);
      sub_26C00A2FC();
    }

    *&v37 = v39;
    *(&v37 + 1) = v32;
    __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    sub_26BE016A8();
    sub_26C009BEC();
    __swift_project_boxed_opaque_existential_1(v33, v34);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27[1] = v27;
    v20 = *(AssociatedTypeWitness - 1);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v23 = v27 - v22;
    sub_26C009BDC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v25);
    (*(v20 + 8))(v23, AssociatedTypeWitness);
    v2 = sub_26BE12418(v26);

    sub_26BE00258(v10, v11);

    sub_26BE00258(v39, v32);
    sub_26BE00258(v5, v28);
    sub_26BE00258(v29, v30);
    sub_26BE00258(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return v2;
  }

  __break(1u);
  return result;
}

void sub_26BE4BE9C(int *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  v6 = *(v1 + 1);
  if (*(v6 + 16))
  {
    v7 = sub_26BEBB414(*a1);
    if (v8)
    {
      sub_26BE00608(*(*(v6 + 56) + 16 * v7), *(*(v6 + 56) + 16 * v7 + 8));
      return;
    }
  }

  v9 = *(v4 + 4);
  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v11 < 0)
  {
    goto LABEL_44;
  }

  if (v5 > 2 * v11)
  {
    sub_26BE01654();
    swift_allocError();
    *v12 = 30;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0;
    *(v12 + 112) = 23;
    swift_willThrow();
    return;
  }

  v13 = *(v4 + 3);
  if (*(v13 + 16) <= v5)
  {
    sub_26BE2E2B8(&v99);
  }

  else
  {
    v14 = v13 + 136 * v5;
    *v98 = *(v14 + 32);
    v15 = *(v14 + 48);
    v16 = *(v14 + 64);
    v17 = *(v14 + 80);
    *&v98[64] = *(v14 + 96);
    *&v98[48] = v17;
    *&v98[32] = v16;
    *&v98[16] = v15;
    v18 = *(v14 + 112);
    v19 = *(v14 + 128);
    v20 = *(v14 + 144);
    *&v98[128] = *(v14 + 160);
    *&v98[96] = v19;
    *&v98[112] = v20;
    *&v98[80] = v18;
    sub_26BE2E1F0(v98, v96, &qword_28045E4C8, &unk_26C0112A0);
    v105 = *&v98[96];
    v106 = *&v98[112];
    v107 = *&v98[128];
    v101 = *&v98[32];
    v102 = *&v98[48];
    v103 = *&v98[64];
    v104 = *&v98[80];
    v99 = *v98;
    v100 = *&v98[16];
  }

  if (v5)
  {
    *v83 = v5;
    MLS.NodeIndex.left.getter(v96);
    if (v96[4])
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    LODWORD(v82[0]) = *v96;
    v23 = sub_26BE4BE9C(v82);
    if (v2)
    {
      sub_26BE2E258(&v99, &qword_28045E4C8, &unk_26C0112A0);
      return;
    }

    v70 = v23;
    v108 = v24;
    LODWORD(v85[0]) = v5;
    MLS.NodeIndex.right.getter(&v87);
    if (BYTE4(v87))
    {
      goto LABEL_47;
    }

    v71[0] = v87;
    v25 = sub_26BE4BE9C(v71);
    v69 = v26;
    v38 = v25;
    *&v83[96] = v105;
    *&v83[112] = v106;
    *&v83[128] = v107;
    *&v83[32] = v101;
    *&v83[48] = v102;
    *&v83[64] = v103;
    *&v83[80] = v104;
    *v83 = v99;
    *&v83[16] = v100;
    if (sub_26BE58C10(v83) == 1)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    else
    {
      *&v96[96] = *&v83[96];
      *&v96[112] = *&v83[112];
      *&v96[128] = *&v83[128];
      *&v96[32] = *&v83[32];
      *&v96[48] = *&v83[48];
      *&v96[64] = *&v83[64];
      *&v96[80] = *&v83[80];
      *v96 = *v83;
      *&v96[16] = *&v83[16];
      if (sub_26BE592C4(v96) != 1)
      {
        sub_26BE13A3C(v96);
        sub_26BE01654();
        swift_allocError();
        *v63 = 28;
        *(v63 + 8) = 0u;
        *(v63 + 24) = 0u;
        *(v63 + 40) = 0u;
        *(v63 + 56) = 0u;
        *(v63 + 72) = 0u;
        *(v63 + 88) = 0u;
        *(v63 + 104) = 0;
        *(v63 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(&v99, &qword_28045E4C8, &unk_26C0112A0);
        memset(v82, 0, 40);
        *(&v82[2] + 1) = v70;
        *&v82[3] = v108;
        *(&v82[3] + 1) = v38;
        *&v82[4] = v69;
        sub_26BE5A184(v82);
        return;
      }

      v60 = sub_26BE13A3C(v96);
      v39 = *v60;
      v61 = v60[1];
      v62 = v60[3];
      v67 = v60[2];
      v68 = v61;
      v65 = v60[4];
      v66 = v62;
      v82[6] = v105;
      v82[7] = v106;
      *&v82[8] = v107;
      v82[2] = v101;
      v82[3] = v102;
      v82[4] = v103;
      v82[5] = v104;
      v82[0] = v99;
      v82[1] = v100;
      sub_26BE59BD8(v82, &v72);
      sub_26BE5A2DC(0, 0, 0, 0, 0);
      v43 = v65;
      v42 = v66;
      v41 = v67;
      v40 = v68;
    }

    v66 = v42;
    v67 = v41;
    v65 = v43;
    v68 = v40;
    v64[1] = v39;
    *&v72 = v39;
    *(&v72 + 1) = v40;
    *&v73 = v41;
    *(&v73 + 1) = v42;
    *&v74 = v43;
    *(&v74 + 1) = v70;
    *&v75 = v108;
    *(&v75 + 1) = v38;
    *&v76 = v69;
    *&v96[64] = v69;
    v64[2] = v38;
    *&v96[32] = v74;
    *&v96[48] = v75;
    *v96 = v72;
    *&v96[16] = v73;
    sub_26BE5A1D8(v96);
    *&v97[103] = *&v96[96];
    *&v97[119] = *&v96[112];
    *&v97[135] = *&v96[128];
    *&v97[39] = *&v96[32];
    *&v97[55] = *&v96[48];
    *&v97[71] = *&v96[64];
    *&v97[87] = *&v96[80];
    *&v97[7] = *v96;
    v97[151] = v96[144];
    *&v97[23] = *&v96[16];
    *&v82[0] = v39;
    *(&v82[0] + 1) = v68;
    *&v82[1] = v67;
    *(&v82[1] + 1) = v66;
    *&v82[2] = v65;
    *(&v82[2] + 1) = v70;
    *&v82[3] = v108;
    *(&v82[3] + 1) = v38;
    *&v82[4] = v69;
    sub_26BE5A1E4(&v72, v84);
    sub_26BE5A184(v82);
    *&v98[97] = *&v97[96];
    *&v98[113] = *&v97[112];
    *&v98[129] = *&v97[128];
    *&v98[33] = *&v97[32];
    *&v98[49] = *&v97[48];
    *&v98[65] = *&v97[64];
    *&v98[81] = *&v97[80];
    *&v98[1] = *v97;
    v98[0] = 2;
    *&v98[145] = *&v97[144];
    *&v98[17] = *&v97[16];
  }

  else
  {
    v70 = v4;
    v108 = v2;
    v21 = v5 >> 1;
    sub_26BE59DB4(v85);
    *(&v84[5] + 4) = v85[5];
    *(&v84[6] + 4) = v85[6];
    *(&v84[7] + 4) = v85[7];
    *(&v84[1] + 4) = v85[1];
    *(&v84[2] + 4) = v85[2];
    *(&v84[3] + 4) = v85[3];
    *(&v84[8] + 4) = v86;
    *(&v84[4] + 4) = v85[4];
    *(v84 + 4) = v85[0];
    v93 = v105;
    v94 = v106;
    v95 = v107;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    v92 = v104;
    v87 = v99;
    v88 = v100;
    if (sub_26BE58C10(&v87) != 1)
    {
      LODWORD(v69) = v5 >> 1;
      *&v83[96] = v93;
      *&v83[112] = v94;
      *&v83[128] = v95;
      *&v83[32] = v89;
      *&v83[48] = v90;
      *&v83[64] = v91;
      *&v83[80] = v92;
      *v83 = v87;
      *&v83[16] = v88;
      if (sub_26BE592C4(v83) == 1)
      {
        sub_26BE13A3C(v83);
        sub_26BE01654();
        swift_allocError();
        *v22 = 28;
        *(v22 + 8) = 0u;
        *(v22 + 24) = 0u;
        *(v22 + 40) = 0u;
        *(v22 + 56) = 0u;
        *(v22 + 72) = 0u;
        *(v22 + 88) = 0u;
        *(v22 + 104) = 0;
        *(v22 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(&v99, &qword_28045E4C8, &unk_26C0112A0);
        *&v96[84] = v84[5];
        *&v96[100] = v84[6];
        *&v96[116] = v84[7];
        *&v96[128] = *(&v84[7] + 12);
        *&v96[20] = v84[1];
        *&v96[36] = v84[2];
        *&v96[52] = v84[3];
        *&v96[68] = v84[4];
        *v96 = v69;
        *&v96[4] = v84[0];
        sub_26BE5A39C(v96);
        return;
      }

      v27 = sub_26BE13A3C(v83);
      v72 = *v27;
      v28 = *(v27 + 64);
      v30 = *(v27 + 16);
      v29 = *(v27 + 32);
      v75 = *(v27 + 48);
      v76 = v28;
      v73 = v30;
      v74 = v29;
      v32 = *(v27 + 96);
      v31 = *(v27 + 112);
      v33 = *(v27 + 80);
      v80 = *(v27 + 128);
      v78 = v32;
      v79 = v31;
      v77 = v33;
      nullsub_1(&v72);
      v82[5] = *(&v84[5] + 4);
      v82[6] = *(&v84[6] + 4);
      v82[7] = *(&v84[7] + 4);
      *&v82[8] = *(&v84[8] + 4);
      v82[2] = *(&v84[2] + 4);
      v82[3] = *(&v84[3] + 4);
      v82[4] = *(&v84[4] + 4);
      v82[0] = *(v84 + 4);
      v82[1] = *(&v84[1] + 4);
      *&v96[96] = v105;
      *&v96[112] = v106;
      *&v96[128] = v107;
      *&v96[32] = v101;
      *&v96[48] = v102;
      *&v96[64] = v103;
      *&v96[80] = v104;
      *v96 = v99;
      *&v96[16] = v100;
      sub_26BE59BD8(v96, v71);
      sub_26BE2E258(v82, &qword_28045E6A0, &unk_26C016520);
      *(&v84[5] + 4) = v77;
      *(&v84[6] + 4) = v78;
      *(&v84[7] + 4) = v79;
      *(&v84[1] + 4) = v73;
      *(&v84[2] + 4) = v74;
      *(&v84[3] + 4) = v75;
      *(&v84[4] + 4) = v76;
      *(&v84[8] + 4) = v80;
      *(v84 + 4) = v72;
      v21 = v69;
    }

    *(&v82[4] + 4) = v84[4];
    *(&v82[5] + 4) = v84[5];
    *(&v82[6] + 4) = v84[6];
    *(&v82[2] + 4) = v84[2];
    *(&v82[1] + 4) = v84[1];
    *(&v82[7] + 4) = v84[7];
    v82[8] = *(&v84[7] + 12);
    LODWORD(v82[0]) = v21;
    *(&v82[3] + 4) = v84[3];
    *(v82 + 4) = v84[0];
    *&v96[96] = v82[6];
    *&v96[112] = v82[7];
    *&v96[128] = *(&v84[7] + 12);
    *&v96[32] = v82[2];
    *&v96[48] = v82[3];
    *&v96[64] = v82[4];
    *&v96[80] = v82[5];
    *v96 = v82[0];
    *&v96[16] = v82[1];
    sub_26BE5A338(v96);
    *&v81[103] = *&v96[96];
    *&v81[119] = *&v96[112];
    *&v81[135] = *&v96[128];
    *&v81[39] = *&v96[32];
    *&v81[55] = *&v96[48];
    *&v81[71] = *&v96[64];
    *&v81[87] = *&v96[80];
    *&v81[7] = *v96;
    *&v81[23] = *&v96[16];
    *&v83[84] = v84[5];
    *&v83[100] = v84[6];
    *&v83[116] = v84[7];
    *&v83[128] = *(&v84[7] + 12);
    *&v83[20] = v84[1];
    *&v83[36] = v84[2];
    *&v83[52] = v84[3];
    *&v83[68] = v84[4];
    v81[151] = v96[144];
    *v83 = v21;
    *&v83[4] = v84[0];
    sub_26BE5A340(v82, &v72);
    sub_26BE5A39C(v83);
    *&v98[97] = *&v81[96];
    *&v98[113] = *&v81[112];
    *&v98[129] = *&v81[128];
    *&v98[33] = *&v81[32];
    *&v98[49] = *&v81[48];
    *&v98[65] = *&v81[64];
    *&v98[81] = *&v81[80];
    *&v98[1] = *v81;
    v98[0] = 1;
    *&v98[145] = *&v81[144];
    *&v98[17] = *&v81[16];
    v3 = v108;
    v4 = v70;
  }

  *v83 = xmmword_26C00BBD0;
  *&v83[16] = 0;
  *&v96[96] = *&v98[96];
  *&v96[112] = *&v98[112];
  *&v96[128] = *&v98[128];
  *&v96[137] = *&v98[137];
  *&v96[32] = *&v98[32];
  *&v96[48] = *&v98[48];
  *&v96[64] = *&v98[64];
  *&v96[80] = *&v98[80];
  *v96 = *v98;
  *&v96[16] = *&v98[16];
  sub_26BFEA954(v96);
  if (v3)
  {
    sub_26BE2E258(&v99, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE5A240(v98);
    sub_26BE00258(*v83, *&v83[8]);
    return;
  }

  v34 = *v83;
  v35 = *&v83[8];
  v36 = *&v83[8] >> 62;
  if ((*&v83[8] >> 62) > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_35;
    }

    v37 = *(*v83 + 24);
  }

  else
  {
    if (!v36)
    {
      goto LABEL_35;
    }

    v37 = *v83 >> 32;
  }

  if (v37 < 0)
  {
    __break(1u);
  }

LABEL_35:
  v44 = sub_26C00909C();
  v46 = v45;
  sub_26BE00258(v34, v35);
  v47 = *v4;
  if ((v47 - 3) < 0xFFFFFFFE)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v83[0] = v47 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v83, v96);
  v108 = *&v96[32];
  if (*(*&v96[32] + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash))
  {
    *&v96[24] = sub_26C00A33C();
    *&v96[32] = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560]);
    __swift_allocate_boxed_opaque_existential_1(v96);
    sub_26C00A32C();
  }

  else
  {
    *&v96[24] = sub_26C00A30C();
    *&v96[32] = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540]);
    __swift_allocate_boxed_opaque_existential_1(v96);
    sub_26C00A2FC();
  }

  *v83 = v44;
  *&v83[8] = v46;
  __swift_mutable_project_boxed_opaque_existential_1(v96, *&v96[24]);
  sub_26BE016A8();
  sub_26C009BEC();
  v70 = v44;
  __swift_project_boxed_opaque_existential_1(v96, *&v96[24]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = v64;
  v67 = *(AssociatedTypeWitness - 1);
  v49 = *(v67 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v69 = v46;
  v51 = v64 - v50;
  sub_26C009BDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v53);
  (*(v67 + 8))(v51, AssociatedTypeWitness);
  v55 = sub_26BE12418(v54);
  v57 = v56;

  sub_26BE00608(v55, v57);
  v58 = *(v4 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v83 = *(v4 + 1);
  sub_26BE56E54(v55, v57, v5, isUniquelyReferenced_nonNull_native);
  sub_26BE5A240(v98);
  sub_26BE2E258(&v99, &qword_28045E4C8, &unk_26C0112A0);

  sub_26BE00258(v70, v69);
  *(v4 + 1) = *v83;
  __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t MLS.TreeKEMPublicKey.expectNodeIsLeaf(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  v23[6] = *(a1 + 96);
  v23[7] = v4;
  v24 = *(a1 + 128);
  v5 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v5;
  v6 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v6;
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  if (sub_26BE592C4(v23) == 1)
  {
    sub_26BE13A3C(v23);
    sub_26BE01654();
    swift_allocError();
    *v8 = 28;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0;
    *(v8 + 112) = 23;
    return swift_willThrow();
  }

  else
  {
    v10 = sub_26BE13A3C(v23);
    v11 = *(v10 + 112);
    *(a2 + 96) = *(v10 + 96);
    *(a2 + 112) = v11;
    *(a2 + 128) = *(v10 + 128);
    v12 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v12;
    v13 = *(v10 + 80);
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = v13;
    v14 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v14;
    v22 = *(a1 + 128);
    v15 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v15;
    v16 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v16;
    v17 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v17;
    v18 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v18;
    v19 = sub_26BE13A3C(v21);
    return sub_26BE00758(v19, v20);
  }
}

uint64_t MLS.TreeKEMPublicKey.expectNodeIsParent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  v23[6] = *(a1 + 96);
  v23[7] = v4;
  v24 = *(a1 + 128);
  v5 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v5;
  v6 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v6;
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  if (sub_26BE592C4(v23) == 1)
  {
    v8 = sub_26BE13A3C(v23);
    v9 = *(v8 + 32);
    v10 = *(v8 + 16);
    *a2 = *v8;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
    v11 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v11;
    v22 = *(a1 + 128);
    v12 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v12;
    v13 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v13;
    v14 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v14;
    v15 = sub_26BE13A3C(v21);
    v16 = v15[2];
    v17 = v15[3];
    v18 = v15[4];
    sub_26BE00608(*v15, v15[1]);
    sub_26BE00608(v16, v17);
  }

  else
  {
    sub_26BE13A3C(v23);
    sub_26BE01654();
    swift_allocError();
    *v20 = 28;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 104) = 0;
    *(v20 + 112) = 23;
    return swift_willThrow();
  }
}

uint64_t sub_26BE4CFD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v6;
    v12[4] = *(a1 + 64);
    v7 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v7;
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_26BE56BBC(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_26BE00258(a2, a3);
    *v3 = v11;
  }

  else
  {
    sub_26BE2E258(a1, &qword_28045E6F8, &qword_26C011360);
    sub_26C0001C8(a2, a3, v12);
    sub_26BE00258(a2, a3);
    return sub_26BE2E258(v12, &qword_28045E6F8, &qword_26C011360);
  }

  return result;
}

uint64_t sub_26BE4D0C0(uint64_t a1, int a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_26BE03890(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_26BE56F8C(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_26BE2E258(a1, &qword_28045E6A8, &qword_26C0112B0);
    v8 = *v2;
    v9 = sub_26BEBB414(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_26BE6DD70();
        v14 = v16;
      }

      sub_26BE03890((*(v14 + 56) + 40 * v11), v17);
      sub_26C000A2C(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_26BE2E258(v17, &qword_28045E6A8, &qword_26C0112B0);
  }

  return result;
}

uint64_t sub_26BE4D1CC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_26C00921C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E4A8, &unk_26C00ECB0);
    v17 = *v4;
    v18 = sub_26BEBB598(a2, a3);
    if (v19)
    {
      v20 = v18;
      v21 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v4;
      v28 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6DEF4();
        v23 = v28;
      }

      (*(v13 + 32))(v11, *(v23 + 56) + *(v13 + 72) * v20, v12);
      sub_26C000BCC(v20, v23);
      *v4 = v23;
      (*(v13 + 56))(v11, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    return sub_26BE2E258(v11, &qword_28045E4A8, &unk_26C00ECB0);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v24 = *v4;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    result = sub_26BE570BC(v16, a2, a3, v25);
    *v4 = v28;
  }

  return result;
}

uint64_t sub_26BE4D428(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_26C009C8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E708, &unk_26C011370);
    v15 = *v3;
    v16 = sub_26BEBB414(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6E7A8();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_26C001358(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_26BE2E258(v9, &qword_28045E708, &unk_26C011370);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_26BE574C8(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_26BE4D678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = _s11HashRatchetVMa(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E710, &unk_26C020E50);
    v15 = *v2;
    v16 = sub_26BEBB480(a2 & 0xFFFFFFFF00000001);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6EA10();
        v21 = v26;
      }

      sub_26BE5B2E0(*(v21 + 56) + *(v11 + 72) * v18, v9, _s11HashRatchetVMa);
      sub_26C001528(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_26BE2E258(v9, &qword_28045E710, &unk_26C020E50);
  }

  else
  {
    sub_26BE5B2E0(a1, v14, _s11HashRatchetVMa);
    v22 = *v2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    result = sub_26BE57630(v14, a2 & 0xFFFFFFFF00000001, v23);
    *v2 = v26;
  }

  return result;
}

uint64_t sub_26BE4D8CC(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E700, &qword_26C011368);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for MLS.KeyAndNonce(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E700, &qword_26C011368);
    v15 = *v3;
    v16 = sub_26BEBB208(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6EE0C();
        v21 = v26;
      }

      sub_26BE5B2E0(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for MLS.KeyAndNonce);
      sub_26C001714(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_26BE2E258(v9, &qword_28045E700, &qword_26C011368);
  }

  else
  {
    sub_26BE5B2E0(a1, v14, type metadata accessor for MLS.KeyAndNonce);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_26BE578D4(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

_DWORD *MLS.TreeKEMPublicKey.rootHash.getter()
{
  result = sub_26BE592D0();
  if (!v0)
  {
    v3 = result;
    sub_26BE00608(result, v2);
    return v3;
  }

  return result;
}

int *MLS.TreeKEMPublicKey.parentHashValid(from:path:)(int *result, __int128 *a2)
{
  v4 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 11);
    v7 = *(a2 + 12);
    v8 = *(a2 + 104);
    v9 = *(v2 + 8);
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    LOWORD(v21) = *v2;
    *(&v21 + 1) = v9;
    LODWORD(v22) = v10;
    *(&v22 + 1) = v11;
    v32 = 2 * v4;

    MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v32, &v33);

    if (!v3)
    {
      v32 = v4;
      v12 = a2[3];
      v23 = a2[2];
      v24 = v12;
      v25 = a2[4];
      v13 = *(a2 + 10);
      v14 = a2[1];
      v21 = *a2;
      v22 = v14;
      v26 = v13;
      v27 = v6;
      v28 = v7;
      v29 = v8;
      v15 = *(a2 + 105);
      v16 = *(a2 + 121);
      *&v31[15] = *(a2 + 17);
      *v31 = v16;
      v30 = v15;
      v17 = MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(&v32, &v33, &v21);

      if (v8 == 1 && *(v17 + 2))
      {
        v18 = *(v17 + 4);
        v19 = *(v17 + 5);
        sub_26BE5A15C(v6, v7, 1);
        sub_26BE00608(v18, v19);

        v20 = sub_26BE02DEC(v18, v19, v6, v7);
        sub_26BE5A170(v6, v7, 1);
        sub_26BE00258(v18, v19);
        return (v20 & 1);
      }
    }

    return 0;
  }

  return result;
}

void MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  LODWORD(v87) = *v2;
  v88 = *(v2 + 1);
  v89 = v3;
  LODWORD(v86) = *(v2 + 4);
  v85 = *(v2 + 3);
  v4 = *(a2 + 16);
  if (!v4)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_14:
    if (!*(v9 + 2))
    {
      if (v88[2])
      {
        v16 = sub_26BEBB414(v89);
        if (v17)
        {
          sub_26BE00608(*(v88[7] + 16 * v16), *(v88[7] + 16 * v16 + 8));

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_83;
    }

    v84 = v9;
    v15 = v115;
    if ((v89 & 1) == 0)
    {
      sub_26BE59DB4(&v93);
      *&v103[4] = v93;
      *&v103[68] = v97;
      *&v103[52] = v96;
      *&v103[36] = v95;
      *&v103[20] = v94;
      *&v103[132] = v101;
      *&v103[116] = v100;
      *&v103[100] = v99;
      *&v103[84] = v98;
      *(&v102[6] + 4) = *&v103[96];
      *(&v102[5] + 4) = *&v103[80];
      *(&v102[2] + 4) = *&v103[32];
      *(&v102[1] + 4) = *&v103[16];
      *(&v102[7] + 4) = *&v103[112];
      v102[8] = *&v103[124];
      *(&v102[3] + 4) = *&v103[48];
      LODWORD(v102[0]) = v89 >> 1;
      *(&v102[4] + 4) = *&v103[64];
      *(v102 + 4) = *v103;
      v110 = v102[6];
      v111 = v102[7];
      v112 = *&v103[124];
      v106 = v102[2];
      v107 = v102[3];
      v108 = v102[4];
      v109 = v102[5];
      v104 = v102[0];
      v105 = v102[1];
      sub_26BE5A338(&v104);
      *&v103[55] = v107;
      *&v103[39] = v106;
      *&v103[119] = v111;
      *&v103[103] = v110;
      *&v103[135] = v112;
      v103[151] = v113;
      *&v103[71] = v108;
      *&v103[87] = v109;
      *&v103[7] = v104;
      *&v103[23] = v105;
      __dst[0] = 1;
      *&__dst[113] = *&v103[112];
      *&__dst[97] = *&v103[96];
      *&__dst[49] = *&v103[48];
      *&__dst[33] = *&v103[32];
      *&__dst[129] = *&v103[128];
      *&__dst[145] = *&v103[144];
      *&__dst[65] = *&v103[64];
      *&__dst[81] = *&v103[80];
      *&__dst[1] = *v103;
      *&__dst[17] = *&v103[16];
      v91 = xmmword_26C00BBD0;
      v92 = 0;
      *&v103[96] = *&__dst[96];
      *&v103[112] = *&__dst[112];
      *&v103[128] = *&__dst[128];
      *&v103[137] = *&__dst[137];
      *&v103[32] = *&__dst[32];
      *&v103[48] = *&__dst[48];
      *&v103[64] = *&__dst[64];
      *&v103[80] = *&__dst[80];
      *v103 = *__dst;
      *&v103[16] = *&__dst[16];
      sub_26BE5A340(v102, v90);
      sub_26BFEA954(v103);
      v7 = v87;
      if (v15)
      {
        sub_26BE5A39C(v102);
        sub_26BE5A240(__dst);
        sub_26BE00258(v91, *(&v91 + 1));

        return;
      }

      v20 = v91;
      v21 = *(&v91 + 1) >> 62;
      if ((*(&v91 + 1) >> 62) > 1)
      {
        if (v21 != 2)
        {
LABEL_38:
          v29 = sub_26C00909C();
          v31 = v30;
          sub_26BE5A240(__dst);
          sub_26BE5A39C(v102);
          sub_26BE00258(v20, *(&v20 + 1));
          goto LABEL_39;
        }

        v24 = *(v91 + 24);
      }

      else
      {
        if (!v21)
        {
          goto LABEL_38;
        }

        v24 = v91 >> 32;
      }

      if (v24 < 0)
      {
        __break(1u);
      }

      goto LABEL_38;
    }

    v7 = v87;
    *__dst = v87;
    *&__dst[8] = v88;
    *&__dst[16] = v86;
    *&__dst[24] = v85;
    LODWORD(v104) = v89;
    MLS.NodeIndex.left.getter(v103);
    if (v103[4])
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return;
    }

    LODWORD(v102[0]) = *v103;

    v18 = MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(v102, v84);
    if (v15)
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    v82 = v18;
    v83 = v19;

    *__dst = v87;
    *&__dst[8] = v88;
    *&__dst[16] = v86;
    *&__dst[24] = v85;
    LODWORD(v104) = v89;
    MLS.NodeIndex.right.getter(v103);
    if (v103[4])
    {
      goto LABEL_87;
    }

    LODWORD(v102[0]) = *v103;
    v22 = MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(v102, v84);
    v25 = v86 - 1;
    if (!v86)
    {
      goto LABEL_84;
    }

    if (v25 < 0)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v10 = v22;
    if (v89 > 2 * v25)
    {
      v26 = v23;
      sub_26BE01654();
      swift_allocError();
      *v27 = 30;
      *(v27 + 8) = 0u;
      *(v27 + 24) = 0u;
      *(v27 + 40) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 72) = 0u;
      *(v27 + 88) = 0u;
      *(v27 + 104) = 0;
      *(v27 + 112) = 23;
      swift_willThrow();

      memset(__dst, 0, 40);
      *&__dst[40] = v82;
      *&__dst[48] = v83;
      *&__dst[56] = v10;
      *&__dst[64] = v26;
      v28 = __dst;
      goto LABEL_50;
    }

    if (*(v85 + 16) <= v89)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v8 = 0;
      v54 = v82;
      v53 = v83;
      goto LABEL_48;
    }

    v41 = v23;
    v42 = v85 + 136 * v89;
    *v103 = *(v42 + 32);
    v43 = *(v42 + 48);
    v44 = *(v42 + 64);
    v45 = *(v42 + 96);
    *&v103[48] = *(v42 + 80);
    *&v103[64] = v45;
    *&v103[16] = v43;
    *&v103[32] = v44;
    v46 = *(v42 + 112);
    v47 = *(v42 + 128);
    v48 = *(v42 + 144);
    *&v103[128] = *(v42 + 160);
    *&v103[96] = v47;
    *&v103[112] = v48;
    *&v103[80] = v46;
    memmove(__dst, (v42 + 32), 0x88uLL);
    if (sub_26BE58C10(__dst) == 1)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v8 = 0;
      v54 = v82;
      v53 = v83;
      v23 = v41;
LABEL_48:
      v88 = v51;
      v89 = v50;
      v86 = v52;
      *&v102[0] = v49;
      *(&v102[0] + 1) = v50;
      *&v102[1] = v51;
      *(&v102[1] + 1) = v52;
      *&v102[2] = v8;
      *(&v102[2] + 1) = v54;
      *&v102[3] = v53;
      *(&v102[3] + 1) = v10;
      *&v102[4] = v23;
      *&v108 = v23;
      v106 = v102[2];
      v107 = v102[3];
      v104 = v102[0];
      v105 = v102[1];
      v55 = v23;
      sub_26BE5A1D8(&v104);
      *&v103[55] = v107;
      *&v103[39] = v106;
      *&v103[119] = v111;
      *&v103[103] = v110;
      *&v103[135] = v112;
      v103[151] = v113;
      *&v103[71] = v108;
      *&v103[87] = v109;
      *&v103[7] = v104;
      *&v103[23] = v105;
      __dst[0] = 2;
      *&__dst[113] = *&v103[112];
      *&__dst[97] = *&v103[96];
      *&__dst[49] = *&v103[48];
      *&__dst[33] = *&v103[32];
      *&__dst[129] = *&v103[128];
      *&__dst[145] = *&v103[144];
      *&__dst[65] = *&v103[64];
      *&__dst[81] = *&v103[80];
      *&__dst[1] = *v103;
      *&__dst[17] = *&v103[16];
      v93 = xmmword_26C00BBD0;
      *&v94 = 0;
      *&v103[96] = *&__dst[96];
      *&v103[112] = *&__dst[112];
      *&v103[128] = *&__dst[128];
      *&v103[137] = *&__dst[137];
      *&v103[32] = *&__dst[32];
      *&v103[48] = *&__dst[48];
      *&v103[64] = *&__dst[64];
      *&v103[80] = *&__dst[80];
      *v103 = *__dst;
      *&v103[16] = *&__dst[16];
      sub_26BE5A1E4(v102, v90);
      v4 = v49;
      v5 = v55;
      sub_26BFEA954(v103);
      if (!v15)
      {
        goto LABEL_52;
      }

      sub_26BE5A240(__dst);
      sub_26BE00258(v93, *(&v93 + 1));

      v90[0] = v4;
      v90[1] = v89;
      v90[2] = v88;
      v90[3] = v86;
      v90[4] = v8;
      v90[5] = v82;
      v90[6] = v83;
      v90[7] = v10;
      v90[8] = v55;
      v28 = v90;
LABEL_50:
      sub_26BE5A184(v28);
      return;
    }

    v110 = *&__dst[96];
    v111 = *&__dst[112];
    *&v112 = *&__dst[128];
    v106 = *&__dst[32];
    v107 = *&__dst[48];
    v108 = *&__dst[64];
    v109 = *&__dst[80];
    v104 = *__dst;
    v105 = *&__dst[16];
    if (sub_26BE592C4(&v104) != 1)
    {
      sub_26BE13A3C(&v104);
      sub_26BE01654();
      swift_allocError();
      *v75 = 28;
      *(v75 + 8) = 0u;
      *(v75 + 24) = 0u;
      *(v75 + 40) = 0u;
      *(v75 + 56) = 0u;
      *(v75 + 72) = 0u;
      *(v75 + 88) = 0u;
      *(v75 + 104) = 0;
      *(v75 + 112) = 23;
      swift_willThrow();

      memset(v102, 0, 40);
      *(&v102[2] + 1) = v82;
      *&v102[3] = v83;
      *(&v102[3] + 1) = v10;
      *&v102[4] = v41;
      v28 = v102;
      goto LABEL_50;
    }

    v85 = v10;
    v80 = v41;
    v58 = sub_26BE13A3C(&v104);
    v49 = *v58;
    v59 = v58[1];
    v60 = v58[3];
    v88 = v58[2];
    v89 = v59;
    v86 = v60;
    v61 = v58[4];
    v102[6] = *&v103[96];
    v102[7] = *&v103[112];
    *&v102[8] = *&v103[128];
    v102[2] = *&v103[32];
    v102[3] = *&v103[48];
    v102[4] = *&v103[64];
    v102[5] = *&v103[80];
    v102[0] = *v103;
    v102[1] = *&v103[16];
    sub_26BE2E1F0(v103, v90, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE2E1F0(v103, v90, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE59BD8(v102, v90);
    sub_26BE5A2DC(0, 0, 0, 0, 0);

    sub_26BE2E258(v103, &qword_28045E4C8, &unk_26C0112A0);
    v78 = v61;
    v62 = *(v61 + 16);
    if (v62)
    {
      v79 = v49;
      v115 = 0;
      v63 = 0;
      v64 = v78 + 32;
      v65 = v84;
      v10 = v85;
      v66 = (v84 + 32);
      v8 = MEMORY[0x277D84F90];
      v81 = v78 + 32;
      do
      {
        v67 = *(v64 + 4 * v63++);
        v68 = *(v65 + 2);
        v69 = v66;
        while (v68)
        {
          v70 = *v69++;
          --v68;
          if (v70 == v67)
          {
            goto LABEL_59;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BEEBEAC(0, *(v8 + 2) + 1, 1, v8);
        }

        v72 = *(v8 + 2);
        v71 = *(v8 + 3);
        v65 = v84;
        if (v72 >= v71 >> 1)
        {
          v73 = sub_26BEEBEAC((v71 > 1), v72 + 1, 1, v8);
          v65 = v84;
          v8 = v73;
        }

        *(v8 + 2) = v72 + 1;
        *&v8[4 * v72 + 32] = v67;
        v10 = v85;
        v64 = v81;
LABEL_59:
        ;
      }

      while (v63 != v62);
      sub_26BE2E258(v103, &qword_28045E4C8, &unk_26C0112A0);

      if (!v78)
      {

        v8 = 0;
        v54 = v82;
        v53 = v83;
        v15 = v115;
        v7 = v87;
        v49 = v79;
        v23 = v80;
        goto LABEL_80;
      }

      v15 = v115;
      v7 = v87;
      v49 = v79;
    }

    else
    {
      sub_26BE2E258(v103, &qword_28045E4C8, &unk_26C0112A0);

      v8 = MEMORY[0x277D84F90];
      v10 = v85;
    }

    v54 = v82;
    v53 = v83;
    v23 = v80;
LABEL_80:
    v51 = v88;
    v50 = v89;
    v52 = v86;
    goto LABEL_48;
  }

  v5 = (a2 + 32);
  v6 = __clz(__rbit32(~v3));
  v7 = v6 + 1;
  v8 = (v3 >> (v6 + 1));
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = *v5++;
    v10 = v11;
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    if (v6 > 0x1E || (2 * v10) >> v7 == v8)
    {
      v12 = v9;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v9 = v12;
      }

      else
      {
        v9 = sub_26BEECEB4(0, *(v12 + 2) + 1, 1, v12);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_26BEECEB4((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      *&v9[4 * v14 + 32] = v10;
    }

    if (!--v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_52:
  v79 = v4;
  v80 = v5;
  v56 = v93;
  v57 = *(&v93 + 1) >> 62;
  if ((*(&v93 + 1) >> 62) <= 1)
  {
    if (!v57)
    {
      goto LABEL_74;
    }

    v74 = v93 >> 32;
LABEL_72:
    if (v74 < 0)
    {
      __break(1u);
    }

    goto LABEL_74;
  }

  if (v57 == 2)
  {
    v74 = *(v93 + 24);
    goto LABEL_72;
  }

LABEL_74:
  v76 = sub_26C00909C();
  v31 = v77;
  sub_26BE5A240(__dst);
  sub_26BE00258(v56, *(&v56 + 1));
  *v103 = v79;
  *&v103[8] = v89;
  *&v103[16] = v88;
  *&v103[24] = v86;
  *&v103[32] = v8;
  *&v103[40] = v82;
  *&v103[48] = v83;
  *&v103[56] = v10;
  *&v103[64] = v80;
  v29 = v76;
  sub_26BE5A184(v103);
LABEL_39:
  if (v7 - 3 < 0xFFFFFFFE)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v103[0] = v7 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v103, __dst);
  v32 = *(*&__dst[32] + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash);
  v115 = *&__dst[32];
  if (v32)
  {
    *&__dst[24] = sub_26C00A33C();
    *&__dst[32] = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560]);
    __swift_allocate_boxed_opaque_existential_1(__dst);
    sub_26C00A32C();
  }

  else
  {
    *&__dst[24] = sub_26C00A30C();
    *&__dst[32] = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540]);
    __swift_allocate_boxed_opaque_existential_1(__dst);
    sub_26C00A2FC();
  }

  *v103 = v29;
  *&v103[8] = v31;
  v89 = v31;
  __swift_mutable_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
  sub_26BE00608(v29, v31);
  sub_26BE016A8();
  sub_26C009BEC();
  sub_26BE00258(*v103, *&v103[8]);
  __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = v29;
  v88 = &v78;
  v34 = *(AssociatedTypeWitness - 1);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v78 - v36;
  sub_26C009BDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v39);
  (*(v34 + 8))(v37, AssociatedTypeWitness);

  sub_26BE12418(v40);

  sub_26BE00258(v87, v89);

  __swift_destroy_boxed_opaque_existential_1(__dst);
}

uint64_t sub_26BE4EB68(unsigned int *a1, unsigned int *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = *(v2 + 4);
  v9 = *(v2 + 3);
  v64 = *v2;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v63 = v4;
  v10 = &v64;
  MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v63, &v68);
  if (v3)
  {
    return v10;
  }

  v77 = 0;
  v59[6] = v74;
  v59[7] = v75;
  v59[2] = v70;
  v59[3] = v71;
  v59[4] = v72;
  v59[5] = v73;
  v59[0] = v68;
  v59[1] = v69;
  v61[6] = v74;
  v61[7] = v75;
  v61[2] = v70;
  v61[3] = v71;
  v61[4] = v72;
  v61[5] = v73;
  v60 = v76;
  v62 = v76;
  v61[0] = v68;
  v61[1] = v69;
  v11 = sub_26BE592C4(v61);
  v12 = sub_26BE13A3C(v61);
  if (v11 != 1)
  {
    sub_26BE01654();
    v10 = swift_allocError();
    *v22 = 28;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0u;
    *(v22 + 56) = 0u;
    *(v22 + 72) = 0u;
    *(v22 + 88) = 0u;
    *(v22 + 104) = 0;
    *(v22 + 112) = 23;
    swift_willThrow();
    sub_26BE13854(v59);
    return v10;
  }

  v13 = v12[1];
  v47 = *v12;
  v48 = v13;
  v14 = v12[3];
  v49 = v12[2];
  v15 = v12[4];
  LODWORD(v46) = v6;
  LOWORD(v56) = v6;
  *(&v56 + 1) = v7;
  LODWORD(v57) = v8;
  v58 = v9;
  v55 = v5;
  v16 = *(v15 + 16);
  if (v16)
  {
    v50 = v14;
    sub_26BE59BD8(v59, v51);
    v51[0] = MEMORY[0x277D84F90];

    sub_26BECBA74(0, v16, 0);
    v17 = v51[0];
    v18 = *(v51[0] + 16);
    v19 = 32;
    do
    {
      v20 = *(v15 + v19);
      v51[0] = v17;
      v21 = *(v17 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_26BECBA74((v21 > 1), v18 + 1, 1);
        v17 = v51[0];
      }

      *(v17 + 16) = v18 + 1;
      *(v17 + 4 * v18 + 32) = v20;
      v19 += 4;
      ++v18;
      --v16;
    }

    while (v16);

    v14 = v50;
  }

  else
  {
    sub_26BE59BD8(v59, v51);
    v17 = MEMORY[0x277D84F90];
  }

  v10 = &v56;
  v24 = v77;
  MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(&v55, v17);
  if (v24)
  {
    sub_26BE13854(v59);
    sub_26BE13854(v59);

    return v10;
  }

  v27 = v25;
  v28 = v26;

  v56 = xmmword_26C00BBD0;
  v57 = 0;
  v51[0] = v47;
  v51[1] = v48;
  v51[2] = v49;
  v52 = v14;
  v53 = v27;
  v54 = v28;
  sub_26BE00608(v47, v48);
  sub_26BE00608(v49, v14);
  sub_26BE00608(v27, v28);
  sub_26BFEA76C(v51);
  v29 = v56;
  v30 = *(&v56 + 1) >> 62;
  v77 = 0;
  if ((*(&v56 + 1) >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_22;
    }

    v31 = *(v56 + 24);
  }

  else
  {
    if (!v30)
    {
      goto LABEL_22;
    }

    v31 = v56 >> 32;
  }

  if (v31 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v32 = sub_26C00909C();
  v34 = v33;
  result = sub_26BE00258(v29, *(&v29 + 1));
  if ((v46 - 3) >= 0xFFFFFFFE)
  {
    LOBYTE(v56) = v46 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v56, v51);
    v46 = v53;
    v35 = *(v53 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash);
    v50 = v14;
    if (v35)
    {
      v52 = sub_26C00A33C();
      v53 = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560]);
      __swift_allocate_boxed_opaque_existential_1(v51);
      sub_26C00A32C();
    }

    else
    {
      v52 = sub_26C00A30C();
      v53 = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540]);
      __swift_allocate_boxed_opaque_existential_1(v51);
      sub_26C00A2FC();
    }

    *&v56 = v32;
    *(&v56 + 1) = v34;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v45 = v32;
    sub_26BE016A8();
    sub_26C009BEC();
    __swift_project_boxed_opaque_existential_1(v51, v52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v44[0] = v34;
    v44[1] = v44;
    v37 = *(AssociatedTypeWitness - 1);
    v38 = *(v37 + 64);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v40 = v44 - v39;
    sub_26C009BDC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v42);
    (*(v37 + 8))(v40, AssociatedTypeWitness);
    v10 = sub_26BE12418(v43);

    sub_26BE00258(v27, v28);

    sub_26BE00258(v45, v44[0]);
    sub_26BE00258(v47, v48);
    sub_26BE00258(v49, v50);
    sub_26BE00258(v27, v28);
    sub_26BE13854(v59);
    sub_26BE13854(v59);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE4F210(int *a1, uint64_t a2, unint64_t a3)
{
  v127 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  LOWORD(__dst) = *v3;
  *(&__dst + 1) = v8;
  LODWORD(v119) = v9;
  *(&v119 + 1) = v10;
  LODWORD(v109) = v7;
  sub_26BE4B650(&v109);
  if (!v4)
  {
    v15 = v11;
    v90 = *(v11 + 16);
    if (!v90)
    {
LABEL_129:

      v12 = 0;
      goto LABEL_2;
    }

    v16 = a3;
    v17 = 0;
    v94 = v9 - 1;
    v95 = v9 == 0;
    v93 = 2 * (v9 - 1);
    v91 = v10;
    v92 = v10 + 32;
    if (a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16 == 0xC000000000000000;
    }

    v19 = !v18;
    v89 = v19;
    v20 = v16 >> 62;
    v21 = __OFSUB__(HIDWORD(a2), a2);
    v86 = v21;
    v85 = HIDWORD(a2) - a2;
    v87 = v16;
    v88 = BYTE6(v16);
    v22 = *(v11 + 16);
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
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
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
      }

      if (v95)
      {
        goto LABEL_133;
      }

      if (v94 < 0)
      {
        goto LABEL_134;
      }

      v23 = *(v15 + 4 * v17 + 32);
      if (v23 > v93)
      {
        goto LABEL_130;
      }

      if (*(v10 + 16) <= v23)
      {
        goto LABEL_130;
      }

      v24 = (v92 + 136 * v23);
      v109 = *v24;
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[4];
      v112 = v24[3];
      v113 = v27;
      v110 = v25;
      v111 = v26;
      v28 = v24[5];
      v29 = v24[6];
      v30 = v24[7];
      v117 = *(v24 + 16);
      v115 = v29;
      v116 = v30;
      v114 = v28;
      memmove(&__dst, v24, 0x88uLL);
      if (sub_26BE58C10(&__dst) == 1)
      {
LABEL_130:

        sub_26BE01654();
        swift_allocError();
        *v76 = 30;
        *(v76 + 8) = 0u;
        *(v76 + 24) = 0u;
        *(v76 + 40) = 0u;
        *(v76 + 56) = 0u;
        *(v76 + 72) = 0u;
        *(v76 + 88) = 0u;
        *(v76 + 104) = 0;
        *(v76 + 112) = 23;
        swift_willThrow();
        goto LABEL_2;
      }

      v31 = v20;
      v107[6] = v124;
      v107[7] = v125;
      v108 = v126;
      v107[2] = v120;
      v107[3] = v121;
      v107[4] = v122;
      v107[5] = v123;
      v107[0] = __dst;
      v107[1] = v119;
      v32 = sub_26BE592C4(v107);
      v33 = sub_26BE13A3C(v107);
      if (v32 != 1)
      {
        v20 = v31;
        if (!*(v33 + 104) || *(v33 + 104) != 1)
        {
          goto LABEL_16;
        }

        v40 = *(v33 + 88);
        v41 = *(v33 + 96);
        v42 = v41 >> 62;
        if (v41 >> 62 == 3)
        {
          if (v40)
          {
            v43 = 0;
          }

          else
          {
            v43 = v41 == 0xC000000000000000;
          }

          v45 = !v43 || v31 < 3;
          if (((v45 | v89) & 1) == 0)
          {
LABEL_131:

            v12 = 1;
            goto LABEL_2;
          }

LABEL_93:
          v56 = 0;
          if (v31 > 1)
          {
            goto LABEL_94;
          }

LABEL_90:
          v65 = v88;
          if (v31)
          {
            v65 = v85;
            if (v86)
            {
              goto LABEL_141;
            }
          }

LABEL_96:
          if (v56 != v65)
          {
            goto LABEL_128;
          }

          if (v56 < 1)
          {
            goto LABEL_131;
          }

          if (v42 > 1)
          {
            if (v42 != 2)
            {
              *&v97[6] = 0;
              *v97 = 0;
              sub_26BE2E1F0(&v109, &v98, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE5A15C(v40, v41, 1);
              sub_26BE567B0(v97, a2, v87, &v98);
              sub_26BE5A170(v40, v41, 1);
              goto LABEL_120;
            }

            v84 = a2;
            v68 = *(v40 + 16);
            v82 = *(v40 + 24);
            sub_26BE2E1F0(&v109, &v98, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE5A15C(v40, v41, 1);
            v69 = sub_26C008E9C();
            if (v69)
            {
              v77 = v68;
              v70 = v69;
              v71 = sub_26C008ECC();
              v72 = v77;
              if (__OFSUB__(v77, v71))
              {
                goto LABEL_149;
              }

              v79 = v77 - v71 + v70;
              v73 = v82;
            }

            else
            {
              v79 = 0;
              v73 = v82;
              v72 = v68;
            }

            if (__OFSUB__(v73, v72))
            {
              goto LABEL_148;
            }
          }

          else
          {
            if (!v42)
            {
              *v97 = *(v33 + 88);
              *&v97[8] = v41;
              v97[10] = BYTE2(v41);
              v97[11] = BYTE3(v41);
              v97[12] = BYTE4(v41);
              v97[13] = BYTE5(v41);
              sub_26BE2E1F0(&v109, &v98, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE5A15C(v40, v41, 1);
              v20 = v31;
              sub_26BE567B0(v97, a2, v87, &v98);
              sub_26BE5A170(v40, v41, 1);
LABEL_120:
              sub_26BE2E258(&v109, &qword_28045E4C8, &unk_26C0112A0);
              if (v98)
              {
                goto LABEL_131;
              }

LABEL_128:
              v22 = v90;
              v10 = v91;
              goto LABEL_16;
            }

            v84 = a2;
            if (v40 >> 32 < v40)
            {
              goto LABEL_147;
            }

            sub_26BE2E1F0(&v109, &v98, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE5A15C(v40, v41, 1);
            v74 = sub_26C008E9C();
            if (v74)
            {
              v80 = v74;
              v75 = sub_26C008ECC();
              if (__OFSUB__(v40, v75))
              {
                goto LABEL_150;
              }

              v79 = v40 - v75 + v80;
            }

            else
            {
              v79 = 0;
            }
          }

          sub_26C008EBC();
          a2 = v84;
          sub_26BE567B0(v79, v84, v87, &v98);
          sub_26BE5A170(v40, v41, 1);
          sub_26BE2E258(&v109, &qword_28045E4C8, &unk_26C0112A0);
          v20 = v31;
          if (v98)
          {
            goto LABEL_131;
          }

          goto LABEL_128;
        }

        if (v42 <= 1)
        {
          if (v42)
          {
            LODWORD(v56) = HIDWORD(v40) - v40;
            if (__OFSUB__(HIDWORD(v40), v40))
            {
              goto LABEL_146;
            }

            v56 = v56;
            if (v31 > 1)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v56 = BYTE6(v41);
            if (v31 > 1)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_90;
        }

        if (v42 != 2)
        {
          goto LABEL_93;
        }

        v64 = *(v40 + 16);
        v63 = *(v40 + 24);
        v49 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        if (v49)
        {
          goto LABEL_145;
        }

        if (v31 <= 1)
        {
          goto LABEL_90;
        }

LABEL_94:
        if (v31 == 2)
        {
          v67 = *(a2 + 16);
          v66 = *(a2 + 24);
          v49 = __OFSUB__(v66, v67);
          v65 = v66 - v67;
          if (v49)
          {
            goto LABEL_142;
          }

          goto LABEL_96;
        }

        if (!v56)
        {
          goto LABEL_131;
        }

        goto LABEL_128;
      }

      v34 = *(v33 + 16);
      v35 = *(v33 + 24);
      v36 = v35 >> 62;
      v20 = v31;
      if (v35 >> 62 == 3)
      {
        break;
      }

      if (v36 > 1)
      {
        if (v36 != 2)
        {
          goto LABEL_60;
        }

        v48 = *(v34 + 16);
        v47 = *(v34 + 24);
        v49 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (v49)
        {
          goto LABEL_138;
        }

        if (v31 <= 1)
        {
          goto LABEL_57;
        }
      }

      else if (v36)
      {
        LODWORD(v46) = HIDWORD(v34) - v34;
        if (__OFSUB__(HIDWORD(v34), v34))
        {
          goto LABEL_137;
        }

        v46 = v46;
        if (v31 <= 1)
        {
LABEL_57:
          v50 = v88;
          if (v31)
          {
            v50 = v85;
            if (v86)
            {
              goto LABEL_135;
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        v46 = BYTE6(v35);
        if (v31 <= 1)
        {
          goto LABEL_57;
        }
      }

LABEL_61:
      if (v31 != 2)
      {
        if (!v46)
        {
          goto LABEL_131;
        }

        goto LABEL_15;
      }

      v52 = *(a2 + 16);
      v51 = *(a2 + 24);
      v49 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (v49)
      {
        goto LABEL_136;
      }

LABEL_63:
      if (v46 == v50)
      {
        if (v46 < 1)
        {
          goto LABEL_131;
        }

        if (v36 > 1)
        {
          if (v36 == 2)
          {
            v78 = *(v34 + 24);
            v81 = *(v34 + 16);
            v104 = v115;
            v105 = v116;
            v106 = v117;
            v98 = v109;
            v99 = v110;
            v100 = v111;
            v101 = v112;
            v102 = v113;
            v103 = v114;
            sub_26BE59BD8(&v98, v97);
            v53 = sub_26C008E9C();
            if (v53)
            {
              v54 = sub_26C008ECC();
              v55 = v81;
              if (__OFSUB__(v81, v54))
              {
                goto LABEL_143;
              }

              v53 += v81 - v54;
            }

            else
            {
              v55 = v81;
            }

            if (__OFSUB__(v78, v55))
            {
              goto LABEL_140;
            }

            sub_26C008EBC();
            v61 = v53;
            v60 = a2;
            v62 = v87;
            goto LABEL_113;
          }

          memset(v96, 0, 14);
          v104 = v115;
          v105 = v116;
          v106 = v117;
          v100 = v111;
          v101 = v112;
          v102 = v113;
          v103 = v114;
          v98 = v109;
          v99 = v110;
          sub_26BE59BD8(&v98, v97);
        }

        else
        {
          if (v36)
          {
            v83 = a2;
            v57 = v34;
            if (v34 >> 32 < v34)
            {
              goto LABEL_139;
            }

            v104 = v115;
            v105 = v116;
            v106 = v117;
            v100 = v111;
            v101 = v112;
            v102 = v113;
            v103 = v114;
            v98 = v109;
            v99 = v110;
            sub_26BE59BD8(&v98, v97);
            v58 = sub_26C008E9C();
            if (v58)
            {
              v59 = sub_26C008ECC();
              if (__OFSUB__(v57, v59))
              {
                goto LABEL_144;
              }

              v58 += v57 - v59;
            }

            sub_26C008EBC();
            v60 = v83;
            v61 = v58;
            v62 = v87;
            a2 = v83;
LABEL_113:
            sub_26BE567B0(v61, v60, v62, v97);
            sub_26BE2E258(&v109, &qword_28045E4C8, &unk_26C0112A0);
            v22 = v90;
            v20 = v31;
            if (v97[0])
            {
              goto LABEL_131;
            }

            goto LABEL_15;
          }

          v96[0] = *(v33 + 16);
          LOWORD(v96[1]) = v35;
          BYTE2(v96[1]) = BYTE2(v35);
          BYTE3(v96[1]) = BYTE3(v35);
          BYTE4(v96[1]) = BYTE4(v35);
          BYTE5(v96[1]) = BYTE5(v35);
          v100 = v111;
          v101 = v112;
          v98 = v109;
          v99 = v110;
          v106 = v117;
          v104 = v115;
          v105 = v116;
          v102 = v113;
          v103 = v114;
          sub_26BE59BD8(&v98, v97);
          v20 = v31;
        }

        sub_26BE567B0(v96, a2, v87, v97);
        sub_26BE2E258(&v109, &qword_28045E4C8, &unk_26C0112A0);
        if (v97[0])
        {
          goto LABEL_131;
        }
      }

LABEL_15:
      v10 = v91;
LABEL_16:
      if (v22 == ++v17)
      {
        goto LABEL_129;
      }
    }

    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35 == 0xC000000000000000;
    }

    v39 = !v37 || v31 < 3;
    if (((v39 | v89) & 1) == 0)
    {
      goto LABEL_131;
    }

LABEL_60:
    v46 = 0;
    if (v31 <= 1)
    {
      goto LABEL_57;
    }

    goto LABEL_61;
  }

LABEL_2:
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}