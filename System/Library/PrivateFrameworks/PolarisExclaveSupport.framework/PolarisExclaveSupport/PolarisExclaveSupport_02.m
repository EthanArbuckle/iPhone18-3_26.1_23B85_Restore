uint64_t sub_25EC69FC0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EC681FC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25EC69218();
      goto LABEL_12;
    }

    sub_25EC69884(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25EC4F4D0(&qword_27FD361A8);
  v15 = sub_25EC7A014();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25EC4F4D0(&qword_27FD361B8);
      v23 = sub_25EC7A024();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EC7A254();
  __break(1u);
  return result;
}

uint64_t sub_25EC6A244(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_25EC79754();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EC6854C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25EC69458();
      goto LABEL_12;
    }

    sub_25EC69B94(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25EC69094(&qword_27FD36348);
  v15 = sub_25EC7A014();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25EC69094(&qword_27FD36350);
      v23 = sub_25EC7A024();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EC7A254();
  __break(1u);
  return result;
}

uint64_t sub_25EC6A4C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8CB8F0](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25EC68894(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25EC6A534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25EC4F4D0(&qword_27FD361A8);
  result = MEMORY[0x25F8CB8F0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_25EC6897C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

id PolarisExclaveSupportWrapper.init(daemon:)(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_25EC79E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_log;
  sub_25EC79E74();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      type metadata accessor for PolarisExclaveSupport.Service();
      sub_25EC6B414();
      sub_25EC7A004();

      *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_tbClient) = v29;
      (*(v4 + 16))(v11, v1 + v12, v3);
      v19 = sub_25EC79E64();
      v20 = sub_25EC7A0E4();
      if (os_log_type_enabled(v19, v20))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_25EC46000, v19, v20, "Created Tightbeam client", v22, 2u);
        MEMORY[0x25F8CBF90](v22, -1, -1);
      }

      (*(v4 + 8))(v11, v3);
      v23 = type metadata accessor for PolarisExclaveSupportWrapper();
      v28.receiver = v2;
      v28.super_class = v23;
      return objc_msgSendSuper2(&v28, sel_init, v27);
    }

    else
    {

      (*(v4 + 16))(v9, v1 + v12, v3);
      v16 = sub_25EC79E64();
      v17 = sub_25EC7A0E4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_25EC46000, v16, v17, "Exclave capability is not enabled", v18, 2u);
        MEMORY[0x25F8CBF90](v18, -1, -1);
      }

      v24 = *(v4 + 8);
      v24(v9, v3);
      v24(v2 + v12, v3);
      type metadata accessor for PolarisExclaveSupportWrapper();
      v25 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
      v26 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PolarisExclaveSupportWrapper()
{
  result = qword_27FD36378;
  if (!qword_27FD36378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25EC6AB98(int a1)
{
  v2 = v1;
  v4 = sub_25EC79E64();
  v5 = sub_25EC7A0E4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_25EC46000, v4, v5, "Sending loopback request over Tightbeam with taskid %u", v6, 8u);
    MEMORY[0x25F8CBF90](v6, -1, -1);
  }

  v7 = *(v2 + OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_tbClient);

  v8 = sub_25EC749A8(a1);

  return v8;
}

uint64_t sub_25EC6AD1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v8 = *a2;
  v9 = *a3;
  v10 = sub_25EC79E64();
  v11 = sub_25EC7A0E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_25EC46000, v10, v11, "Sending runClientFunc request over Tightbeam with taskid %llu ", v12, 0xCu);
    MEMORY[0x25F8CBF90](v12, -1, -1);
  }

  v13 = *(v5 + OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_tbClient);
  v17 = v8;
  v16 = v9;

  sub_25EC74E50(&v17, &v16, &v15);

  *a4 = v15;
  return result;
}

uint64_t sub_25EC6AEC8(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25EC79E64();
  v9 = sub_25EC7A0E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109632;
    *(v10 + 4) = a1;
    *(v10 + 8) = 1024;
    *(v10 + 10) = a2;
    *(v10 + 14) = 2048;
    *(v10 + 16) = a3;
    _os_log_impl(&dword_25EC46000, v8, v9, "Sending sharedDependenciesMet request over Tightbeam with graphId %u, senderId %u, frameId %llu", v10, 0x18u);
    MEMORY[0x25F8CBF90](v10, -1, -1);
  }

  v11 = *(v4 + OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_tbClient);

  v12 = sub_25EC7546C(a1, a2, a3);

  return v12;
}

uint64_t sub_25EC6B07C()
{
  v1 = v0;
  v2 = sub_25EC79E64();
  v3 = sub_25EC7A0E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25EC46000, v2, v3, "Sending runTasks request over Tightbeam", v4, 2u);
    MEMORY[0x25F8CBF90](v4, -1, -1);
  }

  v5 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport28PolarisExclaveSupportWrapper_tbClient);

  v6 = sub_25EC75934();

  return v6;
}

uint64_t sub_25EC6B1E4()
{
  v0 = sub_25EC79D34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25EC79D04();
  v5 = sub_25EC79D24();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id PolarisExclaveSupportWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PolarisExclaveSupportWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PolarisExclaveSupportWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25EC6B414()
{
  result = qword_27FD36370;
  if (!qword_27FD36370)
  {
    type metadata accessor for PolarisExclaveSupport.Service();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36370);
  }

  return result;
}

uint64_t sub_25EC6B474()
{
  result = sub_25EC79E84();
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

Swift::Bool __swiftcall PolarisGSTServiceHandle.deregisterSender(senderId:)(Swift::UInt32 senderId)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = *(v2 + 16);
  v5 = sub_25EC799D4();
  v6 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v6 + 16));
  swift_endAccess();

  return v5 & 1;
}

Swift::Bool __swiftcall PolarisGSTServiceHandle.sendTrigger(senderId:frameId:)(Swift::UInt32 senderId, Swift::UInt64 frameId)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  v5 = *(v3 + 16);
  v6 = sub_25EC799F4();
  v7 = *(v3 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v7 + 16));
  swift_endAccess();

  return v6 & 1;
}

uint64_t PolarisGSTServiceHandle.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for GSTService();
  swift_allocObject();
  *(v0 + 16) = GSTService.init()();
  return v0;
}

uint64_t PolarisGSTServiceHandle.init()()
{
  type metadata accessor for GSTService();
  swift_allocObject();
  *(v0 + 16) = GSTService.init()();
  return v0;
}

uint64_t PolarisGSTServiceHandle.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PolarisGSTServiceHandle.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PolarisWorkHandler.__allocating_init(clients:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t PolarisWorkHandler.init(clients:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t PolarisWorkHandler.messageConsume(senderId:metadata:)(int a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25EC7A890;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000018, 0x800000025EC80E00);
  MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC817D0);
  sub_25EC7A164();
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  v9 = *(v2 + 16);
  if (*(v9 + 16) && (v10 = sub_25EC4CDB4(v5), (v11 & 1) != 0))
  {
    v12 = *(*(*(v9 + 56) + 8 * v10) + 16);

    if (sub_25EC5B138(v6, a1))
    {
      v13 = *(v3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_25EC50FAC(0, *(v13 + 2) + 1, 1, v13);
        *(v3 + 24) = v13;
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      if (v16 >= v15 >> 1)
      {
        v13 = sub_25EC50FAC((v15 > 1), v16 + 1, 1, v13);
      }

      *(v13 + 2) = v16 + 1;
      *&v13[4 * v16 + 32] = v5;
      *(v3 + 24) = v13;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    return v17;
  }

  else
  {
    sub_25EC7A144();

    v19 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v19);

    result = sub_25EC7A174();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PolarisWorkHandler.workerEntry()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25EC7A890;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000024;
  *(v1 + 40) = 0x800000025EC818A0;
  sub_25EC7A2B4();

  v3 = *(v0 + 24);
  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 32);
  sub_25EC4F384(0, 1);
  v5 = *(v0 + 16);
  if (!*(v5 + 16) || (v6 = sub_25EC4CDB4(v4), (v7 & 1) == 0))
  {
    while (1)
    {
      sub_25EC7A144();

      v17 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v17);

LABEL_14:
      sub_25EC7A174();
      __break(1u);
    }
  }

  v8 = *(*(*(v5 + 56) + 8 * v6) + 16);
  if (*(v8 + 40))
  {
    v9 = *(v8 + 40);
LABEL_8:
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25EC7A890;
    *(v11 + 56) = v2;
    *(v11 + 32) = 0xD000000000000034;
    *(v11 + 40) = 0x800000025EC80E90;

    sub_25EC7A2B4();

    v12 = *(v9 + 24);

    swift_beginAccess();
    for (i = *(v12 + 16); i[2]; i = *(v12 + 16))
    {
      swift_beginAccess();
      v14 = i[4];
      v15 = i[5];

      sub_25EC4E8E0(0, 1);
      swift_endAccess();
      sub_25EC48C0C(v15);
    }

    return;
  }

  v10 = *(v8 + 16);
  if (v10)
  {
    v9 = *(v10 + 32);

    goto LABEL_8;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25EC7A890;
  *(v16 + 56) = v2;
  *(v16 + 32) = 0xD000000000000038;
  *(v16 + 40) = 0x800000025EC80CE0;

  sub_25EC7A2B4();
}

uint64_t PolarisWorkHandler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PolarisWorkHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t PSWriterM3Demo.__allocating_init(resourceID:pbsManager:entrySize:bufferConfig:)(unint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return PSWriterM3Demo.init(resourceID:pbsManager:entrySize:bufferConfig:)(a1, a2, a3, a4);
}

PolarisExclaveSupport::PSWriterM3DemoState_optional __swiftcall PSWriterM3DemoState.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25EC6C290()
{
  v1 = *v0;
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC6C304()
{
  v1 = *v0;
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC6C39C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
}

uint64_t sub_25EC6C404@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
}

uint64_t sub_25EC6C454(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

uint64_t sub_25EC6C4FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_25EC6C564()
{
  v1 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_25EC6C5AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PSWriterM3Demo.init(resourceID:pbsManager:entrySize:bufferConfig:)(unint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v5 = v4;
  v33 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v32 = sub_25EC79CC4();
  v34 = *(v32 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v12 = a4[1];
  v13 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
  *(v4 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter) = 0;
  v14 = a4[2];
  *(v4 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource) = 0;
  if (HIDWORD(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25EC7A890;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = 0xD000000000000045;
    *(v15 + 40) = 0x800000025EC81A20;
    sub_25EC7A2B4();

    v17 = *(v4 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter);

    v18 = *(v4 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource);

    type metadata accessor for PSWriterM3Demo();
    v19 = *(*v4 + 48);
    v20 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    v5 = 0;
  }

  else
  {
    type metadata accessor for PolarisMutex();
    v16 = swift_allocObject();
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 16) = 0u;
    v38.__sig = 0;
    *v38.__opaque = 0;
    pthread_mutexattr_init(&v38);
    swift_beginAccess();
    pthread_mutex_init((v16 + 16), &v38);
    swift_endAccess();
    pthread_mutexattr_destroy(&v38);
    *(v4 + 24) = 0;
    *(v4 + 32) = v16;

    sub_25EC79C84();
    (*(v34 + 32))(v4 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_resource, v10, v32);
    *(v4 + 16) = a1;
    v23 = sub_25EC79DD4();
    swift_beginAccess();
    v24 = *(v5 + v13);
    *(v5 + v13) = v23;

    v25 = sub_25EC79864();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    *(v5 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_triggerSender) = sub_25EC79844();
    swift_beginAccess();
    *(v5 + 24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_25EC7A890;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC819C0);
    v35 = a1;
    v29 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v29);

    MEMORY[0x25F8CB870](0xD000000000000019, 0x800000025EC81A00);
    v30 = v36;
    v31 = v37;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    sub_25EC7A2B4();
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t type metadata accessor for PSWriterM3Demo()
{
  result = qword_27FD363A8;
  if (!qword_27FD363A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_25EC6CC64()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v2 + 16));
  swift_endAccess();

  v3 = *(v1 + 24);
  if (v3 == 1)
  {
    *(v1 + 24) = 0;
    v4 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
    swift_beginAccess();
    v5 = *(v1 + v4);
    *(v1 + v4) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD00000000000004DLL, 0x800000025EC81A70);
    v9 = *(v1 + 24);
    sub_25EC7A164();
    MEMORY[0x25F8CB870](46, 0xE100000000000000);
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    sub_25EC7A2B4();
  }

  v6 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v6 + 16));
  swift_endAccess();

  return v3 == 1;
}

uint64_t sub_25EC6CE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v7 = sub_25EC79874();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  v12 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v12 + 16));
  swift_endAccess();

  if (*(v5 + 24) != 1)
  {
    v17 = *MEMORY[0x277D3E750];
    v18 = sub_25EC79764();
    (*(*(v18 - 8) + 104))(a1, v17, v18);
    sub_25EC6D35C();
    swift_willThrowTypedImpl();
    goto LABEL_6;
  }

  *(v5 + 24) = 2;
  v13 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
  swift_beginAccess();
  if (!*(v5 + v13))
  {
    goto LABEL_18;
  }

  v14 = sub_25EC79E44();
  if (v3)
  {

    *(v5 + 24) = 1;
    v15 = *MEMORY[0x277D3E758];
    v16 = sub_25EC79764();
    (*(*(v16 - 8) + 104))(a1, v15, v16);
    sub_25EC6D35C();
    swift_willThrowTypedImpl();
    MEMORY[0x25F8CBE40](v3);
LABEL_6:
    v19 = *(v5 + 32);
    swift_beginAccess();

    pthread_mutex_unlock((v19 + 16));
    swift_endAccess();
  }

  v21 = v14;

  v22 = *(v5 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource);
  *(v5 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource) = v21;

  v23 = sub_25EC79E04();

  v43 = a2;
  if ((v23 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8CB970](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v24 = *(v23 + 32);
  }

  v25 = sub_25EC79E14();
  v27 = v26;
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    *v11 = v25;
    v11[1] = v27;
    (*(v8 + 104))(v11, *MEMORY[0x277D3E780], v7);
    v30 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_resource;
    swift_beginAccess();
    v31 = sub_25EC79C94();
    v33 = v32;
    v34 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_25EC6D9CC(v34);
      *v33 = v34;
    }

    v36 = v43;
    if (v34[2])
    {
      v37 = *(sub_25EC798D4() - 8);
      v38 = v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      sub_25EC798B4();
      v31(v42, 0);
      swift_endAccess();
      *(v5 + 24) = 3;
      v39 = sub_25EC79CC4();
      (*(*(v39 - 8) + 16))(v36, v5 + v30, v39);
      v40 = *(v5 + 32);
      swift_beginAccess();

      pthread_mutex_unlock((v40 + 16));
      swift_endAccess();
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  result = sub_25EC7A174();
  __break(1u);
  return result;
}

