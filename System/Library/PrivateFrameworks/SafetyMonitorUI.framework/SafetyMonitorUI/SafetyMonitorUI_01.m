uint64_t sub_264624044(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v10 = sub_264783EE4();
  return a7(v10);
}

uint64_t sub_2646240F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v1;
    v17 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264794900, &v17);
    *(v10 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v10 + 24) = v16;

    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.showContactPicker.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *(a1 + 8) = *(a1 + 9);
  return sub_264624420;
}

uint64_t sub_264624448(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *a1;
  *(a1 + 9) = v7;

  v9 = sub_264783EE4();
  return a5(v9);
}

uint64_t sub_2646244E8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$showContactPicker.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$showContactPicker.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__showContactPicker;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.isCancelling.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SessionViewModel.isCancelling.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_2646249AC();
}

uint64_t sub_2646249AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315650;
    v17 = v1;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x6C65636E61437369, 0xEC000000676E696CLL, &v18);
    *(v10 + 22) = 1024;
    v15 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    swift_beginAccess();
    LODWORD(v15) = *(v1 + v15);

    *(v10 + 24) = v15;

    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.isCancelling.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_264624C88;
}

uint64_t sub_264624CA0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

id sub_264624CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v5)
  {
    goto LABEL_7;
  }

  if (![v5 isActiveState])
  {

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    return v5;
  }

  v0 = [v5 configuration];
  if (v0 && (v1 = v0, v2 = [v0 destination], v1, v2))
  {
    v3 = [v2 destinationType];

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t SessionViewModel.didDestinationChange.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264624F54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264624FFC(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v8;

  v11 = sub_264783EE4();
  return a7(v11);
}

void sub_2646250B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;

  v7 = sub_264783EE4();
  a4(v7);
}

uint64_t sub_26462513C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v1;
    v22 = v13;
    *v11 = 136315651;

    v14 = sub_264785764();
    v16 = sub_2646DF234(v14, v15, &v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0x7461636F4C646E65, 0xEB000000006E6F69, &v22);
    *(v11 + 22) = 2117;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v17 = v21;
    *(v11 + 24) = v21;
    *v12 = v17;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: endLocation was changed to %{sensitive}@", v11, 0x20u);
    sub_26460CD50(v12, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    return (*(v4 + 8))(v7, v20);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

void (*SessionViewModel.endLocation.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_2646254A0;
}

void sub_2646254C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v8;
  v9 = *(a1 + 16);
  v14 = v8;

  if (a2)
  {
    v10 = v14;
    v11 = sub_264783EE4();
    a5(v11);

    v12 = *a1;
  }

  else
  {
    v13 = sub_264783EE4();
    a5(v13);
    v12 = v14;
  }
}

uint64_t sub_2646255D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$endLocation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$endLocation.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__endLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

void sub_264625A04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v4)
  {
    goto LABEL_7;
  }

  if (![v4 isActiveState])
  {

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v3 = qword_264789920[v4];
    return;
  }

  v0 = [v4 configuration];
  if (v0 && (v1 = v0, v2 = [v0 destination], v1, v2))
  {
    [v2 radius];
  }

  else
  {
  }
}

uint64_t sub_264625C28()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v1;
    v21 = v11;
    *v10 = 136315651;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x80000002647948E0, &v21);
    *(v10 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    sub_264659D00();
    v15 = sub_264785964();
    v17 = v16;

    v18 = sub_2646DF234(v15, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: candidateSessionDestinations was changed to %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.candidateSessionDestinations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_264625F78;
}

uint64_t sub_264625FBC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D28, &qword_2647891A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$candidateSessionDestinations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D28, &qword_2647891A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$candidateSessionDestinations.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D28, &qword_2647891A8);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__candidateSessionDestinations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_264626414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646264B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v10 = sub_264783EE4();
  return a7(v10);
}

uint64_t sub_264626570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_264783EE4();
  return a4(v5);
}

uint64_t sub_2646265F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v1;
    v21 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000019, 0x80000002647948C0, &v21);
    *(v10 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v15 = MEMORY[0x26673F530](v20, MEMORY[0x277D837D0]);
    v17 = v16;

    v18 = sub_2646DF234(v15, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: mostLikelyReceiverHandles was changed to %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.mostLikelyReceiverHandles.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_264626934;
}

uint64_t sub_26462695C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v8;
  v9 = a1[2];

  if (a2)
  {

    v10 = sub_264783EE4();
    a5(v10);
    v11 = *a1;
  }

  else
  {
    v13 = sub_264783EE4();
    return (a5)(v13);
  }
}

uint64_t sub_264626A64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D30, &qword_2647891F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$mostLikelyReceiverHandles.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D30, &qword_2647891F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$mostLikelyReceiverHandles.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D30, &qword_2647891F8);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__mostLikelyReceiverHandles;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double SessionViewModel.expectedTravelTime.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264626F18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264627014();
}

uint64_t SessionViewModel.expectedTravelTime.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264627014();
}

uint64_t sub_264627014()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v1;
    v17 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000012, 0x80000002647948A0, &v17);
    *(v10 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v10 + 24) = v16;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: expectedTravelTime was changed to %f", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.expectedTravelTime.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_264627320;
}

uint64_t sub_264627320(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;
  v3 = a1[2];

  sub_264783EE4();
  return sub_264627014();
}

uint64_t sub_2646273BC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$expectedTravelTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$expectedTravelTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__expectedTravelTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.deviceClass.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264627870(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_2646278E8();
}

uint64_t sub_2646278E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v1;
    v20 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x6C43656369766564, 0xEB00000000737361, &v20);
    *(v10 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    type metadata accessor for UIUserInterfaceIdiom(0);
    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v20);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: deviceClass was changed to %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.deviceClass.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_264627C24;
}

uint64_t sub_264627C24(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;
  v3 = a1[2];

  sub_264783EE4();
  return sub_2646278E8();
}

uint64_t sub_264627CB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D48, &qword_264789258);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$deviceClass.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D48, &qword_264789258);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$deviceClass.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D48, &qword_264789258);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__deviceClass;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26462815C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v1;
    v17 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x6576697463417369, 0xEE00656369766544, &v17);
    *(v10 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v10 + 24) = v16;

    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: isActiveDevice was changed to %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.isActiveDevice.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *(a1 + 8) = *(a1 + 9);
  return sub_264628490;
}

uint64_t sub_2646284D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$isActiveDevice.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$isActiveDevice.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isActiveDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264628950()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v1;
    v17 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264794980, &v17);
    *(v10 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v10 + 24) = v16;

    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: isProcessingRemoteCommand was changed to %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.isProcessingRemoteCommand.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *(a1 + 8) = *(a1 + 9);
  return sub_264628C7C;
}

uint64_t sub_264628CC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$isProcessingRemoteCommand.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$isProcessingRemoteCommand.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isProcessingRemoteCommand;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646290EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

void sub_26462916C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_264629270();
}

uint64_t SessionViewModel.userSessionConfiguration.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_264629270();
}

void sub_264629270()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264785594();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2647855C4();
  v67 = *(v69 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v14 = sub_264783B64();
  v74 = *(v14 - 8);
  v75 = v14;
  v15 = *(v74 + 64);
  MEMORY[0x28223BE20](v14);
  v71 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264783E24();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  sub_264783DF4();
  swift_retain_n();
  v24 = sub_264783E14();
  v25 = sub_2647859F4();
  v26 = os_log_type_enabled(v24, v25);
  v73 = v2;
  v78 = v18;
  v79 = v17;
  v76 = v3;
  if (!v26)
  {

    v40 = *(v18 + 8);
    v40(v23, v17);
    v41 = v3;
    v37 = v77;
    v38 = v75;
    goto LABEL_9;
  }

  v27 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  v80 = v1;
  aBlock[0] = v65;
  *v27 = 136315906;

  v28 = sub_264785764();
  v30 = sub_2646DF234(v28, v29, aBlock);

  *(v27 + 4) = v30;
  *(v27 + 12) = 2080;
  *(v27 + 14) = sub_2646DF234(0xD000000000000018, 0x8000000264794880, aBlock);
  *(v27 + 22) = 2080;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  type metadata accessor for UserSessionConfiguration();
  v31 = sub_264785764();
  v33 = sub_2646DF234(v31, v32, aBlock);

  *(v27 + 24) = v33;
  *(v27 + 32) = 1024;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v34 = v80;
  if (!v80)
  {

    v37 = v77;
    v36 = v78;
    v38 = v75;
    goto LABEL_7;
  }

  v35 = [v80 isActiveState];

  v37 = v77;
  v36 = v78;
  v38 = v75;
  if ((v35 & 1) == 0)
  {
LABEL_7:
    v39 = 0;
    goto LABEL_8;
  }

  v39 = 1;
LABEL_8:
  *(v27 + 34) = v39;

  _os_log_impl(&dword_264605000, v24, v25, "%s, %s: New user session configuration set, %s, hasActiveSession, %{BOOL}d", v27, 0x26u);
  v42 = v65;
  swift_arrayDestroy();
  MEMORY[0x266740650](v42, -1, -1);
  MEMORY[0x266740650](v27, -1, -1);

  v40 = *(v36 + 8);
  v40(v23, v79);
  v41 = v76;
LABEL_9:
  v43 = v74;
  SessionViewModel.currentSessionID.getter(v13);
  if ((*(v43 + 48))(v13, 1, v38) == 1)
  {
    sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
  }

  else
  {
    v44 = v40;
    v45 = v43;
    v46 = *(v43 + 32);
    v47 = v71;
    v46(v71, v13, v38);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v48 = aBlock[0];
    v49 = v72;
    v46(v72, v47, v38);
    (*(v45 + 56))(v49, 0, 1, v38);
    v40 = v44;
    v41 = v76;
    v37 = v77;
    v50 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
    swift_beginAccess();
    sub_264659660(v49, v48 + v50, &qword_27FF75CE8, &unk_264788B70);
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  type metadata accessor for UserSessionConfiguration();
  sub_264655E3C(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
  v51 = sub_264783E64();

  aBlock[0] = v51;
  swift_allocObject();
  swift_weakInit();
  sub_264783E84();
  sub_264783F14();

  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();

  sub_264783DF4();

  v52 = sub_264783E14();
  v53 = sub_2647859F4();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v80 = v1;
    aBlock[0] = v55;
    *v54 = 136315394;

    v56 = sub_264785764();
    v58 = sub_2646DF234(v56, v57, aBlock);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_2646DF234(0xD000000000000018, 0x8000000264794880, aBlock);
    _os_log_impl(&dword_264605000, v52, v53, "%s, %s: New user session configuration set.", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v55, -1, -1);
    MEMORY[0x266740650](v54, -1, -1);
  }

  v40(v37, v79);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v59 = aBlock[0];
  if (aBlock[0])
  {
    if ([aBlock[0] isActiveState])
    {
    }

    else
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v60 = sub_264785A44();
      aBlock[4] = sub_264659CF8;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_627;
      v61 = _Block_copy(aBlock);

      v62 = v66;
      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      v63 = v68;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v62, v63, v61);
      _Block_release(v61);

      (*(v70 + 8))(v63, v41);
      (*(v67 + 8))(v62, v69);
    }
  }
}

id SessionViewModel.hasActiveSession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v2)
  {
    return 0;
  }

  v0 = [v2 isActiveState];

  return v0;
}

uint64_t sub_264629EA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for SessionViewModel(0);
    sub_264655E3C(&qword_27FF75DC0, type metadata accessor for SessionViewModel);
    sub_264783E64();

    sub_264783E74();
  }

  return result;
}

void sub_264629F5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  v0 = v1;

  sub_264783EE4();
  sub_26462513C();
}

uint64_t (*SessionViewModel.userSessionConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_26462A108;
}

uint64_t sub_26462A108(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1[2];
  if (a2)
  {
    swift_retain_n();

    sub_264783EE4();
    sub_264629270();

    v6 = *a1;
  }

  else
  {
    v7 = a1[2];

    sub_264783EE4();
    sub_264629270();
  }
}

uint64_t sub_26462A214(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D50, &qword_2647892A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$userSessionConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D50, &qword_2647892A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$userSessionConfiguration.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D50, &qword_2647892A8);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__userSessionConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26462A654()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_26462A724()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v1;
    v20 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264794850, &v20);
    *(v10 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v19)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v19)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_2646DF234(v15, v16, &v20);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: fetchedMostLikelySessionDestinations was changed to %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.fetchedMostLikelySessionDestinations.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *(a1 + 8) = *(a1 + 9);
  return sub_26462AA6C;
}

uint64_t sub_26462AAB0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_26462AB28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_26462ABA4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$fetchedMostLikelySessionDestinations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$fetchedMostLikelySessionDestinations.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__fetchedMostLikelySessionDestinations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

void sub_26462AFD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_264783EB4();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_264783EB4();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t SessionViewModel.endLocationAnnotations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v0 = [v2 placemark];

  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  result = swift_allocObject();
  *(result + 16) = xmmword_264788990;
  *(result + 32) = v0;
  return result;
}

id sub_26462B210()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v0 = v14;
  if (!v14)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v1 = *(v14 + 16);

  if (!v1)
  {

    return 0;
  }

  v2 = *(v14 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_264785D54();
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = objc_allocWithZone(MEMORY[0x277D4AAE8]);

      v7 = sub_264785714();

      v8 = sub_2647857E4();
      [v6 initWithPrimaryHandle:v7 secondaryHandles:v8];

      sub_264785D34();
      v9 = *(v15 + 16);
      sub_264785D64();
      sub_264785D74();
      sub_264785D44();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
  v11 = sub_2647857E4();

  if (v16)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D4AA98]) initWithReceiverHandles:v11 identifier:v12 displayName:0];

  return v13;
}

uint64_t SessionViewModel.recipientContacts.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v1 = v12;
  if (!v12)
  {
    return 0;
  }

  v2 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 32);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = sub_264785714();

      v9 = [v4 contactWith_];

      MEMORY[0x26673F500]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_264785814();
      }

      sub_264785844();
      v5 += 2;
      --v3;
    }

    while (v3);
    v2 = v13;
  }

  return v2;
}

uint64_t SessionViewModel.recipientsDisplayNameFromLocalConversation.getter()
{
  sub_264783D04();
  v0 = sub_26462B210();
  v1 = MEMORY[0x26673DA20]();

  return v1;
}

id SessionViewModel.localConversationIsGroup.getter()
{
  v0 = sub_26462B210();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isGroup];

  return v2;
}

uint64_t SessionViewModel.isActiveSessionForRecipient.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v8 = v39;
  if (v39)
  {
    v9 = [v39 sessionState];

    if (v9 == 1)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v11 = v39;
  if (v39)
  {
    v12 = [v39 configuration];

    if (v12)
    {
      v13 = [v12 conversation];

      if (v13)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        if (v39)
        {
          sub_264655868(v39);

          v14 = sub_264785944();

          v15 = [v13 hasEqualPrimaryHandlesAsSet_];

          return v15;
        }
      }
    }
  }

  sub_264783DF4();

  v16 = sub_264783E14();
  v17 = sub_2647859D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v1;
    v39 = v37;
    *v18 = 136315906;

    v19 = sub_264785764();
    v21 = sub_2646DF234(v19, v20, &v39);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x8000000264793800, &v39);
    *(v18 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v22 = v38;
    if (v38 && (v23 = [v38 configuration], v22, v23))
    {
      v24 = [v23 conversation];

      v25 = [v24 description];
      v26 = sub_264785724();
      v28 = v27;

      v29 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    v30 = sub_2646DF234(v29, v28, &v39);

    *(v18 + 24) = v30;
    *(v18 + 32) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v38)
    {
      v31 = MEMORY[0x26673F530](v38, MEMORY[0x277D837D0]);
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = sub_2646DF234(v31, v33, &v39);

    *(v18 + 34) = v34;
    _os_log_impl(&dword_264605000, v16, v17, "%s, %s, No session conversation,%s, or recipientHandles, %s", v18, 0x2Au);
    v35 = v37;
    swift_arrayDestroy();
    MEMORY[0x266740650](v35, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

uint64_t sub_26462BC54(uint64_t a1, unint64_t a2)
{
  v23 = a2;
  v3 = sub_264785594();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2647855C4();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2647855A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D851B8], v11);
  v16 = sub_264785A64();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  v19 = v23;
  v18 = v24;
  v17[2] = a1;
  v17[3] = v19;
  v17[4] = v18;
  aBlock[4] = sub_264659440;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_545;
  v20 = _Block_copy(aBlock);
  sub_26465944C(a1, v19);

  sub_2647855B4();
  v27 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v10, v6, v20);
  _Block_release(v20);

  (*(v26 + 8))(v6, v3);
  (*(v7 + 8))(v10, v25);
}

uint64_t SessionViewModel.activeSessionRecipientContacts.getter()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v2 = v7;
  if (v7)
  {
    v3 = [v7 configuration];

    if (v3)
    {
      v2 = [v3 conversation];
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = [v1 activeSessionRecipientContactsFor_];

  sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
  v5 = sub_2647857F4();

  return v5;
}

uint64_t SessionViewModel.activeSessionGroupID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v5)
  {
    return 0;
  }

  v0 = [v5 configuration];

  if (!v0)
  {
    return 0;
  }

  v1 = [v0 conversation];

  v2 = [v1 identifier];
  if (!v2)
  {
    return 0;
  }

  v3 = sub_264785724();

  return v3;
}

