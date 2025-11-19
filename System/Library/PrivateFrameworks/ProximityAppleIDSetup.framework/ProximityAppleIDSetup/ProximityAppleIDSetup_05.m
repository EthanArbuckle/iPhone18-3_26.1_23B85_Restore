uint64_t sub_26100E3A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2610BD514();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x2666F7E40](0);
      return sub_2610BD574();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x2666F7E40](v4);
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t Route.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = 0x74736163696E75;
  if (v3 == 1)
  {
    v4 = *v0;
    v5 = *(v0 + 8);
  }

  if (*(v0 + 16))
  {
    v6 = v4;
  }

  else
  {
    v6 = *v0;
  }

  if (!*(v0 + 16))
  {
    v7 = *(v0 + 8);
  }

  sub_26100A354(v1, v2, v3);
  return v6;
}

uint64_t sub_26100E484()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = 0x74736163696E75;
  if (v3 == 1)
  {
    v4 = *v0;
    v5 = *(v0 + 8);
  }

  if (*(v0 + 16))
  {
    v6 = v4;
  }

  else
  {
    v6 = *v0;
  }

  if (!*(v0 + 16))
  {
    v7 = *(v0 + 8);
  }

  sub_26100A354(v1, v2, v3);
  return v6;
}

uint64_t _s21ProximityAppleIDSetup5RouteO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_2610BD384();
        sub_26100A354(v6, v5, 0);
        sub_26100A354(v3, v2, 0);
        sub_26100A36C(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_26100A354(v14, v2, 0);
      sub_26100A354(v3, v2, 0);
      sub_26100A36C(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_2610BD384();
        sub_26100A354(v6, v5, 1u);
        sub_26100A354(v3, v2, 1u);
        sub_26100A36C(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_26100A36C(v11, v12, v13);
        return v10 & 1;
      }

      sub_26100A354(v8, v2, 1u);
      sub_26100A354(v3, v2, 1u);
      sub_26100A36C(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_26100A354(*a2, *(a2 + 8), v7);
    sub_26100A354(v3, v2, v4);
    sub_26100A36C(v3, v2, v4);
    sub_26100A36C(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_26100A36C(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_26100A36C(v18, v19, v20);
  return 1;
}

unint64_t sub_26100E6F8()
{
  result = qword_27FE652E0;
  if (!qword_27FE652E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652E0);
  }

  return result;
}

unint64_t sub_26100E74C()
{
  result = qword_27FE652E8;
  if (!qword_27FE652E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652E8);
  }

  return result;
}

unint64_t sub_26100E7A0()
{
  result = qword_27FE652F0;
  if (!qword_27FE652F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652F0);
  }

  return result;
}

unint64_t sub_26100E7F4()
{
  result = qword_27FE652F8;
  if (!qword_27FE652F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652F8);
  }

  return result;
}

unint64_t sub_26100E848(void *a1)
{
  a1[1] = sub_26100E880();
  a1[2] = sub_26100E8D4();
  result = sub_26100E928();
  a1[3] = result;
  return result;
}

unint64_t sub_26100E880()
{
  result = qword_27FE65320;
  if (!qword_27FE65320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65320);
  }

  return result;
}

unint64_t sub_26100E8D4()
{
  result = qword_27FE65328;
  if (!qword_27FE65328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65328);
  }

  return result;
}

unint64_t sub_26100E928()
{
  result = qword_27FE65330;
  if (!qword_27FE65330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65330);
  }

  return result;
}

unint64_t sub_26100E980()
{
  result = qword_27FE65338;
  if (!qword_27FE65338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65338);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup5RouteO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_26100E9F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_26100EA5C()
{
  result = qword_27FE65340;
  if (!qword_27FE65340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65340);
  }

  return result;
}

unint64_t sub_26100EAB4()
{
  result = qword_27FE65348;
  if (!qword_27FE65348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65348);
  }

  return result;
}

unint64_t sub_26100EB0C()
{
  result = qword_27FE65350;
  if (!qword_27FE65350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65350);
  }

  return result;
}

unint64_t sub_26100EB64()
{
  result = qword_27FE65358;
  if (!qword_27FE65358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65358);
  }

  return result;
}

unint64_t sub_26100EBBC()
{
  result = qword_27FE65360;
  if (!qword_27FE65360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65360);
  }

  return result;
}

unint64_t sub_26100EC14()
{
  result = qword_27FE65368;
  if (!qword_27FE65368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65368);
  }

  return result;
}

unint64_t sub_26100EC6C()
{
  result = qword_27FE65370;
  if (!qword_27FE65370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65370);
  }

  return result;
}

unint64_t sub_26100ECC4()
{
  result = qword_27FE65378;
  if (!qword_27FE65378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65378);
  }

  return result;
}

unint64_t sub_26100ED1C()
{
  result = qword_27FE65380;
  if (!qword_27FE65380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65380);
  }

  return result;
}

unint64_t sub_26100ED74()
{
  result = qword_27FE65388;
  if (!qword_27FE65388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65388);
  }

  return result;
}

unint64_t sub_26100EDCC()
{
  result = qword_27FE65390;
  if (!qword_27FE65390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65390);
  }

  return result;
}

uint64_t sub_26100EE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736163696E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

ProximityAppleIDSetup::PASFlowStepProxiedAuthError_optional __swiftcall PASFlowStepProxiedAuthError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2610BD154();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PASFlowStepProxiedAuthError.rawValue.getter()
{
  v1 = 0x6569786F72506F6ELL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_26100F00C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF65636976654464;
  v3 = 0xD000000000000010;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6569786F72506F6ELL;
  }

  if (v4 == 1)
  {
    v6 = 0x80000002610D1970;
  }

  else
  {
    v6 = 0xEF65636976654464;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002610D1950;
  }

  if (*a2 == 1)
  {
    v2 = 0x80000002610D1970;
  }

  else
  {
    v3 = 0x6569786F72506F6ELL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002610D1950;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26100F0F4()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26100F1B0()
{
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_26100F258()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

void sub_26100F31C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65636976654464;
  v4 = 0x6569786F72506F6ELL;
  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000002610D1970;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000002610D1950;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_26100F394()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B4218(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_26100F45C(uint64_t a1)
{
  v2 = sub_2610113A8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26100F498(uint64_t a1)
{
  v2 = sub_2610113A8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepProxiedAuth.targetDeviceKey.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PASFlowStepProxiedAuth.accountFirstName.getter()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount) + 16) firstName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2610BCA04();

  return v3;
}

uint64_t PASFlowStepProxiedAuth.accountUsername.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount);
  v2 = objc_opt_self();
  v3 = [*(v1 + 16) appleID];
  v4 = [v2 formattedUsernameFromUsername_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2610BCA04();

  return v5;
}

uint64_t sub_26100F67C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__anisetteDataProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA0E88();
    v4 = *(v1 + 16);
    *(v1 + 16) = v2;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26100F748(void *a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + *a1);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    v5 = *(v4 + 24);
    v6 = *(v4 + 16);
  }

  else
  {
    v7 = qword_27FE637E0;

    if (v7 != -1)
    {
      swift_once();
    }

    v6 = a2();
    v8 = *(v4 + 16);
    *(v4 + 16) = v6;
    *(v4 + 24) = v9;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v6;
}

uint64_t sub_26100F824@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__accountStore);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  swift_endAccess();
}

uint64_t PASFlowStepProxiedAuth.__allocating_init(delegate:targetAccount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_261011064(a1, a2, a3);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t PASFlowStepProxiedAuth.init(delegate:targetAccount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_261011064(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t PASFlowStepProxiedAuth.prepareForPresentation()()
{
  v1[29] = v0;
  v1[30] = sub_2610BCC74();
  v1[31] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[32] = v2;
  *v2 = v1;
  v2[1] = sub_26100FAA8;

  return sub_26104582C();
}

uint64_t sub_26100FAA8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 248);
  v6 = *(*v1 + 240);
  v11 = *v1;
  v3[33] = v2;

  v8 = sub_2610BCBF4();
  v3[34] = v8;
  v3[35] = v7;
  if (v2)
  {
    v9 = sub_261010380;
  }

  else
  {
    v9 = sub_26100FC08;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26100FC08()
{
  v1 = v0[29];
  sub_26100F748(&OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__deviceProvider, sub_260F9D764);
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 8))(ObjectType, v3);
  swift_unknownObjectRelease();
  v5 = v0[5];
  if (v5)
  {
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v6 + 8))(v5, v6);
    v7 = v0[20];
    v8 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v5 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  else
  {
    sub_260FA9980((v0 + 2), &qword_27FE63858, &unk_2610BE900);
    v9 = 0;
  }

  v11 = (v0[29] + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey);
  swift_beginAccess();
  v12 = v11[1];
  *v11 = v9;
  v11[1] = v5;

  v13 = sub_26100F748(&OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__sourceAppleIDExchanger, sub_260F9F58C);
  v15 = v14;
  v0[36] = v13;
  v16 = swift_getObjectType();
  v17 = *(v15 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[37] = v19;
  *v19 = v0;
  v19[1] = sub_26100FE7C;

  return v21(v16, v15);
}

uint64_t sub_26100FE7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = v4[34];
    v8 = v4[35];
    v9 = sub_2610103E4;
  }

  else
  {
    v10 = v4[36];
    swift_unknownObjectRelease();
    v4[39] = a1;
    v7 = v4[34];
    v8 = v4[35];
    v9 = sub_26100FFAC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26100FFAC()
{
  v1 = v0[29];
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice);
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice) = v0[39];

  sub_26100F824((v0 + 12));
  v3 = v0[15];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[40] = v7;
  *v7 = v0;
  v7[1] = sub_2610100F4;

  return v9(v3, v4);
}

uint64_t sub_2610100F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v7 = *(v3 + 280);
  v8 = *(v3 + 272);
  if (v1)
  {
    v9 = sub_2610105C8;
  }

  else
  {
    v9 = sub_261010238;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_261010238()
{
  v1 = v0[41];
  v2 = v0[31];

  if (v1)
  {
    v3 = v0[41];
    v1 = type metadata accessor for PASAccountWithImage();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = xmmword_2610BF320;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    v5 = sub_2610115FC(&unk_27FE65010, type metadata accessor for PASAccountWithImage);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    v4 = 0;
    v5 = 0;
    v0[8] = 0;
    v0[9] = 0;
  }

  v6 = v0[29];
  v0[7] = v4;
  v0[10] = v1;
  v0[11] = v5;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount;
  swift_beginAccess();
  sub_260FC3844((v0 + 7), v6 + v7, &unk_27FE656B0, &unk_2610BFCE0);
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

uint64_t sub_261010380()
{
  v1 = v0[31];

  v2 = v0[1];
  v3 = v0[33];

  return v2();
}

uint64_t sub_2610103E4()
{
  v17 = v0;
  v1 = v0[36];
  v2 = v0[31];

  swift_unknownObjectRelease();
  v3 = v0[38];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = v3;
  v6 = sub_2610BC794();
  v7 = sub_2610BCD64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[28] = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepProxiedAuth prepareForPresentation failed:\n%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2610105C8()
{
  v16 = v0;
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v2 = v0[42];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = v2;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v0[28] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepProxiedAuth prepareForPresentation failed:\n%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t PASFlowStepProxiedAuth.configureContext(_:)(void *a1)
{
  v3 = [*(*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount) + 16) appleID];
  if (!v3)
  {
    sub_2610112C4();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  v4 = v3;
  sub_2610BCA04();

  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount;
  swift_beginAccess();
  sub_260FA9918(v1 + v5, &v17, &unk_27FE656B0, &unk_2610BFCE0);
  if (!v18)
  {

    sub_260FA9980(&v17, &unk_27FE656B0, &unk_2610BFCE0);
    sub_2610112C4();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  sub_260F98E14(&v17, v19);
  v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice);
  if (v6)
  {
    v7 = v6;
    [v7 setLinkType_];
    [a1 setAuthenticationType_];
    v8 = sub_2610BC9D4();

    [a1 setUsername_];

    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v10 + 24))(v9, v10);
    if (v11)
    {
      v12 = sub_2610BC9D4();
    }

    else
    {
      v12 = 0;
    }

    [a1 setAltDSID_];

    if (qword_27FE637F0 != -1)
    {
      swift_once();
    }

    [a1 setAppProvidedContext_];
    [a1 setProxiedDevice_];
    [a1 setAnisetteDataProvider_];
    swift_unknownObjectRelease();
    [a1 setIsUsernameEditable_];
    [a1 setServiceType_];
  }

  else
  {

    sub_2610112C4();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

void PASFlowStepProxiedAuth.handleAuthResults(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults);
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults) = *a1;

  sub_2610439BC();
}

uint64_t PASFlowStepProxiedAuth.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults);
  if (v1)
  {
    v2 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 8);
    v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount);
    v6 = type metadata accessor for PASFlowStepProxiedTerms();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();

    v10 = sub_261010EC0(Strong, v4, v5, v1, v9);
    swift_unknownObjectRelease();
    sub_2610115FC(&qword_27FE653D0, type metadata accessor for PASFlowStepProxiedTerms);
  }

  else
  {
    v10 = 0x80000002610D3EC0;
    sub_260FC3450();
    swift_allocError();
    *v11 = 0xD000000000000029;
    *(v11 + 8) = 0x80000002610D3EC0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_261010CA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__authenticator);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__deviceProvider);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__anisetteDataProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__sourceAppleIDExchanger);

  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__accountStore);

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount, &unk_27FE656B0, &unk_2610BFCE0);
  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults);
}

