uint64_t sub_1DEE45C50(uint64_t a1)
{
  if (qword_1ECDE2E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF5FE0);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "advertisement task is shutting down", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask;
  if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask))
  {
    v7 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask);

    sub_1DEF8DB88();

    v8 = *(a1 + v6);
  }

  *(a1 + v6) = 0;
}

uint64_t sub_1DEE45D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DEE17214(a3, v27 - v11, &qword_1ECDE3AB8, &qword_1DEF90AD0);
  v13 = sub_1DEF8DB78();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DEE171B4(v12, &qword_1ECDE3AB8, &qword_1DEF90AD0);
  }

  else
  {
    sub_1DEF8DB68();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DEF8DB48();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DEF8D998() + 32;
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

      sub_1DEE171B4(a3, &qword_1ECDE3AB8, &qword_1DEF90AD0);

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

  sub_1DEE171B4(a3, &qword_1ECDE3AB8, &qword_1DEF90AD0);
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

uint64_t sub_1DEE4608C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 72);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    sub_1DEE46C34(a1, v6, type metadata accessor for ZoneVersionAdvertisement);
    v15 = type metadata accessor for ZoneVersionAdvertisement(0);
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    v16 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement;
    swift_beginAccess();
    sub_1DEE29D60(v6, v1 + v16, &qword_1ECDE3A78, &qword_1DEF90820);
    swift_endAccess();
    return sub_1DEE4254C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE46294(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DEE4638C;

  return v7(a1);
}

uint64_t sub_1DEE4638C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DEE464A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD0, &qword_1DEF90988);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_1DEE4650C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DEE46550(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DEE46594(uint64_t a1)
{
  v4 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DEE466B4;

  return sub_1DEE446A4(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1DEE466B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DEE467A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DEE46D44;

  return sub_1DEE46294(a1, v5);
}

uint64_t sub_1DEE46860(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DEE466B4;

  return sub_1DEE46294(a1, v5);
}

void sub_1DEE46918()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1DEE44CF0(v2, v3);
}

void sub_1DEE46984()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 72);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1DEF8D7B8();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1ECDE2E40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_1DEF8D508();
  __swift_project_value_buffer(v8, qword_1ECDF5FE0);
  v9 = sub_1DEF8D4D8();
  v10 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DEE0F000, v9, v10, "IDS zone advertiser devicesDidChange", v11, 2u);
    MEMORY[0x1E12CCD70](v11, -1, -1);
  }
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

uint64_t sub_1DEE46C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE46C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PublicationMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEE46DEC()
{
  result = qword_1ECDE3AE0;
  if (!qword_1ECDE3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3AE0);
  }

  return result;
}

uint64_t sub_1DEE46E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE46ECC(char a1)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D6D8();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1DEE471A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

void sub_1DEE471A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 1)
  {
    sub_1DEE471E0();
  }

  else
  {
    sub_1DEE473FC();
  }
}

void sub_1DEE471E0()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  v8 = sub_1DEF8D7B8();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled))
  {
    return;
  }

  v9 = v0;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF6028);
  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Enabling zone advertiser", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice;
  swift_beginAccess();
  v16 = *(v9 + v15);
  *(v9 + v15) = MEMORY[0x1E69E7CC8];

  *(v9 + v8) = 1;
  sub_1DEE481C0();
}

uint64_t sub_1DEE473FC()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  v8 = sub_1DEF8D7B8();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  result = v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) != 1)
  {
    return result;
  }

  v9 = v0;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF6028);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Disabling zone advertiser", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  *(v9 + v8) = 0;
  return sub_1DEE490B4();
}

uint64_t (*sub_1DEE475E4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE47674;
}

uint64_t sub_1DEE4769C()
{
  v0 = sub_1DEF8D688();
  __swift_allocate_value_buffer(v0, qword_1ECDE3000);
  *__swift_project_value_buffer(v0, qword_1ECDE3000) = 500;
  v1 = *MEMORY[0x1E69E7F38];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1DEE4772C()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__zoneVersionPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEE1B548(&qword_1ECDE2D28, &qword_1ECDE3A58, &qword_1DEF937F0);
    v3 = v0;
    v2 = sub_1DEF8D5B8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DEE47808(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher);
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher) = a1;
}

uint64_t (*sub_1DEE47820(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEE4772C();
  return sub_1DEE47868;
}

uint64_t sub_1DEE47868(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher);
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher) = v2;
}

uint64_t StatusKitZoneAdvertiser.__allocating_init(key:firstLockStateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  StatusKitZoneAdvertiser.init(key:firstLockStateProvider:)(a1, a2, a3);
  return v9;
}

uint64_t StatusKitZoneAdvertiser.init(key:firstLockStateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A68, &unk_1DEF9B100);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v43 - v11;
  v12 = sub_1DEF8D4C8();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - v17;
  v18 = sub_1DEF8DD08();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DEF8DCD8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = sub_1DEF8D6D8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher) = 0;
  v26 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__zoneVersionPublisher;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *(v3 + v26) = sub_1DEF8D598();
  v44 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue;
  sub_1DEE3C630();
  v43 = "IDSZoneAdvertisement";
  sub_1DEF8D6C8();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v45 + 104))(v21, *MEMORY[0x1E69E8098], v46);
  *(v3 + v44) = sub_1DEF8DD38();
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client) = 0;
  v30 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
  v31 = type metadata accessor for ZoneVersionAdvertisement(0);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice) = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_subscriptions) = MEMORY[0x1E69E7CD0];
  (*(v49 + 104))(v47, *MEMORY[0x1E69AD348], v50);
  sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement);
  sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement);
  v32 = v48;
  sub_1DEF8D4A8();
  (*(v51 + 32))(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key, v32, v52);
  v33 = v55;
  sub_1DEE29594(v55, v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider);
  v34 = v33[3];
  v35 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v60 = (*(v35 + 8))(v34, v35);
  v36 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  v61 = v36;
  v37 = sub_1DEF8DCF8();
  v38 = v56;
  (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
  v39 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B548(&qword_1ECDE2D68, &qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B920(&qword_1ECDE2C08, sub_1DEE3C630);
  v40 = v57;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v38, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  sub_1DEE1B548(&qword_1ECDE2DD8, &qword_1ECDE3A68, &unk_1DEF9B100);
  v41 = v58;
  sub_1DEF8D5E8();

  (*(v59 + 8))(v40, v41);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v4;
}

uint64_t sub_1DEE48150(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_1DEE481C0();
    }
  }

  return result;
}

void sub_1DEE481C0()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) != 1)
  {
    return;
  }

  v9 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider + 24);
  v10 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider), v9);
  if (((*(v10 + 16))(v9, v10) & 1) == 0)
  {
    return;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF6028);
  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Activating zone advertiser", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  v15 = sub_1DEF8D448();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DEF8D438();
  v19 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client) = v18;

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) == 1)
  {
    sub_1DEE49520();
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) == 1)
  {
    sub_1DEE498AC();
  }
}

uint64_t sub_1DEE48444()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE484B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_5;
  }

  v14 = sub_1DEE13224(a2, a3);
  if ((v15 & 1) == 0)
  {

LABEL_5:
    v21 = type metadata accessor for ZoneVersionAdvertisement(0);
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    v20 = 0;
    goto LABEL_6;
  }

  v16 = v14;
  v17 = *(v13 + 56);
  v18 = type metadata accessor for ZoneVersionAdvertisement(0);
  v19 = *(v18 - 8);
  sub_1DEE4DB84(v17 + *(v19 + 72) * v16, v11, type metadata accessor for ZoneVersionAdvertisement);

  v20 = 1;
  (*(v19 + 56))(v11, 0, 1, v18);
LABEL_6:
  result = sub_1DEE171B4(v11, &qword_1ECDE3A78, &qword_1DEF90820);
  *a4 = v20;
  return result;
}

uint64_t StatusKitZoneAdvertiser.deinit()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider));
  v3 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher);

  v4 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__zoneVersionPublisher);

  v5 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);
  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask);

  v7 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask);

  v8 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice);

  v9 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_subscriptions);

  return v0;
}

uint64_t StatusKitZoneAdvertiser.__deallocating_deinit()
{
  StatusKitZoneAdvertiser.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE48860()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEF8DD18();
  return v3;
}

uint64_t (*sub_1DEE488EC(uint64_t a1))(uint64_t *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE47674;
}

uint64_t StatusKitZoneAdvertiser.advertise(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DEF8D698();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DEF8D6D8();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ZoneVersionAdvertisement(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v19 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEE4DB84(a1, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ZoneVersionAdvertisement);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_1DEE442B0(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_1DEE4CAB8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_10_0;
  v17 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v11, v7, v17);
  _Block_release(v17);
  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v11, v20);
}

Swift::Void __swiftcall StatusKitZoneAdvertiser.subscribe()()
{
  v1 = sub_1DEF8D698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D6D8();
  v6 = *(v12 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  aBlock[4] = sub_1DEE4CB48;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_13_0;
  v10 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v12);
}

uint64_t sub_1DEE49040()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE490B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for ZoneVersionAdvertisement(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  result = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled))
  {
    return result;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = sub_1DEF8D508();
  __swift_project_value_buffer(v22, qword_1ECDF6028);
  v23 = sub_1DEF8D4D8();
  v24 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DEE0F000, v23, v24, "Deactivating zone advertiser", v25, 2u);
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  v26 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  sub_1DEE4DC4C(v1 + v26, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DEE171B4(v5, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEE442B0(v5, v13);
    v27 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
    if (v27)
    {
      sub_1DEE4DB84(v13, v11, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);

      *&v11[*(v6 + 20)] = sub_1DEEA29E4(MEMORY[0x1E69E7CC0]);
      sub_1DEE49C5C(v11, v27, 1);

      sub_1DEE4DBEC(v11, type metadata accessor for ZoneVersionAdvertisement);
      sub_1DEE4DBEC(v13, type metadata accessor for ZoneVersionAdvertisement);
      *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) = 1;
    }

    else
    {
      sub_1DEE4DBEC(v13, type metadata accessor for ZoneVersionAdvertisement);
    }
  }

  v28 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask))
  {
    v29 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask);

    sub_1DEF8DB88();

    v30 = *(v1 + v28);
  }

  *(v1 + v28) = 0;

  v31 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client) = 0;
}

void sub_1DEE49520()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for ZoneVersionAdvertisement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) == 1)
  {
    v17 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
    if (v17)
    {
      v18 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending;
      if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) == 1)
      {
        v19 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
        swift_beginAccess();
        sub_1DEE4DC4C(v0 + v19, v4);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_1DEE171B4(v4, &qword_1ECDE3A78, &qword_1DEF90820);
        }

        else
        {
          sub_1DEE442B0(v4, v9);
          *(v0 + v18) = 0;

          sub_1DEE49C5C(v9, v17, 0);

          sub_1DEE4DBEC(v9, type metadata accessor for ZoneVersionAdvertisement);
        }
      }
    }

    return;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = sub_1DEF8D508();
  __swift_project_value_buffer(v20, qword_1ECDF6028);
  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Zone advertiser will advertise when enabled", v23, 2u);
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }
}

uint64_t sub_1DEE498AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v10 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
  if (!v10)
  {
    return result;
  }

  v14 = qword_1ECDE2E58;
  v15 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);

  if (v14 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = sub_1DEF8D508();
  __swift_project_value_buffer(v16, qword_1ECDF6028);

  v17 = sub_1DEF8D4D8();
  v18 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
    sub_1DEE1B548(&qword_1ECDE35E8, &qword_1ECDE3AE8, &unk_1DEF90A30);
    v21 = sub_1DEF8E2E8();
    v23 = sub_1DEE12A5C(v21, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DEE0F000, v17, v18, "Zone advertiser subscribing to %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12CCD70](v20, -1, -1);
    MEMORY[0x1E12CCD70](v19, -1, -1);
  }

  v24 = sub_1DEF8DB78();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v10;
  v25[5] = v1;

  v26 = sub_1DEE45D8C(0, 0, v5, &unk_1DEF90AE0, v25);
  v27 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask);
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask) = v26;
}

uint64_t sub_1DEE49C5C(uint64_t a1, uint64_t a2, int a3)
{
  v59 = a3;
  v60 = a2;
  v55 = a1;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = v6;
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v50 - v9;
  v51 = sub_1DEF8D468();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1DEF8D488();
  v52 = *(v56 - 8);
  v14 = *(v52 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v3;
  v24 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v25 = v24;
  LOBYTE(v24) = sub_1DEF8D7B8();
  result = (*(v19 + 8))(v22, v18);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B10, &qword_1DEF90B10);
    v27 = sub_1DEF8D458();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1DEF907F0;
    (*(v28 + 104))(v31 + v30, *MEMORY[0x1E69AD328], v27);
    (*(v10 + 104))(v13, *MEMORY[0x1E69AD330], v51);
    sub_1DEF8D478();
    v51 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask;
    v32 = v23;
    v33 = v17;
    if (*(v23 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask))
    {
      v34 = *(v23 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask);

      sub_1DEF8DB88();
    }

    v35 = sub_1DEF8DB78();
    (*(*(v35 - 8) + 56))(v61, 1, 1, v35);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = v54;
    sub_1DEE4DB84(v55, v54, type metadata accessor for ZoneVersionAdvertisement);
    v39 = v52;
    v38 = v53;
    v40 = *(v52 + 16);
    v41 = v33;
    v55 = v33;
    v42 = v56;
    v40(v53, v41, v56);
    v43 = (*(v57 + 80) + 40) & ~*(v57 + 80);
    v44 = (v58 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (*(v39 + 80) + v44 + 8) & ~*(v39 + 80);
    v46 = swift_allocObject();
    v58 = v32;
    v47 = v46;
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v36;
    sub_1DEE442B0(v37, v46 + v43);
    *(v47 + v44) = v60;
    (*(v39 + 32))(v47 + v45, v38, v42);
    *(v47 + v45 + v14) = v59 & 1;

    v48 = sub_1DEE45D8C(0, 0, v61, &unk_1DEF90B20, v47);
    (*(v39 + 8))(v55, v42);
    v49 = *(v58 + v51);
    *(v58 + v51) = v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE4A250(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) = 1;
    if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) == 1)
    {
      sub_1DEE498AC();
    }

    else
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v1 = sub_1DEF8D508();
      __swift_project_value_buffer(v1, qword_1ECDF6028);

      oslog = sub_1DEF8D4D8();
      v2 = sub_1DEF8DCB8();

      if (os_log_type_enabled(oslog, v2))
      {
        v3 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v9 = v4;
        *v3 = 136446210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
        sub_1DEE1B548(&qword_1ECDE35E8, &qword_1ECDE3AE8, &unk_1DEF90A30);
        v5 = sub_1DEF8E2E8();
        v7 = sub_1DEE12A5C(v5, v6, &v9);

        *(v3 + 4) = v7;
        _os_log_impl(&dword_1DEE0F000, oslog, v2, "Zone advertiser will subscribe when enabled to %{public}s", v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v4);
        MEMORY[0x1E12CCD70](v4, -1, -1);
        MEMORY[0x1E12CCD70](v3, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1DEE4A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v7 = sub_1DEF8D698();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = sub_1DEF8D6D8();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = sub_1DEF8D688();
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v16 = sub_1DEF8D758();
  v5[22] = v16;
  v17 = *(v16 - 8);
  v5[23] = v17;
  v18 = *(v17 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  v5[26] = v19;
  v20 = *(v19 - 8);
  v5[27] = v20;
  v5[28] = *(v20 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF8, &qword_1DEF90AF0);
  v5[32] = v21;
  v22 = *(v21 - 8);
  v5[33] = v22;
  v23 = *(v22 + 64) + 15;
  v5[34] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B00, &qword_1DEF90AF8);
  v5[35] = v24;
  v25 = *(v24 - 8);
  v5[36] = v25;
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  v5[37] = v27;
  v28 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key;
  v29 = *(MEMORY[0x1E69AD320] + 4);
  v30 = swift_task_alloc();
  v5[38] = v30;
  v31 = type metadata accessor for ZoneVersionAdvertisement(0);
  v32 = sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement);
  v33 = sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement);
  *v30 = v5;
  v30[1] = sub_1DEE4A888;

  return MEMORY[0x1EEE19080](v27, a5 + v28, v31, v32, v33);
}

uint64_t sub_1DEE4A888()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1DEE4B76C;
  }

  else
  {
    v3 = sub_1DEE4A99C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DEE4A99C()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  sub_1DEF8D498();
  *(v0 + 320) = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue;
  *(v0 + 352) = *MEMORY[0x1E69E7F48];
  v4 = sub_1DEE1B548(&qword_1ECDE35F0, &qword_1ECDE3AF8, &qword_1DEF90AF0);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 328) = v6;
  *v6 = v0;
  v6[1] = sub_1DEE4AA9C;
  v7 = *(v0 + 272);
  v8 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v0 + 72, v8, v4);
}