unint64_t sub_25EC6D35C()
{
  result = qword_27FD36398;
  if (!qword_27FD36398)
  {
    sub_25EC79764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36398);
  }

  return result;
}

uint64_t sub_25EC6D3B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v5 + 16));
  swift_endAccess();

  if (*(v2 + 24) == 3 && (v6 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource, *(v2 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource)))
  {
    *(v2 + 24) = 6;
    v7 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
    result = swift_beginAccess();
    v9 = v2;
    if (!*(v2 + v7))
    {
      __break(1u);
      return result;
    }

    sub_25EC79E54();
    if (!v3)
    {

      v16 = *(v2 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_triggerSender);
      sub_25EC79834();

      v17 = *(v9 + v6);
      *(v9 + v6) = 0;

      *(v9 + 24) = 1;
      v18 = *(v9 + 32);
      swift_beginAccess();

      pthread_mutex_unlock((v18 + 16));
      swift_endAccess();
    }

    *(v2 + 24) = 3;
    v10 = *MEMORY[0x277D3E760];
    v11 = sub_25EC79764();
    (*(*(v11 - 8) + 104))(a2, v10, v11);
    sub_25EC6D35C();
    swift_willThrowTypedImpl();

    MEMORY[0x25F8CBE40](v3);
    v12 = *(v9 + 32);
    swift_beginAccess();

    pthread_mutex_unlock((v12 + 16));
  }

  else
  {
    v13 = *MEMORY[0x277D3E750];
    v14 = sub_25EC79764();
    (*(*(v14 - 8) + 104))(a2, v13, v14);
    sub_25EC6D35C();
    swift_willThrowTypedImpl();
    v15 = *(v2 + 32);
    swift_beginAccess();

    pthread_mutex_unlock((v15 + 16));
  }

  swift_endAccess();
}

uint64_t PSWriterM3Demo.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_resource;
  v3 = sub_25EC79CC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter);

  v5 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource);

  v6 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_triggerSender);

  return v0;
}

uint64_t PSWriterM3Demo.__deallocating_deinit()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_resource;
  v3 = sub_25EC79CC4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter];

  v5 = *&v0[OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsResource];

  v6 = *&v0[OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_triggerSender];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25EC6D7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25EC79764();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25EC6CE68(v9, a2);
  if (v2)
  {
    return (*(v6 + 32))(a1, v9, v5);
  }

  return result;
}

uint64_t sub_25EC6D8D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_25EC79764();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25EC6D3B4(a1, v9);
  if (v2)
  {
    return (*(v6 + 32))(a2, v9, v5);
  }

  return result;
}

unint64_t sub_25EC6D9E4()
{
  result = qword_27FD363A0;
  if (!qword_27FD363A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD363A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PSWriterM3DemoState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PSWriterM3DemoState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25EC6DB88(uint64_t a1, int a2)
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

uint64_t sub_25EC6DBD0(uint64_t result, int a2, int a3)
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

uint64_t sub_25EC6DC24()
{
  result = sub_25EC79CC4();
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

uint64_t PolarisOpenDomainServices.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for PolarisGSTServiceHandle();
  v1 = swift_allocObject();
  type metadata accessor for GSTService();
  swift_allocObject();
  *(v1 + 16) = GSTService.init()();
  *(v0 + 16) = v1;
  v2 = sub_25EC79DA4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_25EC79D94();
  return v0;
}

uint64_t PolarisOpenDomainServices.init()()
{
  type metadata accessor for PolarisGSTServiceHandle();
  v1 = swift_allocObject();
  type metadata accessor for GSTService();
  swift_allocObject();
  *(v1 + 16) = GSTService.init()();
  *(v0 + 16) = v1;
  v2 = sub_25EC79DA4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_25EC79D94();
  return v0;
}

uint64_t sub_25EC6DFA4()
{
  v1 = *(v0 + 24);
  sub_25EC79D84();
  v2 = sub_25EC79D74();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_25EC79D64();
}

uint64_t PolarisOpenDomainServices.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PolarisOpenDomainServices.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_25EC6E104()
{
  v1 = *(v0 + 16);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

uint64_t PolarisSimulationEngine.__allocating_init(gstService:endpoints:)(uint64_t a1, unint64_t a2)
{
  swift_allocObject();
  v4 = sub_25EC6EF20(a1, a2);

  return v4;
}

uint64_t PolarisSimulationEngine.init(gstService:endpoints:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_25EC6EF20(a1, a2);

  return v2;
}

uint64_t PolarisSimulationEngine.watch(endpoint:senderId:)(uint64_t result, unsigned int a2)
{
  v3 = v2;
  if (*(result + 40))
  {
    v5 = *(result + 40);
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      __break(1u);
      return result;
    }

    v5 = *(v6 + 32);
  }

  swift_beginAccess();
  if (*(*(v2 + 32) + 16) && (sub_25EC4CDB4(a2), (v7 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25EC7A890;

    sub_25EC7A144();

    v9 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v9);

    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0xD000000000000022;
    *(v8 + 40) = 0x800000025EC81C10;
    sub_25EC7A2B4();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for PolarisSimulationEngine.TriggerWatcher();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;

    v11 = sub_25EC6EA9C(a2, v10, v5);

    if (v11)
    {
      swift_beginAccess();

      v12 = *(v3 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v3 + 32);
      *(v3 + 32) = 0x8000000000000000;
      sub_25EC4DEEC(v10, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + 32) = v16;
      swift_endAccess();

      return 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD000000000000034, 0x800000025EC81BD0);
    v15 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v15);

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_25EC7A2B4();
  }

  return 0;
}

uint64_t PolarisSimulationEngine.GraphBreakpoint.hashValue.getter()
{
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](0);
  return sub_25EC7A304();
}

uint64_t sub_25EC6E568()
{
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](0);
  return sub_25EC7A304();
}

uint64_t sub_25EC6E5AC()
{
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](0);
  return sub_25EC7A304();
}

void PolarisSimulationEngine.stepUntil(br:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
LABEL_3:
  v4 = *(v3 + 16);
  v15[0] = MEMORY[0x277D84F90];
  v5 = *(v4 + 24);
  MEMORY[0x28223BE20](a1);

  sub_25EC79914();

  v6 = *(v4 + 24);

  sub_25EC79934();

  v7 = v15[0];
  v8 = *(v15[0] + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(v2 + 24);
    while (v9 < *(v7 + 16))
    {
      v11 = v7 + 32 + 24 * v9;
      v12 = *(v11 + 16);
      v13 = *(v11 + 4);
      v15[0] = __PAIR64__(*v11, *(v11 + 8));
      v15[1] = v12;
      for (i = PolarisWorkHandler.messageConsume(senderId:metadata:)(v13, v15); i; --i)
      {
        PolarisWorkHandler.workerEntry()();
      }

      if (++v9 == v8)
      {

        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

Swift::UInt32_optional __swiftcall PolarisSimulationEngine.getTriggers(senderId:)(Swift::UInt32 senderId)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16) && (v4 = sub_25EC4CDB4(senderId), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    v7 = 0;
    v8 = *(v6 + 16);
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();

    v10 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v10);

    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = 0xD000000000000016;
    *(v9 + 40) = 0x800000025EC81C40;
    sub_25EC7A2B4();

    v8 = 0;
    v7 = 1;
  }

  return (v8 | (v7 << 32));
}

Swift::Bool __swiftcall PolarisSimulationEngine.resetWatcher(senderId:)(Swift::UInt32 senderId)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16) && (v4 = sub_25EC4CDB4(senderId), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    *(v6 + 16) = 0;
    return 1;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();

    v9 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v9);

    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0xD000000000000016;
    *(v8 + 40) = 0x800000025EC81C40;
    sub_25EC7A2B4();

    return 0;
  }
}

