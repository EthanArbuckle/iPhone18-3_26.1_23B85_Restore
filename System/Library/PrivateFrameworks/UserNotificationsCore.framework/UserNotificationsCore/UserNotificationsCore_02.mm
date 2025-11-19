size_t sub_1DA82AED8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1DA82B0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6520, &qword_1DA958D48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA82B124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6520, &qword_1DA958D48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1DA82B1E4(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v15 = sub_1DA940FC4();
  v3 = *(v15 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DA940854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1DA7AC344();
  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA82B600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v15);
  v11 = sub_1DA941004();
  v13 = v16;
  v12 = v17;
  v2[2] = v11;
  v2[3] = v13;
  v2[4] = v12;
  return v2;
}

uint64_t sub_1DA82B3FC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DA82B5F0;
  *(v2 + 24) = v0;
  v6[4] = sub_1DA82B5F8;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DA7B8000;
  v6[3] = &block_descriptor_0;
  v3 = _Block_copy(v6);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {

    v5 = *(v0 + 32);
    sub_1DA7B5220(*(v0 + 24));
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_1DA82B574(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 32);
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (v1)
  {
    v3 = result;

    v1(v3);
    sub_1DA7B5220(v1);

    return sub_1DA7B5220(v1);
  }

  return result;
}

unint64_t sub_1DA82B600()
{
  result = qword_1EE115A60;
  if (!qword_1EE115A60)
  {
    sub_1DA940F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A60);
  }

  return result;
}

unint64_t sub_1DA82B658()
{
  result = qword_1EE115A70;
  if (!qword_1EE115A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD5D90, &unk_1DA958840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115A70);
  }

  return result;
}

uint64_t sub_1DA82B6BC()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore43UserNotificationsRemoteDeviceStorageHandler_location;
  v2 = sub_1DA93F964();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserNotificationsRemoteDeviceStorageHandler()
{
  result = qword_1ECBD4F08;
  if (!qword_1ECBD4F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DA82B7AC()
{
  sub_1DA941364();

  MEMORY[0x1E1271BD0](v0[2], v0[3]);
  MEMORY[0x1E1271BD0](0x3A6574617473203BLL, 0xE800000000000000);
  v1 = v0[4];
  if (v1 == 4)
  {
    v2 = 0xE700000000000000;
    v3 = 0x64656C62616E65;
  }

  else
  {
    if (v1 == 3)
    {
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    else
    {
      v4 = NotificationSource.State.OverrideReason.description.getter();
      v5 = v6;
    }

    MEMORY[0x1E1271BD0](v4, v5);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v3 = 0x64656C6261736964;
    v2 = 0xE900000000000028;
  }

  MEMORY[0x1E1271BD0](v3, v2);

  return 0xD000000000000011;
}

unint64_t sub_1DA82B8D8()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1DA82B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DA941684();

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

uint64_t sub_1DA82B9F8(uint64_t a1)
{
  v2 = sub_1DA8303F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA82BA34(uint64_t a1)
{
  v2 = sub_1DA8303F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA82BA70()
{
  v1 = *(v0 + 24);

  sub_1DA830524(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA82BAB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F98, &qword_1DA959188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8303F8();
  sub_1DA941834();
  v11 = v3[2];
  v12 = v3[3];
  v16 = 0;
  sub_1DA9415D4();
  if (!v2)
  {
    v15 = v3[4];
    v14[15] = 1;
    sub_1DA8304A0(v15);
    sub_1DA8304D0();
    sub_1DA941604();
    sub_1DA830524(v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t *sub_1DA82BC38(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F90, &qword_1DA959180);
  v13[0] = *(v5 - 8);
  v6 = *(v13[0] + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8303F8();
  sub_1DA941804();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v13[0];
    v15 = 0;
    v1[2] = sub_1DA941554();
    v1[3] = v11;
    v14 = 1;
    sub_1DA83044C();
    sub_1DA941584();
    (*(v10 + 8))(v8, v5);
    v1[4] = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t *sub_1DA82BE68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1DA82BC38(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DA82BEE4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

id sub_1DA82C06C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_opt_self() currentNotificationSettingsCenter];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

unint64_t sub_1DA82C0E0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1DA85A4B4(a2, a3);
    if (v6)
    {
      v7 = *(*(v5 + 56) + 8 * result);
      *a4 = v7;
      return sub_1DA8304A0(v7);
    }

    else
    {
      *a4 = 5;
    }
  }

  else
  {
    *a4 = 5;
  }

  return result;
}

uint64_t sub_1DA82C154(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v3 = sub_1DA847FC8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FF0, &qword_1DA9591E8);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = 0;
  *(v1 + 64) = v2;
  return v1;
}

void sub_1DA82C1D8()
{
  v1 = v0[5];
  v0[5] = 0;

  v2 = v0[4];
  v0[4] = 0;

  v3 = v0[10];
  v0[10] = 0;

  v4 = v0[7];
  v0[7] = 0;
}

void sub_1DA82C228()
{
  sub_1DA82C334();
  if (*(v0 + 64))
  {

    sub_1DA82DFE8();
  }

  else
  {
    sub_1DA82D030();
    v1 = sub_1DA82C06C();
    v2 = type metadata accessor for SettingsCenterListener();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC21UserNotificationsCore22SettingsCenterListener_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v7.receiver = v3;
    v7.super_class = v2;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    [v1 addObserver_];

    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v6 = v4;

    *&v6[OBJC_IVAR____TtC21UserNotificationsCore22SettingsCenterListener_delegate + 8] = &off_1F56325F0;
    swift_unknownObjectWeakAssign();
  }
}

void sub_1DA82C334()
{
  if (MEMORY[0x1E69C7440])
  {
    v1 = MEMORY[0x1E69C7428] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || MEMORY[0x1E69C7448] == 0 || MEMORY[0x1E69C7430] == 0 || MEMORY[0x1E69C7438] == 0 || MEMORY[0x1E69C73F0] == 0 || MEMORY[0x1E69C73E8] == 0 || MEMORY[0x1E69C73E0] == 0 || MEMORY[0x1E69C73B0] == 0 || MEMORY[0x1E69C73A0] == 0 || MEMORY[0x1E69C7398] == 0 || MEMORY[0x1E69C7390] == 0 || MEMORY[0x1E69C73A8] == 0 || MEMORY[0x1E69C7378] == 0 || MEMORY[0x1E69C7380] == 0 || MEMORY[0x1E69C7388] == 0 || MEMORY[0x1E69C74E8] == 0 || MEMORY[0x1E69C74F0] == 0 || MEMORY[0x1E69C74F8] == 0 || MEMORY[0x1E69C74D0] == 0 || MEMORY[0x1E69C74D8] == 0 || MEMORY[0x1E69C74E0] == 0)
  {
    if (qword_1EE110E70 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1EE110E80);
    v59 = sub_1DA940584();
    v23 = sub_1DA940F14();
    if (os_log_type_enabled(v59, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DA7A9000, v59, v23, "Replicator is not available on this device.", v24, 2u);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }
  }

  else
  {
    v53[0] = v0;
    v25 = sub_1DA93FC44();
    v58 = v53;
    v59 = *(v25 - 8);
    isa = v59[8].isa;
    (MEMORY[0x1EEE9AC00])();
    v27 = v53 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DA93FC34();
    v28 = sub_1DA93FDE4();
    v56 = v53;
    v55 = v28;
    v54 = *(v28 - 8);
    v29 = *(v54 + 64);
    (MEMORY[0x1EEE9AC00])();
    v30 = sub_1DA93FDF4();
    v53[1] = v53;
    v31 = *(*(v30 - 8) + 64);
    (MEMORY[0x1EEE9AC00])();
    (*(v33 + 104))(v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C7500]);
    v34 = *(*(sub_1DA93FE04() - 8) + 64);
    (MEMORY[0x1EEE9AC00])();
    v37 = (*(v36 + 104))(v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C7508]);
    MEMORY[0x1EEE9AC00](v37);
    v38 = v59[2].isa;
    v57 = v25;
    v38(v27, v27, v25);
    sub_1DA93FDD4();
    v39 = sub_1DA93FCE4();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_1DA93FCC4();

    sub_1DA93FCD4();
    v43 = v53[0];
    v44 = *(v53[0] + 32);
    *(v53[0] + 32) = v42;

    v65 = MEMORY[0x1E69C7418];
    v66 = MEMORY[0x1E69C7420];
    v67 = MEMORY[0x1E69C7410];
    v68 = MEMORY[0x1E69C73F8];
    v69 = MEMORY[0x1E69C7400];
    v70 = MEMORY[0x1E69C7408];
    v64 = v39;
    v63 = v42;
    MEMORY[0x1EEE9AC00](v45);
    v46 = v54;
    v47 = v55;
    (*(v54 + 16))(v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v55);
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FE0, &qword_1DA9591E0);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = sub_1DA93FC64();

    (*(v46 + 8))(v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    (v59[1].isa)(v27, v57);
    v52 = *(v43 + 40);
    *(v43 + 40) = v51;
  }
}

uint64_t sub_1DA82CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  v9 = *(*(sub_1DA93FD84() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1DA830728(a6, &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1EEE91030]);

  return sub_1DA93FD74();
}

uint64_t sub_1DA82CDF0(uint64_t *a1)
{
  v3 = *a1;
  type metadata accessor for MinimalSource();
  sub_1DA830790(&unk_1EE1138F0, v1, type metadata accessor for MinimalSource);
  return sub_1DA93FD64();
}

uint64_t sub_1DA82CE78@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v15 - v7;
  v9 = *a1;
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15[3] = v9;
  type metadata accessor for MinimalSource();
  sub_1DA830790(&qword_1EE1138E8, v11, type metadata accessor for MinimalSource);
  sub_1DA830790(&unk_1EE1138F0, v12, type metadata accessor for MinimalSource);
  result = sub_1DA93FDB4();
  if (!v3)
  {
    v14 = sub_1DA93F964();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    return sub_1DA93FDA4();
  }

  return result;
}

uint64_t sub_1DA82D030()
{
  if (*(v0 + 64))
  {
    v1 = sub_1DA941684();

    if (v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v2 = sub_1DA82C06C();
  v3 = [v2 allNotificationSources];

  sub_1DA830554();
  sub_1DA830790(&qword_1EE110C00, 255, sub_1DA830554);
  v4 = sub_1DA940E94();

  sub_1DA82D140(v4);
}

void sub_1DA82D140(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      sub_1DA941224();
      sub_1DA830554();
      sub_1DA830790(&qword_1EE110C00, 255, sub_1DA830554);
      sub_1DA940EC4();
      v3 = v19;
      v4 = v20;
      v5 = v21;
      v6 = v22;
      v7 = v23;
    }

    else
    {
      v8 = -1 << *(a1 + 32);
      v4 = a1 + 56;
      v5 = ~v8;
      v9 = -v8;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v7 = v10 & *(a1 + 56);

      v6 = 0;
    }

    v11 = (v5 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v12 = v6;
      v13 = v7;
      v14 = v6;
      if (!v7)
      {
        break;
      }

LABEL_13:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (!v16)
      {
LABEL_19:
        sub_1DA830720();

        return;
      }

      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        sub_1DA82D378(v16, v2);
        objc_autoreleasePoolPop(v17);

        v6 = v14;
        v7 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_1DA941294())
        {
          sub_1DA830554();
          swift_dynamicCast();
          v16 = v18;
          v14 = v6;
          v15 = v7;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1DA82D378(void *a1, uint64_t a2)
{
  v104 = a2;
  v3 = [a1 sourceSettings];
  v4 = [v3 notificationSettings];

  v5 = [v4 authorizationStatus];
  v6 = 5;
  if (v5 > 2)
  {
    if (v5 != 3 && v5 != 4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = 3;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
LABEL_7:
    v6 = 4;
  }

LABEL_9:
  v7 = [a1 sourceSettings];
  v8 = [v7 notificationSettings];

  v9 = [v8 remoteNotificationsSetting];
  if (v9 == 2)
  {
    v10 = 4;
  }

  else if (v9 == 1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = 3;
  }

  else
  {
    v10 = 5;
  }

  v11 = [a1 sourceSettings];
  v12 = [v11 notificationSettings];

  v13 = [v12 scheduledDeliverySetting];
  if (v13 == 2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 3;
  }

  else
  {
    v14 = 4;
  }

  v15 = v6;
  if (v6 != 5)
  {
    v15 = v6;
    if (v6 == 4)
    {
      if (v10 == 4 || (v15 = v10, v10 == 5))
      {
        v15 = v14;
      }
    }

    sub_1DA8304A0(v15);
  }

  v106 = v14;
  v110 = v6;
  v107 = v15;
  v108 = v10;
  if ([a1 isHiddenFromSettings] & 1) != 0 || (v52 = objc_msgSend(a1, sel_sourceSettings), v53 = objc_msgSend(v52, sel_isRestricted), v52, v15 == 5) || (v53)
  {
    if (qword_1EE110E70 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE110E80);
    v17 = a1;
    v18 = sub_1DA940584();
    v19 = sub_1DA940F04();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v109[0] = v21;
      *v20 = 136380675;
      v22 = [v17 sourceIdentifier];
      v23 = sub_1DA940A14();
      v25 = v24;

      v26 = sub_1DA7AE6E8(v23, v25, v109);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1DA7A9000, v18, v19, "Removing %{private}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    v27 = [v17 sourceIdentifier];
    v28 = sub_1DA940A14();
    v30 = v29;

    v109[0] = v28;
    v109[1] = v30;
    v31 = sub_1DA93FDC4();
    v32 = *(v31 - 8);
    v33 = *(v32 + 64);
    MEMORY[0x1EEE9AC00](v31);
    v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 104))(v35, *MEMORY[0x1E69C74C8], v31);
    v36 = v105;
    sub_1DA93FC94();
    v37 = v36;
    if (!v36)
    {
      sub_1DA830524(v106);
      sub_1DA8305BC(v108);
      sub_1DA8305BC(v107);
      sub_1DA8305BC(v110);
      (*(v32 + 8))(v35, v31);

      return;
    }

    (*(v32 + 8))(v35, v31);

    v38 = v17;
    v39 = v36;
    v40 = sub_1DA940584();
    v41 = sub_1DA940F14();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v109[0] = v44;
      *v42 = 136380931;
      v45 = [v38 sourceIdentifier];
      v46 = sub_1DA940A14();
      v48 = v47;

      v49 = sub_1DA7AE6E8(v46, v48, v109);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2114;
      v50 = v36;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v51;
      *v43 = v51;
      _os_log_impl(&dword_1DA7A9000, v40, v41, "Error removing source %{private}s from store. %{public}@", v42, 0x16u);
      sub_1DA7BA120(v43, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1E12739F0](v44, -1, -1);
      MEMORY[0x1E12739F0](v42, -1, -1);
      sub_1DA8305BC(v110);
      sub_1DA830524(v106);
      sub_1DA8305BC(v107);
      sub_1DA8305BC(v108);

      return;
    }

    sub_1DA8305BC(v110);
    sub_1DA830524(v106);
    sub_1DA8305BC(v107);
    sub_1DA8305BC(v108);
  }

  else
  {
    v54 = [a1 sourceIdentifier];
    v55 = sub_1DA940A14();
    v57 = v56;

    type metadata accessor for MinimalSource();
    v58 = swift_allocObject();
    v58[2] = v55;
    v58[3] = v57;
    v58[4] = v15;
    sub_1DA8304A0(v15);
    if (qword_1EE110E70 != -1)
    {
      swift_once();
    }

    v59 = sub_1DA9405A4();
    v60 = __swift_project_value_buffer(v59, qword_1EE110E80);
    v61 = a1;
    v101 = v60;
    v62 = sub_1DA940584();
    v63 = sub_1DA940F04();

    v100 = v61;
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v58;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v109[0] = v66;
      *v65 = 136380675;
      v67 = [v61 sourceIdentifier];
      v68 = sub_1DA940A14();
      v70 = v69;

      v71 = sub_1DA7AE6E8(v68, v70, v109);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_1DA7A9000, v62, v63, "Adding %{private}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1E12739F0](v66, -1, -1);
      v72 = v65;
      v58 = v64;
      MEMORY[0x1E12739F0](v72, -1, -1);
    }

    v109[0] = v58;
    v73 = sub_1DA93FC54();
    v103 = &v99;
    v74 = *(v73 - 8);
    v75 = *(v74 + 64);
    MEMORY[0x1EEE9AC00](v73);
    v77 = &v99 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v74 + 104))(v77, *MEMORY[0x1E69C73B8], v73);
    v78 = v58;
    v79 = sub_1DA93FDC4();
    v102 = &v99;
    v80 = *(v79 - 8);
    v81 = *(v80 + 64);
    MEMORY[0x1EEE9AC00](v79);
    v83 = &v99 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 104))(v83, *MEMORY[0x1E69C74C8], v79);
    v84 = v105;
    sub_1DA93FC84();
    v37 = v84;
    if (!v84)
    {
      sub_1DA830524(v106);
      sub_1DA8305BC(v108);
      sub_1DA8305BC(v107);
      sub_1DA8305BC(v110);
      (*(v80 + 8))(v83, v79);
      (*(v74 + 8))(v77, v73);

      return;
    }

    v105 = v78;
    (*(v80 + 8))(v83, v79);
    (*(v74 + 8))(v77, v73);
    v85 = v100;
    v86 = v84;
    v87 = sub_1DA940584();
    v88 = sub_1DA940F14();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v109[0] = v91;
      *v89 = 136380931;
      v92 = [v85 sourceIdentifier];
      v93 = sub_1DA940A14();
      v95 = v94;

      v96 = sub_1DA7AE6E8(v93, v95, v109);

      *(v89 + 4) = v96;
      *(v89 + 12) = 2114;
      v97 = v84;
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 14) = v98;
      *v90 = v98;
      _os_log_impl(&dword_1DA7A9000, v87, v88, "Error adding source %{private}s to store. %{public}@", v89, 0x16u);
      sub_1DA7BA120(v90, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v90, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x1E12739F0](v91, -1, -1);
      MEMORY[0x1E12739F0](v89, -1, -1);
      sub_1DA8305BC(v110);
      sub_1DA830524(v106);
      sub_1DA8305BC(v107);

      sub_1DA8305BC(v108);

      return;
    }

    sub_1DA8305BC(v110);
    sub_1DA830524(v106);
    sub_1DA8305BC(v107);

    sub_1DA8305BC(v108);
  }
}