id SessionViewModel.smSessionStartMessage()()
{
  v1 = v0;
  v126 = *v0;
  v2 = sub_264783AF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v131 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v116 - v7;
  v9 = sub_264783B64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v130 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_264783E24();
  v132 = *(v129 - 8);
  v13 = *(v132 + 64);
  v14 = MEMORY[0x28223BE20](v129);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v118 = &v116 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v127 = &v116 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v124 = &v116 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v123 = &v116 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v116 - v25;
  v27 = sub_26461A57C();
  if (v27)
  {
    v28 = v27;
    v125 = v8;
    v121 = v3;
    sub_264783DF4();

    v29 = v0;
    v30 = v28;
    v31 = sub_264783E14();
    v32 = sub_2647859F4();

    v33 = os_log_type_enabled(v31, v32);
    v128 = v30;
    v122 = v2;
    v119 = v10;
    v120 = v9;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v133[0] = v117;
      *v34 = 136315650;
      v135 = v29;

      v36 = sub_264785764();
      v38 = sub_2646DF234(v36, v37, v133);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v133);
      *(v34 + 22) = 2112;
      *(v34 + 24) = v30;
      *v35 = v28;
      v39 = v30;
      _os_log_impl(&dword_264605000, v31, v32, "%s, %s: sessionConfiguration: %@", v34, 0x20u);
      sub_26460CD50(v35, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v35, -1, -1);
      v40 = v117;
      swift_arrayDestroy();
      MEMORY[0x266740650](v40, -1, -1);
      MEMORY[0x266740650](v34, -1, -1);
    }

    v41 = *(v132 + 8);
    v42 = v129;
    v41(v26, v129);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v43 = v133[0];
    v44 = v29;
    if (v133[0] && (v45 = [v133[0] configuration], v43, v45))
    {
      v46 = [v45 conversation];

      v47 = v127;
      v48 = v128;
    }

    else
    {
      v49 = v123;
      sub_264783DF4();

      v50 = sub_264783E14();
      v51 = sub_2647859D4();

      v52 = os_log_type_enabled(v50, v51);
      v47 = v127;
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v133[0] = v54;
        *v53 = 136315394;
        v135 = v29;

        v55 = sub_264785764();
        v56 = v42;
        v57 = v49;
        v59 = sub_2646DF234(v55, v58, v133);

        *(v53 + 4) = v59;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v133);
        _os_log_impl(&dword_264605000, v50, v51, "%s, %s: sessionMessage, missing receiverHandle", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v54, -1, -1);
        v60 = v53;
        v47 = v127;
        MEMORY[0x266740650](v60, -1, -1);

        v61 = v57;
        v42 = v56;
        v41(v61, v56);
      }

      else
      {

        v41(v49, v42);
      }

      v48 = v128;
    }

    v70 = v124;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v134)
    {
    }

    else
    {
      sub_264783DF4();

      v71 = sub_264783E14();
      v72 = sub_2647859B4();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v133[0] = v74;
        *v73 = 136315394;
        v135 = v29;

        v75 = sub_264785764();
        v77 = sub_2646DF234(v75, v76, v133);

        *(v73 + 4) = v77;
        v48 = v128;
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v133);
        _os_log_impl(&dword_264605000, v71, v72, "%s, %s: sessionMessage, missing initiatorInvitationTokenMap", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v74, -1, -1);
        v78 = v73;
        v47 = v127;
        MEMORY[0x266740650](v78, -1, -1);
      }

      v41(v70, v42);
    }

    v79 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    if ([v48 sessionType] == 2)
    {
      v80 = [v48 destination];
      if (v80)
      {
        v81 = v80;
        v82 = [v80 destinationMapItem];

        v83 = sub_264783A14();
        v85 = v84;

        sub_264783DF4();

        v86 = sub_264783E14();
        v87 = sub_2647859F4();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v124 = v41;
          v90 = v89;
          v133[0] = v89;
          *v88 = 136315394;
          v135 = v29;

          v91 = sub_264785764();
          v93 = sub_2646DF234(v91, v92, v133);
          v48 = v128;

          *(v88 + 4) = v93;
          *(v88 + 12) = 2080;
          *(v88 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v133);
          _os_log_impl(&dword_264605000, v86, v87, "%s, %s: created destinationMapItemHandle", v88, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v90, -1, -1);
          MEMORY[0x266740650](v88, -1, -1);

          (v124)(v127, v129);
        }

        else
        {

          v41(v47, v129);
        }

        v79 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
        goto LABEL_30;
      }

      v94 = v118;
      sub_264783DF4();

      v95 = sub_264783E14();
      v96 = sub_2647859D4();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v133[0] = v98;
        *v97 = 136315394;
        v135 = v44;

        v99 = sub_264785764();
        v124 = v41;
        v101 = sub_2646DF234(v99, v100, v133);

        *(v97 + 4) = v101;
        v48 = v128;
        *(v97 + 12) = 2080;
        *(v97 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v133);
        _os_log_impl(&dword_264605000, v95, v96, "%s, %s: missing destinationMapItemHandle", v97, 0x16u);
        swift_arrayDestroy();
        v102 = v98;
        v79 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
        MEMORY[0x266740650](v102, -1, -1);
        MEMORY[0x266740650](v97, -1, -1);

        (v124)(v94, v42);
      }

      else
      {

        v41(v94, v42);
      }
    }

    v83 = 0;
    v85 = 0xF000000000000000;
LABEL_30:
    v103 = [v48 sessionID];
    sub_264783B44();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (!v134)
    {
      sub_264655A9C(MEMORY[0x277D84F90], &qword_27FF75F50, &qword_2647898F8);
    }

    v104 = [v48 v79[71]];
    SessionViewModel.endDate.getter();
    SessionViewModel.coarseEndDate.getter(v131);
    v105 = [v48 destination];
    if (v105)
    {
      v106 = v105;
      v107 = [v105 destinationType];
    }

    else
    {
      v107 = 0;
    }

    v108 = sub_264783B14();
    sub_264659B70(0, &qword_27FF75D58, 0x277CBC2C0);
    v109 = sub_264785604();

    v110 = sub_264783A64();
    v111 = sub_264783A64();
    v112 = 0;
    if (v85 >> 60 != 15)
    {
      v112 = sub_264783A04();
      sub_264655900(v83, v85);
    }

    v69 = [objc_allocWithZone(MEMORY[0x277D4ABE8]) initWithSessionID:v108 invitationTokenDict:v109 sessionType:v104 estimatedEndTime:v110 coarseEstimatedEndTime:v111 destinationType:v107 destinationMapItem:v112 lowPowerModeWarningState:0];

    v113 = v122;
    v114 = *(v121 + 8);
    v114(v131, v122);
    v114(v125, v113);
    (*(v119 + 8))(v130, v120);
    return v69;
  }

  sub_264783DF4();

  v62 = sub_264783E14();
  v63 = sub_2647859D4();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v133[0] = v65;
    *v64 = 136315394;
    v135 = v1;

    v66 = sub_264785764();
    v68 = sub_2646DF234(v66, v67, v133);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v133);
    _os_log_impl(&dword_264605000, v62, v63, "%s, %s: missing sessionConfiguration", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v65, -1, -1);
    MEMORY[0x266740650](v64, -1, -1);
  }

  (*(v132 + 8))(v16, v129);
  return 0;
}

uint64_t SessionViewModel.initiatorInvitationTokenMap.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t SessionViewModel.endDate.getter()
{
  v0 = sub_264783AF4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v3 == 2)
  {
    sub_264713490();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();
  }

  sub_264783AD4();
  return sub_264783A24();
}

uint64_t SessionViewModel.coarseEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v14 = sub_264783AF4();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v14);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v9 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v9 == 2)
  {
    sub_264713490();

    sub_264783AD4();
    sub_264783A24();
    v6 = v8;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    sub_264783AD4();
    sub_264783A24();
  }

  v10 = sub_264783A64();
  v11 = [v10 roundedTime];

  sub_264783AC4();
  return (*(v1 + 8))(v6, v14);
}

uint64_t SessionViewModel.endDateString.getter()
{
  v0 = sub_264783AF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionViewModel.endDate.getter();
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  v6 = sub_264783A64();
  v7 = [v5 stringFromDate_];

  v8 = sub_264785724();
  (*(v1 + 8))(v4, v0);
  return v8;
}

BOOL SessionViewModel.isInitiatorEligible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1 == 1;
}

BOOL SessionViewModel.isReceiverEligible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1 == 1;
}

BOOL SessionViewModel.isReady.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v3)
  {
    v0 = [v3 isActiveState];

    if (v0)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v3)
  {
    return 0;
  }

  v2 = [v3 sessionState];

  return v2 == 11;
}

BOOL SessionViewModel.hasInitiatorInvitationToken.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_26462DB64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v3 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    sub_264713490();
    if (v0)
    {
      v1 = sub_2647138C4();

      if (!v1)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

BOOL sub_26462DD54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v3)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v2)
  {
    return 0;
  }

  v1 = [v2 sessionState];

  return v1 == 10;
}

uint64_t sub_26462DE48()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  if (*(v0 + v1) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(), , , v5 == 1))
  {
    v2 = sub_26462DB64();
  }

  else
  {
    v2 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v5 || (v3 = [v5 sessionState], v5, v3 != 11))
  {
    v2 = 0;
  }

  return v2 & 1;
}

Swift::Void __swiftcall SessionViewModel.prepareForConfigurationPresentation()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    v16 = v15;
    sub_264783DF4();
    v17 = v16;

    v18 = sub_264783E14();
    v19 = sub_2647859F4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v61 = v4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v62 = v3;
      v23 = v22;
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v21 = 136315651;
      aBlock[6] = v1;

      v24 = sub_264785764();
      v26 = sub_2646DF234(v24, v25, aBlock);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, aBlock);
      *(v21 + 22) = 2117;
      *(v21 + 24) = v17;
      *v23 = v15;
      v27 = v17;
      _os_log_impl(&dword_264605000, v18, v19, "%s, %s: - picking up suggestedSessionConfig and setting UserSessionConfiguration, %{sensitive}@", v21, 0x20u);
      sub_26460CD50(v23, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v23, -1, -1);
      v28 = v60;
      swift_arrayDestroy();
      MEMORY[0x266740650](v28, -1, -1);
      MEMORY[0x266740650](v21, -1, -1);

      (*(v61 + 8))(v13, v62);
    }

    else
    {

      (*(v4 + 8))(v13, v3);
    }

    v40 = v17;
    v41 = _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo09SMSessionF0C_tcfC_0(v40);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v42 = _s15SafetyMonitorUI24UserSessionConfigurationC2eeoiySbAC_ACtFZ_0();

    if (v42)
    {

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v41;

    sub_264783EE4();
    sub_264629270();

    goto LABEL_26;
  }

  v29 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
  swift_beginAccess();
  v30 = *(v1 + v29);
  if (v30)
  {
    v62 = v3;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_264783ED4();

    v31 = aBlock[0];
    sub_264783DF4();

    v32 = sub_264783E14();
    v33 = sub_2647859F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v61 = v4;
      v35 = v34;
      v36 = swift_slowAlloc();
      v63 = v1;
      aBlock[0] = v36;
      *v35 = 136315650;

      v37 = sub_264785764();
      v39 = sub_2646DF234(v37, v38, aBlock);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, aBlock);
      *(v35 + 22) = 2048;
      *(v35 + 24) = v31;
      _os_log_impl(&dword_264605000, v32, v33, "%s, %s: - picking up workoutSessionConfiguration and setting UserSessionConfiguration, activity type: %lu", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v36, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);

      (*(v61 + 8))(v11, v62);
    }

    else
    {

      (*(v4 + 8))(v11, v62);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v54 = _s15SafetyMonitorUI24UserSessionConfigurationC2eeoiySbAC_ACtFZ_0();

    if (!v54)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v30;

      sub_264783EE4();
      sub_264629270();
    }

    goto LABEL_26;
  }

  v43 = v4;
  sub_264783DF4();
  swift_retain_n();
  v44 = sub_264783E14();
  v45 = sub_2647859F4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v63 = v1;
    aBlock[0] = v47;
    *v46 = 136315650;

    v48 = sub_264785764();
    v50 = sub_2646DF234(v48, v49, aBlock);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, aBlock);
    *(v46 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v51 = v63;
    if (v63)
    {
      v52 = [v63 isActiveState];

      if (v52)
      {
        v53 = 1;
LABEL_22:
        *(v46 + 24) = v53;

        _os_log_impl(&dword_264605000, v44, v45, "%s, %s: - There is no suggested configuration, hasActiveSession, %{BOOL}d.", v46, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266740650](v47, -1, -1);
        MEMORY[0x266740650](v46, -1, -1);

        goto LABEL_23;
      }
    }

    else
    {
    }

    v53 = 0;
    goto LABEL_22;
  }

LABEL_23:
  (*(v43 + 8))(v8, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v55 = aBlock[0];
  if (!aBlock[0] || (v56 = [aBlock[0] isActiveState], v55, (v56 & 1) == 0))
  {
    v57 = v1[2];
    v58 = swift_allocObject();
    v58[2] = v1;
    v58[3] = sub_264655914;
    v58[4] = v1;
    aBlock[4] = sub_264655938;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0C0;
    aBlock[3] = &block_descriptor_203;
    v59 = _Block_copy(aBlock);
    swift_retain_n();

    [v57 fetchCurrentWorkoutSnapshotWithCompletion_];
    _Block_release(v59);
LABEL_26:
  }
}

uint64_t sub_26462E928(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v49 = a2;
  v9 = *a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - v12;
  v14 = sub_264783E24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  if (![objc_opt_self() zelkovaKahanaEnabled] || (a1 & 1) == 0)
  {
    sub_264783DF4();
    swift_retain_n();
    v33 = sub_264783E14();
    v34 = sub_2647859F4();
    if (!os_log_type_enabled(v33, v34))
    {

LABEL_15:
      (*(v15 + 8))(v19, v14);
      v43 = sub_26471B978();
      goto LABEL_16;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = a5;
    v51 = v36;
    *v35 = 136315650;

    v37 = sub_264785764();
    v39 = sub_2646DF234(v37, v38, &v51);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, &v51);
    *(v35 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v40 = v50;
    if (v50)
    {
      v41 = [v50 isActiveState];

      if (v41)
      {
        v42 = 1;
LABEL_14:
        *(v35 + 24) = v42;

        _os_log_impl(&dword_264605000, v33, v34, "%s, %s: - Setting initial configuration to the default one hour session since hasActiveSession is %{BOOL}d.", v35, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266740650](v36, -1, -1);
        MEMORY[0x266740650](v35, -1, -1);

        goto LABEL_15;
      }
    }

    else
    {
    }

    v42 = 0;
    goto LABEL_14;
  }

  sub_264783DF4();

  v22 = sub_264783E14();
  v23 = sub_2647859F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v47 = v14;
    v25 = v24;
    v46 = swift_slowAlloc();
    v50 = a5;
    v51 = v46;
    *v25 = 136315650;

    v26 = sub_264785764();
    v28 = sub_2646DF234(v26, v27, &v51);
    v48 = a3;
    v29 = v15;
    v30 = a4;
    v31 = v28;

    *(v25 + 4) = v31;
    a4 = v30;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, &v51);
    *(v25 + 22) = 2048;
    *(v25 + 24) = v48;
    _os_log_impl(&dword_264605000, v22, v23, "%s, %s: - Currently in workout, workout activity type, %lu", v25, 0x20u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x266740650](v32, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);

    (*(v29 + 8))(v21, v47);
    a3 = v48;
  }

  else
  {

    (*(v15 + 8))(v21, v14);
  }

  sub_26460CCE8(v49, v13, &qword_27FF75CE8, &unk_264788B70);
  v43 = _s15SafetyMonitorUI24UserSessionConfigurationC07workoutE2ID0G12ActivityType0geJ0AC10Foundation4UUIDVSg_So09HKWorkoutiJ0VSo0meJ0VtcfC_0(v13, a3, a4);
LABEL_16:
  v44 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v44;

  sub_264783EE4();
  sub_264629270();
}

void SessionViewModel.fetchIsCurrentlyInWorkout(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v8[4] = sub_264659FB0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26465A0C0;
  v8[3] = &block_descriptor_210;
  v7 = _Block_copy(v8);

  [v5 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v7);
}

uint64_t SessionViewModel.isInitiatorLoading.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v27 = v3;
    v11 = v10;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v11 = 136316931;
    v28 = v1;

    v12 = sub_264785764();
    v25 = v9;
    v14 = sub_2646DF234(v12, v13, &v30);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD000000000000012, 0x80000002647938A0, &v30);
    *(v11 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v15 = v28;

    *(v11 + 24) = v15;

    *(v11 + 32) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v16 = v29;

    *(v11 + 34) = v16;

    *(v11 + 42) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v11 + 44) = v28;

    *(v11 + 48) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v11 + 50) = v28;

    *(v11 + 54) = 1024;
    v17 = sub_26462DB64();

    *(v11 + 56) = v17 & 1;

    *(v11 + 60) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v18 = sub_264785764();
    v20 = sub_2646DF234(v18, v19, &v30);

    *(v11 + 62) = v20;
    _os_log_impl(&dword_264605000, v8, v25, "%s, %s: initiatorEligibility, %ld, receiverEligibility, %ld, fetchedMostLikelySessionDestinations, %{BOOL}d, isInitializing, %{BOOL}d, missingETA, %{BOOL}d, sessionState, %{sensitive}s", v11, 0x46u);
    v21 = v26;
    swift_arrayDestroy();
    MEMORY[0x266740650](v21, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v4 + 8))(v7, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  if (sub_26462DD54())
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_26462DE48();
  }

  return v22 & 1;
}