uint64_t PASFlowStepProxiedAuth.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__authenticator);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__deviceProvider);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__anisetteDataProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__sourceAppleIDExchanger);

  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__accountStore);

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount, &unk_27FE656B0, &unk_2610BFCE0);
  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults);

  return v0;
}

uint64_t PASFlowStepProxiedAuth.__deallocating_deinit()
{
  v0 = PASFlowStepProxiedAuth.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_261010EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = type metadata accessor for PASFamilyMember();
  v20[4] = sub_2610115FC(&unk_27FE64210, type metadata accessor for PASFamilyMember);
  v20[0] = a3;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__anisetteProvisioningController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a5 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__sourceAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(a5 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(a5 + v14) = v15;
  *(a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics) = 0;
  v16 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result;
  *v16 = 0;
  *(v16 + 8) = -1;
  v17 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_260FA99E0(v20, a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account);
  *(a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_proxiedAuthResults) = a4;
  v18 = sub_26104DC44(a1, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  return v18;
}

uint64_t sub_261011064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v3 + v8) = v9;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v3 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v3 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__sourceAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v3 + v14) = v15;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v3 + v16) = v17;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice) = 0;
  v18 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults) = 0;
  if (!a1)
  {
    v19 = v3;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v20 = sub_2610BC7B4();
    __swift_project_value_buffer(v20, qword_27FE65900);
    v21 = sub_2610BC794();
    v22 = sub_2610BCD74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_260F97000, v21, v22, "PASFlowStepProxiedAuth delegate is nil in init", v23, 2u);
      MEMORY[0x2666F8720](v23, -1, -1);
    }

    v3 = v19;
  }

  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount) = a3;

  return sub_26104DC44(a1, a2);
}

unint64_t sub_2610112C4()
{
  result = qword_27FE653B8;
  if (!qword_27FE653B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE653B8);
  }

  return result;
}

unint64_t sub_26101131C()
{
  result = qword_27FE65400;
  if (!qword_27FE65400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65400);
  }

  return result;
}

unint64_t sub_261011370(void *a1)
{
  a1[1] = sub_2610113A8();
  a1[2] = sub_2610113FC();
  result = sub_261011450();
  a1[3] = result;
  return result;
}

unint64_t sub_2610113A8()
{
  result = qword_27FE65408;
  if (!qword_27FE65408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65408);
  }

  return result;
}

unint64_t sub_2610113FC()
{
  result = qword_27FE65410;
  if (!qword_27FE65410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65410);
  }

  return result;
}

unint64_t sub_261011450()
{
  result = qword_27FE65418;
  if (!qword_27FE65418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65418);
  }

  return result;
}

uint64_t sub_2610114A4(uint64_t a1)
{
  result = sub_2610115FC(&unk_27FE65420, type metadata accessor for PASFlowStepProxiedAuth);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepProxiedAuth()
{
  result = qword_27FE65430;
  if (!qword_27FE65430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2610115FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261011658(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "noMessageSession";
  v4 = 0xD000000000000021;
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v2 == 1)
  {
    v6 = "noMessageSession";
  }

  else
  {
    v6 = "essageSessionType";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "essageSessionType";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_261011730()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610117CC()
{
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_261011854()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610118EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261013484();
  *a2 = result;
  return result;
}

void sub_26101191C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "noMessageSession";
  v4 = 0xD000000000000021;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "essageSessionType";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_261011978()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B4558(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_261011A40(uint64_t a1)
{
  v2 = sub_261013330();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261011A7C(uint64_t a1)
{
  v2 = sub_261013330();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261011AB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t PASMessageSessionProvider.messageSessionStatusPublisher.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t PASMessageSessionProvider.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASMessageSessionProvider deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  PASMessageSessionProvider.endMessageSession()();
  sub_260FA9980(v1 + 16, &unk_27FE668E0, &qword_2610C8230);
  sub_260FA9980(v1 + 56, &qword_27FE63D08, &unk_2610C65B0);
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASMessageSessionProvider__messageSessionStatus;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

Swift::Void __swiftcall PASMessageSessionProvider.endMessageSession()()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASMessageSessionProvider endMessageSession", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = v1[10];
  if (v6)
  {
    v7 = *__swift_project_boxed_opaque_existential_1(v1 + 7, v6);
    sub_260FFFF1C();
  }

  swift_beginAccess();
  if (v1[5])
  {
    sub_260FA99E0((v1 + 2), &v10);
    v8 = *(&v11 + 1);
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_2610127FC(&v10, (v1 + 2));
  swift_endAccess();
}

uint64_t PASMessageSessionProvider.__deallocating_deinit()
{
  PASMessageSessionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t PASMessageSessionProvider.getMessageSession()@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_26101286C(v1 + 16, &v9);
  if (v10)
  {
    return sub_260F98E14(&v9, a1);
  }

  sub_260FA9980(&v9, &unk_27FE668E0, &qword_2610C8230);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_260F97000, v5, v6, "PASMessageSessionProvider has no message session", v7, 2u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  sub_2610128DC();
  swift_allocError();
  *v8 = 0;
  return swift_willThrow();
}

void PASMessageSessionProvider.setMessageSession(fromTemplate:)(uint64_t a1)
{
  sub_260FA99E0(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64008, &unk_2610BF9A0);
  sub_261012930();
  if (swift_dynamicCast())
  {
    v2 = v8;
    v3 = [objc_allocWithZone(MEMORY[0x277D02880]) initWithTemplate_];
    if (v3)
    {
      v4 = v3;
      sub_26101297C(v3, v1);
    }

    else
    {
      sub_2610128DC();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_2610128DC();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }
}

uint64_t PASMessageSessionProvider.setMessageSession(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_261012BC0(v4, v1, v2, v3);
}

uint64_t sub_2610121CC()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_261012244(uint64_t a1)
{
  v3 = *v1;
  PASMessageSessionProvider.getMessageSession()(a1);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2610122C4(uint64_t a1)
{
  v3 = *v1;
  PASMessageSessionProvider.setMessageSession(fromTemplate:)(a1);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_261012340(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_261012BC0(v6, v3, v4, v5);
  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_2610123E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASMessageSessionProvider heartbeatDidFail", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v10 = sub_2610BCC94();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_2610BCC74();

  v11 = sub_2610BCC64();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v1;
  sub_261042434(0, 0, v5, &unk_2610C68A0, v12);
}

uint64_t sub_2610125C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2610BCC74();
  *(v4 + 24) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101265C, v6, v5);
}

uint64_t sub_26101265C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0;

  sub_2610BC854();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261012708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v5;
  return result;
}

uint64_t sub_261012788(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_2610127FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26101286C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2610128DC()
{
  result = qword_27FE65460;
  if (!qword_27FE65460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65460);
  }

  return result;
}

unint64_t sub_261012930()
{
  result = qword_27FE64010;
  if (!qword_27FE64010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE64010);
  }

  return result;
}

uint64_t sub_26101297C(void *a1, uint64_t a2)
{
  v23[3] = sub_261012930();
  v23[4] = &protocol witness table for CUMessageSession;
  v23[0] = a1;
  swift_beginAccess();
  sub_26101286C(a2 + 16, &v18);
  if (v19)
  {
    sub_260F98E14(&v18, v20);
    swift_beginAccess();
    v4 = *(a2 + 80);
    if (v4)
    {
      v5 = *__swift_project_boxed_opaque_existential_1((a2 + 56), v4);
      v6 = a1;
      sub_260FFFF1C();
    }

    else
    {
      v8 = a1;
    }

    v9 = v21;
    v10 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v10 + 24))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    v7 = a1;
    sub_260FA9980(&v18, &unk_27FE668E0, &qword_2610C8230);
  }

  sub_260FA99E0(v23, v20);
  swift_beginAccess();
  sub_2610127FC(v20, a2 + 16);
  swift_endAccess();
  [a1 activate];
  swift_beginAccess();
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *__swift_project_boxed_opaque_existential_1((a2 + 56), v11);
    sub_260FFFACC();
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v13 = sub_2610BC7B4();
  __swift_project_value_buffer(v13, qword_27FE65900);
  v14 = sub_2610BC794();
  v15 = sub_2610BCD84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_260F97000, v14, v15, "PASMessageSessionProvider did setMessageSession", v16, 2u);
    MEMORY[0x2666F8720](v16, -1, -1);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

uint64_t sub_261012BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[3] = a3;
  v25[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  swift_beginAccess();
  sub_26101286C(a2 + 16, &v20);
  if (v21)
  {
    sub_260F98E14(&v20, v22);
    swift_beginAccess();
    v9 = *(a2 + 80);
    if (v9)
    {
      v10 = *__swift_project_boxed_opaque_existential_1((a2 + 56), v9);
      sub_260FFFF1C();
    }

    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v12 + 24))(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    sub_260FA9980(&v20, &unk_27FE668E0, &qword_2610C8230);
  }

  sub_260FA99E0(v25, v22);
  swift_beginAccess();
  sub_2610127FC(v22, a2 + 16);
  swift_endAccess();
  (*(a4 + 16))(a3, a4);
  swift_beginAccess();
  v13 = *(a2 + 80);
  if (v13)
  {
    v14 = *__swift_project_boxed_opaque_existential_1((a2 + 56), v13);
    sub_260FFFACC();
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v15 = sub_2610BC7B4();
  __swift_project_value_buffer(v15, qword_27FE65900);
  v16 = sub_2610BC794();
  v17 = sub_2610BCD84();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_260F97000, v16, v17, "PASMessageSessionProvider did setMessageSession", v18, 2u);
    MEMORY[0x2666F8720](v18, -1, -1);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

uint64_t dispatch thunk of PASMessageSessionProviderProtocol.getMessageSession()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FB6DB4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASMessageSessionProviderProtocol.setMessageSession(fromTemplate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASMessageSessionProviderProtocol.setMessageSession(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3);
}

uint64_t type metadata accessor for PASMessageSessionProvider()
{
  result = qword_27FE65468;
  if (!qword_27FE65468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261013234()
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2610132F8(void *a1)
{
  a1[1] = sub_261013330();
  a1[2] = sub_261013384();
  result = sub_2610133D8();
  a1[3] = result;
  return result;
}

unint64_t sub_261013330()
{
  result = qword_27FE65478;
  if (!qword_27FE65478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65478);
  }

  return result;
}

unint64_t sub_261013384()
{
  result = qword_27FE65480;
  if (!qword_27FE65480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65480);
  }

  return result;
}

unint64_t sub_2610133D8()
{
  result = qword_27FE65488;
  if (!qword_27FE65488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65488);
  }

  return result;
}

unint64_t sub_261013430()
{
  result = qword_27FE65490;
  if (!qword_27FE65490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65490);
  }

  return result;
}

uint64_t sub_261013484()
{
  v0 = sub_2610BD154();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2610134D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_2610125C4(a1, v4, v5, v6);
}

uint64_t PASDeviceClass.displayNameKey.getter()
{
  v1 = 0x454E4F485049;
  v2 = 1145131081;
  if (*v0 != 2)
  {
    v2 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    v1 = 1146048585;
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

uint64_t sub_2610135F4()
{
  v1 = v0;
  v39[3] = *MEMORY[0x277D85DE8];
  *(v0 + 24) = 0;
  v2 = (v0 + 24);
  v3 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *(v2 - 1) = v3;
  swift_beginAccess();
  v38 = *v2;
  v4 = v38;
  v5 = [v3 canEvaluatePolicy:1 error:&v38];
  v6 = v38;
  *v2 = v38;
  v7 = v6;
  swift_endAccess();

  if (!v7)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v32 = sub_2610BC7B4();
    __swift_project_value_buffer(v32, qword_27FE65900);
    v12 = sub_2610BC794();
    v33 = sub_2610BCD84();
    if (os_log_type_enabled(v12, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67240192;
      *(v34 + 4) = v5;
      _os_log_impl(&dword_260F97000, v12, v33, "PASBiometryEvaluator result: %{BOOL,public}d", v34, 8u);
      MEMORY[0x2666F8720](v34, -1, -1);
    }

    goto LABEL_18;
  }

  v39[0] = v7;
  sub_261018DE4();
  type metadata accessor for LAError(0);
  v8 = v7;
  if ((swift_dynamicCast() & 1) == 0 || (v9 = v38, sub_261018E30(&qword_27FE63DA8, 255, type metadata accessor for LAError), sub_2610BC4B4(), v9, (v37 + 7) > 1))
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v21 = sub_2610BC7B4();
    __swift_project_value_buffer(v21, qword_27FE65900);
    v22 = v8;
    v12 = sub_2610BC794();
    v23 = sub_2610BCD64();

    if (os_log_type_enabled(v12, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[0] = v25;
      *v24 = 136446210;
      v26 = v22;
      v27 = [v26 description];
      v28 = sub_2610BCA04();
      v30 = v29;

      v31 = sub_260FA5970(v28, v30, v39);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_260F97000, v12, v23, "PASBiometryEvaluator failed canEvaluatePolicy\n%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2666F8720](v25, -1, -1);
      MEMORY[0x2666F8720](v24, -1, -1);

      goto LABEL_19;
    }

LABEL_18:
    goto LABEL_19;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  v11 = v8;
  v12 = sub_2610BC794();
  v13 = sub_2610BCD84();

  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_18;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v39[0] = v15;
  *v14 = 136446210;
  v16 = [v11 localizedDescription];
  v17 = sub_2610BCA04();
  v19 = v18;

  v20 = sub_260FA5970(v17, v19, v39);

  *(v14 + 4) = v20;
  _os_log_impl(&dword_260F97000, v12, v13, "PASBiometryEvaluator can't evaulate  - result: %{public}s", v14, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  MEMORY[0x2666F8720](v15, -1, -1);
  MEMORY[0x2666F8720](v14, -1, -1);

LABEL_19:
  v35 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_261013AFC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void (*PASDeviceProvider.targetDevice.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_261013C6C;
}

void (*PASDeviceProvider.$targetDevice.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC814();
  swift_endAccess();
  return sub_261018E7C;
}

uint64_t sub_261013E64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  sub_260FA9918(a1, v14, &qword_27FE63850, qword_2610CC240);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v14, &v13, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(a5, a6, a7);
  return sub_260FA9980(v14, &qword_27FE63850, qword_2610CC240);
}

uint64_t sub_261013F58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(a1, v9, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(a2, a3, a4);
  return sub_260FA9980(a1, &qword_27FE63850, qword_2610CC240);
}

void (*PASDeviceProvider.targetDeviceContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_2610140E0;
}

void sub_2610140FC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 120);
  if (a2)
  {
    sub_260FA9918(*a1, v8 + 40, &qword_27FE63850, qword_2610CC240);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8 + 40, v8 + 80, &qword_27FE63850, qword_2610CC240);

    sub_2610BC854();
    sub_2610151E8(a3, a4, a5);
    sub_260FA9980(v8 + 40, &qword_27FE63850, qword_2610CC240);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8, v8 + 40, &qword_27FE63850, qword_2610CC240);

    sub_2610BC854();
    sub_2610151E8(a3, a4, a5);
  }

  sub_260FA9980(v8, &qword_27FE63850, qword_2610CC240);

  free(v8);
}

uint64_t sub_26101428C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_261014424(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*PASDeviceProvider.$targetDeviceContext.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC814();
  swift_endAccess();
  return sub_261018E7C;
}

uint64_t sub_261014710(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  sub_260FA9918(a1, v14, &qword_27FE63858, &unk_2610BE900);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v14, &v13, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(a5, a6, a7);
  return sub_260FA9980(v14, &qword_27FE63858, &unk_2610BE900);
}

uint64_t sub_261014804(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(a1, v9, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(a2, a3, a4);
  return sub_260FA9980(a1, &qword_27FE63858, &unk_2610BE900);
}

void sub_2610148D0(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);

  oslog = sub_2610BC794();
  v5 = sub_2610BCD54();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63858, &unk_2610BE900);
    v8 = sub_2610BCE54();
    v10 = v9;
    sub_260FA9980(v13, &qword_27FE63858, &unk_2610BE900);
    v11 = sub_260FA5970(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, oslog, v5, a3, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }
}

void (*PASDeviceProvider.sourceDevice.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_261014B98;
}

void sub_261014BB4(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 120);
  if (a2)
  {
    sub_260FA9918(*a1, v8 + 40, &qword_27FE63858, &unk_2610BE900);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8 + 40, v8 + 80, &qword_27FE63858, &unk_2610BE900);

    sub_2610BC854();
    sub_2610148D0(a3, a4, a5);
    sub_260FA9980(v8 + 40, &qword_27FE63858, &unk_2610BE900);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8, v8 + 40, &qword_27FE63858, &unk_2610BE900);

    sub_2610BC854();
    sub_2610148D0(a3, a4, a5);
  }

  sub_260FA9980(v8, &qword_27FE63858, &unk_2610BE900);

  free(v8);
}