uint64_t sub_1DEE4AA9C()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1DEE4B464;
  }

  else
  {
    v3 = sub_1DEE4ABB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DEE4ABD4()
{
  v88 = v0;
  v1 = *(v0 + 344);
  if (v1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v2 = sub_1DEF8D508();
    __swift_project_value_buffer(v2, qword_1ECDF6028);
    v3 = sub_1DEF8D4D8();
    v4 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DEE0F000, v3, v4, "Zone advertiser received new zone versions", v5, 2u);
      MEMORY[0x1E12CCD70](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v81 = *(*(v0 + 96) + *(v0 + 320));
      v7 = *(v0 + 216);
      v8 = *(v7 + 80);
      v9 = v1 + ((v8 + 32) & ~v8);
      v66 = (v8 + 24) & ~v8;
      v65 = v66 + *(v0 + 224);
      v79 = *(v7 + 72);
      v80 = *(v7 + 16);
      v10 = *(v0 + 336);
      do
      {
        v85 = v9;
        v86 = v6;
        v12 = *(v0 + 240);
        v13 = *(v0 + 248);
        v14 = *(v0 + 208);
        v15 = *(v0 + 216) + 16;
        v80(v13);
        (v80)(v12, v13, v14);
        v16 = sub_1DEF8D4D8();
        v17 = sub_1DEF8DCB8();
        v18 = os_log_type_enabled(v16, v17);
        v19 = *(v0 + 240);
        v20 = *(v0 + 208);
        v21 = *(v0 + 216);
        if (v18)
        {
          v83 = v10;
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v87 = v23;
          *v22 = 136446210;
          sub_1DEE1B548(&qword_1ECDE3B08, &qword_1ECDE3AF0, &qword_1DEF90AE8);
          v24 = sub_1DEF8E2E8();
          v26 = v25;
          v82 = *(v21 + 8);
          v82(v19, v20);
          v27 = sub_1DEE12A5C(v24, v26, &v87);

          *(v22 + 4) = v27;
          _os_log_impl(&dword_1DEE0F000, v16, v17, "Zone advertiser handling observation: %{public}s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v23);
          MEMORY[0x1E12CCD70](v23, -1, -1);
          v10 = v83;
          MEMORY[0x1E12CCD70](v22, -1, -1);
        }

        else
        {

          v82 = *(v21 + 8);
          v82(v19, v20);
        }

        v28 = *(v0 + 248);
        v29 = *(v0 + 96);
        v30 = swift_task_alloc();
        *(v30 + 16) = v29;
        *(v30 + 24) = v28;
        sub_1DEF8DD18();

        if (*(v0 + 356) == 1)
        {
          v31 = *(v0 + 352);
          v68 = *(v0 + 232);
          v69 = *(v0 + 248);
          v32 = *(v0 + 208);
          v33 = *(v0 + 216);
          v34 = *(v0 + 192);
          v71 = *(v0 + 200);
          v74 = *(v0 + 184);
          v67 = *(v0 + 176);
          v84 = v10;
          v36 = *(v0 + 160);
          v35 = *(v0 + 168);
          v37 = *(v0 + 152);
          v70 = *(v0 + 144);
          v77 = *(v0 + 136);
          v78 = *(v0 + 128);
          v76 = *(v0 + 112);
          v38 = *(v0 + 96);
          v72 = *(v0 + 120);
          v73 = *(v0 + 104);
          sub_1DEF8D738();
          *v35 = 5;
          (*(v36 + 104))(v35, v31, v37);
          MEMORY[0x1E12CAF40](v34, v35);
          (*(v36 + 8))(v35, v37);
          v75 = *(v74 + 8);
          v75(v34, v67);
          (v80)(v68, v69, v32);
          v39 = swift_allocObject();
          *(v39 + 16) = v38;
          (*(v33 + 32))(v39 + v66, v68, v32);
          *(v0 + 48) = sub_1DEE4DB14;
          *(v0 + 56) = v39;
          *(v0 + 16) = MEMORY[0x1E69E9820];
          *(v0 + 24) = 1107296256;
          *(v0 + 32) = sub_1DEE3F0C0;
          *(v0 + 40) = &block_descriptor_59;
          v40 = _Block_copy((v0 + 16));

          sub_1DEF8D6B8();
          *(v0 + 88) = MEMORY[0x1E69E7CC0];
          sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEF8DE08();
          MEMORY[0x1E12CB490](v71, v70, v72, v40);
          _Block_release(v40);
          (*(v76 + 8))(v72, v73);
          (*(v77 + 8))(v70, v78);
          v75(v71, v67);
          v10 = v84;
          v41 = *(v0 + 56);
        }

        v11 = *(v0 + 216) + 8;
        v82(*(v0 + 248), *(v0 + 208));
        v9 = v85 + v79;
        v6 = v86 - 1;
      }

      while (v86 != 1);
    }

    else
    {

      v57 = sub_1DEF8D4D8();
      v58 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1DEE0F000, v57, v58, "Zone advertiser payload is empty; ignoring", v59, 2u);
        MEMORY[0x1E12CCD70](v59, -1, -1);
      }
    }

    v60 = sub_1DEE1B548(&qword_1ECDE35F0, &qword_1ECDE3AF8, &qword_1DEF90AF0);
    v61 = *(MEMORY[0x1E69E85A8] + 4);
    v62 = swift_task_alloc();
    *(v0 + 328) = v62;
    *v62 = v0;
    v62[1] = sub_1DEE4AA9C;
    v63 = *(v0 + 272);
    v64 = *(v0 + 256);

    return MEMORY[0x1EEE6D8C8](v0 + 72, v64, v60);
  }

  else
  {
    v43 = *(v0 + 288);
    v42 = *(v0 + 296);
    v44 = *(v0 + 280);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    (*(v43 + 8))(v42, v44);
    v45 = *(v0 + 296);
    v46 = *(v0 + 272);
    v48 = *(v0 + 240);
    v47 = *(v0 + 248);
    v49 = *(v0 + 232);
    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 168);
    v53 = *(v0 + 144);
    v54 = *(v0 + 120);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_1DEE4B464()
{
  *(v0 + 80) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1DEE4B4F8, 0, 0);
}

uint64_t sub_1DEE4B4F8()
{
  v28 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[33] + 8))(v0[34], v0[32]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v5 = sub_1DEF8D508();
  __swift_project_value_buffer(v5, qword_1ECDF6028);
  v6 = v4;
  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DC98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136446210;
    v0[8] = v4;
    v11 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v12 = sub_1DEF8D988();
    v14 = sub_1DEE12A5C(v12, v13, &v27);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Zone advertiser failed to subscribe: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[37];
  v16 = v0[34];
  v18 = v0[30];
  v17 = v0[31];
  v19 = v0[29];
  v21 = v0[24];
  v20 = v0[25];
  v22 = v0[21];
  v23 = v0[18];
  v24 = v0[15];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1DEE4B76C()
{
  v25 = v0;
  v1 = v0[39];
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF6028);
  v3 = v1;
  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DC98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    v0[8] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v9 = sub_1DEF8D988();
    v11 = sub_1DEE12A5C(v9, v10, &v24);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "Zone advertiser failed to subscribe: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12CCD70](v7, -1, -1);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[37];
  v13 = v0[34];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[15];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DEE4B9AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v56 - v5;
  v6 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v56 - v11);
  v63 = type metadata accessor for ZoneVersionAdvertisement(0);
  v65 = *(v63 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v56 - v25;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  sub_1DEF8D408();
  sub_1DEE4DB84(v23, v12, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
  sub_1DEE4DBEC(v23, type metadata accessor for ZoneVersionAdvertisement);
  v27 = *v12;
  v26 = v12[1];

  sub_1DEE4DBEC(v12, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
  v28 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice;
  swift_beginAccess();
  v61 = a1;
  v59 = v28;
  v29 = *(a1 + v28);
  if (*(v29 + 16) && (, v30 = sub_1DEE13224(v27, v26), v32 = v31, , (v32 & 1) != 0))
  {
    sub_1DEE4DB84(*(v29 + 56) + *(v65 + 72) * v30, v20, type metadata accessor for ZoneVersionAdvertisement);

    v33 = v57;
    sub_1DEE442B0(v20, v57);
    sub_1DEF8D408();
    if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v33, v17) && (sub_1DEEDB5A8(*(v57 + *(v63 + 20)), *&v17[*(v63 + 20)]) & 1) != 0)
    {
      sub_1DEE4DBEC(v17, type metadata accessor for ZoneVersionAdvertisement);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v34 = sub_1DEF8D508();
      __swift_project_value_buffer(v34, qword_1ECDF6028);
      v35 = sub_1DEF8D4D8();
      v36 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DEE0F000, v35, v36, "Zone advertiser payload has not changed; ignoring", v37, 2u);
        MEMORY[0x1E12CCD70](v37, -1, -1);
      }

      result = sub_1DEE4DBEC(v57, type metadata accessor for ZoneVersionAdvertisement);
      v39 = 0;
    }

    else
    {
      sub_1DEE4DBEC(v17, type metadata accessor for ZoneVersionAdvertisement);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v48 = sub_1DEF8D508();
      __swift_project_value_buffer(v48, qword_1ECDF6028);
      v49 = sub_1DEF8D4D8();
      v50 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1DEE0F000, v49, v50, "Zone advertiser payload has changed; publishing", v51, 2u);
        MEMORY[0x1E12CCD70](v51, -1, -1);
      }

      v52 = v58;
      sub_1DEF8D408();
      sub_1DEE4DB84(v52, v9, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
      sub_1DEE4DBEC(v52, type metadata accessor for ZoneVersionAdvertisement);
      v53 = *v9;
      v54 = v9[1];

      sub_1DEE4DBEC(v9, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
      v55 = v60;
      sub_1DEF8D408();
      v39 = 1;
      (*(v65 + 56))(v55, 0, 1, v63);
      swift_beginAccess();
      sub_1DEF32668(v55, v53, v54);
      swift_endAccess();
      result = sub_1DEE4DBEC(v57, type metadata accessor for ZoneVersionAdvertisement);
    }
  }

  else
  {

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v40 = sub_1DEF8D508();
    __swift_project_value_buffer(v40, qword_1ECDF6028);
    v41 = sub_1DEF8D4D8();
    v42 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DEE0F000, v41, v42, "Zone advertiser payload is new; publishing", v43, 2u);
      MEMORY[0x1E12CCD70](v43, -1, -1);
    }

    v44 = v58;
    sub_1DEF8D408();
    sub_1DEE4DB84(v44, v9, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    sub_1DEE4DBEC(v44, type metadata accessor for ZoneVersionAdvertisement);
    v45 = *v9;
    v46 = v9[1];

    sub_1DEE4DBEC(v9, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    v47 = v60;
    sub_1DEF8D408();
    v39 = 1;
    (*(v65 + 56))(v47, 0, 1, v63);
    swift_beginAccess();
    sub_1DEF32668(v47, v45, v46);
    result = swift_endAccess();
  }

  *v62 = v39;
  return result;
}

uint64_t sub_1DEE4C178(uint64_t a1)
{
  v2 = type metadata accessor for ZoneVersionAdvertisement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__zoneVersionPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  sub_1DEF8D408();
  sub_1DEF8D588();
  return sub_1DEE4DBEC(v5, type metadata accessor for ZoneVersionAdvertisement);
}

uint64_t sub_1DEE4C23C(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_1DEF8D698();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DEF8D6D8();
  v59 = *(v61 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D758();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v52 - v13;
  v14 = type metadata accessor for ZoneVersionAdvertisement(0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD8, &qword_1DEF90998);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v52 - v31;
  v33 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  v65 = a2;
  sub_1DEE4DB84(a2, v32, type metadata accessor for ZoneVersionAdvertisement);
  v64 = v15[7];
  v64(v32, 0, 1, v14);
  v34 = *(v19 + 56);
  v66 = a1;
  sub_1DEE4DC4C(a1 + v33, v22);
  sub_1DEE4DC4C(v32, &v22[v34]);
  v35 = v15[6];
  if (v35(v22, 1, v14) == 1)
  {
    sub_1DEE171B4(v32, &qword_1ECDE3A78, &qword_1DEF90820);
    if (v35(&v22[v34], 1, v14) == 1)
    {
      return sub_1DEE171B4(v22, &qword_1ECDE3A78, &qword_1DEF90820);
    }

    goto LABEL_6;
  }

  sub_1DEE4DC4C(v22, v29);
  if (v35(&v22[v34], 1, v14) == 1)
  {
    sub_1DEE171B4(v32, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE4DBEC(v29, type metadata accessor for ZoneVersionAdvertisement);
LABEL_6:
    v37 = &qword_1ECDE3AD8;
    v38 = &qword_1DEF90998;
    v39 = v22;
    goto LABEL_7;
  }

  v50 = v53;
  sub_1DEE442B0(&v22[v34], v53);
  if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v29, v50))
  {
    v51 = sub_1DEEDB5A8(*&v29[*(v14 + 20)], *(v50 + *(v14 + 20)));
    sub_1DEE171B4(v32, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE4DBEC(v50, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE4DBEC(v29, type metadata accessor for ZoneVersionAdvertisement);
    result = sub_1DEE171B4(v22, &qword_1ECDE3A78, &qword_1DEF90820);
    v40 = v66;
    if (v51)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_1DEE171B4(v32, &qword_1ECDE3A78, &qword_1DEF90820);
  sub_1DEE4DBEC(v50, type metadata accessor for ZoneVersionAdvertisement);
  sub_1DEE4DBEC(v29, type metadata accessor for ZoneVersionAdvertisement);
  v39 = v22;
  v37 = &qword_1ECDE3A78;
  v38 = &qword_1DEF90820;
LABEL_7:
  sub_1DEE171B4(v39, v37, v38);
  v40 = v66;
LABEL_8:
  sub_1DEE4DB84(v65, v26, type metadata accessor for ZoneVersionAdvertisement);
  v64(v26, 0, 1, v14);
  swift_beginAccess();
  sub_1DEE4DCBC(v26, v40 + v33);
  result = swift_endAccess();
  if ((*(v40 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) & 1) == 0)
  {
    *(v40 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) = 1;
    v66 = *(v40 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
    v41 = v54;
    sub_1DEF8D738();
    if (qword_1ECDE2FF8 != -1)
    {
      swift_once();
    }

    v42 = sub_1DEF8D688();
    v43 = __swift_project_value_buffer(v42, qword_1ECDE3000);
    v44 = v55;
    MEMORY[0x1E12CAF40](v41, v43);
    v45 = v57;
    v65 = *(v56 + 8);
    v65(v41, v57);
    aBlock[4] = sub_1DEE4DD2C;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_62;
    v46 = _Block_copy(aBlock);

    v47 = v58;
    sub_1DEF8D6B8();
    v67 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v48 = v60;
    v49 = v63;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB490](v44, v47, v48, v46);
    _Block_release(v46);
    (*(v62 + 8))(v48, v49);
    (*(v59 + 8))(v47, v61);
    v65(v44, v45);
  }

  return result;
}

uint64_t sub_1DEE4CAB8()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DEE4C23C(v3, (v0 + v2));
}

uint64_t type metadata accessor for StatusKitZoneAdvertiser()
{
  result = qword_1ECDE2F90;
  if (!qword_1ECDE2F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEE4CBA4()
{
  sub_1DEE4CDEC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DEE44624();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DEE4CDEC()
{
  if (!qword_1ECDE35E0)
  {
    type metadata accessor for ZoneVersionAdvertisement(255);
    sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement);
    v0 = sub_1DEF8D4B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE35E0);
    }
  }
}

uint64_t sub_1DEE4CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 208) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B18, &qword_1DEF90B28) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B20, &unk_1DEF90B30);
  *(v8 + 136) = v10;
  v11 = *(v10 - 8);
  *(v8 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = type metadata accessor for ZoneVersionAdvertisement(0);
  *(v8 + 160) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DEE4CFF4, 0, 0);
}

uint64_t sub_1DEE4CFF4()
{
  v36 = v0;
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v4 = v0[21];
    v5 = v0[13];
    v6 = sub_1DEF8D508();
    v0[23] = __swift_project_value_buffer(v6, qword_1ECDF6028);
    sub_1DEE4DB84(v5, v4, type metadata accessor for ZoneVersionAdvertisement);
    v7 = sub_1DEF8D4D8();
    v8 = sub_1DEF8DCB8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[21];
    if (v9)
    {
      v11 = v0[20];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136446210;
      sub_1DEF8DF28();

      strcpy(v35, "remoteDevice: ");
      HIBYTE(v35[1]) = -18;
      v14 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
      MEMORY[0x1E12CB180](v14);

      MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
      v15 = *(v10 + *(v11 + 20));
      type metadata accessor for ZoneVersion();
      v16 = sub_1DEF8D858();
      MEMORY[0x1E12CB180](v16);

      sub_1DEE4DBEC(v10, type metadata accessor for ZoneVersionAdvertisement);
      v17 = sub_1DEE12A5C(v35[0], v35[1], &v39);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DEE0F000, v7, v8, "Zone advertiser advertising %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E12CCD70](v13, -1, -1);
      MEMORY[0x1E12CCD70](v12, -1, -1);
    }

    else
    {

      sub_1DEE4DBEC(v10, type metadata accessor for ZoneVersionAdvertisement);
    }

    v23 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key;
    v24 = *(MEMORY[0x1E69AD318] + 4);
    v25 = swift_task_alloc();
    v0[24] = v25;
    v26 = sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement);
    v27 = sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement);
    v28 = sub_1DEE1B920(&qword_1ECDE2F18, type metadata accessor for ZoneVersionAdvertisement);
    *v25 = v0;
    v25[1] = sub_1DEE4D428;
    v30 = v0[19];
    v29 = v0[20];
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[13];
    v34 = v0[14];
    v38 = v28;

    return MEMORY[0x1EEE19078](v30, v31, v33, v3 + v23, v32, v29, v26, v27);
  }

  else
  {
    v18 = v0[21];
    v19 = v0[19];
    v20 = v0[16];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1DEE4D428()
{
  v2 = *v1;
  v3 = (*v1)[24];
  v9 = *v1;
  (*v1)[25] = v0;

  if (v0)
  {
    v4 = sub_1DEE4D728;
  }

  else
  {
    v6 = v2[18];
    v5 = v2[19];
    v7 = v2[17];
    sub_1DEE171B4(v2[16], &qword_1ECDE3B18, &qword_1DEF90B28);
    (*(v6 + 8))(v5, v7);
    v4 = sub_1DEE4D578;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DEE4D578()
{
  if (*(v0 + 208) == 1)
  {
    v1 = v0[22];
    v2 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1DEE4DED4;
    *(v3 + 24) = v1;
    v0[6] = sub_1DEE13B20;
    v0[7] = v3;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1DEE134F4;
    v0[5] = &block_descriptor_74;
    v4 = _Block_copy(v0 + 2);
    v5 = v0[7];

    dispatch_sync(v2, v4);

    _Block_release(v4);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = v0[22];

LABEL_5:
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DEE4D728()
{
  v22 = v0;
  v1 = v0[25];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DC98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v0[11] = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v11 = sub_1DEF8D988();
    v13 = sub_1DEE12A5C(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "Zone advertiser failed to advertise: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12CCD70](v9, -1, -1);
    MEMORY[0x1E12CCD70](v8, -1, -1);
  }

  else
  {
    v14 = v0[25];
    v15 = v0[22];
  }

  v16 = v0[21];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DEE4D8FC(uint64_t a1)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF6028);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "Zone advertiser advertisement task is shutting down", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask;
  if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask))
  {
    v7 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask);

    sub_1DEF8DB88();

    v8 = *(a1 + v6);
  }

  *(a1 + v6) = 0;
}

uint64_t sub_1DEE4DA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DEE466B4;

  return sub_1DEE4A470(a1, v4, v5, v7, v6);
}

uint64_t sub_1DEE4DB14()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1DEE4C178(v2);
}

uint64_t sub_1DEE4DB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE4DBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE4DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE4DCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE4DD30(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1DEF8D488() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v7);
  v13 = v1[4];
  v14 = v1 + v9;
  v15 = *(v1 + v9 + *(v8 + 64));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DEE46D44;

  return sub_1DEE4CEB8(a1, v10, v11, v13, v1 + v6, v12, v14, v15);
}