uint64_t SessionViewModel.sendStartMessageValidity.getter@<X0>(NSObject **a1@<X8>)
{
  v2 = v1;
  v291 = a1;
  v3.isa = v1->isa;
  v4 = sub_264783C74();
  v5 = *(v4 - 8);
  v292 = v4;
  v293 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783E24();
  v10 = *(v9 - 8);
  v289 = v9;
  v290 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v280 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v280 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v280 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v280 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v287 = (&v280 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v280 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v286 = (&v280 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v285 = (&v280 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v284 = (&v280 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v283 = &v280 - v36;
  MEMORY[0x28223BE20](v35);
  v282 = &v280 - v37;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v38 = v294;
  if (!v294)
  {
    goto LABEL_9;
  }

  isa = v3.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v294 || (v39 = v294[2].isa, , !v39))
  {

LABEL_9:
    v61 = v14;
    sub_264783DF4();

    v62 = sub_264783E14();
    v63 = sub_2647859D4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      isa = v61;
      LODWORD(v286) = v63;
      v65 = v64;
      v287 = swift_slowAlloc();
      v294 = v287;
      *v65 = 136315650;
      v297 = v2;

      v66 = sub_264785764();
      v68 = sub_2646DF234(v66, v67, &v294);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
      *(v65 + 22) = 2080;
      v69 = *MEMORY[0x277D4AA08];
      v70 = v8;
      v72 = v292;
      v71 = v293;
      v73 = *(v293 + 104);
      v73(v70, v69, v292);
      v74 = sub_264783C24();
      v76 = v75;
      (*(v71 + 8))(v70, v72);
      v77 = sub_2646DF234(v74, v76, &v294);

      *(v65 + 24) = v77;
      _os_log_impl(&dword_264605000, v62, v286, "%s, %s: no receiver, User string: %s", v65, 0x20u);
      v78 = v287;
      swift_arrayDestroy();
      MEMORY[0x266740650](v78, -1, -1);
      MEMORY[0x266740650](v65, -1, -1);

      (*(v290 + 8))(isa, v289);
      goto LABEL_14;
    }

    (*(v290 + 8))(v61, v289);
    v69 = *MEMORY[0x277D4AA08];
    v73 = *(v293 + 104);
    goto LABEL_13;
  }

  if (([objc_opt_self() zelkovaGroupEnabled] & 1) == 0 && v38[2].isa > 1)
  {
    sub_264783DF4();

    v40 = sub_264783E14();
    v41 = sub_2647859D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v8;
      v43 = swift_slowAlloc();
      v287 = swift_slowAlloc();
      v294 = v287;
      *v43 = 136315906;
      v297 = v2;

      v44 = sub_264785764();
      v46 = sub_2646DF234(v44, v45, &v294);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
      *(v43 + 22) = 2048;
      v47 = v38[2].isa;

      *(v43 + 24) = v47;

      *(v43 + 32) = 2080;
      v48 = *MEMORY[0x277D4AA50];
      LODWORD(isa) = v41;
      v49 = v293;
      v50 = *(v293 + 104);
      v51 = v42;
      v52 = v42;
      v53 = v292;
      v50(v52, v48, v292);
      v286 = v40;
      v54 = v51;
      v55 = sub_264783C24();
      v57 = v56;
      (*(v49 + 8))(v54, v53);
      v58 = sub_2646DF234(v55, v57, &v294);

      *(v43 + 34) = v58;
      v59 = v286;
      _os_log_impl(&dword_264605000, v286, isa, "%s, %s: group chat, handle count, %ld, User string: %s", v43, 0x2Au);
      v60 = v287;
      swift_arrayDestroy();
      MEMORY[0x266740650](v60, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);

      (*(v290 + 8))(v17, v289);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v290 + 8))(v17, v289);
      v48 = *MEMORY[0x277D4AA50];
      v53 = v292;
      v50 = *(v293 + 104);
    }

    return (v50)(v291, v48, v53);
  }

  v281 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v83 = v294;
  if (v294)
  {
    v84 = [v294 isActiveState];

    if (v84)
    {

      sub_264783DF4();

      v85 = sub_264783E14();
      v86 = sub_2647859D4();

      v87 = os_log_type_enabled(v85, v86);
      v88 = v293;
      if (v87)
      {
        v89 = swift_slowAlloc();
        v287 = swift_slowAlloc();
        v294 = v287;
        *v89 = 136315650;
        v297 = v2;

        v90 = sub_264785764();
        LODWORD(isa) = v86;
        v92 = sub_2646DF234(v90, v91, &v294);

        *(v89 + 4) = v92;
        *(v89 + 12) = 2080;
        *(v89 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
        *(v89 + 22) = 2080;
        v93 = *MEMORY[0x277D4AA30];
        v94 = *(v88 + 104);
        v95 = v281;
        v96 = v292;
        v94(v281, v93, v292);
        v97 = sub_264783C24();
        v286 = v85;
        v98 = v97;
        v100 = v99;
        (*(v88 + 8))(v95, v96);
        v101 = sub_2646DF234(v98, v100, &v294);

        *(v89 + 24) = v101;
        v102 = v286;
        _os_log_impl(&dword_264605000, v286, isa, "%s, %s: session is already active, User string: %s", v89, 0x20u);
        v103 = v287;
        swift_arrayDestroy();
        MEMORY[0x266740650](v103, -1, -1);
        MEMORY[0x266740650](v89, -1, -1);

        (*(v290 + 8))(v20, v289);
      }

      else
      {

        (*(v290 + 8))(v20, v289);
        v93 = *MEMORY[0x277D4AA30];
        v94 = *(v88 + 104);
        v96 = v292;
      }

      return (v94)(v291, v93, v96);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v104 = v294;

  v106 = v292;
  v105 = v293;
  if (v104 != 1)
  {

    sub_264783DF4();
    swift_retain_n();
    v114 = sub_264783E14();
    v115 = sub_2647859D4();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v287 = swift_slowAlloc();
      v297 = v287;
      *v116 = 136315906;
      v294 = v2;

      v117 = sub_264785764();
      v119 = sub_2646DF234(v117, v118, &v297);

      *(v116 + 4) = v119;
      *(v116 + 12) = 2080;
      *(v116 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v297);
      *(v116 + 22) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v120 = v294;

      *(v116 + 24) = v120;
      v121 = v292;

      *(v116 + 32) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v122 = v294;

      v123 = v281;
      *v281 = v122;
      (*(v293 + 104))(v123, *MEMORY[0x277D4AA28], v121);
      v124 = sub_264783C24();
      v126 = v125;
      (*(v293 + 8))(v123, v121);
      v127 = sub_2646DF234(v124, v126, &v297);

      *(v116 + 34) = v127;
      _os_log_impl(&dword_264605000, v114, v115, "%s, %s: initiator not eligible, %ld, User string: %s", v116, 0x2Au);
      v128 = v287;
      swift_arrayDestroy();
      v105 = v293;
      MEMORY[0x266740650](v128, -1, -1);
      MEMORY[0x266740650](v116, -1, -1);

      (*(v290 + 8))(v23, v289);
    }

    else
    {

      (*(v290 + 8))(v23, v289);
      v150 = *MEMORY[0x277D4AA28];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v151 = v294;

    *v291 = v151;
    v152 = *(v105 + 104);
    return v152();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v107 = v295;

  if (v107 == 1)
  {
    v108 = sub_26461A57C();
    if (!v108)
    {

      sub_264783DF4();

      v157 = sub_264783E14();
      v158 = sub_2647859D4();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v287 = swift_slowAlloc();
        v294 = v287;
        *v159 = 136315650;
        v297 = v2;

        v160 = sub_264785764();
        LODWORD(isa) = v158;
        v162 = sub_2646DF234(v160, v161, &v294);

        *(v159 + 4) = v162;
        *(v159 + 12) = 2080;
        *(v159 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
        *(v159 + 22) = 2080;
        v163 = *MEMORY[0x277D4AA10];
        v73 = *(v105 + 104);
        v164 = v281;
        v165 = v292;
        v73(v281, v163, v292);
        v166 = sub_264783C24();
        v286 = v157;
        v167 = v166;
        v169 = v168;
        (*(v105 + 8))(v164, v165);
        v170 = sub_2646DF234(v167, v169, &v294);

        *(v159 + 24) = v170;
        v171 = v286;
        _os_log_impl(&dword_264605000, v286, isa, "%s, %s: sessionConfiguration is nil, User string: %s", v159, 0x20u);
        v172 = v287;
        swift_arrayDestroy();
        MEMORY[0x266740650](v172, -1, -1);
        MEMORY[0x266740650](v159, -1, -1);

        (*(v290 + 8))(v28, v289);
      }

      else
      {

        (*(v290 + 8))(v28, v289);
        v163 = *MEMORY[0x277D4AA10];
        v73 = *(v105 + 104);
        v165 = v292;
      }

      v79 = v291;
      v80 = v163;
      v81 = v165;
      return (v73)(v79, v80, v81);
    }

    if (SessionViewModel.isReady.getter())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      if (!v296)
      {

        v220 = v285;
        sub_264783DF4();

        v221 = sub_264783E14();
        v222 = sub_2647859D4();

        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          LODWORD(v286) = v222;
          v224 = v223;
          v287 = swift_slowAlloc();
          v294 = v287;
          *v224 = 136315650;
          v297 = v2;

          v225 = sub_264785764();
          v227 = v105;
          v228 = sub_2646DF234(v225, v226, &v294);

          *(v224 + 4) = v228;
          *(v224 + 12) = 2080;
          *(v224 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
          *(v224 + 22) = 2080;
          v212 = *MEMORY[0x277D4AA48];
          v213 = *(v227 + 104);
          v229 = v281;
          v213(v281, v212, v106);
          v230 = sub_264783C24();
          v232 = v231;
          (*(v227 + 8))(v229, v106);
          v233 = sub_2646DF234(v230, v232, &v294);

          *(v224 + 24) = v233;
          _os_log_impl(&dword_264605000, v221, v286, "%s, %s: missing initiator invitation token, User string: %s", v224, 0x20u);
          v234 = v287;
          swift_arrayDestroy();
          MEMORY[0x266740650](v234, -1, -1);
          MEMORY[0x266740650](v224, -1, -1);

          (*(v290 + 8))(v285, v289);
          goto LABEL_71;
        }

        (*(v290 + 8))(v220, v289);
        v260 = MEMORY[0x277D4AA48];
        goto LABEL_70;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v109 = v294;
      if (v294 && (v110 = [v294 configuration], v109, v110))
      {
        v111 = [v110 conversation];

        v112 = [v111 receiverPrimaryHandles];
        v113 = sub_2647857F4();
      }

      else
      {
        v113 = MEMORY[0x277D84F90];
      }

      v191 = sub_264655868(v113);

      v192 = sub_264655868(v38);

      if ((sub_264631958(v191, v192) & 1) == 0)
      {
        v235 = v284;
        sub_264783DF4();

        v236 = sub_264783E14();
        v237 = sub_2647859D4();

        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          LODWORD(v286) = v237;
          v239 = v105;
          v240 = v238;
          v287 = swift_slowAlloc();
          v294 = v287;
          *v240 = 136316162;
          v297 = v2;

          v241 = sub_264785764();
          v243 = sub_2646DF234(v241, v242, &v294);

          *(v240 + 4) = v243;
          *(v240 + 12) = 2080;
          *(v240 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
          *(v240 + 22) = 2080;
          v244 = sub_264785964();
          v246 = v245;

          v247 = sub_2646DF234(v244, v246, &v294);
          v106 = v292;

          *(v240 + 24) = v247;
          *(v240 + 32) = 2080;
          v248 = sub_264785964();
          v250 = v249;

          v251 = sub_2646DF234(v248, v250, &v294);

          *(v240 + 34) = v251;
          *(v240 + 42) = 2080;
          v252 = *MEMORY[0x277D4AA18];
          v213 = *(v239 + 104);
          v253 = v281;
          v213(v281, v252, v106);
          v254 = sub_264783C24();
          v256 = v255;
          (*(v239 + 8))(v253, v106);
          v257 = sub_2646DF234(v254, v256, &v294);

          *(v240 + 44) = v257;
          _os_log_impl(&dword_264605000, v236, v286, "%s, %s: receiver is not the same as who we initialized with, sessionViewModelReceiverSet, %s, configurationReceiverSet, %s, User string: %s", v240, 0x34u);
          v258 = v287;
          swift_arrayDestroy();
          MEMORY[0x266740650](v258, -1, -1);
          MEMORY[0x266740650](v240, -1, -1);

          (*(v290 + 8))(v284, v289);
        }

        else
        {

          (*(v290 + 8))(v235, v289);
          v252 = *MEMORY[0x277D4AA18];
          v213 = *(v105 + 104);
        }

        v261 = v291;
        v262 = v252;
        return (v213)(v261, v262, v106);
      }

      v193 = sub_26461A57C();
      if (!v193 || (v194 = v193, v195 = [v193 sessionType], v194, v195))
      {
        v196 = sub_26461A57C();
        if (v196)
        {
          v197 = v196;
          v198 = [v196 sessionType];

          if (v198 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_264783ED4();

            sub_264713490();
            v200 = v199;

            if (v200)
            {
              v201 = v282;
              sub_264783DF4();

              v202 = sub_264783E14();
              v203 = sub_2647859D4();

              if (os_log_type_enabled(v202, v203))
              {
                v204 = swift_slowAlloc();
                LODWORD(v286) = v203;
                v205 = v204;
                v287 = swift_slowAlloc();
                v294 = v287;
                *v205 = 136315907;
                v297 = v2;

                v206 = sub_264785764();
                v208 = sub_2646DF234(v206, v207, &v294);

                *(v205 + 4) = v208;
                *(v205 + 12) = 2080;
                *(v205 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
                *(v205 + 22) = 2085;
                swift_getKeyPath();
                swift_getKeyPath();
                sub_264783ED4();

                type metadata accessor for UserSessionConfiguration();
                v209 = sub_264785764();
                v211 = sub_2646DF234(v209, v210, &v294);

                *(v205 + 24) = v211;
                *(v205 + 32) = 2080;
                v212 = *MEMORY[0x277D4AA00];
                v213 = *(v105 + 104);
                v214 = v281;
                v213(v281, v212, v106);
                v215 = sub_264783C24();
                v217 = v216;
                (*(v105 + 8))(v214, v106);
                v218 = sub_2646DF234(v215, v217, &v294);

                *(v205 + 34) = v218;
                _os_log_impl(&dword_264605000, v202, v286, "%s, %s: missing ETA, %{sensitive}s, User string: %s", v205, 0x2Au);
                v219 = v287;
                swift_arrayDestroy();
                MEMORY[0x266740650](v219, -1, -1);
                MEMORY[0x266740650](v205, -1, -1);

                (*(v290 + 8))(v282, v289);
LABEL_71:
                v261 = v291;
                v262 = v212;
                return (v213)(v261, v262, v106);
              }

              (*(v290 + 8))(v201, v289);
              v260 = MEMORY[0x277D4AA00];
LABEL_70:
              v212 = *v260;
              v213 = *(v105 + 104);
              goto LABEL_71;
            }
          }
        }

        v259 = *MEMORY[0x277D4AA40];
        v152 = *(v105 + 104);
        return v152();
      }

      v263 = v283;
      sub_264783DF4();

      v264 = sub_264783E14();
      v265 = sub_2647859D4();

      if (os_log_type_enabled(v264, v265))
      {
        v266 = swift_slowAlloc();
        LODWORD(v286) = v265;
        v267 = v266;
        v268 = swift_slowAlloc();
        v285 = v268;
        v287 = swift_slowAlloc();
        v294 = v287;
        *v267 = 136315907;
        v297 = v2;

        v269 = sub_264785764();
        v271 = sub_2646DF234(v269, v270, &v294);

        *(v267 + 4) = v271;
        *(v267 + 12) = 2080;
        *(v267 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
        *(v267 + 22) = 2117;
        v272 = sub_26461A57C();
        *(v267 + 24) = v272;
        *v268 = v272;
        *(v267 + 32) = 2080;
        v69 = *MEMORY[0x277D4AA10];
        v73 = *(v105 + 104);
        v273 = v281;
        v72 = v292;
        v73(v281, v69, v292);
        v274 = sub_264783C24();
        v276 = v275;
        (*(v105 + 8))(v273, v72);
        v277 = sub_2646DF234(v274, v276, &v294);

        *(v267 + 34) = v277;
        _os_log_impl(&dword_264605000, v264, v286, "%s, %s: session type is unknown, %{sensitive}@, User string: %s", v267, 0x2Au);
        v278 = v285;
        sub_26460CD50(v285, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v278, -1, -1);
        v279 = v287;
        swift_arrayDestroy();
        MEMORY[0x266740650](v279, -1, -1);
        MEMORY[0x266740650](v267, -1, -1);

        (*(v290 + 8))(v283, v289);
        goto LABEL_14;
      }

      (*(v290 + 8))(v263, v289);
      v190 = MEMORY[0x277D4AA10];
    }

    else
    {

      v173 = v286;
      sub_264783DF4();

      v174 = sub_264783E14();
      v175 = sub_2647859D4();

      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        LODWORD(v285) = v175;
        v177 = v176;
        v178 = swift_slowAlloc();
        v284 = v178;
        v287 = swift_slowAlloc();
        v294 = v287;
        *v177 = 136315906;
        v297 = v2;

        v179 = sub_264785764();
        v181 = sub_2646DF234(v179, v180, &v294);

        *(v177 + 4) = v181;
        *(v177 + 12) = 2080;
        *(v177 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v294);
        *(v177 + 22) = 2112;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v182 = v297;
        *(v177 + 24) = v297;
        *v178 = v182;
        *(v177 + 32) = 2080;
        v69 = *MEMORY[0x277D4AA48];
        v73 = *(v105 + 104);
        v183 = v281;
        v72 = v292;
        v73(v281, v69, v292);
        v184 = sub_264783C24();
        v186 = v185;
        (*(v105 + 8))(v183, v72);
        v187 = sub_2646DF234(v184, v186, &v294);

        *(v177 + 34) = v187;
        _os_log_impl(&dword_264605000, v174, v285, "%s, %s: not in ready state, %@, User string: %s", v177, 0x2Au);
        v188 = v284;
        sub_26460CD50(v284, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v188, -1, -1);
        v189 = v287;
        swift_arrayDestroy();
        MEMORY[0x266740650](v189, -1, -1);
        MEMORY[0x266740650](v177, -1, -1);

        (*(v290 + 8))(v286, v289);
        goto LABEL_14;
      }

      (*(v290 + 8))(v173, v289);
      v190 = MEMORY[0x277D4AA48];
    }

    v69 = *v190;
    v73 = *(v105 + 104);
LABEL_13:
    v72 = v292;
LABEL_14:
    v79 = v291;
    v80 = v69;
    v81 = v72;
    return (v73)(v79, v80, v81);
  }

  v129 = v287;
  sub_264783DF4();
  swift_retain_n();
  v130 = sub_264783E14();
  v131 = sub_2647859D4();
  v132 = os_log_type_enabled(v130, v131);
  v133 = MEMORY[0x277D4AA20];
  if (v132)
  {
    v134 = swift_slowAlloc();
    v286 = swift_slowAlloc();
    v297 = v286;
    *v134 = 136315906;
    v294 = v2;

    v135 = sub_264785764();
    v137 = sub_2646DF234(v135, v136, &v297);

    *(v134 + 4) = v137;
    *(v134 + 12) = 2080;
    *(v134 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v297);
    *(v134 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v138 = v295;

    *(v134 + 24) = v138;

    *(v134 + 32) = 2080;
    v139 = *v133;
    v141 = v292;
    v140 = v293;
    v142 = v281;
    (*(v293 + 104))(v281, v139, v292);
    v143 = sub_264783C24();
    v145 = v144;
    v146 = *(v140 + 8);
    v147 = v141;
    v146(v142, v141);
    v148 = sub_2646DF234(v143, v145, &v297);

    *(v134 + 34) = v148;
    _os_log_impl(&dword_264605000, v130, v131, "%s, %s: receiver not eligible, %ld, User string: %s", v134, 0x2Au);
    v149 = v286;
    swift_arrayDestroy();
    MEMORY[0x266740650](v149, -1, -1);
    MEMORY[0x266740650](v134, -1, -1);
  }

  else
  {
    v147 = v106;
  }

  (*(v290 + 8))(v129, v289);
  v153 = sub_26462B210();
  if (v153 && (v154 = v153, v155 = [v153 isGroup], v154, v155))
  {
    v156 = MEMORY[0x277D4AA38];
  }

  else
  {
    v156 = MEMORY[0x277D4AA20];
  }

  return (*(v293 + 104))(v291, *v156, v147);
}

void sub_2646316E0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_264654BC8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_264785AD4();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_264785AE4();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_264631958(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_264785F44();

    sub_264785794();
    v17 = sub_264785F94();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_264785E84() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t SessionViewModel.timeSinceLastStateChange.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v8 = v14;
  if (v14)
  {
    v9 = [v14 date];

    if (v9)
    {
      sub_264783AC4();

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = sub_264783AF4();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v4, v10, 1, v11);
    sub_26460E7E4(v4, v6, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v12 + 48))(v6, 1, v11) == 1)
    {
      return sub_26460CD50(v6, &qword_27FF756B8, &qword_26478AC90);
    }

    else
    {
      sub_264783AA4();
      return (*(v12 + 8))(v6, v11);
    }
  }

  return result;
}

uint64_t SessionViewModel.justStartedSession.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v7 = v47;
  if (v47)
  {
    v8 = [v47 sessionState];

    v9 = v8 == 2;
  }

  else
  {
    v9 = 0;
  }

  SessionViewModel.timeSinceLastStateChange.getter();
  if (v10 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    SessionViewModel.timeSinceLastStateChange.getter();
    v12 = v11 < 1.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v13 = v47;
  if (v47 && (v14 = [v47 configuration], v13, v14))
  {
    v15 = [v14 conversation];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v47)
    {
      v16 = v47;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    sub_264655868(v16);

    v17 = sub_264785944();

    v18 = [v15 hasEqualPrimaryHandlesAsSet_];
  }

  else
  {
    v18 = 0;
  }

  sub_264783DF4();

  v19 = sub_264783E14();
  v20 = sub_2647859F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v12;
    v22 = v21;
    v42 = swift_slowAlloc();
    v46 = v1;
    v47 = v42;
    *v22 = 136316162;

    v23 = sub_264785764();
    v25 = sub_2646DF234(v23, v24, &v47);

    *(v22 + 4) = v25;
    v41 = v3;
    v43 = v18;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2646DF234(0xD000000000000012, 0x80000002647938E0, &v47);
    *(v22 + 22) = 2080;
    HIDWORD(v39) = v20;
    if (v9)
    {
      v26 = 5457241;
    }

    else
    {
      v26 = 20302;
    }

    v27 = v45;
    v40 = v6;
    if (v9)
    {
      v28 = 0xE300000000000000;
    }

    else
    {
      v28 = 0xE200000000000000;
    }

    v29 = sub_2646DF234(v26, v28, &v47);

    *(v22 + 24) = v29;
    *(v22 + 32) = 2080;
    if (v44)
    {
      v30 = 5457241;
    }

    else
    {
      v30 = 20302;
    }

    if (v44)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = 0xE200000000000000;
    }

    v32 = sub_2646DF234(v30, v31, &v47);

    *(v22 + 34) = v32;
    *(v22 + 42) = 2080;
    v18 = v43;
    if (v43)
    {
      v33 = 5457241;
    }

    else
    {
      v33 = 20302;
    }

    if (v43)
    {
      v34 = 0xE300000000000000;
    }

    else
    {
      v34 = 0xE200000000000000;
    }

    v35 = sub_2646DF234(v33, v34, &v47);

    *(v22 + 44) = v35;
    _os_log_impl(&dword_264605000, v19, BYTE4(v39), "%s, %s: isMonitoring, %s, isInTimeDeltaSinceLastStateChange, %s, hasEqualRecipients, %s", v22, 0x34u);
    v36 = v42;
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    v37 = v22;
    v12 = v44;
    MEMORY[0x266740650](v37, -1, -1);

    (*(v27 + 8))(v40, v41);
  }

  else
  {

    (*(v45 + 8))(v6, v3);
  }

  return (v9 && v12) & v18;
}

uint64_t SessionViewModel.isReadyToConfigure.getter()
{
  if (sub_26463231C())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v3 && (v0 = [v3 sessionState], v3, v0 == 11))
    {
      v1 = 1;
    }

    else
    {
      v1 = SessionViewModel.justStartedSession.getter();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL sub_26463231C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = v3;
  if (v3)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v1 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      return v2 == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26463244C(char a1)
{
  *(v2 + 440) = v1;
  *(v2 + 548) = a1;
  *(v2 + 448) = *v1;
  v3 = sub_264783E24();
  *(v2 + 456) = v3;
  v4 = *(v3 - 8);
  *(v2 + 464) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  sub_2647858B4();
  *(v2 + 504) = sub_2647858A4();
  v7 = sub_264785874();
  *(v2 + 512) = v7;
  *(v2 + 520) = v6;

  return MEMORY[0x2822009F8](sub_264632594, v7, v6);
}

uint64_t sub_264632594()
{
  v32 = v0;
  v1 = *(v0 + 440);
  v2 = sub_26462B210();
  *(v0 + 528) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 440);
    v5 = *(v0 + 548);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 544) = 1;

    sub_264783EE4();
    sub_2646226B4();
    if (v5 == 1)
    {
      v6 = *(v0 + 440);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 360) = 0;
      *(v0 + 368) = 0;
      *(v0 + 352) = 0;

      sub_264783EE4();
      sub_264621B20();
    }

    v7 = *(*(v0 + 440) + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_264632948;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F40, &qword_2647898D8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26463364C;
    *(v0 + 104) = &block_descriptor_605;
    *(v0 + 112) = v8;
    [v7 initializeSessionWithConversation:v3 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 504);
    v10 = *(v0 + 480);
    v11 = *(v0 + 440);

    sub_264783DF4();

    v12 = sub_264783E14();
    v13 = sub_2647859D4();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);
    v17 = *(v0 + 464);
    if (v14)
    {
      v19 = *(v0 + 440);
      v18 = *(v0 + 448);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315394;
      *(v0 + 376) = v19;

      v22 = sub_264785764();
      v24 = sub_2646DF234(v22, v23, &v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, &v31);
      _os_log_impl(&dword_264605000, v12, v13, "%s, %s: no valid conversation", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v21, -1, -1);
      MEMORY[0x266740650](v20, -1, -1);
    }

    (*(v17 + 8))(v15, v16);
    v26 = *(v0 + 488);
    v25 = *(v0 + 496);
    v28 = *(v0 + 472);
    v27 = *(v0 + 480);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_264632948()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 536) = v3;
  v4 = *(v1 + 520);
  v5 = *(v1 + 512);
  if (v3)
  {
    v6 = sub_26463306C;
  }

  else
  {
    v6 = sub_264632A78;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_264632A78()
{
  v61 = v0;
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 440);

  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  sub_264783DF4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  v58 = v5;
  if (os_log_type_enabled(v7, v8))
  {
    v55 = *(v0 + 464);
    v56 = *(v0 + 456);
    v57 = *(v0 + 496);
    v10 = *(v0 + 440);
    v9 = *(v0 + 448);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60 = v12;
    *v11 = 136316162;
    *(v0 + 432) = v10;

    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v60);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, &v60);
    *(v11 + 22) = 2048;
    *(v11 + 24) = v5;
    *(v11 + 32) = 2048;
    *(v11 + 34) = v6;
    *(v11 + 42) = 2080;
    sub_264659B70(0, &qword_27FF75D58, 0x277CBC2C0);
    v16 = sub_264785624();
    v18 = sub_2646DF234(v16, v17, &v60);

    *(v11 + 44) = v18;
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s: initiator eligibility, %ld, receiverEligibility, %ld, invitationTokens, %s", v11, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    v19 = *(v55 + 8);
    v19(v57, v56);
  }

  else
  {
    v20 = *(v0 + 496);
    v21 = *(v0 + 456);
    v22 = *(v0 + 464);

    v19 = *(v22 + 8);
    v19(v20, v21);
  }

  v23 = *(v0 + 440);
  v24 = sub_26462B210();
  if (!v24)
  {
LABEL_8:
    v30 = *(v0 + 488);
    v31 = *(v0 + 440);

    sub_264783DF4();

    v32 = sub_264783E14();
    v33 = sub_2647859D4();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 488);
    v37 = *(v0 + 456);
    v36 = *(v0 + 464);
    if (v34)
    {
      v39 = *(v0 + 440);
      v38 = *(v0 + 448);
      v59 = *(v0 + 488);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136315394;
      *(v0 + 424) = v39;

      v42 = sub_264785764();
      v44 = sub_2646DF234(v42, v43, &v60);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, &v60);
      _os_log_impl(&dword_264605000, v32, v33, "%s, %s: recipient handles have changed while initializing session", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v41, -1, -1);
      MEMORY[0x266740650](v40, -1, -1);

      v45 = v59;
    }

    else
    {

      v45 = v35;
    }

    v19(v45, v37);
    v26 = *(v0 + 528);
    v46 = *(v0 + 440);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v47 = *(v0 + 280);
    v48 = *(v0 + 296);

    *(v46 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = v47 == 1;
    sub_264614D5C();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 546) = 0;

    goto LABEL_12;
  }

  v25 = v24;
  if (![*(v0 + 528) hasEqualPrimaryHandlesAsConversation_])
  {

    goto LABEL_8;
  }

  v26 = *(v0 + 528);
  v27 = *(v0 + 440);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 304) = v58;
  *(v0 + 312) = v6;
  *(v0 + 320) = v4;

  sub_264783EE4();
  sub_264621B20();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v28 = *(v0 + 328);
  v29 = *(v0 + 344);

  *(v27 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = v28 == 1;
  sub_264614D5C();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 547) = 0;