uint64_t sub_261014D44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC824();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_261014EDC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC824();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*PASDeviceProvider.$sourceDevice.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC814();
  swift_endAccess();
  return sub_261015184;
}

void sub_2610151E8(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);

  oslog = sub_2610BC794();
  v5 = sub_2610BCD54();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63850, qword_2610CC240);
    v8 = sub_2610BCE54();
    v10 = v9;
    sub_260FA9980(v13, &qword_27FE63850, qword_2610CC240);
    v11 = sub_260FA5970(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, oslog, v5, a3, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }
}

void (*PASDeviceProvider.sourceDeviceContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_2610154B0;
}

void (*PASDeviceProvider.$sourceDeviceContext.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC814();
  swift_endAccess();
  return sub_261018E7C;
}

uint64_t PASDeviceProvider.setTargetDevice(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_260FA9918(a1, v5, &qword_27FE63858, &unk_2610BE900);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(&unk_2610C68F0, &unk_2610C6918, "PASDeviceProvider targetDevice set %{public}s");
  sub_260FA9980(v5, &qword_27FE63858, &unk_2610BE900);
  sub_260FA9918(a2, v5, &qword_27FE63850, qword_2610CC240);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(&unk_2610C6950, &unk_2610C6978, "PASDeviceProvider targetDeviceContext set %{public}s");
  return sub_260FA9980(v5, &qword_27FE63850, qword_2610CC240);
}

uint64_t PASDeviceProvider.setSourceDevice(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_260FA9918(a1, v5, &qword_27FE63858, &unk_2610BE900);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(&unk_2610C69B0, &unk_2610C69D8, "PASDeviceProvider sourceDevice set %{public}s");
  sub_260FA9980(v5, &qword_27FE63858, &unk_2610BE900);
  sub_260FA9918(a2, v5, &qword_27FE63850, qword_2610CC240);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(&unk_2610C69F8, &unk_2610C6A20, "PASDeviceProvider sourceDeviceContext set %{public}s");
  return sub_260FA9980(v5, &qword_27FE63850, qword_2610CC240);
}

uint64_t PASDeviceProvider.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice, v2);
  v6(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext, v5);
  return v0;
}

uint64_t PASDeviceProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice, v2);
  v6(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext, v5);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_261015BB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  v20 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63858, &unk_2610BE900);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63858, &unk_2610BE900);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63858, &unk_2610BE900);
  v19 = *(v7 + 32);
  v12 = v0;
  v19(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63850, qword_2610CC240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63850, qword_2610CC240);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63850, qword_2610CC240);
  v14 = *(v2 + 32);
  v18[1] = v2 + 32;
  v14(v12 + v13, v5, v1);
  v15 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63858, &unk_2610BE900);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63858, &unk_2610BE900);
  v19(v12 + v15, v10, v20);
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63850, qword_2610CC240);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63850, qword_2610CC240);
  v14(v12 + v16, v5, v1);
  return v12;
}

uint64_t sub_261015F4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_261016030(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2610BC814();
  return swift_endAccess();
}

ProximityAppleIDSetup::PASDeviceClass_optional __swiftcall PASDeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2610BD154();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261016118()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610161CC()
{
  *v0;
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_26101626C()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

void sub_261016328(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x454E4F485049;
  v4 = 0xE400000000000000;
  v5 = 1145131081;
  if (*v1 != 2)
  {
    v5 = 0x4E574F4E4B4E55;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1146048585;
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

uint64_t PASDeviceClass.iconName.getter()
{
  v1 = *v0;
  result = *&aIphone_1[8 * v1];
  v3 = qword_2610C7270[v1];
  return result;
}

uint64_t sub_2610163B8()
{
  v1 = 0x454E4F485049;
  v2 = 1145131081;
  if (*v0 != 2)
  {
    v2 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    v1 = 1146048585;
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

uint64_t sub_261016424()
{
  v1 = *v0;
  result = *&aIphone_1[8 * v1];
  v3 = qword_2610C7270[v1];
  return result;
}

id PASDevice.init()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for PASDeviceClass;
  a1[4] = &protocol witness table for PASDeviceClass;
  *a1 = 3;
  if (qword_27FE63800 != -1)
  {
    swift_once();
  }

  v2 = MGGetSInt32Answer();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  a1[3] = &type metadata for PASDeviceClass;
  a1[4] = &protocol witness table for PASDeviceClass;
  v3 = 0x2010003u >> (8 * v2);
  if (v2 >= 4)
  {
    LOBYTE(v3) = 3;
  }

  *a1 = v3;
  type metadata accessor for PASBiometryEvaluator();
  inited = swift_initStackObject();
  sub_2610135F4();
  v5 = [*(inited + 16) biometryType];

  a1[5] = v5;
  result = [objc_opt_self() currentDevice];
  a1[6] = result;
  return result;
}

uint64_t static PASDevice.current.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27FE637F8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_260FA6AE0(qword_27FE65498, v2);
}

uint64_t sub_2610165D8()
{
  result = sub_2610BC9D4();
  qword_27FE80AA0 = result;
  return result;
}

uint64_t sub_261016634()
{
  v1 = 0x797274656D6F6962;
  if (*v0 != 1)
  {
    v1 = 0x63697665645F6B61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C43656369766564;
  }
}

uint64_t sub_2610166AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261018C68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2610166D4(uint64_t a1)
{
  v2 = sub_261016C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261016710(uint64_t a1)
{
  v2 = sub_261016C68();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PASDevice.ak_device.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t PASDevice.init(deviceClass:biometryProvider:ak_device:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = &type metadata for PASDeviceClass;
  a4[4] = &protocol witness table for PASDeviceClass;
  *a4 = 3;
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  a4[3] = &type metadata for PASDeviceClass;
  a4[4] = &protocol witness table for PASDeviceClass;
  v8 = 0x2010003u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v8) = 3;
  }

  *a4 = v8;
  sub_260FA9918(a2, &v15, &qword_27FE65510, &qword_2610C6A40);
  if (v16)
  {
    sub_260F98E14(&v15, v17);
  }

  else
  {
    v9 = type metadata accessor for PASBiometryEvaluator();
    v10 = swift_allocObject();
    sub_2610135F4();
    v18 = v9;
    v19 = &off_2873874F0;
    v17[0] = v10;
    if (v16)
    {
      sub_260FA9980(&v15, &qword_27FE65510, &qword_2610C6A40);
    }
  }

  v11 = v18;
  v12 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v13 = (v12[1])(v11, v12);
  sub_260FA9980(a2, &qword_27FE65510, &qword_2610C6A40);
  a4[5] = v13;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
  a4[6] = a3;
  return result;
}

uint64_t PASDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65518, &qword_2610C6A48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v23[3] = &type metadata for PASDeviceClass;
  v23[4] = &protocol witness table for PASDeviceClass;
  LOBYTE(v23[0]) = 3;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261016C68();
  sub_2610BD5D4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    v19 = v6;
    LOBYTE(v20) = 0;
    sub_2610BD1B4();
    v11 = sub_2610BD154();

    if (v11 >= 4)
    {
      v12 = 3;
    }

    else
    {
      v12 = v11;
    }

    v21 = &type metadata for PASDeviceClass;
    v22 = &protocol witness table for PASDeviceClass;
    LOBYTE(v20) = v12;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    sub_260F98E14(&v20, v23);
    type metadata accessor for LABiometryType(0);
    v24 = 1;
    sub_261018E30(&qword_27FE65528, 255, type metadata accessor for LABiometryType);
    sub_2610BD1E4();
    v23[5] = v20;
    v24 = 2;
    sub_260FE4B78();
    sub_2610BD1E4();
    v13 = v19;
    v14 = v20;
    v18 = v5;
    sub_260FAA188(v20, *(&v20 + 1));
    v15 = sub_2610BC514();
    sub_260FAC46C(v14, *(&v14 + 1));
    v16 = [objc_opt_self() deviceWithSerializedData_];

    sub_260FAC46C(v14, *(&v14 + 1));
    (*(v13 + 8))(v9, v18);
    v23[6] = v16;
    sub_260FA6AE0(v23, a2);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_261016CBC(v23);
  }
}

unint64_t sub_261016C68()
{
  result = qword_27FE65520;
  if (!qword_27FE65520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65520);
  }

  return result;
}

uint64_t PASDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65530, &unk_2610C6A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261016C68();
  sub_2610BD5F4();
  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v11);
  (*(v12 + 8))(v11, v12);
  LOBYTE(v22) = 0;
  sub_2610BD274();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v22 = v3[5];
    v24 = 1;
    type metadata accessor for LABiometryType(0);
    sub_261018E30(&qword_27FE65538, 255, type metadata accessor for LABiometryType);
    sub_2610BD2A4();
    v14 = v3[6];
    if (v14)
    {
      v15 = v14;
      v16 = [v15 serializedData];
      if (v16)
      {
        v17 = v16;
        v18 = sub_2610BC534();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xF000000000000000;
      }

      v22 = v18;
      v23 = v20;
      v24 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FA0, &qword_2610BF500);
      sub_261016FA4();
      sub_2610BD2A4();

      sub_260FAC458(v22, v23);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

unint64_t sub_261016FA4()
{
  result = qword_27FE65540;
  if (!qword_27FE65540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE63FA0, &qword_2610BF500);
    sub_260FE50F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65540);
  }

  return result;
}

uint64_t PASDevice.deviceClassCodeName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t PASDevice.deviceBiometricKey.getter()
{
  v1 = *(v0 + 40);
  v2 = 0x44494843554F54;
  v3 = 0x454D4F49425F4F4ELL;
  if (v1 == 2)
  {
    v3 = 0x444945434146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x454D4F49425F4F4ELL;
  }
}