uint64_t static RecordDestination.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v5 = sub_1DEE4DFB8(v4, v2);

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1DEE4DFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    sub_1DEE1E37C(&qword_1ECDE40E0);
    v23 = sub_1DEF8D908();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE4E1C4(uint64_t a1)
{
  v2 = sub_1DEE4E8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE4E200(uint64_t a1)
{
  v2 = sub_1DEE4E8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEE4E23C()
{
  if (*v0)
  {
    result = 7105633;
  }

  else
  {
    result = 0x697463656C6C6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1DEE4E274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEE4E358(uint64_t a1)
{
  v2 = sub_1DEE4E8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE4E394(uint64_t a1)
{
  v2 = sub_1DEE4E8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEE4E3D8()
{
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](0);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4E41C()
{
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](0);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4E45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DEF8E4E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DEE4E4DC(uint64_t a1)
{
  v2 = sub_1DEE4E94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE4E518(uint64_t a1)
{
  v2 = sub_1DEE4E94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecordDestination.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B28, &qword_1DEF90B40);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B30, &qword_1DEF90B48);
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B38, &qword_1DEF90B50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE4E8A4();
  sub_1DEF8E858();
  if (v15)
  {
    v27 = 0;
    sub_1DEE4E94C();
    sub_1DEF8E248();
    v26 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B58, &qword_1DEF90B58);
    sub_1DEE4F1E4(&qword_1ECDE2C68, &qword_1ECDE3640);
    v17 = v25;
    sub_1DEF8E298();
    (*(v24 + 8))(v9, v17);
  }

  else
  {
    v28 = 1;
    sub_1DEE4E8F8();
    v19 = v21;
    sub_1DEF8E248();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1DEE4E8A4()
{
  result = qword_1ECDE3B40;
  if (!qword_1ECDE3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B40);
  }

  return result;
}

unint64_t sub_1DEE4E8F8()
{
  result = qword_1ECDE3B48;
  if (!qword_1ECDE3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B48);
  }

  return result;
}

unint64_t sub_1DEE4E94C()
{
  result = qword_1ECDE3B50;
  if (!qword_1ECDE3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B50);
  }

  return result;
}

uint64_t RecordDestination.hash(into:)()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if (!*v0)
  {
    return MEMORY[0x1E12CBF60](1, v4);
  }

  MEMORY[0x1E12CBF60](0, v4);
  result = MEMORY[0x1E12CBF60](*(v7 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v12 = *(v2 + 16);
    v10 = v2 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v1);
      sub_1DEE1E37C(&qword_1ECDE3638);
      sub_1DEF8D8C8();
      result = (*(v10 - 8))(v6, v1);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t RecordDestination.hashValue.getter()
{
  v2 = *v0;
  sub_1DEF8E7A8();
  RecordDestination.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t RecordDestination.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B60, &qword_1DEF90B60);
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B68, &qword_1DEF90B68);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B70, &unk_1DEF90B70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1DEE4E8A4();
  v19 = v33;
  sub_1DEF8E848();
  if (!v19)
  {
    v20 = v13;
    v21 = v32;
    v22 = sub_1DEF8E228();
    if (*(v22 + 16) == 1)
    {
      v33 = v22;
      if (*(v22 + 32))
      {
        v37 = 1;
        sub_1DEE4E8F8();
        sub_1DEF8E178();
        (*(v30 + 8))(v7, v29);
        (*(v20 + 8))(v16, v12);
        swift_unknownObjectRelease();
        *v21 = 0;
      }

      else
      {
        v36 = 0;
        sub_1DEE4E94C();
        sub_1DEF8E178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B58, &qword_1DEF90B58);
        sub_1DEE4F1E4(&qword_1ECDE3B80, &qword_1ECDE3630);
        sub_1DEF8E1F8();
        (*(v31 + 8))(v11, v8);
        (*(v20 + 8))(v16, v12);
        swift_unknownObjectRelease();
        *v21 = v35;
      }
    }

    else
    {
      v23 = sub_1DEF8DF68();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v25 = &type metadata for RecordDestination;
      sub_1DEF8E188();
      sub_1DEF8DF48();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v20 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1DEE4F030()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE4F064()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE4F0C8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v5 = sub_1DEE4DFB8(v4, v2);

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1DEE4F14C()
{
  v2 = *v0;
  sub_1DEF8E7A8();
  RecordDestination.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4F19C()
{
  v2 = *v0;
  sub_1DEF8E7A8();
  RecordDestination.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE4F1E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3B58, &qword_1DEF90B58);
    sub_1DEE1E37C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEE4F270()
{
  result = qword_1ECDE3B88;
  if (!qword_1ECDE3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B88);
  }

  return result;
}

uint64_t sub_1DEE4F2D0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1DEE4F320(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DEE4F374(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DEE4F38C(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for RecordDestination.CollectionCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RecordDestination.CollectionCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1DEE4F4C4()
{
  result = qword_1ECDE3B90;
  if (!qword_1ECDE3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B90);
  }

  return result;
}

unint64_t sub_1DEE4F51C()
{
  result = qword_1ECDE3B98;
  if (!qword_1ECDE3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3B98);
  }

  return result;
}

unint64_t sub_1DEE4F574()
{
  result = qword_1ECDE3BA0;
  if (!qword_1ECDE3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BA0);
  }

  return result;
}

unint64_t sub_1DEE4F5CC()
{
  result = qword_1ECDE3BA8;
  if (!qword_1ECDE3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BA8);
  }

  return result;
}

unint64_t sub_1DEE4F624()
{
  result = qword_1ECDE3BB0;
  if (!qword_1ECDE3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BB0);
  }

  return result;
}

unint64_t sub_1DEE4F67C()
{
  result = qword_1ECDE3BB8;
  if (!qword_1ECDE3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BB8);
  }

  return result;
}

unint64_t sub_1DEE4F6D4()
{
  result = qword_1ECDE3BC0;
  if (!qword_1ECDE3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BC0);
  }

  return result;
}

unint64_t sub_1DEE4F72C()
{
  result = qword_1ECDE3BC8;
  if (!qword_1ECDE3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3BC8);
  }

  return result;
}

ReplicatorEngine::DefaultSuspensionPolicy __swiftcall DefaultSuspensionPolicy.init(discardInterval:unpairInterval:)(Swift::Double discardInterval, Swift::Double unpairInterval)
{
  *v2 = discardInterval;
  v2[1] = unpairInterval;
  result.unpairInterval = unpairInterval;
  result.discardInterval = discardInterval;
  return result;
}

uint64_t DefaultSuspensionPolicy.discardDate(for:hasRecordsFromRemoteDevice:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = type metadata accessor for PairingRelationship();
  v9 = a1 + *(v8 + 32);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (v11)
  {
    v12 = *v9;
    sub_1DEE4F8C0(v10, *(v9 + 8));
    sub_1DEE4F8D4(v12, v11);
    sub_1DEE4F8D4(0, 0);
  }

  else
  {
    v13 = v8;
    sub_1DEE4F8D4(v10, 0);
    sub_1DEE4F8D4(0, 0);
    if (a2)
    {
      v14 = a1 + *(v13 + 24);
      sub_1DEF8D2E8();
      v15 = 0;
      goto LABEL_6;
    }
  }

  v15 = 1;
LABEL_6:
  v16 = sub_1DEF8D378();
  v17 = *(*(v16 - 8) + 56);

  return v17(a3, v15, 1, v16);
}

uint64_t sub_1DEE4F8C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1DEE4F8D4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t DefaultSuspensionPolicy.unpairDate(for:hasRecordsFromRemoteDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PairingRelationship();
  v6 = a1 + *(v5 + 32);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (v8 == 2)
  {
    v9 = *(v2 + 8);
    sub_1DEE4F8D4(v7, 2uLL);
    sub_1DEE4F8D4(0, 2uLL);
    v10 = a1 + *(v5 + 24);
    sub_1DEF8D2E8();
    v11 = 0;
  }

  else
  {
    v12 = *v6;
    sub_1DEE4F8C0(v7, *(v6 + 8));
    sub_1DEE4F8D4(v12, v8);
    sub_1DEE4F8D4(0, 2uLL);
    v11 = 1;
  }

  v13 = sub_1DEF8D378();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, v11, 1, v13);
}

uint64_t sub_1DEE4F9EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = type metadata accessor for PairingRelationship();
  v9 = a1 + *(v8 + 32);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (v11)
  {
    v12 = *v9;
    sub_1DEE4F8C0(v10, *(v9 + 8));
    sub_1DEE4F8D4(v12, v11);
    sub_1DEE4F8D4(0, 0);
  }

  else
  {
    v13 = v8;
    sub_1DEE4F8D4(v10, 0);
    sub_1DEE4F8D4(0, 0);
    if (a2)
    {
      v14 = a1 + *(v13 + 24);
      sub_1DEF8D2E8();
      v15 = 0;
      goto LABEL_6;
    }
  }

  v15 = 1;
LABEL_6:
  v16 = sub_1DEF8D378();
  v17 = *(*(v16 - 8) + 56);

  return v17(a3, v15, 1, v16);
}

uint64_t sub_1DEE4FAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PairingRelationship();
  v6 = a1 + *(v5 + 32);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (v8 == 2)
  {
    v9 = *(v2 + 8);
    sub_1DEE4F8D4(v7, 2uLL);
    sub_1DEE4F8D4(0, 2uLL);
    v10 = a1 + *(v5 + 24);
    sub_1DEF8D2E8();
    v11 = 0;
  }

  else
  {
    v12 = *v6;
    sub_1DEE4F8C0(v7, *(v6 + 8));
    sub_1DEE4F8D4(v12, v8);
    sub_1DEE4F8D4(0, 2uLL);
    v11 = 1;
  }

  v13 = sub_1DEF8D378();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, v11, 1, v13);
}

uint64_t sub_1DEE4FC10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1DEE4FC68(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for PairingRelationship() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1DEE4FCFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Zone.ID();
  v4 = sub_1DEE2BAF8(&qword_1ECDE2EA0, type metadata accessor for Zone.ID);
  result = MEMORY[0x1E12CB3B0](v2, v3, v4);
  v6 = 0;
  v15 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * v12)));

    sub_1DEF389B8(&v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v15;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE4FE4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DEEA86E0();
  result = MEMORY[0x1E12CB3B0](v2, &type metadata for NetworkBrowser.MonitoredPersona, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    sub_1DEF39434(&v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1DEE4FF6C()
{
  *&result = 16;
  xmmword_1ED786068 = xmmword_1DEF90FC0;
  return result;
}

double static Replicator.Constants.protocolVersion.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED786060 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1ED786068;
  *a1 = xmmword_1ED786068;
  return result;
}

uint64_t sub_1DEE4FFEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1DEF8D3F8();
  __swift_allocate_value_buffer(v4, qword_1ECDF6090);
  v5 = __swift_project_value_buffer(v4, qword_1ECDF6090);
  sub_1DEF8D388();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE5011C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D30, &qword_1DEF91648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF90FD0;
  *(inited + 32) = 1;
  *(inited + 40) = sub_1DEEA2BCC(&unk_1F5A19038);
  *(inited + 48) = 2;
  *(inited + 56) = sub_1DEEA2BCC(&unk_1F5A19068);
  *(inited + 64) = 4;
  *(inited + 72) = sub_1DEEA2BCC(&unk_1F5A190A8);
  v1 = sub_1DEEA2CAC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D38, &qword_1DEF91650);
  result = swift_arrayDestroy();
  qword_1ECDF60A8 = v1;
  return result;
}

uint64_t sub_1DEE50234()
{
  sub_1DEEA874C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE5026C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1DEE502F0@<X0>(void *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1DEE50374@<X0>(_BYTE *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t sub_1DEE503FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v15[0] = v8;
    v15[1] = v9;
    (*(v10 + 32))(a1, a2, v15, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = type metadata accessor for PrioritizedRecordValue();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 1, 1, v13);
  }
}

uint64_t sub_1DEE50508(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEE50594(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEE50618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a1, a2, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1DEE506C0(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 64))(a1, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_1DEF8D9C8();
  }
}

__n128 Replicator.screenDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 137);
  result = *(v1 + 104);
  v5 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

uint64_t sub_1DEE50774()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v5 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
    sub_1DEE1B548(&qword_1ECDE2D18, &qword_1ECDE3BD0, &qword_1DEF91090);
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 152);
    *(v2 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1DEE50838(uint64_t a1)
{
  v2 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t (*sub_1DEE50848(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEE50774();
  return sub_1DEE50890;
}

uint64_t sub_1DEE50890(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;
}

uint64_t sub_1DEE508A0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v5 = *(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD8, &qword_1DEF91098);
    sub_1DEE1B548(&qword_1ECDE3BE0, &qword_1ECDE3BD8, &qword_1DEF91098);
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 168);
    *(v2 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1DEE50964(uint64_t a1)
{
  v2 = *(v1 + 168);
  *(v1 + 168) = a1;
}

uint64_t (*sub_1DEE50974(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEE508A0();
  return sub_1DEE509BC;
}

uint64_t sub_1DEE509BC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 168);
  *(v1 + 168) = v2;
}

uint64_t Replicator.Session.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Replicator.Session.remoteDeviceID.getter()
{
  v1 = (v0 + *(type metadata accessor for Replicator.Session() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for Replicator.Session()
{
  result = qword_1ECDE3C40;
  if (!qword_1ECDE3C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE50AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1DEE50B7C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE20;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_303;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE50CD8()
{
  v1 = *(v0 + 232);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE50D44(char a1)
{
  v2 = v1;
  v4 = *(v2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEE51054;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE13B20;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_2;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE50EA0(char a1, uint64_t a2)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF6028);
  v5 = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1DEE0F000, v5, v6, "Replicator state changed to enabled: %{BOOL,public}d", v7, 8u);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }

  *(a2 + 624) = a1 & 1;
  swift_beginAccess();
  v8 = *(a2 + 368);
  v9 = *(a2 + 376);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 344, v8);
  (*(v9 + 24))(a1 & 1, v8, v9);
  swift_endAccess();
  swift_beginAccess();
  v10 = *(a2 + 216);
  v11 = *(a2 + 224);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 192, v10);
  (*(*(v11 + 16) + 32))(a1 & 1, v10);
  result = swift_endAccess();
  if ((a1 & 1) == 0)
  {
    return sub_1DEE51060();
  }

  return result;
}

uint64_t sub_1DEE51060()
{
  v1 = type metadata accessor for PairingRelationship();
  v65 = *(v1 - 8);
  v2 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1DEF8D3F8();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v64 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v60 - v13;
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + 232);
  *v20 = v21;
  v22 = v16[13];
  v73 = *MEMORY[0x1E69E8020];
  v71 = v22;
  v72 = v16 + 13;
  v22(v20, v18);
  v70 = v21;
  LOBYTE(v21) = sub_1DEF8D7B8();
  v23 = v16[1];
  v74 = v20;
  v75 = v16 + 1;
  v76 = v15;
  v69 = v23;
  result = v23(v20, v15);
  if ((v21 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v77 = v0;
  sub_1DEE29594(v0 + 192, v80);
  v26 = v81;
  v25 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v27 = (*(*(*(v25 + 8) + 8) + 32))(v26);
  v28 = sub_1DEE9EBC8(v27, sub_1DEE9FFA8, sub_1DEE9FFA8);

  result = __swift_destroy_boxed_opaque_existential_1(v80);
  v29 = 0;
  v30 = *(v28 + 64);
  v60[0] = v28 + 64;
  v66 = v28;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v60[2] = v5 + 16;
  v60[1] = v5 + 32;
  v63 = v5;
  v67 = (v5 + 8);
  v62 = v11;
  v61 = v14;
  v68 = v4;
  if ((v32 & v30) == 0)
  {
LABEL_6:
    if (v34 <= v29 + 1)
    {
      v36 = v29 + 1;
    }

    else
    {
      v36 = v34;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v34)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
        (*(*(v56 - 8) + 56))(v11, 1, 1, v56);
        v33 = 0;
        goto LABEL_14;
      }

      v33 = *(v60[0] + 8 * v35);
      ++v29;
      if (v33)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v29;
LABEL_13:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = v38 | (v35 << 6);
    v40 = v66;
    v41 = v63;
    v42 = v64;
    v43 = v78;
    (*(v63 + 16))(v64, *(v66 + 48) + *(v63 + 72) * v39, v78);
    sub_1DEEACA70(*(v40 + 56) + *(v65 + 72) * v39, v4, type metadata accessor for PairingRelationship);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v45 = *(v44 + 48);
    v46 = *(v41 + 32);
    v11 = v62;
    v46(v62, v42, v43);
    sub_1DEEAB218(v4, &v11[v45], type metadata accessor for PairingRelationship);
    (*(*(v44 - 8) + 56))(v11, 0, 1, v44);
    v37 = v35;
    v14 = v61;
LABEL_14:
    sub_1DEE1BA88(v11, v14, &qword_1ECDE3C98, &unk_1DEF95610);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v47 - 8) + 48))(v14, 1, v47) == 1)
    {
      break;
    }

    v4 = v68;
    sub_1DEEAB218(&v14[*(v47 + 48)], v68, type metadata accessor for PairingRelationship);
    v48 = v74;
    v50 = v70;
    v49 = v71;
    *v74 = v70;
    v51 = v76;
    v49(v48, v73, v76);
    v52 = v50;
    LOBYTE(v50) = sub_1DEF8D7B8();
    result = v69(v48, v51);
    if ((v50 & 1) == 0)
    {
      goto LABEL_21;
    }

    v53 = v77;
    sub_1DEE67760(v4);
    sub_1DEE29594(v53 + 192, v80);
    v54 = v81;
    v55 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(*(v55 + 16) + 120))(v4, v54);
    sub_1DEE273A0(v4, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v80);
    result = (*v67)(v14, v78);
    v29 = v37;
    if (!v33)
    {
      goto LABEL_6;
    }
  }

  v57 = *(v77 + 144);
  sub_1DEE29594(v77 + 192, v80);
  v59 = v81;
  v58 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v79 = (*(*(*(v58 + 8) + 8) + 32))(v59);
  sub_1DEF8D588();

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

void (*sub_1DEE5180C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 232);
  sub_1DEF8DD18();
  v4[64] = *v4;
  return sub_1DEE518C4;
}