LABEL_12:
  sub_264783EE4();
  sub_2646226B4();

  v50 = *(v0 + 488);
  v49 = *(v0 + 496);
  v52 = *(v0 + 472);
  v51 = *(v0 + 480);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_26463306C()
{
  v62 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);

  swift_willThrow();
  *(v0 + 384) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
  sub_264659B70(0, &qword_27FF75F48, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(v0 + 392);
  v5 = [v4 userInfo];
  v6 = sub_264785614();

  v7 = *MEMORY[0x277D4AD18];
  v8 = sub_264785724();
  if (!*(v6 + 16))
  {

    goto LABEL_10;
  }

  v10 = sub_2646548B4(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_264655DB8(*(v6 + 56) + 32 * v10, v0 + 144);

  sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v13 = *(v0 + 408);
  v14 = [v4 userInfo];
  v15 = sub_264785614();

  v16 = *MEMORY[0x277D4AD48];
  v17 = sub_264785724();
  if (*(v15 + 16))
  {
    v19 = sub_2646548B4(v17, v18);
    v21 = v20;

    if (v21)
    {
      sub_264655DB8(*(v15 + 56) + 32 * v19, v0 + 176);

      if (swift_dynamicCast())
      {
        v22 = *(v0 + 440);
        v23 = *(v0 + 416);
        v24 = [v13 integerValue];
        v25 = [v23 integerValue];
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 256) = v24;
        *(v0 + 264) = v25;
        *(v0 + 272) = 0;

        sub_264783EE4();
        sub_264621B20();

        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_20:

LABEL_12:
  v26 = *(v0 + 536);
  v27 = *(v0 + 472);
  v28 = *(v0 + 440);
  sub_264783DF4();

  v29 = v26;
  v30 = sub_264783E14();
  v31 = sub_2647859D4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 536);
    v33 = *(v0 + 464);
    v34 = *(v0 + 448);
    v59 = *(v0 + 456);
    v60 = *(v0 + 472);
    v35 = *(v0 + 440);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61[0] = v38;
    *v36 = 136315650;
    *(v0 + 400) = v35;

    v39 = sub_264785764();
    v41 = sub_2646DF234(v39, v40, v61);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, v61);
    *(v36 + 22) = 2112;
    v42 = v32;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 24) = v43;
    *v37 = v43;
    _os_log_impl(&dword_264605000, v30, v31, "%s, %s: error while initializing a session, %@", v36, 0x20u);
    sub_26460CD50(v37, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v38, -1, -1);
    MEMORY[0x266740650](v36, -1, -1);

    (*(v33 + 8))(v60, v59);
  }

  else
  {
    v45 = *(v0 + 464);
    v44 = *(v0 + 472);
    v46 = *(v0 + 456);

    (*(v45 + 8))(v44, v46);
  }

  v47 = *(v0 + 536);
  v48 = *(v0 + 528);
  v49 = *(v0 + 488);
  v50 = *(v0 + 496);
  v51 = *(v0 + 472);
  v52 = *(v0 + 480);
  v53 = *(v0 + 440);
  swift_willThrow();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v54 = *(v0 + 232);
  v55 = *(v0 + 248);

  *(v53 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = v54 == 1;
  sub_264614D5C();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 545) = 0;

  sub_264783EE4();
  sub_2646226B4();

  v56 = *(v0 + 8);
  v57 = *(v0 + 536);

  return v56();
}

uint64_t sub_26463364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v9 = swift_allocError();
    *v10 = a5;
    v11 = a5;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    sub_264659B70(0, &qword_27FF75D58, 0x277CBC2C0);
    v12 = sub_264785614();
    v13 = *(*(v8 + 64) + 40);
    *v13 = v12;
    v13[1] = a3;
    v13[2] = a4;

    return MEMORY[0x282200950](v8);
  }
}

BOOL SessionViewModel.isEligibilityUnknown.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v1)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v2 == 0;
}

Swift::Void __swiftcall SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(Swift::Bool needsInfoForStaging)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2647858E4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2647858B4();

  v9 = sub_2647858A4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v2;
  *(v10 + 40) = needsInfoForStaging;
  sub_264635430(0, 0, v7, &unk_264789310, v10);
}

uint64_t sub_26463396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 24) = a4;
  v6 = sub_264783E24();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  sub_2647858B4();
  *(v5 + 56) = sub_2647858A4();
  v10 = sub_264785874();
  *(v5 + 64) = v10;
  *(v5 + 72) = v9;

  return MEMORY[0x2822009F8](sub_264633A64, v10, v9);
}

uint64_t sub_264633A64()
{
  v22 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  sub_264783DF4();

  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v20 = *(v0 + 48);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    *(v0 + 16) = v7;
    type metadata accessor for SessionViewModel(0);

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v21);
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s: sync", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);

    (*(v5 + 8))(v20, v6);
  }

  else
  {
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);

    (*(v14 + 8))(v13, v15);
  }

  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_264633CA8;
  v17 = *(v0 + 88);
  v18 = *(v0 + 24);

  return SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(v17);
}

uint64_t sub_264633CA8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v7 = sub_264659E38;
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v7 = sub_264633DCC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_264633DCC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 290) = a1;
  *(v2 + 152) = *v1;
  v3 = sub_264783E24();
  *(v2 + 160) = v3;
  v4 = *(v3 - 8);
  *(v2 + 168) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  sub_2647858B4();
  *(v2 + 224) = sub_2647858A4();
  v7 = sub_264785874();
  *(v2 + 232) = v7;
  *(v2 + 240) = v6;

  return MEMORY[0x2822009F8](sub_264633F90, v7, v6);
}

uint64_t sub_264633F90()
{
  v144 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 144);
  sub_264783DF4();

  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v137 = *(v0 + 216);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v143 = v10;
    *v9 = 136315394;
    *(v0 + 136) = v8;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, &v143);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v143);
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s: async", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    v14 = *(v5 + 8);
    v14(v137, v6);
  }

  else
  {
    v15 = *(v0 + 216);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  *(v0 + 248) = v14;
  v18 = *(v0 + 144);
  if (!SessionViewModel.isReady.getter())
  {
    v19 = *(v0 + 144);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (*(v0 + 288) != 1)
    {
      goto LABEL_7;
    }
  }

  v20 = *(v0 + 144);
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  if (*(v20 + v21))
  {
LABEL_7:
    if (*(v0 + 290) == 1)
    {
      v22 = *(v0 + 144);
      sub_2646366D8();
    }

    v23 = *(v0 + 176);
    v24 = *(v0 + 144);
    sub_264783DF4();
    swift_retain_n();
    v25 = sub_264783E14();
    v26 = sub_2647859F4();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 248);
    v29 = *(v0 + 168);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    if (v27)
    {
      v138 = *(v0 + 176);
      v32 = *(v0 + 144);
      v33 = *(v0 + 152);
      v34 = swift_slowAlloc();
      v134 = v28;
      v35 = swift_slowAlloc();
      v143 = v35;
      *v34 = 136315650;
      *(v0 + 64) = v32;

      v36 = sub_264785764();
      v38 = sub_2646DF234(v36, v37, &v143);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v143);
      *(v34 + 22) = 1024;
      v39 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
      swift_beginAccess();
      LODWORD(v39) = *(v32 + v39);

      *(v34 + 24) = v39;

      _os_log_impl(&dword_264605000, v25, v26, "%s, %s: isCancelling: %{BOOL}d", v34, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266740650](v35, -1, -1);
      MEMORY[0x266740650](v34, -1, -1);

      v134(v138, v31);
    }

    else
    {
      v57 = *(v0 + 144);

      v28(v30, v31);
    }

    v58 = swift_task_alloc();
    *(v0 + 272) = v58;
    *v58 = v0;
    v58[1] = sub_2646350D8;
    v59 = *(v0 + 144);
    v60 = *(v0 + 290);

    return sub_26463244C(v60);
  }

  v40 = *(v0 + 208);
  v41 = *(v0 + 144);
  sub_264783DF4();
  swift_retain_n();
  v42 = sub_264783E14();
  v43 = sub_2647859F4();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 208);
  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  if (v44)
  {
    v139 = *(v0 + 208);
    v48 = *(v0 + 144);
    v49 = *(v0 + 152);
    v135 = *(v0 + 160);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v143 = v51;
    *v50 = 136315906;
    *(v0 + 128) = v48;

    v52 = sub_264785764();
    v54 = sub_2646DF234(v52, v53, &v143);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v143);
    *(v50 + 22) = 1024;
    LOBYTE(v49) = SessionViewModel.isReady.getter();

    *(v50 + 24) = v49 & 1;

    *(v50 + 28) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v50 + 30) = *(v0 + 289);

    _os_log_impl(&dword_264605000, v42, v43, "%s, %s: isReady, %{BOOL}d, isInitializing, %{BOOL}d", v50, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v51, -1, -1);
    MEMORY[0x266740650](v50, -1, -1);

    v56 = v135;
    v55 = v139;
  }

  else
  {
    v62 = *(v0 + 144);

    v55 = v45;
    v56 = v47;
  }

  v14(v55, v56);
  v63 = *(v0 + 144);
  if (SessionViewModel.isActiveSessionForRecipient.getter())
  {
    v64 = *(v0 + 224);
    v65 = *(v0 + 200);
    v66 = *(v0 + 144);

    sub_264783DF4();

    v67 = sub_264783E14();
    v68 = sub_2647859F4();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 144);
      v70 = *(v0 + 152);
      v71 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v143 = v140;
      *v71 = 136315650;
      *(v0 + 112) = v69;

      v72 = sub_264785764();
      v74 = sub_2646DF234(v72, v73, &v143);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v143);
      *(v71 + 22) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      if (*(v0 + 120))
      {
        v75 = MEMORY[0x26673F530](*(v0 + 120), MEMORY[0x277D837D0]);
        v77 = v76;
      }

      else
      {
        v77 = 0xE300000000000000;
        v75 = 7104878;
      }

      v122 = *(v0 + 200);
      v123 = *(v0 + 160);
      v124 = *(v0 + 168);
      v125 = sub_2646DF234(v75, v77, &v143);

      *(v71 + 24) = v125;
      _os_log_impl(&dword_264605000, v67, v68, "%s, %s: Already initialized for recipients %s", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v140, -1, -1);
      MEMORY[0x266740650](v71, -1, -1);

      v97 = v122;
      v126 = v123;
      goto LABEL_37;
    }

    v118 = *(v0 + 200);
    v89 = *(v0 + 160);
    v119 = *(v0 + 168);

    v97 = v118;