uint64_t PASDevice.deviceBiometricIconName.getter()
{
  v1 = *(v0 + 40);
  v2 = 0x64696863756F74;
  if (v1 != 1)
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 0x646965636166;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26101715C()
{
  v1 = *(v0 + 40);
  v2 = 0x44494843554F54;
  v3 = 0x454D4F49425F4F4ELL;
  if (v1 == 2)
  {
    v3 = 0x444945434146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x454D4F49425F4F4ELL;
  }
}

uint64_t sub_2610171EC()
{
  v1 = *(v0 + 40);
  v2 = 0x64696863756F74;
  if (v1 != 1)
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 0x646965636166;
  }

  else
  {
    return v2;
  }
}

void *sub_261017230()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t PASDeviceCapability.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static PASDeviceCapability.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27FE654D0 = a1;
}

uint64_t sub_261017468(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_27FE654D0 = v1;
}

void *sub_2610174C0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_2610174CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2610174D8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27FE654D0;
}

uint64_t sub_261017528()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261017574()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2610BCA54();
}

uint64_t sub_26101757C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261017674(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2610BD384();
  }
}

uint64_t sub_2610176B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2610BD514();
  sub_2610BCA54();
  v7 = sub_2610BD574();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2610BD384() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2610177CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2610BD384();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261017858(uint64_t a1)
{
  v2 = sub_261017AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261017894(uint64_t a1)
{
  v2 = sub_261017AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PASDeviceContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PASDeviceContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t PASDeviceContext.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65548, &qword_2610C6A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261017AB8();
  sub_2610BD5F4();
  v11[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65558, &qword_2610C6A68);
  sub_261017B0C(&qword_27FE65560, sub_261017B84);
  sub_2610BD2A4();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_261017AB8()
{
  result = qword_27FE65550;
  if (!qword_27FE65550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65550);
  }

  return result;
}

uint64_t sub_261017B0C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE65558, &qword_2610C6A68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261017B84()
{
  result = qword_27FE65568;
  if (!qword_27FE65568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65568);
  }

  return result;
}

uint64_t PASDeviceContext.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PASDeviceContext.init(from:)(a1);
  return v2;
}

uint64_t *PASDeviceContext.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65570, &qword_2610C6A70);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261017AB8();
  sub_2610BD5D4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65558, &qword_2610C6A68);
    sub_261017B0C(&qword_27FE65578, sub_261017E24);
    sub_2610BD1E4();
    (*(v12 + 8))(v8, v5);
    v1[2] = v13;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

unint64_t sub_261017E24()
{
  result = qword_27FE65580;
  if (!qword_27FE65580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65580);
  }

  return result;
}

uint64_t *sub_261017E8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PASDeviceContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t MGDeviceClass.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_2610BD3C4();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

uint64_t MGDeviceClass.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2610BD3F4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_261018064@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v7 = sub_2610BD3C4();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v7;
  return result;
}

uint64_t sub_261018138(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2610BD3F4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t LABiometryType.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_2610BD3A4();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

uint64_t LABiometryType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2610BD3D4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

unint64_t sub_26101832C()
{
  result = qword_27FE65588;
  if (!qword_27FE65588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65588);
  }

  return result;
}

unint64_t sub_261018384()
{
  result = qword_27FE65590;
  if (!qword_27FE65590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE65598, &qword_2610C6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65590);
  }

  return result;
}

unint64_t sub_2610183EC()
{
  result = qword_27FE655A0;
  if (!qword_27FE655A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655A0);
  }

  return result;
}

uint64_t sub_261018440(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_261018E30(&qword_27FE63FD0, a2, type metadata accessor for PASDeviceContext);
  result = sub_261018E30(&qword_27FE655A8, v3, type metadata accessor for PASDeviceContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2610184E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v7 = sub_2610BD3A4();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v7;
  return result;
}

uint64_t sub_2610185BC(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2610BD3D4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t type metadata accessor for PASDeviceProvider()
{
  result = qword_27FE655B0;
  if (!qword_27FE655B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261018780()
{
  sub_260FC5678(319, &qword_27FE655C0, &qword_27FE63858, &unk_2610BE900);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_260FC5678(319, &qword_27FE655C8, &qword_27FE63850, qword_2610CC240);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_261018930(uint64_t a1, int a2)
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

uint64_t sub_261018978(uint64_t result, int a2, int a3)
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

unint64_t sub_261018A5C()
{
  result = qword_27FE655D0;
  if (!qword_27FE655D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655D0);
  }

  return result;
}

unint64_t sub_261018AB4()
{
  result = qword_27FE655D8;
  if (!qword_27FE655D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655D8);
  }

  return result;
}

unint64_t sub_261018B0C()
{
  result = qword_27FE655E0;
  if (!qword_27FE655E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655E0);
  }

  return result;
}

unint64_t sub_261018B64()
{
  result = qword_27FE655E8;
  if (!qword_27FE655E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655E8);
  }

  return result;
}

unint64_t sub_261018BBC()
{
  result = qword_27FE655F0;
  if (!qword_27FE655F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655F0);
  }

  return result;
}

unint64_t sub_261018C14()
{
  result = qword_27FE655F8;
  if (!qword_27FE655F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655F8);
  }

  return result;
}

uint64_t sub_261018C68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797274656D6F6962 && a2 == 0xEC00000065707954 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63697665645F6B61 && a2 == 0xED00006174614465)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

unint64_t sub_261018D90()
{
  result = qword_27FE65600;
  if (!qword_27FE65600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65600);
  }

  return result;
}

unint64_t sub_261018DE4()
{
  result = qword_27FE668D0;
  if (!qword_27FE668D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE668D0);
  }

  return result;
}

uint64_t sub_261018E30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_261018EB0()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_260FF7C64;

  return sub_2610AF360();
}

uint64_t sub_261018F6C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_261019058;

  return v6();
}

uint64_t sub_261019058(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101918C, 0, 0);
}

uint64_t sub_26101918C()
{
  v1 = v0[5];
  v2 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = type metadata accessor for PASExtensionManifest();
  *v5 = v0;
  v5[1] = sub_2610192D8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x74736566696E616DLL, 0xEA00000000002928, sub_26101CB0C, v3, v6);
}

uint64_t sub_2610192D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_26101945C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2610193F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2610193F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26101945C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2610194C8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65650, &qword_2610C7378);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26101CBD4;
  *(v11 + 24) = v10;
  v12 = a2;

  v13 = sub_26101C33C(sub_26101CBEC, v11);

  aBlock[4] = sub_26101CBD4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101CDF4;
  aBlock[3] = &block_descriptor_79_0;
  v14 = _Block_copy(aBlock);

  [v13 fetchManifestWithCompletion_];
  _Block_release(v14);

  return swift_unknownObjectRelease();
}

uint64_t sub_2610196F0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_261019710, 0, 0);
}

uint64_t sub_261019710()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_2610197FC;

  return v6();
}

uint64_t sub_2610197FC(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261019930, 0, 0);
}

uint64_t sub_261019930()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = type metadata accessor for PASExtensionProvidedViewDetails();
  *v6 = v0;
  v6[1] = sub_261019A88;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000011, 0x80000002610D4310, sub_26101C924, v4, v7);
}

uint64_t sub_261019A88()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_261019C0C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_261019BA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261019BA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261019C0C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261019C78(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65648, &qword_2610C7360);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26101C92C;
  *(v13 + 24) = v12;
  v14 = a2;

  v15 = sub_26101C33C(sub_26101CDEC, v13);

  aBlock[4] = sub_26101C92C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101CDF4;
  aBlock[3] = &block_descriptor_55;
  v16 = _Block_copy(aBlock);

  [v15 fetchViewDetailsWithDevicePair:a3 completion:v16];
  _Block_release(v16);

  return swift_unknownObjectRelease();
}

uint64_t sub_261019EA8(void *a1, void *a2, id a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char a7)
{
  [a3 invalidate];
  if (a2)
  {
    v12 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    return sub_2610BCC04();
  }

  if (!a1)
  {
    sub_26101C72C();
    swift_allocError();
    *v15 = a7;
    goto LABEL_3;
  }

  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_2610BCC14();
}

uint64_t sub_261019F7C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_261019FA0, 0, 0);
}

uint64_t sub_261019FA0()
{
  super_class = v0[3].super_class;
  v2 = [v0[3].receiver anisetteDataProvider];
  v3 = type metadata accessor for AuthenticateExtras();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC21ProximityAppleIDSetupP33_6B22B88DD3ECBED0D0354FC242B14C8118AuthenticateExtras_anisetteDataProvider] = v2;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v5 = *(super_class + 3);
  v9 = (*(super_class + 2) + **(super_class + 2));
  v6 = *(*(super_class + 2) + 4);
  v7 = swift_task_alloc();
  v0[4].super_class = v7;
  *v7 = v0;
  *(v7 + 1) = sub_26101A0E8;

  return v9();
}

uint64_t sub_26101A0E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_26101A534;
  }

  else
  {
    v5 = sub_26101A1FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26101A1FC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v12 = *(v0 + 40);
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  [v1 setExportedObject_];
  v5 = [v3 interfaceWithProtocol_];
  v6 = [v3 interfaceWithProtocol_];
  [v5 setInterface:v6 forSelector:sel_fetchExtrasWithCompletion_ argumentIndex:0 ofReply:1];

  [v1 setExportedInterface_];
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v12;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *v9 = v0;
  v9[1] = sub_26101A418;

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD000000000000015, 0x80000002610D4250, sub_26101C2A0, v7, v10);
}

uint64_t sub_26101A418()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_26101A608;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_26101A598;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26101A534()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26101A598()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26101A608()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  v3 = *(v0 + 112);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26101A680(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26101C2AC;
  *(v15 + 24) = v14;
  v16 = a2;

  v17 = sub_26101C33C(sub_26101C4E8, v15);

  aBlock[4] = sub_26101C2AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C518;
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);

  [v17 authenticateWithAccount:a3 with:a4 completion:v18];
  _Block_release(v18);

  return swift_unknownObjectRelease();
}

uint64_t sub_26101A8C0(uint64_t a1, void *a2, id a3)
{
  [a3 invalidate];
  if (a2)
  {
    v5 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310);
    return sub_2610BCC04();
  }

  if (!a1)
  {
    sub_26101C72C();
    swift_allocError();
    *v7 = 1;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310);
  return sub_2610BCC14();
}

uint64_t sub_26101A998(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26101A9BC, 0, 0);
}

uint64_t sub_26101A9BC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_26101AAA8;

  return v6();
}

uint64_t sub_26101AAA8(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101ABDC, 0, 0);
}

uint64_t sub_26101ABDC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_26101AD38;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000019, 0x80000002610D4390, sub_26101C9E0, v5, v8);
}

uint64_t sub_26101AD38()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_261019C0C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_26101AE54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26101AE54()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_26101AEB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26101CA70;
  *(v9 + 24) = v8;

  v10 = sub_26101C33C(sub_26101CAE4, v9);

  v11 = sub_2610BC9D4();
  aBlock[4] = sub_26101CA70;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C5E0;
  aBlock[3] = &block_descriptor_67;
  v12 = _Block_copy(aBlock);

  [v10 signInSucceededWithAccount:v11 completion:v12];
  _Block_release(v12);

  swift_unknownObjectRelease();
}

uint64_t sub_26101B11C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_26101B208;

  return v6();
}

uint64_t sub_26101B208(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101B340, 0, 0);
}

uint64_t sub_26101B340()
{
  v1 = v0[4];
  v2 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26101B490;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD000000000000022, 0x80000002610D42E0, sub_26101C860, v3, v6);
}

uint64_t sub_26101B490()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26101B614;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_26101B5AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26101B5AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26101B614()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_26101B684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26101C868;
  *(v9 + 24) = v8;

  v10 = sub_26101C33C(sub_26101C8F4, v9);

  aBlock[4] = sub_26101C868;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C64C;
  aBlock[3] = &block_descriptor_43;
  v11 = _Block_copy(aBlock);

  [v10 shouldPerformLocalAuthenticationWithCompletion_];
  _Block_release(v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_26101B8A0(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350);
    return sub_2610BCC04();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350);
    return sub_2610BCC14();
  }
}

uint64_t sub_26101B944()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_26101BA30;

  return v6();
}

uint64_t sub_26101BA30(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101BB64, 0, 0);
}

uint64_t sub_26101BB64()
{
  v1 = v0[4];
  v2 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26101BCB0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000001FLL, 0x80000002610D42C0, sub_26101C858, v3, v6);
}

uint64_t sub_26101BCB0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26101BE30;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_26101BDCC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26101BDCC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26101BE30()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26101BE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26101CDF0;
  *(v9 + 24) = v8;

  v10 = sub_26101C33C(sub_26101CDE8, v9);

  aBlock[4] = sub_26101CDF0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C5E0;
  aBlock[3] = &block_descriptor_31;
  v11 = _Block_copy(aBlock);

  [v10 didPerformLocalAuthenticationWithCompletion_];
  _Block_release(v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_26101C0B8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
    return sub_2610BCC04();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
    return sub_2610BCC14();
  }
}

uint64_t sub_26101C12C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_26101C234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticateExtras();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26101C2AC(uint64_t a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_26101A8C0(a1, a2, v6);
}