void sub_1DEE518C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1DEEACE20;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_15;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DEEACE20;
  *(v11 + 24) = v10;
  v2[4] = sub_1DEE46D40;
  v2[5] = v11;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_26;
  v12 = _Block_copy(v2);
  v13 = v2[5];

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t Replicator.__allocating_init(syncService:metadataStore:replicationPolicy:suspensionPolicy:deviceType:screenDescriptor:zoneVersionAdvertiser:handshakeScheduler:pinnedIdentityManager:permittedRemoteDeviceTypes:personaMonitor:localDeviceIdentifier:activeWatchIDSIDProvider:pairedRelationshipReconciler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6, __int128 *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v84 = a8;
  v85 = a5;
  v86 = a4;
  v81 = a3;
  v74 = a2;
  v73 = a1;
  v80 = a15;
  v82 = a10;
  v83 = a9;
  v78 = a16;
  v79 = a12;
  v76 = a14;
  v77 = a11;
  v75 = a13;
  v69 = sub_1DEF8D3F8();
  v68 = *(v69 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DEF8DD08();
  v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DEF8DCD8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = sub_1DEF8D6D8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = swift_allocObject();
  v70 = *a6;
  v72 = *(a7 + 32);
  v71 = *(a7 + 33);
  *(v26 + 56) = 0u;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *(v26 + 144) = sub_1DEF8D598();
  *(v26 + 152) = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD8, &qword_1DEF91098);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v26 + 160) = sub_1DEF8D598();
  *(v26 + 168) = 0;
  v61 = sub_1DEE3C630();
  sub_1DEF8D6C8();
  *&v89 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  v33 = a7[1];
  v66 = *a7;
  v65 = v33;
  v34 = v81;
  sub_1DEF8DE08();
  (*(v63 + 104))(v62, *MEMORY[0x1E69E8098], v64);
  v35 = sub_1DEF8DD38();
  v36 = MEMORY[0x1E69E7CC8];
  *(v26 + 232) = v35;
  *(v26 + 240) = v36;
  *(v26 + 248) = 0;
  *(v26 + 256) = 0;
  v37 = MEMORY[0x1E69E7CD0];
  *(v26 + 464) = MEMORY[0x1E69E7CD0];
  *(v26 + 472) = 0;
  v38 = v67;
  sub_1DEF8D3E8();
  v39 = sub_1DEF8D398();
  v41 = v40;
  (*(v68 + 8))(v38, v69);
  *(v26 + 528) = v39;
  *(v26 + 536) = v41;
  type metadata accessor for SessionManager();
  swift_allocObject();
  *(v26 + 544) = SessionManager.init(expirationDuration:)(0, 1);
  type metadata accessor for SyncQueue();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1DEEA2DE0(MEMORY[0x1E69E7CC0], &qword_1ECDE3E60, &unk_1DEF91780, &qword_1ECDE3E68, &qword_1DEF91BB0);
  *(v26 + 592) = v42;
  *(v26 + 600) = v36;
  type metadata accessor for BasicTimer();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v43 + 24) = v44;
  *(v26 + 608) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v45 + 24) = v46;
  *(v26 + 616) = v45;
  *(v26 + 624) = 1;
  *(v26 + 632) = 0;
  *(v26 + 640) = 1;
  *(v26 + 648) = 0;
  *(v26 + 656) = 0xF000000000000000;
  *(v26 + 664) = v36;
  *(v26 + 672) = v37;
  v47 = v74;
  *(v26 + 176) = v73;
  *(v26 + 184) = v47;
  sub_1DEE29594(v34, v26 + 192);
  sub_1DEE29594(v86, v26 + 264);
  sub_1DEE29594(v85, v26 + 304);
  *(v26 + 96) = v70;
  *(v26 + 120) = v65;
  *(v26 + 104) = v66;
  *(v26 + 136) = v72;
  *(v26 + 137) = v71;
  sub_1DEE29594(v84, v26 + 344);
  sub_1DEE29594(v83, v26 + 384);
  sub_1DEE29594(v82, v26 + 480);
  v48 = *(v26 + 256);
  v49 = v76;
  *(v26 + 248) = v75;
  *(v26 + 256) = v49;
  swift_unknownObjectRetain();

  v50 = v34[3];
  v51 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v50);
  *(v26 + 624) = (*(*(*(v51 + 8) + 8) + 16))(v50) & 1;
  v52 = sub_1DEEA3E78(v77);

  *(v26 + 520) = v52;
  sub_1DEE17214(v80, &v87, &qword_1ECDE3BE8, &unk_1DEF910A0);
  if (v88)
  {
    sub_1DEE2F1AC(&v87, &v89);
  }

  else
  {
    active = type metadata accessor for ActiveWatchIDSIDProvider();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v90 = active;
    v91 = &off_1F5A202E8;
    *&v89 = v54;
  }

  sub_1DEE2F1AC(&v89, v26 + 16);
  v55 = v79;
  sub_1DEE17214(v79, v26 + 424, &qword_1ECDE3BF0, &unk_1DEF938B0);
  v56 = v78;
  sub_1DEE17214(v78, v26 + 552, &qword_1ECDE3BF8, &unk_1DEF910B0);
  ObjectType = swift_getObjectType();
  v58 = *(v47 + 24);

  v58(v59, &protocol witness table for Replicator, ObjectType, v47);
  swift_unknownObjectRelease();

  sub_1DEE171B4(v56, &qword_1ECDE3BF8, &unk_1DEF910B0);
  sub_1DEE171B4(v80, &qword_1ECDE3BE8, &unk_1DEF910A0);
  sub_1DEE171B4(v55, &qword_1ECDE3BF0, &unk_1DEF938B0);
  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v81);
  return v26;
}

uint64_t Replicator.init(syncService:metadataStore:replicationPolicy:suspensionPolicy:deviceType:screenDescriptor:zoneVersionAdvertiser:handshakeScheduler:pinnedIdentityManager:permittedRemoteDeviceTypes:personaMonitor:localDeviceIdentifier:activeWatchIDSIDProvider:pairedRelationshipReconciler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6, __int128 *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v85 = a8;
  v86 = a5;
  v87 = a4;
  v82 = a3;
  v75 = a2;
  v74 = a1;
  v81 = a15;
  v83 = a10;
  v84 = a9;
  v79 = a16;
  v80 = a12;
  v77 = a14;
  v78 = a11;
  v76 = a13;
  v70 = sub_1DEF8D3F8();
  v69 = *(v70 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DEF8DD08();
  v64 = *(v65 - 8);
  v22 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DEF8DCD8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = sub_1DEF8D6D8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v71 = *a6;
  v73 = *(a7 + 32);
  v72 = *(a7 + 33);
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v17 + 144) = sub_1DEF8D598();
  *(v17 + 152) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD8, &qword_1DEF91098);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *(v17 + 160) = sub_1DEF8D598();
  *(v17 + 168) = 0;
  v62 = sub_1DEE3C630();
  sub_1DEF8D6C8();
  *&v90 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  v34 = a7[1];
  v67 = *a7;
  v66 = v34;
  v35 = v82;
  sub_1DEF8DE08();
  (*(v64 + 104))(v63, *MEMORY[0x1E69E8098], v65);
  v36 = sub_1DEF8DD38();
  v37 = MEMORY[0x1E69E7CC8];
  *(v17 + 232) = v36;
  *(v17 + 240) = v37;
  *(v17 + 248) = 0;
  *(v17 + 256) = 0;
  v38 = MEMORY[0x1E69E7CD0];
  *(v17 + 464) = MEMORY[0x1E69E7CD0];
  *(v17 + 472) = 0;
  v39 = v68;
  sub_1DEF8D3E8();
  v40 = sub_1DEF8D398();
  v42 = v41;
  (*(v69 + 8))(v39, v70);
  *(v17 + 528) = v40;
  *(v17 + 536) = v42;
  type metadata accessor for SessionManager();
  swift_allocObject();
  *(v17 + 544) = SessionManager.init(expirationDuration:)(0, 1);
  type metadata accessor for SyncQueue();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1DEEA2DE0(MEMORY[0x1E69E7CC0], &qword_1ECDE3E60, &unk_1DEF91780, &qword_1ECDE3E68, &qword_1DEF91BB0);
  *(v17 + 592) = v43;
  *(v17 + 600) = v37;
  type metadata accessor for BasicTimer();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v44 + 24) = v45;
  *(v17 + 608) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v46 + 24) = v47;
  *(v17 + 616) = v46;
  *(v17 + 624) = 1;
  *(v17 + 632) = 0;
  *(v17 + 640) = 1;
  *(v17 + 648) = 0;
  *(v17 + 656) = 0xF000000000000000;
  *(v17 + 664) = v37;
  *(v17 + 672) = v38;
  v48 = v75;
  *(v17 + 176) = v74;
  *(v17 + 184) = v48;
  sub_1DEE29594(v35, v17 + 192);
  sub_1DEE29594(v87, v17 + 264);
  sub_1DEE29594(v86, v17 + 304);
  *(v17 + 96) = v71;
  *(v17 + 120) = v66;
  *(v17 + 104) = v67;
  *(v17 + 136) = v73;
  *(v17 + 137) = v72;
  sub_1DEE29594(v85, v17 + 344);
  sub_1DEE29594(v84, v17 + 384);
  sub_1DEE29594(v83, v17 + 480);
  v49 = *(v17 + 256);
  v50 = v77;
  *(v17 + 248) = v76;
  *(v17 + 256) = v50;
  swift_unknownObjectRetain();

  v52 = v35[3];
  v51 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v52);
  *(v17 + 624) = (*(*(*(v51 + 8) + 8) + 16))(v52) & 1;
  v53 = sub_1DEEA3E78(v78);

  *(v17 + 520) = v53;
  sub_1DEE17214(v81, &v88, &qword_1ECDE3BE8, &unk_1DEF910A0);
  if (v89)
  {
    sub_1DEE2F1AC(&v88, &v90);
  }

  else
  {
    active = type metadata accessor for ActiveWatchIDSIDProvider();
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    v91 = active;
    v92 = &off_1F5A202E8;
    *&v90 = v55;
  }

  sub_1DEE2F1AC(&v90, v17 + 16);
  v56 = v80;
  sub_1DEE17214(v80, v17 + 424, &qword_1ECDE3BF0, &unk_1DEF938B0);
  v57 = v79;
  sub_1DEE17214(v79, v17 + 552, &qword_1ECDE3BF8, &unk_1DEF910B0);
  ObjectType = swift_getObjectType();
  v59 = *(v48 + 24);

  v59(v60, &protocol witness table for Replicator, ObjectType, v48);
  swift_unknownObjectRelease();

  sub_1DEE171B4(v57, &qword_1ECDE3BF8, &unk_1DEF910B0);
  sub_1DEE171B4(v81, &qword_1ECDE3BE8, &unk_1DEF910A0);
  sub_1DEE171B4(v56, &qword_1ECDE3BF0, &unk_1DEF938B0);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v82);
  return v17;
}

uint64_t sub_1DEE52BA4()
{
  v1 = v0;
  v2 = sub_1DEF8D698();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DEF8D6D8();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v0 + 232);
  v31 = sub_1DEEA3EEC;
  v32 = v0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_1DEE3F0C0;
  v30 = &block_descriptor_29;
  v10 = _Block_copy(&aBlock);

  sub_1DEF8D6B8();
  v25[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v24 + 8))(v5, v2);
  (*(v6 + 8))(v9, v23);

  v11 = *(v0 + 176);
  v12 = *(v1 + 184);
  ObjectType = swift_getObjectType();
  (*(v12 + 32))(ObjectType, v12);
  sub_1DEE29594(v1 + 16, &aBlock);
  active = type metadata accessor for ActiveWatchPairingEnforcer();
  v15 = swift_allocObject();
  v16 = sub_1DEEA28CC(v1, &aBlock, v15);
  v30 = active;
  v31 = &off_1F5A202C0;
  *&aBlock = v16;
  swift_beginAccess();

  sub_1DEE29D60(&aBlock, v1 + 56, &qword_1ECDE3C00, &qword_1DEF910C0);
  swift_endAccess();
  sub_1DEE17214(v1 + 56, &aBlock, &qword_1ECDE3C00, &qword_1DEF910C0);
  if (!v30)
  {
    return sub_1DEE171B4(&aBlock, &qword_1ECDE3C00, &qword_1DEF910C0);
  }

  sub_1DEE29594(&aBlock, v25);
  sub_1DEE171B4(&aBlock, &qword_1ECDE3C00, &qword_1DEF910C0);
  v17 = v26;
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = *(v18 + 16);

  v20(sub_1DEEA3EF4, v19, v17, v18);

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1DEE52FF4(uint64_t a1)
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v25);
  v8 = v26;
  v7 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v9 = (*(*(*(v7 + 8) + 8) + 32))(v8);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_1DEE53340();
  v10 = *(a1 + 232);
  *v6 = v10;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v11 = v10;
  LOBYTE(v10) = sub_1DEF8D7B8();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    sub_1DEE538BC();
    sub_1DEE53BFC();
    sub_1DEE54460();
    sub_1DEE54CAC();
    sub_1DEE557F0();
    sub_1DEE55CBC();
    sub_1DEE5615C();
    sub_1DEE5646C();
    sub_1DEE56A48(2);
    sub_1DEE56F88();
    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    ObjectType = swift_getObjectType();
    v25[0] = *(a1 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3BD0, &qword_1DEF91090);
    sub_1DEE1B548(&qword_1ECDE2D18, &qword_1ECDE3BD0, &qword_1DEF91090);
    v16 = sub_1DEF8D5B8();
    (*(v14 + 64))(v16, ObjectType, v14);
    v17 = *(a1 + 624);
    swift_beginAccess();
    v18 = *(a1 + 368);
    v19 = *(a1 + 376);
    __swift_mutable_project_boxed_opaque_existential_1(a1 + 344, v18);
    (*(v19 + 24))(v17, v18, v19);
    swift_endAccess();
    if (*(a1 + 624))
    {
      sub_1DEE29594(a1 + 192, v25);
      v20 = v26;
      v21 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v22 = (*(*(*(v21 + 8) + 8) + 32))(v20);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v25[0] = v9;
      sub_1DEF8D588();
      sub_1DEEDC240(v9, v22);
      LOBYTE(v21) = v23;

      if ((v21 & 1) == 0)
      {
        v25[0] = v22;
        sub_1DEF8D588();
      }
    }

    else
    {

      return sub_1DEE51060();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE53340()
{
  v1 = v0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v44 - v6;
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 232);
  *v12 = v13;
  v14 = v8[13];
  v50 = *MEMORY[0x1E69E8020];
  v48 = v14;
  v49 = v8 + 13;
  v14(v12, v10);
  v47 = v13;
  v15 = sub_1DEF8D7B8();
  v16 = v8[1];
  v51 = v12;
  v52 = v8 + 1;
  v53 = v7;
  v46 = v16;
  v16(v12, v7);
  if (v15)
  {
    swift_beginAccess();
    sub_1DEE29594(v1 + 192, v58);
    v15 = v59;
    v7 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    if (qword_1ED786060 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_17;
  }

  while (1)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_3:
    v57 = xmmword_1ED786068;
    MutableMetadataStoring.removeIncompatiblePairingRelationships(protocolVersion:)(&v57, v15, v7);
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_1DEE29594(v1 + 192, v58);
    v18 = v59;
    v17 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v15 = (*(*(*(v17 + 8) + 8) + 32))(v18);

    v7 = 0;
    v19 = sub_1DEEA4880(v15, v1, sub_1DEEA412C, sub_1DEEA412C);

    v45 = v1;

    __swift_destroy_boxed_opaque_existential_1(v58);
    v20 = 0;
    v22 = v19 + 64;
    v21 = *(v19 + 8);
    v56 = v19;
    v23 = 1 << v19[32];
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v44 = v19 + 64;
    if ((v24 & v21) == 0)
    {
      break;
    }

    while (1)
    {
      v27 = v20;
LABEL_10:
      v28 = __clz(__rbit64(v25)) | (v27 << 6);
      v7 = v56;
      v29 = *(v56 + 6);
      v30 = sub_1DEF8D3F8();
      v31 = *(v30 - 8);
      v32 = v54;
      (*(v31 + 16))(v54, v29 + *(v31 + 72) * v28, v30);
      v33 = *(v7 + 56);
      v34 = v33 + *(*(type metadata accessor for PairingRelationship() - 8) + 72) * v28;
      v35 = v55;
      v36 = *(v55 + 48);
      sub_1DEEACA70(v34, &v32[v36], type metadata accessor for PairingRelationship);
      v37 = *(v35 + 48);
      (*(v31 + 32))(v4, v32, v30);
      sub_1DEEAB218(&v32[v36], &v4[v37], type metadata accessor for PairingRelationship);
      v38 = v51;
      v39 = v47;
      *v51 = v47;
      v1 = v53;
      v48(v38, v50, v53);
      v40 = v39;
      v15 = sub_1DEF8D7B8();
      v46(v38, v1);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v25 &= v25 - 1;
      v41 = v45;
      sub_1DEE67760(&v4[v37]);
      sub_1DEE29594(v41 + 192, v58);
      v42 = v59;
      v1 = v60;
      v15 = __swift_project_boxed_opaque_existential_1(v58, v59);
      (*(*(v1 + 16) + 120))(&v4[v37], v42);
      sub_1DEE171B4(v4, &unk_1ECDE4350, &qword_1DEF93400);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v20 = v27;
      v22 = v44;
      if (!v25)
      {
        goto LABEL_7;
      }
    }

LABEL_15:
    __break(1u);
  }

  while (1)
  {
LABEL_7:
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v27 >= v26)
    {
    }

    v25 = *&v22[8 * v27];
    ++v20;
    if (v25)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_1DEE538BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E50, &qword_1DEF91770);
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v16 - v7;
  v9 = v0[51];
  v10 = v0[52];
  __swift_project_boxed_opaque_existential_1(v0 + 48, v9);
  v18 = (*(v10 + 8))(v9, v10);
  v11 = v0[29];
  v19 = v11;
  v12 = sub_1DEF8DCF8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E58, &qword_1DEF91778);
  sub_1DEE3C630();
  sub_1DEE1B548(&unk_1ECDE2DA0, &qword_1ECDE3E58, &qword_1DEF91778);
  sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630);
  sub_1DEF8D5D8();
  sub_1DEE171B4(v4, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  sub_1DEE1B548(&unk_1ECDE2E00, &qword_1ECDE3E50, &qword_1DEF91770);
  v14 = v17;
  sub_1DEF8D5E8();

  (*(v5 + 8))(v8, v14);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();
}