LABEL_36:
    v126 = v89;
LABEL_37:
    v14(v97, v126);
    v128 = *(v0 + 208);
    v127 = *(v0 + 216);
    v130 = *(v0 + 192);
    v129 = *(v0 + 200);
    v132 = *(v0 + 176);
    v131 = *(v0 + 184);

    v133 = *(v0 + 8);

    return v133();
  }

  v78 = *(v0 + 144);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v79 = *(v0 + 72);
  if (v79)
  {
    v80 = [*(v0 + 72) isActiveState];

    if (v80)
    {
      v81 = *(v0 + 224);
      v82 = *(v0 + 192);
      v83 = *(v0 + 144);

      sub_264783DF4();

      v84 = sub_264783E14();
      v85 = sub_2647859F4();

      v86 = os_log_type_enabled(v84, v85);
      v87 = *(v0 + 192);
      v89 = *(v0 + 160);
      v88 = *(v0 + 168);
      if (v86)
      {
        v91 = *(v0 + 144);
        v90 = *(v0 + 152);
        v141 = *(v0 + 192);
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v143 = v93;
        *v92 = 136315394;
        *(v0 + 104) = v91;

        v94 = sub_264785764();
        v96 = sub_2646DF234(v94, v95, &v143);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2080;
        *(v92 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v143);
        _os_log_impl(&dword_264605000, v84, v85, "%s, %s: Already in active session", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v93, -1, -1);
        MEMORY[0x266740650](v92, -1, -1);

        v97 = v141;
      }

      else
      {

        v97 = v87;
      }

      goto LABEL_36;
    }
  }

  v98 = *(v0 + 184);
  v99 = *(v0 + 144);
  sub_264783DF4();

  v100 = sub_264783E14();
  v101 = sub_2647859F4();

  v102 = os_log_type_enabled(v100, v101);
  v103 = *(v0 + 184);
  v105 = *(v0 + 160);
  v104 = *(v0 + 168);
  if (v102)
  {
    v106 = *(v0 + 144);
    v107 = *(v0 + 152);
    v142 = *(v0 + 184);
    v108 = swift_slowAlloc();
    v136 = v105;
    v109 = swift_slowAlloc();
    v143 = v109;
    *v108 = 136315650;
    *(v0 + 80) = v106;

    v110 = sub_264785764();
    v112 = sub_2646DF234(v110, v111, &v143);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2080;
    *(v108 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v143);
    *(v108 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v0 + 96) = *(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C30, &qword_264788A68);
    v113 = sub_264785764();
    v115 = sub_2646DF234(v113, v114, &v143);

    *(v108 + 24) = v115;
    _os_log_impl(&dword_264605000, v100, v101, "%s, %s: Restarting initialization for %s", v108, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v109, -1, -1);
    MEMORY[0x266740650](v108, -1, -1);

    v117 = v136;
    v116 = v142;
  }

  else
  {

    v116 = v103;
    v117 = v105;
  }

  v14(v116, v117);
  v120 = swift_task_alloc();
  *(v0 + 256) = v120;
  *v120 = v0;
  v120[1] = sub_264634D0C;
  v121 = *(v0 + 144);

  return sub_264635A44();
}

uint64_t sub_264634D0C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_2646352C0;
  }

  else
  {
    v7 = sub_264634E48;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264634E48()
{
  v27 = v0;
  if (*(v0 + 290) == 1)
  {
    v1 = *(v0 + 144);
    sub_2646366D8();
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  sub_264783DF4();
  swift_retain_n();
  v4 = sub_264783E14();
  v5 = sub_2647859F4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 248);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  if (v6)
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v25 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v24 = v9;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315650;
    *(v0 + 64) = v11;

    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v26);
    *(v13 + 22) = 1024;
    v18 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    swift_beginAccess();
    LODWORD(v18) = *(v11 + v18);

    *(v13 + 24) = v18;

    _os_log_impl(&dword_264605000, v4, v5, "%s, %s: isCancelling: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v14, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    v25(v24, v10);
  }

  else
  {
    v19 = *(v0 + 144);

    v7(v9, v10);
  }

  v20 = swift_task_alloc();
  *(v0 + 272) = v20;
  *v20 = v0;
  v20[1] = sub_2646350D8;
  v21 = *(v0 + 144);
  v22 = *(v0 + 290);

  return sub_26463244C(v22);
}

uint64_t sub_2646350D8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_264635378;
  }

  else
  {
    v7 = sub_264635214;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264635214()
{
  v1 = v0[28];

  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2646352C0()
{
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_264635378()
{
  v1 = v0[35];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_264635430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_26460CCE8(a3, v26 - v10, &qword_27FF76970, &qword_264789300);
  v12 = sub_2647858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26460CD50(v11, &qword_27FF76970, &qword_264789300);
  }

  else
  {
    sub_2647858D4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_264785874();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_264785784() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_264635730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26460CCE8(a3, v27 - v11, &qword_27FF76970, &qword_264789300);
  v13 = sub_2647858E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26460CD50(v12, &qword_27FF76970, &qword_264789300);
  }

  else
  {
    sub_2647858D4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_264785874();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_264785784() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F28, &qword_2647898C0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);

      return v24;
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

  sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F28, &qword_2647898C0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_264635A44()
{
  v1[31] = v0;
  v1[32] = *v0;
  v2 = sub_264783E24();
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_2647858B4();
  v1[38] = sub_2647858A4();
  v6 = sub_264785874();
  v1[39] = v6;
  v1[40] = v5;

  return MEMORY[0x2822009F8](sub_264635B78, v6, v5);
}

uint64_t sub_264635B78()
{
  v57 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  sub_264783DF4();

  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v52 = *(v0 + 272);
    v53 = *(v0 + 264);
    v54 = *(v0 + 296);
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v0 + 232) = v6;
    v56 = v9;
    *v7 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v56);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264794690, &v56);
    *(v7 + 22) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v13 = *(v0 + 240);
    *(v7 + 24) = v13;
    *v8 = v13;
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s: sessionState %@", v7, 0x20u);
    sub_26460CD50(v8, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    v14 = *(v52 + 8);
    v14(v54, v53);
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 264);
    v17 = *(v0 + 272);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  *(v0 + 328) = v14;
  v18 = *(v0 + 248);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 352) = 0;

  sub_264783EE4();
  sub_2646226B4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  sub_264783EE4();
  sub_26462A724();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v19 = *(v0 + 192);
  if (v19)
  {
    v20 = [*(v0 + 192) sessionState];

    if (v20 == 10)
    {
      goto LABEL_8;
    }
  }

  v21 = *(v0 + 248);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v22 = *(v0 + 200);
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = [*(v0 + 200) sessionState];

  if (v23 == 11)
  {
LABEL_8:
    v24 = *(v0 + 248);
    v25 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    *(v0 + 336) = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    swift_beginAccess();
    *(v24 + v25) = 1;
    sub_2646249AC();
    sub_264636D6C(0);
    v26 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    swift_beginAccess();
    if (*(v24 + v26) == 2)
    {
      v27 = *(v0 + 248);
      sub_264637EFC(0);
    }

    v28 = *(*(v0 + 248) + 16);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_264636260;
    v29 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2646384B4;
    *(v0 + 104) = &block_descriptor_569;
    *(v0 + 112) = v29;
    [v28 cancelInitializationWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
LABEL_13:
    v30 = *(v0 + 304);
    v31 = *(v0 + 288);
    v32 = *(v0 + 248);

    sub_264783DF4();

    v33 = sub_264783E14();
    v34 = sub_2647859F4();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 288);
    v38 = *(v0 + 264);
    v37 = *(v0 + 272);
    if (v35)
    {
      v40 = *(v0 + 248);
      v39 = *(v0 + 256);
      v55 = *(v0 + 288);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136315394;
      *(v0 + 208) = v40;

      v43 = sub_264785764();
      v45 = sub_2646DF234(v43, v44, &v56);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264794690, &v56);
      _os_log_impl(&dword_264605000, v33, v34, "%s, %s: No initialization to cancel", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v42, -1, -1);
      MEMORY[0x266740650](v41, -1, -1);

      v46 = v55;
    }

    else
    {

      v46 = v36;
    }

    v14(v46, v38);
    v48 = *(v0 + 288);
    v47 = *(v0 + 296);
    v49 = *(v0 + 280);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_264636260()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 320);
  v5 = *(v1 + 312);
  if (v3)
  {
    v6 = sub_264636420;
  }

  else
  {
    v6 = sub_264636390;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_264636390()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[31];

  *(v3 + v1) = 0;
  sub_2646249AC();
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264636420()
{
  v38 = v0;
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[31];

  swift_willThrow();
  sub_264783DF4();

  v5 = v1;
  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[43];
    v9 = v0[34];
    v35 = v0[35];
    v36 = v0[41];
    v10 = v0[32];
    v34 = v0[33];
    v11 = v0[31];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37[0] = v13;
    *v12 = 136315650;
    v0[27] = v11;

    v14 = sub_264785764();
    v16 = sub_2646DF234(v14, v15, v37);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264794690, v37);
    *(v12 + 22) = 2080;
    v0[28] = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v18 = sub_264785764();
    v20 = sub_2646DF234(v18, v19, v37);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: error cancelling session: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    v36(v35, v34);
  }

  else
  {
    v21 = v0[41];
    v23 = v0[34];
    v22 = v0[35];
    v24 = v0[33];

    v21(v22, v24);
  }

  v26 = v0[42];
  v25 = v0[43];
  v28 = v0[36];
  v27 = v0[37];
  v29 = v0[35];
  v30 = v0[31];
  swift_willThrow();
  *(v30 + v26) = 0;
  sub_2646249AC();

  v31 = v0[1];
  v32 = v0[43];

  return v31();
}

uint64_t sub_2646366D8()
{
  v1 = sub_264785594();
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2647855C4();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  *(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus) = 1;
  v13 = [objc_opt_self() now];
  sub_264783AC4();

  v14 = sub_264783AF4();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
  swift_beginAccess();
  sub_264659660(v12, v0 + v15, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v16 = sub_264785A44();
  aBlock[4] = sub_264659658;
  v22 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_573;
  v17 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v4, v17);
  _Block_release(v17);

  (*(v20 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v19);
}

uint64_t sub_264636AC4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_2647858B4();
  v1[4] = sub_2647858A4();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_264636B74;

  return sub_264635A44();
}

uint64_t sub_264636B74()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {

    v7 = sub_264785874();
    v9 = v8;
    v10 = sub_264659F34;
  }

  else
  {
    v7 = sub_264785874();
    v9 = v11;
    v10 = sub_264636CF8;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_264636CF8()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  *v3 = v1 != 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_264636D6C(int a1)
{
  v2 = v1;
  v120 = a1;
  v115 = *v1;
  v3 = sub_264783E24();
  v121 = *(v3 - 8);
  v122 = v3;
  v4 = *(v121 + 64);
  MEMORY[0x28223BE20](v3);
  v123 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v119 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v118 = &v111 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v111 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v111 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v111 - v18;
  v20 = sub_264783AF4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v114 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v113 = &v111 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v112 = &v111 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v111 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v111 - v33;
  result = MEMORY[0x28223BE20](v32);
  v37 = &v111 - v36;
  v124 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus;
  if (!*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) && !*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) && !*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus))
  {
    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesLatency + 8) == 1)
  {
    v117 = v14;
    v38 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime;
    swift_beginAccess();
    sub_26460CCE8(v2 + v38, v19, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_26460CD50(v19, &qword_27FF756B8, &qword_26478AC90);
      v116 = 1;
    }

    else
    {
      (*(v21 + 32))(v37, v19, v20);
      v40 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v41 = *(v21 + 8);
      v41(v34, v20);
      v41(v37, v20);
      v116 = 0;
    }

    v14 = v117;
  }

  else
  {
    v116 = 0;
    v39 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesLatency);
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesLatency + 8) == 1)
  {
    v42 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime;
    swift_beginAccess();
    sub_26460CCE8(v2 + v42, v17, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      sub_26460CD50(v17, &qword_27FF756B8, &qword_26478AC90);
      LODWORD(v117) = 1;
    }

    else
    {
      (*(v21 + 32))(v31, v17, v20);
      v44 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v45 = v14;
      v46 = *(v21 + 8);
      v46(v34, v20);
      v46(v31, v20);
      v14 = v45;
      LODWORD(v117) = 0;
    }
  }

  else
  {
    LODWORD(v117) = 0;
    v43 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesLatency);
  }

  v47 = v119;
  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency + 8) == 1)
  {
    v48 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
    swift_beginAccess();
    sub_26460CCE8(v2 + v48, v14, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      sub_26460CD50(v14, &qword_27FF756B8, &qword_26478AC90);
      v49 = 1;
    }

    else
    {
      v51 = v112;
      (*(v21 + 32))(v112, v14, v20);
      v52 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v53 = *(v21 + 8);
      v53(v34, v20);
      v53(v51, v20);
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
    v50 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency);
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityLatency + 8) == 1)
  {
    v54 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime;
    swift_beginAccess();
    v55 = v2 + v54;
    v56 = v118;
    sub_26460CCE8(v55, v118, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v21 + 48))(v56, 1, v20) == 1)
    {
      sub_26460CD50(v56, &qword_27FF756B8, &qword_26478AC90);
      v57 = 1;
    }

    else
    {
      v59 = v113;
      (*(v21 + 32))(v113, v56, v20);
      v60 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v61 = v49;
      v62 = *(v21 + 8);
      v62(v34, v20);
      v62(v59, v20);
      v49 = v61;
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
    v58 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityLatency);
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityLatency + 8) == 1)
  {
    sub_26460CCE8(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityStartTime, v47, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v21 + 48))(v47, 1, v20) == 1)
    {
      sub_26460CD50(v47, &qword_27FF756B8, &qword_26478AC90);
      v63 = 1;
    }

    else
    {
      v65 = v114;
      (*(v21 + 32))(v114, v47, v20);
      v66 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v67 = *(v21 + 8);
      v67(v34, v20);
      v67(v65, v20);
      v63 = 0;
    }
  }

  else
  {
    v63 = 0;
    v64 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityLatency);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889A0;
  *(inited + 32) = 0x546E6F6973736573;
  *(inited + 40) = 0xEB00000000657079;
  SessionViewModel.sessionType.getter();
  *(inited + 48) = sub_264785B54();
  *(inited + 56) = 0xD000000000000020;
  *(inited + 64) = 0x8000000264793D30;
  v69 = *(v2 + v124);
  *(inited + 72) = sub_264785994();
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x8000000264793D90;
  v119 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus;
  v70 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus);
  *(inited + 96) = sub_264785994();
  *(inited + 104) = 0xD000000000000028;
  *(inited + 112) = 0x8000000264793DF0;
  v118 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus;
  v71 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus);
  *(inited + 120) = sub_264785994();
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000264794310;
  *(inited + 144) = sub_264785864();
  v72 = sub_264655A9C(inited, &qword_27FF75E88, &unk_264789810);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  if (v116)
  {
    if (v117)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v99 = sub_264785904();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v72;
    sub_2646933E4(v99, 0xD000000000000021, 0x8000000264793D00, isUniquelyReferenced_nonNull_native);
    v72 = v126[0];
    if (v117)
    {
LABEL_32:
      if (v49)
      {
        goto LABEL_33;
      }

      goto LABEL_44;
    }
  }

  v101 = sub_264785904();
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v126[0] = v72;
  sub_2646933E4(v101, 0xD000000000000025, 0x8000000264793D60, v102);
  v72 = v126[0];
  if (v49)
  {
LABEL_33:
    if (v57)
    {
      goto LABEL_34;
    }

LABEL_45:
    v105 = sub_264785904();
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v72;
    sub_2646933E4(v105, 0xD000000000000019, 0x8000000264794410, v106);
    v72 = v126[0];
    if (v63)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_44:
  v103 = sub_264785904();
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v126[0] = v72;
  sub_2646933E4(v103, 0xD000000000000029, 0x8000000264793DC0, v104);
  v72 = v126[0];
  if ((v57 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_34:
  if ((v63 & 1) == 0)
  {
LABEL_35:
    v73 = sub_264785904();
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v72;
    sub_2646933E4(v73, 0xD000000000000018, 0x80000002647943F0, v74);
    v72 = v126[0];
  }

LABEL_36:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v75 = sub_264785994();
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v126[0] = v72;
  sub_2646933E4(v75, 0xD00000000000001ALL, 0x8000000264794330, v76);
  v77 = v126[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v78 = sub_264785994();
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v126[0] = v77;
  sub_2646933E4(v78, 0xD000000000000019, 0x8000000264794350, v79);
  v80 = v126[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v81 = v126[0];

  if (v81)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v82 = sub_264785864();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v80;
    sub_2646933E4(v82, 0xD000000000000011, 0x8000000264794370, v83);
    v80 = v126[0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v84 = v126[1];

  if (v84)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v85 = sub_264785864();
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v80;
    sub_2646933E4(v85, 0xD000000000000010, 0x8000000264794390, v86);
    v80 = v126[0];
  }

  v87 = v123;
  sub_264783DF4();

  v88 = sub_264783E14();
  v89 = sub_2647859F4();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v125 = v2;
    v126[0] = v91;
    *v90 = 136315650;

    v92 = sub_264785764();
    v94 = sub_2646DF234(v92, v93, v126);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2080;
    *(v90 + 14) = sub_2646DF234(0xD000000000000035, 0x80000002647943B0, v126);
    *(v90 + 22) = 2080;
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);

    v95 = sub_264785624();
    v97 = v96;

    v98 = sub_2646DF234(v95, v97, v126);

    *(v90 + 24) = v98;
    _os_log_impl(&dword_264605000, v88, v89, "%s, %s, sending analytics event StagingPerformance, %s", v90, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v91, -1, -1);
    MEMORY[0x266740650](v90, -1, -1);

    (*(v121 + 8))(v123, v122);
  }

  else
  {

    (*(v121 + 8))(v87, v122);
  }

  v107 = *MEMORY[0x277D4AE30];

  v108 = v107;
  sub_264692AAC(v80);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v109 = sub_264785604();

  AnalyticsSendEvent();

  *(v2 + v124) = 0;
  v110 = v118;
  v119[v2] = 0;
  *(v2 + v110) = 0;
}

uint64_t sub_264637EFC(int a1)
{
  v2 = v1;
  v47 = a1;
  v44 = sub_264783854();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v44);
  v45 = v6;
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = sub_264783AF4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v49 = &v43 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - v23;
  v25 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_lastSuggestionConversionEventTime;
  swift_beginAccess();
  sub_26460CCE8(v2 + v25, v14, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26460CD50(v14, &qword_27FF756B8, &qword_26478AC90);
  }

  else
  {
    (*(v16 + 32))(v24, v14, v15);
    v26 = v49;
    sub_264783AD4();
    sub_264783A44();
    v28 = v27;
    v43 = v12;
    v29 = v2;
    v30 = *(v16 + 8);
    v30(v26, v15);
    result = (v30)(v24, v15);
    v2 = v29;
    v12 = v43;
    if (v28 < 1.0)
    {
      return result;
    }
  }

  sub_264783AD4();
  (*(v16 + 56))(v12, 0, 1, v15);
  swift_beginAccess();
  sub_264659660(v12, v2 + v25, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  sub_264783AD4();
  sub_264783A54();
  (*(v16 + 8))(v20, v15);
  sub_264783AD4();
  v32 = v48;
  sub_264783844();
  v33 = objc_allocWithZone(MEMORY[0x277D4AC18]);
  v34 = sub_264783834();
  v35 = [v33 initWithIncludeSuppressed:0 sortByCreationDate:1 ascending:0 dateInterval:v34 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

  v36 = swift_allocObject();
  *(v36 + 16) = sub_264655A9C(MEMORY[0x277D84F90], &qword_27FF75E88, &unk_264789810);
  v37 = *(v2 + 16);
  v38 = v46;
  v39 = v44;
  (*(v3 + 16))(v46, v32, v44);
  v40 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  *(v41 + 24) = v47 & 1;
  *(v41 + 32) = v2;
  (*(v3 + 32))(v41 + v40, v38, v39);
  aBlock[4] = sub_26465908C;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264653FB8;
  aBlock[3] = &block_descriptor_478;
  v42 = _Block_copy(aBlock);

  [v37 fetchSuggestionsWithOptions:v35 handler:v42];
  _Block_release(v42);

  (*(v3 + 8))(v32, v39);
}

uint64_t sub_2646384B4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

Swift::Void __swiftcall SessionViewModel.onDidResignActive()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v68 - v5;
  v6 = sub_264783E24();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v68 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v68 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  sub_264783DF4();

  v19 = sub_264783E14();
  v20 = sub_2647859F4();

  v21 = os_log_type_enabled(v19, v20);
  v71 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v70 = v10;
    v23 = v22;
    v69 = swift_slowAlloc();
    v74[0] = v69;
    *v23 = 136315394;
    v75 = v1;

    v24 = sub_264785764();
    v26 = v13;
    v27 = v6;
    v28 = sub_2646DF234(v24, v25, v74);

    *(v23 + 4) = v28;
    v6 = v27;
    v13 = v26;
    v29 = v73;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v74);
    _os_log_impl(&dword_264605000, v19, v20, "%s, %s", v23, 0x16u);
    v30 = v69;
    swift_arrayDestroy();
    MEMORY[0x266740650](v30, -1, -1);
    v31 = v23;
    v10 = v70;
    MEMORY[0x266740650](v31, -1, -1);

    v32 = v29;
  }

  else
  {

    v32 = v73;
  }

  v33 = *(v32 + 8);
  v33(v18, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v34 = v74[0];
  if (v74[0])
  {
    if (([v74[0] isActiveState] & 1) == 0)
    {
      v35 = v71;
      sub_264783DF4();

      v36 = sub_264783E14();
      v37 = sub_2647859F4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v74[0] = v70;
        *v38 = 136315394;
        v75 = v1;

        v39 = sub_264785764();
        v41 = sub_2646DF234(v39, v40, v74);
        LODWORD(v69) = v37;
        v42 = v6;
        v43 = v41;

        *(v38 + 4) = v43;
        v6 = v42;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v74);
        _os_log_impl(&dword_264605000, v36, v69, "%s, %s:Reset sessionInitializationInfo", v38, 0x16u);
        v44 = v70;
        swift_arrayDestroy();
        MEMORY[0x266740650](v44, -1, -1);
        MEMORY[0x266740650](v38, -1, -1);

        v33(v71, v42);
      }

      else
      {

        v33(v35, v6);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      memset(v74, 0, sizeof(v74));

      sub_264783EE4();
      sub_264621B20();
    }

    if ([v34 sessionState] == 10 || objc_msgSend(v34, sel_sessionState) == 11)
    {
      sub_264783DF4();

      v54 = sub_264783E14();
      v55 = sub_2647859F4();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v71 = v33;
        v58 = v57;
        v74[0] = v57;
        *v56 = 136315394;
        v75 = v1;

        v59 = sub_264785764();
        v61 = v6;
        v62 = sub_2646DF234(v59, v60, v74);

        *(v56 + 4) = v62;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v74);
        _os_log_impl(&dword_264605000, v54, v55, "%s, %s:Canceling Initialization", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v58, -1, -1);
        MEMORY[0x266740650](v56, -1, -1);

        v71(v13, v61);
      }

      else
      {

        v33(v13, v6);
      }

      v63 = sub_2647858E4();
      v64 = v72;
      (*(*(v63 - 8) + 56))(v72, 1, 1, v63);
      sub_2647858B4();

      v65 = sub_2647858A4();
      v66 = swift_allocObject();
      v67 = MEMORY[0x277D85700];
      v66[2] = v65;
      v66[3] = v67;
      v66[4] = v1;
      sub_264635730(0, 0, v64, &unk_26478C7D0, v66);
    }
  }

  else
  {
    sub_264783DF4();

    v45 = sub_264783E14();
    v46 = sub_2647859D4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v33;
      v48 = swift_slowAlloc();
      v49 = v10;
      v50 = swift_slowAlloc();
      v74[0] = v50;
      *v48 = 136315394;
      v75 = v1;

      v51 = sub_264785764();
      v53 = sub_2646DF234(v51, v52, v74);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v74);
      _os_log_impl(&dword_264605000, v45, v46, "%s, %s: Unexpected found nil sessionState", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v48, -1, -1);

      v47(v49, v6);
    }

    else
    {

      v33(v10, v6);
    }
  }
}