uint64_t sub_1DA82DFE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  if (*(v0 + 64) == 1)
  {
  }

  else
  {
    v6 = sub_1DA941684();

    if ((v6 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = sub_1DA940D34();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = v0;

    v10 = sub_1DA8DB00C(0, 0, v4, &unk_1DA9591A8, v9);
    v11 = *(v0 + 80);
    *(v0 + 80) = v10;
  }

  return result;
}

uint64_t sub_1DA82E164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DA82E184, 0, 0);
}

uint64_t sub_1DA82E184()
{
  v1 = v0[7];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA8, &qword_1DA9591B0);
  v0[9] = v2;
  v3 = *(v2 - 8);
  v0[10] = v3;
  v4 = *(v3 + 64) + 15;
  v0[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FB0, &qword_1DA9591B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  sub_1DA93FC74();
  sub_1DA940D84();
  (*(v6 + 8))(v8, v5);

  v0[12] = 0;
  v9 = *(MEMORY[0x1E69E8678] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1DA82E354;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 4, 0, 0, v12);
}

uint64_t sub_1DA82E354()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA82E450, 0, 0);
}

void sub_1DA82E450()
{
  v121 = v0;
  v1 = (v0 + 4);
  v2 = v0[4];
  if (v2)
  {
    if (qword_1EE110E70 != -1)
    {
LABEL_63:
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE110E80);

    v4 = sub_1DA940584();
    v5 = sub_1DA940F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = v2[2];

      _os_log_impl(&dword_1DA7A9000, v4, v5, "Got %{public}ld store updates.", v6, 0xCu);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }

    else
    {
    }

    *(v1 + 8) = MEMORY[0x1E69E7CC0];
    isa = v2[2].isa;
    v96 = v1;
    if (isa)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FB8, &qword_1DA9591C0);
      v9 = 0;
      v10 = *(v8 - 8);
      v105 = v2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v97 = (v10 + 96);
      v1 = MEMORY[0x1E69E7CC0];
      v106 = v10;
      v111 = v0[12];
      v94 = MEMORY[0x1E69E7CC0];
      v103 = v2;
      v116 = v8;
      v115 = v0;
      v104 = (v10 + 8);
      while (1)
      {
        if (v9 >= v2[2].isa)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v117 = v9;
        v14 = &v105[*(v106 + 72) * v9];
        v15 = *(v106 + 64) + 15;
        v16 = swift_task_alloc();
        v17 = *(v106 + 16);
        (v17)(v16, v14, v8);
        v18 = swift_task_alloc();
        v118 = v16;
        (v17)(v18, v16, v8);
        v119 = v18;
        v19 = (*(v106 + 88))(v18, v8);
        if (MEMORY[0x1E69C73D0] && v19 == *MEMORY[0x1E69C73D0])
        {
          v112 = v1;
          (*v97)(v18, v8);
          v20 = v18[1];
          v108 = *v18;
          v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FC0, &qword_1DA9591C8) + 48);
          v22 = sub_1DA93FD94();
          v23 = *(v22 - 8);
          v0 = (*(v23 + 64) + 15);
          v24 = swift_task_alloc();
          v25 = v23;
          (*(v23 + 32))(v24, v119 + v21, v22);
          v26 = swift_task_alloc();
          log = v24;
          (*(v25 + 16))(v26, v24, v22);

          v2 = sub_1DA940584();
          v27 = sub_1DA940F04();

          v101 = v20;
          if (os_log_type_enabled(v2, v27))
          {
            v28 = swift_slowAlloc();
            v0 = swift_slowAlloc();
            v120[0] = v0;
            *v28 = 136315395;
            sub_1DA8306B8();
            v29 = sub_1DA941614();
            v31 = v30;
            v32 = *(v25 + 8);
            v32(v26, v22);
            v33 = sub_1DA7AE6E8(v29, v31, v120);

            *(v28 + 4) = v33;
            *(v28 + 12) = 2081;
            *(v28 + 14) = sub_1DA7AE6E8(v108, v20, v120);
            _os_log_impl(&dword_1DA7A9000, v2, v27, "[%s] Removing %{private}s", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v0, -1, -1);
            MEMORY[0x1E12739F0](v28, -1, -1);
          }

          else
          {

            v32 = *(v25 + 8);
            v32(v26, v22);
          }

          v64 = v115[8];

          if (*(v64 + 64) == 1)
          {

            v1 = v20;
            v65 = v108;
          }

          else
          {
            v66 = sub_1DA941684();

            v1 = v20;
            v65 = v108;
            if ((v66 & 1) == 0)
            {
              goto LABEL_61;
            }
          }

          v67 = v32;
          v68 = *(v115[8] + 72);
          v69 = swift_task_alloc();
          *(v69 + 16) = v65;
          *(v69 + 24) = v1;
          v70 = v68 + 6;

          os_unfair_lock_lock(v68 + 6);
          sub_1DA83069C(&v68[4]);
          if (v111)
          {
            goto LABEL_57;
          }

          os_unfair_lock_unlock(v68 + 6);

          v71 = v112;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_1DA7B6928(0, *(v112 + 16) + 1, 1, v112);
          }

          v73 = *(v71 + 2);
          v72 = *(v71 + 3);
          if (v73 >= v72 >> 1)
          {
            v74 = sub_1DA7B6928((v72 > 1), v73 + 1, 1, v71);
          }

          else
          {
            v74 = v71;
          }

          v67(log, v22);
          v8 = v116;
          (*v104)(v118, v116);
          *(v74 + 2) = v73 + 1;
          v75 = &v74[16 * v73];
          *(v75 + 4) = v108;
          *(v75 + 5) = v101;
          v1 = v74;

          v111 = 0;
          v13 = v117;
          v2 = v103;
          v0 = v115;
        }

        else
        {
          if (MEMORY[0x1E69C73D8] && v19 == *MEMORY[0x1E69C73D8])
          {
            (*v97)(v18, v8);
            v34 = *v18;
            v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD4FD0, &unk_1DA9591D0);
            v35 = v109[12];
            v36 = sub_1DA93FD94();
            v37 = *(v36 - 8);
            v38 = *(v37 + 64) + 15;
            v2 = swift_task_alloc();
            (*(v37 + 32))(v2, v119 + v35, v36);
            v39 = swift_task_alloc();
            v102 = v2;
            (*(v37 + 16))(v39, v2, v36);

            v40 = sub_1DA940584();
            v41 = sub_1DA940F04();

            if (os_log_type_enabled(v40, v41))
            {
              v98 = v41;
              loga = v40;
              v113 = v1;
              v42 = v37;
              v43 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              *(v96 + 16) = v95;
              *v43 = 136315651;
              sub_1DA8306B8();
              v44 = sub_1DA941614();
              v46 = v45;
              v47 = *(v42 + 8);
              v47(v39, v36);
              v48 = sub_1DA7AE6E8(v44, v46, (v96 + 16));

              *(v43 + 4) = v48;
              *(v43 + 12) = 2081;
              v49 = v34[2];
              v50 = v34[3];

              v51 = sub_1DA7AE6E8(v49, v50, (v96 + 16));

              *(v43 + 14) = v51;
              *(v43 + 22) = 2082;
              v2 = v34[4];
              if (v2 == 4)
              {
                v52 = 0xE700000000000000;
                v53 = 0x64656C62616E65;
              }

              else
              {
                v0[2] = 0x64656C6261736964;
                v0[3] = 0xE900000000000028;
                if (v2 == 3)
                {
                  v76 = 0;
                  v77 = 0xE000000000000000;
                }

                else
                {
                  v120[0] = v2;
                  sub_1DA8304A0(v2);
                  v76 = NotificationSource.State.OverrideReason.description.getter();
                  v77 = v78;
                }

                MEMORY[0x1E1271BD0](v76, v77);

                MEMORY[0x1E1271BD0](41, 0xE100000000000000);
                sub_1DA830524(v2);
                v53 = v0[2];
                v52 = v0[3];
              }

              v79 = sub_1DA7AE6E8(v53, v52, (v96 + 16));

              *(v43 + 24) = v79;
              _os_log_impl(&dword_1DA7A9000, loga, v98, "[%s] Adding %{private}s = %{public}s", v43, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v95, -1, -1);
              MEMORY[0x1E12739F0](v43, -1, -1);

              v1 = v113;
            }

            else
            {

              v47 = *(v37 + 8);
              v47(v39, v36);
            }

            v80 = v0[8];

            if (*(v80 + 64) == 1)
            {
            }

            else
            {
              v81 = sub_1DA941684();

              if ((v81 & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            v82 = v1;
            v83 = *(v0[8] + 72);
            v70 = (v83 + 24);

            os_unfair_lock_lock((v83 + 24));
            sub_1DA830704((v83 + 16));
            if (v111)
            {
LABEL_57:

              os_unfair_lock_unlock(v70);
              return;
            }

            os_unfair_lock_unlock((v83 + 24));

            MEMORY[0x1E1271CA0](v84);
            if (*((*(v96 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v96 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v88 = *((*(v96 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1DA940C04();
            }

            v85 = v109[16];
            v86 = v109[20];
            sub_1DA940C14();

            v47(v102, v36);
            v8 = v116;
            (*v104)(v118, v116);
            v94 = *(v96 + 8);

            v87 = sub_1DA93FB24();
            (*(*(v87 - 8) + 8))(v119 + v86, v87);
            sub_1DA7BA120(v119 + v85, &qword_1ECBD6310, &unk_1DA95F3B0);
            v111 = 0;
            v1 = v82;
            v2 = v103;
          }

          else
          {
            v54 = swift_task_alloc();
            (v17)(v54, v16, v8);
            v55 = sub_1DA940584();
            v110 = sub_1DA940F14();
            if (os_log_type_enabled(v55, v110))
            {
              v114 = v1;
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v120[0] = v57;
              *v56 = 136380675;
              swift_task_alloc();
              v17();
              v58 = sub_1DA940A74();
              v60 = v59;
              v11 = *v104;
              (*v104)(v54, v116);

              v61 = sub_1DA7AE6E8(v58, v60, v120);
              v2 = v103;

              *(v56 + 4) = v61;
              _os_log_impl(&dword_1DA7A9000, v55, v110, "Unknown update type: %{private}s.", v56, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v57);
              v62 = v57;
              v8 = v116;
              MEMORY[0x1E12739F0](v62, -1, -1);
              v63 = v56;
              v1 = v114;
              MEMORY[0x1E12739F0](v63, -1, -1);

              v11(v118, v116);
              v12 = v119;
            }

            else
            {

              v11 = *v104;
              (*v104)(v54, v8);
              v11(v118, v8);
              v12 = v119;
              v2 = v103;
            }

            v11(v12, v8);
            v0 = v115;
          }

          v13 = v117;
        }

        v9 = (v13 + 1);

        if (isa == v9)
        {
          goto LABEL_52;
        }
      }
    }

    v111 = v0[12];
    v1 = MEMORY[0x1E69E7CC0];
    v94 = MEMORY[0x1E69E7CC0];
LABEL_52:
    v89 = v0[8];

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1DA8BCB40(v94, v1);
      swift_unknownObjectRelease();
    }

    v0[12] = v111;
    v90 = *(MEMORY[0x1E69E8678] + 4);
    v91 = swift_task_alloc();
    v0[13] = v91;
    *v91 = v0;
    v91[1] = sub_1DA82E354;
    v92 = v0[11];
    v93 = v0[9];

    MEMORY[0x1EEE6D9C8](v96, 0, 0, v93);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v7 = v0[1];

    v7();
  }
}

void sub_1DA82F3C4(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for NotificationSource();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 64) == 1)
  {
  }

  else
  {
    v10 = sub_1DA941684();

    if ((v10 & 1) == 0)
    {
      __break(1u);
      swift_once();
      v31 = sub_1DA9405A4();
      __swift_project_value_buffer(v31, qword_1EE110E80);
      v32 = v46;
      sub_1DA830728(v45, v46, type metadata accessor for NotificationSource);
      v33 = v2;
      v34 = sub_1DA940584();
      v35 = sub_1DA940F14();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v50[0] = v38;
        *v36 = 136380931;
        v39 = *(v32 + 16);
        v40 = *(v32 + 24);

        sub_1DA82A7FC(v32);
        v41 = sub_1DA7AE6E8(v39, v40, v50);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2114;
        v42 = v2;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v43;
        *v37 = v43;
        _os_log_impl(&dword_1DA7A9000, v34, v35, "Error adding ghost source %{private}s to store. %{public}@", v36, 0x16u);
        sub_1DA7BA120(v37, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1E12739F0](v38, -1, -1);
        MEMORY[0x1E12739F0](v36, -1, -1);
      }

      else
      {

        sub_1DA82A7FC(v32);
      }

      return;
    }
  }

  v11 = *(v3 + 72);
  MEMORY[0x1EEE9AC00](v9);
  *(&v44 - 2) = a1;

  os_unfair_lock_lock((v11 + 24));
  sub_1DA8305A0((v11 + 16), v50);
  os_unfair_lock_unlock((v11 + 24));
  v12 = v50[0];

  if (v12)
  {
    if (*(v3 + 40))
    {
      v45 = a1;
      v46 = v8;
      v13 = a1[2];
      v14 = a1[3];
      v15 = a1[7];
      type metadata accessor for MinimalSource();
      v16 = swift_allocObject();
      v16[2] = v13;
      v16[3] = v14;
      v16[4] = v15;
      v17 = v15;
      v50[0] = v16;
      v18 = sub_1DA93FC54();
      v49 = &v44;
      v19 = *(v18 - 8);
      v20 = *(v19 + 64);
      MEMORY[0x1EEE9AC00](v18);
      v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = *MEMORY[0x1E69C73B8];
      v24 = *(v19 + 104);
      v48 = v25;
      v24(v22, v23);
      v26 = sub_1DA93FDC4();
      v47 = &v44;
      v27 = *(v26 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x1EEE9AC00](v26);
      v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 104))(v30, *MEMORY[0x1E69C74C8], v26);

      sub_1DA8304A0(v17);
      sub_1DA93FC84();

      (*(v27 + 8))(v30, v26);
      (*(v19 + 8))(v22, v48);
    }
  }
}