uint64_t sub_1DEE53BFC()
{
  v1 = v0;
  v2 = sub_1DEF8D378();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - v12;
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v1[29];
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14, v17);
  v21 = v20;
  v22 = sub_1DEF8D7B8();
  v23 = (*(v15 + 8))(v19, v14);
  if (v22)
  {
    v74 = v10;
    v24 = v1[77];
    v25 = *(v24 + 24);
    MEMORY[0x1EEE9AC00](v23);
    *(&v68 - 2) = sub_1DEE15450;
    *(&v68 - 1) = v24;

    os_unfair_lock_lock(v25 + 4);
    v19 = 0;
    sub_1DEE15434(v26);
    os_unfair_lock_unlock(v25 + 4);

    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = sub_1DEF8D508();
  __swift_project_value_buffer(v27, qword_1ECDF6028);

  v28 = sub_1DEF8D4D8();
  v29 = sub_1DEF8DCB8();

  v30 = os_log_type_enabled(v28, v29);
  v69 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v75[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1DEE12A5C(v1[66], v1[67], v75);
    _os_log_impl(&dword_1DEE0F000, v28, v29, "(%{public}s) Starting suspension timer", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E12CCD70](v32, -1, -1);
    MEMORY[0x1E12CCD70](v31, -1, -1);
  }

  v33 = v74;
  sub_1DEF8D348();
  swift_beginAccess();
  sub_1DEE29594((v1 + 24), v75);
  v35 = v76;
  v34 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v36 = (*(*(*(v34 + 8) + 8) + 32))(v35);
  v37 = sub_1DEF8D2C8();
  MEMORY[0x1EEE9AC00](v37);
  *(&v68 - 2) = v1;
  *(&v68 - 1) = v13;
  v71 = v13;
  sub_1DEF34C98(v7, sub_1DEEA9D5C, v36, v33);

  __swift_destroy_boxed_opaque_existential_1(v75);
  sub_1DEF8D2C8();
  LOBYTE(v36) = sub_1DEF8D308();
  v38 = v72;
  v39 = *(v72 + 8);
  v40 = v7;
  v41 = v73;
  v39(v40, v73);
  if (v36)
  {
    v68 = v19;
    v42 = v70;
    (*(v38 + 16))(v70, v33, v41);

    v43 = v41;
    v44 = sub_1DEF8D4D8();
    v45 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v75[0] = v47;
      *v46 = 136446466;
      *(v46 + 4) = sub_1DEE12A5C(v1[66], v1[67], v75);
      *(v46 + 12) = 2080;
      sub_1DEE2BAF8(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
      v48 = sub_1DEF8E2E8();
      v49 = v42;
      v51 = v50;
      v39(v49, v43);
      v52 = sub_1DEE12A5C(v48, v51, v75);

      *(v46 + 14) = v52;
      _os_log_impl(&dword_1DEE0F000, v44, v45, "(%{public}s) Suspension timer will fire at %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v47, -1, -1);
      MEMORY[0x1E12CCD70](v46, -1, -1);
    }

    else
    {

      v39(v42, v43);
    }

    v41 = v43;
    v57 = v1[77];

    v58 = v74;
    sub_1DEF8D318();
    v60 = v59;
    v61 = swift_allocObject();
    v62 = swift_weakInit();
    v63 = *(v57 + 24);
    MEMORY[0x1EEE9AC00](v62);
    *(&v68 - 6) = v57;
    *(&v68 - 5) = v60;
    *(&v68 - 4) = v69;
    *(&v68 - 3) = sub_1DEEA9D78;
    *(&v68 - 2) = v61;
    MEMORY[0x1EEE9AC00](v64);
    *(&v68 - 2) = sub_1DEE1B768;
    *(&v68 - 1) = v65;

    os_unfair_lock_lock(v63 + 4);
    sub_1DEE3DEF0(v66);
    os_unfair_lock_unlock(v63 + 4);

    v39(v58, v41);
  }

  else
  {

    v53 = sub_1DEF8D4D8();
    v54 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v75[0] = v56;
      *v55 = 136446210;
      *(v55 + 4) = sub_1DEE12A5C(v1[66], v1[67], v75);
      _os_log_impl(&dword_1DEE0F000, v53, v54, "(%{public}s) No suspension work to perform", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1E12CCD70](v56, -1, -1);
      MEMORY[0x1E12CCD70](v55, -1, -1);
    }

    v39(v33, v41);
  }

  return (v39)(v71, v41);
}

uint64_t sub_1DEE54460()
{
  v1 = v0;
  v72 = type metadata accessor for PairingRelationship();
  v2 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v69 - v6;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  *&v73 = &v69 - v12;
  v13 = type metadata accessor for DeviceDescriptor();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v69 - v18;
  v19 = sub_1DEF8D788();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + 232);
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v19, v22);
  v26 = v25;
  v27 = sub_1DEF8D7B8();
  (*(v20 + 8))(v24, v19);
  if ((v27 & 1) == 0)
  {
    goto LABEL_37;
  }

  v70 = v13;
  v76 = v8;
  v77 = v7;
  swift_beginAccess();
  sub_1DEE29594(v1 + 192, v81);
  v28 = v82;
  v29 = v83;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v13 = MetadataStoring.orphanedRecordIDs()(v28, *(v29 + 8));
  __swift_destroy_boxed_opaque_existential_1(v81);
  v7 = v13 >> 62;
  if (v13 >> 62)
  {
LABEL_38:
    v30 = sub_1DEF8DE68();
    if (v30)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v30 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_4:
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v31 = sub_1DEF8D508();
      __swift_project_value_buffer(v31, qword_1ECDF6028);

      v32 = sub_1DEF8D4D8();
      v33 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134349056;
        if (v7)
        {
          v35 = sub_1DEF8DE68();
        }

        else
        {
          v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v34 + 4) = v35;

        _os_log_impl(&dword_1DEE0F000, v32, v33, "Discarding %{public}ld orphaned records", v34, 0xCu);
        MEMORY[0x1E12CCD70](v34, -1, -1);
      }

      else
      {
      }

      v36 = 0;
      v81[0] = MEMORY[0x1E69E7CD0];
      v7 = v13 & 0xC000000000000001;
      while (1)
      {
        if (v7)
        {
          v37 = MEMORY[0x1E12CB6E0](v36, v13);
          v38 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v36 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v37 = *(v13 + 8 * v36 + 32);

          v38 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:

            v78 = v81[0];
            v39 = v73;
            sub_1DEF8D3E8();
            v40 = sub_1DEF8D398();
            v69 = v41;
            v42 = v76;
            v43 = v39;
            v44 = v77;
            (*(v76 + 1))(v43, v77);
            if (qword_1ED786060 != -1)
            {
              swift_once();
            }

            v45 = xmmword_1ED786068;
            v46 = *(v42 + 7);
            v7 = (v42 + 56);
            v47 = v74;
            v46(v74, 1, 1, v44);
            *(v16 + 72) = 0u;
            *(v16 + 56) = 0u;
            v48 = v44;
            *(v16 + 44) = 256;
            v73 = xmmword_1DEF90FE0;
            *(v16 + 7) = xmmword_1DEF90FE0;
            v49 = *(v70 + 60);
            v46(&v16[v49], 1, 1, v48);
            v50 = v69;
            *v16 = v40;
            *(v16 + 1) = v50;
            strcpy(v16 + 16, "UnknownDevice");
            *(v16 + 15) = -4864;
            *(v16 + 2) = v45;
            v16[48] = 0;
            *(v16 + 56) = 0u;
            *(v16 + 72) = 0u;
            *(v16 + 44) = 256;
            sub_1DEE2416C(*(v16 + 14), *(v16 + 15));
            *(v16 + 7) = v73;
            *(v16 + 8) = 0u;
            *(v16 + 9) = 0u;
            *(v16 + 10) = 0u;
            sub_1DEEA882C(v47, &v16[v49]);
            v51 = MEMORY[0x1E69E7CC8];
            *(v16 + 12) = MEMORY[0x1E69E7CC8];
            sub_1DEE171B4(v47, &unk_1ECDE3E80, &unk_1DEF90970);
            *(v16 + 13) = v51;
            sub_1DEEAB218(v16, v79, type metadata accessor for DeviceDescriptor);
            v52 = 0;
            v53 = v78 + 56;
            v54 = 1 << *(v78 + 32);
            v55 = -1;
            if (v54 < 64)
            {
              v55 = ~(-1 << v54);
            }

            v56 = v55 & *(v78 + 56);
            v13 = (v54 + 63) >> 6;
            v74 = (v7 - 40);
            *&v73 = v7 - 24;
            v58 = v71;
            v57 = v72;
            v16 = v76;
            while (v56)
            {
              v59 = v52;
              v60 = v78;
LABEL_32:
              v61 = __clz(__rbit64(v56));
              v56 &= v56 - 1;
              v62 = *(v60 + 48) + *(v16 + 9) * (v61 | (v59 << 6));
              v7 = v75;
              v63 = v77;
              (*(v16 + 2))(v75, v62, v77);
              (*(v16 + 4))(v58, v7, v63);
              sub_1DEEACA70(v79, v58 + v57[5], type metadata accessor for DeviceDescriptor);
              v64 = v58 + v57[6];
              sub_1DEF8D348();
              v65 = v58 + v57[7];
              sub_1DEF8D348();
              v66 = v58 + v57[9];
              sub_1DEF8D348();
              v67 = (v58 + v57[8]);
              *v67 = 0;
              v67[1] = 0;
              sub_1DEE67760(v58);
              sub_1DEE273A0(v58, type metadata accessor for PairingRelationship);
            }

            v60 = v78;
            while (1)
            {
              v59 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                break;
              }

              if (v59 >= v13)
              {
                sub_1DEE273A0(v79, type metadata accessor for DeviceDescriptor);
              }

              v56 = *(v53 + 8 * v59);
              ++v52;
              if (v56)
              {
                v52 = v59;
                goto LABEL_32;
              }
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }
        }

        v80 = v37;
        sub_1DEE956D4(v81, &v80, v1);

        ++v36;
        if (v38 == v30)
        {
          goto LABEL_21;
        }
      }
    }
  }
}

uint64_t sub_1DEE54CAC()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v88 = *(v2 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v81 - v7;
  v101 = type metadata accessor for PairingRelationship();
  v100 = *(v101 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v95 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = v81 - v12;
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 1);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v0[29];
  *v18 = v19;
  v20 = v14[13];
  v86 = *MEMORY[0x1E69E8020];
  v87 = v14 + 13;
  v85 = v20;
  v20(v18, v16);
  v84 = v19;
  v21 = sub_1DEF8D7B8();
  v24 = v14[1];
  v23 = (v14 + 1);
  v22 = v24;
  v24(v18, v13);
  if ((v21 & 1) == 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v83 = v22;
  swift_beginAccess();
  sub_1DEE29594((v1 + 24), &v112);
  v26 = v113;
  v25 = v114;
  __swift_project_boxed_opaque_existential_1(&v112, v113);
  v108 = (*(*(*(v25 + 8) + 8) + 32))(v26);
  __swift_destroy_boxed_opaque_existential_1(&v112);
  v111 = MEMORY[0x1E69E7CD0];
  sub_1DEE29594((v1 + 24), &v112);
  v28 = v113;
  v27 = v114;
  __swift_project_boxed_opaque_existential_1(&v112, v113);
  v29 = MetadataStoring.expiredRecordIDs()(v28, *(v27 + 8));
  __swift_destroy_boxed_opaque_existential_1(&v112);
  v22 = (v29 >> 62);
  v107 = v29;
  if (v29 >> 62)
  {
LABEL_66:
    v30 = sub_1DEF8DE68();
    goto LABEL_4;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v96 = v30;
  if (!v30)
  {
  }

  v92 = v8;
  v31 = v5;
  v32 = v2;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v33 = sub_1DEF8D508();
  __swift_project_value_buffer(v33, qword_1ECDF6028);
  v2 = v107;

  v34 = sub_1DEF8D4D8();
  v35 = sub_1DEF8DCB8();
  v36 = os_log_type_enabled(v34, v35);
  v94 = v32;
  v93 = v31;
  v82 = v13;
  v81[1] = v23;
  v81[0] = v18;
  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    v2 = v107;
    if (v22)
    {
      v38 = sub_1DEF8DE68();
    }

    else
    {
      v38 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v38;

    _os_log_impl(&dword_1DEE0F000, v34, v35, "Deleting %ld expired local records", v37, 0xCu);
    MEMORY[0x1E12CCD70](v37, -1, -1);
  }

  else
  {
  }

  v13 = (v2 & 0xC000000000000001);
  swift_beginAccess();
  v8 = 0;
  v105 = v2 + 32;
  v106 = v2 & 0xFFFFFFFFFFFFFF8;
  v91 = (v88 + 16);
  v22 = (v88 + 8);
  v89 = v108 + 64;
  v97 = v95 + 8;
  v5 = v96;
  v90 = v2 & 0xC000000000000001;
  v98 = v1;
  do
  {
    if (v13)
    {
      v40 = MEMORY[0x1E12CB6E0](v8, v2);
      v41 = __OFADD__(v8++, 1);
      if (v41)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v8 >= *(v106 + 16))
      {
        goto LABEL_64;
      }

      v40 = *(v105 + 8 * v8);

      v41 = __OFADD__(v8++, 1);
      if (v41)
      {
        goto LABEL_63;
      }
    }

    v23 = *(v40 + 32);
    v42 = v1[30];
    if ((v42 & 0xC000000000000001) != 0)
    {
      v18 = v40;
      if (v42 < 0)
      {
        v43 = v1[30];
      }

      v44 = sub_1DEF8E0B8();

      if (!v44)
      {

LABEL_16:

        continue;
      }

      v110 = v44;
      type metadata accessor for Replicator.WeakSource();
      swift_dynamicCast();
      v45 = v112;

      v40 = v18;
      if (!v45)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!*(v42 + 16))
      {
        goto LABEL_16;
      }

      v46 = *(v40 + 32);

      v47 = sub_1DEEAF20C(v23);
      if ((v48 & 1) == 0)
      {

        goto LABEL_16;
      }

      v18 = *(*(v42 + 56) + 8 * v47);

      v45 = v18;

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v109 = v45;
    sub_1DEE29594((v1 + 24), &v112);
    v50 = v113;
    v49 = v114;
    __swift_project_boxed_opaque_existential_1(&v112, v113);
    v51 = (*(*(*(v49 + 8) + 8) + 64))(v40, v50);
    if (v51)
    {
      v18 = v51;
      v103 = v40;
      __swift_destroy_boxed_opaque_existential_1(&v112);
      v52 = *&v18[OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination];
      v104 = v8;
      v102 = v18;
      if (!v52)
      {
        v58 = 1 << *(v108 + 32);
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        else
        {
          v59 = -1;
        }

        v23 = v59 & *(v108 + 64);
        v1 = ((v58 + 63) >> 6);

        v60 = 0;
        v2 = v95;
        while (v23)
        {
LABEL_45:
          v61 = v99;
          sub_1DEEACA70(*(v108 + 56) + *(v100 + 72) * (__clz(__rbit64(v23)) | (v60 << 6)), v99, type metadata accessor for PairingRelationship);
          sub_1DEEAB218(v61, v2, type metadata accessor for PairingRelationship);
          v62 = *&v97[*(v101 + 32)];
          if (v62)
          {
            v63 = v62 == 3;
          }

          else
          {
            v63 = 1;
          }

          if (!v63)
          {
            v13 = v93;
            v65 = v2;
            v66 = v94;
            (*v91)(v93, v65, v94);
            v5 = v92;
            sub_1DEF386D8(v92, v13);
            v67 = v66;
            v2 = v95;
            (*v22)(v5, v67);
          }

          v23 &= v23 - 1;
          sub_1DEE273A0(v2, type metadata accessor for PairingRelationship);
        }

        while (1)
        {
          v64 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (v64 >= v1)
          {

            goto LABEL_57;
          }

          v23 = *(v89 + 8 * v64);
          ++v60;
          if (v23)
          {
            v60 = v64;
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v53 = *(v52 + 16);
      v54 = v94;
      v18 = v93;
      v55 = v92;
      if (v53)
      {
        v56 = v52 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v23 = *(v88 + 72);
        v57 = *(v88 + 16);
        do
        {
          v57(v18, v56, v54);
          sub_1DEF386D8(v55, v18);
          (*v22)(v55, v54);
          v56 += v23;
          --v53;
        }

        while (v53);
      }

LABEL_57:
      v68 = v109;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v68 + 24);
        ObjectType = swift_getObjectType();
        (*(v69 + 48))(v103, ObjectType, v69);
        swift_unknownObjectRelease();
      }

      v1 = v98;
      v2 = v107;
      v5 = v96;
      v13 = v90;
      v8 = v104;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v112);
      v1 = v98;
      v2 = v107;
    }
  }

  while (v8 != v5);

  sub_1DEE29594((v1 + 24), &v112);
  v71 = v2;
  v73 = v113;
  v72 = v114;
  __swift_project_boxed_opaque_existential_1(&v112, v113);
  (*(*(v72 + 16) + 136))(v71, v73);

  __swift_destroy_boxed_opaque_existential_1(&v112);
  v74 = v81[0];
  v75 = v84;
  *v81[0] = v84;
  v76 = v82;
  v85(v74, v86, v82);
  v77 = v75;
  LOBYTE(v75) = sub_1DEF8D7B8();
  result = v83(v74, v76);
  if (v75)
  {
    v78 = v1[63];
    v79 = v1[64];
    __swift_project_boxed_opaque_existential_1(v1 + 60, v78);
    v80 = *(v79 + 8);

    v80(sub_1DEEABE7C, v1, v78, v79);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE557F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E38, &unk_1DEF91750);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v1[29];
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  v19 = sub_1DEF8D7B8();
  result = (*(v12 + 8))(v16, v11);
  if (v19)
  {
    swift_beginAccess();
    sub_1DEE29594((v1 + 43), v34);
    v21 = v35;
    v22 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v23 = (*(v22 + 8))(v21, v22);
    v32 = v18;
    v33 = v23;
    v24 = sub_1DEF8DCF8();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E40, qword_1DEF93860);
    v30 = v2;
    sub_1DEE3C630();
    sub_1DEE1B548(&qword_1ECDE2D98, &qword_1ECDE3E40, qword_1DEF93860);
    sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630);
    sub_1DEF8D5D8();
    sub_1DEE171B4(v6, &qword_1ECDE3A60, &unk_1DEF90810);

    __swift_destroy_boxed_opaque_existential_1(v34);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v27 = v30;
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    sub_1DEE1B548(&qword_1ECDE2DF8, &qword_1ECDE3E38, &unk_1DEF91750);
    sub_1DEF8D5E8();

    (*(v31 + 8))(v10, v7);
    swift_beginAccess();
    sub_1DEF8D568();
    swift_endAccess();

    sub_1DEE29594((v1 + 43), v34);
    v28 = v35;
    v29 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v29 + 48))(v28, v29);
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE55CBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E18, &qword_1DEF91740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 232);
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  v19 = sub_1DEF8D7B8();
  result = (*(v12 + 8))(v16, v11);
  if (v19)
  {
    sub_1DEE17214(v1 + 424, &v28, &qword_1ECDE3BF0, &unk_1DEF938B0);
    if (v29)
    {
      sub_1DEE2F1AC(&v28, v30);
      v21 = v31;
      v22 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v23 = (*(v22 + 8))(v21, v22);
      v27[1] = v18;
      *&v28 = v23;
      v24 = sub_1DEF8DCF8();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      v27[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E20, &qword_1DEF91748);
      sub_1DEE3C630();
      sub_1DEE1B548(&qword_1ECDE3E28, &qword_1ECDE3E20, &qword_1DEF91748);
      sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630);
      sub_1DEF8D5D8();
      sub_1DEE171B4(v5, &qword_1ECDE3A60, &unk_1DEF90810);

      swift_allocObject();
      swift_weakInit();
      sub_1DEE1B548(&qword_1ECDE3E30, &qword_1ECDE3E18, &qword_1DEF91740);
      sub_1DEF8D5E8();

      (*(v7 + 8))(v10, v6);
      swift_beginAccess();
      sub_1DEF8D568();
      swift_endAccess();

      v25 = v31;
      v26 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v26 + 16))(v25, v26);
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      return sub_1DEE171B4(&v28, &qword_1ECDE3BF0, &unk_1DEF938B0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5615C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E08, &qword_1DEF91730);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v17 - v8;
  v10 = *(v0 + 544);

  v11 = sub_1DEEF0904();

  v19 = v11;
  v20 = *(v1 + 232);
  v12 = v20;
  v13 = sub_1DEF8DCF8();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E10, &qword_1DEF91738);
  sub_1DEE3C630();
  sub_1DEE1B548(&qword_1ECDE2DB8, &qword_1ECDE3E10, &qword_1DEF91738);
  sub_1DEE2BAF8(&qword_1ECDE2C08, sub_1DEE3C630);
  sub_1DEF8D5D8();
  sub_1DEE171B4(v5, &qword_1ECDE3A60, &unk_1DEF90810);

  sub_1DEE1B548(&qword_1ECDE2E18, &qword_1ECDE3E08, &qword_1DEF91730);

  v15 = v18;
  sub_1DEF8D5E8();

  (*(v6 + 8))(v9, v15);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();
}