uint64_t SessionViewModel.setSuggestedSessionConfiguration(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v10 = a1;
  v11 = sub_264783E14();
  v12 = sub_2647859F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v2;
    v28[0] = v26;
    *v13 = 136315651;

    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, v28);
    v25 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264793950, v28);
    *(v13 + 22) = 2117;
    *(v13 + 24) = v10;
    *v14 = v10;
    v19 = v10;
    _os_log_impl(&dword_264605000, v11, v12, "%s, %s: set suggested session configuration %{sensitive}@", v13, 0x20u);
    sub_26460CD50(v14, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v14, -1, -1);
    v20 = v26;
    swift_arrayDestroy();
    MEMORY[0x266740650](v20, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    (*(v6 + 8))(v9, v25);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v21 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v22 = *(v2 + v21);
  *(v2 + v21) = v10;
  v23 = v10;

  return sub_26461D484();
}

Swift::Void __swiftcall SessionViewModel.clearSuggestedSessionConfiguration()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v1;
    v18[0] = v11;
    *v10 = 136315394;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264793980, v18);
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: Clearing suggested session configuration", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v15 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v16 = *(v1 + v15);
  *(v1 + v15) = 0;

  sub_26461D484();
}

void sub_2646393C0()
{
  v0 = objc_opt_self();
  v1 = sub_264783A04();
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_2646594A0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26464CCBC;
  v4[3] = &block_descriptor_549;
  v3 = _Block_copy(v4);

  [v0 _mapItemFromHandle_completionHandler_];
  _Block_release(v3);
}

uint64_t sub_2646394CC(void *a1, void *a2)
{
  v4 = sub_264783E24();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_264785594();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2647855C4();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (!a2)
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v51 = sub_264785A44();
      v42 = swift_allocObject();
      *(v42 + 16) = v20;
      *(v42 + 24) = a1;
      aBlock[4] = sub_2646594A8;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_555;
      v43 = _Block_copy(aBlock);
      v44 = a1;

      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      sub_264785BD4();
      v45 = v51;
      MEMORY[0x26673F780](0, v18, v14, v43);
      _Block_release(v43);

      (*(v49 + 8))(v14, v11);
      return (*(v48 + 8))(v18, v15);
    }

    v21 = a2;
    sub_264783DF4();

    v22 = a2;
    v23 = sub_264783E14();
    v24 = sub_2647859D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v25 = 136315650;
      v53 = v20;
      type metadata accessor for SessionViewModel(0);

      v28 = sub_264785764();
      v30 = sub_2646DF234(v28, v29, aBlock);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
      *(v25 + 22) = 2112;
      v31 = a2;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v32;
      *v26 = v32;
      _os_log_impl(&dword_264605000, v23, v24, "%s, %s: Error resolving map item from map data handle, error, %@", v25, 0x20u);
      sub_26460CD50(v26, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v27, -1, -1);
      MEMORY[0x266740650](v25, -1, -1);
    }

    else
    {
    }

    v40 = *(v50 + 8);
    v41 = v10;
  }

  else
  {
    sub_264783DF4();

    v33 = sub_264783E14();
    v34 = sub_2647859D4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53 = v36;
      *v35 = 136315650;
      swift_beginAccess();
      aBlock[6] = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v37 = sub_264785764();
      v39 = sub_2646DF234(v37, v38, &v53);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, &v53);
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, &v53);
      _os_log_impl(&dword_264605000, v33, v34, "%s, %s: no reference to self in %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v36, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);
    }

    v40 = *(v50 + 8);
    v41 = v8;
  }

  return v40(v41, v51);
}

uint64_t sub_264639BF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a2;

  v8 = sub_264783EE4();
  return a5(v8);
}

uint64_t SessionViewModel.SendError.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783C74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionViewModel.startSession(needsSendMessage:)(char a1)
{
  *(v2 + 768) = v1;
  *(v2 + 698) = a1;
  *(v2 + 776) = *v1;
  v3 = sub_264783C44();
  *(v2 + 784) = v3;
  v4 = *(v3 - 8);
  *(v2 + 792) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 800) = swift_task_alloc();
  v6 = sub_264783B64();
  *(v2 + 808) = v6;
  v7 = *(v6 - 8);
  *(v2 + 816) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 824) = swift_task_alloc();
  v9 = sub_264783E24();
  *(v2 + 832) = v9;
  v10 = *(v9 - 8);
  *(v2 + 840) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 848) = swift_task_alloc();
  *(v2 + 856) = swift_task_alloc();
  *(v2 + 864) = swift_task_alloc();
  *(v2 + 872) = swift_task_alloc();
  *(v2 + 880) = swift_task_alloc();
  *(v2 + 888) = swift_task_alloc();
  *(v2 + 896) = swift_task_alloc();
  *(v2 + 904) = swift_task_alloc();
  v12 = sub_264783C74();
  *(v2 + 912) = v12;
  v13 = *(v12 - 8);
  *(v2 + 920) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 928) = swift_task_alloc();
  *(v2 + 936) = swift_task_alloc();
  *(v2 + 944) = sub_2647858B4();
  *(v2 + 952) = sub_2647858A4();
  v15 = swift_task_alloc();
  *(v2 + 960) = v15;
  *v15 = v2;
  v15[1] = sub_264639F9C;

  return SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(0);
}