uint64_t sub_26101C33C(uint64_t a1, uint64_t a2)
{
  [v2 activate];
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C6C4;
  aBlock[3] = &block_descriptor_17;
  v5 = _Block_copy(aBlock);

  v6 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_2610BCEA4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65628, &qword_2610C7328);
  swift_dynamicCast();
  return v8;
}

void sub_26101C45C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_26101C4E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_26101C518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    v4 = sub_2610BC914();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26101C5E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_26101C64C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_26101C6C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_26101C72C()
{
  result = qword_27FE65630;
  if (!qword_27FE65630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65630);
  }

  return result;
}

unint64_t sub_26101C788()
{
  v1 = 0xD000000000000036;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002CLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000029;
  }

  *v0;
  return result;
}

uint64_t sub_26101C7E0(uint64_t a1)
{
  v2 = sub_26101CC64();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26101C81C(uint64_t a1)
{
  v2 = sub_26101CC64();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26101C868(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350) - 8) + 80);

  return sub_26101B8A0(a1, a2);
}

uint64_t sub_26101C8F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

void sub_26101C9E0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_26101AEB8(a1);
}

uint64_t objectdestroy_24Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26101CAE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26101CBEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

unint64_t sub_26101CC2C(void *a1)
{
  a1[1] = sub_26101CC64();
  a1[2] = sub_26101CCB8();
  result = sub_26101CD0C();
  a1[3] = result;
  return result;
}

unint64_t sub_26101CC64()
{
  result = qword_27FE65658;
  if (!qword_27FE65658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65658);
  }

  return result;
}

unint64_t sub_26101CCB8()
{
  result = qword_27FE65660;
  if (!qword_27FE65660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65660);
  }

  return result;
}

unint64_t sub_26101CD0C()
{
  result = qword_27FE65668;
  if (!qword_27FE65668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65668);
  }

  return result;
}

unint64_t sub_26101CD64()
{
  result = qword_27FE65670;
  if (!qword_27FE65670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65670);
  }

  return result;
}

void *PASFlowStepTargetError.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error);
  v2 = v1;
  return v1;
}

uint64_t PASFlowStepTargetError.__allocating_init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65688, &unk_2610C7510);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v9 + v10) = v11;
  *(v9 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error) = a3;
  v12 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t PASFlowStepTargetError.init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65688, &unk_2610C7510);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error) = a3;
  v9 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_26101CF84()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 96);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error);
    *(v0 + 16) = v6;
    *(v0 + 64) = 1;
    v7 = *(v4 + 24);
    v8 = v6;
    v13 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_26101D148;

    return v13(v0 + 16, ObjectType, v4);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_26101D148()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v6 = *v0;

  swift_unknownObjectRelease();
  sub_26101D40C(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26101D290()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger);
}

uint64_t PASFlowStepTargetError.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);

  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger);

  return v0;
}

uint64_t PASFlowStepTargetError.__deallocating_deinit()
{
  PASFlowStepTargetError.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26101D40C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65690, qword_2610C7520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PASFlowStepTargetError()
{
  result = qword_27FE65698;
  if (!qword_27FE65698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASFlowStepTargetError.exitFlow()()
{
  v2 = *(*v0 + 352);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FB6DB4;

  return v6();
}

uint64_t sub_26101D68C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA0E88();
    v4 = *(v1 + 16);
    *(v1 + 16) = v2;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26101D758@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t sub_26101D8B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63C00, &qword_2610BEDD0);
  swift_endAccess();
}

uint64_t sub_26101D9F0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  swift_beginAccess();
  sub_260FA9918(v0 + v1, v12, &unk_27FE656B0, &unk_2610BFCE0);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v4);
    v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v5 + 16))(v8);
    sub_260FA9980(v12, &unk_27FE656B0, &unk_2610BFCE0);
    v9 = (*(v3 + 32))(v2, v3);
    (*(v5 + 8))(v8, v2);
  }

  else
  {
    sub_260FA9980(v12, &unk_27FE656B0, &unk_2610BFCE0);
    return 0;
  }

  return v9;
}

uint64_t sub_26101DB8C(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_26101DBB0, 0, 0);
}

uint64_t sub_26101DBB0()
{
  v1 = v0[59];
  v2 = sub_26101D66C();
  v4 = v3;
  v0[60] = v2;
  v0[61] = v3;
  v0[62] = swift_getObjectType();
  v0[63] = *(v4 + 8);
  v0[64] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0xE13E000000000000;
  v0[65] = sub_2610BCC74();
  v0[66] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101DC6C, v6, v5);
}

uint64_t sub_26101DC6C()
{
  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[60];

  v3(v4, v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26101DD08, 0, 0);
}

uint64_t sub_26101DD08()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), *(v0 + 248));
    v3 = (*(v2 + 32))(v1, v2);
    *(v0 + 536) = v3;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));
    if (v3)
    {
      v4 = *(v0 + 472);
      v19 = *(v0 + 456);
      [v3 setLinkType_];
      v5 = swift_allocObject();
      *(v0 + 544) = v5;
      *(v5 + 16) = v19;
      *(v5 + 32) = v3;
      *(v5 + 40) = v4;
      v6 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController + 24);
      v7 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController + 32);
      __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController), v6);
      v8 = *(v7 + 8);
      v9 = v3;

      v18 = (v8 + *v8);
      v10 = v8[1];
      v11 = swift_task_alloc();
      *(v0 + 552) = v11;
      *v11 = v0;
      v11[1] = sub_26101E010;

      return v18(sub_26101F8FC, v5, v6, v7);
    }
  }

  else
  {
    sub_260FA9980(v0 + 224, &qword_27FE63858, &unk_2610BE900);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v13 = sub_2610BC7B4();
  __swift_project_value_buffer(v13, qword_27FE65900);
  v14 = sub_2610BC794();
  v15 = sub_2610BCD64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_260F97000, v14, v15, "PASFlowStepSourceAuthentication authenticate has no target ak_device", v16, 2u);
    MEMORY[0x2666F8720](v16, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26101E010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 552);
  v7 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    v5 = sub_26101E5BC;
  }

  else
  {
    v5 = sub_26101E128;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26101E128()
{
  v20 = v0;
  if (*(v0 + 560))
  {
    v1 = (v0 + 176);
    v2 = *(v0 + 568);
    v3 = *(v0 + 472);
    v4 = sub_260FDF8D0(*(v0 + 560));

    v19 = sub_260FA8A9C(MEMORY[0x277D84F90]);

    sub_260FE4DD0(v5, &v19, sub_260FE618C, 0, v4);
    swift_bridgeObjectRelease_n();
    v6 = sub_260FE03F8(v19);

    v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
    swift_beginAccess();
    sub_260FA9918(v3 + v7, v0 + 176, &unk_27FE656B0, &unk_2610BFCE0);
    *(v0 + 216) = v6;
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = (v0 + 128);
    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);
    v9 = sub_2610BC794();
    v10 = sub_2610BCD84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_260F97000, v9, v10, "PASFlowStepSourceAuthentication authenticate returned nil", v11, 2u);
      MEMORY[0x2666F8720](v11, -1, -1);
    }

    v3 = *(v0 + 472);

    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *v1 = 0u;
  }

  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  swift_beginAccess();
  sub_26101F908(v1, v3 + v12);
  swift_endAccess();
  v13 = *(v0 + 520);
  v14 = *(v0 + 472);
  v15 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  swift_beginAccess();
  sub_260FA9918(v14 + v15, v0 + 264, &unk_27FE656B0, &unk_2610BFCE0);
  *(v0 + 576) = sub_2610BCC64();
  v17 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101E3CC, v17, v16);
}

uint64_t sub_26101E3CC()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 472);

  sub_26101EF00(v0 + 264);
  sub_260FA9980(v0 + 264, &unk_27FE656B0, &unk_2610BFCE0);

  return MEMORY[0x2822009F8](sub_26101E458, 0, 0);
}

uint64_t sub_26101E458()
{
  v1 = *(v0 + 520);
  *(v0 + 584) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101E4E4, v3, v2);
}

uint64_t sub_26101E4E4()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 472);

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26101E554, 0, 0);
}

uint64_t sub_26101E554()
{
  v1 = v0[68];
  v2 = v0[67];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26101E5BC()
{
  v1 = *(v0 + 568);
  *(v0 + 448) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 65) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v28 = sub_2610BC7B4();
    __swift_project_value_buffer(v28, qword_27FE65900);
    v29 = sub_2610BC794();
    v30 = sub_2610BCD84();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_260F97000, v29, v30, "PASFlowStepSourceAuthentication authenticate got targetCantSignInForSelf", v31, 2u);
      MEMORY[0x2666F8720](v31, -1, -1);
    }

    v32 = *(v0 + 472);

    v33 = v32 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 592) = Strong;
    if (Strong)
    {
      v35 = *(v33 + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 88) = 0u;
      *(v0 + 104) = 0u;
      *(v0 + 120) = 0;
      *(v0 + 72) = 0u;
      v37 = *(v35 + 16);
      v46 = (v37 + *v37);
      v38 = v37[1];
      v39 = swift_task_alloc();
      *(v0 + 600) = v39;
      *v39 = v0;
      v39[1] = sub_26101EB14;
      v24 = v0 + 72;
      v25 = ObjectType;
      v26 = v35;
      v27 = v46;
      goto LABEL_17;
    }

    v43 = *(v0 + 544);
  }

  else
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 568);
    v5 = sub_2610BC7B4();
    __swift_project_value_buffer(v5, qword_27FE65900);
    v6 = v4;
    v7 = sub_2610BC794();
    v8 = sub_2610BCD64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 568);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepSourceAuthentication authenticate error: %{public}@", v10, 0xCu);
      sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v11, -1, -1);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v14 = *(v0 + 472);

    v15 = v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 608) = v16;
    if (v16)
    {
      v17 = *(v0 + 568);
      v18 = *(v15 + 8);
      v19 = swift_getObjectType();
      *(v0 + 16) = v17;
      *(v0 + 64) = 1;
      v20 = *(v18 + 16);
      v21 = v17;
      v45 = (v20 + *v20);
      v22 = v20[1];
      v23 = swift_task_alloc();
      *(v0 + 616) = v23;
      *v23 = v0;
      v23[1] = sub_26101ECB8;
      v24 = v0 + 16;
      v25 = v19;
      v26 = v18;
      v27 = v45;
LABEL_17:

      return v27(v24, v25, v26);
    }

    v41 = *(v0 + 568);
    v42 = *(v0 + 544);
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_26101EB14()
{
  v1 = *v0;
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 592);
  v5 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 72, &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_26101EC44, 0, 0);
}

uint64_t sub_26101EC44()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26101ECB8()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v5 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_26101EDE8, 0, 0);
}

uint64_t sub_26101EDE8()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 544);

  v3 = *(v0 + 8);

  return v3();
}

void *sub_26101EE60(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = a1();
  [v4 setProxiedDevice_];
  [v4 setIsUsernameEditable_];
  [v4 setServiceType_];
  [v4 setAnisetteDataProvider_];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26101EF00(uint64_t a1)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  sub_260FA9918(a1, v33, &unk_27FE656B0, &unk_2610BFCE0);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v6 = a1;
    v7 = v29;
    *v5 = 136315138;
    sub_260FA9918(v33, v30, &unk_27FE656B0, &unk_2610BFCE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
    v8 = sub_2610BCA34();
    v10 = v9;
    sub_260FA9980(v33, &unk_27FE656B0, &unk_2610BFCE0);
    v11 = sub_260FA5970(v8, v10, &v29);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepSourceAuthentication updateTargetAccount to %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    v12 = v7;
    a1 = v6;
    MEMORY[0x2666F8720](v12, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    sub_260FA9980(v33, &unk_27FE656B0, &unk_2610BFCE0);
  }

  sub_26101D8B4(v33);
  v13 = v34;
  v14 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  LOBYTE(v30[0]) = 4;
  if ((*(v14 + 8))(v30, v13, v14))
  {
    sub_26101D894();
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v30, ObjectType, v16);
    swift_unknownObjectRelease();
    v18 = v31;
    if (v31)
    {
      v19 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v19 + 8))(&v29, v18, v19);
      LODWORD(v18) = v29;
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    else
    {
      sub_260FA9980(v30, &qword_27FE63CF0, &qword_2610C2510);
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  sub_26101D758(v33);
  v20 = v34;
  v21 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v21 + 8))(v30, v20, v21);
  v22 = v31;
  sub_260FA9980(v30, &unk_27FE656B0, &unk_2610BFCE0);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v33);
  if (!v22 || v18)
  {
    v24 = sub_2610BC794();
    v25 = sub_2610BCD54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_260F97000, v24, v25, "PASFlowStepSourceAuthentication updateTargetAccount shouldUpdateTargetAccount", v26, 2u);
      MEMORY[0x2666F8720](v26, -1, -1);
    }

    sub_26101D758(v33);
    v27 = v34;
    v28 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    type metadata accessor for PASAccountContext();
    static PASAccountContext.defaultContextFor(account:targetHasProtoAccount:)(a1, v18, v30);
    (*(v28 + 40))(a1, v30, v27, v28);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  return result;
}