unint64_t sub_1DA82F948@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v48 = a3;
  v6 = type metadata accessor for NotificationSource();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v45 - v11;
  v13 = a2[7];
  v15 = a2[2];
  v14 = a2[3];
  v46 = a1;
  v16 = *a1;
  v17 = *(v16 + 16);
  sub_1DA8304A0(v13);
  v47 = v14;
  if (v17)
  {
    v18 = sub_1DA85A4B4(v15, v14);
    v19 = v15;
    if (v20)
    {
      v21 = *(*(v16 + 56) + 8 * v18);
      sub_1DA8304A0(v21);
      if (v13 != 5)
      {
        goto LABEL_9;
      }

LABEL_6:
      if (v21 == 5)
      {
        result = sub_1DA8305BC(5uLL);
        v23 = 0;
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    v21 = 5;
    if (v13 == 5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 5;
    v19 = v15;
    if (v13 == 5)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  v50 = v13;
  if (v21 != 5)
  {
    v52 = v21;
    sub_1DA8305CC(v13);
    v35 = _s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(&v50, &v52);
    sub_1DA830524(v52);
    sub_1DA830524(v50);
    result = sub_1DA8305BC(v13);
    if (v35)
    {
      v23 = 0;
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  sub_1DA8305CC(v13);
  sub_1DA830524(v13);
LABEL_11:
  sub_1DA8305BC(v13);
  sub_1DA8305BC(v21);
LABEL_12:
  if (qword_1EE110E70 != -1)
  {
    swift_once();
  }

  v24 = sub_1DA9405A4();
  __swift_project_value_buffer(v24, qword_1EE110E80);
  sub_1DA830728(a2, v12, type metadata accessor for NotificationSource);
  sub_1DA830728(a2, v10, type metadata accessor for NotificationSource);
  v25 = sub_1DA940584();
  v26 = sub_1DA940F04();
  if (os_log_type_enabled(v25, v26))
  {
    v45[0] = v19;
    v45[1] = v3;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v52 = v28;
    *v27 = 136380931;
    v29 = *(v12 + 2);
    v30 = *(v12 + 3);

    sub_1DA82A7FC(v12);
    v31 = sub_1DA7AE6E8(v29, v30, &v52);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v32 = *(v10 + 7);
    if (v32 == 4)
    {
      v33 = 0xE700000000000000;
      v34 = 0x64656C62616E65;
    }

    else
    {
      v50 = 0x64656C6261736964;
      v51 = 0xE900000000000028;
      if (v32 == 3)
      {
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      else
      {
        v49 = v32;
        sub_1DA8304A0(v32);
        v36 = NotificationSource.State.OverrideReason.description.getter();
        v37 = v38;
      }

      MEMORY[0x1E1271BD0](v36, v37);

      MEMORY[0x1E1271BD0](41, 0xE100000000000000);
      sub_1DA830524(v32);
      v34 = v50;
      v33 = v51;
    }

    sub_1DA82A7FC(v10);
    v39 = sub_1DA7AE6E8(v34, v33, &v52);

    *(v27 + 14) = v39;
    _os_log_impl(&dword_1DA7A9000, v25, v26, "Adding ghostly %{private}s = %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);

    v19 = v45[0];
  }

  else
  {

    sub_1DA82A7FC(v10);
    sub_1DA82A7FC(v12);
  }

  v40 = v47;
  v41 = a2[7];

  sub_1DA8304A0(v41);
  v42 = v46;
  v43 = *v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v42;
  sub_1DA90AAEC(v41, v19, v40, isUniquelyReferenced_nonNull_native);

  *v42 = v50;
  v23 = 1;
LABEL_26:
  *v48 = v23;
  return result;
}

uint64_t sub_1DA82FDA0(uint64_t *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];

  sub_1DA8304A0(v5);
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  sub_1DA90AAEC(v5, v3, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v9;
  return result;
}

unint64_t sub_1DA82FE30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1DA8F42F0(a2, a3, &v6);

  return sub_1DA8305BC(v6);
}

uint64_t sub_1DA82FE90()
{
  sub_1DA7C5714(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA82FF78(void *a1, uint64_t a2)
{
  if (qword_1EE110E70 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE110E80);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a2 + 16);

    _os_log_impl(&dword_1DA7A9000, v5, v6, "Got %ld source updates.", v7, 0xCu);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = sub_1DA940E84();
    v10 = [a1 notificationSourcesWithIdentifiers_];

    sub_1DA830554();
    sub_1DA830790(&qword_1EE110C00, 255, sub_1DA830554);
    v11 = sub_1DA940E94();

    sub_1DA82D140(v11);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1DA830230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsCenterListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA83037C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110E80);
  __swift_project_value_buffer(v0, qword_1EE110E80);
  return sub_1DA940594();
}

unint64_t sub_1DA8303F8()
{
  result = qword_1EE113918[0];
  if (!qword_1EE113918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE113918);
  }

  return result;
}

unint64_t sub_1DA83044C()
{
  result = qword_1EE112B60;
  if (!qword_1EE112B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B60);
  }

  return result;
}

unint64_t sub_1DA8304A0(unint64_t result)
{
  if (result != 4)
  {
    return sub_1DA8304B0(result);
  }

  return result;
}

unint64_t sub_1DA8304B0(unint64_t result)
{
  if (result != 3)
  {
    return sub_1DA8304C0(result);
  }

  return result;
}

unint64_t sub_1DA8304C0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1DA8304D0()
{
  result = qword_1EE112B70;
  if (!qword_1EE112B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B70);
  }

  return result;
}

unint64_t sub_1DA830524(unint64_t result)
{
  if (result != 4)
  {
    return sub_1DA830534(result);
  }

  return result;
}

unint64_t sub_1DA830534(unint64_t result)
{
  if (result != 3)
  {
    return sub_1DA830544(result);
  }

  return result;
}

unint64_t sub_1DA830544(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1DA830554()
{
  result = qword_1EE110C08;
  if (!qword_1EE110C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE110C08);
  }

  return result;
}

unint64_t sub_1DA8305BC(unint64_t result)
{
  if (result != 5)
  {
    return sub_1DA830524(result);
  }

  return result;
}

unint64_t sub_1DA8305CC(unint64_t result)
{
  if (result != 5)
  {
    return sub_1DA8304A0(result);
  }

  return result;
}

uint64_t sub_1DA8305DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA82E164(a1, v4, v5, v7, v6);
}

unint64_t sub_1DA8306B8()
{
  result = qword_1ECBD4FC8;
  if (!qword_1ECBD4FC8)
  {
    sub_1DA93FD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4FC8);
  }

  return result;
}

uint64_t sub_1DA830728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA830790(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1DA8307EC()
{
  result = qword_1ECBD4FF8;
  if (!qword_1ECBD4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4FF8);
  }

  return result;
}

unint64_t sub_1DA830844()
{
  result = qword_1EE113900;
  if (!qword_1EE113900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113900);
  }

  return result;
}

unint64_t sub_1DA83089C()
{
  result = qword_1EE113908;
  if (!qword_1EE113908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113908);
  }

  return result;
}

uint64_t sub_1DA830930(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v73 - v10;
  if (qword_1ECBD4708 != -1)
  {
LABEL_23:
    swift_once();
  }

  v12 = sub_1DA9405A4();
  v13 = __swift_project_value_buffer(v12, qword_1ECBE3D60);
  v14 = v5[2];
  v85 = a1;
  v76 = v5 + 2;
  v75 = v14;
  v14(v11, a1, v4);

  v87 = v13;
  v15 = sub_1DA940584();
  v16 = sub_1DA940F34();

  v17 = os_log_type_enabled(v15, v16);
  v78 = v4;
  v79 = v5;
  v77 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136315394;
    v93 = 0;
    v94 = 0xE000000000000000;
    v95[0] = v19;
    sub_1DA941364();

    v93 = 0xD00000000000001BLL;
    v94 = 0x80000001DA951720;
    v92 = *(v2 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
    v20 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v20);

    MEMORY[0x1E1271BD0](62, 0xE100000000000000);
    v21 = sub_1DA7AE6E8(v93, v94, v95);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_1DA831984();
    v22 = sub_1DA941614();
    v24 = v23;
    v74 = v79[1];
    v74(v11, v4);
    v25 = sub_1DA7AE6E8(v22, v24, v95);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1DA7A9000, v15, v16, "%s reapBefore: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v19, -1, -1);
    MEMORY[0x1E12739F0](v18, -1, -1);
  }

  else
  {

    v74 = v5[1];
    v74(v11, v4);
  }

  v26 = *(v2 + 16);
  v27 = off_1F5639728[0];
  v28 = type metadata accessor for DateDefinedReaperClientRepositoryProxy();
  swift_unknownObjectRetain();
  v90 = v28;
  v29 = v27();
  swift_unknownObjectRelease();
  v31 = *(v29 + 16);
  v5 = v2;
  v73[1] = v29;
  if (v31)
  {
    v88 = 0;
    v4 = 0;
    v86 = off_1F5639730[0];
    v82 = 0x80000001DA951720;
    v32 = (v29 + 40);
    *&v30 = 136315394;
    v80 = v30;
    *&v30 = 136315650;
    v81 = v30;
    v84 = v2;
    v2 = v85;
    while (1)
    {
      v33 = *(v32 - 1);
      v11 = *v32;
      v34 = v5[2];

      swift_unknownObjectRetain();
      v91 = v33;
      v9 = v86();
      v35 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v35);
      v73[-2] = v2;
      v36 = sub_1DA831604(sub_1DA831968, &v73[-4], v9);

      v37 = sub_1DA8AD06C(v36);

      if (*(v37 + 16))
      {

        a1 = v87;
        v38 = sub_1DA940584();
        v39 = sub_1DA940F34();

        v40 = os_log_type_enabled(v38, v39);
        v89 = v4;
        if (v40)
        {
          v9 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v83 = v41;
          *v9 = v81;
          v93 = 0;
          v94 = 0xE000000000000000;
          v95[0] = v41;
          sub_1DA941364();

          v93 = 0xD00000000000001BLL;
          v94 = v82;
          v92 = *(v5 + 1);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
          v42 = sub_1DA940A74();
          MEMORY[0x1E1271BD0](v42);

          MEMORY[0x1E1271BD0](62, 0xE100000000000000);
          v43 = sub_1DA7AE6E8(v93, v94, v95);

          *(v9 + 4) = v43;
          *(v9 + 6) = 2080;
          *(v9 + 14) = sub_1DA7AE6E8(v91, v11, v95);
          *(v9 + 11) = 2080;
          v44 = sub_1DA940EA4();
          v46 = sub_1DA7AE6E8(v44, v45, v95);

          *(v9 + 3) = v46;
          v4 = MEMORY[0x1E69E7CA0];
          _os_log_impl(&dword_1DA7A9000, v38, v39, "%s reapBefore %s removalSet: %s", v9, 0x20u);
          a1 = v83;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](a1, -1, -1);
          MEMORY[0x1E12739F0](v9, -1, -1);
        }

        v47 = *(v37 + 16);
        v2 = v85;
        if (__OFADD__(v88, v47))
        {
          __break(1u);
          goto LABEL_23;
        }

        v88 += v47;
        v5 = v84;
        v48 = v84[2];
        v49 = off_1F5639738[0];
        swift_unknownObjectRetain();
        v49();

        swift_unknownObjectRelease();
        v4 = v89;
      }

      else
      {

        v50 = sub_1DA940584();
        v51 = sub_1DA940F34();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = v80;
          v93 = 0;
          v94 = 0xE000000000000000;
          v95[0] = v53;
          sub_1DA941364();

          v93 = 0xD00000000000001BLL;
          v94 = v82;
          v92 = *(v5 + 1);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
          v54 = sub_1DA940A74();
          v89 = v4;
          MEMORY[0x1E1271BD0](v54);

          MEMORY[0x1E1271BD0](62, 0xE100000000000000);
          v55 = sub_1DA7AE6E8(v93, v94, v95);

          *(v52 + 4) = v55;
          *(v52 + 12) = 2080;
          v56 = sub_1DA7AE6E8(v91, v11, v95);

          *(v52 + 14) = v56;
          _os_log_impl(&dword_1DA7A9000, v50, v51, "%s reapBefore %s - nothing to remove", v52, 0x16u);
          v4 = v89;
          swift_arrayDestroy();
          v57 = v53;
          v2 = v85;
          MEMORY[0x1E12739F0](v57, -1, -1);
          MEMORY[0x1E12739F0](v52, -1, -1);
        }

        else
        {
        }
      }

      v32 += 2;
      if (!--v31)
      {
        goto LABEL_18;
      }
    }
  }

  v88 = 0;
  v2 = v85;
LABEL_18:

  v58 = v2;
  v59 = v77;
  v60 = v78;
  v75(v77, v58, v78);

  v61 = sub_1DA940584();
  v62 = sub_1DA940F34();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 136315650;
    v93 = 0;
    v94 = 0xE000000000000000;
    v95[0] = v64;
    sub_1DA941364();

    v93 = 0xD00000000000001BLL;
    v94 = 0x80000001DA951720;
    v92 = *(v5 + 1);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
    v65 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v65);

    MEMORY[0x1E1271BD0](62, 0xE100000000000000);
    v66 = sub_1DA7AE6E8(v93, v94, v95);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    sub_1DA831984();
    v67 = sub_1DA941614();
    v69 = v68;
    v74(v59, v60);
    v70 = sub_1DA7AE6E8(v67, v69, v95);

    *(v63 + 14) = v70;
    *(v63 + 22) = 2048;
    v71 = v88;
    *(v63 + 24) = v88;
    _os_log_impl(&dword_1DA7A9000, v61, v62, "%s reapBefore: %s removedCount: %ld", v63, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v64, -1, -1);
    MEMORY[0x1E12739F0](v63, -1, -1);
  }

  else
  {

    v74(v59, v60);
    return v88;
  }

  return v71;
}

void sub_1DA8314A0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 date];
  if (v10)
  {
    v11 = v10;
    sub_1DA93FAB4();

    v12 = sub_1DA93FA64();
    (*(v5 + 8))(v8, v4);
    if ((v12 & 1) != 0 && (v13 = [v9 identifier]) != 0)
    {
      v14 = v13;
      v15 = sub_1DA940A14();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *a2 = v15;
    a2[1] = v17;
  }

  else
  {
    __break(1u);
  }
}

char *sub_1DA831604(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA941264())
  {
    v6 = 0;
    v19 = v4 & 0xFFFFFFFFFFFFFF8;
    v20 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v18 = v4;
    while (1)
    {
      if (v20)
      {
        v9 = MEMORY[0x1E1272460](v6, v4);
      }

      else
      {
        if (v6 >= *(v19 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v24 = v9;
      a1(&v22, &v24);
      if (v3)
      {

        return v7;
      }

      v12 = v23;
      if (v23)
      {
        v13 = i;
        v14 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DA7B6928(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_1DA7B6928((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        v8 = &v7[16 * v16];
        *(v8 + 4) = v14;
        *(v8 + 5) = v12;
        v4 = v18;
        i = v13;
      }

      ++v6;
      if (v11 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA8317BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1DA831818()
{
  sub_1DA941364();

  v3 = *(v0 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
  v1 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v1);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1DA8318F4()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBE3D60);
  __swift_project_value_buffer(v0, qword_1ECBE3D60);
  return sub_1DA940594();
}

unint64_t sub_1DA831984()
{
  result = qword_1EE114C88;
  if (!qword_1EE114C88)
  {
    sub_1DA93FAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114C88);
  }

  return result;
}

char *sub_1DA8319DC()
{
  v0 = type metadata accessor for SummaryService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = SummaryService.init()();
  qword_1EE1134B8 = v3;
  return result;
}

uint64_t SummaryService.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SummaryService.init()();
  return v3;
}

uint64_t static SummaryService.shared.getter()
{
  if (qword_1EE1134B0 != -1)
  {
    swift_once();
  }
}

uint64_t SummaryService.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SummaryService.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1DA831BC8;
}

void sub_1DA831BC8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *SummaryService.init()()
{
  v1 = v0;
  v2 = sub_1DA9407F4();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940FC4();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940F74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1DA940854();
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  if (qword_1EE1127C0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EE11AEB0;
  v15 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v39 = "com.apple.UserNotifications";
  v40 = v15;

  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  v17 = v14;
  sub_1DA9411D4();
  (*(v41 + 104))(v8, *MEMORY[0x1E69E8090], v42);
  *(v0 + 40) = sub_1DA941004();
  *(v0 + 48) = v16;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v18 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_queue_lastIndividualSummaryOutdatedCheckTime;
  v19 = sub_1DA93FAF4();
  (*(*(v19 - 8) + 56))(&v1[v18], 1, 1, v19);
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_powerSourceToken] = -1;
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v20 = sub_1DA9405A4();
  __swift_project_value_buffer(v20, qword_1EE11ADA8);
  v21 = sub_1DA940584();
  v22 = sub_1DA940F34();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DA7A9000, v21, v22, "SummaryService initializing", v23, 2u);
    MEMORY[0x1E12739F0](v23, -1, -1);
  }

  if (UNCCatchMe())
  {
    v24 = *(v1 + 4);
    v25 = swift_allocObject();
    swift_weakInit();

    v26 = sub_1DA880904(sub_1DA83431C, v25);

    v27 = *(v1 + 3);
    *(v1 + 3) = v26;

    sub_1DA8323D4();
    v28 = *(v1 + 5);
    aBlock[4] = sub_1DA834328;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_1;
    v29 = _Block_copy(aBlock);

    sub_1DA940824();
    v43 = v16;
    sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v30 = v17;
    v31 = v36;
    v32 = v38;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v30, v31, v29);
    _Block_release(v29);
    (*(v37 + 8))(v31, v32);
    (*(v34 + 8))(v30, v35);
  }

  return v1;
}

uint64_t sub_1DA8322B4(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1DA9593A0;
        *(v8 + 32) = a1;
        sub_1DA7AF3EC(0, &unk_1EE110C60, off_1E85D5D40);
        v9 = a1;
        v10 = sub_1DA940BD4();

        [v7 summaryServiceDidReceiveGroupSummaries_];

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1DA8323D4()
{
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE11ADA8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Starting observation of power source changes", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v5 = *(v0 + 40);
  v6 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_1DA834750;
  v13[5] = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DA857960;
  v13[3] = &block_descriptor_29;
  v7 = _Block_copy(v13);

  v8 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_powerSourceToken;
  swift_beginAccess();
  v9 = notify_register_dispatch("com.apple.system.powersources.source", (v0 + v8), v5, v7);
  swift_endAccess();
  _Block_release(v7);
  if (v9)
  {
    v10 = sub_1DA940584();
    v11 = sub_1DA940F14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v9;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Failed to begin observing for power source changes, status %u", v12, 8u);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }
  }
}

void sub_1DA832618()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  v8 = sub_1DA9408F4();
  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    v9 = *(v0 + 64);
    if (v9)
    {
      [v9 invalidate];
      v10 = *(v0 + 64);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + 64) = 0;

    v11 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
    v12 = sub_1DA940A04();
    v13 = [v11 initWithIdentifier_];

    v14 = *(v0 + 64);
    *(v0 + 64) = v13;

    v15 = *(v0 + 64);
    if (v15)
    {
      v16 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1DA83469C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B00D0;
      aBlock[3] = &block_descriptor_20;
      v17 = _Block_copy(aBlock);
      v18 = v15;

      [v18 scheduleWithFireInterval:v7 leewayInterval:v17 queue:86400.0 handler:60.0];
      _Block_release(v17);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SummaryService.deinit()
{
  v1 = v0;
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5008, &unk_1DA9593B0);
  sub_1DA940FE4();

  [v12 invalidate];
  v3 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_powerSourceToken;
  swift_beginAccess();
  if (*(v1 + v3) != -1)
  {
    if (qword_1EE110E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11ADA8);
    v5 = sub_1DA940584();
    v6 = sub_1DA940F34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "Ending observation of power source changes", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    notify_cancel(*(v1 + v3));
  }

  sub_1DA7C5714(v1 + 16);
  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = *(v1 + 48);

  sub_1DA7BA120(v1 + OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_queue_lastIndividualSummaryOutdatedCheckTime, &unk_1ECBD6530, &unk_1DA958820);
  return v1;
}

uint64_t SummaryService.__deallocating_deinit()
{
  SummaryService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SummaryService.update(listState:)(uint64_t a1)
{
  v3 = sub_1DA9407F4();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - v14;
  v20[1] = *(v1 + 40);
  (*(v12 + 16))(v20 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_1DA834398;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);

  sub_1DA940824();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v10, v6, v18);
  _Block_release(v18);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_1DA832E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a2, v4);
  swift_beginAccess();
  v9 = *(a1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1DA885D70(0, v9[2] + 1, 1, v9);
    *(a1 + 48) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1DA885D70(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a1 + 48) = v9;
  swift_endAccess();
  return sub_1DA7B769C();
}

uint64_t sub_1DA832FE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE110E58 != -1)
    {
      swift_once();
    }

    v1 = sub_1DA9405A4();
    __swift_project_value_buffer(v1, qword_1EE11ADA8);
    v2 = sub_1DA940584();
    v3 = sub_1DA940F34();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DA7A9000, v2, v3, "Automatic cleanup individual summary timer fired", v4, 2u);
      MEMORY[0x1E12739F0](v4, -1, -1);
    }

    sub_1DA8330FC();
    sub_1DA832618();
  }

  return result;
}