uint64_t sub_264639F9C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 960);
  v5 = *v1;
  v3[121] = v0;

  v6 = v3[119];
  v7 = v3[118];
  v8 = sub_264785874();
  if (v2)
  {
    v10 = sub_26463C6D0;
  }

  else
  {
    v3[122] = v8;
    v3[123] = v9;
    v10 = sub_26463A104;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_26463A104()
{
  v1 = *(v0[96] + 16);
  v0[124] = v1;
  v0[2] = v0;
  v0[7] = v0 + 88;
  v0[3] = sub_26463A228;
  v2 = swift_continuation_init();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D60, &qword_264789348);
  v0[42] = MEMORY[0x277D85DD0];
  v0[43] = 1107296256;
  v0[44] = sub_26463E318;
  v0[45] = &block_descriptor_226;
  v0[46] = v2;
  [v1 fetchCurrentSessionStateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26463A228()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1000) = v3;
  v4 = *(v1 + 984);
  v5 = *(v1 + 976);
  if (v3)
  {
    v6 = sub_26463CBF0;
  }

  else
  {
    v6 = sub_26463A358;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26463A358()
{
  v132 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 704);
  *(v0 + 1008) = v2;
  v3 = *(v0 + 712);
  v4 = v2;
  sub_264617568(v2, v3);

  v5 = sub_26461A57C();
  *(v0 + 1016) = v5;
  if (!v5)
  {
    v11 = *(v0 + 952);
    v12 = *(v0 + 864);
    v13 = *(v0 + 768);

    sub_264783DF4();

    v14 = sub_264783E14();
    v15 = sub_2647859E4();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 864);
    v18 = *(v0 + 840);
    v19 = *(v0 + 832);
    if (v16)
    {
      v20 = *(v0 + 776);
      v21 = *(v0 + 768);
      v126 = v4;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v131[0] = v23;
      *v22 = 136315394;
      *(v0 + 728) = v21;

      v24 = sub_264785764();
      v26 = sub_2646DF234(v24, v25, v131);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v131);
      swift_arrayDestroy();
      MEMORY[0x266740650](v23, -1, -1);
      MEMORY[0x266740650](v22, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v17, v19);
    goto LABEL_25;
  }

  v6 = v5;
  v7 = *(v0 + 768);
  SessionViewModel.sendStartMessageValidity.getter(*(v0 + 936));
  if (sub_264783C64())
  {
    v8 = *(v0 + 992);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_26463AE70;
    v9 = swift_continuation_init();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
    *(v0 + 1024) = v10;
    *(v0 + 456) = v10;
    *(v0 + 400) = MEMORY[0x277D85DD0];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_2646384B4;
    *(v0 + 424) = &block_descriptor_229;
    *(v0 + 432) = v9;
    [v8 startSessionWithConfiguration:v6 completion:v0 + 400];

    return MEMORY[0x282200938](v0 + 80);
  }

  v127 = v4;
  v27 = *(v0 + 952);
  v28 = *(v0 + 936);
  v29 = *(v0 + 928);
  v30 = *(v0 + 920);
  v31 = *(v0 + 912);
  v32 = *(v0 + 872);
  v33 = *(v0 + 768);

  sub_264783DF4();
  v121 = *(v30 + 16);
  v121(v29, v28, v31);

  v34 = sub_264783E14();
  v35 = sub_2647859D4();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 928);
  v38 = *(v0 + 920);
  v119 = *(v0 + 912);
  v39 = *(v0 + 872);
  v40 = *(v0 + 840);
  v41 = *(v0 + 832);
  if (v36)
  {
    v116 = *(v0 + 872);
    v117 = *(v0 + 832);
    v42 = *(v0 + 800);
    v115 = v35;
    v43 = *(v0 + 792);
    v111 = *(v0 + 928);
    v112 = *(v0 + 784);
    log = v34;
    v44 = *(v0 + 776);
    v45 = *(v0 + 768);
    v46 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v131[0] = v113;
    *v46 = 136315650;
    *(v0 + 736) = v45;

    v47 = sub_264785764();
    v49 = sub_2646DF234(v47, v48, v131);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v131);
    *(v46 + 22) = 2080;
    sub_264783C54();
    v50 = sub_264783C34();
    v52 = v51;
    (*(v43 + 8))(v42, v112);
    v53 = *(v38 + 8);
    v53(v111, v119);
    v54 = sub_2646DF234(v50, v52, v131);

    *(v46 + 24) = v54;
    _os_log_impl(&dword_264605000, log, v115, "%s, %s: Start message send invalid: %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v113, -1, -1);
    v55 = v46;
    v56 = v53;
    MEMORY[0x266740650](v55, -1, -1);

    (*(v40 + 8))(v116, v117);
  }

  else
  {

    v56 = *(v38 + 8);
    v56(v37, v119);
    (*(v40 + 8))(v39, v41);
  }

  v57 = *(v0 + 936);
  v58 = *(v0 + 912);
  type metadata accessor for SessionViewModel.SendError(0);
  sub_264655E3C(&qword_27FF75D68, type metadata accessor for SessionViewModel.SendError);
  v59 = swift_allocError();
  v121(v60, v57, v58);
  swift_willThrow();

  v56(v57, v58);
  v61 = *(v0 + 856);
  v62 = *(v0 + 768);
  sub_264783DF4();

  v63 = v59;
  v64 = sub_264783E14();
  v65 = sub_2647859D4();

  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v0 + 856);
  v68 = *(v0 + 840);
  v69 = *(v0 + 832);
  if (v66)
  {
    v128 = *(v0 + 832);
    v70 = v59;
    v71 = *(v0 + 776);
    v123 = *(v0 + 856);
    v72 = *(v0 + 768);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v131[0] = v75;
    *v73 = 136315650;
    *(v0 + 720) = v72;

    v76 = sub_264785764();
    v78 = sub_2646DF234(v76, v77, v131);

    *(v73 + 4) = v78;
    v59 = v70;
    *(v73 + 12) = 2080;
    *(v73 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v131);
    *(v73 + 22) = 2112;
    v79 = v70;
    v80 = _swift_stdlib_bridgeErrorToNSError();
    *(v73 + 24) = v80;
    *v74 = v80;
    _os_log_impl(&dword_264605000, v64, v65, "%s, %s, error %@", v73, 0x20u);
    sub_26460CD50(v74, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v74, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v75, -1, -1);
    MEMORY[0x266740650](v73, -1, -1);

    (*(v68 + 8))(v123, v128);
  }

  else
  {

    (*(v68 + 8))(v67, v69);
  }

  if (*(v0 + 698) == 1)
  {
    v81 = sub_264783984();
    v82 = [v81 domain];
    v83 = sub_264785724();
    v85 = v84;

    v86 = *MEMORY[0x277D4ACD0];
    if (v83 == sub_264785724() && v85 == v87)
    {
    }

    else
    {
      v96 = sub_264785E84();

      if ((v96 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if ([v81 code] == 42)
    {
LABEL_24:

LABEL_25:
      v100 = *(v0 + 936);
      v101 = *(v0 + 928);
      v102 = *(v0 + 904);
      v103 = *(v0 + 896);
      v104 = *(v0 + 888);
      v105 = *(v0 + 880);
      v106 = *(v0 + 872);
      v107 = *(v0 + 864);
      v108 = *(v0 + 856);
      v109 = *(v0 + 848);
      v125 = *(v0 + 824);
      v130 = *(v0 + 800);

      v95 = *(v0 + 8);
      goto LABEL_26;
    }

LABEL_23:
    sub_264783CB4();
    sub_264783C84();
    v97 = sub_264785714();

    sub_264783C94();
    v98 = sub_264785714();

    sub_264783CA4();
    v99 = sub_264785714();

    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v97, v98, v99, 0, 0, 0);

    goto LABEL_24;
  }

  v88 = *(v0 + 936);
  v89 = *(v0 + 928);
  v90 = *(v0 + 904);
  v91 = *(v0 + 896);
  v92 = *(v0 + 888);
  v93 = *(v0 + 880);
  v94 = *(v0 + 872);
  v118 = *(v0 + 864);
  v120 = *(v0 + 856);
  v122 = *(v0 + 848);
  v124 = *(v0 + 824);
  v129 = *(v0 + 800);
  swift_willThrow();

  v95 = *(v0 + 8);
LABEL_26:

  return v95();
}

uint64_t sub_26463AE70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1032) = v3;
  v4 = *(v1 + 984);
  v5 = *(v1 + 976);
  if (v3)
  {
    v6 = sub_26463D118;
  }

  else
  {
    v6 = sub_26463AFA0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26463AFA0()
{
  v74 = v0;
  if (*(v0 + 698) == 1)
  {
    v1 = *(v0 + 768);
    started = SessionViewModel.smSessionStartMessage()();
    *(v0 + 1040) = started;
    if (started)
    {
      v3 = started;
      v4 = [*(v0 + 1016) conversation];
      *(v0 + 1048) = v4;
      v5 = [v3 summaryText];
      if (!v5)
      {
        sub_264785724();
        v5 = sub_264785714();
      }

      *(v0 + 1056) = v5;
      v6 = *(v0 + 992);
      *(v0 + 272) = v0;
      *(v0 + 312) = v0 + 680;
      *(v0 + 280) = sub_26463B758;
      v7 = swift_continuation_init();
      *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D88, &qword_264789360);
      *(v0 + 624) = v7;
      *(v0 + 592) = MEMORY[0x277D85DD0];
      *(v0 + 600) = 1107296256;
      *(v0 + 608) = sub_26463E3F8;
      *(v0 + 616) = &block_descriptor_238;
      [v6 sendMadridMessage:v3 associatedGUID:0 toConversation:v4 summaryText:v5 completion:v0 + 592];
      v8 = v0 + 272;
      goto LABEL_10;
    }

    v31 = *(v0 + 952);
    v32 = *(v0 + 904);
    v33 = *(v0 + 768);

    sub_264783DF4();

    v34 = sub_264783E14();
    v35 = sub_2647859E4();

    v36 = os_log_type_enabled(v34, v35);
    v71 = *(v0 + 1016);
    v37 = *(v0 + 1008);
    v38 = *(v0 + 936);
    v39 = *(v0 + 920);
    v40 = *(v0 + 912);
    v41 = *(v0 + 904);
    v42 = *(v0 + 840);
    v43 = *(v0 + 832);
    if (v36)
    {
      v66 = *(v0 + 832);
      v68 = *(v0 + 936);
      v44 = *(v0 + 776);
      v45 = *(v0 + 768);
      v64 = *(v0 + 912);
      v46 = swift_slowAlloc();
      v63 = v41;
      v47 = swift_slowAlloc();
      v73 = v47;
      *v46 = 136315394;
      *(v0 + 760) = v45;

      v48 = sub_264785764();
      v50 = sub_2646DF234(v48, v49, &v73);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v73);
      swift_arrayDestroy();
      MEMORY[0x266740650](v47, -1, -1);
      MEMORY[0x266740650](v46, -1, -1);

      (*(v42 + 8))(v63, v66);
      (*(v39 + 8))(v68, v64);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
      (*(v39 + 8))(v38, v40);
    }
  }

  else
  {
    v9 = *(v0 + 1016);
    v10 = *(v0 + 768);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v11 = *(v0 + 744);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v12 = *(v0 + 697);
    sub_26463E4D4(v9);
    sub_26463E810(v9);
    sub_264636D6C(1);
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    swift_beginAccess();
    if (*(v10 + v13) == 2)
    {
      v14 = *(v0 + 768);
      sub_264637EFC(1);
    }

    if ([*(v0 + 1016) sessionType] == 4)
    {
      v15 = *(v0 + 992);
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 752;
      *(v0 + 152) = sub_26463BD1C;
      v16 = swift_continuation_init();
      *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D78, &qword_264789358);
      *(v0 + 464) = MEMORY[0x277D85DD0];
      *(v0 + 472) = 1107296256;
      *(v0 + 480) = sub_26463F8C4;
      *(v0 + 488) = &block_descriptor_232;
      *(v0 + 496) = v16;
      [v15 fetchCurrentWorkoutSnapshotWithCompletion_];
      v8 = v0 + 144;
LABEL_10:

      return MEMORY[0x282200938](v8);
    }

    v17 = *(v0 + 952);
    v18 = *(v0 + 880);

    sub_264783DF4();
    v19 = sub_264783E14();
    v20 = sub_2647859C4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 1016);
    v23 = *(v0 + 1008);
    v24 = *(v0 + 936);
    v25 = *(v0 + 920);
    v26 = *(v0 + 912);
    v70 = *(v0 + 880);
    v27 = *(v0 + 840);
    v28 = *(v0 + 832);
    if (v21)
    {
      v67 = *(v0 + 936);
      v29 = swift_slowAlloc();
      v65 = v26;
      v30 = swift_slowAlloc();
      v73 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v73);
      _os_log_impl(&dword_264605000, v19, v20, "%s: not considering ending session because not workout-bound", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x266740650](v30, -1, -1);
      MEMORY[0x266740650](v29, -1, -1);

      (*(v27 + 8))(v70, v28);
      (*(v25 + 8))(v67, v65);
    }

    else
    {

      (*(v27 + 8))(v70, v28);
      (*(v25 + 8))(v24, v26);
    }
  }

  v51 = *(v0 + 936);
  v52 = *(v0 + 928);
  v53 = *(v0 + 904);
  v54 = *(v0 + 896);
  v55 = *(v0 + 888);
  v56 = *(v0 + 880);
  v57 = *(v0 + 872);
  v58 = *(v0 + 864);
  v59 = *(v0 + 856);
  v60 = *(v0 + 848);
  v69 = *(v0 + 824);
  v72 = *(v0 + 800);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_26463B758()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 304);
  *(*v0 + 1064) = v3;
  v4 = *(v1 + 984);
  v5 = *(v1 + 976);
  if (v3)
  {
    v6 = sub_26463D674;
  }

  else
  {
    v6 = sub_26463B888;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26463B888()
{
  v44 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);

  v3 = *(v0 + 688);

  v4 = *(v0 + 1016);
  v5 = *(v0 + 768);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v6 = *(v0 + 744);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v7 = *(v0 + 697);
  sub_26463E4D4(v4);
  sub_26463E810(v4);
  sub_264636D6C(1);
  v8 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  if (*(v5 + v8) == 2)
  {
    v9 = *(v0 + 768);
    sub_264637EFC(1);
  }

  if ([*(v0 + 1016) sessionType] == 4)
  {
    v10 = *(v0 + 992);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 752;
    *(v0 + 152) = sub_26463BD1C;
    v11 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D78, &qword_264789358);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_26463F8C4;
    *(v0 + 488) = &block_descriptor_232;
    *(v0 + 496) = v11;
    [v10 fetchCurrentWorkoutSnapshotWithCompletion_];

    return MEMORY[0x282200938](v0 + 144);
  }

  else
  {
    v12 = *(v0 + 952);
    v13 = *(v0 + 880);

    sub_264783DF4();
    v14 = sub_264783E14();
    v15 = sub_2647859C4();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1016);
    v18 = *(v0 + 1008);
    v19 = *(v0 + 936);
    v20 = *(v0 + 920);
    v21 = *(v0 + 912);
    v41 = *(v0 + 880);
    v22 = *(v0 + 840);
    v23 = *(v0 + 832);
    if (v16)
    {
      v39 = *(v0 + 936);
      v24 = swift_slowAlloc();
      v38 = v21;
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v43);
      _os_log_impl(&dword_264605000, v14, v15, "%s: not considering ending session because not workout-bound", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x266740650](v25, -1, -1);
      MEMORY[0x266740650](v24, -1, -1);

      (*(v22 + 8))(v41, v23);
      (*(v20 + 8))(v39, v38);
    }

    else
    {

      (*(v22 + 8))(v41, v23);
      (*(v20 + 8))(v19, v21);
    }

    v26 = *(v0 + 936);
    v27 = *(v0 + 928);
    v28 = *(v0 + 904);
    v29 = *(v0 + 896);
    v30 = *(v0 + 888);
    v31 = *(v0 + 880);
    v32 = *(v0 + 872);
    v33 = *(v0 + 864);
    v34 = *(v0 + 856);
    v35 = *(v0 + 848);
    v40 = *(v0 + 824);
    v42 = *(v0 + 800);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_26463BD1C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1072) = v3;
  v4 = *(v1 + 984);
  v5 = *(v1 + 976);
  if (v3)
  {
    v6 = sub_26463DBE8;
  }

  else
  {
    v6 = sub_26463BE4C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26463BE4C()
{
  v40 = v0;
  v1 = *(v0 + 752);
  if (v1 && (v2 = [*(v0 + 752) isWorkoutOngoing], v1, v2))
  {
    v3 = *(v0 + 1016);
    v4 = *(v0 + 1008);
    v5 = *(v0 + 952);
    (*(*(v0 + 920) + 8))(*(v0 + 936), *(v0 + 912));

    v6 = *(v0 + 936);
    v7 = *(v0 + 928);
    v8 = *(v0 + 904);
    v9 = *(v0 + 896);
    v10 = *(v0 + 888);
    v11 = *(v0 + 880);
    v12 = *(v0 + 872);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    v37 = *(v0 + 824);
    v38 = *(v0 + 800);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 896);
    sub_264783DF4();
    v19 = sub_264783E14();
    v20 = sub_2647859F4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 896);
    v23 = *(v0 + 840);
    v24 = *(v0 + 832);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v39);
      _os_log_impl(&dword_264605000, v19, v20, "%s: ending session because there's no longer a workout", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v25, -1, -1);
    }

    v27 = *(v23 + 8);
    v27(v22, v24);
    *(v0 + 1080) = v27;
    v28 = *(v0 + 1024);
    v29 = *(v0 + 992);
    v30 = *(v0 + 824);
    v31 = *(v0 + 816);
    v32 = *(v0 + 808);
    v33 = [*(v0 + 1016) sessionID];
    sub_264783B44();

    v34 = sub_264783B14();
    *(v0 + 1088) = v34;
    v35 = *(v31 + 8);
    *(v0 + 1096) = v35;
    *(v0 + 1104) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v30, v32);
    *(v0 + 208) = v0;
    *(v0 + 216) = sub_26463C1FC;
    v36 = swift_continuation_init();
    *(v0 + 584) = v28;
    *(v0 + 560) = v36;
    *(v0 + 528) = MEMORY[0x277D85DD0];
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_2646384B4;
    *(v0 + 552) = &block_descriptor_235;
    [v29 endSessionForSessionID:v34 reason:8 completion:v0 + 528];

    return MEMORY[0x282200938](v0 + 208);
  }
}

uint64_t sub_26463C1FC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 240);
  *(*v0 + 1112) = v3;
  v4 = *(v1 + 984);
  v5 = *(v1 + 976);
  if (v3)
  {
    v6 = sub_26463DF7C;
  }

  else
  {
    v6 = sub_26463C32C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26463C32C()
{
  v54 = v0;
  v1 = v0[136];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[111];

  sub_264783DF4();
  v5 = v2;
  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v41 = v0[137];
    v42 = v0[138];
    v8 = v0[127];
    v47 = v0[126];
    v48 = v0[135];
    v9 = v0[115];
    v49 = v0[114];
    v51 = v0[117];
    v43 = v8;
    v44 = v0[105];
    v45 = v0[104];
    v46 = v0[111];
    v10 = v0[103];
    v11 = v0[101];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v53 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v53);
    *(v12 + 12) = 2080;
    v14 = [v8 sessionID];
    sub_264783B44();

    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v15 = sub_264785E44();
    v17 = v16;
    v41(v10, v11);
    v18 = sub_2646DF234(v15, v17, &v53);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_264605000, v6, v7, "%s): ended session with ID %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    v48(v46, v45);
    (*(v9 + 8))(v51, v49);
  }

  else
  {
    v19 = v0[135];
    v20 = v0[127];
    v21 = v0[126];
    v22 = v0[117];
    v23 = v0[115];
    v24 = v0[114];
    v25 = v0[111];
    v26 = v6;
    v27 = v0[105];
    v28 = v0[104];

    v19(v25, v28);
    (*(v23 + 8))(v22, v24);
  }

  v29 = v0[117];
  v30 = v0[116];
  v31 = v0[113];
  v32 = v0[112];
  v33 = v0[111];
  v34 = v0[110];
  v35 = v0[109];
  v36 = v0[108];
  v37 = v0[107];
  v38 = v0[106];
  v50 = v0[103];
  v52 = v0[100];

  v39 = v0[1];

  return v39();
}