uint64_t sub_1DEE5646C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v49 - v4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v49 - v15;
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + 232);
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1DEF8D7B8();
  (*(v17 + 8))(v21, v16);
  if (v22)
  {
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = sub_1DEF8D508();
  __swift_project_value_buffer(v24, qword_1ECDF6028);
  v25 = sub_1DEF8D4D8();
  v26 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DEE0F000, v25, v26, "Reconciling devices against AuthKit", v27, 2u);
    MEMORY[0x1E12CCD70](v27, -1, -1);
  }

  swift_beginAccess();
  sub_1DEE29594(v1 + 192, v51);
  v29 = v52;
  v28 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(*(v28 + 16) + 48))(v29);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v30 = *(v7 + 48);
  v31 = v30(v5, 1, v6);
  v32 = v49;
  if (v31 == 1)
  {
    sub_1DEF8D2B8();
    if (v30(v5, 1, v6) != 1)
    {
      sub_1DEE171B4(v5, &qword_1ECDE4DC0, &qword_1DEF91640);
    }
  }

  else
  {
    (*(v7 + 32))(v49, v5, v6);
  }

  sub_1DEF8D2E8();
  sub_1DEF8D348();
  v33 = sub_1DEF8D308();
  v34 = *(v7 + 8);
  v34(v10, v6);
  v34(v13, v6);
  if ((v33 & 1) == 0)
  {
LABEL_13:
    v44 = sub_1DEF8D4D8();
    v45 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "Too soon to reconcile devices against AuthKit";
LABEL_18:
      _os_log_impl(&dword_1DEE0F000, v44, v45, v47, v46, 2u);
      MEMORY[0x1E12CCD70](v46, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  sub_1DEE29594(v1 + 192, v51);
  v36 = v52;
  v35 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v37 = (*(*(*(v35 + 8) + 8) + 32))(v36);
  v38 = v37;
  v39 = *(v37 + 16);
  if (v39)
  {
    v40 = sub_1DEF2B350(*(v37 + 16), 0);
    v41 = *(type metadata accessor for PairingRelationship() - 8);
    sub_1DEF2D3FC(&v50, v40 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v39, v38);
    v43 = v42;
    sub_1DEE2774C();

    if (v43 != v39)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v51);
  v44 = sub_1DEF8D4D8();
  v45 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "No eligible devices for reconciliation against AuthKit";
    goto LABEL_18;
  }

LABEL_19:

  return (v34)(v32, v6);
}

void sub_1DEE56A48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 232);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1DEF8D7B8();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF6028);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Reconciling devices", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  sub_1DEE17214(v2 + 552, &v41, &qword_1ECDE3BF8, &unk_1DEF910B0);
  if (!v42)
  {
    goto LABEL_10;
  }

  sub_1DEE2F1AC(&v41, v44);
  swift_beginAccess();
  if ((*(v2 + 640) & 1) == 0)
  {
    v28 = a1 & ~*(v2 + 632);
    v29 = sub_1DEF8D4D8();
    v30 = sub_1DEF8DCB8();
    v31 = os_log_type_enabled(v29, v30);
    if (v28)
    {
      if (v31)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DEE0F000, v29, v30, "Device reconciliation already in process with insufficient options; updating options and abandoning", v33, 2u);
        MEMORY[0x1E12CCD70](v33, -1, -1);
      }

      v35 = sub_1DEE50B28();
      if ((*(v34 + 8) & 1) == 0 && (a1 & ~*v34) != 0)
      {
        *v34 |= a1;
      }

      (v35)(&v41, 0);
    }

    else
    {
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DEE0F000, v29, v30, "Device reconciliation already in process; abandoning", v32, 2u);
        MEMORY[0x1E12CCD70](v32, -1, -1);
      }
    }

    goto LABEL_26;
  }

  *(v2 + 632) = a1;
  *(v2 + 640) = 0;
  swift_beginAccess();
  sub_1DEE29594(v2 + 192, &v41);
  v17 = v42;
  v16 = v43;
  __swift_project_boxed_opaque_existential_1(&v41, v42);
  v18 = (*(*(*(v16 + 8) + 8) + 32))(v17);
  v19 = v18;
  v20 = *(v18 + 16);
  if (!v20)
  {

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v21 = sub_1DEF2B350(*(v18 + 16), 0);
  v22 = *(type metadata accessor for PairingRelationship() - 8);
  sub_1DEF2D3FC(&v40, v21 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v20, v19);
  v24 = v23;
  sub_1DEE2774C();
  if (v24 == v20)
  {
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v36 = v45;
    v37 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v38 = *(v37 + 8);

    v38(v21, sub_1DEEA8A10, v2, v36, v37);

LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(v44);
    return;
  }

  __break(1u);
LABEL_10:
  sub_1DEE171B4(&v41, &qword_1ECDE3BF8, &unk_1DEF910B0);
  v25 = sub_1DEF8D4D8();
  v26 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DEE0F000, v25, v26, "Cannot perform device reconciliation without a reconciler", v27, 2u);
    MEMORY[0x1E12CCD70](v27, -1, -1);
  }
}

uint64_t sub_1DEE56F88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v116 = v98 - v4;
  v5 = sub_1DEF8D378();
  v107 = *(v5 - 8);
  v6 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v100 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v98 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v111 = v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v110 = v98 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v114 = v98 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v106 = v98 - v18;
  v19 = sub_1DEF8D788();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v1[29];
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v19, v22);
  v26 = v25;
  LOBYTE(v25) = sub_1DEF8D7B8();
  v27 = (*(v20 + 8))(v24, v19);
  if ((v25 & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v99 = v26;
  v28 = v1[76];
  v29 = *(v28 + 24);
  MEMORY[0x1EEE9AC00](v27);
  v98[-2] = sub_1DEEACF98;
  v98[-1] = v28;

  os_unfair_lock_lock(v29 + 4);
  sub_1DEE3DEF0(v30);
  v98[1] = 0;
  os_unfair_lock_unlock(v29 + 4);

  if (qword_1ECDE2E58 != -1)
  {
LABEL_41:
    swift_once();
  }

  v31 = sub_1DEF8D508();
  v32 = __swift_project_value_buffer(v31, qword_1ECDF6028);

  v101 = v32;
  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v121[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1DEE12A5C(v1[66], v1[67], v121);
    _os_log_impl(&dword_1DEE0F000, v33, v34, "(%{public}s) Starting expiration timer", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E12CCD70](v36, -1, -1);
    MEMORY[0x1E12CCD70](v35, -1, -1);
  }

  v105 = v10;
  swift_beginAccess();
  v102 = v1;
  sub_1DEE29594((v1 + 24), v121);
  v38 = v122;
  v37 = v123;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  v39 = (*(*(*(v37 + 8) + 8) + 24))(v38);
  sub_1DEF8D2C8();
  v117 = v5;
  if ((v39 & 0xC000000000000001) != 0)
  {
    v40 = 0;
    v41 = 0;
    v5 = 0;
    v10 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(v39 + 32);
    v41 = ~v42;
    v40 = v39 + 64;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v5 = v44 & *(v39 + 64);
    v10 = v39;
  }

  v45 = v116;
  v104 = v39;

  v46 = 0;
  v103 = v41;
  v47 = (v41 + 64) >> 6;
  v115 = (v107 + 48);
  v112 = (v107 + 32);
  v113 = (v107 + 8);
  v109 = v40;
  v108 = v47;
  while (1)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      v53 = sub_1DEF8E0D8();
      if (!v53)
      {
        break;
      }

      v55 = v54;
      v119 = v53;
      type metadata accessor for Record.ID(0);
      swift_dynamicCast();
      v52 = v120;
      v119 = v55;
      type metadata accessor for RecordMetadata();
      swift_dynamicCast();
      v1 = v120;
      v50 = v46;
      v118 = v5;
      v45 = v116;
    }

    else
    {
      v48 = v46;
      v49 = v5;
      v50 = v46;
      if (!v5)
      {
        while (1)
        {
          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v50 >= v47)
          {
            goto LABEL_31;
          }

          v49 = *(v40 + 8 * v50);
          ++v48;
          if (v49)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_19:
      v118 = (v49 - 1) & v49;
      v51 = (v50 << 9) | (8 * __clz(__rbit64(v49)));
      v52 = *(*(v10 + 48) + v51);
      v1 = *(*(v10 + 56) + v51);
    }

    if (!v52)
    {
      break;
    }

    sub_1DEE17214(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v45, &qword_1ECDE4DC0, &qword_1DEF91640);
    v56 = v117;
    if ((*v115)(v45, 1, v117) == 1)
    {

      sub_1DEE171B4(v45, &qword_1ECDE4DC0, &qword_1DEF91640);
    }

    else
    {
      v57 = *v112;
      v58 = v110;
      (*v112)(v110, v45, v56);
      sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
      v59 = v10;
      v60 = v114;
      v61 = sub_1DEF8D8E8();

      if (v61)
      {
        v62 = v58;
      }

      else
      {
        v62 = v60;
      }

      if (v61)
      {
        v63 = v60;
      }

      else
      {
        v63 = v58;
      }

      (*v113)(v62, v56);
      v64 = v111;
      v65 = v63;
      v45 = v116;
      v57(v111, v65, v56);
      v66 = v60;
      v10 = v59;
      v40 = v109;
      v57(v66, v64, v56);
      v47 = v108;
    }

    v46 = v50;
    v5 = v118;
  }

LABEL_31:
  sub_1DEE2774C();
  v67 = v106;
  v68 = v117;
  (*v112)(v106, v114, v117);

  __swift_destroy_boxed_opaque_existential_1(v121);
  v69 = v105;
  sub_1DEF8D2C8();
  v70 = sub_1DEF8D308();
  v71 = *v113;
  (*v113)(v69, v68);
  if (v70)
  {
    v72 = v100;
    (*(v107 + 16))(v100, v67, v68);
    v73 = v102;

    v74 = sub_1DEF8D4D8();
    v75 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v121[0] = v77;
      *v76 = 136446466;
      *(v76 + 4) = sub_1DEE12A5C(v73[66], v73[67], v121);
      *(v76 + 12) = 2080;
      sub_1DEE2BAF8(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
      v78 = sub_1DEF8E2E8();
      v79 = v72;
      v81 = v80;
      v71(v79, v68);
      v82 = sub_1DEE12A5C(v78, v81, v121);

      *(v76 + 14) = v82;
      _os_log_impl(&dword_1DEE0F000, v74, v75, "(%{public}s) Expiration timer will fire at %s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v77, -1, -1);
      MEMORY[0x1E12CCD70](v76, -1, -1);
    }

    else
    {

      v71(v72, v68);
    }

    v89 = v73[76];

    sub_1DEF8D318();
    v91 = v90;
    v92 = swift_allocObject();
    v93 = swift_weakInit();
    v94 = *(v89 + 24);
    MEMORY[0x1EEE9AC00](v93);
    v98[-6] = v89;
    v98[-5] = v91;
    v98[-4] = v99;
    v98[-3] = sub_1DEEABE74;
    v98[-2] = v92;
    MEMORY[0x1EEE9AC00](v95);
    v98[-2] = sub_1DEEACFB0;
    v98[-1] = v96;

    os_unfair_lock_lock(v94 + 4);
    sub_1DEE3DEF0(v97);
    os_unfair_lock_unlock(v94 + 4);

    v71(v67, v68);
  }

  else
  {
    v83 = v102;

    v84 = sub_1DEF8D4D8();
    v85 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v121[0] = v87;
      *v86 = 136446210;
      *(v86 + 4) = sub_1DEE12A5C(v83[66], v83[67], v121);
      _os_log_impl(&dword_1DEE0F000, v84, v85, "(%{public}s) No records to expire", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x1E12CCD70](v87, -1, -1);
      MEMORY[0x1E12CCD70](v86, -1, -1);
    }

    return (v71)(v67, v68);
  }
}