void *PolarisSimulationEngine.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t PolarisSimulationEngine.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_25EC6EA9C(int a1, uint64_t a2, uint64_t a3)
{
  sub_25EC6F3D8();
  swift_beginAccess();
  v38 = a3;
  v4 = *(a3 + 64);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v43 = result;
  v39 = v9;
  v40 = v5;
  if (v8)
  {
LABEL_5:
    v12 = v11;
  }

  else
  {
    do
    {
LABEL_6:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_43;
      }

      if (v12 >= v9)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_25EC7A890;
        sub_25EC7A144();

        v36 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v36);

        MEMORY[0x25F8CB870](0x73736573206E6920, 0xEC000000206E6F69);
        v49 = *(v38 + 16);
        v37 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v37);

        *(v35 + 56) = MEMORY[0x277D837D0];
        *(v35 + 32) = 0xD00000000000001ELL;
        *(v35 + 40) = 0x800000025EC811B0;
        sub_25EC7A2B4();

        v34 = 0;
        return v34 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
    }

    while (!v8);
  }

  v41 = v12;
  v42 = (v8 - 1) & v8;
  v13 = *(*(result + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
  v14 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v44 = v13;

  v21 = 0;
  v46 = v15 + 64;
  v47 = v15;
  for (i = v20; ; v20 = i)
  {
    if (!v19)
    {
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_42;
        }

        if (v22 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_19;
        }
      }

      v11 = v41;
      v8 = v42;
      result = v43;
      v9 = v39;
      v5 = v40;
      if (v42)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

LABEL_19:
    v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
    swift_beginAccess();
    v24 = *(v23 + 48);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v31 = *(v23 + 48);
      }

      v25 = sub_25EC7A184();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      break;
    }

LABEL_13:
    v19 &= v19 - 1;

    v16 = v46;
    v15 = v47;
  }

  v26 = 0;
  while ((v24 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8CB970](v26, v24);
    v27 = result;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_40;
    }