void sub_1DA8330FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v43 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v44 = sub_1DA93FAF4();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v44);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v18 = sub_1DA9408C4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v0 + 40);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v24 = v23;
  LOBYTE(v23) = sub_1DA9408F4();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (!UNCCatchMe() || (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0() & 1) == 0)
  {
    return;
  }

  if (IOPSGetTimeRemainingEstimate() != -2.0)
  {
    if (qword_1EE110E58 == -1)
    {
LABEL_8:
      v30 = sub_1DA9405A4();
      __swift_project_value_buffer(v30, qword_1EE11ADA8);
      v31 = sub_1DA940584();
      v32 = sub_1DA940F34();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DA7A9000, v31, v32, "Skip outdated individual summary cleanup; power not connected", v33, 2u);
        MEMORY[0x1E12739F0](v33, -1, -1);
      }

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_8;
  }

  v25 = v17;
  sub_1DA93FAE4();
  v26 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_queue_lastIndividualSummaryOutdatedCheckTime;
  swift_beginAccess();
  sub_1DA825D4C(v0 + v26, v10);
  v27 = v11;
  v28 = *(v11 + 48);
  v29 = v44;
  if (v28(v10, 1, v44) == 1)
  {
    sub_1DA7BA120(v10, &unk_1ECBD6530, &unk_1DA958820);
LABEL_18:
    sub_1DA93FAE4();
    (*(v27 + 56))(v8, 0, 1, v29);
    swift_beginAccess();
    sub_1DA825C64(v8, v0 + v26);
    swift_endAccess();
    v40 = sub_1DA940D34();
    v41 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    sub_1DA8DB00C(0, 0, v41, &unk_1DA9594B8, v42);

    (*(v27 + 8))(v17, v29);
    return;
  }

  (*(v27 + 32))(v15, v10, v29);
  sub_1DA93FA24();
  if (v34 >= 300.0)
  {
    (*(v27 + 8))(v15, v29);
    goto LABEL_18;
  }

  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v35 = sub_1DA9405A4();
  __swift_project_value_buffer(v35, qword_1EE11ADA8);
  v36 = sub_1DA940584();
  v37 = sub_1DA940F34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = 0x4072C00000000000;
    _os_log_impl(&dword_1DA7A9000, v36, v37, "Skip outdated individual summary cleanup; was cleanup within %f secs", v38, 0xCu);
    MEMORY[0x1E12739F0](v38, -1, -1);
  }

  v39 = *(v27 + 8);
  v39(v15, v29);
  v39(v25, v29);
}

uint64_t sub_1DA83371C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE110E58 != -1)
    {
      swift_once();
    }

    v1 = sub_1DA9405A4();
    __swift_project_value_buffer(v1, qword_1EE11ADA8);
    v2 = sub_1DA940584();
    v3 = sub_1DA940F34();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DA7A9000, v2, v3, "Power source changed", v4, 2u);
      MEMORY[0x1E12739F0](v4, -1, -1);
    }

    sub_1DA8330FC();
  }

  return result;
}

uint64_t sub_1DA833834()
{
  v1 = sub_1DA93FAF4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8338F0, 0, 0);
}

uint64_t sub_1DA8338F0()
{
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  v0[5] = __swift_project_value_buffer(v1, qword_1EE11ADA8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Start cleaning up outdated individual summary", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v5 = v0[4];

  type metadata accessor for SpotlightIndexer();
  sub_1DA93FA74();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1DA833A6C;
  v7 = v0[4];

  return sub_1DA88BD58(v7);
}

uint64_t sub_1DA833A6C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA833C14, 0, 0);
  }

  else
  {
    v7 = v6[4];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1DA833C14()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v1;
  v4 = sub_1DA940584();
  v5 = sub_1DA940F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "cleanupIndividualSummaries return error: %@", v8, 0xCu);
    sub_1DA7BA120(v9, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DA833D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_1DA9407F4();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = sub_1DA940854();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA833E98, 0, 0);
}

uint64_t sub_1DA833E98()
{
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  v0[21] = __swift_project_value_buffer(v1, qword_1EE11ADA8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Indexing list state", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1DA7B7144;
  v6 = v0[13];

  return sub_1DA88E7C8(v6);
}

uint64_t sub_1DA834000()
{
  v29 = v0;
  v1 = v0[23];
  v2 = v0[21];
  v3 = v1;
  v4 = sub_1DA940584();
  v5 = sub_1DA940F14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[10];
    v12 = sub_1DA941704();
    v14 = sub_1DA7AE6E8(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Failed index list state: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12739F0](v8, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  else
  {
    v15 = v0[23];
  }

  v16 = v0[20];
  v17 = v0[17];
  v26 = v0[19];
  v27 = v0[18];
  v18 = v0[15];
  v19 = v0[14];
  v24 = *(v19 + 40);
  v25 = v0[16];
  v0[6] = sub_1DA7B7694;
  v0[7] = v19;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7AF1D0;
  v0[5] = &block_descriptor_15;
  v20 = _Block_copy(v0 + 2);

  sub_1DA940824();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v16, v17, v20);
  _Block_release(v20);
  (*(v25 + 8))(v17, v18);
  (*(v26 + 8))(v16, v27);
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

id sub_1DA834368@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return v2;
}

uint64_t sub_1DA834398()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1DA832E3C(v2, v3);
}

uint64_t type metadata accessor for SummaryService()
{
  result = qword_1EE1133E0;
  if (!qword_1EE1133E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA83445C()
{
  sub_1DA8235A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DA834570(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA833D7C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1DA8346A4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DA7B7660;

  return sub_1DA833834();
}

uint64_t sub_1DA834770()
{
  if (*v0 == 2)
  {
    sub_1DA941784();
    if (*(v0 + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1DA941784();
    sub_1DA940AB4();

    if (*(v0 + 16))
    {
LABEL_3:
      v1 = *(v0 + 8);
      sub_1DA941784();
      sub_1DA940AB4();
      v2 = *(v0 + 24);
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_15:
      sub_1DA941784();
      if (*(v0 + 40))
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  sub_1DA941784();
  v2 = *(v0 + 24);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  sub_1DA941784();
  v3 = *(v2 + 16);
  MEMORY[0x1E1272850](v3);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1DA940AB4();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  if (*(v0 + 40))
  {
LABEL_8:
    v7 = *(v0 + 32);
    sub_1DA941784();
    sub_1DA940AB4();
    v8 = *(v0 + 48);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_17:
    sub_1DA941784();
    goto LABEL_18;
  }

LABEL_16:
  sub_1DA941784();
  v8 = *(v0 + 48);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_9:
  sub_1DA941784();
  v9 = *(v8 + 16);
  MEMORY[0x1E1272850](v9);
  if (v9)
  {
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_1DA940AB4();

      v10 += 2;
      --v9;
    }

    while (v9);
  }

LABEL_18:
  v13 = *(v0 + 56);
  v14 = *(v13 + 16);
  result = MEMORY[0x1E1272850](v14);
  if (v14)
  {
    v16 = (v13 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      sub_1DA940AB4();

      v16 += 2;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1DA834980()
{
  sub_1DA941764();
  sub_1DA834770();
  return sub_1DA941794();
}

uint64_t sub_1DA8349C4()
{
  sub_1DA941764();
  sub_1DA834770();
  return sub_1DA941794();
}

uint64_t sub_1DA834A00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1DA8356CC(v7, v8) & 1;
}

uint64_t sub_1DA834A4C()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = v0[5];
    if (!v2)
    {
      return 0x292A3D3D2A28;
    }

    v3 = v0[7];
  }

  else
  {
    v3 = v0[7];
    v26 = v3;
    v4 = *MEMORY[0x1E6963F88];
    v24 = sub_1DA940A14();
    v25 = v5;
    sub_1DA8362B0(&v26, &v23);
    MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
    if (v1)
    {
      v6 = 0xD000000000000022;
    }

    else
    {
      v6 = 0xD00000000000001BLL;
    }

    if (v1)
    {
      v7 = "com.apple.usernotifications";
    }

    else
    {
      v7 = "led";
    }

    MEMORY[0x1E1271BD0](v6, v7 | 0x8000000000000000);

    v8 = v24;
    v9 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1DA7B6928(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_1DA7B6928((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v12 = &v3[16 * v11];
    *(v12 + 4) = v8;
    *(v12 + 5) = v9;
    v2 = v0[5];
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v13 = v0[4];
  v14 = *MEMORY[0x1E6963EE8];
  v24 = sub_1DA940A14();
  v25 = v15;
  MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
  MEMORY[0x1E1271BD0](v13, v2);
  v16 = v24;
  v17 = v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DA7B6928(0, *(v3 + 2) + 1, 1, v3);
  }

  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    v3 = sub_1DA7B6928((v18 > 1), v19 + 1, 1, v3);
  }

  *(v3 + 2) = v19 + 1;
  v20 = &v3[16 * v19];
  *(v20 + 4) = v16;
  *(v20 + 5) = v17;
LABEL_20:
  v24 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7B6A38();
  v21 = sub_1DA9409C4();

  return v21;
}

uint64_t sub_1DA834CAC()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = *(v1 + 16) == 0;
    v3 = v0[2];
    if (v3)
    {
LABEL_3:
      v4 = v0[1];
      v5 = *MEMORY[0x1E6964C48];
      v17 = sub_1DA940A14();
      MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
      MEMORY[0x1E1271BD0](v4, v3);
      return v17;
    }
  }

  else
  {
    v2 = 1;
    v3 = v0[2];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (!v1)
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v7 = *(v1 + 16);
  if (!v7)
  {
    return 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA82A778(0, v7, 0);
  v8 = *MEMORY[0x1E6964C48];
  v9 = (v1 + 40);
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    v18 = sub_1DA940A14();
    v19 = v12;

    MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
    MEMORY[0x1E1271BD0](v10, v11);

    v14 = *(v20 + 16);
    v13 = *(v20 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1DA82A778((v13 > 1), v14 + 1, 1);
    }

    *(v20 + 16) = v14 + 1;
    v15 = v20 + 16 * v14;
    *(v15 + 32) = v18;
    *(v15 + 40) = v19;
    v9 += 2;
    --v7;
  }

  while (v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7B6A38();
  v16 = sub_1DA9409C4();

  return v16;
}

uint64_t sub_1DA834E9C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v4 + 16);
  v9(&v16 - v7, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v11 = *(v4 + 32);
  v11(v17 + v10, v8, v3);
  v12 = v18;
  v9(v18, a1, v3);
  v13 = swift_allocObject();
  v11(v13 + v10, v12, v3);
  v14 = sub_1DA835E88(v19, 0, sub_1DA83637C, v17, sub_1DA836394, v13);
}

uint64_t sub_1DA835094()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  return sub_1DA940C54();
}

uint64_t sub_1DA8350E4(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  return sub_1DA940C44();
}

uint64_t sub_1DA835194(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_1DA836568(a2 & 1, a3, sub_1DA8364DC, v12);
}

uint64_t sub_1DA8352E8(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
    return sub_1DA940C44();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
    return sub_1DA940C54();
  }
}

uint64_t sub_1DA83536C(id a1, void (*a2)(uint64_t, id), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1EE11AFA0);
    v9 = a1;
    v10 = sub_1DA940584();
    v11 = sub_1DA940F14();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Spotlight query error of %{public}@", v12, 0xCu);
      sub_1DA828378(v13);
      MEMORY[0x1E12739F0](v13, -1, -1);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v16 = *(a4 + 16);

  a2(v17, a1);
}

uint64_t sub_1DA835528()
{
  sub_1DA941764();
  MEMORY[0x1E1272850](0);
  return sub_1DA941794();
}

uint64_t sub_1DA83556C()
{
  sub_1DA941764();
  MEMORY[0x1E1272850](0);
  return sub_1DA941794();
}

uint64_t sub_1DA8355AC(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    return a3();
  }

  swift_beginAccess();

  sub_1DA7B9114(v4);
  return swift_endAccess();
}

void sub_1DA835618(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    a2(a1);
  }

  else
  {
    swift_beginAccess();
    v11 = *(a6 + 16);

    a4(v12);
  }
}

uint64_t sub_1DA8356CC(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return 0;
    }

    if (v4)
    {
      v6 = 0xD000000000000022;
    }

    else
    {
      v6 = 0xD00000000000001BLL;
    }

    if (v4)
    {
      v7 = "com.apple.usernotifications";
    }

    else
    {
      v7 = "led";
    }

    if (v5)
    {
      v8 = 0xD000000000000022;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }

    if (v5)
    {
      v9 = "com.apple.usernotifications";
    }

    else
    {
      v9 = "led";
    }

    if (v6 == v8 && (v7 | 0x8000000000000000) == (v9 | 0x8000000000000000))
    {
    }

    else
    {
      v11 = sub_1DA941684();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13 || (a1[1] != a2[1] || v12 != v13) && (sub_1DA941684() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (sub_1DA82A1FC(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[5];
  v17 = a2[5];
  if (v16)
  {
    if (!v17 || (a1[4] != a2[4] || v16 != v17) && (sub_1DA941684() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[6];
  v19 = a2[6];
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (!v19 || (sub_1DA82A1FC(v18, v19) & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v20 = a1[7];
  v21 = a2[7];

  return sub_1DA82A1FC(v20, v21);
}

uint64_t sub_1DA835894(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA8358B8, 0, 0);
}

uint64_t sub_1DA8358B8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 56);
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *(v3 + 16) = v2 & 1;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x1E69E8920] + 4);
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5020, &qword_1DA9594D0);
    *v5 = v0;
    v5[1] = sub_1DA835A3C;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000031, 0x80000001DA951980, sub_1DA83643C, v3, v6);
  }

  else
  {
    sub_1DA836320();
    swift_allocError();
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1DA835A3C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1DA835B74;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1DA835B58;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DA835B74()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DA835BF8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = v0[3];
    v2 = swift_task_alloc();
    v0[4] = v2;
    *(v2 + 16) = v1;
    v3 = *(MEMORY[0x1E69E8920] + 4);
    v4 = swift_task_alloc();
    v0[5] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5020, &qword_1DA9594D0);
    *v4 = v0;
    v4[1] = sub_1DA835D6C;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x7571286863746566, 0xED0000293A797265, sub_1DA836374, v2, v5);
  }

  else
  {
    sub_1DA836320();
    swift_allocError();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DA835D6C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1DA836AB4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1DA836AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1DA835E88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v12 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  [v12 setLive_];
  v13 = *(a1 + 48);
  if (v13)
  {
    v39 = a4;
    v14 = *(v13 + 16);
    if (v14)
    {
      v35 = a2;
      v36 = a3;
      v37 = a6;
      v38 = v11;
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1DA82A778(0, v14, 0);
      v15 = aBlock;
      v16 = (v13 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        aBlock = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1DA82A778((v19 > 1), v20 + 1, 1);
          v15 = aBlock;
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        v16 += 2;
        --v14;
      }

      while (v14);
      a6 = v37;
      v11 = v38;
      a3 = v36;
      a2 = v35;
    }

    v22 = sub_1DA940BD4();

    [v12 setFetchAttributes_];

    a4 = v39;
  }

  sub_1DA834CAC();
  if (v23)
  {
    v24 = sub_1DA940A04();
  }

  else
  {
    v24 = 0;
  }

  [v12 setFilterQuery_];

  sub_1DA834A4C();
  v25 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v26 = v12;
  v27 = sub_1DA940A04();

  v28 = [v25 initWithQueryString:v27 queryContext:v26];

  v29 = sub_1DA940BD4();
  [v28 setBundleIDs_];

  v30 = swift_allocObject();
  *(v30 + 16) = a2 & 1;
  *(v30 + 24) = a3;
  *(v30 + 32) = a4;
  *(v30 + 40) = v11;
  v45 = sub_1DA836290;
  v46 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1DA7B8FEC;
  v44 = &block_descriptor_2;
  v31 = _Block_copy(&aBlock);

  [v28 setFoundItemsHandler_];
  _Block_release(v31);
  v32 = swift_allocObject();
  v32[2] = a5;
  v32[3] = a6;
  v32[4] = a3;
  v32[5] = a4;
  v32[6] = v11;
  v45 = sub_1DA8362A0;
  v46 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1DA7B1BFC;
  v44 = &block_descriptor_9;
  v33 = _Block_copy(&aBlock);

  [v28 setCompletionHandler_];
  _Block_release(v33);
  [v28 start];

  return v28;
}

uint64_t sub_1DA836290(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1DA8355AC(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1DA8362B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA836320()
{
  result = qword_1ECBD5018;
  if (!qword_1ECBD5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5018);
  }

  return result;
}

uint64_t sub_1DA8363AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA8364DC(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8) - 8) + 80);

  return sub_1DA8352E8(a1, a2);
}