uint64_t sub_26463C6D0()
{
  v63 = v0;
  v1 = *(v0 + 952);

  v2 = *(v0 + 968);
  v3 = *(v0 + 856);
  v4 = *(v0 + 768);
  sub_264783DF4();

  v5 = v2;
  v6 = sub_264783E14();
  v7 = sub_2647859D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 840);
    v56 = *(v0 + 832);
    v59 = *(v0 + 856);
    v9 = v2;
    v10 = *(v0 + 776);
    v11 = *(v0 + 768);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v62[0] = v14;
    *v12 = 136315650;
    *(v0 + 720) = v11;

    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, v62);

    *(v12 + 4) = v17;
    v2 = v9;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v62);
    *(v12 + 22) = 2112;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v13 = v19;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s, error %@", v12, 0x20u);
    sub_26460CD50(v13, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v14, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    (*(v8 + 8))(v59, v56);
  }

  else
  {
    v20 = *(v0 + 856);
    v21 = *(v0 + 840);
    v22 = *(v0 + 832);

    (*(v21 + 8))(v20, v22);
  }

  if (*(v0 + 698) != 1)
  {
    v30 = *(v0 + 936);
    v31 = *(v0 + 928);
    v32 = *(v0 + 904);
    v33 = *(v0 + 896);
    v34 = *(v0 + 888);
    v35 = *(v0 + 880);
    v36 = *(v0 + 872);
    v53 = *(v0 + 864);
    v54 = *(v0 + 856);
    v55 = *(v0 + 848);
    v57 = *(v0 + 824);
    v60 = *(v0 + 800);
    swift_willThrow();

    v37 = *(v0 + 8);
    goto LABEL_13;
  }

  v23 = sub_264783984();
  v24 = [v23 domain];
  v25 = sub_264785724();
  v27 = v26;

  v28 = *MEMORY[0x277D4ACD0];
  if (v25 == sub_264785724() && v27 == v29)
  {
  }

  else
  {
    v38 = sub_264785E84();

    if ((v38 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v39 = sub_264785714();

      sub_264783C94();
      v40 = sub_264785714();

      sub_264783CA4();
      v41 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v39, v40, v41, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v23 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v42 = *(v0 + 936);
  v43 = *(v0 + 928);
  v44 = *(v0 + 904);
  v45 = *(v0 + 896);
  v46 = *(v0 + 888);
  v47 = *(v0 + 880);
  v48 = *(v0 + 872);
  v49 = *(v0 + 864);
  v50 = *(v0 + 856);
  v51 = *(v0 + 848);
  v58 = *(v0 + 824);
  v61 = *(v0 + 800);

  v37 = *(v0 + 8);
LABEL_13:

  return v37();
}

uint64_t sub_26463CBF0()
{
  v64 = v0;
  v1 = *(v0 + 1000);
  v2 = *(v0 + 952);

  swift_willThrow();
  v3 = *(v0 + 1000);
  v4 = *(v0 + 856);
  v5 = *(v0 + 768);
  sub_264783DF4();

  v6 = v3;
  v7 = sub_264783E14();
  v8 = sub_2647859D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 840);
    v57 = *(v0 + 832);
    v60 = *(v0 + 856);
    v10 = v3;
    v11 = *(v0 + 776);
    v12 = *(v0 + 768);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v63[0] = v15;
    *v13 = 136315650;
    *(v0 + 720) = v12;

    v16 = sub_264785764();
    v18 = sub_2646DF234(v16, v17, v63);

    *(v13 + 4) = v18;
    v3 = v10;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v63);
    *(v13 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    *v14 = v20;
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s, error %@", v13, 0x20u);
    sub_26460CD50(v14, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    (*(v9 + 8))(v60, v57);
  }

  else
  {
    v21 = *(v0 + 856);
    v22 = *(v0 + 840);
    v23 = *(v0 + 832);

    (*(v22 + 8))(v21, v23);
  }

  if (*(v0 + 698) != 1)
  {
    v31 = *(v0 + 936);
    v32 = *(v0 + 928);
    v33 = *(v0 + 904);
    v34 = *(v0 + 896);
    v35 = *(v0 + 888);
    v36 = *(v0 + 880);
    v37 = *(v0 + 872);
    v54 = *(v0 + 864);
    v55 = *(v0 + 856);
    v56 = *(v0 + 848);
    v58 = *(v0 + 824);
    v61 = *(v0 + 800);
    swift_willThrow();

    v38 = *(v0 + 8);
    goto LABEL_13;
  }

  v24 = sub_264783984();
  v25 = [v24 domain];
  v26 = sub_264785724();
  v28 = v27;

  v29 = *MEMORY[0x277D4ACD0];
  if (v26 == sub_264785724() && v28 == v30)
  {
  }

  else
  {
    v39 = sub_264785E84();

    if ((v39 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v40 = sub_264785714();

      sub_264783C94();
      v41 = sub_264785714();

      sub_264783CA4();
      v42 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v40, v41, v42, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v24 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v43 = *(v0 + 936);
  v44 = *(v0 + 928);
  v45 = *(v0 + 904);
  v46 = *(v0 + 896);
  v47 = *(v0 + 888);
  v48 = *(v0 + 880);
  v49 = *(v0 + 872);
  v50 = *(v0 + 864);
  v51 = *(v0 + 856);
  v52 = *(v0 + 848);
  v59 = *(v0 + 824);
  v62 = *(v0 + 800);

  v38 = *(v0 + 8);
LABEL_13:

  return v38();
}

uint64_t sub_26463D118()
{
  v69 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 952);
  v5 = *(v0 + 936);
  v6 = *(v0 + 920);
  v7 = *(v0 + 912);

  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 856);
  v10 = *(v0 + 768);
  sub_264783DF4();

  v11 = v8;
  v12 = sub_264783E14();
  v13 = sub_2647859D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 840);
    v62 = *(v0 + 832);
    v65 = *(v0 + 856);
    v15 = v8;
    v16 = *(v0 + 776);
    v17 = *(v0 + 768);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v68[0] = v20;
    *v18 = 136315650;
    *(v0 + 720) = v17;

    v21 = sub_264785764();
    v23 = sub_2646DF234(v21, v22, v68);

    *(v18 + 4) = v23;
    v8 = v15;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v68);
    *(v18 + 22) = 2112;
    v24 = v15;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v25;
    *v19 = v25;
    _os_log_impl(&dword_264605000, v12, v13, "%s, %s, error %@", v18, 0x20u);
    sub_26460CD50(v19, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v20, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);

    (*(v14 + 8))(v65, v62);
  }

  else
  {
    v26 = *(v0 + 856);
    v27 = *(v0 + 840);
    v28 = *(v0 + 832);

    (*(v27 + 8))(v26, v28);
  }

  if (*(v0 + 698) != 1)
  {
    v36 = *(v0 + 936);
    v37 = *(v0 + 928);
    v38 = *(v0 + 904);
    v39 = *(v0 + 896);
    v40 = *(v0 + 888);
    v41 = *(v0 + 880);
    v42 = *(v0 + 872);
    v59 = *(v0 + 864);
    v60 = *(v0 + 856);
    v61 = *(v0 + 848);
    v63 = *(v0 + 824);
    v66 = *(v0 + 800);
    swift_willThrow();

    v43 = *(v0 + 8);
    goto LABEL_13;
  }

  v29 = sub_264783984();
  v30 = [v29 domain];
  v31 = sub_264785724();
  v33 = v32;

  v34 = *MEMORY[0x277D4ACD0];
  if (v31 == sub_264785724() && v33 == v35)
  {
  }

  else
  {
    v44 = sub_264785E84();

    if ((v44 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v45 = sub_264785714();

      sub_264783C94();
      v46 = sub_264785714();

      sub_264783CA4();
      v47 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v45, v46, v47, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v29 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v48 = *(v0 + 936);
  v49 = *(v0 + 928);
  v50 = *(v0 + 904);
  v51 = *(v0 + 896);
  v52 = *(v0 + 888);
  v53 = *(v0 + 880);
  v54 = *(v0 + 872);
  v55 = *(v0 + 864);
  v56 = *(v0 + 856);
  v57 = *(v0 + 848);
  v64 = *(v0 + 824);
  v67 = *(v0 + 800);

  v43 = *(v0 + 8);
LABEL_13:

  return v43();
}

uint64_t sub_26463D674()
{
  v72 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 952);
  v8 = *(v0 + 936);
  v9 = *(v0 + 920);
  v10 = *(v0 + 912);

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  v11 = *(v0 + 1064);
  v12 = *(v0 + 856);
  v13 = *(v0 + 768);
  sub_264783DF4();

  v14 = v11;
  v15 = sub_264783E14();
  v16 = sub_2647859D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 840);
    v65 = *(v0 + 832);
    v68 = *(v0 + 856);
    v18 = v11;
    v19 = *(v0 + 776);
    v20 = *(v0 + 768);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v71[0] = v23;
    *v21 = 136315650;
    *(v0 + 720) = v20;

    v24 = sub_264785764();
    v26 = sub_2646DF234(v24, v25, v71);

    *(v21 + 4) = v26;
    v11 = v18;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v71);
    *(v21 + 22) = 2112;
    v27 = v18;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 24) = v28;
    *v22 = v28;
    _os_log_impl(&dword_264605000, v15, v16, "%s, %s, error %@", v21, 0x20u);
    sub_26460CD50(v22, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v23, -1, -1);
    MEMORY[0x266740650](v21, -1, -1);

    (*(v17 + 8))(v68, v65);
  }

  else
  {
    v29 = *(v0 + 856);
    v30 = *(v0 + 840);
    v31 = *(v0 + 832);

    (*(v30 + 8))(v29, v31);
  }

  if (*(v0 + 698) != 1)
  {
    v39 = *(v0 + 936);
    v40 = *(v0 + 928);
    v41 = *(v0 + 904);
    v42 = *(v0 + 896);
    v43 = *(v0 + 888);
    v44 = *(v0 + 880);
    v45 = *(v0 + 872);
    v62 = *(v0 + 864);
    v63 = *(v0 + 856);
    v64 = *(v0 + 848);
    v66 = *(v0 + 824);
    v69 = *(v0 + 800);
    swift_willThrow();

    v46 = *(v0 + 8);
    goto LABEL_13;
  }

  v32 = sub_264783984();
  v33 = [v32 domain];
  v34 = sub_264785724();
  v36 = v35;

  v37 = *MEMORY[0x277D4ACD0];
  if (v34 == sub_264785724() && v36 == v38)
  {
  }

  else
  {
    v47 = sub_264785E84();

    if ((v47 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v48 = sub_264785714();

      sub_264783C94();
      v49 = sub_264785714();

      sub_264783CA4();
      v50 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v48, v49, v50, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v32 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v51 = *(v0 + 936);
  v52 = *(v0 + 928);
  v53 = *(v0 + 904);
  v54 = *(v0 + 896);
  v55 = *(v0 + 888);
  v56 = *(v0 + 880);
  v57 = *(v0 + 872);
  v58 = *(v0 + 864);
  v59 = *(v0 + 856);
  v60 = *(v0 + 848);
  v67 = *(v0 + 824);
  v70 = *(v0 + 800);

  v46 = *(v0 + 8);
LABEL_13:

  return v46();
}

uint64_t sub_26463DBE8()
{
  v50 = v0;
  v1 = v0[134];
  v2 = v0[119];

  swift_willThrow();
  v3 = v0[134];
  v4 = v0[127];
  v5 = v0[106];
  sub_264783DF4();
  v6 = v4;
  v7 = sub_264783E14();
  v8 = sub_2647859D4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[127];
  v11 = v0[126];
  v12 = v0[117];
  v13 = v0[115];
  v14 = v0[114];
  v15 = v0[106];
  v16 = v0[105];
  v45 = v11;
  v47 = v0[104];
  if (v9)
  {
    v44 = v0[117];
    v17 = v0[103];
    v42 = v3;
    v18 = v0[102];
    v38 = v8;
    v19 = v0[101];
    v43 = v0[114];
    v20 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49[0] = v39;
    *v20 = 136315394;
    *(v20 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v49);
    *(v20 + 12) = 2080;
    v40 = v10;
    v41 = v15;
    v21 = [v10 sessionID];
    sub_264783B44();

    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v22 = sub_264785E44();
    v24 = v23;
    (*(v18 + 8))(v17, v19);
    v25 = sub_2646DF234(v22, v24, v49);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_264605000, v7, v38, "%s): error (considering) ending session with ID %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v39, -1, -1);
    MEMORY[0x266740650](v20, -1, -1);

    (*(v16 + 8))(v41, v47);
    (*(v13 + 8))(v44, v43);
  }

  else
  {

    (*(v16 + 8))(v15, v47);
    (*(v13 + 8))(v12, v14);
  }

  v26 = v0[117];
  v27 = v0[116];
  v28 = v0[113];
  v29 = v0[112];
  v30 = v0[111];
  v31 = v0[110];
  v32 = v0[109];
  v33 = v0[108];
  v34 = v0[107];
  v35 = v0[106];
  v46 = v0[103];
  v48 = v0[100];

  v36 = v0[1];

  return v36();
}

uint64_t sub_26463DF7C()
{
  v51 = v0;
  v1 = v0[139];
  v2 = v0[136];
  v3 = v0[119];

  swift_willThrow();

  v4 = v0[139];
  v5 = v0[127];
  v6 = v0[106];
  sub_264783DF4();
  v7 = v5;
  v8 = sub_264783E14();
  v9 = sub_2647859D4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[127];
  v12 = v0[126];
  v13 = v0[117];
  v14 = v0[115];
  v15 = v0[114];
  v16 = v0[106];
  v17 = v0[105];
  v46 = v12;
  v48 = v0[104];
  if (v10)
  {
    v45 = v0[117];
    v18 = v0[103];
    v43 = v4;
    v19 = v0[102];
    v39 = v9;
    v20 = v0[101];
    v44 = v0[114];
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50[0] = v40;
    *v21 = 136315394;
    *(v21 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v50);
    *(v21 + 12) = 2080;
    v41 = v11;
    v42 = v16;
    v22 = [v11 sessionID];
    sub_264783B44();

    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v23 = sub_264785E44();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_2646DF234(v23, v25, v50);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_264605000, v8, v39, "%s): error (considering) ending session with ID %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v40, -1, -1);
    MEMORY[0x266740650](v21, -1, -1);

    (*(v17 + 8))(v42, v48);
    (*(v14 + 8))(v45, v44);
  }

  else
  {

    (*(v17 + 8))(v16, v48);
    (*(v14 + 8))(v13, v15);
  }

  v27 = v0[117];
  v28 = v0[116];
  v29 = v0[113];
  v30 = v0[112];
  v31 = v0[111];
  v32 = v0[110];
  v33 = v0[109];
  v34 = v0[108];
  v35 = v0[107];
  v36 = v0[106];
  v47 = v0[103];
  v49 = v0[100];

  v37 = v0[1];

  return v37();
}

uint64_t sub_26463E318(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_26463E3F8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    v10 = sub_264785724();
    v11 = *(*(v6 + 64) + 40);
    *v11 = v10;
    *(v11 + 8) = v12;
    *(v11 + 16) = a3;

    return MEMORY[0x282200950](v6);
  }
}

uint64_t sub_26463E4D4(void *a1)
{
  v2 = v1;
  [a1 sessionType];
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  *(inited + 32) = 0x546E6F6973736573;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = sub_264785B54();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000264794430;
  *(inited + 72) = sub_264785B54();
  v7 = sub_264655A9C(inited, &qword_27FF75E88, &unk_264789810);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  *(v5 + 16) = v7;
  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) != 2)
  {
    v8 = sub_264785864();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v7;
    *(v5 + 16) = 0x8000000000000000;
    sub_2646933E4(v8, 0xD000000000000013, 0x8000000264793F60, isUniquelyReferenced_nonNull_native);
    v7 = v21[0];
    *(v5 + 16) = v21[0];
  }

  v10 = sub_264785864();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v7;
  *(v5 + 16) = 0x8000000000000000;
  sub_2646933E4(v10, 0xD000000000000014, 0x8000000264794570, v11);
  v12 = v21[0];
  *(v5 + 16) = v21[0];
  v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = sub_264785B54();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v12;
  *(v5 + 16) = 0x8000000000000000;
  sub_2646933E4(v15, 0xD000000000000011, 0x8000000264794590, v16);
  *(v5 + 16) = v21[0];
  v17 = *(v2 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = v2;
  v21[4] = sub_26465929C;
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_26465A0C0;
  v21[3] = &block_descriptor_528;
  v19 = _Block_copy(v21);

  [v17 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v19);
}

uint64_t sub_26463E810(void *a1)
{
  v106 = sub_264785594();
  v105 = *(v106 - 8);
  v2 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v103 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2647855C4();
  v102 = *(v104 - 8);
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_264783BC4();
  v91 = *(v92 - 8);
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v96 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v99 = &v88 - v14;
  v94 = sub_264783C14();
  v93 = *(v94 - 1);
  v15 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_264783BE4();
  v97 = *(v98 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v108 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_264783AF4();
  v109 = *(v20 - 8);
  v21 = *(v109 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v89 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v88 - v25;
  MEMORY[0x28223BE20](v24);
  v107 = &v88 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  strcpy((inited + 32), "numRecipients");
  *(inited + 46) = -4864;
  v29 = [a1 conversation];
  v30 = [v29 receiverHandles];

  v100 = sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
  v31 = sub_2647857F4();

  if (v31 >> 62)
  {
    sub_264785C14();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = swift_allocObject();
  *(inited + 48) = sub_264785994();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000264794430;
  v34 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  v35 = v111;
  swift_beginAccess();
  v36 = *(v35 + v34);
  *(inited + 72) = sub_264785B54();
  *(inited + 80) = 0x546E6F6973736573;
  *(inited + 88) = 0xEF6D756E45657079;
  [a1 sessionType];
  *(inited + 96) = sub_264785B54();
  v37 = sub_264655A9C(inited, &qword_27FF75E88, &unk_264789810);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  *(v33 + 16) = v37;
  SessionViewModel.sessionDestinationType.getter();
  v38 = sub_264785B54();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v37;
  *(v33 + 16) = 0x8000000000000000;
  sub_2646933E4(v38, 0xD00000000000001BLL, 0x80000002647944B0, isUniquelyReferenced_nonNull_native);
  *(v33 + 16) = aBlock;
  v110 = a1;
  v40 = [a1 sessionStartDate];
  v41 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if (v40)
  {
    v42 = v40;
    sub_264783AC4();

    v43 = *(v109 + 32);
    v43(v107, v26, v20);
    v44 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_264783BB4();
    sub_264783C04();
    v45 = sub_264783BF4();
    (*(v93 + 8))(v17, v94);
    [v44 setTimeZone_];

    v46 = sub_264785714();
    [v44 setDateFormat_];

    v47 = sub_264783A64();
    v48 = [v44 stringFromDate_];

    if (!v48)
    {
      sub_264785724();
      v48 = sub_264785714();
    }

    v94 = v44;
    v49 = [v44 dateFromString_];

    v50 = v99;
    v51 = v96;
    v52 = v95;
    if (v49)
    {
      sub_264783AC4();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = v109;
    (*(v109 + 56))(v52, v53, 1, v20);
    sub_26460E7E4(v52, v50, &qword_27FF756B8, &qword_26478AC90);
    sub_26460CCE8(v50, v51, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v54 + 48))(v51, 1, v20) == 1)
    {

      sub_26460CD50(v50, &qword_27FF756B8, &qword_26478AC90);
      (*(v97 + 8))(v108, v98);
      (*(v109 + 8))(v107, v20);
      sub_26460CD50(v51, &qword_27FF756B8, &qword_26478AC90);
    }

    else
    {
      v55 = v89;
      v43(v89, v51, v20);
      v56 = v91;
      v57 = v109;
      v58 = v90;
      v59 = v92;
      (*(v91 + 104))(v90, *MEMORY[0x277CC9980], v92);
      sub_264783BD4();
      (*(v56 + 8))(v58, v59);
      v60 = sub_264785994();
      v61 = *(v33 + 16);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v61;
      *(v33 + 16) = 0x8000000000000000;
      sub_2646933E4(v60, 0xD000000000000015, 0x8000000264794490, v62);
      *(v33 + 16) = aBlock;

      v63 = *(v57 + 8);
      v63(v55, v20);
      sub_26460CD50(v50, &qword_27FF756B8, &qword_26478AC90);
      (*(v97 + 8))(v108, v98);
      v63(v107, v20);
    }

    v41 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  }

  v64 = dispatch_group_create();
  dispatch_group_enter(v64);
  v65 = *(v111 + 16);
  v66 = [v110 *(v41 + 120)];
  v67 = [v66 receiverHandles];

  if (!v67)
  {
    sub_2647857F4();
    v67 = sub_2647857E4();
  }

  v68 = swift_allocObject();
  *(v68 + 16) = v33;
  *(v68 + 24) = v64;
  v117 = sub_264659120;
  v118 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_264652E80;
  v116 = &block_descriptor_485;
  v69 = _Block_copy(&aBlock);

  v70 = v64;

  [v65 fetchNumFavoriteRecipientsWithReceiverHandles:v67 handler:v69];
  _Block_release(v69);

  dispatch_group_enter(v70);
  v71 = [v110 v41 + 1194];
  v72 = [v71 receiverHandles];

  if (!v72)
  {
    sub_2647857F4();
    v72 = sub_2647857E4();
  }

  v73 = swift_allocObject();
  *(v73 + 16) = v33;
  *(v73 + 24) = v70;
  v117 = sub_264659160;
  v118 = v73;
  aBlock = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_264652E80;
  v116 = &block_descriptor_491;
  v74 = _Block_copy(&aBlock);

  v75 = v70;

  [v65 fetchNumEmergencyRecipientsWithReceiverHandles:v72 handler:v74];
  _Block_release(v74);

  dispatch_group_enter(v75);
  v76 = [v110 v41 + 1194];
  v77 = [v76 receiverHandles];

  if (!v77)
  {
    sub_2647857F4();
    v77 = sub_2647857E4();
  }

  v78 = swift_allocObject();
  *(v78 + 16) = v33;
  *(v78 + 24) = v75;
  v117 = sub_2646591A0;
  v118 = v78;
  aBlock = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_264652E80;
  v116 = &block_descriptor_497;
  v79 = _Block_copy(&aBlock);

  v80 = v75;

  [v65 fetchNumiCloudFamilyRecipientsWithReceiverHandles:v77 handler:v79];
  _Block_release(v79);

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v81 = sub_264785A44();
  v82 = swift_allocObject();
  *(v82 + 16) = v111;
  *(v82 + 24) = v33;
  v117 = sub_2646591E4;
  v118 = v82;
  aBlock = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_264659F60;
  v116 = &block_descriptor_503;
  v83 = _Block_copy(&aBlock);

  v84 = v101;
  sub_2647855B4();
  v112 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  v85 = v103;
  v86 = v106;
  sub_264785BD4();
  sub_264785A14();
  _Block_release(v83);

  (*(v105 + 8))(v85, v86);
  (*(v102 + 8))(v84, v104);
}