uint64_t sub_1DEE57BEC()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v0 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v52 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v52 - v5;
  v6 = type metadata accessor for PairingRelationship();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v12 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    return v12;
  }

  v13 = Strong;
  swift_beginAccess();
  sub_1DEE29594(v13 + 192, v67);
  v15 = v68;
  v14 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v16 = (*(*(*(v14 + 8) + 8) + 32))(v15);
  v17 = sub_1DEE9EBC8(v16, sub_1DEE9F55C, sub_1DEE9F55C);

  __swift_destroy_boxed_opaque_existential_1(v67);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_21:

    return v12;
  }

  v52 = v13;
  v67[0] = v12;
  sub_1DEEC7DA4(0, v18, 0);
  v12 = v67[0];
  v19 = v17 + 64;
  v20 = -1 << *(v17 + 32);
  result = sub_1DEF8DE18();
  v22 = result;
  v23 = 0;
  v53 = v17 + 72;
  v58 = v10;
  v54 = v18;
  v55 = v17 + 64;
  v57 = v17;
  v56 = v7;
  while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v17 + 32))
  {
    v27 = v22 >> 6;
    if ((*(v19 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
    {
      goto LABEL_24;
    }

    v28 = *(v17 + 36);
    v63 = v23;
    v64 = v28;
    v29 = v62;
    v66 = v12;
    v30 = *(v62 + 48);
    v31 = *(v17 + 48);
    v32 = sub_1DEF8D3F8();
    v33 = *(v32 - 8);
    v34 = v33;
    v35 = v31 + *(v33 + 72) * v22;
    v36 = v59;
    (*(v33 + 16))(v59, v35, v32);
    v37 = *(v17 + 56);
    v65 = *(v7 + 72);
    sub_1DEEACA70(v37 + v65 * v22, &v36[v30], type metadata accessor for PairingRelationship);
    v38 = v60;
    (*(v34 + 32))(v60, v36, v32);
    v39 = &v36[v30];
    v40 = v58;
    sub_1DEEAB218(v39, v38 + *(v29 + 48), type metadata accessor for PairingRelationship);
    v41 = v61;
    sub_1DEE1BA88(v38, v61, &unk_1ECDE4350, &qword_1DEF93400);
    sub_1DEEAB218(v41 + *(v29 + 48), v40, type metadata accessor for PairingRelationship);
    v42 = v41;
    v12 = v66;
    (*(v34 + 8))(v42, v32);
    v67[0] = v12;
    v44 = *(v12 + 16);
    v43 = *(v12 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1DEEC7DA4(v43 > 1, v44 + 1, 1);
      v12 = v67[0];
    }

    *(v12 + 16) = v44 + 1;
    v7 = v56;
    result = sub_1DEEAB218(v40, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v44 * v65, type metadata accessor for PairingRelationship);
    v17 = v57;
    v24 = 1 << *(v57 + 32);
    if (v22 >= v24)
    {
      goto LABEL_25;
    }

    v19 = v55;
    v45 = *(v55 + 8 * v27);
    if ((v45 & (1 << v22)) == 0)
    {
      goto LABEL_26;
    }

    if (v64 != *(v57 + 36))
    {
      goto LABEL_27;
    }

    v46 = v45 & (-2 << (v22 & 0x3F));
    if (v46)
    {
      v24 = __clz(__rbit64(v46)) | v22 & 0x7FFFFFFFFFFFFFC0;
      v25 = v54;
      v26 = v63;
    }

    else
    {
      v47 = v27 << 6;
      v48 = v27 + 1;
      v49 = (v53 + 8 * v27);
      v25 = v54;
      while (v48 < (v24 + 63) >> 6)
      {
        v51 = *v49++;
        v50 = v51;
        v47 += 64;
        ++v48;
        if (v51)
        {
          result = sub_1DEE2F804(v22, v64, 0);
          v24 = __clz(__rbit64(v50)) + v47;
          goto LABEL_20;
        }
      }

      result = sub_1DEE2F804(v22, v64, 0);
LABEL_20:
      v26 = v63;
    }

    v23 = v26 + 1;
    v22 = v24;
    if (v23 == v25)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DEE581C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7DE8(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1DEF8DE18();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v9;
  v29 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v8;
    v12 = (*(v3 + 56) + 48 * v7);
    v13 = v12[1];
    v33 = v12[2];
    v34 = *v12;
    v14 = v3;
    v15 = v12[3];
    v31 = v12[5];
    v32 = v12[4];
    v16 = *(v35 + 16);
    v17 = *(v35 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_1DEEC7DE8((v17 > 1), v16 + 1, 1);
    }

    *(v35 + 16) = v16 + 1;
    v18 = (v35 + 48 * v16);
    v18[4] = v34;
    v18[5] = v13;
    v18[6] = v33;
    v18[7] = v15;
    v18[8] = v32;
    v18[9] = v31;
    v10 = 1 << *(v14 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v11);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v26 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1DEE2F804(v7, v28, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v7, v28, 0);
    }

LABEL_4:
    v8 = v30 + 1;
    v7 = v10;
    if (v30 + 1 == v27)
    {
      return v2;
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
  return result;
}

uint64_t sub_1DEE5844C(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, void, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1DEF8DE68();
    result = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
      return result;
    }

    v33 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    result = sub_1DEF8E028();
    v30 = result;
    v31 = v8;
    v32 = 1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return result;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  v9 = -1 << *(a1 + 32);
  result = sub_1DEF8DE18();
  v10 = *(a1 + 36);
  v30 = result;
  v31 = v10;
  v32 = 0;
LABEL_7:
  v11 = 0;
  v26 = v6;
  while (v11 < v6)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_20;
    }

    v18 = v30;
    v19 = v31;
    v20 = v32;
    a2(v29, v30, v31, v32, a1);

    sub_1DEF8DFB8();
    v21 = *(v33 + 16);
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (v27)
    {
      if (!v20)
      {
        goto LABEL_21;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v6 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v22 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      result = v22(v29, 0);
    }

    else
    {
      v12 = a3(v18, v19, v20, a1);
      v14 = v13;
      v16 = v15;
      result = sub_1DEE2F804(v18, v19, v20);
      v30 = v12;
      v31 = v14;
      v32 = v16 & 1;
      v6 = v26;
    }

    ++v11;
    if (v17 == v6)
    {
      sub_1DEE2F804(v30, v31, v32);
      return v33;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEE586BC(uint64_t a1)
{
  v37 = sub_1DEF8D3F8();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1DEF8DE18();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_1DEF8D398();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1DEEC7E08((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1DEE2F804(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1DEE2F804(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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
  }

  return result;
}

uint64_t sub_1DEE589C4(uint64_t a1)
{
  v1 = a1;
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DEF8DE68();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    result = sub_1DEF8E028();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  v5 = -1 << *(v1 + 32);
  result = sub_1DEF8DE18();
  v6 = *(v1 + 36);
  v23 = result;
  v24 = v6;
  v25 = 0;
LABEL_7:
  v7 = 0;
  v20 = v2;
  while (v7 < v2)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v14 = v23;
    v15 = v24;
    v16 = v25;
    sub_1DEF4163C(v22, v23, v24, v25, v1);

    v17 = v1;
    sub_1DEF8DFB8();
    v18 = *(v26 + 16);
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (v21)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E48, &qword_1DEF91768);
      v19 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      result = v19(v22, 0);
    }

    else
    {
      v8 = sub_1DEF41EBC(v14, v15, v16, v1);
      v10 = v9;
      v12 = v11;
      result = sub_1DEE2F804(v14, v15, v16);
      v23 = v8;
      v24 = v10;
      v25 = v12 & 1;
      v1 = v17;
      v2 = v20;
    }

    ++v7;
    if (v13 == v2)
    {
      sub_1DEE2F804(v23, v24, v25);
      return v26;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEE58C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7E08(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1DEF8DE18();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 56) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1DEEC7E08((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1DEE2F804(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1DEE58E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7E08(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1DEF8DE18();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1DEEC7E08((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1DEE2F804(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1DEE59098()
{
  v1 = v0;
  v2 = type metadata accessor for PairingRelationship();
  v261 = *(v2 - 8);
  v3 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v247 = &v223 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v263 = &v223 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v265 = &v223 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v260 = &v223 - v10;
  v269 = sub_1DEF8D3F8();
  v262 = *(v269 - 8);
  v11 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v259 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v223 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v223 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v240 = (&v223 - v22);
  v257 = type metadata accessor for DeviceDescriptor();
  v23 = *(*(v257 - 8) + 64);
  MEMORY[0x1EEE9AC00](v257);
  v246 = (&v223 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v241 = &v223 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v250 = &v223 - v28;
  v29 = sub_1DEF8D788();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v1 + 232);
  *v34 = v35;
  v36 = v30[13];
  v253 = *MEMORY[0x1E69E8020];
  v252 = v30 + 13;
  v248 = v36;
  v36(v34, v32);
  v37 = v35;
  LOBYTE(v35) = sub_1DEF8D7B8();
  v38 = v30[1];
  v249 = v34;
  v254 = v30 + 1;
  v251 = v38;
  result = (v38)(v34, v29);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (*(v1 + 472))
  {
    return result;
  }

  v239 = v29;
  v264 = v19;
  v41 = *(v1 + 176);
  v40 = *(v1 + 184);
  ObjectType = swift_getObjectType();
  v43 = (*(v40 + 16))(ObjectType, v40);
  if (!v44)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_10:
      v51 = sub_1DEF8D508();
      __swift_project_value_buffer(v51, qword_1ECDF6028);
      v52 = sub_1DEF8D4D8();
      v53 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1DEE0F000, v52, v53, "Delaying migration until we have a valid local device ID", v54, 2u);
        MEMORY[0x1E12CCD70](v54, -1, -1);
      }

      sub_1DEEA8774();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_60:
    swift_once();
    goto LABEL_10;
  }

  v45 = v44;
  v235 = v43;
  *(v1 + 472) = 1;
  swift_beginAccess();
  sub_1DEE29594(v1 + 192, &v266);
  v46 = v267;
  v47 = v268;
  __swift_project_boxed_opaque_existential_1(&v266, v267);
  v48 = (*(*(*(v47 + 8) + 8) + 8))(v46);
  v245 = v49;
  if (!v49)
  {
    __swift_destroy_boxed_opaque_existential_1(&v266);
    swift_beginAccess();
    v55 = *(v1 + 216);
    v56 = *(v1 + 224);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 192, v55);
    (*(*(v56 + 16) + 16))(v235, v45, v55);
    return swift_endAccess();
  }

  v50 = v48;
  __swift_destroy_boxed_opaque_existential_1(&v266);
  if (v50 == v235 && v245 == v45 || (sub_1DEF8E4E8() & 1) != 0)
  {
  }

  v57 = sub_1DEEAEE94();
  v236 = v50;
  if (v58)
  {
    v237 = v58;
    v255 = v57;
  }

  else
  {
    v59 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v60 = [v59 hostName];
    v255 = sub_1DEF8D948();
    v237 = v61;
  }

  v244 = v1;
  v62 = v249;
  v63 = v253;
  v64 = v248;
  if (qword_1ED786060 != -1)
  {
    v124 = v248;
    swift_once();
    v64 = v124;
  }

  v229 = *(&xmmword_1ED786068 + 1);
  v230 = xmmword_1ED786068;
  v65 = v244;
  v228 = *(v244 + 96);
  v232 = *(v244 + 120);
  v233 = *(v244 + 104);
  v227 = *(v244 + 136);
  v226 = *(v244 + 137);
  *v62 = v37;
  v66 = v63;
  v67 = v239;
  v68 = v64;
  v64(v62, v66, v239);
  v69 = v37;
  v70 = sub_1DEF8D7B8();
  v251(v62, v67);
  if ((v70 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  v231 = v45;
  v243 = v16;
  v242 = v2;
  swift_beginAccess();
  v71 = v65[30];

  v73 = v258;
  v256 = sub_1DEEA59EC(v72, v65);

  v234 = v69;
  *v62 = v69;
  v2 = v239;
  v68(v62, v253, v239);
  LOBYTE(v71) = sub_1DEF8D7B8();
  v251(v62, v2);
  if ((v71 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  swift_beginAccess();
  v74 = v65[83];

  v76 = sub_1DEEA4880(v75, v65, sub_1DEEA5DF0, sub_1DEEA5DF0);

  v238 = sub_1DEE581C8(v76);

  v77 = v65[81];
  v78 = v65[82];
  sub_1DEEA8818(v77, v78);
  v79 = 1;
  v225 = sub_1DEEAEE94();
  v224 = v80;
  v223 = sub_1DEEAEE94();
  v82 = v81;
  v83 = sub_1DEEAEFF8();
  if (v84 == 1)
  {
    v258 = v73;
  }

  else
  {
    v85 = v83;
    v86 = v84;
    sub_1DEEAD7B4(v83, v84, v240);
    if (v73)
    {

      v258 = 0;
    }

    else
    {
      v258 = 0;
      v79 = 0;
    }

    sub_1DEEA889C(v85, v86);
  }

  v87 = *(v262 + 56);
  v88 = v240;
  v89 = v79;
  v90 = v269;
  v87(v240, v89, 1, v269);
  v91 = v241;
  *(v241 + 72) = 0u;
  *(v91 + 56) = 0u;
  *(v91 + 44) = 256;
  *(v91 + 7) = xmmword_1DEF90FE0;
  v92 = *(v257 + 60);
  v87(&v91[v92], 1, 1, v90);
  v93 = v231;
  *v91 = v235;
  *(v91 + 1) = v93;
  v94 = v237;
  *(v91 + 2) = v255;
  *(v91 + 3) = v94;
  v95 = v229;
  *(v91 + 4) = v230;
  *(v91 + 5) = v95;
  v91[48] = v228;
  *(v91 + 72) = v232;
  *(v91 + 56) = v233;
  v91[88] = v227;
  v91[89] = v226;
  v97 = *(v91 + 14);
  v96 = *(v91 + 15);

  sub_1DEE2416C(v97, v96);
  *(v91 + 14) = v77;
  *(v91 + 15) = v78;
  v98 = v224;
  *(v91 + 16) = v225;
  *(v91 + 17) = v98;
  *(v91 + 18) = v223;
  *(v91 + 19) = v82;
  *(v91 + 20) = 0;
  *(v91 + 21) = 0;
  sub_1DEEA882C(v88, &v91[v92]);
  v2 = v256;
  if (!(v256 >> 62))
  {
    v99 = *((v256 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v99)
    {
LABEL_29:
      v100 = 0;
      v257 = v2 & 0xC000000000000001;
      v101 = v2 & 0xFFFFFFFFFFFFFF8;
      v102 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (v257)
        {
          v105 = MEMORY[0x1E12CB6E0](v100, v2);
          v106 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v100 >= *(v101 + 16))
          {
            goto LABEL_56;
          }

          v105 = *(v2 + 8 * v100 + 32);

          v106 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_55;
          }
        }

        v107 = *(v105 + 16);
        if ((v102 & 0xC000000000000001) != 0)
        {
          if (v102 < 0)
          {
            v108 = v102;
          }

          else
          {
            v108 = v102 & 0xFFFFFFFFFFFFFF8;
          }

          v109 = *(v105 + 16);

          v110 = sub_1DEF8DE68();
          if (__OFADD__(v110, 1))
          {
            goto LABEL_58;
          }

          v102 = sub_1DEEB0790(v108, v110 + 1);
        }

        else
        {
          v111 = *(v105 + 16);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v266 = v102;
        v113 = sub_1DEEAF20C(v107);
        v115 = *(v102 + 16);
        v116 = (v114 & 1) == 0;
        v117 = __OFADD__(v115, v116);
        v118 = v115 + v116;
        if (v117)
        {
          goto LABEL_57;
        }

        v119 = v114;
        if (*(v102 + 24) >= v118)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v123 = v113;
            sub_1DEEB753C();
            v113 = v123;
          }
        }

        else
        {
          sub_1DEEB0D00(v118, isUniquelyReferenced_nonNull_native);
          v113 = sub_1DEEAF20C(v107);
          if ((v119 & 1) != (v120 & 1))
          {
            goto LABEL_115;
          }
        }

        v2 = v256;
        v102 = v266;
        if (v119)
        {
          v103 = v266[7];
          v104 = *(v103 + 8 * v113);
          *(v103 + 8 * v113) = v105;
        }

        else
        {
          v266[(v113 >> 6) + 8] |= 1 << v113;
          *(*(v102 + 48) + 8 * v113) = v107;
          *(*(v102 + 56) + 8 * v113) = v105;

          v121 = *(v102 + 16);
          v117 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v117)
          {
            goto LABEL_59;
          }

          *(v102 + 16) = v122;
        }

        ++v100;
        if (v106 == v99)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_63:
  v99 = sub_1DEF8DE68();
  if (v99)
  {
    goto LABEL_29;
  }

LABEL_64:
  v102 = MEMORY[0x1E69E7CC8];
LABEL_65:

  *(v241 + 12) = v102;
  v125 = v238;
  v237 = *(v238 + 16);
  if (v237)
  {
    v126 = 0;
    v127 = (v238 + 72);
    v128 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v126 >= *(v125 + 16))
      {
        goto LABEL_111;
      }

      v255 = v126;
      v135 = *(v127 - 5);
      v134 = *(v127 - 4);
      v137 = *(v127 - 3);
      v136 = *(v127 - 2);
      v138 = *v127;
      v256 = *(v127 - 1);
      v257 = v138;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v266 = v128;
      v141 = sub_1DEEAF16C(v135, v134, v137, v136);
      v142 = v128[2];
      v143 = (v140 & 1) == 0;
      v144 = v142 + v143;
      if (__OFADD__(v142, v143))
      {
        goto LABEL_112;
      }

      v145 = v140;
      if (v128[3] >= v144)
      {
        if (v139)
        {
          v128 = v266;
          if (v140)
          {
            goto LABEL_67;
          }
        }

        else
        {
          sub_1DEEB7550();
          v128 = v266;
          if (v145)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        sub_1DEEB0D14(v144, v139);
        v146 = sub_1DEEAF16C(v135, v134, v137, v136);
        if ((v145 & 1) != (v147 & 1))
        {
          goto LABEL_116;
        }

        v141 = v146;
        v128 = v266;
        if (v145)
        {
LABEL_67:
          v129 = (v128[7] + 48 * v141);
          v130 = v129[1];
          v131 = v129[3];
          *v129 = v135;
          v129[1] = v134;
          v129[2] = v137;
          v129[3] = v136;
          v132 = v257;
          v129[4] = v256;
          v129[5] = v132;

          goto LABEL_68;
        }
      }

      v128[(v141 >> 6) + 8] |= 1 << v141;
      v148 = (v128[6] + 32 * v141);
      *v148 = v135;
      v148[1] = v134;
      v148[2] = v137;
      v148[3] = v136;
      v149 = (v128[7] + 48 * v141);
      *v149 = v135;
      v149[1] = v134;
      v149[2] = v137;
      v149[3] = v136;
      v150 = v257;
      v149[4] = v256;
      v149[5] = v150;
      v151 = v128[2];
      v117 = __OFADD__(v151, 1);
      v152 = v151 + 1;
      if (v117)
      {
        goto LABEL_114;
      }

      v128[2] = v152;
LABEL_68:
      v126 = v255 + 1;
      v127 += 6;
      v133 = v265;
      v125 = v238;
      if (v237 == v255 + 1)
      {
        goto LABEL_82;
      }
    }
  }

  v128 = MEMORY[0x1E69E7CC8];
  v133 = v265;
LABEL_82:
  sub_1DEE171B4(v240, &unk_1ECDE3E80, &unk_1DEF90970);

  v153 = v241;
  *(v241 + 13) = v128;
  sub_1DEEAB218(v153, v250, type metadata accessor for DeviceDescriptor);
  sub_1DEE29594(v244 + 192, &v266);
  v154 = v267;
  v155 = v268;
  __swift_project_boxed_opaque_existential_1(&v266, v267);
  v156 = (*(*(*(v155 + 8) + 8) + 32))(v154);
  __swift_destroy_boxed_opaque_existential_1(&v266);
  v158 = 0;
  v160 = v156 + 64;
  v159 = *(v156 + 64);
  v238 = v156;
  v161 = 1 << *(v156 + 32);
  v162 = -1;
  if (v161 < 64)
  {
    v162 = ~(-1 << v161);
  }

  v163 = v162 & v159;
  v256 = v133 + 8;
  v164 = (v161 + 63) >> 6;
  v257 = v262 + 16;
  v237 = v262 + 32;
  v240 = (v262 + 8);
  *&v157 = 136315650;
  v232 = v157;
  v165 = v264;
  v255 = v156 + 64;
  v241 = v164;
  while (v163)
  {
    v170 = v158;
LABEL_98:
    v173 = __clz(__rbit64(v163));
    v163 &= v163 - 1;
    v174 = v173 | (v170 << 6);
    v175 = v238;
    v176 = v262;
    v177 = v259;
    v178 = v269;
    (*(v262 + 16))(v259, *(v238 + 48) + *(v262 + 72) * v174, v269);
    v179 = v260;
    sub_1DEEACA70(*(v175 + 56) + *(v261 + 72) * v174, v260, type metadata accessor for PairingRelationship);
    v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v181 = *(v180 + 48);
    v182 = *(v176 + 32);
    v183 = v243;
    v182(v243, v177, v178);
    sub_1DEEAB218(v179, v183 + v181, type metadata accessor for PairingRelationship);
    (*(*(v180 - 8) + 56))(v183, 0, 1, v180);
    v165 = v264;
LABEL_99:
    sub_1DEE1BA88(v183, v165, &qword_1ECDE3C98, &unk_1DEF95610);
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v184 - 8) + 48))(v165, 1, v184) == 1)
    {

      v220 = v244;
      swift_beginAccess();
      v221 = *(v220 + 216);
      v222 = *(v220 + 224);
      __swift_mutable_project_boxed_opaque_existential_1(v220 + 192, v221);
      (*(*(v222 + 16) + 16))(v235, v231, v221);
      swift_endAccess();
      return sub_1DEE273A0(v250, type metadata accessor for DeviceDescriptor);
    }

    v185 = v265;
    sub_1DEEAB218(v165 + *(v184 + 48), v265, type metadata accessor for PairingRelationship);
    v186 = v242;
    if (*(v256 + v242[8]) == 2)
    {
      v187 = v263;
      (*v257)(v263, v185, v269);
      sub_1DEEACA70(v185 + v186[5], &v187[v186[5]], type metadata accessor for DeviceDescriptor);
      v188 = v186[6];
      v189 = sub_1DEF8D378();
      v190 = *(*(v189 - 8) + 16);
      v191 = v185;
      v190(&v187[v188], v185 + v188, v189);
      v190(&v187[v186[7]], v185 + v186[7], v189);
      v190(&v187[v186[9]], v185 + v186[9], v189);
      v192 = &v187[v186[8]];
      v193 = v245;
      *v192 = v236;
      *(v192 + 1) = v193;
      v194 = qword_1ECDE2E58;

      if (v194 != -1)
      {
        swift_once();
      }

      v195 = sub_1DEF8D508();
      __swift_project_value_buffer(v195, qword_1ECDF6028);
      v196 = v247;
      sub_1DEEACA70(v191, v247, type metadata accessor for PairingRelationship);
      v197 = v246;
      sub_1DEEACA70(v250, v246, type metadata accessor for DeviceDescriptor);

      v198 = sub_1DEF8D4D8();
      v199 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v198, v199))
      {
        v200 = swift_slowAlloc();
        *&v233 = swift_slowAlloc();
        v266 = v233;
        *v200 = v232;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v201 = sub_1DEF8E2E8();
        v202 = v196;
        v203 = v201;
        v205 = v204;
        sub_1DEE273A0(v202, type metadata accessor for PairingRelationship);
        v206 = sub_1DEE12A5C(v203, v205, &v266);

        *(v200 + 4) = v206;
        *(v200 + 12) = 2080;
        v207 = *v197;
        v208 = v197[1];

        sub_1DEE273A0(v197, type metadata accessor for DeviceDescriptor);
        v209 = sub_1DEE12A5C(v207, v208, &v266);

        *(v200 + 14) = v209;
        *(v200 + 22) = 2080;
        *(v200 + 24) = sub_1DEE12A5C(v236, v245, &v266);
        _os_log_impl(&dword_1DEE0F000, v198, v199, "Initiating migration for relationship %s. Current local ID: %s; stored local ID: %s", v200, 0x20u);
        v210 = v233;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v210, -1, -1);
        v211 = v200;
        v166 = v265;
        MEMORY[0x1E12CCD70](v211, -1, -1);
      }

      else
      {
        v166 = v191;

        sub_1DEE273A0(v197, type metadata accessor for DeviceDescriptor);
        sub_1DEE273A0(v196, type metadata accessor for PairingRelationship);
      }

      v160 = v255;
      sub_1DEE29594(v244 + 192, &v266);
      v167 = v267;
      v168 = v268;
      __swift_project_boxed_opaque_existential_1(&v266, v267);
      v169 = v263;
      (*(*(v168 + 16) + 112))(v263, v167);
      sub_1DEE273A0(v169, type metadata accessor for PairingRelationship);
      sub_1DEE273A0(v166, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(&v266);
    }

    else
    {
      v212 = v249;
      v213 = v234;
      *v249 = v234;
      v214 = v239;
      v248(v212, v253, v239);
      v215 = v213;
      LOBYTE(v213) = sub_1DEF8D7B8();
      v251(v212, v214);
      if ((v213 & 1) == 0)
      {
        goto LABEL_113;
      }

      v216 = v244;
      sub_1DEE67760(v185);
      sub_1DEE29594(v216 + 192, &v266);
      v217 = v267;
      v218 = v268;
      __swift_project_boxed_opaque_existential_1(&v266, v267);
      (*(*(v218 + 16) + 120))(v185, v217);
      __swift_destroy_boxed_opaque_existential_1(&v266);
      sub_1DEE273A0(v185, type metadata accessor for PairingRelationship);
      v160 = v255;
    }

    v165 = v264;
    (*v240)(v264, v269);
    v164 = v241;
  }

  if (v164 <= v158 + 1)
  {
    v171 = v158 + 1;
  }

  else
  {
    v171 = v164;
  }

  v172 = v171 - 1;
  while (1)
  {
    v170 = v158 + 1;
    if (__OFADD__(v158, 1))
    {
      break;
    }

    if (v170 >= v164)
    {
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      v183 = v243;
      (*(*(v219 - 8) + 56))(v243, 1, 1, v219);
      v163 = 0;
      v158 = v172;
      goto LABEL_99;
    }

    v163 = *(v160 + 8 * v170);
    ++v158;
    if (v163)
    {
      v158 = v170;
      goto LABEL_98;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  type metadata accessor for Zone.ID();
  sub_1DEF8E6E8();
  __break(1u);
LABEL_116:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t Replicator._queue_removePairingRelationship(relationship:)(uint64_t a1)
{
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 232);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    sub_1DEE67760(a1);
    swift_beginAccess();
    sub_1DEE29594(v1 + 192, v15);
    v12 = v16;
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(*(v13 + 16) + 120))(a1, v12);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DEE171B4(v0 + 56, &qword_1ECDE3C00, &qword_1DEF910C0);
  v1 = *(v0 + 144);

  v2 = *(v0 + 152);

  v3 = *(v0 + 160);

  v4 = *(v0 + 168);

  v5 = *(v0 + 176);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));

  v6 = *(v0 + 240);

  v7 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 384));
  sub_1DEE171B4(v0 + 424, &qword_1ECDE3BF0, &unk_1DEF938B0);
  v8 = *(v0 + 464);

  __swift_destroy_boxed_opaque_existential_1((v0 + 480));
  v9 = *(v0 + 520);

  v10 = *(v0 + 536);

  v11 = *(v0 + 544);

  sub_1DEE171B4(v0 + 552, &qword_1ECDE3BF8, &unk_1DEF910B0);
  v12 = *(v0 + 592);

  v13 = *(v0 + 600);

  v14 = *(v0 + 608);

  v15 = *(v0 + 616);

  sub_1DEE2416C(*(v0 + 648), *(v0 + 656));
  v16 = *(v0 + 664);

  v17 = *(v0 + 672);

  return v0;
}

uint64_t Replicator.__deallocating_deinit()
{
  Replicator.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall Replicator.set(messageTypes:)(Swift::OpaquePointer messageTypes)
{
  v3 = v1[29];
  v4 = swift_allocObject();
  v4[2]._rawValue = v1;
  v4[3]._rawValue = messageTypes._rawValue;

  sub_1DEE2C448(0xD000000000000014, 0x80000001DEF9BC80, v3, sub_1DEEA3EFC, v4, 0.0);
}

uint64_t sub_1DEE5ADD0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + 664);
  swift_beginAccess();
  v7 = *(a3 + 664);
  *(a3 + 664) = MEMORY[0x1E69E7CC8];

  v9 = *(a4 + 16);
  if (!v9)
  {
    return a1(v8);
  }

  v10 = (a4 + 72);
  v40 = v6;
  while (1)
  {
    v41 = v9;
    v17 = *(v10 - 5);
    v16 = *(v10 - 4);
    v19 = *(v10 - 3);
    v18 = *(v10 - 2);
    v20 = *(v10 - 1);
    v21 = *v10;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v22 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    v42 = *v6;
    *v6 = 0x8000000000000000;
    v25 = sub_1DEEAF16C(v17, v16, v19, v18);
    v27 = *(v24 + 16);
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (*(v24 + 24) < v30)
    {
      sub_1DEEB0D14(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1DEEAF16C(v17, v16, v19, v18);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v31)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v37 = v25;
    sub_1DEEB7550();
    v25 = v37;
    if (v31)
    {
LABEL_3:
      v11 = v25;

      v12 = v42;
      v13 = (v42[7] + 48 * v11);
      v14 = v13[1];
      v15 = v13[3];
      *v13 = v17;
      v13[1] = v16;
      v13[2] = v19;
      v13[3] = v18;
      v13[4] = v20;
      v13[5] = v21;

      goto LABEL_4;
    }

LABEL_11:
    v12 = v42;
    v42[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v42[6] + 32 * v25);
    *v33 = v17;
    v33[1] = v16;
    v33[2] = v19;
    v33[3] = v18;
    v34 = (v42[7] + 48 * v25);
    *v34 = v17;
    v34[1] = v16;
    v34[2] = v19;
    v34[3] = v18;
    v34[4] = v20;
    v34[5] = v21;
    v35 = v42[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    v42[2] = v36;
LABEL_4:
    v10 += 6;
    *v40 = v12;
    v6 = v40;
    v8 = swift_endAccess();
    v9 = v41 - 1;
    if (v41 == 1)
    {
      return a1(v8);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEE5B034(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v3 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;

  sub_1DEE2C448(0xD000000000000014, 0x80000001DEF9BC80, v4, sub_1DEEACD84, v5, 0.0);
}

uint64_t Replicator.isAllowListEnabled.getter()
{
  v1 = *(v0 + 232);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE5B148(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE24;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_291;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.isAllowListEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(v2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEA60B0;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_45;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5B400@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v7);
  v5 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  *a2 = (*(*(*(v4 + 8) + 8) + 40))(v5) & 1;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DEE5B4A0(char a1, void *a2)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF6028);
  v5 = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1DEE0F000, v5, v6, "Allow List state changed to enabled: %{BOOL,public}d", v7, 8u);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = a2[27];
  v9 = a2[28];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 24), v8);
  (*(*(v9 + 16) + 72))(a1 & 1, v8);
  v10 = a2[27];
  v11 = a2[28];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 24), v10);
  (*(*(v11 + 16) + 88))(MEMORY[0x1E69E7CD0], v10);
  swift_endAccess();
  v12 = a2[18];
  sub_1DEE29594((a2 + 24), v16);
  v13 = v17;
  v14 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(*(*(v14 + 8) + 8) + 32))(v13);
  sub_1DEF8D588();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void (*Replicator.isAllowListEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 232);
  sub_1DEF8DD18();
  v4[64] = *v4;
  return sub_1DEE5B748;
}

void sub_1DEE5B748(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1DEEACE24;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_58;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DEEACE24;
  *(v11 + 24) = v10;
  v2[4] = sub_1DEE46D40;
  v2[5] = v11;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_69;
  v12 = _Block_copy(v2);
  v13 = v2[5];

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t Replicator.allowList.getter()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE5BA40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  result = sub_1DEF8DD18();
  *a2 = v5;
  return result;
}

uint64_t sub_1DEE5BABC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE28;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_279;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.allowList.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEA60D8;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_79;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5BD7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v7);
  v5 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  *a2 = (*(*(*(v4 + 8) + 8) + 48))(v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DEE5BE18(uint64_t a1, void *a2)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v3 = sub_1DEF8D508();
  __swift_project_value_buffer(v3, qword_1ECDF6028);

  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136446210;
    sub_1DEF8D3F8();
    sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    v8 = sub_1DEF8DBF8();
    v10 = sub_1DEE12A5C(v8, v9, v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "Allow List updated: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12CCD70](v7, -1, -1);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  swift_beginAccess();
  v11 = a2[27];
  v12 = a2[28];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 24), v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 88);

  v14(v15, v11, v13);
  swift_endAccess();
  v16 = a2[18];
  sub_1DEE29594((a2 + 24), v20);
  v17 = v21;
  v18 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(*(*(v18 + 8) + 8) + 32))(v17);
  sub_1DEF8D588();

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