void sub_1DA836568(char a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = MEMORY[0x1E69E7CC0];
    v8 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
    v9 = sub_1DA940BD4();
    [v8 setFetchAttributes_];

    sub_1DA941364();

    v21 = 0xD00000000000001DLL;
    v22 = 0x80000001DA9519C0;
    if (a1)
    {
      v10 = 0xD000000000000022;
    }

    else
    {
      v10 = 0xD00000000000001BLL;
    }

    if (a1)
    {
      v11 = "com.apple.usernotifications";
    }

    else
    {
      v11 = "led";
    }

    MEMORY[0x1E1271BD0](v10, v11 | 0x8000000000000000);

    MEMORY[0x1E1271BD0](10530, 0xE200000000000000);
    v12 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v13 = v8;
    v14 = sub_1DA940A04();

    v15 = [v12 initWithQueryString:v14 queryContext:{v13, v21, v22}];

    v16 = sub_1DA940BD4();
    [v15 setBundleIDs_];

    v25 = sub_1DA7B90AC;
    v26 = v7;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1DA7B8FEC;
    v24 = &block_descriptor_27;
    v17 = _Block_copy(&v21);

    [v15 setFoundItemsHandler_];
    _Block_release(v17);
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = v7;
    v25 = sub_1DA836914;
    v26 = v18;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1DA7B1BFC;
    v24 = &block_descriptor_33;
    v19 = _Block_copy(&v21);

    [v15 setCompletionHandler_];
    _Block_release(v19);
    [v15 start];
  }

  else
  {
    sub_1DA836320();
    v20 = swift_allocError();
    a3(MEMORY[0x1E69E7CC0], v20);
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA836934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DA83697C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA8369F0()
{
  result = qword_1ECBD5030;
  if (!qword_1ECBD5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5030);
  }

  return result;
}

unint64_t sub_1DA836A48()
{
  result = qword_1EE1134D0;
  if (!qword_1EE1134D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1134D0);
  }

  return result;
}

uint64_t static LogSignpost.begin(logger:name:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a2;
  v45 = a3;
  v43 = a4;
  v41 = sub_1DA9404F4();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = sub_1DA9405A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1DA940524();
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14);
  v23 = v13;
  v24 = v45;
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v25 = sub_1DA940514();
  v26 = sub_1DA941084();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v40 = v19;
  if ((v43 & 1) == 0)
  {
    v28 = v44;
    if (v44)
    {
      v29 = v23;
LABEL_9:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v25, v26, v31, v28, "", v30, 2u);
      v32 = v30;
      v23 = v29;
      MEMORY[0x1E12739F0](v32, -1, -1);
      v24 = v45;
      v19 = v40;
LABEL_10:

      v33 = v41;
      (*(v7 + 16))(v11, v23, v41);
      v34 = sub_1DA940564();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      v37 = sub_1DA940554();
      (*(v7 + 8))(v23, v33);
      *a5 = v44;
      *(a5 + 8) = v24;
      *(a5 + 16) = v43;
      *(a5 + 24) = v37;
      v38 = type metadata accessor for LogSignpost();
      return (*(v19 + 32))(a5 + *(v38 + 24), v22, v42);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v44 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v44 & 0xFFFFF800) != 0xD800)
  {
    if (v44 >> 16 <= 0x10)
    {
      v29 = v23;
      v28 = &v46;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LogSignpost.end(enableTelemetry:)(Swift::Bool enableTelemetry)
{
  v3 = sub_1DA940534();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = sub_1DA9404F4();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = *(type metadata accessor for LogSignpost() + 24);
  v18 = *v1;
  v19 = *(v1 + 16);
  v20 = *(v1 + 24);

  v21 = sub_1DA940514();
  if (enableTelemetry)
  {
    sub_1DA940544();
    v14 = sub_1DA941074();
    if (sub_1DA941124())
    {
      if (v19)
      {
        if (v18 >> 32)
        {
          goto LABEL_30;
        }

        if ((v18 & 0xFFFFF800) == 0xD800)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v18 >> 16 > 0x10)
        {
          goto LABEL_32;
        }

        v18 = &v46;
      }

      else if (!v18)
      {
        __break(1u);
        goto LABEL_6;
      }

      v40 = v18;

      sub_1DA940574();

      v25 = v41;
      v24 = v42;
      if ((*(v41 + 88))(v9, v42) == *MEMORY[0x1E69E93E8])
      {
        v26 = 0;
        v27 = 0;
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v9, v24);
        v28 = "%s";
        v27 = 2;
        v26 = 1;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v32 = v27;
      *(v32 + 1) = v26;
      *(v32 + 2) = 2080;
      v34 = sub_1DA941374();
      v36 = sub_1DA7AE6E8(v34, v35, &v45);

      *(v32 + 4) = v36;
      v37 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v21, v14, v37, v40, v28, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E12739F0](v33, -1, -1);
      MEMORY[0x1E12739F0](v32, -1, -1);
    }

    (*(v43 + 8))(v16, v44);
    return;
  }

LABEL_6:
  sub_1DA940544();
  v22 = sub_1DA941074();
  if (sub_1DA941124())
  {
    if (v19)
    {
      if (!(v18 >> 32))
      {
        if ((v18 & 0xFFFFF800) == 0xD800)
        {
LABEL_35:
          __break(1u);
          return;
        }

        if (v18 >> 16 <= 0x10)
        {
          v23 = &v47;
          goto LABEL_20;
        }

        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (v18)
    {
      v23 = v18;
LABEL_20:
      v30 = v41;
      v29 = v42;

      sub_1DA940574();

      if ((*(v30 + 88))(v7, v29) == *MEMORY[0x1E69E93E8])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v30 + 8))(v7, v29);
        v31 = "";
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v21, v22, v39, v23, v31, v38, 2u);
      MEMORY[0x1E12739F0](v38, -1, -1);
      goto LABEL_27;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_27:

  (*(v43 + 8))(v14, v44);
}

uint64_t LogSignpost.name.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t LogSignpost.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogSignpost() + 24);
  v4 = sub_1DA940524();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LogSignpost.init(name:state:signposter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(type metadata accessor for LogSignpost() + 24);
  v9 = sub_1DA940524();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a5, v9);
}

uint64_t LogSignpost.end(message:)(void *a1)
{
  v3 = sub_1DA940534();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA9404F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for LogSignpost() + 24);
  v13 = *v1;
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);

  v16 = sub_1DA940514();
  sub_1DA940544();
  v41 = sub_1DA941074();
  v44 = sub_1DA9404B4();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v37 = v16;
  v38 = v7;
  v39 = v11;
  v40 = v8;
  if (v14)
  {
    if (v13 >> 32)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if ((v13 & 0xFFFFF800) == 0xD800)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v13 >> 16 > 0x10)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v13 = &v48;
  }

  else if (!v13)
  {
    __break(1u);
LABEL_5:

    return (*(v8 + 8))(v11, v7);
  }

  v18 = a1[2];
  v19 = a1[5];
  v20 = a1[6];

  sub_1DA940574();

  result = (*(v42 + 88))(v6, v43);
  if (result != *MEMORY[0x1E69E93E8])
  {
LABEL_35:
    __break(1u);
    return result;
  }

  result = v44;
  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v44))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = swift_slowAlloc();
  v21 = result;
  if (v20)
  {
    if ((v20 - 0x1000000000000000) >> 61 == 7)
    {
      result = swift_slowAlloc();
      v22 = result;
      v35 = v20;
      v36 = v19;
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_19:
      v23 = v13;
      v24 = 0;
      goto LABEL_20;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = 0;
  v35 = 0;
  v36 = v19;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_16:
  if ((v19 - 0x400000000000000) >> 59 != 31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = v13;
  v24 = swift_slowAlloc();
LABEL_20:
  v45 = v24;
  v46 = v22;
  v25 = v21;
  *v21 = 0;
  v47 = v21 + 2;
  v26 = *(v18 + 16);
  if (v26)
  {
    v27 = (v18 + 40);
    do
    {
      v29 = *(v27 - 1);
      v28 = *v27;

      v29(&v47, &v46, &v45);

      v27 += 2;
      --v26;
    }

    while (v26);
  }

  v30 = v39;
  v31 = sub_1DA9404D4();
  v32 = v37;
  _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v37, v41, v31, v23, "[Error] Interval already ended", v25, v44);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v22, -1, -1);
  }

  v33 = v38;
  v34 = v40;
  if (v24)
  {
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v24, -1, -1);
  }

  MEMORY[0x1E12739F0](v25, -1, -1);

  return (*(v34 + 8))(v30, v33);
}

uint64_t static LogSignpost.emit(_:name:_:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v38 = a5;
  v37 = a4;
  v36 = a2;
  v6 = sub_1DA9404F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DA9405A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940524();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  v21 = v38;
  sub_1DA940504();
  sub_1DA9404E4();
  v22 = sub_1DA940514();
  sub_1DA941094();
  v23 = sub_1DA9404B4();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {

    (*(v7 + 8))(v10, v6);
    return (*(v17 + 8))(v20, v16);
  }

  v25 = v36;
  if ((v37 & 1) == 0)
  {
    if (v36)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (HIDWORD(v25))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 > 0x10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_9:
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v23))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v26 = *(v21 + 16);
      v27 = *(v21 + 24);
      v28 = *(v21 + 25);
      v30 = *(v21 + 40);
      v29 = *(v21 + 48);
      result = swift_slowAlloc();
      v31 = result;
      if (v29)
      {
        if ((v29 - 0x1000000000000000) >> 61 != 7)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        result = swift_slowAlloc();
        v29 = result;
      }

      if (v30)
      {
        if ((v30 - 0x400000000000000) >> 59 != 31)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        result = swift_slowAlloc();
      }

      else
      {
        result = 0;
      }

      v39 = result;
      v40 = v29;
      *v31 = v27;
      v31[1] = v28;
      v41 = v31 + 2;
      v32 = *(v26 + 16);
      if (v32)
      {
        v33 = (v26 + 40);
        do
        {
          v35 = *(v33 - 1);
          v34 = *v33;

          v35(&v41, &v40, &v39);

          v33 += 2;
          --v32;
        }

        while (v32);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t withSignpost<A>(logger:name:enableTelemetry:closure:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a7;
  v50 = a6;
  v51 = a5;
  v47 = a3;
  v48 = a8;
  v54 = a2;
  v52 = a1;
  v53 = a4;
  v46 = sub_1DA9404F4();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v46);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - v13;
  v15 = sub_1DA9405A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DA940524();
  v20 = *(v45 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LogSignpost();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v52, v15);
  v28 = v14;
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v29 = sub_1DA940514();
  v30 = sub_1DA941084();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v44 = v24;
  v52 = v20;
  if ((v53 & 1) == 0)
  {
    v28 = v54;
    if (v54)
    {
LABEL_9:
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_1DA9404D4();
      v34 = v28;
      v28 = v14;
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v29, v30, v33, v34, "", v32, 2u);
      MEMORY[0x1E12739F0](v32, -1, -1);
      v20 = v52;
      v24 = v44;
LABEL_10:

      v35 = v46;
      (*(v8 + 16))(v12, v28, v46);
      v36 = sub_1DA940564();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = sub_1DA940554();
      v40 = v28;
      v41 = v39;
      (*(v8 + 8))(v40, v35);
      v42 = v47;
      *v27 = v54;
      *(v27 + 1) = v42;
      v27[16] = v53;
      *(v27 + 3) = v41;
      v43 = (*(v20 + 32))(&v27[*(v24 + 24)], v23, v45);
      v50(v43);
      sub_1DA838B2C(v27, v51 & 1);
      return sub_1DA839118(v27);
    }

    __break(1u);
  }

  if (v54 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v54 & 0xFFFFF800) != 0xD800)
  {
    if (v54 >> 16 <= 0x10)
    {
      v14 = v28;
      v28 = &v55;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t withThrowingSignpost<A>(logger:name:enableTelemetry:closure:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a6;
  v48 = a8;
  v49 = a7;
  v51 = a5;
  v47 = a3;
  v54 = a2;
  v52 = a1;
  v53 = a4;
  v46 = sub_1DA9404F4();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v46);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = sub_1DA9405A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DA940524();
  v19 = *(v45 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LogSignpost();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v52, v14);
  v27 = v13;
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v28 = sub_1DA940514();
  v29 = sub_1DA941084();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v43 = v23;
  v52 = v19;
  if ((v53 & 1) == 0)
  {
    v31 = v54;
    if (v54)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v54 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v54 & 0xFFFFF800) != 0xD800)
  {
    if (v54 >> 16 <= 0x10)
    {
      v31 = &v55;
LABEL_9:
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v28, v29, v33, v31, "", v32, 2u);
      v34 = v32;
      v27 = v13;
      MEMORY[0x1E12739F0](v34, -1, -1);
      v19 = v52;
      v23 = v43;
LABEL_10:

      v35 = v46;
      (*(v8 + 16))(v44, v27, v46);
      v36 = sub_1DA940564();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = sub_1DA940554();
      (*(v8 + 8))(v27, v35);
      v40 = v47;
      *v26 = v54;
      *(v26 + 1) = v40;
      v26[16] = v53;
      *(v26 + 3) = v39;
      v41 = (*(v19 + 32))(&v26[*(v23 + 24)], v22, v45);
      v50(v41);
      sub_1DA838B2C(v26, v51 & 1);
      return sub_1DA839118(v26);
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t withThrowingSignpostAsync<A>(logger:name:enableTelemetry:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 185) = a6;
  *(v8 + 184) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = sub_1DA9404F4();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v12 = sub_1DA9405A4();
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v15 = sub_1DA940524();
  *(v8 + 128) = v15;
  v16 = *(v15 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v18 = type metadata accessor for LogSignpost();
  *(v8 + 152) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8385DC, 0, 0);
}

uint64_t sub_1DA8385DC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 32), *(v0 + 104));
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v3 = sub_1DA940514();
  v4 = sub_1DA941084();
  result = sub_1DA941124();
  if (result)
  {
    v6 = *(v0 + 40);
    if ((*(v0 + 184) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 96);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1DA9404D4();
        _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x1E12739F0](v8, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v29 = *(v0 + 144);
  v27 = *(v0 + 152);
  v28 = *(v0 + 128);
  v12 = *(v0 + 96);
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v26 = *(v0 + 184);
  v17 = *(v0 + 40);
  (*(v13 + 16))(*(v0 + 88), v12, v14);
  v18 = sub_1DA940564();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1DA940554();
  (*(v13 + 8))(v12, v14);
  *v10 = v17;
  *(v10 + 8) = v16;
  *(v10 + 16) = v26;
  *(v10 + 24) = v21;
  (*(v11 + 32))(v10 + *(v27 + 24), v29, v28);
  v30 = (v15 + *v15);
  v22 = v15[1];
  v23 = swift_task_alloc();
  *(v0 + 168) = v23;
  *v23 = v0;
  v23[1] = sub_1DA8388A8;
  v24 = *(v0 + 64);
  v25 = *(v0 + 24);

  return v30(v25);
}

uint64_t sub_1DA8388A8()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1DA838A74;
  }

  else
  {
    v3 = sub_1DA8389BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA8389BC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_1DA838B2C(v1, *(v0 + 185));
  sub_1DA839118(v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DA838A74()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_1DA838B2C(v1, *(v0 + 185));
  sub_1DA839118(v1);

  v6 = *(v0 + 8);
  v7 = *(v0 + 176);

  return v6();
}

uint64_t sub_1DA838B2C(uint64_t a1, char a2)
{
  v4 = sub_1DA940534();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v11 = sub_1DA9404F4();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = type metadata accessor for LogSignpost();
  v19 = *a1;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = a1 + *(v18 + 24);
  v23 = sub_1DA940514();
  if (a2)
  {
    sub_1DA940544();
    v15 = sub_1DA941074();
    result = sub_1DA941124();
    if (result)
    {
      if (v20)
      {
        if (v19 >> 32)
        {
          goto LABEL_32;
        }

        if ((v19 & 0xFFFFF800) == 0xD800)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v19 >> 16 > 0x10)
        {
          goto LABEL_34;
        }

        v19 = &v53;
      }

      else if (!v19)
      {
        __break(1u);
        goto LABEL_6;
      }

      v46 = v23;
      v47 = v19;

      sub_1DA940574();

      v28 = v48;
      v27 = v49;
      if ((*(v48 + 88))(v10, v49) == *MEMORY[0x1E69E93E8])
      {
        v29 = 0;
        v30 = 0;
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v10, v27);
        v31 = "%s";
        v30 = 2;
        v29 = 1;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v37;
      *v36 = v30;
      *(v36 + 1) = v29;
      *(v36 + 2) = 2080;
      v38 = sub_1DA941374();
      v40 = sub_1DA7AE6E8(v38, v39, &v52);

      *(v36 + 4) = v40;
      v41 = sub_1DA9404D4();
      v42 = v46;
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v46, v15, v41, v47, v31, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12739F0](v37, -1, -1);
      MEMORY[0x1E12739F0](v36, -1, -1);
    }

    else
    {
    }

    return (*(v50 + 8))(v17, v51);
  }