uint64_t sub_26101F344()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  swift_beginAccess();
  sub_26101FB9C(v0 + v1, v32);
  v2 = v33;
  if (v33)
  {
    if (v33 == 1)
    {
      v3 = 0x80000002610D4520;
      sub_260FC3450();
      swift_allocError();
      *v4 = 0xD00000000000003BLL;
      *(v4 + 8) = 0x80000002610D4520;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 1;
      swift_willThrow();
      sub_26101FBD4(v32);
    }

    else
    {
      v15 = v0;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v16 = sub_2610BC7B4();
      __swift_project_value_buffer(v16, qword_27FE65900);
      v17 = sub_2610BC794();
      v18 = sub_2610BCD84();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_260F97000, v17, v18, "PASFlowStepSourceAuthentication setting target account", v19, 2u);
        MEMORY[0x2666F8720](v19, -1, -1);
      }

      v20 = v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v22 = *(v20 + 8);
      v31[3] = &type metadata for PASAuthResults;
      v31[4] = sub_26101FC04();
      v31[0] = v2;
      v23 = type metadata accessor for PASFlowStepSendAuthResults();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v26 = swift_allocObject();
      v27 = OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v26 + v27) = v28;
      v29 = v26 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
      *v29 = 0;
      *(v29 + 8) = -1;
      sub_260FA99E0(v31, v26 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account);
      *(v26 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults) = v2;

      v3 = sub_26104DC44(Strong, v22);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      sub_26101FC9C(&qword_27FE65710, type metadata accessor for PASFlowStepSendAuthResults);
      sub_260FA9980(v32, &unk_27FE656B0, &unk_2610BFCE0);
    }
  }

  else
  {
    v5 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 8);
    v8 = type metadata accessor for PASFlowStepSignInResult();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
    v13 = swift_allocObject();
    *(v11 + v12) = v13;
    *(v13 + 16) = 0;
    v14 = (v11 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
    *v14 = 0;
    v14[1] = 0;
    v3 = sub_26104DC44(v6, v7);
    swift_unknownObjectRelease();
    sub_26101FC9C(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult);
  }

  return v3;
}

uint64_t sub_26101F708()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__deviceProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountStore);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__targetAccountOptionsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController));
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account, &unk_27FE656B0, &unk_2610BFCE0);
  v7 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;

  return sub_26101FBD4(v7);
}

uint64_t PASFlowStepSourceAuthentication.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__deviceProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountStore);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__targetAccountOptionsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController));
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account, &unk_27FE656B0, &unk_2610BFCE0);
  sub_26101FBD4(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult);
  return v0;
}

uint64_t PASFlowStepSourceAuthentication.__deallocating_deinit()
{
  v0 = PASFlowStepSourceAuthentication.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26101F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[3] = a6;
  v30[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(a5 + v14) = v15;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(a5 + v16) = v17;
  v18 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v19 = swift_allocObject();
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0;
  *(a5 + v18) = v19;
  v20 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0;
  *(a5 + v20) = v21;
  v22 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(a5 + v22) = v23;
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0;
  *(a5 + v24) = v25;
  v26 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v27 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  *(v27 + 40) = 1;
  sub_260FA99E0(v30, a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController);
  swift_beginAccess();
  sub_261020090(a4, v26);
  swift_endAccess();
  v28 = sub_26104DC44(a1, a2);
  sub_260FA9980(a4, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  return v28;
}

unint64_t sub_26101FC04()
{
  result = qword_27FE65700;
  if (!qword_27FE65700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65700);
  }

  return result;
}

uint64_t sub_26101FC58(uint64_t a1)
{
  result = sub_26101FC9C(&unk_27FE65B70, type metadata accessor for PASFlowStepSourceAuthentication);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26101FC9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSourceAuthentication()
{
  result = qword_27FE65748;
  if (!qword_27FE65748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASFlowStepSourceAuthentication.authenticate(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 720);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FB6DB4;

  return v10(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup18PASAccountProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup31PASFlowStepSourceAuthenticationC20AuthControllerResultO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26101FF98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26101FFEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

double sub_261020050(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261020090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_261020110(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v3)
  {
    v5 = "E";
  }

  else
  {
    v5 = "missingDependentAppleID";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (*a2)
  {
    v8 = "missingDependentAppleID";
  }

  else
  {
    v8 = "E";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2610BD384();
  }

  return v10 & 1;
}

uint64_t sub_2610201BC()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26102023C()
{
  *v0;
  sub_2610BCA54();
}

uint64_t sub_2610202A8()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_261020324@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

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

void sub_261020384(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = "missingDependentAppleID";
  }

  else
  {
    v3 = "E";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_2610203C4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B4404(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_26102048C(uint64_t a1)
{
  v2 = sub_261029334();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610204C8(uint64_t a1)
{
  v2 = sub_261029334();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t (*sub_261020504(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FB2E8C;
}

uint64_t sub_261020598()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9F58C();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_261020668@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_26102079C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE658C0, qword_2610C8270);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE658C0, qword_2610C8270);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA135C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE658C0, qword_2610C8270);
  swift_endAccess();
}

uint64_t sub_2610208D0()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260FA1868();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_2610209A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_261020AD4()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9D764();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_261020BA4()
{
  sub_261020AD4();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(v7, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    strcpy(v6, "endFlowMessage");
    v6[15] = -18;
    LOBYTE(v3) = (*(v4 + 24))(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_260FA9980(v7, &qword_27FE63850, qword_2610CC240);
  }

  return v3 & 1;
}

uint64_t sub_261020C98()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    sub_2610209A0(v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v1 = (*(v4 + 8))(&type metadata for PASSourceFlowController.AnalyticsEvent, &off_287387C58, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    v5 = *(v0 + 120);
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t PASSourceFlowController.__allocating_init()()
{
  v0 = swift_allocObject();
  PASSourceFlowController.init()();
  return v0;
}

uint64_t PASSourceFlowController.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_2610BD0E4())
  {
    v2 = sub_26100978C(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v0 + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE657B0, &qword_2610C7CB0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v0 + 88) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657D0, &qword_2610C76F0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v0 + 96) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v0 + 104) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v0 + 112) = v9;
  *(v0 + 120) = 0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  v11 = sub_2610BC794();
  v12 = sub_2610BCD54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_260F97000, v11, v12, "PASSourceFlowController init", v13, 2u);
    MEMORY[0x2666F8720](v13, -1, -1);
  }

  return v1;
}

uint64_t sub_261020FF4()
{
  v1[16] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657E0, &qword_2610C7708) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v1[19] = v4;
  v5 = *(v4 - 8);
  v1[20] = v5;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657F0, &qword_2610C7718);
  v1[22] = v7;
  v8 = *(v7 - 8);
  v1[23] = v8;
  v9 = *(v8 + 64) + 15;
  v1[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65768, &qword_2610C7720);
  v1[25] = v10;
  v11 = *(v10 - 8);
  v1[26] = v11;
  v12 = *(v11 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = sub_2610BCC74();
  v1[29] = sub_2610BCC64();
  v14 = sub_2610BCBF4();
  v1[30] = v14;
  v1[31] = v13;

  return MEMORY[0x2822009F8](sub_261021238, v14, v13);
}

uint64_t sub_261021238()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController prepareFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[16];

  sub_261020598();
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);

  v9(v10, &protocol witness table for PASSourceFlowController, ObjectType, v7);
  swift_unknownObjectRelease();
  v11 = sub_261020598();
  v13 = v12;
  v0[32] = v11;
  v14 = swift_getObjectType();
  v15 = *(v13 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[33] = v17;
  *v17 = v0;
  v17[1] = sub_261021478;

  return v19(v14, v13);
}

uint64_t sub_261021478()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_2610215BC, v5, v4);
}

uint64_t sub_2610215BC()
{
  v1 = v0[16];
  sub_26102079C((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_2610216EC;

  return v8(v2, v3);
}

uint64_t sub_2610216EC()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_26102180C, v4, v3);
}

uint64_t sub_26102180C()
{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = sub_2610208D0();
  v4 = v3;
  v0[35] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_261021940;

  return v10(ObjectType, v4);
}

uint64_t sub_261021940()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_261021A84, v5, v4);
}

uint64_t sub_261021A84()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v21 = v0[25];
  v22 = v0[26];
  v19 = v0[22];
  v20 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v18 = v0[18];
  v7 = v0[16];
  v23 = v0[17];
  v24 = v0[28];

  sub_261020668((v0 + 7));
  v9 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
  (*(v8 + 8))(v9, v8);
  sub_260FDD378(&unk_27FE65810, &qword_27FE64790, &qword_2610C7710);
  sub_2610BC894();
  (*(v4 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_261028704();
  v10 = sub_2610BCDD4();
  v0[15] = v10;
  v11 = sub_2610BCDB4();
  (*(*(v11 - 8) + 56))(v18, 1, 1, v11);
  sub_260FDD378(&unk_27FE65820, &unk_27FE657F0, &qword_2610C7718);
  sub_2610294DC(&qword_27FE65770, sub_261028704);
  sub_2610BC884();
  sub_260FA9980(v18, &unk_27FE657E0, &qword_2610C7708);

  (*(v20 + 8))(v3, v19);
  swift_allocObject();
  swift_weakInit();
  sub_260FDD378(&unk_27FE65830, &qword_27FE65768, &qword_2610C7720);
  sub_2610BC8A4();

  (*(v22 + 8))(v2, v21);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();

  v12 = sub_2610BCC94();
  (*(*(v12 - 8) + 56))(v23, 1, 1, v12);

  v13 = sub_2610BCC64();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v7;
  sub_261042434(0, 0, v23, &unk_2610C7730, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_261021EA8(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v1 & 1) == 0 && (*(result + 32) & 1) == 0)
    {
      v3 = result;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v4 = sub_2610BC7B4();
      __swift_project_value_buffer(v4, qword_27FE65900);
      v5 = sub_2610BC794();
      v6 = sub_2610BCD64();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_260F97000, v5, v6, "PASSourceFlowController message session is dead!", v7, 2u);
        MEMORY[0x2666F8720](v7, -1, -1);
      }

      v8 = sub_2610BC794();
      v9 = sub_2610BCD64();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v23[0] = v11;
        *v10 = 136446210;
        sub_2610BCF84();

        v23[1] = 0xD00000000000002ELL;
        v23[2] = 0x80000002610D46E0;
        MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D46C0);
        v12 = sub_260FA5970(0xD00000000000002ELL, 0x80000002610D46E0, v23);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_260F97000, v8, v9, "PASSourceFlowController stepDidFinish with error\n%{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x2666F8720](v11, -1, -1);
        MEMORY[0x2666F8720](v10, -1, -1);
      }

      sub_260FC3450();
      v13 = swift_allocError();
      *v14 = 0xD00000000000001CLL;
      *(v14 + 8) = 0x80000002610D46C0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 2;
      v15 = type metadata accessor for PASFlowStepSourceError();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      *(swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = v13;

      v19 = sub_26104DC44(v18, &protocol witness table for PASSourceFlowController);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        v22 = sub_2610294DC(&qword_27FE657A8, type metadata accessor for PASFlowStepSourceError);
        (*(*(v20 + 8) + 8))(v19, v22, ObjectType);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_261022228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2610222C0, v6, v5);
}

uint64_t sub_2610222C0()
{
  v1 = v0[2];
  v2 = sub_2610208D0();
  v4 = v3;
  v0[6] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_2610223EC;

  return v10(ObjectType, v4);
}

uint64_t sub_2610223EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_261022594;
  }

  else
  {
    v7 = sub_261022528;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261022528()
{
  v1 = v0[6];
  v2 = v0[3];

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_261022594()
{
  v1 = v0[6];
  v2 = v0[3];

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = v3;
  v6 = sub_2610BC794();
  v7 = sub_2610BCD64();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_260F97000, v6, v7, "PASSourceFlowController prepare flow failed to sendPASDeviceInfo %{public}@", v10, 0xCu);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_26102274C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = sub_2610BCC74();
  v3[24] = sub_2610BCC64();
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v3[25] = v9;
  *v9 = v3;
  v9[1] = sub_2610228D4;

  return v11(ObjectType, a2);
}

uint64_t sub_2610228D4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;
  v3[26] = v0;

  v6 = v3[24];
  v7 = v3[23];
  v8 = sub_2610BCBF4();
  if (v2)
  {
    v3[27] = v8;
    v3[28] = v9;
    v10 = sub_261022AA8;
  }

  else
  {
    v10 = sub_261022A38;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_261022A38()
{
  v1 = v0[24];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_261022AA8()
{
  v51 = v0;
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 80);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (*(v0 + 104))
  {
    sub_26102880C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
LABEL_4:

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 208);
    v7 = *(v0 + 152);
    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);
    v9 = v6;
    swift_unknownObjectRetain();
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 208);
      v48 = *(v0 + 152);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v50[0] = v15;
      *v13 = 136446466;
      *(v0 + 112) = v48;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
      v16 = sub_2610BCA34();
      v18 = sub_260FA5970(v16, v17, v50);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2114;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_260F97000, v10, v11, "PASSourceFlowController failed to prepare step %{public}s for presentation %{public}@", v13, 0x16u);
      sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v21 = *(v0 + 208);
    *(v0 + 16) = v21;
    *(v0 + 64) = 1;
    v22 = v21;
    v23 = swift_task_alloc();
    *(v0 + 232) = v23;
    *v23 = v0;
    v23[1] = sub_261023098;
    v24 = *(v0 + 168);

    return PASSourceFlowController.stepDidEndFlow(with:)(v0 + 16);
  }

  v49 = *(v0 + 72);
  v26 = *(v0 + 208);
  v27 = *(v0 + 192);

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 152);
  v29 = sub_2610BC7B4();
  __swift_project_value_buffer(v29, qword_27FE65900);
  swift_unknownObjectRetain();

  v30 = sub_2610BC794();
  v31 = sub_2610BCD84();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v30, v31))
  {
    v47 = *(v0 + 152);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50[0] = v33;
    *v32 = 136446466;
    *(v0 + 128) = v47;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v34 = sub_2610BCA34();
    v36 = sub_260FA5970(v34, v35, v50);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    v37 = sub_260FA5970(v49, v3, v50);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_260F97000, v30, v31, "PASSourceFlowController skipping %{public}s.\n%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v33, -1, -1);
    MEMORY[0x2666F8720](v32, -1, -1);
  }

  else
  {
  }

  v39 = *(v0 + 176);
  v38 = *(v0 + 184);
  v40 = sub_2610BCC94();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);

  v41 = sub_2610BCC64();
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D85700];
  v42[2] = v41;
  v42[3] = v43;
  v42[4] = v5;
  v42[5] = v4;
  sub_261042434(0, 0, v39, &unk_2610C7760, v42);

  sub_261028960();
  swift_allocError();
  *v44 = 1;
  swift_willThrow();

  v45 = *(v0 + 176);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_261023098()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_2610231D4, v4, v3);
}