LABEL_26:
    v29 = *(v27 + 24);

    v30 = sub_25EC79854();

    if (v30 == a1)
    {

      v32 = *(v44 + 24);
      v33 = *(v27 + 24);
      v34 = sub_25EC79A04();

      return v34 & 1;
    }

    ++v26;
    if (v28 == v25)
    {
      goto LABEL_13;
    }
  }

  if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v27 = *(v24 + 8 * v26 + 32);

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_26;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_25EC6EF20(uint64_t a1, unint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = sub_25EC4E6E0(MEMORY[0x277D84F90]);
  v5 = a2;
  v6 = v4;
  if (a2 >> 62)
  {
LABEL_31:
    v29 = sub_25EC7A184();
    v5 = a2;
    v7 = v29;
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_32:

LABEL_33:

    type metadata accessor for PolarisWorkHandler();
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    v31 = MEMORY[0x277D84F90];
    *(v30 + 24) = MEMORY[0x277D84F90];
    *(v33 + 24) = v30;
    *(v33 + 32) = sub_25EC4E6F4(v31);
    return v33;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_32;
  }

LABEL_3:
  v37 = v5 & 0xC000000000000001;
  v34 = v5 & 0xFFFFFFFFFFFFFF8;

  v8 = a2;
  v9 = 0;
  v35 = v7;
  v36 = a2;
  while (1)
  {
    if (v37)
    {
      v12 = MEMORY[0x25F8CB970](v9, v8);
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v9 >= *(v34 + 16))
      {
        goto LABEL_30;
      }

      v12 = *(v8 + 8 * v9 + 32);

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    type metadata accessor for PolarisExclaveSupportServiceHandle();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    if (*(v12 + 40))
    {
      v15 = *(v12 + 40);
      goto LABEL_16;
    }

    v16 = *(v12 + 16);
    if (!v16)
    {
      break;
    }

    v15 = *(v16 + 32);

LABEL_16:
    v17 = *(v15 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = sub_25EC4CDB4(v17);
    v20 = v6[2];
    v21 = (v19 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_28;
    }

    v23 = v19;
    if (v6[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_25EC5D14C();
        if (v23)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_25EC4D7D0(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_25EC4CDB4(v17);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_35;
      }

      a2 = v24;
      if (v23)
      {
LABEL_4:
        v10 = v6[7];
        v11 = *(v10 + 8 * a2);
        *(v10 + 8 * a2) = v14;

        goto LABEL_5;
      }
    }

    v6[(a2 >> 6) + 8] |= 1 << a2;
    *(v6[6] + 4 * a2) = v17;
    *(v6[7] + 8 * a2) = v14;

    v26 = v6[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_29;
    }

    v6[2] = v28;
LABEL_5:
    ++v9;
    v8 = v36;
    if (v13 == v35)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  result = sub_25EC7A264();
  __break(1u);
  return result;
}

unint64_t sub_25EC6F24C()
{
  result = qword_27FD363B8;
  if (!qword_27FD363B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD363B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolarisSimulationEngine.GraphBreakpoint(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PolarisSimulationEngine.GraphBreakpoint(_WORD *result, int a2, int a3)
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

unint64_t sub_25EC6F3D8()
{
  result = qword_27FD363C0;
  if (!qword_27FD363C0)
  {
    type metadata accessor for PolarisSimulationEngine.TriggerWatcher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD363C0);
  }

  return result;
}

void sub_25EC6F430(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 8 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      a1[1] = v4;

      return;
    }
  }

  __break(1u);
}

void ExResourceSample.init(size:)(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 1)
  {
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v4 = sub_25EC7A0B4();
    *(v4 + 16) = a1;
    bzero((v4 + 32), a1);
  }

  *a2 = v4;
  *(a2 + 8) = a1 > 0;
}

PolarisExclaveSupport::ExResource __swiftcall ExResource.init(sampleSizes:)(Swift::OpaquePointer sampleSizes)
{
  v3 = v1;
  v4 = *(sampleSizes._rawValue + 2);
  if (v4)
  {
    v14 = v1;
    v15 = MEMORY[0x277D84F90];
    sub_25EC5B834(0, v4, 0);
    v5 = 32;
    v6 = v15;
    do
    {
      v7 = *(sampleSizes._rawValue + v5);
      if (v7 < 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = *(sampleSizes._rawValue + v5);
        v9 = sub_25EC7A0B4();
        *(v9 + 16) = v7;
        bzero((v9 + 32), v7);
      }

      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25EC5B834((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v7 > 0;
      v5 += 8;
      --v4;
    }

    while (v4);

    v3 = v14;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *v3 = v6;
  return result;
}

PolarisExclaveSupport::ExResourceArray __swiftcall ExResourceArray.init(resourceConfigs:)(Swift::OpaquePointer resourceConfigs)
{
  v2 = v1;
  v3 = *(resourceConfigs._rawValue + 2);
  if (v3)
  {
    v21 = v1;
    v27 = MEMORY[0x277D84F90];
    sub_25EC5B86C(0, v3, 0);
    result.resources._rawValue = resourceConfigs._rawValue;
    v6 = 0;
    v7 = v27;
    rawValue = result.resources._rawValue;
    v24 = result.resources._rawValue + 32;
    v22 = v3;
    while (v6 < *(result.resources._rawValue + 2))
    {
      v8 = *&v24[8 * v6];
      v9 = *(v8 + 16);
      if (v9)
      {
        v25 = v7;
        v26 = MEMORY[0x277D84F90];

        sub_25EC5B834(0, v9, 0);
        v10 = v26;
        v11 = 32;
        do
        {
          v12 = *(v8 + v11);
          if (v12 < 1)
          {
            v14 = MEMORY[0x277D84F90];
          }

          else
          {
            v13 = *(v8 + v11);
            v14 = sub_25EC7A0B4();
            *(v14 + 16) = v12;
            bzero((v14 + 32), v12);
          }

          v16 = *(v26 + 16);
          v15 = *(v26 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_25EC5B834((v15 > 1), v16 + 1, 1);
          }

          *(v26 + 16) = v16 + 1;
          v17 = v26 + 16 * v16;
          *(v17 + 32) = v14;
          *(v17 + 40) = v12 > 0;
          v11 += 8;
          --v9;
        }

        while (v9);

        v3 = v22;
        result.resources._rawValue = rawValue;
        v7 = v25;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = result.resources._rawValue;
        sub_25EC5B86C((v18 > 1), v19 + 1, 1);
        result.resources._rawValue = v20;
      }

      ++v6;
      *(v7 + 16) = v19 + 1;
      *(v7 + 8 * v19 + 32) = v10;
      if (v6 == v3)
      {

        v2 = v21;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_19:
    *v2 = v7;
  }

  return result;
}

uint64_t ExResourceBufferSize.init(count:sampleSize:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Result.hashValue.getter()
{
  v1 = *v0;
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](v1);
  return sub_25EC7A304();
}

uint64_t ExResourceSample.sample.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExResourceSample.initialize(size:)(Swift::Int size)
{
  if (v1[1])
  {
    sub_25EC5B6D8();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  else if (size < 0)
  {
    __break(1u);
  }

  else
  {
    if (size)
    {
      v4 = sub_25EC7A0B4();
      *(v4 + 16) = size;
      bzero((v4 + 32), size);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = *v1;

    *v1 = v4;
    *(v1 + 8) = 1;
  }
}

Swift::Void __swiftcall ExResourceSample.clear()()
{
  v1 = *v0;

  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
}

uint64_t sub_25EC6FA34()
{
  if (*v0)
  {
    result = 0x64696C6176;
  }

  else
  {
    result = 0x656C706D6173;
  }

  *v0;
  return result;
}

uint64_t sub_25EC6FA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C706D6173 && a2 == 0xE600000000000000;
  if (v6 || (sub_25EC7A244() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64696C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EC7A244();

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

uint64_t sub_25EC6FB48(uint64_t a1)
{
  v2 = sub_25EC72750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EC6FB84(uint64_t a1)
{
  v2 = sub_25EC72750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExResourceSample.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD363C8, &qword_25EC7BC30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[2] = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72750();

  sub_25EC7A324();
  v15 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD363D8, &qword_25EC7BC38);
  sub_25EC727F0(&qword_27FD363E0);
  sub_25EC7A204();

  if (!v2)
  {
    v13 = 1;
    sub_25EC7A1F4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ExResourceSample.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD363E8, &qword_25EC7BC40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72750();
  sub_25EC7A314();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD363D8, &qword_25EC7BC38);
  v14[15] = 0;
  sub_25EC727F0(&qword_27FD363F0);
  sub_25EC7A1D4();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_25EC7A1C4();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExResource.samples.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

Swift::Void __swiftcall ExResource.initialize(sampleSizes:)(Swift::OpaquePointer sampleSizes)
{
  v3 = *v1;

  v4 = *(sampleSizes._rawValue + 2);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = v1;
    v15 = MEMORY[0x277D84F90];
    sub_25EC5B834(0, v4, 0);
    v6 = v15;
    v7 = (sampleSizes._rawValue + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 < 1)
      {
        v10 = v5;
      }

      else
      {
        v10 = sub_25EC7A0B4();
        *(v10 + 16) = v8;
        bzero((v10 + 32), v8);
      }

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25EC5B834((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v8 > 0;
      --v4;
    }

    while (v4);
    v1 = v14;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *v1 = v6;
}

uint64_t sub_25EC70170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C706D6173 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25EC7A244();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25EC701F8(uint64_t a1)
{
  v2 = sub_25EC7285C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EC70234(uint64_t a1)
{
  v2 = sub_25EC7285C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExResource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD363F8, &qword_25EC7BC48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC7285C();

  sub_25EC7A324();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36408, &qword_25EC7BC50);
  sub_25EC728B0();
  sub_25EC7A204();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExResource.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36420, &qword_25EC7BC58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC7285C();
  sub_25EC7A314();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36408, &qword_25EC7BC50);
    sub_25EC72988();
    sub_25EC7A1D4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Void __swiftcall ExResourceArray.initialize(resourceConfigs:)(Swift::OpaquePointer resourceConfigs)
{
  v3 = *v1;

  v4 = *(resourceConfigs._rawValue + 2);
  if (v4)
  {
    v20 = v1;
    v25 = MEMORY[0x277D84F90];
    sub_25EC5B86C(0, v4, 0);
    v5 = MEMORY[0x277D84F90];
    v6 = 0;
    v7 = v25;
    v21 = v4;
    v22 = resourceConfigs._rawValue + 32;
    do
    {
      v8 = *&v22[8 * v6];
      v9 = *(v8 + 16);
      if (v9)
      {
        v23 = v7;
        v24 = v5;

        sub_25EC5B834(0, v9, 0);
        v10 = v24;
        v11 = 32;
        do
        {
          v12 = *(v8 + v11);
          if (v12 < 1)
          {
            v14 = MEMORY[0x277D84F90];
          }

          else
          {
            v13 = *(v8 + v11);
            v14 = sub_25EC7A0B4();
            *(v14 + 16) = v12;
            bzero((v14 + 32), v12);
          }

          v16 = *(v24 + 16);
          v15 = *(v24 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_25EC5B834((v15 > 1), v16 + 1, 1);
          }

          *(v24 + 16) = v16 + 1;
          v17 = v24 + 16 * v16;
          *(v17 + 32) = v14;
          *(v17 + 40) = v12 > 0;
          v11 += 8;
          --v9;
        }

        while (v9);

        v5 = MEMORY[0x277D84F90];
        v4 = v21;
        v7 = v23;
      }

      else
      {
        v10 = v5;
      }

      v26 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25EC5B86C((v18 > 1), v19 + 1, 1);
        v5 = MEMORY[0x277D84F90];
        v7 = v26;
      }

      ++v6;
      *(v7 + 16) = v19 + 1;
      *(v7 + 8 * v19 + 32) = v10;
    }

    while (v6 != v4);
    v1 = v20;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *v1 = v7;
}

uint64_t sub_25EC707BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25EC7A244();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25EC7084C(uint64_t a1)
{
  v2 = sub_25EC72A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EC70888(uint64_t a1)
{
  v2 = sub_25EC72A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExResourceArray.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36438, &qword_25EC7BC60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72A60();

  sub_25EC7A324();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36448, &qword_25EC7BC68);
  sub_25EC72AB4();
  sub_25EC7A204();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExResourceArray.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36460, &qword_25EC7BC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72A60();
  sub_25EC7A314();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36448, &qword_25EC7BC68);
    sub_25EC72B8C();
    sub_25EC7A1D4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25EC70BE8()
{
  if (*v0)
  {
    result = 0x6953656C706D6173;
  }

  else
  {
    result = 0x746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_25EC70C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_25EC7A244() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6953656C706D6173 && a2 == 0xEA0000000000657ALL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EC7A244();

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

uint64_t sub_25EC70D04(uint64_t a1)
{
  v2 = sub_25EC72C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EC70D40(uint64_t a1)
{
  v2 = sub_25EC72C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExResourceBufferSize.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36478, &qword_25EC7BC78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72C64();
  sub_25EC7A324();
  v15 = 0;
  sub_25EC7A214();
  if (!v2)
  {
    v14 = 1;
    sub_25EC7A214();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ExResourceBufferSize.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36488, &qword_25EC7BC80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72C64();
  sub_25EC7A314();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_25EC7A1E4();
    v15 = 1;
    v12 = sub_25EC7A1E4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

PolarisExclaveSupport::ExResourceArrayBufferSize __swiftcall ExResourceArrayBufferSize.init(bufferSize:)(Swift::OpaquePointer bufferSize)
{
  v2 = v1;
  v3 = *(bufferSize._rawValue + 2);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25EC5B934(0, v3, 0);
    rawValue = bufferSize._rawValue;
    v6 = v12;
    v7 = *(v12 + 16);
    v8 = 32;
    do
    {
      v9 = *&rawValue[v8];
      v10 = *(v12 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_25EC5B934((v10 > 1), v7 + 1, 1);
        rawValue = bufferSize._rawValue;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 8 * v7 + 32) = v9;
      v8 += 8;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25EC71208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6953726566667562 && a2 == 0xEA0000000000657ALL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25EC7A244();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25EC71298(uint64_t a1)
{
  v2 = sub_25EC72CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EC712D4(uint64_t a1)
{
  v2 = sub_25EC72CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExResourceArrayBufferSize.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36490, &qword_25EC7BC88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72CB8();

  sub_25EC7A324();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD364A0, &qword_25EC7BC90);
  sub_25EC72D0C();
  sub_25EC7A204();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExResourceArrayBufferSize.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD364B8, &qword_25EC7BC98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72CB8();
  sub_25EC7A314();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD364A0, &qword_25EC7BC90);
    sub_25EC72DE4();
    sub_25EC7A1D4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExResourceArray.description.getter()
{
  v1 = *v0;
  sub_25EC7A144();

  v23 = 0xD000000000000017;
  v24 = 0x800000025EC81D40;
  v26 = *(v1 + 16);
  v2 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v2);

  MEMORY[0x25F8CB870](670249, 0xE300000000000000);
  v3 = 0xD000000000000017;
  v26 = 0xD000000000000017;
  v27 = 0x800000025EC81D40;
  v24 = 0;
  v25 = 0;
  v23 = v1;

  sub_25EC6F430(v22);
  v4 = v22[1];
  if (v22[1])
  {
    while (1)
    {
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25EC7A144();

      strcpy(v22, "  ExResource ");
      HIWORD(v22[1]) = -4864;
      v5 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v5);

      MEMORY[0x25F8CB870](0x3A746E756F632820, 0xE900000000000020);
      v21 = *(v4 + 16);
      v6 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v6);

      MEMORY[0x25F8CB870](670249, 0xE300000000000000);
      MEMORY[0x25F8CB870](v22[0], v22[1]);

      v8 = *(v4 + 16);
      if (v8)
      {
        break;
      }

LABEL_3:

      sub_25EC6F430(v22);
      v4 = v22[1];
      if (!v22[1])
      {
        v3 = v26;
        goto LABEL_16;
      }
    }

    v9 = 0;
    v10 = (v4 + 40);
    while (v9 < *(v4 + 16))
    {
      v11 = v9 + 1;
      v12 = *(v10 - 1);
      v13 = *v10;
      v10 += 16;
      v14 = v13 == 0;
      if (v13)
      {
        v15 = 0x64696C6156;
      }

      else
      {
        v15 = 0x64696C61766E49;
      }

      if (v14)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      v22[0] = 0;
      v22[1] = 0xE000000000000000;

      sub_25EC7A144();

      v22[0] = 0xD000000000000015;
      v22[1] = 0x800000025EC81D60;
      v17 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v17);

      MEMORY[0x25F8CB870](8250, 0xE200000000000000);
      MEMORY[0x25F8CB870](v15, v16);

      MEMORY[0x25F8CB870](0x203A61746144202CLL, 0xE800000000000000);
      v18 = MEMORY[0x25F8CB8B0](v12, MEMORY[0x277D84B78]);
      v20 = v19;

      MEMORY[0x25F8CB870](v18, v20);

      MEMORY[0x25F8CB870](10, 0xE100000000000000);
      MEMORY[0x25F8CB870](v22[0], v22[1]);

      v9 = v11;
      if (v8 == v11)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    return v3;
  }

  return result;
}

unint64_t sub_25EC719F8()
{
  v1 = 25705;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_25EC71A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25EC73E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25EC71AA8(uint64_t a1)
{
  v2 = sub_25EC72EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EC71AE4(uint64_t a1)
{
  v2 = sub_25EC72EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExSerializedGraphData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD364D0, &qword_25EC7BCA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v16 = v1[2];
  v17 = v10;
  v15 = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72EBC();
  sub_25EC7A324();
  LOBYTE(v19) = 0;
  sub_25EC7A214();
  if (!v2)
  {
    v12 = v15;
    v13 = v16;
    v19 = v17;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD364E0, &qword_25EC7BCA8);
    sub_25EC72F10(&qword_27FD364E8);
    sub_25EC7A204();
    v19 = v13;
    v18 = 2;
    sub_25EC7A204();
    v19 = v12;
    v18 = 3;
    sub_25EC7A204();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ExSerializedGraphData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD364F0, &qword_25EC7BCB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72EBC();
  sub_25EC7A314();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v18 = sub_25EC7A1E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD364E0, &qword_25EC7BCA8);
  v19 = 1;
  sub_25EC72F10(&qword_27FD364F8);
  sub_25EC7A1D4();
  v11 = v20;
  v19 = 2;
  sub_25EC7A1D4();
  v16 = v20;
  v17 = v11;
  v19 = 3;
  sub_25EC7A1D4();
  (*(v6 + 8))(v9, v5);
  v12 = v20;
  *a2 = v18;
  v13 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25EC7209C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461446870617267 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25EC7A244();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25EC7212C(uint64_t a1)
{
  v2 = sub_25EC72F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EC72168(uint64_t a1)
{
  v2 = sub_25EC72F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExSerializedGraphDataArray.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36500, &qword_25EC7BCB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72F7C();

  sub_25EC7A324();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36510, &qword_25EC7BCC0);
  sub_25EC72FD0();
  sub_25EC7A204();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExSerializedGraphDataArray.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36528, &qword_25EC7BCC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EC72F7C();
  sub_25EC7A314();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36510, &qword_25EC7BCC0);
    sub_25EC730A8();
    sub_25EC7A1D4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void createExResourceSamples(count:size:randomizeData:)(int64_t a1, uint64_t a2, char a3)
{
  if (a1 < 0)
  {
    goto LABEL_26;
  }

  v3 = a1;
  if (a1)
  {
    v24 = MEMORY[0x277D84F90];
    sub_25EC5B834(0, a1, 0);
    v6 = MEMORY[0x277D84F90];
    v7 = 0;
    v8 = v24;
    v20 = a3;
    v19 = v3;
    do
    {
      if (a2 >= 1)
      {
        v9 = sub_25EC7A0B4();
        *(v9 + 16) = a2;
        bzero((v9 + 32), a2);
      }

      v23 = a2 > 0;
      if (a3)
      {
        if (a2 < 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (a2)
        {
          v22 = v6;
          sub_25EC5BA04(0, a2, 0);
          v10 = v22;
          v11 = a2;
          do
          {
            v21 = 0;
            MEMORY[0x25F8CBFB0](&v21, 8);
            v12 = v21;
            v22 = v10;
            v14 = v10[2];
            v13 = v10[3];
            if (v14 >= v13 >> 1)
            {
              sub_25EC5BA04((v13 > 1), v14 + 1, 1);
              v10 = v22;
            }

            v10[2] = v14 + 1;
            *(v10 + v14 + 32) = v12;
            --v11;
          }

          while (v11);

          v15 = v23;
          a3 = v20;
          v3 = v19;
          v6 = MEMORY[0x277D84F90];
        }

        else
        {

          v15 = 0;
          v10 = v6;
        }
      }

      else
      {
        if (a2 < 0)
        {
          goto LABEL_25;
        }

        if (a2 < 1)
        {
          v10 = v6;
        }

        else
        {
          v10 = sub_25EC7A0B4();
          v10[2] = a2;
          bzero(v10 + 4, a2);
        }

        v15 = a2 > 0;
      }

      v24 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25EC5B834((v16 > 1), v17 + 1, 1);
        v6 = MEMORY[0x277D84F90];
        v8 = v24;
      }

      ++v7;
      *(v8 + 16) = v17 + 1;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v10;
      *(v18 + 40) = v15;
    }

    while (v7 != v3);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25EC72750()
{
  result = qword_27FD363D0;
  if (!qword_27FD363D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD363D0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25EC727F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD363D8, &qword_25EC7BC38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25EC7285C()
{
  result = qword_27FD36400;
  if (!qword_27FD36400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36400);
  }

  return result;
}

unint64_t sub_25EC728B0()
{
  result = qword_27FD36410;
  if (!qword_27FD36410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD36408, &qword_25EC7BC50);
    sub_25EC72934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36410);
  }

  return result;
}

unint64_t sub_25EC72934()
{
  result = qword_27FD36418;
  if (!qword_27FD36418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36418);
  }

  return result;
}

unint64_t sub_25EC72988()
{
  result = qword_27FD36428;
  if (!qword_27FD36428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD36408, &qword_25EC7BC50);
    sub_25EC72A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36428);
  }

  return result;
}

unint64_t sub_25EC72A0C()
{
  result = qword_27FD36430;
  if (!qword_27FD36430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36430);
  }

  return result;
}

unint64_t sub_25EC72A60()
{
  result = qword_27FD36440;
  if (!qword_27FD36440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36440);
  }

  return result;
}

unint64_t sub_25EC72AB4()
{
  result = qword_27FD36450;
  if (!qword_27FD36450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD36448, &qword_25EC7BC68);
    sub_25EC72B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36450);
  }

  return result;
}

unint64_t sub_25EC72B38()
{
  result = qword_27FD36458;
  if (!qword_27FD36458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36458);
  }

  return result;
}

unint64_t sub_25EC72B8C()
{
  result = qword_27FD36468;
  if (!qword_27FD36468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD36448, &qword_25EC7BC68);
    sub_25EC72C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36468);
  }

  return result;
}

unint64_t sub_25EC72C10()
{
  result = qword_27FD36470;
  if (!qword_27FD36470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36470);
  }

  return result;
}

unint64_t sub_25EC72C64()
{
  result = qword_27FD36480;
  if (!qword_27FD36480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36480);
  }

  return result;
}

unint64_t sub_25EC72CB8()
{
  result = qword_27FD36498;
  if (!qword_27FD36498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36498);
  }

  return result;
}

unint64_t sub_25EC72D0C()
{
  result = qword_27FD364A8;
  if (!qword_27FD364A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD364A0, &qword_25EC7BC90);
    sub_25EC72D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD364A8);
  }

  return result;
}

unint64_t sub_25EC72D90()
{
  result = qword_27FD364B0;
  if (!qword_27FD364B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD364B0);
  }

  return result;
}

unint64_t sub_25EC72DE4()
{
  result = qword_27FD364C0;
  if (!qword_27FD364C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD364A0, &qword_25EC7BC90);
    sub_25EC72E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD364C0);
  }

  return result;
}

unint64_t sub_25EC72E68()
{
  result = qword_27FD364C8;
  if (!qword_27FD364C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD364C8);
  }

  return result;
}

unint64_t sub_25EC72EBC()
{
  result = qword_27FD364D8;
  if (!qword_27FD364D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD364D8);
  }

  return result;
}