LABEL_6:
  sub_1DA940544();
  v25 = sub_1DA941074();
  result = sub_1DA941124();
  if (result)
  {
    if (v20)
    {
      if (!(v19 >> 32))
      {
        if ((v19 & 0xFFFFF800) == 0xD800)
        {
LABEL_37:
          __break(1u);
          return result;
        }

        if (v19 >> 16 <= 0x10)
        {
          v26 = &v54;
          goto LABEL_22;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v19)
    {
      v26 = v19;
LABEL_22:
      v32 = v23;

      sub_1DA940574();

      v34 = v48;
      v33 = v49;
      if ((*(v48 + 88))(v8, v49) == *MEMORY[0x1E69E93E8])
      {
        v35 = "[Error] Interval already ended";
      }

      else
      {
        (*(v34 + 8))(v8, v33);
        v35 = "";
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v32, v25, v44, v26, v35, v43, 2u);
      MEMORY[0x1E12739F0](v43, -1, -1);

      return (*(v50 + 8))(v15, v51);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return (*(v50 + 8))(v15, v51);
}

uint64_t sub_1DA838FF0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA839000@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA839038(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1DA7AE6E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_1DA839094(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5038, &qword_1DA9596D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **sub_1DA839108(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1DA839118(uint64_t a1)
{
  v2 = type metadata accessor for LogSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA839174()
{
  result = sub_1DA940564();
  if (v1 <= 0x3F)
  {
    result = sub_1DA940524();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA839220()
{
  v1 = v0 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DA839270(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen);
  if (v5)
  {
    swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);
    swift_unknownObjectRelease();
    *(v5 + 24) = v6;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

void (*sub_1DA839318(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1DA8393B8;
}

void sub_1DA8393B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v6 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v7 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen);
    if (v7)
    {
      v8 = v3[5] + v3[6];
      swift_unknownObjectWeakLoadStrong();
      *(v7 + 24) = *(v8 + 8);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id UserNotificationsCloudReceiver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserNotificationsCloudReceiver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationsCloudReceiver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void UserNotificationsCloudReceiver.receiveAdd(notification:bundleIdentifier:settings:communicationImageData:)(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v14 = sub_1DA9405A4();
  __swift_project_value_buffer(v14, qword_1EE11AD30);
  v15 = a4;
  v16 = a1;

  v17 = sub_1DA940584();
  v18 = sub_1DA940F34();

  if (os_log_type_enabled(v17, v18))
  {
    v53 = v15;
    v19 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = a5;
    v48 = swift_slowAlloc();
    v56[0] = v48;
    *v19 = 136315650;
    log = v17;
    v20 = a4;
    v21 = a6;
    v22 = v16;
    v23 = a3;
    v24 = [v22 description];
    v49 = v7;
    v25 = a2;
    v26 = sub_1DA940A14();
    v44 = v18;
    v27 = v16;
    v29 = v28;

    a6 = v21;
    a4 = v20;

    a3 = v23;
    v30 = sub_1DA7AE6E8(v26, v29, v56);
    v16 = v27;

    *(v19 + 4) = v30;
    a2 = v25;
    v7 = v49;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1DA7AE6E8(a2, v23, v56);
    *(v19 + 22) = 2112;
    *(v19 + 24) = v53;
    *v47 = v20;
    v31 = v53;
    v17 = log;
    _os_log_impl(&dword_1DA7A9000, log, v44, "receiveAdd(notification): %s bundleIdentifier: %s settings: %@", v19, 0x20u);
    sub_1DA828378(v47);
    MEMORY[0x1E12739F0](v47, -1, -1);
    swift_arrayDestroy();
    a5 = v51;
    MEMORY[0x1E12739F0](v48, -1, -1);
    v32 = v19;
    v15 = v53;
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  if (sub_1DA839AC4(a2, a3))
  {
    if (a4)
    {
      v33 = v7 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_settingsProvider;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 8);
        v35 = v15;
        [v35 mutableCopy];
        sub_1DA941154();
        swift_unknownObjectRelease();
        sub_1DA7AF3EC(0, &qword_1ECBD5058, 0x1E6983230);
        v54 = v34;
        if (swift_dynamicCast())
        {
          v50 = v7;
          v52 = a5;
          ObjectType = swift_getObjectType();
          v37 = *(v34 + 8);
          v38 = v55;
          v39 = v37(a2, a3, ObjectType, v34);
          if (v39)
          {
            v40 = v39;
            [v38 setRemoteNotificationsSetting_];
            [v38 copy];
            sub_1DA941154();
            v45 = v38;

            swift_unknownObjectRelease();
            sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
            if (swift_dynamicCast())
            {
              v41 = v55;
            }

            else
            {
              v41 = v35;
            }

            v7 = v50;
            a5 = v52;
            v42 = v45;
          }

          else
          {

            v41 = v35;
            v42 = v38;
            v7 = v50;
            a5 = v52;
          }
        }

        else
        {
          v42 = 0;
          v41 = v35;
        }

        v43 = swift_getObjectType();
        (*(v54 + 16))(v41, a2, a3, v43);

        swift_unknownObjectRelease();
      }
    }

    if (*(v7 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen))
    {
      sub_1DA8508F4(v16, a2, a3, a5, a6);
    }
  }
}

uint64_t sub_1DA839AC4(uint64_t a1, unint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_receiver];
  v6 = OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties;
  if (*(*(v5 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties) + 16) == 1)
  {
  }

  else
  {
    v7 = sub_1DA941684();

    if ((v7 & 1) == 0)
    {
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v15 = sub_1DA9405A4();
      __swift_project_value_buffer(v15, qword_1EE11AD30);
      v16 = v2;
      v17 = sub_1DA940584();
      v18 = sub_1DA940EF4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30 = v20;
        *v19 = 136315138;
        if (*(*(v5 + v6) + 16))
        {
          v21 = 0x7265766965636572;
        }

        else
        {
          v21 = 0x7265646E6573;
        }

        if (*(*(v5 + v6) + 16))
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE600000000000000;
        }

        v23 = sub_1DA7AE6E8(v21, v22, &v30);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1DA7A9000, v17, v18, "Ignoring enablement check for non-receiver (%s).", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1E12739F0](v20, -1, -1);
        MEMORY[0x1E12739F0](v19, -1, -1);
      }

      return 1;
    }
  }

  v8 = &v2[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_settingsProvider];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    if (sub_1DA83A7C8(a1, a2, ObjectType, v9))
    {
      swift_unknownObjectRelease();
      return 1;
    }

    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v25 = sub_1DA9405A4();
    __swift_project_value_buffer(v25, qword_1EE11AD30);

    v26 = sub_1DA940584();
    v27 = sub_1DA940F34();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DA7AE6E8(a1, a2, &v30);
      _os_log_impl(&dword_1DA7A9000, v26, v27, "Notifications are disabled for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12739F0](v29, -1, -1);
      MEMORY[0x1E12739F0](v28, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE11AD30);
    v12 = sub_1DA940584();
    v13 = sub_1DA940F34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Missing settings provider.", v14, 2u);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }
  }

  return 0;
}

void sub_1DA839ED4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1EE11AD30);
  v9 = a1;

  v10 = sub_1DA940584();
  v11 = sub_1DA940F34();

  v32 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v12 = 136315394;
    v13 = a3;
    v14 = a2;
    v15 = v9;
    v16 = [v15 description];
    v17 = sub_1DA940A14();
    v19 = v18;

    a2 = v14;
    a3 = v13;

    v20 = sub_1DA7AE6E8(v17, v19, v33);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1DA7AE6E8(a2, v13, v33);
    _os_log_impl(&dword_1DA7A9000, v10, v11, "receiveRemove(notification): %s bundleIdentifier: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v31, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  v21 = v4 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA9596E0;
    v24 = [v32 notificationRecord];
    v25 = [v24 identifier];

    if (v25)
    {
      ObjectType = swift_getObjectType();
      v27 = sub_1DA940A14();
      v29 = v28;

      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = sub_1DA8AD06C(inited);
      swift_setDeallocating();
      sub_1DA83ACD0(inited + 32);
      (*(v22 + 16))(v30, a2, a3, ObjectType, v22);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1DA83A1E8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v42 = a4;
  v43 = a2;
  v14 = sub_1DA93F964();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v19 = sub_1DA9405A4();
  __swift_project_value_buffer(v19, qword_1EE11AD30);
  v20 = *(v15 + 16);
  v44 = a1;
  v20(v18, a1, v14);

  v21 = sub_1DA940584();
  v22 = sub_1DA940F34();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v8;
    v24 = v23;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v24 = 136315906;
    sub_1DA828278();
    v38 = v21;
    v25 = sub_1DA941614();
    v41 = a3;
    v37 = v22;
    v26 = a5;
    v27 = a7;
    v28 = a6;
    v30 = v29;
    (*(v15 + 8))(v18, v14);
    v31 = sub_1DA7AE6E8(v25, v30, &v45);
    a6 = v28;
    a7 = v27;
    a5 = v26;
    a3 = v41;
    v32 = v42;

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1DA7AE6E8(v43, a3, &v45);
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_1DA7AE6E8(v32, v26, &v45);
    *(v24 + 32) = 2080;
    *(v24 + 34) = sub_1DA7AE6E8(a6, a7, &v45);
    v33 = v38;
    _os_log_impl(&dword_1DA7A9000, v38, v37, "receiveAttachment(fileURL): %s attachmentIdentifier: %s notificationIdentifier: %s bundleIdentifier: %s", v24, 0x2Au);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v34, -1, -1);
    v35 = v24;
    v8 = v40;
    MEMORY[0x1E12739F0](v35, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  if (sub_1DA839AC4(a6, a7))
  {
    if (*(v8 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen))
    {
      sub_1DA84E964(v44, v43, a3, v42, a5, a6, a7);
    }
  }
}

Swift::Void __swiftcall UserNotificationsCloudReceiver.receiveCategory(categories:bundleIdentifier:)(Swift::OpaquePointer categories, Swift::String bundleIdentifier)
{
  v3 = v2;
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v7 = sub_1DA9405A4();
  __swift_project_value_buffer(v7, qword_1EE11AD30);

  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v13 = MEMORY[0x1E1271CD0](categories._rawValue, v12);
    v15 = sub_1DA7AE6E8(v13, v14, &v19);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DA7AE6E8(countAndFlagsBits, object, &v19);
    _os_log_impl(&dword_1DA7A9000, v8, v9, "receiveCategory(notification): %s bundleIdentifier: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }

  if (sub_1DA839AC4(countAndFlagsBits, object))
  {
    v16 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_categoryRepository);
    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v17 = sub_1DA940BD4();
    v18 = sub_1DA940A04();
    [v16 setCategories:v17 forBundleIdentifier:v18];
  }
}

BOOL sub_1DA83A7C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8))();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 remoteNotificationsSetting];

    return v8 == 2;
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1EE11AD30);

    v11 = sub_1DA940584();
    v12 = sub_1DA940F34();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136380675;
      *(v13 + 4) = sub_1DA7AE6E8(a1, a2, &v15);
      _os_log_impl(&dword_1DA7A9000, v11, v12, "No settings for %{private}s; defaulting to enabled.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12739F0](v14, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    return 1;
  }
}

void sub_1DA83A950(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t dispatch thunk of UserNotificationsCloudReceiverConsumer.save(_:shouldRepost:forBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DA83AB0C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DA83AB0C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore11ToolServiceV0D5ErrorO(uint64_t a1)
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

uint64_t sub_1DA83AD40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA83AD88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DA83ADCC(uint64_t result, unsigned int a2)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore11ToolServiceV7RequestO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
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

uint64_t sub_1DA83AE48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA83AE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DA83AEE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DA83AF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DA83AF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DA83B004(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5148, &qword_1DA959C28);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5150, &qword_1DA959C30);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5158, &qword_1DA959C38);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5160, &qword_1DA959C40);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5168, &qword_1DA959C48);
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5170, &qword_1DA959C50);
  v22 = *(v21 - 8);
  v68 = v21;
  v69 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA83E598();
  v67 = v25;
  sub_1DA941834();
  v27 = *v2;
  v28 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v29 = *(v2 + 1);
  v30 = *(v2 + 2);
  v31 = *(v2 + 3);
  v32 = *(v2 + 4);
  v33 = v2[48];
  if (v33 <= 1)
  {
    v64 = *(v2 + 2);
    v65 = v29;
    v66 = v31;
    if (v33)
    {
      LOBYTE(v71) = 1;
      sub_1DA83E790();
      v54 = v67;
      v41 = v68;
      sub_1DA9415A4();
      LOBYTE(v71) = v27;
      HIBYTE(v71) = BYTE6(v28);
      *(&v71 + 5) = WORD2(v28);
      *(&v71 + 1) = v28;
      v72 = v65;
      v73 = v64;
      v74 = v66;
      sub_1DA83E934();
      sub_1DA941604();
      (*(v56 + 8))(v16, v13);
      v44 = *(v69 + 8);
      v45 = v54;
    }

    else
    {
      v60 = v32;
      v40 = *(v2 + 5);
      LOBYTE(v71) = 0;
      sub_1DA83E838();
      v42 = v67;
      v41 = v68;
      sub_1DA9415A4();
      LOBYTE(v71) = v27;
      HIBYTE(v71) = BYTE6(v28);
      *(&v71 + 5) = WORD2(v28);
      *(&v71 + 1) = v28;
      v72 = v65;
      v73 = v64;
      v74 = v66;
      v75 = 0;
      sub_1DA83E8E0();
      v43 = v70;
      sub_1DA941604();
      if (!v43)
      {
        LOBYTE(v71) = 1;
        sub_1DA9415D4();
        (*(v57 + 8))(v20, v17);
        return (*(v69 + 8))(v42, v41);
      }

      (*(v57 + 8))(v20, v17);
      v44 = *(v69 + 8);
      v45 = v42;
    }

    return v44(v45, v41);
  }

  if (v33 == 2)
  {
    v60 = *(v2 + 4);
    v46 = v30;
    v66 = v31;
    v47 = v29;
    LOBYTE(v71) = 2;
    sub_1DA83E6E8();
    v48 = v61;
    v49 = v67;
    v50 = v68;
    sub_1DA9415A4();
    LOBYTE(v71) = 0;
    v51 = v63;
    v52 = v70;
    sub_1DA9415E4();
    if (!v52)
    {
      v71 = v47;
      v72 = v46;
      v73 = v66;
      v74 = v60;
      v75 = 1;
      sub_1DA83E8E0();
      sub_1DA941604();
    }

    (*(v62 + 8))(v48, v51);
    return (*(v69 + 8))(v49, v50);
  }

  else
  {
    v34 = v67;
    v35 = v68;
    if (v33 == 3)
    {
      LOBYTE(v71) = 4;
      v36 = v29;
      sub_1DA83E5EC();
      v37 = v64;
      sub_1DA9415A4();
      LOBYTE(v71) = v27;
      HIBYTE(v71) = BYTE6(v28);
      *(&v71 + 5) = WORD2(v28);
      *(&v71 + 1) = v28;
      v72 = v36;
      sub_1DA83E88C();
      v38 = v66;
      sub_1DA941604();
      (*(v65 + 8))(v37, v38);
    }

    else
    {
      LOBYTE(v71) = 3;
      sub_1DA83E694();
      v53 = v58;
      sub_1DA9415A4();
      (*(v59 + 8))(v53, v60);
    }

    return (*(v69 + 8))(v34, v35);
  }
}