uint64_t sub_2610231D4()
{
  v1 = v0[26];
  v2 = v0[24];

  swift_willThrow();
  v3 = v0[26];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_261023250(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_261023360;

  return v9();
}

uint64_t sub_261023360()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261029528, v5, v4);
}

uint64_t PASSourceFlowController.stepDidEndFlow(with:)(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  sub_2610BCC74();
  v2[39] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[40] = v4;
  v2[41] = v3;

  return MEMORY[0x2822009F8](sub_261023534, v4, v3);
}

uint64_t sub_261023534()
{
  v41 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_2610BC7B4();
  v0[42] = __swift_project_value_buffer(v2, qword_27FE65900);
  sub_260FA9918(v1, (v0 + 2), &unk_27FE656D0, &unk_2610C0550);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136446210;
    sub_260FA9918((v0 + 2), (v0 + 16), &unk_27FE656D0, &unk_2610C0550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656D0, &unk_2610C0550);
    v7 = sub_2610BCA34();
    v9 = v8;
    sub_260FA9980((v0 + 2), &unk_27FE656D0, &unk_2610C0550);
    v10 = sub_260FA5970(v7, v9, &v40);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidEndFlow with result %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    sub_260FA9980((v0 + 2), &unk_27FE656D0, &unk_2610C0550);
  }

  if ((*(v0[38] + 32) & 1) == 0)
  {
    v11 = v0[38];
    v12 = sub_261020BA4();
    v13 = v0[38];
    if (v12)
    {
      v14 = v0[38];
      v15 = sub_261020598();
      v17 = v16;
      v0[43] = v15;
      swift_getObjectType();
      v18 = *(v17 + 72);
      v39 = v18 + *v18;
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[44] = v20;
      *v20 = v0;
      v20[1] = sub_261023AAC;

      __asm { BRAA            X2, X16 }
    }
  }

  sub_261020668((v0 + 23));
  v21 = v0[26];
  v22 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v21);
  (*(v22 + 40))(v21, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v24 = v0[38];
    v25 = *(v24 + 24);
    *(v24 + 32) = 1;
    swift_getObjectType();
    v26 = *(v25 + 16);
    swift_unknownObjectRetain();
    v38 = v26 + *v26;
    v27 = v26[1];
    v28 = swift_task_alloc();
    v0[47] = v28;
    *v28 = v0;
    v28[1] = sub_261023F10;
    v29 = v0[37];

    __asm { BRAA            X3, X16 }
  }

  v30 = v0[42];
  v31 = sub_2610BC794();
  v32 = sub_2610BCD74();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_260F97000, v31, v32, "PASSourceFlowController presenter is nil in stepDidEndFlow", v33, 2u);
    MEMORY[0x2666F8720](v33, -1, -1);
  }

  v34 = v0[38];

  *(v34 + 32) = 1;
  v35 = v0[37];
  v36 = v0[38];
  v0[48] = sub_261020C98();
  sub_260FA9918(v35, (v0 + 9), &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_261023AAC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 65) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 328);
  v8 = *(v3 + 320);
  if (v1)
  {
    v9 = sub_26102436C;
  }

  else
  {
    v9 = sub_261023BF4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_261023BF4()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  swift_unknownObjectRelease();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 65);
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidEndFlow got response from flowEnded: %{BOOL,public}d", v6, 8u);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v7 = *(v0 + 304);
  sub_261020668(v0 + 184);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v8);
  (*(v9 + 40))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 368) = Strong;
  if (Strong)
  {
    v11 = *(v0 + 304);
    v12 = *(v11 + 24);
    *(v11 + 32) = 1;
    swift_getObjectType();
    v13 = *(v12 + 16);
    swift_unknownObjectRetain();
    v25 = v13 + *v13;
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_261023F10;
    v16 = *(v0 + 296);

    __asm { BRAA            X3, X16 }
  }

  v17 = *(v0 + 336);
  v18 = sub_2610BC794();
  v19 = sub_2610BCD74();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_260F97000, v18, v19, "PASSourceFlowController presenter is nil in stepDidEndFlow", v20, 2u);
    MEMORY[0x2666F8720](v20, -1, -1);
  }

  v21 = *(v0 + 304);

  *(v21 + 32) = 1;
  v22 = *(v0 + 296);
  v23 = *(v0 + 304);
  *(v0 + 384) = sub_261020C98();
  sub_260FA9918(v22, v0 + 72, &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_261023F10()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 328);
  v5 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_261024054, v5, v4);
}

uint64_t sub_261024054()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[48] = sub_261020C98();
  sub_260FA9918(v1, (v0 + 9), &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_2610240DC()
{
  v0[31] = &type metadata for PASSourceFlowController.AnalyticsEvent;
  v0[32] = &off_287387C58;
  v1 = swift_allocObject();
  v0[28] = v1;
  sub_2610289B4((v0 + 9), v1 + 16);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_2610241B8;
  v3 = v0[48];

  return sub_2610476AC((v0 + 28), 0, 0);
}

void sub_2610241B8()
{
  v2 = *v1;
  v3 = (*v1)[49];
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[48];

    sub_2610289EC((v2 + 9));
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 28);
    v6 = v2[40];
    v7 = v2[41];

    MEMORY[0x2822009F8](sub_261024300, v6, v7);
  }
}

uint64_t sub_261024300()
{
  v1 = v0[46];
  v2 = v0[39];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26102436C()
{
  v35 = v0;
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[45];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446210;
    v0[36] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v5, v6, "PASSourceFlowController stepDidEndFlow got error sending flowEnded:%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
    v14 = v0[45];
  }

  v15 = v0[38];
  sub_261020668((v0 + 23));
  v16 = v0[26];
  v17 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v16);
  (*(v17 + 40))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v19 = v0[38];
    v20 = *(v19 + 24);
    *(v19 + 32) = 1;
    swift_getObjectType();
    v21 = *(v20 + 16);
    swift_unknownObjectRetain();
    v33 = v21 + *v21;
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[47] = v23;
    *v23 = v0;
    v23[1] = sub_261023F10;
    v24 = v0[37];

    __asm { BRAA            X3, X16 }
  }

  v25 = v0[42];
  v26 = sub_2610BC794();
  v27 = sub_2610BCD74();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_260F97000, v26, v27, "PASSourceFlowController presenter is nil in stepDidEndFlow", v28, 2u);
    MEMORY[0x2666F8720](v28, -1, -1);
  }

  v29 = v0[38];

  *(v29 + 32) = 1;
  v30 = v0[37];
  v31 = v0[38];
  v0[48] = sub_261020C98();
  sub_260FA9918(v30, (v0 + 9), &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_261024734(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_261028440(a1, v2, ObjectType, a2);
}

uint64_t sub_261024784()
{
  v0 = type metadata accessor for PASFlowStepSourceStart();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  v4 = sub_26104DC44(v3, &protocol witness table for PASSourceFlowController);

  sub_2610294DC(&qword_27FE65778, type metadata accessor for PASFlowStepSourceStart);
  return v4;
}

void *PASSourceFlowController.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260F99170((v1 + 2));
  v6 = v1[5];

  v7 = v1[6];
  swift_unknownObjectRelease();
  v8 = v1[8];

  v9 = v1[9];

  v10 = v1[10];

  v11 = v1[11];

  v12 = v1[12];

  v13 = v1[13];

  v14 = v1[14];

  v15 = v1[15];

  return v1;
}

uint64_t PASSourceFlowController.__deallocating_deinit()
{
  PASSourceFlowController.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t (*sub_261024984(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FBF87C;
}

uint64_t sub_261024A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_261020FF4();
}

uint64_t sub_261024AA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return sub_26102274C(a1, a2);
}

void PASSourceFlowController.stepDidFinish(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v30[1] = v30 - v8;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v9 = sub_2610BC7B4();
  __swift_project_value_buffer(v9, qword_27FE65900);
  swift_unknownObjectRetain();
  v10 = sub_2610BC794();
  v11 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136446210;
    v32 = a1;
    v33 = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65780, &qword_2610C7DB0);
    v14 = sub_2610BCA34();
    v16 = sub_260FA5970(v14, v15, &v31);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_260F97000, v10, v11, "PASSourceFlowController stepDidFinish %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2666F8720](v13, -1, -1);
    MEMORY[0x2666F8720](v12, -1, -1);
  }

  if ((*(v3 + 32) & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v18 = (*(a2 + 16))(ObjectType, a2);
    v20 = v19;
    swift_unknownObjectRetain();
    v21 = sub_2610BC794();
    v22 = sub_2610BCD84();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446210;
      v32 = v18;
      v33 = v20;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
      v25 = sub_2610BCA34();
      v27 = sub_260FA5970(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_260F97000, v21, v22, "PASSourceFlowController presenting next step %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x2666F8720](v24, -1, -1);
      MEMORY[0x2666F8720](v23, -1, -1);
    }

    v28 = swift_getObjectType();
    v29 = swift_unknownObjectRetain();
    sub_261028440(v29, v3, v28, v20);
    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_261025284(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_261025394;

  return v9();
}

uint64_t sub_261025394()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610254D0, v5, v4);
}

uint64_t sub_2610254D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PASSourceFlowController.stepDidRequestReset(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = sub_2610BCC74();
  v3[12] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x2822009F8](sub_261025608, v6, v5);
}

uint64_t sub_261025608()
{
  v38 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  swift_unknownObjectRetain();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v35 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136446210;
    *(v0 + 40) = v35;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v7 = sub_2610BCA34();
    v9 = sub_260FA5970(v7, v8, &v37);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidRequestReset %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v10 = *(v0 + 72);
  if (*(v10 + 32))
  {
    v11 = *(v0 + 96);
LABEL_16:

    v33 = *(v0 + 80);

    v34 = *(v0 + 8);

    return v34();
  }

  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = sub_2610BCC94();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

  v15 = sub_2610BCC64();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v10;
  sub_261042434(0, 0, v13, &unk_2610C7790, v16);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (!Strong)
  {
    v19 = sub_2610BC794();
    v20 = sub_2610BCD74();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_260F97000, v19, v20, "PASSourceFlowController presenter is nil in stepDidRequestReset", v21, 2u);
      MEMORY[0x2666F8720](v21, -1, -1);
    }
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = v22;
  if (!v22)
  {
    v32 = *(v0 + 96);
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v23 = *(*(v0 + 72) + 24);
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 8);
  v26 = *(v25 + 16);
  v36 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 136) = v28;
  *v28 = v0;
  v28[1] = sub_261025A54;
  v30 = *(v0 + 56);
  v29 = *(v0 + 64);

  return v36(v30, v29, ObjectType, v25);
}

uint64_t sub_261025A54()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_261025B98, v5, v4);
}

uint64_t sub_261025B98()
{
  v1 = v0[15];
  v2 = v0[12];
  swift_unknownObjectRelease();

  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_261025C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2610BCC74();
  v4[4] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_261025CA4, v6, v5);
}

uint64_t sub_261025CA4()
{
  v1 = v0[3];
  v2 = sub_261020598();
  v4 = v3;
  v0[7] = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 56);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_261025DD0;

  return v10(ObjectType, v4);
}