void (*Replicator.allowList.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return sub_1DEE5C140;
}

void sub_1DEE5C140(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1DEEACE28;
    *(v14 + 24) = v13;
    v2[4] = sub_1DEE46D40;
    v2[5] = v14;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_102;
    v15 = _Block_copy(v2);
    v16 = v2[5];

    dispatch_sync(v5, v15);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEEACE28;
  *(v8 + 24) = v7;
  v2[4] = sub_1DEE46D40;
  v2[5] = v8;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_91;
  v9 = _Block_copy(v2);
  v10 = v2[5];

  dispatch_sync(v5, v9);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = *v4;

LABEL_5:

  free(v2);
}

uint64_t sub_1DEE5C3F4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE24;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_446;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1DEE5C550(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  v6 = *(v5 + 232);
  sub_1DEF8DD18();
  v4[56] = *v4;
  return sub_1DEE5C600;
}

void sub_1DEE5C600(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  isEscapingClosureAtFileLocation = *(v3 + 232);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v4 = v7;
    *(v7 + 16) = sub_1DEEACE24;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_424;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DEEACE24;
  *(v11 + 24) = v10;
  v2[4] = sub_1DEE46D40;
  v2[5] = v11;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_435;
  v12 = _Block_copy(v2);
  v13 = v2[5];

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1DEE5C888()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE5C8FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE28;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_410;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1DEE5CA54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 56) = *v1;
  v5 = *(v4 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C08, &qword_1DEF910C8);
  sub_1DEF8DD18();
  return sub_1DEE5CB10;
}

void sub_1DEE5CB10(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v5 = *(*a1 + 56);
  v6 = *(v5 + 232);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v5;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1DEEACE28;
    *(v14 + 24) = v13;
    v2[4] = sub_1DEE46D40;
    v2[5] = v14;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_399;
    v15 = _Block_copy(v2);
    v16 = v2[5];

    dispatch_sync(v6, v15);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEEACE28;
  *(v8 + 24) = v7;
  v2[4] = sub_1DEE46D40;
  v2[5] = v8;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_388;
  v9 = _Block_copy(v2);
  v10 = v2[5];

  dispatch_sync(v6, v9);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = *v4;

LABEL_5:

  free(v2);
}

uint64_t Replicator.pairingRelationships(filter:)(uint64_t *a1)
{
  v2 = *(v1 + 232);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C10, &unk_1DEF910D0);
  sub_1DEF8DD18();
  return v5;
}

uint64_t sub_1DEE5CE2C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    sub_1DEE29594(a2 + 192, v12);
    v9 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(*(*(v8 + 8) + 8) + 32))(v9);
    v7 = sub_1DEE9EEA4(v10, sub_1DEE9F014, sub_1DEE9F014);
  }

  else
  {
    swift_beginAccess();
    sub_1DEE29594(a2 + 192, v12);
    v6 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(*(*(v5 + 8) + 8) + 32))(v6);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v12);
  *a3 = v7;
  return result;
}

uint64_t Replicator.pairingRelationship(relationshipID:)()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  return sub_1DEF8DD18();
}

uint64_t sub_1DEE5CFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  MetadataStoring.pairingRelationship(relationshipID:)(a2, v6, *(v7 + 8), a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t Replicator.pairingRelationship(remoteDeviceID:)()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  return sub_1DEF8DD18();
}

uint64_t Replicator.resolveProtocolVersion(for:)()
{
  v1 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C20, &qword_1DEF910E0);
  sub_1DEF8DD18();
  return v3;
}

unint64_t sub_1DEE5D178(uint64_t a1)
{
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 232);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  v11 = sub_1DEF8D7B8();
  (*(v4 + 8))(v8, v3);
  if (v11)
  {
    a1 += *(type metadata accessor for PairingRelationship() + 20);
    v11 = *(a1 + 40);
    if (qword_1ED786060 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = *(&xmmword_1ED786068 + 1);
  v12 = xmmword_1ED786068;
  if (*(&xmmword_1ED786068 + 1) <= v11)
  {
    v13 = v11;
  }

  if (xmmword_1ED786068 >= *(a1 + 32))
  {
    v12 = *(a1 + 32);
  }

  if (v12 >= v13)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE5D33C(uint64_t *a1)
{
  v2 = *(*v1 + 232);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C10, &unk_1DEF910D0);
  sub_1DEF8DD18();
  return v5;
}

uint64_t sub_1DEE5D3B8()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  return sub_1DEF8DD18();
}

uint64_t sub_1DEE5D430()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C20, &qword_1DEF910E0);
  sub_1DEF8DD18();
  return v3;
}

uint64_t Replicator.unavailable(relationshipID:)(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = *(v1 + 232);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DEEA6130;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_112;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t Replicator.pair(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DeviceDescriptor();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 232);
  sub_1DEEACA70(a1, v10, type metadata accessor for DeviceDescriptor);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1DEEAB218(v10, v14 + v12, type metadata accessor for DeviceDescriptor);
  *(v14 + v13) = v3;
  v15 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DEEA615C;
  *(v16 + 24) = v14;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_122;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v11, v17);
  _Block_release(v17);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE5D938(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 48);
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  v7 = 0xE300000000000000;
  v8 = 6578544;
  v9 = 0xE500000000000000;
  v10 = 0x6863746177;
  if (v4 != 4)
  {
    v10 = 30324;
    v9 = 0xE200000000000000;
  }

  if (v4 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE300000000000000;
  v12 = 6513005;
  if (v4 != 1)
  {
    v12 = 0x656E6F6870;
    v11 = 0xE500000000000000;
  }

  if (*(a1 + 48))
  {
    v6 = v12;
    v5 = v11;
  }

  if (*(a1 + 48) <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (*(a1 + 48) <= 2u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6028);

  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v26);
    *(v22 + 12) = 2082;
    v24 = sub_1DEE12A5C(v13, v14, &v26);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "(%{public}s) [Replicator.pair()] performing immediate pairing with unknown device of type %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v23, -1, -1);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  else
  {
  }

  sub_1DEEA7504(a1, a2, a3, a4);
}

uint64_t sub_1DEE5DBB0(uint64_t a1, int64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return 0x6576697463616E69;
      }

      goto LABEL_8;
    }

    return 0x646572696170;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return 0x676E6972696170;
      }

LABEL_8:
      MEMORY[0x1E12CB180]();
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      sub_1DEE4F8D4(a1, a2);
      return 0x6E6974617267696DLL;
    }

    return 0x6375646F72746E69;
  }
}

uint64_t Replicator.pair(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 232);
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DEEA61F8;
  *(v12 + 24) = v11;
  v15[4] = sub_1DEE46D40;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DEE134F4;
  v15[3] = &block_descriptor_132;
  v13 = _Block_copy(v15);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE5DE34(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v10 = sub_1DEF8D508();
  __swift_project_value_buffer(v10, qword_1ECDF6028);

  v11 = sub_1DEF8D4D8();
  v12 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1DEE12A5C(*(a1 + 528), *(a1 + 536), &v15);
    _os_log_impl(&dword_1DEE0F000, v11, v12, "(%{public}s) [Replicator.pair()] performing immediate pairing with known device", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12CCD70](v14, -1, -1);
    MEMORY[0x1E12CCD70](v13, -1, -1);
  }

  sub_1DEE5E6FC(a2, a3, a4, a5);
}

void sub_1DEE5DFB0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1DEF8D698();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D6D8();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a3[29];
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14, v17);
  v21 = v20;
  v22 = sub_1DEF8D7B8();
  (*(v15 + 8))(v19, v14);
  if (v22)
  {
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = sub_1DEF8D508();
  __swift_project_value_buffer(v23, qword_1ECDF6028);

  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DCB8();

  v26 = os_log_type_enabled(v24, v25);
  v59 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v62 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1DEE12A5C(a1, a2, &v62);
    _os_log_impl(&dword_1DEE0F000, v24, v25, "Pairing with device: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1E12CCD70](v28, -1, -1);
    MEMORY[0x1E12CCD70](v27, -1, -1);
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  sub_1DEE8E124(a3, a1, a2, &v62, nullsub_1, 0, aBlock);
  v29 = aBlock[0];
  if (LOBYTE(aBlock[0]) != 8)
  {
    sub_1DEE46550(v62, *(&v62 + 1));
    v38 = swift_allocObject();
    *(v38 + 16) = nullsub_1;
    *(v38 + 24) = 0;
    *(v38 + 32) = v29;
    aBlock[4] = sub_1DEEAAEAC;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_616;
    v39 = _Block_copy(aBlock);
    sub_1DEF8D6B8();
    v60 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v40 = v58;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v13, v9, v39);
    _Block_release(v39);
    (*(v57 + 8))(v9, v40);
    (*(v55 + 8))(v13, v56);
    goto LABEL_9;
  }

  v30 = *(&v62 + 1);
  if (*(&v62 + 1))
  {
    v32 = *(&v64 + 1);
    v31 = v65;
    v34 = *(&v63 + 1);
    v33 = v64;
    v35 = v63;
    v36 = v62;
    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    *(v37 + 24) = v36;
    *(v37 + 32) = v30;
    *(v37 + 40) = v35;
    *(v37 + 48) = v34;
    *(v37 + 56) = v33;
    *(v37 + 57) = aBlock[0];
    *(v37 + 60) = *(aBlock + 3);
    *(v37 + 64) = v32;
    *(v37 + 72) = v31;

    sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9C1D0, v59, sub_1DEEAAEA8, v37, 0.0);
LABEL_9:

    return;
  }

  v41 = a1;

  v42 = sub_1DEF8D4D8();
  v43 = sub_1DEF8DC98();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315394;
    v46 = a3[32];
    if (v46)
    {
      v47 = a3[31];
      v48 = v46;
    }

    else
    {
      v49 = a3[22];
      v50 = a3[23];
      ObjectType = swift_getObjectType();
      v52 = (*(v50 + 16))(ObjectType, v50);
      if (v53)
      {
        v47 = v52;
      }

      else
      {
        v47 = 0xD000000000000016;
      }

      if (v53)
      {
        v48 = v53;
      }

      else
      {
        v48 = 0x80000001DEF9BCA0;
      }
    }

    v54 = sub_1DEE12A5C(v47, v48, aBlock);

    *(v44 + 4) = v54;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1DEE12A5C(v41, a2, aBlock);
    _os_log_impl(&dword_1DEE0F000, v42, v43, "%s Cannot pair with a device that has no handshakeDescriptor: %s, privacy: .public)", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v45, -1, -1);
    MEMORY[0x1E12CCD70](v44, -1, -1);
  }

  else
  {
  }
}