unint64_t sub_1DA83B7C0()
{
  v1 = *v0;
  v2 = 0x7A6972616D6D7573;
  v3 = 7628147;
  v4 = 0x7061436574617473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1DA83B874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA83D964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA83B89C(uint64_t a1)
{
  v2 = sub_1DA83E598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83B8D8(uint64_t a1)
{
  v2 = sub_1DA83E598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83B92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461446E6F736ALL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83B9B4(uint64_t a1)
{
  v2 = sub_1DA83E5EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83B9F0(uint64_t a1)
{
  v2 = sub_1DA83E5EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BA2C()
{
  if (*v0)
  {
    result = 0x6669746F4E726F66;
  }

  else
  {
    result = 0x6867696C68676968;
  }

  *v0;
  return result;
}

uint64_t sub_1DA83BA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6867696C68676968 && a2 == 0xEB00000000646574;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6669746F4E726F66 && a2 == 0xEF6E6F6974616369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83BB64(uint64_t a1)
{
  v2 = sub_1DA83E6E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BBA0(uint64_t a1)
{
  v2 = sub_1DA83E6E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BBE8(uint64_t a1)
{
  v2 = sub_1DA83E694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BC24(uint64_t a1)
{
  v2 = sub_1DA83E694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83BCF8(uint64_t a1)
{
  v2 = sub_1DA83E790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BD34(uint64_t a1)
{
  v2 = sub_1DA83E790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BD70()
{
  if (*v0)
  {
    result = 0x7972616D6D7573;
  }

  else
  {
    result = 0x6163696669746F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1DA83BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83BE94(uint64_t a1)
{
  v2 = sub_1DA83E838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BED0(uint64_t a1)
{
  v2 = sub_1DA83E838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DA83BF0C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DA83DB30(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1DA83BF74()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_1DA9292B4();
}

unint64_t sub_1DA83BFB8(uint64_t a1)
{
  result = sub_1DA83BFE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA83BFE0()
{
  result = qword_1ECBD5090;
  if (!qword_1ECBD5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5090);
  }

  return result;
}

uint64_t sub_1DA83C0D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  sub_1DA941834();
  v23 = 0;
  v19 = v21[3];
  sub_1DA9415D4();
  if (!v19)
  {
    v22 = 1;
    sub_1DA9415D4();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DA83C264(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a4;
  v28 = a2;
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5098, &qword_1DA959BD8);
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50A0, &qword_1DA959BE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50A8, &qword_1DA959BE8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA83D814();
  sub_1DA941834();
  if ((v27 & 0x80) != 0)
  {
    v20 = v27 & 0x7F;
    LOBYTE(v30) = 1;
    sub_1DA83D868();
    v21 = v24;
    sub_1DA9415A4();
    v30 = v28;
    v31 = v29;
    v32 = v20;
    sub_1DA83D8BC();
    v22 = v26;
    sub_1DA941604();
    (*(v25 + 8))(v21, v22);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1DA83D910();
    sub_1DA9415A4();
    sub_1DA9415D4();
    (*(v9 + 8))(v12, v8);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1DA83C59C(uint64_t a1)
{
  v2 = sub_1DA840E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83C5D8(uint64_t a1)
{
  v2 = sub_1DA840E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83C6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83C79C(uint64_t a1)
{
  v2 = sub_1DA840EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83C7D8(uint64_t a1)
{
  v2 = sub_1DA840EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83C858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_1DA83E988(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_1DA83C8F0()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1DA83C924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83CA00(uint64_t a1)
{
  v2 = sub_1DA83D814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83CA3C(uint64_t a1)
{
  v2 = sub_1DA83D814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83CA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83CB10(uint64_t a1)
{
  v2 = sub_1DA83D868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83CB4C(uint64_t a1)
{
  v2 = sub_1DA83D868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83CBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83CC28(uint64_t a1)
{
  v2 = sub_1DA83D910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83CC64(uint64_t a1)
{
  v2 = sub_1DA83D910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83CCA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DA83EB78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DA83CCF0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a4;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5208, &qword_1DA959CA0);
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5210, &qword_1DA959CA8);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5218, &qword_1DA959CB0);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5220, &qword_1DA959CB8);
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5228, &qword_1DA959CC0);
  v33 = *(v19 - 8);
  v20 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5230, &qword_1DA959CC8);
  v46 = *(v23 - 8);
  v24 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v33 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA83FAF8();
  sub_1DA941834();
  if (v44)
  {
    if (v44 == 1)
    {
      v51 = 4;
      sub_1DA83FB4C();
      v28 = v41;
      sub_1DA9415A4();
      v29 = v43;
      sub_1DA9415D4();
      (*(v42 + 8))(v28, v29);
      return (*(v46 + 8))(v26, v23);
    }

    else
    {
      if (v45 == 0)
      {
        v47 = 0;
        sub_1DA83FC9C();
        sub_1DA9415A4();
        (*(v33 + 8))(v22, v19);
      }

      else if (v45 ^ 1 | *(&v45 + 1))
      {
        v49 = 2;
        sub_1DA83FBF4();
        v32 = v36;
        sub_1DA9415A4();
        (*(v37 + 8))(v32, v38);
      }

      else
      {
        v48 = 1;
        sub_1DA83FC48();
        sub_1DA9415A4();
        (*(v34 + 8))(v18, v35);
      }

      return (*(v46 + 8))(v26, v23);
    }
  }

  else
  {
    v50 = 3;
    sub_1DA83FBA0();
    sub_1DA9415A4();
    v31 = v40;
    sub_1DA9415D4();
    (*(v39 + 8))(v11, v31);
    return (*(v46 + 8))(v26, v23);
  }
}

unint64_t sub_1DA83D2A8()
{
  v1 = *v0;
  v2 = 0x5264696C61766E69;
  v3 = 0xD000000000000012;
  v4 = 0x724565746F6D6572;
  if (v1 != 3)
  {
    v4 = 0x7272456C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65534350586C696ELL;
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

uint64_t sub_1DA83D36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA83F104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA83D394(uint64_t a1)
{
  v2 = sub_1DA83FAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D3D0(uint64_t a1)
{
  v2 = sub_1DA83FAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D40C(uint64_t a1)
{
  v2 = sub_1DA83FC9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D448(uint64_t a1)
{
  v2 = sub_1DA83FC9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001DA951B40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA83D534(uint64_t a1)
{
  v2 = sub_1DA83FB4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D570(uint64_t a1)
{
  v2 = sub_1DA83FB4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D5AC(uint64_t a1)
{
  v2 = sub_1DA83FBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D5E8(uint64_t a1)
{
  v2 = sub_1DA83FBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D624(uint64_t a1)
{
  v2 = sub_1DA83FC48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D660(uint64_t a1)
{
  v2 = sub_1DA83FC48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001DA951B60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA83D74C(uint64_t a1)
{
  v2 = sub_1DA83FBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D788(uint64_t a1)
{
  v2 = sub_1DA83FBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D7C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DA83F2D8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1DA83D814()
{
  result = qword_1ECBD50B0;
  if (!qword_1ECBD50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50B0);
  }

  return result;
}

unint64_t sub_1DA83D868()
{
  result = qword_1ECBD50B8;
  if (!qword_1ECBD50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50B8);
  }

  return result;
}

unint64_t sub_1DA83D8BC()
{
  result = qword_1ECBD50C0;
  if (!qword_1ECBD50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50C0);
  }

  return result;
}

unint64_t sub_1DA83D910()
{
  result = qword_1ECBD50C8;
  if (!qword_1ECBD50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50C8);
  }

  return result;
}

uint64_t sub_1DA83D964(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001DA951AE0 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6972616D6D7573 && a2 == 0xEE0070756F724765 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7628147 && a2 == 0xE300000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061436574617473 && a2 == 0xEC00000065727574 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DA951B00 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1DA941684();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DA83DB30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50D0, &qword_1DA959BF0);
  v4 = *(v3 - 8);
  v78 = v3;
  v79 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50D8, &qword_1DA959BF8);
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v70 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50E0, &qword_1DA959C00);
  v80 = *(v72 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v82 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50E8, &qword_1DA959C08);
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50F0, &qword_1DA959C10);
  v73 = *(v16 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50F8, &qword_1DA959C18);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1DA83E598();
  v27 = v86;
  sub_1DA941804();
  v86 = v27;
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v28 = v19;
  v29 = v83;
  v70 = v16;
  v30 = v82;
  v31 = v84;
  v71 = v21;
  v32 = sub_1DA941594();
  v33 = (2 * *(v32 + 16)) | 1;
  v91 = v32;
  v92 = v32 + 32;
  v93 = 0;
  v94 = v33;
  v34 = sub_1DA8675E0();
  v35 = v20;
  if (v34 == 5 || v93 != v94 >> 1)
  {
    v45 = sub_1DA9413B4();
    v46 = swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
    *v48 = &type metadata for ToolService.Request;
    sub_1DA941514();
    sub_1DA9413A4();
    (*(*(v45 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v45);
    v86 = v46;
    swift_willThrow();
    goto LABEL_10;
  }

  if (v34 <= 1u)
  {
    if (v34)
    {
      LOBYTE(v87) = 1;
      sub_1DA83E790();
      v61 = v86;
      sub_1DA941504();
      v86 = v61;
      if (!v61)
      {
        sub_1DA83E7E4();
        v62 = v75;
        v63 = v86;
        sub_1DA941584();
        v64 = v71;
        v86 = v63;
        if (!v63)
        {
          (*(v74 + 8))(v15, v62);
          (*(v64 + 8))(v24, v35);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 0;
          v38 = v87;
          v39 = v88;
          v44 = 1;
          v40 = v89;
          v41 = v90;
          v36 = v81;
          goto LABEL_31;
        }

        (*(v74 + 8))(v15, v62);
        (*(v64 + 8))(v24, v35);
        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v87) = 0;
      sub_1DA83E838();
      v51 = v86;
      sub_1DA941504();
      v86 = v51;
      if (!v51)
      {
        v95 = 0;
        sub_1DA83E73C();
        v52 = v70;
        v53 = v86;
        sub_1DA941584();
        v86 = v53;
        if (!v53)
        {
          v83 = v24;
          v84 = v20;
          v39 = v88;
          v82 = v87;
          v40 = v89;
          v41 = v90;
          v95 = 1;
          v67 = sub_1DA941554();
          v68 = (v71 + 8);
          v86 = 0;
          v42 = v67;
          v43 = v69;
          (*(v73 + 8))(v28, v52);
          (*v68)(v83, v84);
          swift_unknownObjectRelease();
          v44 = 0;
          v36 = v81;
          v38 = v82;
          goto LABEL_31;
        }

        (*(v73 + 8))(v28, v52);
      }
    }

    goto LABEL_10;
  }

  v36 = v81;
  if (v34 == 2)
  {
    LOBYTE(v87) = 2;
    sub_1DA83E6E8();
    v54 = v30;
    v55 = v86;
    sub_1DA941504();
    v86 = v55;
    if (!v55)
    {
      LOBYTE(v87) = 0;
      v56 = v72;
      v57 = sub_1DA941564();
      v86 = 0;
      v65 = v57;
      v95 = 1;
      sub_1DA83E73C();
      v66 = v86;
      sub_1DA941584();
      v86 = v66;
      if (!v66)
      {
        (*(v80 + 8))(v54, v56);
        (*(v71 + 8))(v24, v35);
        swift_unknownObjectRelease();
        v43 = 0;
        v39 = v87;
        v40 = v88;
        v38 = (v65 & 1);
        v44 = 2;
        v41 = v89;
        v42 = v90;
        goto LABEL_31;
      }

      (*(v80 + 8))(v54, v56);
    }

    goto LABEL_10;
  }

  if (v34 != 3)
  {
    LOBYTE(v87) = 4;
    sub_1DA83E5EC();
    v58 = v86;
    sub_1DA941504();
    v86 = v58;
    if (!v58)
    {
      sub_1DA83E640();
      v59 = v78;
      v60 = v86;
      sub_1DA941584();
      v86 = v60;
      if (!v60)
      {
        (*(v79 + 8))(v31, v59);
        (*(v71 + 8))(v24, v35);
        swift_unknownObjectRelease();
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v38 = v87;
        v39 = v88;
        v44 = 3;
        goto LABEL_31;
      }

      (*(v79 + 8))(v31, v59);
    }

    goto LABEL_10;
  }

  LOBYTE(v87) = 3;
  sub_1DA83E694();
  v37 = v86;
  sub_1DA941504();
  v86 = v37;
  if (v37)
  {
LABEL_10:
    (*(v71 + 8))(v24, v35);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  (*(v76 + 8))(v29, v77);
  (*(v71 + 8))(v24, v35);
  swift_unknownObjectRelease();
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 4;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v85);
  *v36 = v38;
  *(v36 + 8) = v39;
  *(v36 + 16) = v40;
  *(v36 + 24) = v41;
  *(v36 + 32) = v42;
  *(v36 + 40) = v43;
  *(v36 + 48) = v44;
  return result;
}

unint64_t sub_1DA83E598()
{
  result = qword_1ECBD5100;
  if (!qword_1ECBD5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5100);
  }

  return result;
}

unint64_t sub_1DA83E5EC()
{
  result = qword_1ECBD5110;
  if (!qword_1ECBD5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5110);
  }

  return result;
}

unint64_t sub_1DA83E640()
{
  result = qword_1EE114C90;
  if (!qword_1EE114C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114C90);
  }

  return result;
}

unint64_t sub_1DA83E694()
{
  result = qword_1ECBD5118;
  if (!qword_1ECBD5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5118);
  }

  return result;
}

unint64_t sub_1DA83E6E8()
{
  result = qword_1ECBD5120;
  if (!qword_1ECBD5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5120);
  }

  return result;
}

unint64_t sub_1DA83E73C()
{
  result = qword_1ECBD5128;
  if (!qword_1ECBD5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5128);
  }

  return result;
}

unint64_t sub_1DA83E790()
{
  result = qword_1ECBD5130;
  if (!qword_1ECBD5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5130);
  }

  return result;
}

unint64_t sub_1DA83E7E4()
{
  result = qword_1ECBD5138;
  if (!qword_1ECBD5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5138);
  }

  return result;
}

unint64_t sub_1DA83E838()
{
  result = qword_1ECBD5140;
  if (!qword_1ECBD5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5140);
  }

  return result;
}

unint64_t sub_1DA83E88C()
{
  result = qword_1EE114CA0;
  if (!qword_1EE114CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114CA0);
  }

  return result;
}

unint64_t sub_1DA83E8E0()
{
  result = qword_1ECBD5178;
  if (!qword_1ECBD5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5178);
  }

  return result;
}

unint64_t sub_1DA83E934()
{
  result = qword_1ECBD5180;
  if (!qword_1ECBD5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5180);
  }

  return result;
}

uint64_t sub_1DA83E988(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_1DA941804();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_1DA941554();
    v16 = 1;
    sub_1DA941554();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DA83EB78(uint64_t *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5188, &qword_1DA959C58);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5190, &qword_1DA959C60);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5198, &qword_1DA959C68);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v41 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DA83D814();
  v17 = v35;
  sub_1DA941804();
  if (!v17)
  {
    v35 = v10;
    v18 = sub_1DA941594();
    v19 = (2 * *(v18 + 16)) | 1;
    v37 = v18;
    v38 = v18 + 32;
    v39 = 0;
    v40 = v19;
    v20 = sub_1DA8675E4();
    v21 = v9;
    if (v20 == 2 || v39 != v40 >> 1)
    {
      v24 = v9;
      v25 = sub_1DA9413B4();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v27 = &type metadata for ToolService.ToolResult;
      v16 = v13;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v35 + 8))(v13, v24);
      swift_unknownObjectRelease();
    }

    else if (v20)
    {
      LOBYTE(v36) = 1;
      sub_1DA83D868();
      sub_1DA941504();
      v22 = v35;
      sub_1DA83F0B0();
      v23 = v32;
      sub_1DA941584();
      (*(v34 + 8))(v4, v23);
      (*(v22 + 8))(v13, v21);
      swift_unknownObjectRelease();
      v16 = v36;
    }

    else
    {
      LOBYTE(v36) = 0;
      sub_1DA83D910();
      sub_1DA941504();
      v30 = v35;
      v16 = sub_1DA941554();
      (*(v33 + 8))(v8, v5);
      (*(v30 + 8))(v13, v21);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return v16;
}

unint64_t sub_1DA83F0B0()
{
  result = qword_1ECBD51A0;
  if (!qword_1ECBD51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51A0);
  }

  return result;
}

uint64_t sub_1DA83F104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65534350586C696ELL && a2 == 0xED00006E6F697373 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DA951B20 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x724565746F6D6572 && a2 == 0xEB00000000726F72 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7272456C61636F6CLL && a2 == 0xEA0000000000726FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DA83F2D8(uint64_t *a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51A8, &qword_1DA959C70);
  v49 = *(v47 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v41 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51B0, &qword_1DA959C78);
  v48 = *(v46 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v52 = &v41 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51B8, &qword_1DA959C80);
  v42 = *(v45 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v51 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51C0, &qword_1DA959C88);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51C8, &qword_1DA959C90);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51D0, &qword_1DA959C98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v54 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1DA83FAF8();
  v24 = v53;
  sub_1DA941804();
  if (!v24)
  {
    v25 = v15;
    v53 = v12;
    v27 = v51;
    v26 = v52;
    v28 = sub_1DA941594();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1DA8675E0();
    if (v30 == 5 || v57 != v58 >> 1)
    {
      v33 = sub_1DA9413B4();
      swift_allocError();
      v34 = v16;
      v36 = v35;
      v23 = v20;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v36 = &type metadata for ToolService.ToolError;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v33 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v17 + 8))(v23, v34);
      swift_unknownObjectRelease();
    }

    else if (v30 <= 1u)
    {
      if (v30)
      {
        v59 = 1;
        sub_1DA83FC48();
        sub_1DA941504();
        (*(v43 + 8))(v11, v44);
        (*(v17 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v23 = 1;
      }

      else
      {
        v59 = 0;
        sub_1DA83FC9C();
        sub_1DA941504();
        (*(v41 + 8))(v25, v53);
        (*(v17 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v23 = 0;
      }
    }

    else if (v30 == 2)
    {
      v59 = 2;
      sub_1DA83FBF4();
      sub_1DA941504();
      (*(v42 + 8))(v27, v45);
      (*(v17 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v23 = 2;
    }

    else
    {
      if (v30 == 3)
      {
        v59 = 3;
        sub_1DA83FBA0();
        v31 = v26;
        sub_1DA941504();
        v32 = v46;
        v23 = sub_1DA941554();
        (*(v48 + 8))(v31, v32);
      }

      else
      {
        v59 = 4;
        sub_1DA83FB4C();
        v39 = v50;
        sub_1DA941504();
        v40 = v47;
        v23 = sub_1DA941554();
        (*(v49 + 8))(v39, v40);
      }

      (*(v17 + 8))(v20, v16);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  return v23;
}

unint64_t sub_1DA83FAF8()
{
  result = qword_1ECBD51D8;
  if (!qword_1ECBD51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51D8);
  }

  return result;
}

unint64_t sub_1DA83FB4C()
{
  result = qword_1ECBD51E0;
  if (!qword_1ECBD51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51E0);
  }

  return result;
}

unint64_t sub_1DA83FBA0()
{
  result = qword_1ECBD51E8;
  if (!qword_1ECBD51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51E8);
  }

  return result;
}

unint64_t sub_1DA83FBF4()
{
  result = qword_1ECBD51F0;
  if (!qword_1ECBD51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51F0);
  }

  return result;
}

unint64_t sub_1DA83FC48()
{
  result = qword_1ECBD51F8;
  if (!qword_1ECBD51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51F8);
  }

  return result;
}

unint64_t sub_1DA83FC9C()
{
  result = qword_1ECBD5200;
  if (!qword_1ECBD5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DismissalSyncPlatform(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DismissalSyncPlatform(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA83FF3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DA83FF84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DA84003C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA84007C()
{
  result = qword_1ECBD5238;
  if (!qword_1ECBD5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5238);
  }

  return result;
}

unint64_t sub_1DA8400D4()
{
  result = qword_1ECBD5240;
  if (!qword_1ECBD5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5240);
  }

  return result;
}

unint64_t sub_1DA84012C()
{
  result = qword_1ECBD5248;
  if (!qword_1ECBD5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5248);
  }

  return result;
}

unint64_t sub_1DA840184()
{
  result = qword_1ECBD5250;
  if (!qword_1ECBD5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5250);
  }

  return result;
}

unint64_t sub_1DA8401DC()
{
  result = qword_1ECBD5258;
  if (!qword_1ECBD5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5258);
  }

  return result;
}

unint64_t sub_1DA840234()
{
  result = qword_1ECBD5260;
  if (!qword_1ECBD5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5260);
  }

  return result;
}

unint64_t sub_1DA84028C()
{
  result = qword_1ECBD5268;
  if (!qword_1ECBD5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5268);
  }

  return result;
}

unint64_t sub_1DA8402E4()
{
  result = qword_1ECBD5270;
  if (!qword_1ECBD5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5270);
  }

  return result;
}

unint64_t sub_1DA84033C()
{
  result = qword_1ECBD5278;
  if (!qword_1ECBD5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5278);
  }

  return result;
}

unint64_t sub_1DA840394()
{
  result = qword_1ECBD5280;
  if (!qword_1ECBD5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5280);
  }

  return result;
}

unint64_t sub_1DA8403EC()
{
  result = qword_1ECBD5288;
  if (!qword_1ECBD5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5288);
  }

  return result;
}

unint64_t sub_1DA840444()
{
  result = qword_1ECBD5290;
  if (!qword_1ECBD5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5290);
  }

  return result;
}

unint64_t sub_1DA84049C()
{
  result = qword_1ECBD5298;
  if (!qword_1ECBD5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5298);
  }

  return result;
}

unint64_t sub_1DA8404F4()
{
  result = qword_1ECBD52A0;
  if (!qword_1ECBD52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52A0);
  }

  return result;
}

unint64_t sub_1DA84054C()
{
  result = qword_1ECBD52A8;
  if (!qword_1ECBD52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52A8);
  }

  return result;
}

unint64_t sub_1DA8405A4()
{
  result = qword_1ECBD52B0;
  if (!qword_1ECBD52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52B0);
  }

  return result;
}

unint64_t sub_1DA8405FC()
{
  result = qword_1ECBD52B8;
  if (!qword_1ECBD52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52B8);
  }

  return result;
}