uint64_t sub_261025DD0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 72) = v1;

  v7 = *(v3 + 48);
  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_261026050;
  }

  else
  {
    v9 = sub_261025F18;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_261025F18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = sub_2610BC794();
  v5 = sub_2610BCD84();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v6;
    _os_log_impl(&dword_260F97000, v4, v5, "PASSourceFlowController stepDidRequestReset got response from sendReset %{BOOL,public}d", v7, 8u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_261026050()
{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[4];

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = v3;
  v6 = sub_2610BC794();
  v7 = sub_2610BCD64();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v0[2] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v13 = sub_2610BCA34();
    v15 = sub_260FA5970(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_260F97000, v6, v7, "PASSourceFlowController stepDidRequestReset got error sending flowReset.%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t PASSourceFlowController.stepDidRequestCancel(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2610BCC74();
  v3[16] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v3[17] = v5;
  v3[18] = v4;

  return MEMORY[0x2822009F8](sub_2610262D0, v5, v4);
}

uint64_t sub_2610262D0()
{
  v42 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_27FE65900);
  swift_unknownObjectRetain();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v38 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v41 = v6;
    *v5 = 136446210;
    *(v0 + 80) = v38;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v7 = sub_2610BCA34();
    v9 = sub_260FA5970(v7, v8, &v41);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidRequestCancel %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  if (*(*(v0 + 120) + 32))
  {
    v10 = *(v0 + 120);
    sub_261020668(v0 + 16);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    (*(v12 + 40))(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 184) = Strong;
    if (!Strong)
    {
      v14 = *(v0 + 152);
      v15 = sub_2610BC794();
      v16 = sub_2610BCD74();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_260F97000, v15, v16, "PASSourceFlowController presenter is nil in stepDidRequestCancel", v17, 2u);
        MEMORY[0x2666F8720](v17, -1, -1);
      }
    }

    *(*(v0 + 120) + 32) = 1;
    v18 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = v18;
    if (v18)
    {
      v19 = *(*(v0 + 120) + 24);
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = *(v21 + 24);
      v39 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      *(v0 + 200) = v24;
      *v24 = v0;
      v24[1] = sub_261026C0C;
      v26 = *(v0 + 104);
      v25 = *(v0 + 112);

      return v39(v26, v25, ObjectType, v21);
    }

    else
    {
      v36 = *(v0 + 128);
      swift_unknownObjectRelease();

      v37 = *(v0 + 8);

      return v37();
    }
  }

  else
  {
    v28 = *(v0 + 120);
    v29 = sub_261020598();
    v31 = v30;
    *(v0 + 160) = v29;
    v32 = swift_getObjectType();
    v33 = *(v31 + 64);
    v40 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 168) = v35;
    *v35 = v0;
    v35[1] = sub_2610267C0;

    return v40(v32, v31);
  }
}

uint64_t sub_2610267C0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 144);
  v8 = *(v3 + 136);
  if (v1)
  {
    v9 = sub_261026DBC;
  }

  else
  {
    v9 = sub_261026908;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_261026908()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidRequestCancel got response from sendCancelFlow %{BOOL,public}d", v6, 8u);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v7 = *(v0 + 120);
  sub_261020668(v0 + 16);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  (*(v9 + 40))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
    v11 = *(v0 + 152);
    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASSourceFlowController presenter is nil in stepDidRequestCancel", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }
  }

  *(*(v0 + 120) + 32) = 1;
  v15 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = v15;
  if (v15)
  {
    v16 = *(*(v0 + 120) + 24);
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 8);
    v19 = *(v18 + 24);
    v27 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_261026C0C;
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);

    return v27(v23, v22, ObjectType, v18);
  }

  else
  {
    v25 = *(v0 + 128);
    swift_unknownObjectRelease();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_261026C0C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_261026D50, v5, v4);
}

uint64_t sub_261026D50()
{
  v1 = v0[23];
  v2 = v0[16];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_261026DBC()
{
  v37 = v0;
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136446210;
    v0[12] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v36);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v5, v6, "PASSourceFlowController stepDidRequestCancel got error sending flowCancel.\n%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
    v14 = v0[22];
  }

  v15 = v0[15];
  sub_261020668((v0 + 2));
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  (*(v17 + 40))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    v19 = v0[19];
    v20 = sub_2610BC794();
    v21 = sub_2610BCD74();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_260F97000, v20, v21, "PASSourceFlowController presenter is nil in stepDidRequestCancel", v22, 2u);
      MEMORY[0x2666F8720](v22, -1, -1);
    }
  }

  *(v0[15] + 32) = 1;
  v23 = swift_unknownObjectWeakLoadStrong();
  v0[24] = v23;
  if (v23)
  {
    v24 = *(v0[15] + 24);
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 8);
    v27 = *(v26 + 24);
    v35 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[25] = v29;
    *v29 = v0;
    v29[1] = sub_261026C0C;
    v31 = v0[13];
    v30 = v0[14];

    return v35(v31, v30, ObjectType, v26);
  }

  else
  {
    v33 = v0[16];
    swift_unknownObjectRelease();

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_261027170(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return PASSourceFlowController.stepDidEndFlow(with:)(a1);
}

uint64_t sub_261027208(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASSourceFlowController.stepDidRequestReset(_:)(a1, a2);
}

uint64_t sub_2610272AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASSourceFlowController.stepDidRequestCancel(_:)(a1, a2);
}

uint64_t PASSourceFlowController.handleReset()()
{
  v1[5] = v0;
  sub_2610BCC74();
  v1[6] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2610273E8, v3, v2);
}

uint64_t sub_2610273E8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController handleReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[5];

  if (*(v5 + 32))
  {
    v6 = v0[6];

LABEL_14:
    v20 = v0[1];

    return v20(0);
  }

  v7 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
    v16 = v0[6];

    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_260F97000, v17, v18, "PASSourceFlowController presenter is nil in handleReset", v19, 2u);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v9 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 8);
  v12 = *(v11 + 32);
  swift_unknownObjectRetain();
  v21 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_2610276C8;

  return v21(ObjectType, v11);
}

uint64_t sub_2610276C8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26102780C, v5, v4);
}

uint64_t sub_26102780C()
{
  v1 = v0[9];
  v2 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(1);
}

uint64_t PASSourceFlowController.handleCancel()()
{
  *(v1 + 40) = v0;
  sub_2610BCC74();
  *(v1 + 48) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261027914, v3, v2);
}

uint64_t sub_261027914()
{
  v1 = v0[6];

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController handleCancel", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = v0[5];

  if ((*(v6 + 32) & 1) == 0)
  {
    v7 = v0[5];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0[5] + 24);
      *(v6 + 32) = 1;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      v11 = *(v10 + 40);
      swift_unknownObjectRetain();
      v11(ObjectType, v10);
      swift_unknownObjectRelease_n();
      v12 = 1;
      goto LABEL_12;
    }

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASSourceFlowController presenter is nil in handleCancel", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }
  }

  v12 = 0;
LABEL_12:
  v16 = v0[1];

  return v16(v12);
}

uint64_t PASSourceFlowController.handleEndFlow()()
{
  *(v1 + 16) = v0;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261027BC8, v3, v2);
}

uint64_t sub_261027BC8()
{
  v1 = v0[3];

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController handleEndFlow", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = v0[2];

  *(v6 + 32) = 1;
  v7 = v0[1];

  return v7(1);
}

uint64_t sub_261027CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASSourceFlowController.handleReset()();
}

uint64_t sub_261027D80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASSourceFlowController.handleCancel()();
}

uint64_t sub_261027E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBCD00;

  return PASSourceFlowController.handleEndFlow()();
}

unint64_t sub_261027E98()
{
  sub_2610289B4(v0, v15);
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v14 = v16;
  sub_260FA9918(v13, v11, &unk_27FE656D0, &unk_2610C0550);
  if (v12 == 1)
  {
    v1 = *&v11[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0x726F727245;
    *(inited + 40) = 0xE500000000000000;
    swift_getErrorValue();
    v3 = sub_2610BD4A4();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    v5 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63BA0, &qword_2610BED60);
  }

  else
  {
    v10[0] = v11[0];
    v10[1] = v11[1];
    v10[2] = v11[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_2610BF400;
    *(v6 + 32) = 0x746C75736552;
    *(v6 + 40) = 0xE600000000000000;
    v7 = PASSourceFlowResultSuccess.description.getter();
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 80) = &protocol witness table for String;
    *(v6 + 48) = v7;
    *(v6 + 56) = v8;
    v5 = sub_260FA8F34(v6);
    swift_setDeallocating();
    sub_260FA9980(v6 + 32, &qword_27FE63BA0, &qword_2610BED60);
    sub_261029488(v10);
  }

  sub_260FA9980(v13, &unk_27FE656D0, &unk_2610C0550);
  return v5;
}

unint64_t sub_26102809C()
{
  sub_2610289B4(v0, v2);
  sub_260FA9980(v2, &unk_27FE656D0, &unk_2610C0550);
  return 0xD000000000000026;
}

uint64_t sub_261028100(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2610294DC(&qword_27FE657A8, type metadata accessor for PASFlowStepSourceError);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v5 = sub_2610BC7B4();
  __swift_project_value_buffer(v5, qword_27FE65900);

  v6 = sub_2610BC794();
  v7 = sub_2610BCD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136446210;
    v26[3] = a1;
    v26[4] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_260F97000, v6, v7, "PASSourceFlowController presentStep: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = a2[3];
  if (!Strong)
  {
    v15 = sub_2610BC794();
    v16 = sub_2610BCD74();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_260F97000, v15, v16, "PASSourceFlowController presenter is nil in stepDidFinish", v17, 2u);
      MEMORY[0x2666F8720](v17, -1, -1);
    }
  }

  v18 = *a2;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v20 = result;
    v21 = a1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    *(v21 + 8) = v20;
    swift_unknownObjectWeakAssign();
    v22 = a2[6];
    a2[6] = a1;
    a2[7] = v4;

    result = swift_unknownObjectRelease();
    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v24 = *(v14 + 8);
      v25 = *(v24 + 8);
      swift_unknownObjectRetain();
      v25(a1, v4, ObjectType, v24);
      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261028440(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v8 = sub_2610BC7B4();
  __swift_project_value_buffer(v8, qword_27FE65900);
  swift_unknownObjectRetain();
  v9 = sub_2610BC794();
  v10 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = a3;
    v30[0] = swift_slowAlloc();
    v12 = v30[0];
    *v11 = 136446210;
    v30[1] = a1;
    v30[2] = a4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v13 = sub_2610BCA34();
    v15 = sub_260FA5970(v13, v14, v30);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_260F97000, v9, v10, "PASSourceFlowController presentStep: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v16 = v12;
    a3 = v29;
    MEMORY[0x2666F8720](v16, -1, -1);
    MEMORY[0x2666F8720](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = a2[3];
  if (!Strong)
  {
    v19 = sub_2610BC794();
    v20 = sub_2610BCD74();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_260F97000, v19, v20, "PASSourceFlowController presenter is nil in stepDidFinish", v21, 2u);
      MEMORY[0x2666F8720](v21, -1, -1);
    }
  }

  v22 = *(a4 + 24);
  v23 = swift_unknownObjectRetain();
  v22(v23, &protocol witness table for PASSourceFlowController, a3, a4);
  v24 = a2[6];
  a2[6] = a1;
  a2[7] = a4;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v27 = *(v18 + 8);
    v28 = *(v27 + 8);
    swift_unknownObjectRetain();
    v28(a1, a4, ObjectType, v27);
    return swift_unknownObjectRelease_n();
  }

  return result;
}

unint64_t sub_261028704()
{
  result = qword_27FE66E50;
  if (!qword_27FE66E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE66E50);
  }

  return result;
}

uint64_t sub_261028758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261022228(a1, v4, v5, v6);
}

uint64_t sub_26102880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
LABEL_10:
    }

    if (a5 != 3)
    {
      return result;
    }
  }

  else if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

    goto LABEL_10;
  }
}

uint64_t sub_2610288A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_261023250(a1, v4, v5, v7);
}

unint64_t sub_261028960()
{
  result = qword_27FE65B60;
  if (!qword_27FE65B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65B60);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261028A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_261025284(a1, v4, v5, v7);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261028B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261025C0C(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PASSourceFlowControllerProtocol.prepareFlow()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASSourceFlowControllerProtocol.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBF860;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASSourceFlowController.prepareFlow()()
{
  v2 = *(*v0 + 368);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FB6DB4;

  return v6();
}

uint64_t dispatch thunk of PASSourceFlowController.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 376);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FB6DB4;

  return v10(a1, a2);
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

uint64_t sub_261029240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_261029288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_2610292FC(void *a1)
{
  a1[1] = sub_261029334();
  a1[2] = sub_261029388();
  result = sub_2610293DC();
  a1[3] = result;
  return result;
}

unint64_t sub_261029334()
{
  result = qword_27FE65788;
  if (!qword_27FE65788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65788);
  }

  return result;
}

unint64_t sub_261029388()
{
  result = qword_27FE65790;
  if (!qword_27FE65790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65790);
  }

  return result;
}

unint64_t sub_2610293DC()
{
  result = qword_27FE65798;
  if (!qword_27FE65798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65798);
  }

  return result;
}

unint64_t sub_261029434()
{
  result = qword_27FE657A0;
  if (!qword_27FE657A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE657A0);
  }

  return result;
}

uint64_t sub_2610294DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_261029554(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a1;
  return sub_2610376A8;
}

uint64_t sub_2610295B8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF6563697665444BLL;
  v3 = *a1;
  v4 = 0xEE00746E756F6363;
  if (v3 == 1)
  {
    v4 = 0xEF6563697665444BLL;
  }

  if (*a1)
  {
    v5 = 0x41676E697373696DLL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x80000002610D1A50;
  }

  if (*a2 != 1)
  {
    v2 = 0xEE00746E756F6363;
  }

  if (*a2)
  {
    v7 = 0x41676E697373696DLL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x80000002610D1A50;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}