uint64_t sub_25EC72F10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD364E0, &qword_25EC7BCA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25EC72F7C()
{
  result = qword_27FD36508;
  if (!qword_27FD36508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36508);
  }

  return result;
}

unint64_t sub_25EC72FD0()
{
  result = qword_27FD36518;
  if (!qword_27FD36518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD36510, &qword_25EC7BCC0);
    sub_25EC73054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36518);
  }

  return result;
}

unint64_t sub_25EC73054()
{
  result = qword_27FD36520;
  if (!qword_27FD36520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36520);
  }

  return result;
}

unint64_t sub_25EC730A8()
{
  result = qword_27FD36530;
  if (!qword_27FD36530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD36510, &qword_25EC7BCC0);
    sub_25EC7312C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36530);
  }

  return result;
}

unint64_t sub_25EC7312C()
{
  result = qword_27FD36538;
  if (!qword_27FD36538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36538);
  }

  return result;
}

unint64_t sub_25EC73184()
{
  result = qword_27FD36540;
  if (!qword_27FD36540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36540);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Result(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_25EC7333C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25EC73384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExResourceBufferSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExResourceBufferSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
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

uint64_t sub_25EC73474(uint64_t a1, int a2)
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

uint64_t sub_25EC734BC(uint64_t result, int a2, int a3)
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

uint64_t sub_25EC7350C(uint64_t *a1, int a2)
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

uint64_t sub_25EC73554(uint64_t result, int a2, int a3)
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

uint64_t sub_25EC73600(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25EC73690(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25EC73754()
{
  result = qword_27FD36548;
  if (!qword_27FD36548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36548);
  }

  return result;
}

unint64_t sub_25EC737AC()
{
  result = qword_27FD36550;
  if (!qword_27FD36550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36550);
  }

  return result;
}

unint64_t sub_25EC73804()
{
  result = qword_27FD36558;
  if (!qword_27FD36558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36558);
  }

  return result;
}

unint64_t sub_25EC7385C()
{
  result = qword_27FD36560;
  if (!qword_27FD36560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36560);
  }

  return result;
}

unint64_t sub_25EC738B4()
{
  result = qword_27FD36568;
  if (!qword_27FD36568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36568);
  }

  return result;
}

unint64_t sub_25EC7390C()
{
  result = qword_27FD36570;
  if (!qword_27FD36570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36570);
  }

  return result;
}

unint64_t sub_25EC73964()
{
  result = qword_27FD36578;
  if (!qword_27FD36578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36578);
  }

  return result;
}

unint64_t sub_25EC739BC()
{
  result = qword_27FD36580;
  if (!qword_27FD36580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36580);
  }

  return result;
}

unint64_t sub_25EC73A14()
{
  result = qword_27FD36588;
  if (!qword_27FD36588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36588);
  }

  return result;
}

unint64_t sub_25EC73A6C()
{
  result = qword_27FD36590;
  if (!qword_27FD36590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36590);
  }

  return result;
}

unint64_t sub_25EC73AC4()
{
  result = qword_27FD36598;
  if (!qword_27FD36598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36598);
  }

  return result;
}

unint64_t sub_25EC73B1C()
{
  result = qword_27FD365A0;
  if (!qword_27FD365A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365A0);
  }

  return result;
}

unint64_t sub_25EC73B74()
{
  result = qword_27FD365A8;
  if (!qword_27FD365A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365A8);
  }

  return result;
}

unint64_t sub_25EC73BCC()
{
  result = qword_27FD365B0;
  if (!qword_27FD365B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365B0);
  }

  return result;
}

unint64_t sub_25EC73C24()
{
  result = qword_27FD365B8;
  if (!qword_27FD365B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365B8);
  }

  return result;
}

unint64_t sub_25EC73C7C()
{
  result = qword_27FD365C0;
  if (!qword_27FD365C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365C0);
  }

  return result;
}

unint64_t sub_25EC73CD4()
{
  result = qword_27FD365C8;
  if (!qword_27FD365C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365C8);
  }

  return result;
}

unint64_t sub_25EC73D2C()
{
  result = qword_27FD365D0;
  if (!qword_27FD365D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365D0);
  }

  return result;
}

unint64_t sub_25EC73D84()
{
  result = qword_27FD365D8;
  if (!qword_27FD365D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365D8);
  }

  return result;
}

unint64_t sub_25EC73DDC()
{
  result = qword_27FD365E0;
  if (!qword_27FD365E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365E0);
  }

  return result;
}

unint64_t sub_25EC73E34()
{
  result = qword_27FD365E8;
  if (!qword_27FD365E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD365E8);
  }

  return result;
}