unint64_t sub_1DA840654()
{
  result = qword_1ECBD52C0;
  if (!qword_1ECBD52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52C0);
  }

  return result;
}

unint64_t sub_1DA8406AC()
{
  result = qword_1ECBD52C8;
  if (!qword_1ECBD52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52C8);
  }

  return result;
}

unint64_t sub_1DA840704()
{
  result = qword_1ECBD52D0;
  if (!qword_1ECBD52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52D0);
  }

  return result;
}

unint64_t sub_1DA84075C()
{
  result = qword_1ECBD52D8;
  if (!qword_1ECBD52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52D8);
  }

  return result;
}

unint64_t sub_1DA8407B4()
{
  result = qword_1ECBD52E0;
  if (!qword_1ECBD52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52E0);
  }

  return result;
}

unint64_t sub_1DA84080C()
{
  result = qword_1ECBD52E8;
  if (!qword_1ECBD52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52E8);
  }

  return result;
}

unint64_t sub_1DA840864()
{
  result = qword_1ECBD52F0;
  if (!qword_1ECBD52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52F0);
  }

  return result;
}

unint64_t sub_1DA8408BC()
{
  result = qword_1ECBD52F8;
  if (!qword_1ECBD52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52F8);
  }

  return result;
}

unint64_t sub_1DA840914()
{
  result = qword_1ECBD5300;
  if (!qword_1ECBD5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5300);
  }

  return result;
}

unint64_t sub_1DA84096C()
{
  result = qword_1ECBD5308;
  if (!qword_1ECBD5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5308);
  }

  return result;
}

unint64_t sub_1DA8409C4()
{
  result = qword_1ECBD5310;
  if (!qword_1ECBD5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5310);
  }

  return result;
}

unint64_t sub_1DA840A1C()
{
  result = qword_1ECBD5318;
  if (!qword_1ECBD5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5318);
  }

  return result;
}

unint64_t sub_1DA840A74()
{
  result = qword_1ECBD5320;
  if (!qword_1ECBD5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5320);
  }

  return result;
}

unint64_t sub_1DA840ACC()
{
  result = qword_1ECBD5328;
  if (!qword_1ECBD5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5328);
  }

  return result;
}

unint64_t sub_1DA840B24()
{
  result = qword_1ECBD5330;
  if (!qword_1ECBD5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5330);
  }

  return result;
}

unint64_t sub_1DA840B7C()
{
  result = qword_1ECBD5338;
  if (!qword_1ECBD5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5338);
  }

  return result;
}

unint64_t sub_1DA840BD4()
{
  result = qword_1ECBD5340;
  if (!qword_1ECBD5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5340);
  }

  return result;
}

unint64_t sub_1DA840C2C()
{
  result = qword_1ECBD5348;
  if (!qword_1ECBD5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5348);
  }

  return result;
}

unint64_t sub_1DA840C84()
{
  result = qword_1ECBD5350;
  if (!qword_1ECBD5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5350);
  }

  return result;
}

unint64_t sub_1DA840CDC()
{
  result = qword_1ECBD5358;
  if (!qword_1ECBD5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5358);
  }

  return result;
}

unint64_t sub_1DA840D34()
{
  result = qword_1ECBD5360;
  if (!qword_1ECBD5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5360);
  }

  return result;
}

unint64_t sub_1DA840D8C()
{
  result = qword_1ECBD5368;
  if (!qword_1ECBD5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5368);
  }

  return result;
}

unint64_t sub_1DA840DE4()
{
  result = qword_1ECBD5370;
  if (!qword_1ECBD5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5370);
  }

  return result;
}

unint64_t sub_1DA840E3C()
{
  result = qword_1ECBD5378;
  if (!qword_1ECBD5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5378);
  }

  return result;
}

unint64_t sub_1DA840E90()
{
  result = qword_1ECBD5388;
  if (!qword_1ECBD5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5388);
  }

  return result;
}

unint64_t sub_1DA840EE4()
{
  result = qword_1ECBD5398;
  if (!qword_1ECBD5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5398);
  }

  return result;
}

unint64_t sub_1DA840F5C()
{
  result = qword_1ECBD53B0;
  if (!qword_1ECBD53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53B0);
  }

  return result;
}

unint64_t sub_1DA840FB4()
{
  result = qword_1ECBD53B8;
  if (!qword_1ECBD53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53B8);
  }

  return result;
}

unint64_t sub_1DA84100C()
{
  result = qword_1ECBD53C0;
  if (!qword_1ECBD53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53C0);
  }

  return result;
}

unint64_t sub_1DA841064()
{
  result = qword_1ECBD53C8;
  if (!qword_1ECBD53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53C8);
  }

  return result;
}

unint64_t sub_1DA8410BC()
{
  result = qword_1ECBD53D0;
  if (!qword_1ECBD53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53D0);
  }

  return result;
}

unint64_t sub_1DA841114()
{
  result = qword_1ECBD53D8;
  if (!qword_1ECBD53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53D8);
  }

  return result;
}

uint64_t sub_1DA8411E8()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBE3D78);
  __swift_project_value_buffer(v0, qword_1ECBE3D78);
  return sub_1DA940594();
}

uint64_t sub_1DA84125C(void (*a1)(void))
{
  a1();

  return sub_1DA941884();
}

uint64_t sub_1DA841298(void *a1, uint64_t a2, char a3)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1DA93F7D4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DA93F7C4();
  v9 = sub_1DA93F7B4();
  v11 = v10;
  if (v3)
  {

    if (qword_1ECBD4718 != -1)
    {
      swift_once();
    }

    v12 = sub_1DA9405A4();
    __swift_project_value_buffer(v12, qword_1ECBE3D78);
    sub_1DA7BABAC(a1, v49);
    v13 = v3;
    v14 = sub_1DA940584();
    v15 = sub_1DA940F14();

    if (os_log_type_enabled(v14, v15))
    {
      v46 = v9;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v51 = v18;
      *v16 = 136446722;
      if (a3)
      {
        v19 = 7104846;
        v20 = 0xE300000000000000;
      }

      else
      {
        sub_1DA841820();
        v19 = sub_1DA941144();
        v20 = v27;
      }

      v28 = sub_1DA7AE6E8(v19, v20, &v51);

      *(v16 + 4) = v28;
      *(v16 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      swift_getDynamicType();
      v29 = sub_1DA941884();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(v49);
      v32 = sub_1DA7AE6E8(v29, v31, &v51);

      *(v16 + 14) = v32;
      *(v16 + 22) = 2112;
      v33 = v3;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v34;
      *v17 = v34;
      _os_log_impl(&dword_1DA7A9000, v14, v15, "[v%{public}s] Encountered error encoding value of type %{public}s. %@", v16, 0x20u);
      sub_1DA828378(v17);
      MEMORY[0x1E12739F0](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v18, -1, -1);
      MEMORY[0x1E12739F0](v16, -1, -1);

      v9 = v46;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v49);
    }

    swift_willThrow();
    return v9;
  }

  if (qword_1ECBD4718 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1ECBE3D78);
  sub_1DA7BABAC(a1, v49);
  sub_1DA841874(v9, v11);
  sub_1DA841874(v9, v11);
  v22 = sub_1DA940584();
  v23 = sub_1DA940F34();
  if (!os_log_type_enabled(v22, v23))
  {
    sub_1DA828324(v9, v11);
    sub_1DA828324(v9, v11);

    __swift_destroy_boxed_opaque_existential_1(v49);
    return v9;
  }

  v24 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v51 = v47;
  *v24 = 136446722;
  if (a3)
  {
    v25 = 7104846;
    v26 = 0xE300000000000000;
  }

  else
  {
    sub_1DA841820();
    v25 = sub_1DA941144();
    v26 = v35;
  }

  v36 = sub_1DA7AE6E8(v25, v26, &v51);

  *(v24 + 4) = v36;
  *(v24 + 12) = 2082;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  swift_getDynamicType();
  v37 = sub_1DA941884();
  v39 = v38;
  __swift_destroy_boxed_opaque_existential_1(v49);
  v40 = sub_1DA7AE6E8(v37, v39, &v51);

  *(v24 + 14) = v40;
  *(v24 + 22) = 2050;
  v41 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v41 != 2)
    {
      sub_1DA828324(v9, v11);
      v42 = 0;
      goto LABEL_28;
    }

    v44 = *(v9 + 16);
    v43 = *(v9 + 24);
    sub_1DA828324(v9, v11);
    v42 = v43 - v44;
    if (!__OFSUB__(v43, v44))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v41)
  {
    sub_1DA828324(v9, v11);
    v42 = BYTE6(v11);
LABEL_28:
    *(v24 + 24) = v42;
    sub_1DA828324(v9, v11);
    _os_log_impl(&dword_1DA7A9000, v22, v23, "[v%{public}s] Encoded value of type %{public}s; size: %{public}ldB.", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v47, -1, -1);
    MEMORY[0x1E12739F0](v24, -1, -1);

    return v9;
  }

  result = sub_1DA828324(v9, v11);
  LODWORD(v42) = HIDWORD(v9) - v9;
  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v42 = v42;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}