uint64_t sub_25EC73E88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25EC7A244() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025EC81D80 == a2 || (sub_25EC7A244() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025EC81DA0 == a2 || (sub_25EC7A244() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025EC81DC0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25EC7A244();

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

uint64_t sub_25EC74054(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    sub_25EC5BA04(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          sub_25EC5BA04((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

char *sub_25EC741D8(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v21 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v26 = MEMORY[0x277D84F90];
    result = sub_25EC5B8C4(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v26;
      v10 = v5 - v6;
      if (v5 < v6)
      {
        v10 = 0;
      }

      v19 = v10 + 1;
      v20 = v6;
      v18 = v7;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v23 = v6 + v9;
        result = (v21)(&v24, &v23, &v22);
        if (v4)
        {

          return v22;
        }

        v12 = v5;
        v13 = v24;
        v14 = v25;
        v26 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_25EC5B8C4((v15 > 1), v16 + 1, 1);
          v8 = v26;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v5 = v12;
        v6 = v20;
        if (v5 < v20)
        {
          goto LABEL_21;
        }

        if (v19 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v18)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_25EC74370(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v18 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v22 = MEMORY[0x277D84F90];
    result = sub_25EC5B8FC(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v22;
      v10 = v5 - a3;
      if (v5 < a3)
      {
        v10 = 0;
      }

      v16 = v7;
      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v20 = a3 + v9;
        result = (v18)(&v21, &v20, &v19);
        if (v4)
        {

          return v19;
        }

        v12 = v5;
        v13 = v21;
        v22 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_25EC5B8FC((v14 > 1), v15 + 1, 1);
          v8 = v22;
        }

        *(v8 + 16) = v15 + 1;
        *(v8 + 8 * v15 + 32) = v13;
        if (v12 < a3)
        {
          goto LABEL_21;
        }

        if (v17 == ++v9)
        {
          goto LABEL_22;
        }

        v5 = v12;
        if (v11 == v16)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_25EC744F8(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v16 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v20 = MEMORY[0x277D84F90];
    result = sub_25EC5B964(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v20;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v15 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v18 = a3 + v9;
        result = (v16)(&v19, &v18, &v17);
        if (v4)
        {

          return v17;
        }

        v12 = v19;
        v20 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_25EC5B964((v13 > 1), v14 + 1, 1);
          v8 = v20;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 8 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_21;
        }

        if (v15 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25EC7467C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    sub_25EC5B770(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          sub_25EC5B770((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 4 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

char *sub_25EC74800(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v22 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v28 = MEMORY[0x277D84F90];
    result = sub_25EC5B9CC(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v28;
      v10 = v5 - v6;
      if (v5 < v6)
      {
        v10 = 0;
      }

      v20 = v10 + 1;
      v21 = v6;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v24 = v6 + v9;
        result = (v22)(&v25, &v24, &v23);
        if (v4)
        {

          return v23;
        }

        v12 = v5;
        v13 = v25;
        v14 = v26;
        v15 = v27;
        v28 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v19 = v26;
          result = sub_25EC5B9CC((v16 > 1), v17 + 1, 1);
          v14 = v19;
          v8 = v28;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 32 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v14;
        *(v18 + 56) = v15;
        v5 = v12;
        v6 = v21;
        if (v5 < v21)
        {
          goto LABEL_21;
        }

        if (v20 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25EC749A8(int a1)
{
  v32 = a1;
  v2 = sub_25EC79F04();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25EC79F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = sub_25EC79FA4();
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v33);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = *(v1 + 16);
  v19 = v34;
  sub_25EC79FC4();
  if (v19)
  {
    v21 = v37;
    type metadata accessor for TransportError(0);
    sub_25EC79518(&qword_27FD36630, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v22 = v21;
    return v17;
  }

  v29 = v5;
  v34 = v2;
  v20 = *(v31 + 32);
  v20(v15, v17, v33);
  sub_25EC79F94();
  sub_25EC79F44();
  sub_25EC79F34();
  sub_25EC79F64();
  sub_25EC79FD4();
  v20(v15, v12, v33);
  v24 = v29;
  sub_25EC79EF4();
  v25 = sub_25EC79EA4();
  if (!v25)
  {
    v17 = sub_25EC79EB4();
    (*(v30 + 8))(v24, v34);
    return v17;
  }

  v26 = v34;
  v27 = v30;
  if (v25 == 1)
  {
    sub_25EC79560();
    sub_25EC79ED4();
    v17 = v36;
    v35 = v36;
    sub_25EC5B6D8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v28 = v17;
    (*(v27 + 8))(v24, v26);
    return v17;
  }

  result = sub_25EC7A174();
  __break(1u);
  return result;
}

uint64_t sub_25EC74E50@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v46 = a3;
  v7 = sub_25EC79F04();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25EC79F74();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_25EC79FA4();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v45 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v22 = *a1;
  v23 = *a2;
  v59 = *a1;
  sub_25EC792A4();
  v24 = sub_25EC79F84();
  v25 = v24 + 16;
  if (__OFADD__(v24, 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v59 = v23;
  sub_25EC795B4();
  if (__OFADD__(v25, sub_25EC79F84()))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = *(v3 + 16);
  sub_25EC79FC4();
  if (v4)
  {
    v27 = v58;
    type metadata accessor for TransportError(0);
    sub_25EC79518(&qword_27FD36630, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v29 = v27;
    return result;
  }

  v30 = *(v55 + 32);
  v55 = 0;
  v45 = v30;
  v30(v56, v21, v57);
  v31 = v54;
  sub_25EC79F94();
  v32 = v31;
  sub_25EC79F44();
  sub_25EC79F44();
  v59 = v22;
  v33 = v55;
  v34 = sub_25EC79F54();
  if (v33)
  {
    v37 = v34;
    type metadata accessor for TransportError(0);
    sub_25EC79518(&qword_27FD36630, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v38 = v37;
    v40 = v52;
    v39 = v53;
    return (*(v40 + 8))(v32, v39);
  }

  v35 = v57;
  v36 = v45;
  v59 = v23;
  sub_25EC79F54();
  sub_25EC79F64();
  v41 = v51;
  sub_25EC79FD4();
  v36(v56, v41, v35);
  v32 = v47;
  sub_25EC79EF4();
  v42 = sub_25EC79EA4();
  if (v42 == 1)
  {
    sub_25EC79560();
    sub_25EC79ED4();
    v43 = v59;
    sub_25EC5B6D8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v44 = v43;
    v40 = v48;
    v39 = v49;
    return (*(v40 + 8))(v32, v39);
  }

  if (!v42)
  {
    sub_25EC791F0();
    sub_25EC79ED4();
    *v46 = v59;
    return (*(v48 + 8))(v32, v49);
  }

LABEL_15:
  result = sub_25EC7A174();
  __break(1u);
  return result;
}

uint64_t sub_25EC7546C(int a1, int a2, uint64_t a3)
{
  v43 = a3;
  v41 = a1;
  v42 = a2;
  v4 = sub_25EC79F04();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25EC79F74();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = sub_25EC79FA4();
  v44 = *(v40 - 8);
  v10 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v40);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = *(v3 + 16);
  v21 = v45;
  sub_25EC79FC4();
  if (v21)
  {
    v26 = v48;
    type metadata accessor for TransportError(0);
    v28 = v27;
    sub_25EC79518(&qword_27FD36630, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v29 = v26;
    return v28;
  }

  v38 = v7;
  v45 = v4;
  v22 = *(v44 + 32);
  v23 = v19;
  v24 = v40;
  v44 += 32;
  v25 = v22;
  v22(v17, v23, v40);
  sub_25EC79F94();
  sub_25EC79F44();
  sub_25EC79F34();
  sub_25EC79F34();
  sub_25EC79F44();
  sub_25EC79F64();
  sub_25EC79FD4();
  v25(v17, v14, v24);
  v31 = v38;
  sub_25EC79EF4();
  v32 = sub_25EC79EA4();
  if (!v32)
  {
    v28 = sub_25EC79EB4();
    (*(v39 + 8))(v31, v45);
    return v28;
  }

  v33 = v45;
  v34 = v39;
  if (v32 == 1)
  {
    sub_25EC79560();
    sub_25EC79ED4();
    v35 = v47;
    v46 = v47;
    sub_25EC5B6D8();
    swift_willThrowTypedImpl();
    v28 = swift_allocError();
    *v36 = v35;
    (*(v34 + 8))(v31, v33);
    return v28;
  }

  result = sub_25EC7A174();
  __break(1u);
  return result;
}

uint64_t sub_25EC75934()
{
  v1 = sub_25EC79F04();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25EC79F74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_25EC79FA4();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *(v0 + 16);
  v19 = v37;
  sub_25EC79FC4();
  if (v19)
  {
    v21 = v40;
    type metadata accessor for TransportError(0);
    v23 = v22;
    sub_25EC79518(&qword_27FD36630, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v24 = v21;
    return v23;
  }

  v33 = v4;
  v37 = v1;
  v20 = *(v35 + 32);
  v20(v15, v17, v36);
  sub_25EC79F94();
  sub_25EC79F44();
  sub_25EC79F64();
  sub_25EC79FD4();
  v20(v15, v12, v36);
  v26 = v33;
  sub_25EC79EF4();
  v27 = sub_25EC79EA4();
  if (!v27)
  {
    v23 = sub_25EC79EB4();
    (*(v34 + 8))(v26, v37);
    return v23;
  }

  v28 = v37;
  if (v27 == 1)
  {
    sub_25EC79560();
    sub_25EC79ED4();
    v29 = v34;
    v30 = v39;
    v38 = v39;
    sub_25EC5B6D8();
    swift_willThrowTypedImpl();
    v23 = swift_allocError();
    *v31 = v30;
    (*(v29 + 8))(v26, v28);
    return v23;
  }

  result = sub_25EC7A174();
  __break(1u);
  return result;
}

uint64_t _s21PolarisExclaveSupport6ResultO4fromAC9Tightbeam0F7DecoderVz_tSo10tb_error_taYKcfC@<X0>(_DWORD *a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_25EC78998();
  if (v2)
  {
    *a1 = result;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25EC75E5C@<X0>(_DWORD *a1@<X1>, _BYTE *a2@<X8>)
{
  result = _s21PolarisExclaveSupport6ResultO4fromAC9Tightbeam0F7DecoderVz_tSo10tb_error_taYKcfC(&v5, a2);
  if (v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t static ExResourceSample.encodedSize(of:)(uint64_t result)
{
  v1 = *(*result + 16);
  v2 = __OFADD__(v1, 8);
  v3 = v1 + 8;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t _s21PolarisExclaveSupport16ExResourceSampleV6encode2toy9Tightbeam0I7EncoderVz_tSo10tb_error_taYKF()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = *(*v0 + 16);

  sub_25EC79F44();
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = (v1 + 32);
    do
    {
      v6 = *v5++;
      sub_25EC79F24();
      --v4;
    }

    while (v4);
  }

  return sub_25EC79F14();
}

uint64_t _s21PolarisExclaveSupport16ExResourceSampleV4fromAC9Tightbeam0H7DecoderVz_tSo10tb_error_taYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25EC79EC4();
  v7[2] = a1;
  v5 = sub_25EC74054(sub_25EC78A84, v7, 0, v4);
  result = sub_25EC79E94();
  *a2 = v5;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_25EC75FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25EC79EC4();
  v7[2] = a1;
  v5 = sub_25EC74054(sub_25EC79684, v7, 0, v4);
  result = sub_25EC79E94();
  *a2 = v5;
  *(a2 + 8) = result & 1;
  return result;
}

uint64_t sub_25EC76070(uint64_t result)
{
  v1 = *(*result + 16);
  v2 = __OFADD__(v1, 8);
  v3 = v1 + 8;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC76124(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_25EC79F44();
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = *v6;
      v8 = v6[8];
      v9 = *(*v6 + 16);

      sub_25EC79F44();
      v10 = *(v7 + 16);
      if (v10)
      {
        v11 = (v7 + 32);
        do
        {
          v12 = *v11++;
          sub_25EC79F24();
          --v10;
        }

        while (v10);
      }

      ++v4;
      sub_25EC79F14();
    }

    while (v4 != v2);
  }

  return result;
}

uint64_t sub_25EC7635C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_25EC79F44();
  v17 = v2;
  if (v2)
  {
    v4 = 0;
    v16 = a1 + 32;
    while (1)
    {
      v5 = *(v16 + 8 * v4);
      v6 = *(v5 + 16);

      result = sub_25EC79F44();
      v7 = *(v5 + 16);
      if (v7)
      {
        break;
      }

LABEL_4:
      if (++v4 == v17)
      {
        return result;
      }
    }

    v18 = v4;
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = (v5 + 32 + 16 * v8);
      v10 = *v9;
      v11 = v9[8];
      v12 = *(*v9 + 16);

      sub_25EC79F44();
      v13 = *(v10 + 16);
      if (v13)
      {
        v14 = (v10 + 32);
        do
        {
          v15 = *v14++;
          sub_25EC79F24();
          --v13;
        }

        while (v13);
      }

      ++v8;
      sub_25EC79F14();

      if (v8 == v7)
      {

        v4 = v18;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s21PolarisExclaveSupport20ExResourceBufferSizeV6encode2toy9Tightbeam0J7EncoderVz_tSo10tb_error_taYKF()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25EC79F34();
  return sub_25EC79F34();
}

uint64_t _s21PolarisExclaveSupport20ExResourceBufferSizeV4fromAC9Tightbeam0I7DecoderVz_tSo10tb_error_taYKcfC@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_25EC79EB4();
  result = sub_25EC79EB4();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_25EC76634@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_25EC79EB4();
  result = sub_25EC79EB4();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_25EC76678()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25EC79F34();
  return sub_25EC79F34();
}

uint64_t _s21PolarisExclaveSupport25ExResourceArrayBufferSizeV6encode2toy9Tightbeam0K7EncoderVz_tSo10tb_error_taYKF()
{
  v8 = *v0;
  v1 = sub_25EC67188();
  v2 = *(v1 + 16);
  sub_25EC79F44();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 36);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_25EC79F34();
      sub_25EC79F34();
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t _s21PolarisExclaveSupport21ExSerializedGraphDataV6encode2toy9Tightbeam0J7EncoderVz_tSo10tb_error_taYKF()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_25EC768D0(v1, v2, v3, v4);

  return v5;
}

uint64_t sub_25EC768D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25EC79F34();
  v7 = *(a2 + 16);
  sub_25EC79F44();
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      sub_25EC79F34();
      --v7;
    }

    while (v7);
  }

  v10 = *(a3 + 16);
  sub_25EC79F44();
  if (v10)
  {
    v11 = (a3 + 32);
    do
    {
      v12 = *v11++;
      sub_25EC79F34();
      --v10;
    }

    while (v10);
  }

  v13 = *(a4 + 16);
  result = sub_25EC79F44();
  if (v13)
  {
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      result = sub_25EC79F34();
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t _s21PolarisExclaveSupport21ExSerializedGraphDataV4fromAC9Tightbeam0I7DecoderVz_tSo10tb_error_taYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25EC79EB4();
  v5 = sub_25EC79EC4();
  v15 = a1;
  v6 = sub_25EC7467C(sub_25EC7966C, v14, 0, v5);
  v7 = sub_25EC79EC4();
  v13 = a1;
  v8 = sub_25EC7467C(sub_25EC7966C, v12, 0, v7);
  v9 = sub_25EC79EC4();
  v11[2] = a1;
  result = sub_25EC7467C(sub_25EC7966C, v11, 0, v9);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_25EC76AA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_25EC768D0(v1, v2, v3, v4);

  return v5;
}

uint64_t sub_25EC76B70(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *a1;
  a2();
  v4 = a3();

  return v4;
}

uint64_t sub_25EC76C08(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v7 = *v3;
  a2();
  v5 = a3();

  return v5;
}

uint64_t sub_25EC76C88(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_25EC79F44();
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      v6 = (v5 + 32 * v4);
      v7 = v6[1];
      v8 = v6[2];
      v9 = v6[3];
      v10 = *v6;

      sub_25EC79F34();
      v11 = *(v7 + 16);
      sub_25EC79F44();
      v12 = *(v7 + 16);
      if (v12)
      {
        v13 = (v7 + 32);
        do
        {
          v14 = *v13++;
          sub_25EC79F34();
          --v12;
        }

        while (v12);
      }

      v15 = *(v8 + 16);
      sub_25EC79F44();
      v16 = *(v8 + 16);
      if (v16)
      {
        v17 = (v8 + 32);
        do
        {
          v18 = *v17++;
          sub_25EC79F34();
          --v16;
        }

        while (v16);
      }

      v19 = *(v9 + 16);
      sub_25EC79F44();
      v20 = *(v9 + 16);
      if (v20)
      {
        v21 = (v9 + 32);
        do
        {
          v22 = *v21++;
          sub_25EC79F34();
          --v20;
        }

        while (v20);
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return result;
}

void *sub_25EC76E04@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, void *, void, uint64_t)@<X3>, void *(*a5)(uint64_t *__return_ptr, void *)@<X4>, void *a6@<X8>)
{
  v13 = sub_25EC79EC4();
  v15[2] = a1;
  result = a4(a3, v15, 0, v13);
  if (v6)
  {
    *a2 = result;
  }

  else
  {
    result = a5(&v16, result);
    *a6 = v16;
  }

  return result;
}

void *sub_25EC76F00@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X4>, uint64_t (*a4)(uint64_t, void *, void, uint64_t)@<X5>, void *(*a5)(uint64_t *__return_ptr, void *)@<X6>, void *a6@<X8>)
{
  v13 = sub_25EC79EC4();
  v15[2] = a1;
  result = a4(a3, v15, 0, v13);
  if (v6)
  {
    *a2 = result;
  }

  else
  {
    result = a5(&v16, result);
    *a6 = v16;
  }

  return result;
}

uint64_t sub_25EC76FD4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *a1;
  a4();
  v6 = a5();

  return v6;
}

uint64_t sub_25EC7706C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v9 = *v5;
  a4();
  v7 = a5();

  return v7;
}

uint64_t sub_25EC770EC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v5 = v3;
  v58 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36600, &qword_25EC7CE90);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v57 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v23 = sub_25EC79F74();
  v61 = *(v23 - 8);
  v62 = v22;
  v24 = *(v61 + 56);
  v63 = v23;
  v59 = v24;
  (v24)(v22, 1, 1);
  v25 = sub_25EC78F60();
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      sub_25EC79EC4();
      sub_25EC791F0();
      sub_25EC79ED4();
      if (!v4)
      {
        v42 = v67;
        sub_25EC79244();
        sub_25EC79ED4();
        v30 = v63;
        v48 = v65;
        v49 = __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
        v64 = v48;
        v65 = v42;
        v50 = *v49;
        sub_25EC5A3F4(&v65, &v64, &v67);

        v51 = v67;
        sub_25EC792A4();
        if (!__OFADD__(sub_25EC79F84(), 1))
        {
          sub_25EC79EE4();
          v59(v17, 0, 1, v30);
          v52 = v62;
          v44 = *(v61 + 48);
          if (v44(v62, 1, v30) != 1)
          {
            sub_25EC79118(v52);
          }

          sub_25EC79180(v17, v52);
          v29 = v52;
          if (!v44(v52, 1, v30))
          {
            sub_25EC79F24();
            v67 = v51;
            sub_25EC792A4();
            sub_25EC79F54();
          }

          sub_25EC79298(v51, 0);
          goto LABEL_44;
        }

        goto LABEL_52;
      }

      v31 = v66;
      v32 = v62;
      v33 = (*(v61 + 48))(v62, 1, v63);
      if (v33 != 1)
      {
        sub_25EC79118(v32);
      }

      v43 = sub_25EC79F04();
      result = (*(*(v43 - 8) + 8))(a1, v43);
LABEL_29:
      *v60 = v31;
      return result;
    }

    v37 = sub_25EC79EB4();
    v38 = sub_25EC79EB4();
    sub_25EC79EC4();
    v39 = *__swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
    sub_25EC5B138(v37, v38);
    if (v4)
    {
      v67 = v4;
      MEMORY[0x25F8CBE50](v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36608, &unk_25EC7CE98);
      v40 = swift_dynamicCast();
      v29 = v62;
      if (!v40)
      {
        goto LABEL_53;
      }

      MEMORY[0x25F8CBE40](v4);
      v41 = v65;
      MEMORY[0x25F8CBE40](v67);
      LOBYTE(v67) = v41;
      sub_25EC790C4();
      if (__OFADD__(sub_25EC79F84(), 1))
      {
LABEL_51:
        __break(1u);
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      v29 = v62;
    }

    sub_25EC79EE4();
    v46 = v63;
    v59(v14, 0, 1, v63);
    v44 = *(v61 + 48);
    v47 = v44(v29, 1, v46);
    if (v47 != 1)
    {
      sub_25EC79118(v29);
    }

    sub_25EC79180(v14, v29);
    v30 = v63;
    if (v44(v29, 1, v63))
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (!v25)
    {
      v26 = *__swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
      sub_25EC5B448();
      if (!v4)
      {
        v29 = v62;
        v30 = v63;
LABEL_18:
        sub_25EC79EE4();
        v59(v11, 0, 1, v30);
        v44 = *(v61 + 48);
        v45 = v44(v29, 1, v30);
        if (v45 != 1)
        {
          sub_25EC79118(v29);
        }

        sub_25EC79180(v11, v29);
        if (v44(v29, 1, v30))
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      v67 = v4;
      MEMORY[0x25F8CBE50](v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36608, &unk_25EC7CE98);
      if (swift_dynamicCast())
      {
        MEMORY[0x25F8CBE40](v4);
        v27 = v65;
        MEMORY[0x25F8CBE40](v67);
        LOBYTE(v67) = v27;
        sub_25EC790C4();
        v28 = sub_25EC79F84();
        v29 = v62;
        v30 = v63;
        if (!__OFADD__(v28, 1))
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_51;
      }

      while (1)
      {
LABEL_53:
        MEMORY[0x25F8CBE40](v67);
        sub_25EC7A174();
        __break(1u);
      }
    }

    sub_25EC79EB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_25EC7A890;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 32) = 0xD00000000000002ALL;
    *(v34 + 40) = 0x800000025EC80D50;
    sub_25EC7A2B4();

    sub_25EC79EE4();
    if (v4)
    {
      v31 = v66;
      v35 = v62;
      result = (*(v61 + 48))(v62, 1, v63);
      if (result != 1)
      {
        result = sub_25EC79118(v35);
      }

      goto LABEL_29;
    }

    v30 = v63;
    v59(v20, 0, 1, v63);
    v29 = v62;
    v44 = *(v61 + 48);
    if (v44(v62, 1, v30) != 1)
    {
      sub_25EC79118(v29);
    }

    sub_25EC79180(v20, v29);
    if (v44(v29, 1, v30))
    {
      goto LABEL_44;
    }
  }

LABEL_37:
  sub_25EC79F24();
  sub_25EC79F34();
LABEL_44:
  v53 = (v44)(v29, 1, v30);
  v54 = v53;
  if (v53 == 1)
  {
    v55 = v58;
  }

  else
  {
    v55 = v58;
    if (v53)
    {
      sub_25EC79118(v29);
      v54 = 1;
    }

    else
    {
      sub_25EC79F64();
      v54 = 0;
    }
  }

  v56 = sub_25EC79FA4();
  return (*(*(v56 - 8) + 56))(v55, v54, 1, v56);
}

uint64_t sub_25EC77D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25EC79FB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_25EC79FF4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_25EC79FE4();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_25EC77E50@<X0>(char *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v4 = v3;
  v59 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36600, &qword_25EC7CE90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v54 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v56 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = sub_25EC79F74();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 56);
  v65 = v24;
  v57 = v26;
  v58 = v63 + 56;
  (v26)(v24, 1, 1);
  v27 = sub_25EC792F8();
  v29 = v4[6];
  v28 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v29);
  v62 = a1;
  v30 = sub_25EC79EB4();
  v31 = v30;
  v32 = v27;
  if (v27 > 2u)
  {
    if (v27 == 3)
    {
      (*(v28 + 32))(v30, v29, v28);
      v40 = v61;
      sub_25EC79EE4();
      v33 = v65;
      if (!v40)
      {
        v62 = 0;
        v36 = v64;
        v57(v14, 0, 1, v64);
        v37 = *(v63 + 48);
        if (v37(v33, 1, v36) != 1)
        {
          sub_25EC79118(v33);
        }

        v38 = v14;
        goto LABEL_30;
      }
    }

    else
    {
      v33 = v65;
      if (v32 == 4)
      {
        v34 = sub_25EC79EC4();
        (*(v28 + 16))(v31, v34, v29, v28);
        v35 = v61;
        sub_25EC79EE4();
        if (!v35)
        {
          v62 = 0;
          v36 = v64;
          v57(v20, 0, 1, v64);
          v37 = *(v63 + 48);
          if (v37(v33, 1, v36) != 1)
          {
            sub_25EC79118(v33);
          }

          v38 = v20;
          goto LABEL_30;
        }
      }

      else
      {
        (*(v28 + 40))(v30, v29, v28);
        v17 = v54;
        v39 = v61;
        sub_25EC79EE4();
        if (!v39)
        {
LABEL_25:
          v62 = v39;
          v36 = v64;
          v57(v17, 0, 1, v64);
          v37 = *(v63 + 48);
          v49 = v37(v33, 1, v36);
LABEL_27:
          if (v49 != 1)
          {
            sub_25EC79118(v33);
          }

          v38 = v17;
LABEL_30:
          sub_25EC79180(v38, v33);
          if (!v37(v33, 1, v36))
          {
            sub_25EC79F14();
          }

          v50 = (v37)(v33, 1, v36);
          v51 = v50;
          if (v50 == 1)
          {
            v52 = v59;
          }

          else
          {
            v52 = v59;
            if (v50)
            {
              sub_25EC79118(v33);
              v51 = 1;
            }

            else
            {
              sub_25EC79F64();
            }
          }

          v53 = sub_25EC79FA4();
          return (*(*(v53 - 8) + 56))(v52, v51, 1, v53);
        }
      }
    }

    goto LABEL_21;
  }

  if (!v27)
  {
    (*(v28 + 24))(v30, v29, v28);
LABEL_12:
    v39 = v61;
    sub_25EC79EE4();
    v33 = v65;
    if (!v39)
    {
      goto LABEL_25;
    }

LABEL_21:
    v47 = v66;
    result = (*(v63 + 48))(v33, 1, v64);
    goto LABEL_22;
  }

  if (v27 == 1)
  {
    (*(v28 + 48))(v30, v29, v28);
    v17 = v55;
    goto LABEL_12;
  }

  v41 = v62;
  v42 = sub_25EC79EB4();
  v43 = sub_25EC79EC4();
  MEMORY[0x28223BE20](v43);
  *(&v54 - 2) = v41;
  v44 = v61;
  v46 = sub_25EC7467C(sub_25EC79498, (&v54 - 4), 0, v45);
  (*(v28 + 8))(v31, v42, v46, v29, v28);

  v17 = v56;
  sub_25EC79EE4();
  if (!v44)
  {
    v62 = 0;
    v36 = v64;
    v57(v17, 0, 1, v64);
    v37 = *(v63 + 48);
    v33 = v65;
    v49 = v37(v65, 1, v36);
    goto LABEL_27;
  }

  v47 = v66;
  v33 = v65;
  result = (*(v63 + 48))(v65, 1, v64);
LABEL_22:
  if (result != 1)
  {
    result = sub_25EC79118(v33);
  }

  *v60 = v47;
  return result;
}

uint64_t sub_25EC7852C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25EC78598(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v8 = *v5;
  result = a5(a1, &v10);
  if (v6)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_25EC785F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_25EC79EC4();
  v7[2] = a1;
  v5 = sub_25EC74054(sub_25EC79684, v7, 0, v4);
  result = sub_25EC79E94();
  *a2 = v5;
  *(a2 + 8) = result & 1;
  return result;
}

char *sub_25EC78674@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X2>, char **a3@<X8>)
{
  v7 = sub_25EC79EC4();
  v9[2] = a1;
  result = sub_25EC741D8(sub_25EC796CC, v9, 0, v7);
  if (v3)
  {
    *a2 = result;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_25EC786F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_25EC79EB4();
  v5 = sub_25EC79EC4();
  v15 = a1;
  v6 = sub_25EC7467C(sub_25EC7966C, v14, 0, v5);
  v7 = sub_25EC79EC4();
  v13 = a1;
  v8 = sub_25EC7467C(sub_25EC7966C, v12, 0, v7);
  v9 = sub_25EC79EC4();
  v11[2] = a1;
  result = sub_25EC7467C(sub_25EC7966C, v11, 0, v9);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_25EC787E8(uint64_t a1)
{
  if (a1 <= 0x1940188DFE3EFD87)
  {
    if (a1 <= 0xE214573C67605F6DLL)
    {
      if (a1 == 0x8B34AB06FAE16117)
      {
        return 1;
      }

      if (a1 == 0x9471B4EB40A99E7CLL)
      {
        return 6;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xE214573C67605F6ELL:
          return 8;
        case 0xEC784F3BA8DC2832:
          return 3;
        case 0xEFBE5214488A5BF7:
          return 9;
      }
    }
  }

  else if (a1 > 0x483396EA0D45BD01)
  {
    switch(a1)
    {
      case 0x483396EA0D45BD02:
        return 4;
      case 0x4CEED3122D84AB72:
        return 5;
      case 0x5B07D492C30740CDLL:
        return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x1940188DFE3EFD88:
        return 10;
      case 0x2F0A36CEB6E78541:
        return 7;
      case 0x4664A3448845ED77:
        return 2;
    }
  }

  return 11;
}

uint64_t sub_25EC78998()
{
  v0 = sub_25EC79EC4();
  result = sub_25EC787E8(v0);
  if (result == 11)
  {
    sub_25EC7A144();

    v2 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v2);

    result = sub_25EC7A174();
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC78A84@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_25EC79EA4();
  *a1 = result;
  return result;
}

uint64_t sub_25EC78AC0(uint64_t result)
{
  v1 = 0;
  v2 = result + 32;
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = *(*v2 + 16);
    v5 = __OFADD__(v4, 8);
    v6 = v4 + 8;
    if (v5)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v5 = __OFADD__(v6, 1);
    v7 = v6 + 1;
    if (v5)
    {
      goto LABEL_11;
    }

    v2 += 16;
    v5 = __OFADD__(v1, v7);
    v1 += v7;
    if (v5)
    {
      __break(1u);
      break;
    }
  }

  result = v1 + 8;
  if (!__OFADD__(v1, 8))
  {
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25EC78B38(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = (a1 + 32);
  while (v2)
  {
    v4 = *v3++;
    v5 = sub_25EC78AC0(v4);
    --v2;
    v6 = __OFADD__(v1, v5);
    v1 += v5;
    if (v6)
    {
      __break(1u);
      break;
    }
  }

  result = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
  }

  return result;
}

uint64_t _s21PolarisExclaveSupport25ExResourceArrayBufferSizeV07encodedH02ofSiAC_tFZ_0(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(sub_25EC67188() + 16);

  if (!v1)
  {
    return 8;
  }

  if ((v1 - 0x1000000000000000) < 0xF000000000000001)
  {
    goto LABEL_7;
  }

  result = 8 * v1 + 8;
  if (__OFADD__(8 * v1, 8))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC78C3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    if ((v3 - 0x2000000000000000) < 0xE000000000000001)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v3 *= 4;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = __OFADD__(v5, 4);
  v6 = v5 + 4;
  if (v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    if ((v7 - 0x2000000000000000) < 0xE000000000000001)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 *= 4;
  }

  v4 = __OFADD__(v7, 8);
  v8 = v7 + 8;
  if (v4)
  {
    goto LABEL_19;
  }

  v4 = __OFADD__(v6, v8);
  v9 = v6 + v8;
  if (v4)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = *(a3 + 16);
  if (v10)
  {
    if ((v10 - 0x2000000000000000) < 0xE000000000000001)
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v10 *= 4;
  }

  v4 = __OFADD__(v10, 8);
  v11 = v10 + 8;
  if (v4)
  {
    goto LABEL_21;
  }

  result = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_25EC78CF4(uint64_t result)
{
  v1 = 0;
  v2 = result + 56;
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = *(*(v2 - 16) + 16);
    if (v4)
    {
      if ((v4 - 0x2000000000000000) < 0xE000000000000001)
      {
        goto LABEL_29;
      }

      v4 *= 4;
    }

    v5 = __OFADD__(v4, 8);
    v6 = v4 + 8;
    if (v5)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v5 = __OFADD__(v6, 4);
    v7 = v6 + 4;
    if (v5)
    {
      goto LABEL_24;
    }

    v8 = *(*(v2 - 8) + 16);
    if (v8)
    {
      if ((v8 - 0x2000000000000000) < 0xE000000000000001)
      {
        goto LABEL_30;
      }

      v8 *= 4;
    }

    v5 = __OFADD__(v8, 8);
    v9 = v8 + 8;
    if (v5)
    {
      goto LABEL_25;
    }

    v5 = __OFADD__(v7, v9);
    v10 = v7 + v9;
    if (v5)
    {
      goto LABEL_26;
    }

    v11 = *(*v2 + 16);
    if (v11)
    {
      if ((v11 - 0x2000000000000000) < 0xE000000000000001)
      {
        goto LABEL_31;
      }

      v11 *= 4;
    }

    v5 = __OFADD__(v11, 8);
    v12 = v11 + 8;
    if (v5)
    {
      goto LABEL_27;
    }

    v5 = __OFADD__(v10, v12);
    v13 = v10 + v12;
    if (v5)
    {
      goto LABEL_28;
    }

    v2 += 32;
    v5 = __OFADD__(v1, v13);
    v1 += v13;
    if (v5)
    {
      __break(1u);
      break;
    }
  }

  result = v1 + 8;
  if (!__OFADD__(v1, 8))
  {
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25EC78F60()
{
  v0 = sub_25EC79EC4();
  if (v0 <= 0x320946A384FD9785)
  {
    if (v0 == 0xD9451A313F8064F5)
    {
      return 3;
    }

    if (v0 == 0xE1C64A156FA30D92)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (v0 == 0x320946A384FD9786)
  {
    return 0;
  }

  if (v0 != 0x600CC164886BD995)
  {
LABEL_11:
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD000000000000034, 0x800000025EC82070);
    v2 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v2);

    result = sub_25EC7A174();
    __break(1u);
    return result;
  }

  return 2;
}

unint64_t sub_25EC790C4()
{
  result = qword_27FD36610;
  if (!qword_27FD36610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36610);
  }

  return result;
}

uint64_t sub_25EC79118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36600, &qword_25EC7CE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25EC79180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36600, &qword_25EC7CE90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25EC791F0()
{
  result = qword_27FD36618;
  if (!qword_27FD36618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36618);
  }

  return result;
}

unint64_t sub_25EC79244()
{
  result = qword_27FD36620;
  if (!qword_27FD36620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36620);
  }

  return result;
}

uint64_t sub_25EC79298(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_25EC792A4()
{
  result = qword_27FD36628;
  if (!qword_27FD36628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36628);
  }

  return result;
}

uint64_t sub_25EC792F8()
{
  v0 = sub_25EC79EC4();
  if (v0 <= 0x618FF8D64D6877AELL)
  {
    switch(v0)
    {
      case 0xAB2A7DFC362DC807:
        return 3;
      case 0xEC4BE8A13FA3AFF3:
        return 0;
      case 0x2A209341DF165C56:
        return 2;
    }

    goto LABEL_15;
  }

  if (v0 == 0x792D19682736999FLL)
  {
    return 4;
  }

  if (v0 == 0x69B288DD04DC1DECLL)
  {
    return 5;
  }

  if (v0 != 0x618FF8D64D6877AFLL)
  {
LABEL_15:
    sub_25EC7A144();

    v2 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v2);

    result = sub_25EC7A174();
    __break(1u);
    return result;
  }

  return 1;
}

uint64_t sub_25EC79498@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_25EC79EB4();
  *a1 = result;
  return result;
}

uint64_t sub_25EC794D4@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_25EC79EB4();
  result = sub_25EC79EB4();
  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_25EC79518(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_25EC79560()
{
  result = qword_27FD36638;
  if (!qword_27FD36638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36638);
  }

  return result;
}

unint64_t sub_25EC795B4()
{
  result = qword_27FD36640;
  if (!qword_27FD36640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36640);
  }

  return result;
}