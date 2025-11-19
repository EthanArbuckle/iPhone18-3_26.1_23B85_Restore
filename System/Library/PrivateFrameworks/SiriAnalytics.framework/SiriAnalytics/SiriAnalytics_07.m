uint64_t sub_1D98F3A20()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FB0, &unk_1D9935068) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v4 = sub_1D992AFE4();
  v1[20] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[21] = v5;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = sub_1D992B004();
  v1[23] = v8;
  OUTLINED_FUNCTION_23(v8);
  v1[24] = v9;
  v11 = *(v10 + 64) + 15;
  v1[25] = swift_task_alloc();
  v12 = sub_1D992AFB4();
  v1[26] = v12;
  OUTLINED_FUNCTION_23(v12);
  v1[27] = v13;
  v15 = *(v14 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98F3BC0, 0, 0);
}

uint64_t sub_1D98F3BC0()
{
  v1 = v0[29];
  v2 = v0[27];
  v21 = v0[26];
  v22 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v20 = v0[23];
  v6 = v0[17];
  v5 = v0[18];
  v7 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection;
  v0[30] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection;
  *(v5 + v7) = 0;
  v8 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy;
  v0[31] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy;
  *(v5 + v8) = 0;
  v9 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock;
  v0[32] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB488E0, &unk_1D9931D50);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v5 + v9) = v10;
  v11 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock;
  v0[33] = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock;
  sub_1D992AE84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  sub_1D98B3748();
  v12 = sub_1D992B5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FB8, &qword_1D9935078);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *(v5 + v11) = v13;
  v14 = *(v3 + 16);
  v0[34] = v14;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v4, v6, v20);
  sub_1D992AFA4();
  (*(v2 + 16))(v22, v1, v21);
  v15 = *(MEMORY[0x1E6966C48] + 4);
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_1D98F3DCC;
  v17 = v0[28];
  v18 = v0[19];

  return MEMORY[0x1EEDC0A48](v18, v17);
}

uint64_t sub_1D98F3DCC()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_16();
  *v8 = v7;
  *(v9 + 296) = v0;

  if (v0)
  {

    v10 = sub_1D98F3EDC;
  }

  else
  {
    v10 = sub_1D98F411C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D98F3EDC()
{
  v1 = v0[19];
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0[20]);
  sub_1D98E3DA0(v1, &qword_1ECB48FB0, &unk_1D9935068);
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  v29 = v0[32];
  v30 = v0[33];
  v27 = v0[30];
  v28 = v0[31];
  v2 = v0[27];
  v25 = v0[26];
  v26 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[17];
  v5 = v0[18];
  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v31 = v7;
  v8 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v8);

  OUTLINED_FUNCTION_1_33();
  sub_1D98DCEB4(v10, v31, 0xD000000000000072, v9 | 0x8000000000000000, v11, v12);

  (*(v3 + 8))(v6, v4);
  (*(v2 + 8))(v26, v25);

  v13 = *(v5 + v28);
  swift_unknownObjectRelease();
  v14 = *(v5 + v29);

  v15 = *(v5 + v30);

  type metadata accessor for ExtensionConnection();
  v16 = *(*v5 + 48);
  v17 = *(*v5 + 52);
  swift_deallocPartialClassInstance();
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[25];
  v21 = v0[22];
  v22 = v0[19];

  v23 = v0[1];

  return v23(0);
}

void sub_1D98F411C()
{
  v63 = v0[37];
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  (*(v6 + 32))(v3, v7, v5);
  v2(v8 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_identity, v9, v4);
  (*(v6 + 16))(v8 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_process, v3, v5);
  v10 = sub_1D992AFD4();
  if (v63)
  {

    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14();
    }

    v11 = v0[27];
    v60 = v0[26];
    v64 = v0[29];
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[21];
    v57 = v0[22];
    v15 = v0[20];
    v16 = v0[17];
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v67 = v17;
    v18 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v18);

    OUTLINED_FUNCTION_1_33();
    sub_1D98DCEB4(v20, v67, 0xD000000000000072, v19 | 0x8000000000000000, v21, v22);

    (*(v12 + 8))(v16, v13);
    (*(v14 + 8))(v57, v15);
    (*(v11 + 8))(v64, v60);
  }

  else
  {
    v23 = v10;
    v24 = v0[18];
    v25 = [objc_opt_self() interfaceWithProtocol_];
    [v23 setRemoteObjectInterface_];

    [v23 resume];
    v26 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1D98F604C;
    v0[7] = v26;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D989FD64;
    v0[5] = &block_descriptor_14;
    v27 = _Block_copy(v0 + 2);
    v28 = v0[7];

    v29 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v27);
    sub_1D992BC24();
    swift_unknownObjectRelease();
    sub_1D986A8BC((v0 + 8), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FC0, &unk_1D9935080);
    if (swift_dynamicCast())
    {
      v30 = v0[18];
      v31 = v0[16];
      v32 = *(v30 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock);
      os_unfair_lock_lock(v32 + 4);
      sub_1D98F4754(v30, v23, v31);
      os_unfair_lock_unlock(v32 + 4);
      v50 = v0[27];
      v62 = v0[26];
      v66 = v0[29];
      v52 = v0[23];
      v51 = v0[24];
      v53 = v0[21];
      v59 = v0[22];
      v54 = v0[20];
      v55 = v0[17];
      swift_unknownObjectRelease();

      (*(v51 + 8))(v55, v52);
      __swift_destroy_boxed_opaque_existential_1(v0 + 8);
      (*(v53 + 8))(v59, v54);
      (*(v50 + 8))(v66, v62);
      goto LABEL_11;
    }

    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14();
    }

    v33 = v0[27];
    v61 = v0[26];
    v65 = v0[29];
    v35 = v0[23];
    v34 = v0[24];
    v36 = v0[21];
    v56 = v0[20];
    v58 = v0[22];
    v37 = v0[17];
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000031, 0x80000001D993C7C0);
    v38 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v38);

    OUTLINED_FUNCTION_1_33();
    sub_1D98DCEB4(v40, 0xE000000000000000, 0xD000000000000072, v39 | 0x8000000000000000, v41, v42);

    (*(v34 + 8))(v37, v35);
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
    (*(v36 + 8))(v58, v56);
    (*(v33 + 8))(v65, v61);
  }

  v43 = v0[18];

  v24 = 0;
LABEL_11:
  v45 = v0[28];
  v44 = v0[29];
  v46 = v0[25];
  v47 = v0[22];
  v48 = v0[19];

  v49 = v0[1];

  v49(v24);
}

uint64_t sub_1D98F46F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D98F47C0();
  }

  return result;
}

uint64_t sub_1D98F4754(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection);
  *(a1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection) = a2;
  v6 = a2;

  v7 = *(a1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy);
  *(a1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1D98F47C0()
{
  v1 = v0;
  if (qword_1ED8BF430 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D993C730);
  v2 = sub_1D992AFF4();
  MEMORY[0x1DA739C30](v2);

  MEMORY[0x1DA739C30](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000072, 0x80000001D993C640, 0xD000000000000019, 0x80000001D993C750);

  v3 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy);
  *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy) = 0;
  swift_unknownObjectRelease();
  v5 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection);
  *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connection) = 0;

  os_unfair_lock_unlock(v3 + 4);
  v6 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock((v6 + 24));
  sub_1D98F6030((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_1D98F499C(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v21[0] = a1;
  v9 = *a1;
  v10 = *a1 + 64;
  v11 = 1 << *(*a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(*a1 + 64);
  v14 = (v11 + 63) >> 6;
  v21[2] = v5 + 8;
  v21[3] = v5 + 16;

  for (i = 0; v13; result = (*(v5 + 8))(v8, v4))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v5 + 16))(v8, *(v9 + 56) + *(v5 + 72) * (v18 | (v17 << 6)), v4);
    v21[5] = a2;
    v19 = a2;
    sub_1D992B824();
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      sub_1D992AE84();
      sub_1D98B3748();
      v20 = sub_1D992B5B4();

      *v21[0] = v20;
      return result;
    }

    v13 = *(v10 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D98F4BA8()
{
  sub_1D992AE74();
  v1 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);
  os_unfair_lock_lock(v1 + 6);
  sub_1D98F6014(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1D98F4C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48958, &unk_1D9932360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1D992AE84();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a2, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  (*(*(v15 - 8) + 16))(v8, a3, v15);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  return sub_1D98B152C(v8, v13);
}

void sub_1D98F4D9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1D98F5FF4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D98F4DFC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48958, &unk_1D9932360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - v8;
  v10 = *a1;
  v11 = sub_1D9889568();
  if (v12)
  {
    v13 = v11;
    v14 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *a1;
    v15 = *(v26 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E0, &qword_1D9931B08);
    sub_1D992BE34();
    v16 = v26;
    v17 = *(v26 + 48);
    v18 = sub_1D992AE84();
    (*(*(v18 - 8) + 8))(v17 + *(*(v18 - 8) + 72) * v13, v18);
    v25[1] = v3;
    v19 = a3;
    v20 = *(v16 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    (*(*(v21 - 8) + 32))(v9, v20 + *(*(v21 - 8) + 72) * v13, v21);
    sub_1D98B3748();
    sub_1D992BE44();
    *a1 = v16;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v21);
    v22 = sub_1D98E3DA0(v9, &qword_1ECB48958, &unk_1D9932360);
    return v19(v22);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v24);
    return sub_1D98E3DA0(v9, &qword_1ECB48958, &unk_1D9932360);
  }
}

uint64_t sub_1D98F503C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98F5060, 0, 0);
}

uint64_t sub_1D98F5060()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    v4 = *(v0 + 24);
    *(v3 + 16) = v1;
    *(v3 + 24) = v4;
    *(v3 + 40) = v2;
    v5 = *(MEMORY[0x1E69E8920] + 4);
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    v7 = type metadata accessor for StagingReport();
    *v6 = v0;
    v6[1] = sub_1D98F51F0;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x786F725068746977, 0xED0000293A5F2879, sub_1D98F5EF0, v3, v7);
  }

  else
  {
    sub_1D98F5E9C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D98F51F0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_16();
  *v7 = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v8 = sub_1D98F5364;
  }

  else
  {
    v9 = *(v2 + 56);

    v8 = sub_1D98F5300;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D98F5300()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D98F5364()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6];
  v2 = v0[7];
  swift_unknownObjectRelease();

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D98F53CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void (*)(), uint64_t), uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v21 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v20 - v8;
  v10 = sub_1D992AE84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1D98F4BA8();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v15, v10, v14);
  (*(v6 + 16))(v9, a1, v25);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = (v12 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  (*(v11 + 32))(v18 + v16, v15, v10);
  (*(v6 + 32))(v18 + v17, v9, v25);

  v24(v22, sub_1D98F5EFC, v18);

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1D98F56A8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    return sub_1D992B824();
  }

  if (!a3)
  {
    sub_1D98F5E9C();
    swift_allocError();
    *v6 = 1;
    goto LABEL_3;
  }

  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  return sub_1D992B834();
}

void sub_1D98F5758()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = sub_1D98F3988();
  if ((v0 & 0x100000000) != 0 || (v1 = [objc_opt_self() identifierWithPid_]) == 0)
  {
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14();
    }

    OUTLINED_FUNCTION_5_20();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v30 = 0xD000000000000027;
    v31 = v17;
    v18 = sub_1D992AFF4();
    MEMORY[0x1DA739C30](v18);

    sub_1D98DCEB4(0xD000000000000027, v31, 0xD000000000000072, 0x80000001D993C640, 0xD000000000000012, 0x80000001D993C6C0);
    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v2 = v1;
    sub_1D986E35C(0, &qword_1ECB48F98, 0x1E69C7650);

    v3 = sub_1D98F5B70();
    [v3 setReportType_];
    [v3 setMaximumTerminationResistance_];
    v4 = [objc_opt_self() predicateMatchingIdentifier_];
    sub_1D986E35C(0, &qword_1ECB48FA0, 0x1E69C7660);
    v5 = v4;
    v6 = v3;
    v7 = sub_1D98F5BE4(v5, v6);
    if (qword_1ED8BF430 != -1)
    {
      OUTLINED_FUNCTION_2_14();
    }

    OUTLINED_FUNCTION_5_20();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v31 = v8;
    v9 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v9);

    OUTLINED_FUNCTION_4_22();
    sub_1D98DCECC(v10, v11, v12, v13, v14, v15);

    v30 = 0;
    if ([v7 execute_])
    {
      v16 = v30;
    }

    else
    {
      v20 = v30;
      v29 = v5;
      v21 = sub_1D992AC94();

      swift_willThrow();
      OUTLINED_FUNCTION_5_20();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D993C710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
      sub_1D992BE24();
      OUTLINED_FUNCTION_4_22();
      sub_1D98DCEB4(v22, v23, v24, v25, v26, v27);
    }

    v28 = *MEMORY[0x1E69E9840];
  }
}

id sub_1D98F5B70()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D992B614();

  v2 = [v0 initWithExplanation_];

  return v2;
}

id sub_1D98F5BE4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPredicate:a1 context:a2];

  return v4;
}

uint64_t sub_1D98F5C40()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_identity;
  v2 = sub_1D992B004();
  OUTLINED_FUNCTION_0_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_process;
  v5 = sub_1D992AFE4();
  OUTLINED_FUNCTION_0_4(v5);
  (*(v6 + 8))(v0 + v4);

  v7 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_proxy);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_connectionLock);

  v9 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics19ExtensionConnection_continuationsLock);

  return v0;
}

uint64_t sub_1D98F5D08()
{
  sub_1D98F5C40();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExtensionConnection()
{
  result = qword_1ECB47D58;
  if (!qword_1ECB47D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98F5DB4()
{
  result = sub_1D992B004();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1D992AFE4();
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

unint64_t sub_1D98F5E9C()
{
  result = qword_1ECB48FA8;
  if (!qword_1ECB48FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48FA8);
  }

  return result;
}

void sub_1D98F5EFC()
{
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v1);
  v4 = ((*(v2 + 80) + 24) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10) - 8) + 80);
  v6 = *(v0 + 16);

  sub_1D98F5658();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for ExtensionConnectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D98F614C()
{
  result = qword_1ECB48FC8;
  if (!qword_1ECB48FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48FC8);
  }

  return result;
}

uint64_t sub_1D98F61A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FD0, &qword_1D9935180);
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6, v9);
  v11 = *MEMORY[0x1E696A388];
  v15[12] = 0;
  v12 = sub_1D992B324();
  (*(v7 + 8))(a1, v6);
  v13 = *(v3 + 24);
  *(v3 + 16) = v12;
  *(v3 + 24) = a2;

  return v3;
}

uint64_t sub_1D98F62F4()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D993A240);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D993C920);
  return 0;
}

uint64_t sub_1D98F64F4()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1D98F651C()
{
  sub_1D98F64F4();

  return swift_deallocClassInstance();
}

uint64_t TimestampRange.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    if (a4)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      v5 = -1;
    }

    else
    {
      *a5 = a3;
      *(a5 + 8) = 0;
      v5 = 2;
    }

    goto LABEL_7;
  }

  *a5 = result;
  if (a4)
  {
    *(a5 + 8) = 0;
    v5 = 1;
LABEL_7:
    *(a5 + 16) = v5;
    return result;
  }

  *(a5 + 8) = a3;
  *(a5 + 16) = 0;
  return result;
}

uint64_t TimestampRange.init(start:end:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3 & 1;
  return result;
}

Swift::Bool __swiftcall TimestampRange.contains(timestamp:)(Swift::UInt64 timestamp)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v6 = v2 >= timestamp;
    v3 = v2 <= timestamp;
    v4 = v6;
    if (*(v1 + 16) == 1)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return v2 <= timestamp && *(v1 + 8) >= timestamp;
  }
}

void __swiftcall TimestampRange.map()(Swift::tuple_UInt64_optional_UInt64_optional *__return_ptr retstr)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    v3 = *v1;
  }

  else
  {
    v4 = *v1;
  }

  if (!*(v1 + 16))
  {
    v5 = *v1;
    v6 = v1[1];
  }
}

BOOL static TimestampRange.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) > 1u)
  {
    return 1;
  }

  return *(a2 + 16) < 2u && *a1 < *a2;
}

BOOL static TimestampRange.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v6 = v4 == 1 && v2 == v3;
    v8 = v4 == 2 && v2 == v3;
    if (*(a1 + 16) == 1)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 == v3;
    }

    return v10 && a1[1] == a2[1];
  }
}

unint64_t sub_1D98F66E0()
{
  result = qword_1ECB48FD8;
  if (!qword_1ECB48FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48FD8);
  }

  return result;
}

uint64_t sub_1D98F67D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TagsTable.Record(0);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = sub_1D992AE84();
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v165 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40_3();
  if (!v22 || (v23 = sub_1D9889410(0x64695F6B636F6C63, 0xE800000000000000), (v24 & 1) == 0))
  {

    OUTLINED_FUNCTION_7_19(v2);
LABEL_17:
    sub_1D986B804(v2, &qword_1ECB481D0, &qword_1D992F9F0);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }

  v162 = v11;
  v163 = v15;
  v164 = a2;
  v25 = OUTLINED_FUNCTION_1_13(v23);
  v27 = *(v26 + 16);
  v28 = *(v26 + 8) | *v26;
  if (v27 == 4 && v28 == 0)
  {
    OUTLINED_FUNCTION_7_19(v2);

LABEL_16:
    a2 = v164;
    goto LABEL_17;
  }

  v160 = &v154;
  v161 = v5;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_41_2();
  if (v27 == 3)
  {
    v30 = OUTLINED_FUNCTION_9_0();
    sub_1D987BA38(v30, v31);
    OUTLINED_FUNCTION_9_0();
    sub_1D992AD64();
  }

  else if (v27)
  {
    OUTLINED_FUNCTION_7_19(v5);
    v32 = OUTLINED_FUNCTION_9_15();
    sub_1D986C8B8(v32, v33, v34);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    sub_1D992AE14();
  }

  v35 = OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v2, v35 ^ 1u, 1, v12);
  v36 = OUTLINED_FUNCTION_9_15();
  sub_1D986C908(v36, v37, v38);
  if (__swift_getEnumTagSinglePayload(v2, 1, v12) == 1)
  {

    v5 = v161;
    goto LABEL_16;
  }

  v40 = v163;
  v41 = v163 + 32;
  v42 = v165;
  v160 = *(v163 + 32);
  (v160)(v165, v2, v12);
  v44 = v40 + 16;
  v43 = *(v40 + 16);
  v45 = v162;
  v43(v162, v42, v12);
  if (!*(a1 + 16) || (v46 = sub_1D9889410(0x636170735F676174, 0xE900000000000065), (v47 & 1) == 0))
  {

    v75 = *(v163 + 8);
    (v75)(v42, v12);
    v76 = 0;
    v77 = 0;
LABEL_28:
    (v75)(v45, v12);
    if (v76)
    {
      (v75)(v45 + v161[6], v12);
    }

    v5 = v161;
    a2 = v164;
    if (v77)
    {
      sub_1D987106C(*(v45 + v161[7]), *(v45 + v161[7] + 8));
    }

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }

  v158 = v43;
  v159 = v41;
  OUTLINED_FUNCTION_1_13(v46);
  v49 = *v48;
  v50 = v48[1];
  v51 = *(v48 + 16);
  v52 = OUTLINED_FUNCTION_9_15();
  sub_1D986C8B8(v52, v53, v54);
  v55 = OUTLINED_FUNCTION_9_15();
  v58 = sub_1D9892880(v55, v56, v57);
  v59 = OUTLINED_FUNCTION_9_15();
  v62 = sub_1D986C908(v59, v60, v61);
  if ((v58 & 0x100000000) != 0)
  {
    v75 = *(v163 + 8);
    v78 = OUTLINED_FUNCTION_22_10();
    (v75)(v78);

    v76 = 0;
    v77 = 0;
    v45 = v162;
    goto LABEL_28;
  }

  v45 = v162;
  *(v162 + v161[5]) = v58;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_41_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_8_14();
  v66 = v64 - v65;
  if (!*(a1 + 16) || (v67 = OUTLINED_FUNCTION_21_7(), v69 = sub_1D9889410(v67, v68), (v70 & 1) == 0))
  {

    v75 = *(v163 + 8);
    v79 = OUTLINED_FUNCTION_22_10();
    (v75)(v79);
    OUTLINED_FUNCTION_7_19(v66);
LABEL_41:
    sub_1D986B804(v66, &qword_1ECB481D0, &qword_1D992F9F0);
    v76 = 0;
    v77 = 0;
    goto LABEL_28;
  }

  v157 = &v154;
  v71 = OUTLINED_FUNCTION_1_13(v69);
  v73 = *(v72 + 8);
  v74 = *(v72 + 16);
  if (v74 == 4 && *v72 == 0)
  {
    OUTLINED_FUNCTION_7_19(v66);
LABEL_40:
    v75 = *(v163 + 8);
    v87 = OUTLINED_FUNCTION_22_10();
    (v75)(v87);

    v45 = v162;
    goto LABEL_41;
  }

  v155 = v58;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_41_2();
  v156 = v80;
  v154 = v81;
  if (v74 == 3)
  {
    sub_1D987BA38(v80, v73);
    OUTLINED_FUNCTION_36_6();
    sub_1D992AD64();
  }

  else if (v74)
  {
    OUTLINED_FUNCTION_7_19(v58);
    v82 = OUTLINED_FUNCTION_36_6();
    sub_1D986C8B8(v82, v83, v74);
  }

  else
  {

    OUTLINED_FUNCTION_36_6();
    sub_1D992AE14();
  }

  v84 = OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_42_1(v84);
  v85 = OUTLINED_FUNCTION_36_6();
  sub_1D986C908(v85, v86, v74);
  if (__swift_getEnumTagSinglePayload(v66, 1, v12) == 1)
  {
    goto LABEL_40;
  }

  v75 = v155;
  (v160)(v155, v66, v12);
  v45 = v162;
  v158(v162 + v161[6], v75, v12);
  if (!*(a1 + 16))
  {
    goto LABEL_51;
  }

  v88 = sub_1D9889410(0x617461645F676174, 0xE800000000000000);
  if ((v89 & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_1_13(v88);
  v75 = *v90;
  v91 = *(v90 + 8);
  v92 = *(v90 + 16);
  if (v92 == 4 && !(v91 | v75))
  {
    goto LABEL_51;
  }

  if (v92 == 3)
  {
    sub_1D987BA38(v75, v91);
  }

  else
  {
    v75 = 0;
    v91 = 0xF000000000000000;
  }

  v166 = v75;
  v167 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
  if ((swift_dynamicCast() & 1) == 0 || (v93 = v169, v169 >> 60 == 15))
  {
LABEL_51:

    v94 = OUTLINED_FUNCTION_3_20();
    (v75)(v94);
    v95 = OUTLINED_FUNCTION_22_10();
    (v75)(v95);
    v77 = 0;
    v76 = 1;
    goto LABEL_28;
  }

  v96 = (v45 + v161[7]);
  *v96 = v168;
  v96[1] = v93;
  v97 = sub_1D992AE04();
  v160 = &v154;
  v98 = v97;
  v99 = OUTLINED_FUNCTION_6(v97);
  v159 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13();
  v158 = (v104 - v103);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  OUTLINED_FUNCTION_9(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_40_3();
  if (!v109 || (v110 = sub_1D9889410(0x5F64657461657263, 0xEA00000000006E6FLL), (v111 & 1) == 0))
  {

    v127 = OUTLINED_FUNCTION_3_20();
    (v75)(v127);
    v128 = OUTLINED_FUNCTION_22_10();
    (v75)(v128);
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v98);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_1_13(v110);
  v75 = *v112;
  v113 = *(v112 + 8);
  v114 = *(v112 + 16);
  v115 = OUTLINED_FUNCTION_0_19();
  sub_1D986C8B8(v115, v116, v117);
  v118 = OUTLINED_FUNCTION_0_19();
  sub_1D9892670(v118, v119, v120, v121);
  v122 = OUTLINED_FUNCTION_0_19();
  sub_1D986C908(v122, v123, v124);
  if (__swift_getEnumTagSinglePayload(v44, 1, v98) == 1)
  {

    v125 = OUTLINED_FUNCTION_3_20();
    (v75)(v125);
    v126 = OUTLINED_FUNCTION_22_10();
    (v75)(v126);
LABEL_57:
    sub_1D986B804(v44, &qword_1ECB48710, &qword_1D9931340);
    v76 = 1;
    v77 = 1;
    v45 = v162;
    goto LABEL_28;
  }

  v130 = v158;
  v129 = v159;
  (*(v159 + 32))(v158, v44, v98);
  v131 = (*(v129 + 16))(v162 + v161[8], v130, v98);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_8_14();
  v134 = v132 - v133;
  if (*(a1 + 16) && (v135 = OUTLINED_FUNCTION_23_8(), v137 = sub_1D9889410(v135, v136), (v138 & 1) != 0))
  {
    OUTLINED_FUNCTION_1_13(v137);
    v140 = *v139;
    v141 = *(v139 + 16);
    v142 = *v139;
    v156 = *(v139 + 8);
    sub_1D986C8B8(v142, v156, v141);

    if (v141 != 4 || v156 | v140)
    {
      MEMORY[0x1EEE9AC00](v143);
      OUTLINED_FUNCTION_8_14();
      OUTLINED_FUNCTION_41_2();
      if (v141 == 3)
      {
        sub_1D987BA38(v140, v156);
        OUTLINED_FUNCTION_28_6();
        sub_1D992AD64();
        v146 = OUTLINED_FUNCTION_28_6();
        sub_1D986C908(v146, v147, 3);
      }

      else if (v141)
      {
        OUTLINED_FUNCTION_7_19(v75);
      }

      else
      {
        sub_1D992AE14();
      }

      v148 = OUTLINED_FUNCTION_25_8();
      OUTLINED_FUNCTION_42_1(v148);
      sub_1D986C908(v140, v156, v141);
    }

    else
    {
      OUTLINED_FUNCTION_7_19(v134);
    }

    (*(v159 + 8))(v158, v98);
    v149 = OUTLINED_FUNCTION_3_20();
    (v75)(v149);
    v150 = OUTLINED_FUNCTION_22_10();
    (v75)(v150);
  }

  else
  {

    (*(v159 + 8))(v158, v98);
    v144 = OUTLINED_FUNCTION_3_20();
    (v75)(v144);
    v145 = OUTLINED_FUNCTION_22_10();
    (v75)(v145);
    OUTLINED_FUNCTION_7_19(v134);
  }

  v151 = v161;
  v152 = v162;
  sub_1D989437C(v134, v162 + v161[9], &qword_1ECB481D0, &qword_1D992F9F0);
  v153 = v164;
  sub_1D98F8978(v152, v164);
  __swift_storeEnumTagSinglePayload(v153, 0, 1, v151);
  return sub_1D98F89DC(v152);
}

uint64_t sub_1D98F72EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9935220;
  *(v2 + 32) = 0x64695F6B636F6C63;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 0;
  v3 = sub_1D992AE84();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = v5;
  v65 = *(v7 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v64 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v6 + 16;
  v11 = *(v6 + 16);
  v11(&v59 - v64, v0, v3, v8);
  v12 = sub_1D992AE24();
  v14 = v13;
  v59 = v6;
  v15 = v6 + 8;
  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_18_10();
  v16(v17);
  *(v2 + 56) = xmmword_1D9931230;
  *(v2 + 72) = v12;
  *(v2 + 80) = v14;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0x636170735F676174;
  *(v2 + 104) = 0xE900000000000065;
  *(v2 + 112) = 2;
  v18 = type metadata accessor for TagsTable.Record(0);
  v19 = *(v0 + v18[5]);
  *(v2 + 120) = xmmword_1D9935230;
  *(v2 + 136) = v19;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0x64695F676174;
  *(v2 + 168) = 0xE600000000000000;
  *(v2 + 176) = 0;
  v20 = v18[6];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v60 = v11;
  v61 = v10;
  v11(&v59 - v64, v0 + v22, v3, v21);
  v23 = sub_1D992AE24();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_18_10();
  v62 = v16;
  v63 = v15;
  v16(v26);
  *(v2 + 184) = xmmword_1D9935240;
  *(v2 + 200) = v23;
  *(v2 + 208) = v25;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0x617461645F676174;
  *(v2 + 232) = 0xE800000000000000;
  *(v2 + 240) = 4;
  v27 = (v0 + v18[7]);
  v28 = *v27;
  v29 = v27[1];
  *(v2 + 248) = xmmword_1D9935250;
  *(v2 + 264) = v28;
  *(v2 + 272) = v29;
  *(v2 + 280) = 3;
  *(v2 + 288) = 0x5F64657461657263;
  *(v2 + 296) = 0xEA00000000006E6FLL;
  *(v2 + 304) = 3;
  v30 = v18[8];
  v31 = sub_1D992AE04();
  v32 = OUTLINED_FUNCTION_6(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v39 = v38 - v37;
  (*(v34 + 16))(v38 - v37, v1 + v30, v31);
  sub_1D987BA38(v28, v29);
  sub_1D992ADC4();
  v41 = v40;
  v42 = (*(v34 + 8))(v39, v31);
  v43 = v64;
  *(v2 + 312) = 0x5F64657461657263;
  *(v2 + 320) = 0xEA00000000006E6FLL;
  *(v2 + 328) = v41;
  *(v2 + 336) = 0;
  *(v2 + 344) = 2;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v18[9];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_19_0();
  v49 = v1 + v44;
  v50 = v3;
  sub_1D9866D90(v49, v39, &qword_1ECB481D0, &qword_1D992F9F0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v3) == 1)
  {
    sub_1D986B804(v39, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v51 = (*(v59 + 32))(&v59 - v43, v39, v3);
    MEMORY[0x1EEE9AC00](v51);
    v52 = OUTLINED_FUNCTION_15_7();
    v60(v52);
    v53 = sub_1D992AE24();
    v55 = v54;
    v56 = v62;
    (v62)(&v59 - v43, v50);
    sub_1D98BD920();
    v2 = v57;
    v56(&v59 - v43, v50);
    *(v2 + 16) = 6;
    strcpy((v2 + 352), "component_uuid");
    *(v2 + 367) = -18;
    *(v2 + 368) = 256;
    *(v2 + 370) = v66;
    *(v2 + 374) = v67;
    strcpy((v2 + 376), "component_uuid");
    *(v2 + 391) = -18;
    *(v2 + 392) = v53;
    *(v2 + 400) = v55;
    *(v2 + 408) = 0;
  }

  return v2;
}

uint64_t sub_1D98F7848(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(a1, v4, &qword_1ECB48970, &qword_1D99323A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {
    sub_1D986B804(v4, &qword_1ECB48970, &qword_1D99323A0);
    v14 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v15 = sub_1D98EC648();
    v17 = v16;
    v19 = v18;
    v20 = ~v18;
    sub_1D986B804(v4, &qword_1ECB48978, &qword_1D99323A8);
    v14 = MEMORY[0x1E69E7CC8];
    if (v20)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1D986B85C(v15, v17, v19, 0x64695F6B636F6C63, 0xE800000000000000, 0);
    }
  }

  if ((a2 & 0x10000000000) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    if ((a2 & 0x100000000) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2;
    }

    if ((a2 & 0x100000000) != 0)
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }

    sub_1D986B85C(v21, 0, v22, 0x636170735F676174, 0xE900000000000065, 2);
  }

  if (a4 >> 60 != 11)
  {
    sub_1D98F8A38(a3, a4);
    swift_isUniquelyReferenced_nonNull_native();
    if (a4 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v23 = a3;
    }

    if (a4 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v24 = a4;
    }

    if (a4 >> 60 == 15)
    {
      v25 = 4;
    }

    else
    {
      v25 = 3;
    }

    sub_1D986B85C(v23, v24, v25, 0x617461645F676174, 0xE800000000000000, 4);
    sub_1D98F8A60(a3, a4);
  }

  sub_1D986B804(a1, &qword_1ECB48970, &qword_1D99323A0);
  return v14;
}

uint64_t sub_1D98F7A9C()
{
  v3 = v0;
  OUTLINED_FUNCTION_22_3();
  v212 = v4;
  v213 = 0;
  v214 = v4;
  v5 = sub_1D992AE84();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_20_0();
  v202[1] = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v0, v0, &qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_13_12(v0);
  v203 = v0;
  if (v16)
  {
    sub_1D986B804(v0, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_6_22(v8);
    v19 = v18(v17);
    v1 = v202;
    MEMORY[0x1EEE9AC00](v19);
    v28 = OUTLINED_FUNCTION_1_34(v20, v21, v22, v23, v24, v25, v26, v27, v202[0]);
    v29(v28);
    v30 = sub_1D992AE24();
    v32 = v31;
    v33 = *(v8 + 8);
    v34 = OUTLINED_FUNCTION_33_8();
    v33(v34);
    OUTLINED_FUNCTION_22_3();
    v0 = &v212;
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v35, v36, v37, v38, v30, v32, 0);

    v39 = OUTLINED_FUNCTION_28_6();
    v33(v39);
    v3 = v203;
  }

  v40 = type metadata accessor for TagsTable.Predicate(0);
  v204 = v40;
  v41 = *(v3 + *(v40 + 20));
  v209 = v10;
  v210 = v5;
  v202[0] = v8;
  if (v41)
  {
    v42 = MEMORY[0x1E69E7CC0];
    if (*(v41 + 16))
    {
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_10_13();
      do
      {
        v208 = v202;
        MEMORY[0x1EEE9AC00](v43);
        v52 = OUTLINED_FUNCTION_11_17(v44, v45, v46, v47, v48, v49, v50, v51, v202[0]);
        v53 = (v8)(v52);
        MEMORY[0x1EEE9AC00](v53);
        v0 = (v202 - v0);
        v54 = OUTLINED_FUNCTION_15_7();
        (v8)(v54);
        v55 = sub_1D992AE24();
        v56 = OUTLINED_FUNCTION_27_5(v55);
        (v41)(v56);
        (v41)(v3, v1);
        OUTLINED_FUNCTION_24_8();
        if (v57)
        {
          OUTLINED_FUNCTION_34_5();
          v42 = v211;
        }

        OUTLINED_FUNCTION_12_14();
      }

      while (!v16);
      v8 = v202[0];
      v3 = v203;
      OUTLINED_FUNCTION_22_3();
    }

    sub_1D987B5CC(v1, 0xE800000000000000, 0, v42);
  }

  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_30_8();
  v58 = v204[6];
  MEMORY[0x1EEE9AC00](v59);
  v61 = (v202 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9866D90(v3 + v62, v61, &qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_13_12(v61);
  if (v16)
  {
    sub_1D986B804(v61, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v63 = OUTLINED_FUNCTION_6_22(v8);
    v65 = v64(v63);
    MEMORY[0x1EEE9AC00](v65);
    v74 = OUTLINED_FUNCTION_1_34(v66, v67, v68, v69, v70, v71, v72, v73, v202[0]);
    v75(v74);
    v76 = sub_1D992AE24();
    v78 = v77;
    v79 = *(v8 + 8);
    v79(v61, v210);
    v61 = &v212;
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v80, v81, v82, v83, v76, v78, 0);
    v3 = v203;

    v79(v2, v210);
  }

  v84 = *(v3 + v204[7]);
  if (v84)
  {
    v85 = MEMORY[0x1E69E7CC0];
    if (*(v84 + 16))
    {
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_10_13();
      do
      {
        v208 = v202;
        MEMORY[0x1EEE9AC00](v86);
        v95 = OUTLINED_FUNCTION_11_17(v87, v88, v89, v90, v91, v92, v93, v94, v202[0]);
        v96 = (v8)(v95);
        MEMORY[0x1EEE9AC00](v96);
        v61 = (v202 - v61);
        v97 = OUTLINED_FUNCTION_15_7();
        (v8)(v97);
        v98 = sub_1D992AE24();
        v99 = OUTLINED_FUNCTION_27_5(v98);
        (v84)(v99);
        (v84)(v3, v202);
        OUTLINED_FUNCTION_24_8();
        if (v57)
        {
          OUTLINED_FUNCTION_34_5();
          v85 = v211;
        }

        OUTLINED_FUNCTION_12_14();
      }

      while (!v16);
      v3 = v203;
    }

    v61 = &v212;
    v100 = OUTLINED_FUNCTION_21_7();
    sub_1D987B5CC(v100, v101, 0, v85);
  }

  v102 = (v3 + v204[8]);
  if ((v102[1] & 1) == 0)
  {
    v103 = *v102;
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v104, v105, v106, v107, v108, 0, 1);
  }

  v109 = *(v3 + v204[9]);
  if (v109)
  {
    v110 = *(v109 + 16);
    v111 = MEMORY[0x1E69E7CC0];
    if (v110)
    {
      v211 = MEMORY[0x1E69E7CC0];
      v61 = &v211;
      sub_1D98B9860();
      v111 = v211;
      v112 = (v109 + 32);
      v113 = *(v211 + 16);
      v114 = 24 * v113;
      do
      {
        v116 = *v112++;
        v115 = v116;
        v211 = v111;
        v117 = v113 + 1;
        if (v113 >= *(v111 + 24) >> 1)
        {
          v61 = &v211;
          sub_1D98B9860();
          v111 = v211;
        }

        *(v111 + 16) = v117;
        v118 = v111 + v114;
        *(v118 + 32) = v115;
        *(v118 + 40) = 0;
        *(v118 + 48) = 1;
        v114 += 24;
        v113 = v117;
        --v110;
      }

      while (v110);
    }

    v119 = OUTLINED_FUNCTION_38_2();
    sub_1D987B5CC(v119, v120, 0, v111);
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v208 = v202;
  v122 = OUTLINED_FUNCTION_5(v121);
  v124 = *(v123 + 64);
  v125 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v122);
  v126 = v204[10];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
  OUTLINED_FUNCTION_9(v127);
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v203 + v126, v61, &qword_1ECB48708, &qword_1D9931338);
  if (__swift_getEnumTagSinglePayload(v61, 1, v121) == 1)
  {
    v131 = sub_1D986B804(v61, &qword_1ECB48708, &qword_1D9931338);
    v132 = v202[0];
  }

  else
  {
    sub_1D989437C(v61, v202 - v125, &qword_1ECB48700, &qword_1D9931330);
    v133 = sub_1D992AE04();
    v206 = v202;
    v134 = OUTLINED_FUNCTION_6(v133);
    v136 = v135;
    v138 = *(v137 + 64);
    MEMORY[0x1EEE9AC00](v134);
    MEMORY[0x1EEE9AC00](v202 - v125);
    v139 = v202 - v125;
    v207 = v140;
    sub_1D9866D90(v140, v202 - v125, &qword_1ECB48700, &qword_1D9931330);
    v141 = *(v121 + 48);
    OUTLINED_FUNCTION_13_12(v139);
    v205 = v136;
    if (v16)
    {
      sub_1D986B804(&v139[v141], &qword_1ECB48710, &qword_1D9931340);
      v142 = OUTLINED_FUNCTION_18_10();
      v155 = sub_1D986B804(v142, v143, &qword_1D9931340);
    }

    else
    {
      v144 = OUTLINED_FUNCTION_6_22(v136);
      v145(v144);
      v146 = sub_1D986B804(&v139[v141], &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v146);
      v147 = OUTLINED_FUNCTION_2_32(v136);
      v148(v147);
      sub_1D992ADC4();
      v149 = *(v136 + 8);
      v150 = OUTLINED_FUNCTION_33_8();
      v149(v150);
      v151 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v151, v152, 15678, 0xE200000000000000, v153, 0, 2);
      v154 = OUTLINED_FUNCTION_28_6();
      v155 = (v149)(v154);
    }

    MEMORY[0x1EEE9AC00](v155);
    MEMORY[0x1EEE9AC00](v156);
    v157 = v202 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = v207;
    sub_1D9866D90(v207, v157, &qword_1ECB48700, &qword_1D9931330);
    v159 = *(v121 + 48);
    OUTLINED_FUNCTION_13_12(&v157[v159]);
    if (v16)
    {
      sub_1D986B804(v158, &qword_1ECB48700, &qword_1D9931330);
      sub_1D986B804(&v157[v159], &qword_1ECB48710, &qword_1D9931340);
      v160 = OUTLINED_FUNCTION_18_10();
      v131 = sub_1D986B804(v160, v161, &qword_1D9931340);
    }

    else
    {
      v162 = v205;
      (*(v205 + 32))(v202 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0), &v157[v159], v133);
      v163 = sub_1D986B804(v157, &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v163);
      v164 = OUTLINED_FUNCTION_2_32(v162);
      v165(v164);
      sub_1D992ADC4();
      v166 = *(v162 + 8);
      v167 = OUTLINED_FUNCTION_33_8();
      v166(v167);
      v168 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v168, v169, 15676, 0xE200000000000000, v170, 0, 2);
      v171 = OUTLINED_FUNCTION_28_6();
      v166(v171);
      v131 = sub_1D986B804(v158, &qword_1ECB48700, &qword_1D9931330);
    }

    v132 = v202[0];
  }

  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_30_8();
  v172 = v204[11];
  MEMORY[0x1EEE9AC00](v173);
  v175 = v202 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9866D90(v177 + v176, v175, &qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_13_12(v175);
  if (v16)
  {
    sub_1D986B804(v175, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v178 = OUTLINED_FUNCTION_6_22(v132);
    v180 = v179(v178);
    MEMORY[0x1EEE9AC00](v180);
    v189 = OUTLINED_FUNCTION_1_34(v181, v182, v183, v184, v185, v186, v187, v188, v202[0]);
    v190(v189);
    v191 = sub_1D992AE24();
    v193 = v192;
    v194 = *(v132 + 8);
    v195 = OUTLINED_FUNCTION_33_8();
    v194(v195);
    OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_37_3();
    sub_1D986F118(v196, v197, v198, v199, v191, v193, 0);

    v200 = OUTLINED_FUNCTION_28_6();
    v194(v200);
  }

  sub_1D986FC08(v212, v213);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t sub_1D98F86F8@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for SQLDelete;
  a1[4] = &off_1F5516CC0;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = type metadata accessor for TagsTable.Predicate(0);
  v2[7] = v3;
  v2[8] = &off_1F5516A58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 4);
  sub_1D992AE84();
  OUTLINED_FUNCTION_7_19(boxed_opaque_existential_1);
  OUTLINED_FUNCTION_7_19(boxed_opaque_existential_1 + v3[6]);
  v5 = boxed_opaque_existential_1 + v3[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v7 = *(v6 + 48);
  v8 = sub_1D992AE04();
  v9 = __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  sub_1D992ADF4();
  sub_1D992AD94();
  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_33_8();
  v14(v13);
  __swift_storeEnumTagSinglePayload(v5 + v7, 0, 1, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  result = OUTLINED_FUNCTION_7_19(boxed_opaque_existential_1 + v3[11]);
  *(boxed_opaque_existential_1 + v3[5]) = 0;
  *(boxed_opaque_existential_1 + v3[7]) = 0;
  v16 = boxed_opaque_existential_1 + v3[8];
  *v16 = 0;
  v16[4] = 1;
  *(boxed_opaque_existential_1 + v3[9]) = 0;
  v2[2] = 1936154996;
  v2[3] = 0xE400000000000000;
  return result;
}

uint64_t sub_1D98F8978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagsTable.Record(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98F89DC(uint64_t a1)
{
  v2 = type metadata accessor for TagsTable.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98F8A38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1D98F8A4C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D98F8A4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D987BA38(a1, a2);
  }

  return a1;
}

uint64_t sub_1D98F8A60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1D9866358(a1, a2);
  }

  return a1;
}

uint64_t sub_1D98F8A9C()
{
  sub_1D98946B4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D9894860(319, &qword_1ECB479B0, &qword_1ECB48740, &qword_1D99313F0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D98F8BCC();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D9894860(319, &qword_1ECB47988, &qword_1ECB48FE0, &qword_1D99352F0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D9894860(319, &qword_1ED8BD8E0, &qword_1ECB48700, &qword_1D9931330);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1D98F8BCC()
{
  if (!qword_1ECB478A0)
  {
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB478A0);
    }
  }
}

void sub_1D98F8C54()
{
  sub_1D992AE84();
  if (v0 <= 0x3F)
  {
    sub_1D992AE04();
    if (v1 <= 0x3F)
    {
      sub_1D98946B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void OUTLINED_FUNCTION_24_8()
{
  v2 = *(v1 - 152);
  *(v1 - 128) = v0;
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_27_5(uint64_t a1)
{
  *(v2 - 160) = a1;
  v3 = **(v2 - 192);
  return v1;
}

uint64_t OUTLINED_FUNCTION_42_1(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

id static PersistentStorage.dataVault.getter()
{
  v0 = sub_1D992AD44();
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  sub_1D98F97F8();
  v9 = type metadata accessor for DataVault();
  v10 = objc_allocWithZone(v9);
  (*(v3 + 16))(v10 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v8, v0);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v3 + 8))(v8, v0);
  return v11;
}

uint64_t sub_1D98F8F10()
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((sub_1D98F900C() & 1) == 0)
  {
    v0 = [objc_opt_self() defaultManager];
    v1 = sub_1D992ACD4();
    v7[0] = 0;
    v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v7];

    if (v2)
    {
      v3 = v7[0];
    }

    else
    {
      v4 = v7[0];
      sub_1D992AC94();

      swift_willThrow();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1D98F900C()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  sub_1D992AD34();
  v1 = sub_1D992B614();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return (v2 & v5);
}

void sub_1D98F90D4()
{
  v39 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1D992AD34();
  v2 = sub_1D992B614();

  v3 = [v1 fileExistsAtPath_];

  if (!v3)
  {
LABEL_12:
    v36 = *MEMORY[0x1E69E9840];
    return;
  }

  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_13();
  sub_1D992BD64();

  v38 = 0xE700000000000000;
  sub_1D992AD44();
  sub_1D9887904();
  v4 = OUTLINED_FUNCTION_4_23();
  MEMORY[0x1DA739C30](v4);

  MEMORY[0x1DA739C30](544175136, 0xE400000000000000);
  v5 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v5);

  MEMORY[0x1DA739C30](3026478, 0xE300000000000000);
  sub_1D986A454(0x20676E69766F4DLL, 0xE700000000000000, 0xD000000000000061, 0x80000001D993C9A0, 0x6F72662865766F6DLL, 0xEE00293A6F743A6DLL);

  v6 = [v0 defaultManager];
  v7 = sub_1D992ACD4();
  v8 = sub_1D992ACD4();
  v37 = 0;
  v9 = [v6 moveItemAtURL:v7 toURL:v8 error:&v37];

  v10 = v37;
  if (!v9)
  {
    v13 = v37;
    v14 = sub_1D992AC94();

    swift_willThrow();
    OUTLINED_FUNCTION_9_13();
    sub_1D992BD64();
    v15 = OUTLINED_FUNCTION_4_23();
    v17 = v16;

    v37 = v15;
    v38 = v17;
    MEMORY[0x1DA739C30](0x2073747369786520, 0xEB00000000207461);
    v18 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v18);

    MEMORY[0x1DA739C30](0x69766F6D6572202CLL, 0xED00002E2E2E676ELL);
    OUTLINED_FUNCTION_2_33();
    sub_1D986A454(v19, v20, v21, v22, v23, 0xEE00293A6F743A6DLL);

    v24 = [v0 defaultManager];
    v25 = sub_1D992ACD4();
    v37 = 0;
    LODWORD(v17) = [v24 removeItemAtURL:v25 error:&v37];

    if (v17)
    {
      v26 = v37;
      v27 = v14;
    }

    else
    {
      v28 = v37;
      v29 = sub_1D992AC94();

      swift_willThrow();
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();

      v37 = 0xD000000000000011;
      v38 = 0x80000001D993CA10;
      v30 = OUTLINED_FUNCTION_4_23();
      MEMORY[0x1DA739C30](v30);

      OUTLINED_FUNCTION_2_33();
      sub_1D98DCEB4(v31, v32, v33, v34, v35, 0xEE00293A6F743A6DLL);

      v27 = v29;
    }

    goto LABEL_12;
  }

  v11 = *MEMORY[0x1E69E9840];

  v12 = v10;
}

uint64_t sub_1D98F9590()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D992AD44();
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  sub_1D992AD04();
  if ((sub_1D98F900C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = [objc_opt_self() defaultManager];
  v10 = sub_1D992ACD4();
  v17[0] = 0;
  v11 = [v9 removeItemAtURL:v10 error:v17];

  if (!v11)
  {
    v15 = v17[0];
    sub_1D992AC94();

    swift_willThrow();
LABEL_5:
    result = (*(v3 + 8))(v8, v0);
    goto LABEL_6;
  }

  v12 = *(v3 + 8);
  v13 = v17[0];
  result = v12(v8, v0);
LABEL_6:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D98F9734()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_1D992B624();
    v4 = v3;

    MEMORY[0x1DA739C30](v2, v4);

    MEMORY[0x1DA739C30](0x7972617262694C2FLL, 0xE800000000000000);
    sub_1D992ACB4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98F97F8()
{
  v0 = sub_1D992AD44();
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  sub_1D98F9734();
  sub_1D992ACF4();
  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_1D98F9900()
{
  v0 = sub_1D992AD44();
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  sub_1D992AD04();
  sub_1D98F8F10();
  (*(v3 + 8))(v8, v0);
  return 1;
}

id PersistentStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersistentStorage.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistentStorage();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PersistentStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistentStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D98F9AC0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D992B614();

  v2 = [v0 initWithServiceName_];

  return v2;
}

uint64_t sub_1D98F9B34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1D98F9B78(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_1D98BA058(v8, v19);
    v10 = v5(v19);
    if (v3)
    {
      sub_1D98BA0B4(v19);

LABEL_14:

      return;
    }

    if (v10)
    {
      v16 = v19[0];
      v17 = v19[1];
      v18 = v19[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v9 + 16);
        OUTLINED_FUNCTION_13_13();
        v9 = v20;
      }

      v13 = *(v9 + 16);
      if (v13 >= *(v9 + 24) >> 1)
      {
        sub_1D98B9918();
        v9 = v20;
      }

      *(v9 + 16) = v13 + 1;
      v14 = (v9 + 48 * v13);
      v14[3] = v17;
      v14[4] = v18;
      v14[2] = v16;
      v5 = a1;
    }

    else
    {
      sub_1D98BA0B4(v19);
    }

    v8 += 48;
    ++v6;
  }

  __break(1u);
}

void sub_1D98F9CD8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      if (!v6)
      {
        goto LABEL_5;
      }

      v8 = *(v6 + 16);
      if (v5 == v8)
      {
        break;
      }

      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      sub_1D98BA058(v6 + 48 * v5 + 32, &v22);
      v26 = v23;
      v27 = v24;
      v25 = v22;
      if (!v24)
      {

        goto LABEL_20;
      }

      v28 = v25;
      v29 = v26;
      v30 = v27;
      v11 = a1(&v28);
      if (v3)
      {
        sub_1D98BA0B4(&v28);

        return;
      }

      if (v11)
      {
        v25 = v28;
        v26 = v29;
        v27 = v30;
        v12 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = *(v21 + 16);
          OUTLINED_FUNCTION_13_13();
          v12 = v31;
        }

        v15 = *(v12 + 16);
        v16 = v15 + 1;
        if (v15 >= *(v12 + 24) >> 1)
        {
          sub_1D98B9918();
          v16 = v15 + 1;
          v12 = v31;
        }

        *(v12 + 16) = v16;
        v21 = v12;
        v17 = (v12 + 48 * v15);
        v18 = v25;
        v19 = v27;
        v17[3] = v26;
        v17[4] = v19;
        v17[2] = v18;
      }

      else
      {
        sub_1D98BA0B4(&v28);
      }

      ++v5;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    sub_1D986B804(&v22, &qword_1ECB49018, &qword_1D9935448);
LABEL_5:
    v9 = *(a3 + 16);
    if (v7 == v9)
    {

      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
LABEL_20:

      sub_1D986B804(&v25, &qword_1ECB49018, &qword_1D9935448);
      return;
    }

    if (v7 >= v9)
    {
      break;
    }

    v10 = *(a3 + 8 * v7 + 32);

    v5 = 0;
    v6 = v10;
    ++v7;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1D98F9F28(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1D98682F0(a3);
  v8 = result;
  v9 = 0;
  v10 = v4 & 0xC000000000000001;
  v18 = v4;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return v21;
    }

    if (v10)
    {
      result = MEMORY[0x1DA73A2C0](v9, v4);
      v11 = result;
    }

    else
    {
      if (v9 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v4 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v20 = v11;
    v12 = a1(&v20);
    if (v3)
    {
    }

    if (v12)
    {
      sub_1D992BDA4();
      v13 = v8;
      v14 = v10;
      v15 = a1;
      v16 = a2;
      v17 = *(v21 + 16);
      sub_1D992BDD4();
      a2 = v16;
      a1 = v15;
      v10 = v14;
      v8 = v13;
      v4 = v18;
      sub_1D992BDE4();
      result = sub_1D992BDB4();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D98FA0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp();
  if (*(a1 + *(v4 + 24)))
  {
    if (qword_1ED8BD6F0 != -1)
    {
      swift_once();
    }

    sub_1D986A454(0xD000000000000036, 0x80000001D993CBD0, 0xD00000000000007DLL, 0x80000001D993CC10, 0x2874694674736562, 0xED0000293A726F66);
    return 0;
  }

  else
  {
    v52 = v4;
    MEMORY[0x1EEE9AC00](v4);
    v40 = a1;
    v41 = 1;

    v57 = sub_1D98F9F28(sub_1D98FC574, v39, a2);
    v58 = v57;
    v53 = 0;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FE8, &qword_1D99353F0);
    v7 = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FF0, &qword_1D99353F8);
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v48 = *(v9 + 80);
    v49 = v10;
    v51 = v6;
    v12 = swift_allocObject();
    v46 = xmmword_1D992FCB0;
    *(v12 + 16) = xmmword_1D992FCB0;
    swift_getKeyPath();
    v50 = v11;
    sub_1D992AC04();
    v60 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48FF8, &qword_1D9935420);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49000, &qword_1D9935428);
    v15 = sub_1D98FC598(&qword_1ECB479A0, &qword_1ECB48FF8, &qword_1D9935420);
    v16 = sub_1D98FC598(&qword_1ECB479B8, &qword_1ECB49000, &qword_1D9935428);
    v17 = sub_1D98FC5EC();
    v47 = v13;
    v45 = v14;
    v18 = v8;
    v19 = v7;
    v20 = sub_1D992B734();

    v57 = sub_1D98878D8(v20);
    if (v57 > 1)
    {
      v42[1] = v17;
      v42[2] = v16;
      v42[3] = v15;
      v42[4] = v18;
      v43 = a1;
      v44 = v7;
      if (qword_1ECB47AD0 != -1)
      {
        swift_once();
      }

      v42[0] = qword_1ECB49628;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_1D992BD64();

      v58 = 0xD000000000000018;
      v59 = 0x80000001D993CC90;
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D98B977C();
      v21 = v60;
      v55 = v20 & 0xC000000000000001;
      v56 = v20;
      v22 = sub_1D992AE84();
      v23 = v22;
      v24 = 0;
      v25 = *(v22 - 8);
      v26 = *(v25 + 64);
      v27 = (v25 + 16);
      v54 = v25 + 32;
      do
      {
        v28 = MEMORY[0x1EEE9AC00](v22);
        if (v55)
        {
          v29 = MEMORY[0x1DA73A2C0](v24, v56, v28);
          (*v27)(v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier, v23);
          swift_unknownObjectRelease();
        }

        else
        {
          (*v27)(v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), *(v56 + 8 * v24 + 32) + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier, v23, v28);
        }

        v60 = v21;
        v30 = *(v21 + 16);
        if (v30 >= *(v21 + 24) >> 1)
        {
          sub_1D98B977C();
          v21 = v60;
        }

        ++v24;
        *(v21 + 16) = v30 + 1;
        v22 = (*(v25 + 32))(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v30, v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
      }

      while (v57 != v24);
      v31 = MEMORY[0x1DA739D10](v21, v23);
      v33 = v32;

      MEMORY[0x1DA739C30](v31, v33);

      MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D993CCB0);
      a1 = v43;
      v60 = *(v43 + *(v52 + 20));
      v34 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v34);

      sub_1D98DCEB4(v58, v59, 0xD00000000000007DLL, 0x80000001D993CC10, 0x2874694674736562, 0xED0000293A726F66);

      v19 = v44;
      v20 = v56;
    }

    if (sub_1D98682F0(v20))
    {
      sub_1D98BF364(0, (v20 & 0xC000000000000001) == 0, v20);
      if ((v20 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA73A2C0](0, v20);
      }

      else
      {
        v5 = *(v20 + 32);
      }
    }

    else
    {

      MEMORY[0x1EEE9AC00](v35);
      v40 = a1;
      v41 = 0;

      v58 = sub_1D98F9F28(sub_1D98FC9D0, v39, v19);
      v36 = swift_allocObject();
      *(v36 + 16) = v46;
      swift_getKeyPath();
      sub_1D992AC04();
      v60 = v36;
      v37 = sub_1D992B734();

      v5 = sub_1D98FA874(v37);
    }
  }

  return v5;
}

uint64_t sub_1D98FA874(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1D98BF364(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        v4 = *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x1DA73A2C0](v3, a1);
  }

  result = sub_1D992BC94();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1D98FA908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v6 = sub_1D992AD44();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = type metadata accessor for PersistentStorage();
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D98F97F8();
  v14 = type metadata accessor for DataVault();
  v15 = objc_allocWithZone(v14);
  (*(v9 + 16))(v15 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v13, v6);
  v18.receiver = v15;
  v18.super_class = v14;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v9 + 8))(v13, v6);
  sub_1D992ACE4();

  (*(v9 + 32))(v3 + OBJC_IVAR____TtC13SiriAnalytics21ExternalDataIngestion_poolUrl, v13, v6);
  return v3;
}

uint64_t sub_1D98FAAF8()
{
  v1[10] = v0;
  v2 = type metadata accessor for StagingPoolEntry();
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  v1[11] = OUTLINED_FUNCTION_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C38, &qword_1D9935430);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_20();
  v8 = type metadata accessor for StagedMessage();
  v1[13] = v8;
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_20();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49008, &qword_1D9935438);
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_20();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49010, &qword_1D9935440);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6DFA0](sub_1D98FAC58, v0, 0);
}

uint64_t sub_1D98FAC58()
{
  receiver = v0[5].receiver;
  v2 = OBJC_IVAR____TtC13SiriAnalytics21ExternalDataIngestion_poolUrl;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BB8, &qword_1D9932A00);
  v3 = sub_1D992AD44();
  OUTLINED_FUNCTION_6(v3);
  v5 = v4;
  v7 = *(v6 + 64) + 15;
  swift_task_alloc();
  v8 = *(v5 + 16);
  v8();
  v9 = *MEMORY[0x1E696A388];
  v0[9].super_class = sub_1D992B324();

  v10 = objc_allocWithZone(type metadata accessor for StagingReport());
  v0[10].receiver = sub_1D988C7F4(1);
  v11 = swift_task_alloc();
  (v8)(v11, &receiver[v2], v3);
  v12 = type metadata accessor for StagingPoolHost();
  v13 = objc_allocWithZone(v12);
  (v8)(&v13[OBJC_IVAR____TtC13SiriAnalytics15StagingPoolHost_stagingContainerURL], v11, v3);
  v0[1].receiver = v13;
  v0[1].super_class = v12;
  v14 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[10].super_class = v14;
  (*(v5 + 8))(v11, v3);

  type metadata accessor for ExtensionOrchestratorConnection();
  v15 = swift_allocObject();
  v0[11].receiver = sub_1D98FC644(v14, v15);
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v0[11].super_class = qword_1ECB49658;
  OUTLINED_FUNCTION_1_35();
  sub_1D986A454(0xD000000000000014, v16 | 0x8000000000000000, v17 + 87, v18 | 0x8000000000000000, v19, 0xE800000000000000);
  v20 = swift_task_alloc();
  v0[12].receiver = v20;
  *v20 = v0;
  v20[1] = sub_1D98FAF20;

  return sub_1D989F390();
}

uint64_t sub_1D98FAF20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = v1;

  v7 = v4[10];
  if (v1)
  {
    v8 = sub_1D98FB770;
  }

  else
  {
    v4[26] = a1;
    v8 = sub_1D98FB05C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D98FB05C()
{
  *(v0 + 216) = *(v0 + 200);
  v1 = *(*(v0 + 80) + 112);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_4_24(v2);

  return sub_1D98E2CE4();
}

uint64_t sub_1D98FB0DC(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D98FB1F4, v3, 0);
}

uint64_t sub_1D98FB1F4()
{
  OUTLINED_FUNCTION_1_35();
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[19];
  OUTLINED_FUNCTION_12_15();
  sub_1D986A454(v4, v5, v6, v7, v8, 0xE800000000000000);

  sub_1D992B394();
  if (v1)
  {
    v9 = v0[30];
    v10 = v0[28];
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[19];
    v14 = v0[20];
    v16 = v0[17];
    v15 = v0[18];
    v76 = v0[14];
    v77 = v0[12];
    v78 = v0[11];

    sub_1D98C18BC(v13, 0);

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[19];
    v20 = v0[16];
    v74 = v0[10];

    sub_1D992B4B4();
    v21 = (v20 + 32);
    for (i = (v20 + 8); ; (*i)(v44, v45))
    {
      v23 = v0[18];
      v24 = v0[15];
      sub_1D992B4C4();
      if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
      {
        break;
      }

      v25 = v0[30];
      v27 = v0[12];
      v26 = v0[13];
      v28 = v0[11];
      (*v21)(v0[17], v0[18], v0[15]);
      v29 = objc_autoreleasePoolPush();
      sub_1D992B4E4();
      sub_1D98FB8D8(v28, v25, v27);
      sub_1D98FC958(v28, type metadata accessor for StagingPoolEntry);
      if (__swift_getEnumTagSinglePayload(v27, 1, v26) == 1)
      {
        v30 = v0[23];
        v31 = v0[17];
        v32 = v0[15];
        sub_1D986B804(v0[12], &qword_1ECB48C38, &qword_1D9935430);
        sub_1D992BD64();
        v0[6] = 0;
        v0[7] = 0xE000000000000000;
        MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D993CD90);
        sub_1D992BE24();
        v33 = v0[6];
        v34 = v0[7];
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_1_35();
        sub_1D98DCEB4(v35, v36, v37, v38, v39, 0xE800000000000000);

        sub_1D992B4A4();
      }

      else
      {
        v40 = v0[14];
        sub_1D98FC8F8(v0[12], v40, type metadata accessor for StagedMessage);
        v41 = *(v74 + 120);
        if ((sub_1D9868C6C(v40) & 1) == 0)
        {
          v46 = v0[23];
          v47 = v0[17];
          v49 = v0[14];
          v48 = v0[15];
          OUTLINED_FUNCTION_12_15();
          OUTLINED_FUNCTION_1_35();
          sub_1D98DCEB4(v50, v51, v52, v53, v54, 0xE800000000000000);
          OUTLINED_FUNCTION_5_21();
          sub_1D98FC958(v49, v55);
          objc_autoreleasePoolPop(v29);
          (*i)(v47, v48);
          break;
        }

        v42 = v0[14];
        sub_1D992B4A4();
        OUTLINED_FUNCTION_5_21();
        sub_1D98FC958(v42, v43);
      }

      v44 = v0[17];
      v45 = v0[15];
      objc_autoreleasePoolPop(v29);
    }

    v56 = v0[30];
    v57 = v0[22];
    v58 = v0[23];
    v59 = v0[20];
    v60 = v0[21];
    v61 = v0[19];
    v70 = v0[18];
    v71 = v0[17];
    v72 = v0[14];
    v73 = v0[12];
    v75 = v0[11];

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001BLL, 0x80000001D993CD50);
    v0[9] = sub_1D992B494();
    v62 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v62);

    MEMORY[0x1DA739C30](0xD00000000000001FLL, 0x80000001D993CD70);
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_1_35();
    sub_1D986A454(v63, v64, v65, v66, v67, 0xE800000000000000);

    sub_1D98C7F7C();

    sub_1D98C18BC(v61, 0);

    v68 = v0[1];
    v69 = v0[28];

    return v68(v69);
  }
}

uint64_t sub_1D98FB770()
{
  v1 = v0[25];
  v2 = v0[23];
  sub_1D992BD64();
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D993CCF0);
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v3 = v0[4];
  v4 = v0[5];
  OUTLINED_FUNCTION_1_35();
  sub_1D986A454(v5, v4, 0xD00000000000006BLL, 0x80000001D993CAD0, v6, 0xE800000000000000);

  v7 = MEMORY[0x1E69E7CC8];
  v0[27] = 0;
  v0[28] = v7;
  v8 = *(v0[10] + 112);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_4_24(v9);

  return sub_1D98E2CE4();
}

uint64_t sub_1D98FB8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v95 - v10;
  v12 = type metadata accessor for MonotonicTimestamp();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = *(a1 + *(type metadata accessor for StagingPoolEntry() + 20));
  if ([v19 anyEventType] == 6)
  {
    v20 = [v19 unwrap];
    if (v20)
    {
      v21 = v20;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D992AE84();
        v95[1] = v95;
        v25 = OUTLINED_FUNCTION_6(v24);
        v27 = v26;
        v29 = *(v28 + 64);
        MEMORY[0x1EEE9AC00](v25);
        v96 = v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        v95[0] = v95;
        v31 = OUTLINED_FUNCTION_9(v30);
        v33 = *(v32 + 64);
        v34 = MEMORY[0x1EEE9AC00](v31);
        v36 = v95 - v35;
        v37 = [v23 metadata];
        if (v37 && (v38 = v37, v39 = [v37 eventId], v38, v39))
        {
          sub_1D992BA04();

          if (__swift_getEnumTagSinglePayload(v36, 1, v24) != 1)
          {
            (*(v27 + 32))(v96, v36, v24);
LABEL_26:
            v78 = [v23 event];
            if (v78)
            {
              v79 = v78;
              v80 = MEMORY[0x1EEE9AC00](v78);
              v81 = v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v27 + 16))(v81, v96, v24, v80);
              v82 = [v23 metadata];
              v83 = v82;
              if (v82)
              {
                v84 = [v82 timestamp];

                if (v84)
                {
                  sub_1D992B164();
                  v83 = sub_1D992B124();
                }

                else
                {
                  v83 = 0;
                }
              }

              (*(v27 + 8))(v96, v24);
              v89 = type metadata accessor for StagedMessage();
              v90 = v89[7];
              sub_1D992AE04();
              OUTLINED_FUNCTION_10_4();
              __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
              (*(v27 + 32))(a3, v81, v24);
              *(a3 + v89[5]) = v83;
              *(a3 + v89[6]) = v79;
              v85 = a3;
              v86 = 0;
              v87 = 1;
              v88 = v89;
            }

            else
            {
              if (qword_1ED8BD6F0 != -1)
              {
                OUTLINED_FUNCTION_0_1();
              }

              OUTLINED_FUNCTION_9_16(0xD00000000000002DLL, "unwrap properly/");

              (*(v27 + 8))(v96, v24);
              type metadata accessor for StagedMessage();
              OUTLINED_FUNCTION_10_4();
            }

            return __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
          }
        }

        else
        {
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v75, v76, v77, v24);
        }

        sub_1D992AE74();
        if (__swift_getEnumTagSinglePayload(v36, 1, v24) != 1)
        {
          sub_1D986B804(v36, &qword_1ECB481D0, &qword_1D992F9F0);
        }

        goto LABEL_26;
      }
    }

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_9_16(0xD000000000000030, "prepareForStaging(_:allClocks:)");

    type metadata accessor for StagedMessage();
    OUTLINED_FUNCTION_10_4();

    return __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  }

  sub_1D98C7934(a1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1D986B804(v11, &qword_1ECB486F8, &unk_1D99311F0);
  }

  else
  {
    sub_1D98FC8F8(v11, v18, type metadata accessor for MonotonicTimestamp);
    if (a2)
    {
      v40 = sub_1D98FA0B0(v18, a2);
      if (v40)
      {
        v41 = v40;
        sub_1D986E35C(0, &qword_1ED8BD648, off_1E85863F0);
        v42 = *(v18 + *(v12 + 20));
        v43 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
        v44 = sub_1D992AE84();
        v45 = OUTLINED_FUNCTION_6(v44);
        v47 = *(v46 + 64);
        MEMORY[0x1EEE9AC00](v45);
        OUTLINED_FUNCTION_13();
        v50 = v49 - v48;
        (*(v51 + 16))(v49 - v48, v41 + v43, v44);
        v52 = sub_1D98FC334(v42, v50);
        if (qword_1ED8BD6F0 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v96 = qword_1ECB49658;
        v98 = 0;
        v99 = 0xE000000000000000;
        sub_1D992BD64();

        v98 = 0x2064656E67696C41;
        v99 = 0xE800000000000000;
        v97 = v42;
        v53 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v53);

        MEMORY[0x1DA739C30](2112032, 0xE300000000000000);
        sub_1D98A19C4();
        v54 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v54);

        MEMORY[0x1DA739C30](0x636F6C63206F7420, 0xEB00000000203A6BLL);
        v55 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v55);

        sub_1D986A454(v98, v99, 0xD00000000000006BLL, 0x80000001D993CAD0, 0xD00000000000001FLL, 0x80000001D993CB40);

        OUTLINED_FUNCTION_6_23();
        goto LABEL_19;
      }
    }

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v98 = 0;
    v99 = 0xE000000000000000;
    sub_1D992BD64();

    v98 = 0xD000000000000023;
    v99 = 0x80000001D993CAA0;
    v97 = *(v18 + *(v12 + 20));
    v56 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v56);

    MEMORY[0x1DA739C30](2112032, 0xE300000000000000);
    sub_1D992AE84();
    sub_1D98A19C4();
    v57 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v57);

    sub_1D986A454(v98, v99, 0xD00000000000006BLL, 0x80000001D993CAD0, 0xD00000000000001FLL, 0x80000001D993CB40);

    OUTLINED_FUNCTION_6_23();
  }

  v52 = 0;
LABEL_19:
  v58 = sub_1D992AE84();
  v59 = OUTLINED_FUNCTION_6(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13();
  v66 = v65 - v64;
  sub_1D992AE74();
  if (v52)
  {
    v67 = sub_1D9868568();
  }

  else
  {
    v67 = 0;
  }

  v68 = type metadata accessor for StagedMessage();
  v69 = v68[7];
  sub_1D992AE04();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  (*(v61 + 32))(a3, v66, v58);
  *(a3 + v68[5]) = v67;
  *(a3 + v68[6]) = v19;
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v68);
}

id sub_1D98FC334(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D992AE44();
  v6 = [v4 initWithNanosecondsSinceBoot:a1 clockIdentifier:v5];

  v7 = sub_1D992AE84();
  (*(*(v7 - 8) + 8))(a2, v7);
  return v6;
}

uint64_t sub_1D98FC3D8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC13SiriAnalytics21ExternalDataIngestion_poolUrl;
  v4 = sub_1D992AD44();
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 8))(v0 + v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98FC448()
{
  sub_1D98FC3D8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ExternalDataIngestion()
{
  result = qword_1ECB47D10;
  if (!qword_1ECB47D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98FC4C8()
{
  result = sub_1D992AD44();
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

uint64_t sub_1D98FC598(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D98FC5EC()
{
  result = qword_1ECB48058;
  if (!qword_1ECB48058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48FF0, &qword_1D99353F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48058);
  }

  return result;
}

uint64_t *sub_1D98FC644(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_defaultActor_initialize();
  a2[14] = 0;
  if (qword_1ECB47AE0 != -1)
  {
    swift_once();
  }

  sub_1D986A454(0x292874696E69, 0xE600000000000000, 0xD00000000000007ELL, 0x80000001D9938B10, 0x736F682874696E69, 0xEB00000000293A74);
  sub_1D986E35C(0, &qword_1ECB47970, 0x1E696B0B8);
  v5 = sub_1D98F9AC0();
  v6 = a2[14];
  a2[14] = v5;
  v7 = v5;

  v8 = objc_opt_self();
  v9 = [v8 interfaceWithProtocol_];
  sub_1D989EE44();
  [v7 setRemoteObjectInterface_];
  v10 = [v8 interfaceWithProtocol_];
  [v7 setExportedInterface_];

  [v7 setExportedObject_];
  v11 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_1D98FC9B0;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D98F9B34;
  v14[3] = &block_descriptor_15;
  v12 = _Block_copy(v14);

  [v7 setInvalidationHandler_];
  _Block_release(v12);
  [v7 resume];

  return a2;
}

uint64_t sub_1D98FC8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D98FC958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_13_13()
{

  sub_1D98B9918();
}

uint64_t sub_1D98FCA0C()
{
  v1 = v0;
  v2 = type metadata accessor for StagedMessage();
  v3 = *(v0 + *(v2 + 20));
  if (!v3)
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_3_21();
    sub_1D98DCECC(v20, v21, v22, v23, v24, v25);
    return 0;
  }

  v4 = *(v0 + *(v2 + 24));
  v5 = v3;
  if (![v4 unwrap])
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_3_21();
    sub_1D98DCEB4(v26, v27, v28, v29, v30, v31);

    return 0;
  }

  v6 = sub_1D992AE84();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  sub_1D992B134();
  sub_1D992B154();
  v12 = objc_allocWithZone(sub_1D992B164());
  sub_1D992B144();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v33 - v16;
  (*(v9 + 16))(&v33 - v16, v1, v6, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v6);
  v18 = objc_allocWithZone(sub_1D992B104());
  v19 = sub_1D992B0A4();

  return v19;
}

uint64_t sub_1D98FCCA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  v8 = sub_1D99004B4(0xD000000000000024, 0x80000001D993CF50, v7, sub_1D98FD0F4, v6);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1D98FCD64(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a3;
  v8 = sub_1D992B514();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D992B544();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  if (a2)
  {
    a1 = MKBGetDeviceLockState();
  }

  sub_1D98FD104(&v32);
  LODWORD(v32) = a1;
  *(&v33 + 1) = &type metadata for EmbeddedDeviceLockState;
  v34 = &off_1F551B740;
  sub_1D98FD16C(&v32, &aBlock);
  if (v27)
  {
    sub_1D986D53C(&aBlock, v31);
    sub_1D98B37DC(v31, v30);
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = a5;
    sub_1D986D53C(v30, v18 + 32);
    v28 = sub_1D98FD1DC;
    v29 = v18;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v26 = sub_1D98F9B34;
    v27 = &block_descriptor_16;
    v19 = _Block_copy(&aBlock);

    sub_1D992B534();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D98D3338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
    sub_1D98C2AEC();
    sub_1D992BC44();
    MEMORY[0x1DA739FA0](0, v17, v12, v19);
    _Block_release(v19);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1D98FD104(&v32);
  }

  else
  {
    sub_1D98FD104(&v32);
    return sub_1D98FD104(&aBlock);
  }
}

uint64_t sub_1D98FD0A0()
{
  sub_1D99007DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98FD104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49020, &unk_1D9935478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98FD16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49020, &unk_1D9935478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D98FD224(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_18();
  v7 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1D986B804(v1, &qword_1ECB48D50, &unk_1D9933FE0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  else
  {
    *(&v12 + 1) = v7;
    v13 = &off_1F5516E40;
    __swift_allocate_boxed_opaque_existential_1(&v11);
    sub_1D99003A8();
  }

  *(a1 + 24) = &type metadata for SQLSelect;
  *(a1 + 32) = &off_1F5516C30;
  v8 = swift_allocObject();
  *&v9 = OUTLINED_FUNCTION_19_7(v8);
  *(v10 + 48) = v9;
  *(v10 + 80) = 0;
  *(v10 + 16) = 0xD000000000000015;
  *(v10 + 24) = 0x80000001D9937450;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  sub_1D986D144(&v11, v10 + 48);
  OUTLINED_FUNCTION_10_14();
}

uint64_t sub_1D98FD388@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  sub_1D99002F8();
  v6 = type metadata accessor for TagsTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D986B804(v5, &qword_1ECB48968, &qword_1D9932380);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  else
  {
    *(&v10 + 1) = v6;
    v11 = &off_1F5516A58;
    __swift_allocate_boxed_opaque_existential_1(&v9);
    sub_1D99003A8();
  }

  a1[3] = &type metadata for SQLSelect;
  a1[4] = &off_1F5516C30;
  v7 = swift_allocObject();
  *a1 = v7;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0;
  *(v7 + 48) = 0u;
  *(v7 + 16) = 1936154996;
  *(v7 + 24) = 0xE400000000000000;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  result = sub_1D986D144(&v9, v7 + 48);
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  *(v7 + 104) = 0;
  *(v7 + 112) = 1;
  *(v7 + 120) = 0;
  return result;
}

void sub_1D98FD528(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_18();
  v7 = type metadata accessor for LogicalClocksTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1D986B804(v1, &qword_1ECB48E00, &qword_1D9934AB8);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  else
  {
    *(&v12 + 1) = v7;
    v13 = &off_1F55170B8;
    __swift_allocate_boxed_opaque_existential_1(&v11);
    sub_1D99003A8();
  }

  *(a1 + 24) = &type metadata for SQLSelect;
  *(a1 + 32) = &off_1F5516C30;
  v8 = swift_allocObject();
  *&v9 = OUTLINED_FUNCTION_19_7(v8);
  *(v10 + 80) = 0;
  *(v10 + 48) = v9;
  strcpy((v10 + 16), "logical_clocks");
  *(v10 + 31) = -18;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  sub_1D986D144(&v11, v10 + 48);
  OUTLINED_FUNCTION_10_14();
}

void sub_1D98FD694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for TagsTable.Record(0);
  v31 = OUTLINED_FUNCTION_5(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v127 - v37;
  if ((sub_1D986AC54(0) & 1) != 0 && (v39 = *(v20 + OBJC_IVAR___SiriAnalyticsMetastore_db)) != 0)
  {
    v145 = v25;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_9(v40);
    v42 = *(v41 + 64);
    OUTLINED_FUNCTION_20_0();
    v147 = v43;
    MEMORY[0x1EEE9AC00](v44);
    OUTLINED_FUNCTION_14_14();

    sub_1D98FFB20();
    sub_1D98B37DC(v27, v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
    if (!swift_dynamicCast())
    {
      sub_1D986B804(v21, &qword_1ECB481D0, &qword_1D992F9F0);

      v149 = 0;
      memset(v148, 0, sizeof(v148));
      sub_1D986B804(v148, &unk_1ECB491C0, &unk_1D99305E0);
      sub_1D992AE84();
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
LABEL_16:
      OUTLINED_FUNCTION_7();
      return;
    }

    v144 = v39;
    v146 = v21;
    v142 = &v127;
    v143 = v29;
    sub_1D986D53C(v148, v150);
    OUTLINED_FUNCTION_23_9();
    OUTLINED_FUNCTION_17_10();
    v45();
    v46 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
    if (v46)
    {
      v47 = v46;
      __swift_project_boxed_opaque_existential_1(v150, v150[3]);
      sub_1D992B3F4();
      v57 = sub_1D99108B4(v47);
      if (v58 >> 60 != 15)
      {
        v59 = v57;
        v60 = v58;

        v61 = sub_1D98B1728(v59, v60);
        v62 = v146;
        v141 = v59;
        if (v61)
        {
          if (qword_1ED8BD6D0 != -1)
          {
            OUTLINED_FUNCTION_1_2();
          }

          sub_1D98DCEB4(0xD00000000000001DLL, 0x80000001D99399B0, 0xD00000000000005ELL, 0x80000001D9939930, 0xD00000000000001DLL, 0x80000001D993D010);

          sub_1D9866358(v141, v60);
          sub_1D986B804(v62, &qword_1ECB481D0, &qword_1D992F9F0);
          __swift_destroy_boxed_opaque_existential_1(v150);
          sub_1D992AE84();
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
        }

        else
        {
          v67 = sub_1D992AE84();
          v136 = &v127;
          OUTLINED_FUNCTION_0();
          v69 = v68;
          v71 = *(v70 + 64);
          MEMORY[0x1EEE9AC00](v72);
          v140 = &v127 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
          v138 = &v127;
          MEMORY[0x1EEE9AC00](v73);
          v75 = &v127 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1D99002F8();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v67);
          v139 = v60;
          if (EnumTagSinglePayload == 1)
          {
            sub_1D992AE74();
            v77 = v67;
            if (__swift_getEnumTagSinglePayload(v75, 1, v67) != 1)
            {
              sub_1D986B804(v75, &qword_1ECB481D0, &qword_1D992F9F0);
            }
          }

          else
          {
            (*(v69 + 32))(v140, v75, v67);
            v77 = v67;
          }

          OUTLINED_FUNCTION_12_1(&a14);
          v135 = &v127;
          v79 = MEMORY[0x1EEE9AC00](v78);
          v80 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
          v137 = &v127 - v80;
          v138 = v69;
          v130 = *(v69 + 16);
          v130(v79);
          OUTLINED_FUNCTION_23_9();
          OUTLINED_FUNCTION_17_10();
          v82 = v81();
          v145 = &v127;
          LODWORD(v131) = LOBYTE(v151[0]);
          v83 = MEMORY[0x1EEE9AC00](v82);
          v84 = &v127 - v80;
          v85 = v130;
          (v130)(&v127 - v80, v140, v77, v83);
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
          v134 = &v127;
          v87 = OUTLINED_FUNCTION_9(v86);
          v89 = *(v88 + 64);
          MEMORY[0x1EEE9AC00](v87);
          v128 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
          v90 = (&v127 - v128);
          v91 = sub_1D992AE04();
          OUTLINED_FUNCTION_10_4();
          v95 = __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
          v133 = &v127;
          MEMORY[0x1EEE9AC00](v95);
          v132 = &v127 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1D99002F8();
          (v85)(v35, v137, v77);
          *&v35[v30[5]] = v131;
          v97 = &v35[v30[6]];
          v131 = v84;
          v147 = v77;
          (v85)(v97, v84, v77);
          v130 = &v127;
          v98 = &v35[v30[7]];
          v99 = v141;
          v100 = v139;
          *v98 = v141;
          *(v98 + 1) = v100;
          OUTLINED_FUNCTION_0();
          v127 = v101;
          v103 = *(v102 + 64);
          MEMORY[0x1EEE9AC00](v104);
          OUTLINED_FUNCTION_13();
          v107 = v106 - v105;
          v129 = &v127;
          MEMORY[0x1EEE9AC00](v108);
          v109 = &v127 - v128;
          sub_1D99002F8();
          LODWORD(v85) = __swift_getEnumTagSinglePayload(v109, 1, v91);
          sub_1D987BA38(v99, v100);
          if (v85 == 1)
          {
            v110 = v127;
            sub_1D992ADF4();
            sub_1D986B804(v90, &qword_1ECB48710, &qword_1D9931340);
            v111 = OUTLINED_FUNCTION_8_15();
            v90(v111);
            (v90)(v137, v99);
            if (__swift_getEnumTagSinglePayload(v109, 1, v91) != 1)
            {
              sub_1D986B804(v109, &qword_1ECB48710, &qword_1D9931340);
            }
          }

          else
          {
            sub_1D986B804(v90, &qword_1ECB48710, &qword_1D9931340);
            v112 = OUTLINED_FUNCTION_8_15();
            v90(v112);
            (v90)(v137, v99);
            v110 = v127;
            (*(v127 + 32))(v107, v109, v91);
          }

          OUTLINED_FUNCTION_12_1(&v152);
          (*(v110 + 32))(&v35[v30[8]], v107, v91);
          OUTLINED_FUNCTION_12_1(v153);
          v113 = &v35[v30[9]];
          sub_1D99002A0();
          sub_1D99003A8();
          OUTLINED_FUNCTION_12_1(&a9);
          OUTLINED_FUNCTION_12_1(&a10);
          OUTLINED_FUNCTION_12_1(&a11);
          v114 = sub_1D98F72EC();
          v115 = sub_1D98B3B0C(&unk_1F5517EA0);
          v151[0] = sub_1D98B3B0C(&unk_1F5517F50);
          sub_1D98D81B4(v115);
          v116 = sub_1D98D4538(v151[0]);
          v151[0] = 1936154996;
          v151[1] = 0xE400000000000000;
          v152 = v114;
          v153[0] = &unk_1F5517F50;
          v153[1] = v116;
          v117 = sub_1D990C31C();
          v120 = sub_1D987005C(v117, v118, v119);

          sub_1D9866358(v141, v139);
          sub_1D9900400(v38, type metadata accessor for TagsTable.Record);
          sub_1D986B804(v146, &qword_1ECB481D0, &qword_1D992F9F0);
          __swift_destroy_boxed_opaque_existential_1(v150);
          if (v120)
          {
            v121 = v147;
            (v138[4])(v143, v140, v147);
            v122 = OUTLINED_FUNCTION_5_22();
            v125 = v121;
          }

          else
          {
            v126 = v147;
            (v90)(v140, v147);
            OUTLINED_FUNCTION_10_4();
            v125 = v126;
          }

          __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
          OUTLINED_FUNCTION_12_1(&a12);
        }

        OUTLINED_FUNCTION_12_1(&a18);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_7();

    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  }
}

void sub_1D98FE2D0()
{
  OUTLINED_FUNCTION_6_2();
  v43 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_14();
  v10 = *v3;
  v11 = v10 == 2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = sub_1D992AE84();
  OUTLINED_FUNCTION_5(v16);
  (*(v17 + 16))(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v16);
  OUTLINED_FUNCTION_76();
  v21 = __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v16);
  v25 = v10 & 1;
  v26 = type metadata accessor for TagsTable.Predicate(0);
  v27 = v26[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = v26[11];
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v16);
  sub_1D99002A0();
  *(v1 + v26[5]) = 0;
  v36 = v26[6];
  sub_1D99002A0();
  *(v1 + v26[7]) = 0;
  v37 = v1 + v26[8];
  *v37 = v25;
  *(v37 + 4) = v11;
  *(v1 + v26[9]) = 0;
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v26);
  v41 = sub_1D99001AC();
  sub_1D986B804(v1, &qword_1ECB48968, &qword_1D9932380);
  if (v41)
  {
    sub_1D98FF834(v41);
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98FE520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49028, &qword_1D99354A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v62 - v4;
  v80 = type metadata accessor for IdentifiableTag();
  v78 = *(v80 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagsTable.Record(0);
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC8];
  v81 = MEMORY[0x1E69E7CC8];
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49030, &qword_1D99354A8);
  v62[1] = v62;
  v75 = v17;
  v76 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v66 = v62 - v18;
  v67 = a1;
  v19 = (v14 + 63) >> 6;

  v21 = 0;
  v64 = v19;
  v65 = a1 + 64;
  if (!v16)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v74 = v12;
    v72 = v16;
    v23 = __clz(__rbit64(v16)) | (v21 << 6);
    v24 = v67;
    v25 = *(v67 + 48);
    v26 = sub_1D992AE84();
    v71 = *(v26 - 8);
    v69 = *(v71 + 72);
    v27 = *(v71 + 16);
    v28 = v66;
    v77 = v26;
    v29 = v27(v66, v25 + v69 * v23);
    v70 = v62;
    v30 = v75;
    *&v28[*(v75 + 48)] = *(*(v24 + 56) + 8 * v23);
    MEMORY[0x1EEE9AC00](v29);
    v32 = v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D99002A0();
    v33 = *(v30 + 48);
    v73 = v32;
    v34 = *&v32[v33];
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = v63;
      v37 = v34 + ((*(v63 + 80) + 32) & ~*(v63 + 80));

      v38 = *(v36 + 72);
      v39 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D9900350();
        sub_1D98FEFCC(v5);
        sub_1D9900400(v11, type metadata accessor for TagsTable.Record);
        if (__swift_getEnumTagSinglePayload(v5, 1, v80) == 1)
        {
          v40 = sub_1D986B804(v5, &qword_1ECB49028, &qword_1D99354A0);
        }

        else
        {
          sub_1D99003A8();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D98BE124(0, *(v39 + 16) + 1, 1, v39);
            v39 = v44;
          }

          v42 = *(v39 + 16);
          v41 = *(v39 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1D98BE124(v41 > 1, v42 + 1, 1, v39);
            v39 = v45;
          }

          *(v39 + 16) = v42 + 1;
          v43 = v39 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v42;
          v40 = sub_1D99003A8();
        }

        v37 += v38;
        --v35;
      }

      while (v35);
    }

    else
    {

      v39 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v40);
    v47 = v62 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D99002A0();
    v48 = *(v74 + 16);
    if (*(v74 + 24) <= v48)
    {
      sub_1D98F1544(v48 + 1, 1);
    }

    v12 = v81;
    v49 = *(v81 + 40);
    sub_1D98B3748();
    result = sub_1D992B5C4();
    v50 = v12 + 64;
    v51 = -1 << *(v12 + 32);
    v52 = result & ~v51;
    v53 = v52 >> 6;
    v54 = (-1 << v52) & ~*(v12 + 64 + 8 * (v52 >> 6));
    v68 = v62;
    if (!v54)
    {
      v56 = 0;
      v57 = (63 - v51) >> 6;
      while (++v53 != v57 || (v56 & 1) == 0)
      {
        v58 = v53 == v57;
        if (v53 == v57)
        {
          v53 = 0;
        }

        v56 |= v58;
        v59 = *(v50 + 8 * v53);
        if (v59 != -1)
        {
          v55 = __clz(__rbit64(~v59)) + (v53 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_36;
    }

    v55 = __clz(__rbit64(v54)) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    v16 = (v72 - 1) & v72;
    v60 = *(v75 + 48);
    *(v50 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
    (*(v71 + 32))(*(v12 + 48) + v55 * v69, v47, v77);
    *(*(v12 + 56) + 8 * v55) = v39;
    ++*(v12 + 16);
    v61 = *&v47[v60];

    v19 = v64;
    v13 = v65;
  }

  while (v16);
LABEL_5:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      return v12;
    }

    v16 = *(v13 + 8 * v22);
    ++v21;
    if (v16)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_1D98FEBCC()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_14();
  v9 = *v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  v18 = __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  v22 = type metadata accessor for TagsTable.Predicate(0);
  v23 = v22[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  (*(*(v14 - 8) + 16))(v0 + v22[11], v4, v14);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v14);
  sub_1D99002A0();
  *(v0 + v22[5]) = 0;
  v31 = v22[6];
  sub_1D99002A0();
  *(v0 + v22[7]) = 0;
  v32 = v0 + v22[8];
  *v32 = v9 & 1;
  *(v32 + 4) = v9 == 2;
  *(v0 + v22[9]) = 0;
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v22);
  v36 = sub_1D99001AC();
  sub_1D986B804(v0, &qword_1ECB48968, &qword_1D9932380);
  if (v36)
  {
    sub_1D98FF834(v36);
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98FEE2C(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = *a1;
  if (v8 == 2)
  {
    type metadata accessor for TagsTable.Predicate(0);
    v9 = OUTLINED_FUNCTION_2_34();
  }

  else
  {
    v13 = sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    v17 = type metadata accessor for TagsTable.Predicate(0);
    v18 = v17[6];
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
    v22 = v17[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    v27 = v17[11];
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v13);
    *&v7[v17[5]] = 0;
    *&v7[v17[7]] = 0;
    v31 = &v7[v17[8]];
    *v31 = v8 & 1;
    v31[4] = 0;
    *&v7[v17[9]] = 0;
    v9 = OUTLINED_FUNCTION_5_22();
    v12 = v17;
  }

  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v32 = sub_1D99001AC();
  v33 = v32;
  if (v32)
  {
    v34 = sub_1D98FF3BC(v32);

    v33 = sub_1D98FE520(v34);
  }

  sub_1D986B804(v7, &qword_1ECB48968, &qword_1D9932380);
  return v33;
}

uint64_t sub_1D98FEFCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TagsTable.Record(0);
  v5 = v4;
  v6 = *(v1 + *(v4 + 20));
  if (v6)
  {
    if (v6 != 1)
    {
      if (qword_1ED8BD6D0 != -1)
      {
        OUTLINED_FUNCTION_1_2();
      }

      sub_1D992BD64();

      *&v40 = 0xD000000000000013;
      *(&v40 + 1) = 0x80000001D993CF90;
      v13 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v13);

      OUTLINED_FUNCTION_13_14();
      OUTLINED_FUNCTION_12_16();
      sub_1D98DCEB4(v14, v15, v16, v17, v18, v19);

      type metadata accessor for IdentifiableTag();
      v20 = OUTLINED_FUNCTION_2_34();
      return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = (v1 + *(v4 + 28));
  v9 = *v8;
  v10 = v8[1];
  objc_allocWithZone(MEMORY[0x1E69C65B8]);
  sub_1D987BA38(v9, v10);
  v11 = sub_1D9880B04(v9, v10);
  if (v11)
  {
    v12 = v11;
    if (v7)
    {
      v41 = &type metadata for DataClassificationTag;
      v42 = &protocol witness table for DataClassificationTag;
      *&v40 = swift_allocObject();
      static DataClassificationTag.read(from:)(v40 + 16);
    }

    else
    {
      v41 = &type metadata for SensitiveConditionTag;
      v42 = &protocol witness table for SensitiveConditionTag;
      static SensitiveConditionTag.read(from:)();
    }

    v35 = *(v5 + 24);
    v36 = sub_1D992AE84();
    OUTLINED_FUNCTION_5(v36);
    v38 = *(v37 + 16);
    v38(a1, v2 + v35, v36);
    v39 = type metadata accessor for IdentifiableTag();
    v38(a1 + *(v39 + 20), v2, v36);
    sub_1D986D53C(&v40, a1 + *(v39 + 24));
    v20 = OUTLINED_FUNCTION_5_22();
    v23 = v39;
    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_16();
  sub_1D98DCEB4(v24, v25, v26, v27, v28, v29);
  type metadata accessor for IdentifiableTag();
  v30 = OUTLINED_FUNCTION_2_34();

  return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

uint64_t sub_1D98FF3BC(uint64_t a1)
{
  v2 = type metadata accessor for TagsTable.Record(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v49 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v11 = a1 + v49;
    v12 = MEMORY[0x1E69E7CC8];
    v13 = *(v7 + 72);
    v47 = &v45 - v8;
    v48 = v5;
    v46 = v13;
    while (1)
    {
      v51 = v11;
      v52 = v10;
      sub_1D9900350();
      v14 = sub_1D992AE84();
      v50 = &v45;
      v15 = *(v14 - 8);
      v16 = v15[8];
      v17 = MEMORY[0x1EEE9AC00](v14);
      v18 = v15[2];
      v55 = v19;
      v53 = v18;
      (v18)(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v17);
      if (!v12[2])
      {
        goto LABEL_6;
      }

      v20 = sub_1D9889568();
      if (v21)
      {
        v22 = *(v12[7] + 8 * v20);
      }

      else
      {
LABEL_6:
        v22 = MEMORY[0x1E69E7CC0];
      }

      sub_1D9900350();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D98BE0E8(0, *(v22 + 16) + 1, 1, v22);
        v22 = v42;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D98BE0E8(v24 > 1, v25 + 1, 1, v22);
        v22 = v43;
      }

      *(v22 + 16) = v25 + 1;
      v26 = sub_1D99003A8();
      v27 = MEMORY[0x1EEE9AC00](v26);
      v28 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v53(v28, v54, v55, v27);
      swift_isUniquelyReferenced_nonNull_native();
      v56 = v12;
      v29 = sub_1D9889568();
      if (__OFADD__(v12[2], (v30 & 1) == 0))
      {
        break;
      }

      v31 = v29;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49038, &unk_1D99354B0);
      if (sub_1D992BE34())
      {
        v33 = sub_1D9889568();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_25;
        }

        v31 = v33;
      }

      v12 = v56;
      if (v32)
      {
        v35 = v56[7];
        v36 = *(v35 + 8 * v31);
        *(v35 + 8 * v31) = v22;
      }

      else
      {
        v56[(v31 >> 6) + 8] |= 1 << v31;
        (v53)(v12[6] + v15[9] * v31, v28, v55);
        *(v12[7] + 8 * v31) = v22;
        v37 = v12[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_24;
        }

        v12[2] = v39;
      }

      v40 = v15[1];
      v41 = v55;
      v40(v28, v55);
      v40(v54, v41);
      v9 = v47;
      sub_1D9900400(v47, type metadata accessor for TagsTable.Record);
      v11 = v51 + v46;
      v10 = v52 - 1;
      if (v52 == 1)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1D992BFC4();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D98FF834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49028, &qword_1D99354A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for IdentifiableTag();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for TagsTable.Record(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = *(v10 + 72);
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D9900350();
    sub_1D98FEFCC(v5);
    sub_1D9900400(v12, type metadata accessor for TagsTable.Record);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1D986B804(v5, &qword_1ECB49028, &qword_1D99354A0);
    }

    else
    {
      sub_1D99003A8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D98BE124(0, *(v16 + 16) + 1, 1, v16);
        v16 = v21;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D98BE124(v17 > 1, v18 + 1, 1, v16);
        v16 = v22;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v20 = *(v25 + 72);
      sub_1D99003A8();
    }

    v14 += v15;
    --v13;
  }

  while (v13);
  return v16;
}

void sub_1D98FFB20()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = type metadata accessor for ComponentId(0);
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v8 = (v7 - v6);
  v9 = type metadata accessor for MessageGroupIdentifier(0);
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1D98B37DC(v1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v16 = v35;
  if (v35 >> 61 != 1)
  {
    sub_1D9890810(v35);
LABEL_5:
    sub_1D992AE84();
    v30 = OUTLINED_FUNCTION_2_34();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    goto LABEL_6;
  }

  swift_projectBox();
  sub_1D9900350();
  sub_1D9900350();
  sub_1D99003A8();
  v17 = *v8;
  v18 = *(v2 + 20);
  v19 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  (*(v25 + 16))(v24 - v23, &v8[v18], v19);
  objc_allocWithZone(sub_1D992B1A4());
  sub_1D98907D8(v16);
  v26 = sub_1D992B184();
  sub_1D992B194();

  sub_1D9890810(v16);
  sub_1D9900400(v8, type metadata accessor for ComponentId);
  sub_1D9900400(v15, type metadata accessor for MessageGroupIdentifier);
  v27 = OUTLINED_FUNCTION_5_22();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v19);
  sub_1D9890810(v16);
LABEL_6:
  OUTLINED_FUNCTION_7();
}

uint64_t type metadata accessor for IdentifiableTag()
{
  result = qword_1ED8BD810;
  if (!qword_1ED8BD810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D99000CC()
{
  result = sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    result = sub_1D9900150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D9900150()
{
  result = qword_1ECB47B40;
  if (!qword_1ECB47B40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECB47B40);
  }

  return result;
}

uint64_t sub_1D99001AC()
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);

  sub_1D98FD388(v5);
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1D987EF74();
  objc_autoreleasePoolPop(v2);

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1DA73B4E0);
  }

  return result;
}

uint64_t sub_1D99002A0()
{
  OUTLINED_FUNCTION_21_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  return v0;
}

uint64_t sub_1D99002F8()
{
  OUTLINED_FUNCTION_21_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  return v0;
}

uint64_t sub_1D9900350()
{
  OUTLINED_FUNCTION_21_8();
  v2 = v1(0);
  OUTLINED_FUNCTION_5(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

uint64_t sub_1D99003A8()
{
  OUTLINED_FUNCTION_21_8();
  v2 = v1(0);
  OUTLINED_FUNCTION_5(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v0;
}

uint64_t sub_1D9900400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_19_7(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_9()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return swift_getDynamicType();
}

uint64_t sub_1D99004B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 48) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A28, &qword_1D9935500);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v6 + 56) = v12;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  v13 = qword_1ECB47AB8;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  sub_1D992BD64();

  MEMORY[0x1DA739C30](a1, a2);
  sub_1D986A454(0xD000000000000013, 0x80000001D993D080, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD00000000000001ALL, 0x80000001D993D110);

  swift_unownedRetainStrong();

  v14 = a3;
  swift_unownedRetain();

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v6;
  v24 = sub_1D9900D78;
  v25 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D9900CCC;
  v23 = &block_descriptor_17;
  v16 = _Block_copy(&aBlock);

  v17 = sub_1D992B6B4();
  swift_beginAccess();
  v18 = notify_register_dispatch((v17 + 32), (v6 + 48), v14, v16);
  swift_endAccess();

  _Block_release(v16);

  if (v18)
  {
    aBlock = 0;
    v21 = 0xE000000000000000;
    sub_1D992BD64();

    aBlock = 0xD000000000000017;
    v21 = 0x80000001D993D140;
    MEMORY[0x1DA739C30](a1, a2);

    sub_1D98DCEB4(aBlock, v21, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD00000000000001ALL, 0x80000001D993D110);

    return 0;
  }

  else
  {
  }

  return v6;
}

void *sub_1D99007DC()
{
  sub_1D9900810();
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_1D9900810()
{
  OUTLINED_FUNCTION_1_37();
  v2 = *(v1 + 136);

  atomic_store(1u, v2(v3));

  swift_beginAccess();
  return notify_cancel(*(v0 + 48));
}

uint64_t sub_1D9900890()
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  swift_beginAccess();
  if (notify_get_state(*(v0 + 48), state64))
  {
    if (qword_1ECB47AB8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    sub_1D992BD64();

    MEMORY[0x1DA739C30](*(v0 + 16), *(v0 + 24));
    sub_1D98DCEB4(0xD000000000000020, 0x80000001D993D1A0, 0xD00000000000006ALL, 0x80000001D993D0A0, 0x53746E6572727563, 0xEC00000065746174);

    result = 0;
  }

  else
  {
    result = state64[0];
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D99009EC()
{
  OUTLINED_FUNCTION_1_37();
  v2 = *(v1 + 136);

  LOBYTE(v2) = atomic_load(v2(v3));

  if ((v2 & 1) == 0)
  {
    v5 = sub_1D9900890();
    v7 = v6;
    if (qword_1ECB47AB8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    sub_1D992BD64();

    MEMORY[0x1DA739C30](*(v0 + 16), *(v0 + 24));
    MEMORY[0x1DA739C30](0x7473206874697720, 0xED0000203A657461);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48718, &qword_1D9931348);
    v8 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v8);

    sub_1D986A454(0x6E69796669746F4ELL, 0xEF3A656D616E2067, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD000000000000014, 0x80000001D993D180);

    v9 = *(v0 + 40);
    return (*(v0 + 32))(v5, v7 & 1);
  }

  return result;
}

uint64_t sub_1D9900BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ECB47AB8 != -1)
  {
    swift_once();
  }

  sub_1D992BD64();

  MEMORY[0x1DA739C30](a2, a3);
  sub_1D986A454(0xD00000000000001ALL, 0x80000001D993D160, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD00000000000001ALL, 0x80000001D993D110);

  swift_unownedRetainStrong();
  sub_1D99009EC();
}

uint64_t sub_1D9900CCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1D9900D20()
{
  sub_1D99007DC();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9900DBC()
{
  v1 = sub_1D992AE04();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = swift_task_alloc();
  sub_1D992ADF4();
  sub_1D992AD94();
  v6 = *(v2 + 8);
  v0[9] = v6;
  v0[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v5, v1);

  v7 = swift_task_alloc();
  v0[11] = v7;
  *(v7 + 16) = v4;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1D9900F38;
  v9 = v0[6];

  return sub_1D9901C0C();
}

uint64_t sub_1D9900F38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {
    v8 = v3[6];
    v9 = sub_1D99011C0;
  }

  else
  {
    v10 = v3[11];
    v11 = v3[6];

    v9 = sub_1D9901054;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

void sub_1D9901054()
{
  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1();
  }

  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  sub_1D992BD64();

  v0[5] = v1;
  v6 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v6);

  OUTLINED_FUNCTION_11_19();
  sub_1D98DCECC(0xD00000000000001CLL, 0x80000001D99384E0, 0xD00000000000007ELL, 0x80000001D993D1F0, 0xD00000000000001DLL, 0x80000001D99384C0);

  v3(v4, v5);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_17();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D99011C0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  v4(v3, v5);

  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1();
  }

  v6 = v0[14];
  v7 = sub_1D992BD64();
  OUTLINED_FUNCTION_8_0(v7, v8, v9, v10, v11, v12, v13, v14, v17, 0, 0xE000000000000000);
  MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D9938400);
  v0[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v18, v0[3], 0xD00000000000007ELL, 0x80000001D993D1F0, 0xD00000000000001DLL, 0x80000001D99384C0);

  OUTLINED_FUNCTION_25();

  return v15();
}

uint64_t sub_1D9901338()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_1D99013DC;

  return sub_1D9901778(v0);
}

uint64_t sub_1D99013DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_16();
  *v8 = v7;
  *(v10 + 64) = v9;
  *(v10 + 72) = v0;

  if (v0)
  {
    v11 = sub_1D9901634;
  }

  else
  {
    v11 = sub_1D99014F8;
  }

  return MEMORY[0x1EEE6DFA0](v11, v6, 0);
}

uint64_t sub_1D99014F8()
{
  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1();
  }

  v1 = *(v0 + 64);
  sub_1D992BD64();

  *(v0 + 40) = v1;
  v2 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v2);

  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_5_23();
  sub_1D98DCECC(v4, 0xE700000000000000, 0xD00000000000007ELL, v3 | 0x8000000000000000, v5, 0xE700000000000000);

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1D9901634()
{
  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1();
  }

  v1 = v0[9];
  v2 = sub_1D992BD64();
  OUTLINED_FUNCTION_8_0(v2, v3, v4, v5, v6, v7, v8, v9, v16, 0, 0xE000000000000000);
  MEMORY[0x1DA739C30](0xD00000000000001DLL, 0x80000001D993D1D0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v10 = v0[3];
  OUTLINED_FUNCTION_5_23();
  sub_1D98DCEB4(v12, v10, 0xD00000000000007ELL, v11 | 0x8000000000000000, v13, 0xE700000000000000);

  OUTLINED_FUNCTION_25();

  return v14();
}

uint64_t sub_1D9901778(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49040, &qword_1D9935518) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1D9901844;

  return sub_1D9867CE8();
}

uint64_t sub_1D9901844()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_16();
  *v7 = v6;
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D990194C, v5, 0);
}

void sub_1D990194C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = type metadata accessor for StagedMessagePolicyHeaders();
    sub_1D9901B4C();

    OUTLINED_FUNCTION_10_15();
    if (v3)
    {

      v11 = *(v0 + 24);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_9_17();

      __asm { BRAA            X1, X16 }
    }

    sub_1D992B4B4();
    while (1)
    {
      v4 = *(v0 + 24);
      sub_1D992B4C4();
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49048, &qword_1D9935520);
      if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
      {
        break;
      }

      sub_1D9901BA4(*(v0 + 24));
      v6 = objc_autoreleasePoolPush();
      sub_1D992B4A4();
      objc_autoreleasePoolPop(v6);
    }

    v10 = *(v1 + 16);

    sub_1D992B3A4();

    sub_1D992B494();
  }

  else
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_1_38(" staged messages.");
  }

  v7 = *(v0 + 24);

  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_9_17();

  __asm { BRAA            X2, X16 }
}

unint64_t sub_1D9901B4C()
{
  result = qword_1ECB47BE0;
  if (!qword_1ECB47BE0)
  {
    type metadata accessor for StagedMessagePolicyHeaders();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47BE0);
  }

  return result;
}

uint64_t sub_1D9901BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49040, &qword_1D9935518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9901C0C()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49048, &qword_1D9935520);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49040, &qword_1D9935518) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[9] = v8;
  *v8 = v1;
  v8[1] = sub_1D9901D3C;

  return sub_1D9867CE8();
}

uint64_t sub_1D9901D3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_16();
  *v7 = v6;
  *(v9 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D9901E44, v5, 0);
}

uint64_t sub_1D9901E44()
{
  v1 = v0[10];
  if (!v1)
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_1_38(" staged messages.");
    goto LABEL_11;
  }

  v2 = *(v1 + 16);
  v3 = type metadata accessor for StagedMessagePolicyHeaders();
  sub_1D9901B4C();

  OUTLINED_FUNCTION_10_15();
  if (!v3)
  {
    v24 = v1;
    v4 = v0[6];

    sub_1D992B4B4();
    v5 = (v4 + 32);
    for (i = (v4 + 8); ; (*i)(v13, v14))
    {
      v7 = v0[8];
      v8 = v0[5];
      sub_1D992B4C4();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        break;
      }

      v9 = v0[7];
      v10 = v0[2];
      v11 = v0[3];
      (*v5)(v9, v0[8], v0[5]);
      v12 = objc_autoreleasePoolPush();
      if (v10(v9))
      {
        sub_1D992B4A4();
      }

      v13 = v0[7];
      v14 = v0[5];
      objc_autoreleasePoolPop(v12);
    }

    v20 = *(v24 + 16);

    sub_1D992B3A4();

    sub_1D992B494();

LABEL_11:
    v16 = v0[7];
    v15 = v0[8];

    v17 = OUTLINED_FUNCTION_7_20();

    return v18(v17);
  }

  v22 = v0[7];
  v21 = v0[8];

  OUTLINED_FUNCTION_25();

  return v23();
}

uint64_t sub_1D99020B0()
{
  v0 = type metadata accessor for StagedMessagePolicyHeaders();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49048, &qword_1D9935520);
  sub_1D992B4E4();
  v4 = sub_1D992ADA4();
  v5 = sub_1D992AE04();
  (*(*(v5 - 8) + 8))(v3, v5);
  return v4 & 1;
}

uint64_t sub_1D9902194@<X0>(uint64_t a1@<X8>)
{
  v177 = a1;
  v201 = type metadata accessor for LogicalClockStart(0);
  v3 = OUTLINED_FUNCTION_6(v201);
  v179 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_23_1();
  v178 = v7 - v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_7();
  v185 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v187 = &v173 - v12;
  v198 = type metadata accessor for LogicalClockEvent(0);
  v13 = OUTLINED_FUNCTION_5(v198);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v184 = v16 - v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_7();
  v175 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_7();
  v191 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v173 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  v26 = OUTLINED_FUNCTION_6(v25);
  v199 = v27;
  v200 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  v183 = v30 - v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_7();
  v174 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v173 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48380, &unk_1D992FA00);
  OUTLINED_FUNCTION_9(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v173 - v41;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  OUTLINED_FUNCTION_6(v180);
  v197 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v173 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
  OUTLINED_FUNCTION_9(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v52);
  v186 = &v173 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  v55 = OUTLINED_FUNCTION_9(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  v195 = v58 - v59;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v60);
  v193 = &v173 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49060, &qword_1D9935568);
  OUTLINED_FUNCTION_9(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v65);
  v66 = OUTLINED_FUNCTION_19_8();
  v67 = type metadata accessor for RootLogicalClockBuilder(v66);
  v68 = OUTLINED_FUNCTION_5(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13();
  v73 = v72 - v71;
  v74 = *(type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0) + 24);
  v181 = v1;
  v176 = &v1[v74];
  sub_1D9866DE0(&v1[v74], v2, &qword_1ECB49060, &qword_1D9935568);
  v75 = OUTLINED_FUNCTION_17_11();
  v76 = MEMORY[0x1E69E7CC0];
  v192 = v42;
  if (v75 == 1)
  {
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v201);
    *(v73 + *(v67 + 20)) = v76;
    v80 = *(v67 + 24);
    type metadata accessor for LogicalClockEnd(0);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    if (OUTLINED_FUNCTION_17_11() != 1)
    {
      sub_1D986B804(v2, &qword_1ECB49060, &qword_1D9935568);
    }
  }

  else
  {
    sub_1D9903674(v2, v73, type metadata accessor for RootLogicalClockBuilder);
  }

  v188 = v24;
  v189 = (v197 + 32);
  ++v199;
  v190 = v197 + 8;
  v85 = v181;
  v86 = v180;
  v196 = v67;
  v87 = v195;
  v194 = v48;
  v182 = v73;
  while (1)
  {
    while (1)
    {
      v88 = v193;
      sub_1D9866DE0(v73, v193, &qword_1ECB49058, &qword_1D9935560);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v201);
      sub_1D986B804(v88, &qword_1ECB49058, &qword_1D9935560);
      if (EnumTagSinglePayload != 1)
      {
        v90 = v186;
        sub_1D9866DE0(v73 + *(v196 + 24), v186, &qword_1ECB49050, &qword_1D9935558);
        v91 = type metadata accessor for LogicalClockEnd(0);
        v92 = __swift_getEnumTagSinglePayload(v90, 1, v91);
        v93 = v90;
        v87 = v195;
        sub_1D986B804(v93, &qword_1ECB49050, &qword_1D9935558);
        if (v92 != 1)
        {
          goto LABEL_27;
        }
      }

      v94 = v85;
      v95 = *(v85 + 1);
      v96 = v192;
      sub_1D992B4C4();
      if (__swift_getEnumTagSinglePayload(v96, 1, v86) == 1)
      {
        sub_1D986B804(v96, &qword_1ECB48380, &unk_1D992FA00);
LABEL_27:
        sub_1D986B804(v176, &qword_1ECB49060, &qword_1D9935568);
        OUTLINED_FUNCTION_10_4();
        __swift_storeEnumTagSinglePayload(v144, v145, v146, v196);
        sub_1D9902D2C(v177);
        return sub_1D990361C(v73, type metadata accessor for RootLogicalClockBuilder);
      }

      (*v189)(v48, v96, v86);
      sub_1D992B4E4();
      v97 = v188;
      v98 = v200;
      sub_1D992B444();
      v197 = *v199;
      (v197)(v36, v98);
      OUTLINED_FUNCTION_8_16();
      v99 = v191;
      sub_1D99036D4(v97, v191, v100);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_2_35();
        sub_1D990361C(v97, v101);
        v102 = *(v196 + 24);
        sub_1D986B804(v73 + v102, &qword_1ECB49050, &qword_1D9935558);
        OUTLINED_FUNCTION_4_25();
        sub_1D9903674(v99, v73 + v102, v103);
        type metadata accessor for LogicalClockEnd(0);
        OUTLINED_FUNCTION_76();
        __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
        v48 = v194;
      }

      else
      {
        OUTLINED_FUNCTION_1_39();
        v108 = v187;
        sub_1D9903674(v99, v187, v109);
        if (*(v108 + *(v201 + 20)))
        {
          OUTLINED_FUNCTION_3_22();
          sub_1D99036D4(v108, v185, v110);
          v111 = *(v196 + 20);
          v112 = *(v73 + v111);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D98BD7B8(0, *(v112 + 16) + 1, 1, v112);
            v112 = v142;
          }

          v114 = *(v112 + 16);
          v113 = *(v112 + 24);
          if (v114 >= v113 >> 1)
          {
            sub_1D98BD7B8(v113 > 1, v114 + 1, 1, v112);
            v112 = v143;
          }

          OUTLINED_FUNCTION_0_48();
          sub_1D990361C(v187, v115);
          OUTLINED_FUNCTION_2_35();
          sub_1D990361C(v97, v116);
          *(v112 + 16) = v114 + 1;
          v117 = *(v179 + 80);
          OUTLINED_FUNCTION_15_8();
          v119 = *(v118 + 72);
          OUTLINED_FUNCTION_1_39();
          sub_1D9903674(v185, v120, v121);
          *(v73 + v111) = v112;
          v94 = v181;
          v48 = v194;
          v87 = v195;
        }

        else
        {
          OUTLINED_FUNCTION_2_35();
          sub_1D990361C(v97, v122);
          sub_1D9866DE0(v73, v87, &qword_1ECB49058, &qword_1D9935560);
          v123 = __swift_getEnumTagSinglePayload(v87, 1, v201);
          v48 = v194;
          if (v123 != 1)
          {
            OUTLINED_FUNCTION_0_48();
            sub_1D990361C(v108, v147);
            sub_1D986B804(v87, &qword_1ECB49058, &qword_1D9935560);
            sub_1D9902D2C(v177);
            v148 = v176;
            sub_1D986B804(v176, &qword_1ECB49060, &qword_1D9935568);
            OUTLINED_FUNCTION_10_4();
            __swift_storeEnumTagSinglePayload(v149, v150, v151, v201);
            v152 = v196;
            *(v148 + *(v196 + 20)) = MEMORY[0x1E69E7CC0];
            v153 = *(v152 + 24);
            type metadata accessor for LogicalClockEnd(0);
            OUTLINED_FUNCTION_10_4();
            __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
            OUTLINED_FUNCTION_76();
            __swift_storeEnumTagSinglePayload(v158, v159, v160, v152);
            v161 = v174;
            sub_1D992B4E4();
            v162 = v175;
            v163 = v200;
            sub_1D992B444();
            (v197)(v161, v163);
            sub_1D99032CC(v162);
            OUTLINED_FUNCTION_2_35();
            sub_1D990361C(v162, v164);
            OUTLINED_FUNCTION_16_10();
            v166 = v48;
            v167 = v86;
            goto LABEL_30;
          }

          sub_1D986B804(v87, &qword_1ECB49058, &qword_1D9935560);
          sub_1D986B804(v73, &qword_1ECB49058, &qword_1D9935560);
          OUTLINED_FUNCTION_1_39();
          sub_1D9903674(v108, v73, v124);
          OUTLINED_FUNCTION_76();
          __swift_storeEnumTagSinglePayload(v125, v126, v127, v201);
        }
      }

      v85 = v94;
      if (*v94 == 1)
      {
        break;
      }

      OUTLINED_FUNCTION_16_10();
      v137(v48, v86);
    }

    v128 = v36;
    v129 = v201;
    v130 = v183;
    sub_1D992B4E4();
    v131 = v86;
    v132 = v184;
    v133 = v48;
    v134 = v200;
    sub_1D992B444();
    (v197)(v130, v134);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_16_10();
      v135(v133, v131);
      OUTLINED_FUNCTION_2_35();
      sub_1D990361C(v132, v136);
      v48 = v133;
      v86 = v131;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_1_39();
    v138 = v178;
    sub_1D9903674(v132, v178, v139);
    if ((*(v138 + *(v129 + 20)) & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_0_48();
    sub_1D990361C(v138, v140);
    OUTLINED_FUNCTION_16_10();
    v48 = v194;
    v86 = v180;
    v141(v194, v180);
LABEL_25:
    v73 = v182;
    v36 = v128;
    v87 = v195;
  }

  sub_1D986B804(v176, &qword_1ECB49060, &qword_1D9935568);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v196);
  v73 = v182;
  sub_1D9902D2C(v177);
  OUTLINED_FUNCTION_0_48();
  sub_1D990361C(v138, v171);
  OUTLINED_FUNCTION_16_10();
  v166 = v194;
  v167 = v180;
LABEL_30:
  v165(v166, v167);
  return sub_1D990361C(v73, type metadata accessor for RootLogicalClockBuilder);
}

uint64_t sub_1D9902D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for LogicalClockEnd(0);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_19_8();
  v22 = type metadata accessor for LogicalClockStart(v21);
  v23 = OUTLINED_FUNCTION_6(v22);
  v100 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v88 - v31;
  sub_1D9866DE0(v3, v2, &qword_1ECB49058, &qword_1D9935560);
  if (OUTLINED_FUNCTION_17_11() == 1)
  {
    sub_1D986B804(v2, &qword_1ECB49058, &qword_1D9935560);
    type metadata accessor for RootLogicalClock();
    OUTLINED_FUNCTION_10_4();
  }

  else
  {
    v92 = v11;
    v99 = a1;
    OUTLINED_FUNCTION_1_39();
    sub_1D9903674(v2, v32, v37);
    v38 = sub_1D992AE84();
    v98 = &v88;
    v39 = OUTLINED_FUNCTION_6(v38);
    v41 = v40;
    v43 = *(v42 + 64);
    v44 = MEMORY[0x1EEE9AC00](v39);
    v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
    v46 = v5;
    v89 = v3;
    v47 = *(v41 + 16);
    v96 = &v88 - v45;
    v48 = v47(v44);
    v97 = &v88;
    v49 = v22[6];
    v104 = v43;
    v50 = MEMORY[0x1EEE9AC00](v48);
    v95 = &v88 - v45;
    v51 = v38;
    v102 = v47;
    v103 = v41 + 16;
    v47(v50);
    v52 = v46;
    v53 = *&v32[v22[8]];
    v93 = *&v32[v22[7]];
    v94 = v53;
    v54 = type metadata accessor for RootLogicalClockBuilder(0);
    v55 = v89;
    v56 = v101;
    sub_1D9866DE0(v89 + *(v54 + 24), v101, &qword_1ECB49050, &qword_1D9935558);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v46);
    v58 = 0;
    v59 = 0;
    v90 = EnumTagSinglePayload;
    v60 = v32;
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_4_25();
      v61 = v92;
      sub_1D9903674(v101, v92, v62);
      v58 = *(v61 + *(v52 + 20));
      v59 = *(v61 + *(v52 + 24));
      sub_1D990361C(v61, type metadata accessor for LogicalClockEnd);
    }

    v91 = v59;
    v92 = v58;
    v63 = *(v55 + *(v54 + 20));
    v64 = *(v63 + 16);
    if (v64)
    {
      v89 = v60;
      v105 = MEMORY[0x1E69E7CC0];
      sub_1D98B977C();
      v66 = v105;
      v67 = v63 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v68 = *(v100 + 72);
      v100 = v41 + 32;
      v101 = v68;
      v69 = v51;
      do
      {
        MEMORY[0x1EEE9AC00](v65);
        v71 = &v88 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
        OUTLINED_FUNCTION_3_22();
        sub_1D99036D4(v67, v29, v72);
        (v102)(v71, v29, v51);
        OUTLINED_FUNCTION_0_48();
        sub_1D990361C(v29, v73);
        v105 = v66;
        v74 = *(v66 + 16);
        if (v74 >= *(v66 + 24) >> 1)
        {
          sub_1D98B977C();
          v66 = v105;
        }

        *(v66 + 16) = v74 + 1;
        v75 = *(v41 + 80);
        OUTLINED_FUNCTION_15_8();
        v65 = (*(v41 + 32))(v76 + *(v41 + 72) * v74, v71, v51);
        v67 += v101;
        --v64;
      }

      while (v64);
      v60 = v89;
    }

    else
    {
      v69 = v51;
    }

    v77 = v90 == 1;
    sub_1D98B399C();
    v79 = v78;
    OUTLINED_FUNCTION_0_48();
    sub_1D990361C(v60, v80);
    v81 = *(v41 + 32);
    v82 = v99;
    v81(v99, v96, v69);
    v83 = type metadata accessor for RootLogicalClock();
    v81(v82 + v83[5], v95, v69);
    v84 = v94;
    *(v82 + v83[6]) = v93;
    *(v82 + v83[7]) = v84;
    v85 = v82 + v83[8];
    v86 = v91;
    *v85 = v92;
    *(v85 + 8) = v86;
    *(v85 + 16) = v77;
    *(v82 + v83[9]) = v79;
    OUTLINED_FUNCTION_76();
    v36 = v83;
  }

  return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
}

uint64_t sub_1D99032CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for LogicalClockStart(0);
  v11 = OUTLINED_FUNCTION_6(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = type metadata accessor for LogicalClockEvent(0);
  v23 = OUTLINED_FUNCTION_5(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_8_16();
  sub_1D99036D4(a1, v28, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(type metadata accessor for RootLogicalClockBuilder(0) + 24);
    sub_1D986B804(v2 + v30, &qword_1ECB49050, &qword_1D9935558);
    OUTLINED_FUNCTION_4_25();
    sub_1D9903674(v28, v2 + v30, v31);
    type metadata accessor for LogicalClockEnd(0);
    v32 = 1;
    OUTLINED_FUNCTION_76();
  }

  else
  {
    OUTLINED_FUNCTION_1_39();
    sub_1D9903674(v28, v21, v37);
    if (v21[*(v10 + 20)])
    {
      OUTLINED_FUNCTION_3_22();
      sub_1D99036D4(v21, v18, v38);
      v39 = *(type metadata accessor for RootLogicalClockBuilder(0) + 20);
      sub_1D987B918();
      v40 = *(*(v2 + v39) + 16);
      sub_1D987B9A8(v40);
      OUTLINED_FUNCTION_0_48();
      sub_1D990361C(v21, v41);
      v42 = *(v2 + v39);
      *(v42 + 16) = v40 + 1;
      v43 = *(v13 + 80);
      OUTLINED_FUNCTION_15_8();
      v44 = *(v13 + 72);
      OUTLINED_FUNCTION_1_39();
      sub_1D9903674(v18, v45, v46);
      *(v2 + v39) = v42;
      return 1;
    }

    sub_1D9866DE0(v2, v9, &qword_1ECB49058, &qword_1D9935560);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      OUTLINED_FUNCTION_0_48();
      sub_1D990361C(v21, v48);
      sub_1D986B804(v9, &qword_1ECB49058, &qword_1D9935560);
      return 0;
    }

    sub_1D986B804(v9, &qword_1ECB49058, &qword_1D9935560);
    sub_1D986B804(v2, &qword_1ECB49058, &qword_1D9935560);
    OUTLINED_FUNCTION_1_39();
    sub_1D9903674(v21, v2, v47);
    v32 = 1;
    OUTLINED_FUNCTION_76();
    v36 = v10;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  return v32;
}

uint64_t sub_1D990361C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D9903674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D99036D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1D990375C()
{
  sub_1D9903888(319, &qword_1ECB49078, type metadata accessor for LogicalClockStart, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9903888(319, &qword_1ECB49080, type metadata accessor for LogicalClockStart, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9903888(319, &qword_1ECB49088, type metadata accessor for LogicalClockEnd, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9903888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9903914()
{
  sub_1D99039D8();
  if (v0 <= 0x3F)
  {
    sub_1D9903888(319, &qword_1ECB490B0, type metadata accessor for RootLogicalClockBuilder, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D99039D8()
{
  if (!qword_1ECB490A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483A8, &unk_1D9935540);
    sub_1D9903A48();
    v0 = sub_1D992B4F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB490A0);
    }
  }
}

unint64_t sub_1D9903A48()
{
  result = qword_1ECB490A8;
  if (!qword_1ECB490A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483A8, &unk_1D9935540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB490A8);
  }

  return result;
}

void sub_1D9903AC0()
{
  sub_1D9905184();
  v0 = sub_1D992B0D4();
  if (v0)
  {
    v8 = v0;
    v1 = [v0 whichEvent_Type];
    switch(v1)
    {
      case 'e':
        v2 = OUTLINED_FUNCTION_2_36();
        sub_1D9904374(v2, v3);
        goto LABEL_11;
      case 'f':
        v4 = OUTLINED_FUNCTION_2_36();
        sub_1D9904468(v4, v5);
        goto LABEL_11;
      case 'g':
        v6 = OUTLINED_FUNCTION_2_36();
        sub_1D9904164(v6, v7);
        goto LABEL_11;
      case 'h':
        goto LABEL_11;
      default:
        if (v1)
        {
          if (qword_1ECB480B8 != -1)
          {
            OUTLINED_FUNCTION_0_49();
          }

          OUTLINED_FUNCTION_1_40();
          sub_1D992BD64();
          MEMORY[0x1DA739C30](0xD000000000000031, 0x80000001D993D3E0);
          [v8 whichEvent_Type];
          type metadata accessor for SUTSchemaTestExecutionEvent_WhichEvent_Type(0);
          sub_1D992BE24();
          sub_1D98DCEB4(v9, v10, 0xD000000000000062, 0x80000001D993D300, 0x28737365636F7270, 0xEB00000000293A5FLL);
        }

        else
        {
LABEL_11:
        }

        break;
    }
  }
}

uint64_t sub_1D9903C78()
{
  v1 = v0;
  v2 = sub_1D992AE84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  result = sub_1D992B0B4();
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v6 = result;
  sub_1D992B134();

  v7 = *v1;
  if (*(*v1 + 16))
  {
    v8 = sub_1D9889568();
    if (v9)
    {
      v10 = *(v7 + 56) + 24 * v8;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
LABEL_10:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v21 - 8);
      sub_1D987BA38(v11, v12);
      sub_1D992AD64();
      sub_1D992B094();
      sub_1D987106C(v11, v12);
      v23 = *(v3 + 8);
      v24 = OUTLINED_FUNCTION_3_23();
      return v25(v24);
    }
  }

  result = sub_1D992B0B4();
  if (!result)
  {
    goto LABEL_14;
  }

  v13 = result;
  v14 = sub_1D992B154();

  v15 = v1[4];
  v16 = v1[5];
  sub_1D9905004(v29, v14, v14, v1[3]);
  if ((v30 & 1) == 0)
  {
    v17 = v1[2];
    if (*(v17 + 16))
    {
      v18 = sub_1D98897E0(v29[0], v29[1]);
      if (v19)
      {
        v20 = (*(v17 + 56) + 16 * v18);
        v11 = *v20;
        v12 = v20[1];
        goto LABEL_10;
      }
    }
  }

  v26 = *(v3 + 8);
  v27 = OUTLINED_FUNCTION_3_23();
  return v28(v27);
}

unint64_t sub_1D9903E98(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = result;
  if (result >= a3)
  {
    if (result == a3)
    {
      if (qword_1ECB480B8 != -1)
      {
        OUTLINED_FUNCTION_0_49();
      }

      OUTLINED_FUNCTION_1_40();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](0xD000000000000037, 0x80000001D993D2C0);
      v7 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v7);

      MEMORY[0x1DA739C30](0x20646E6120, 0xE500000000000000);
      v8 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v8);

      sub_1D98DCEB4(v11, v12, 0xD000000000000062, 0x80000001D993D300, 0xD000000000000016, 0x80000001D993D370);

      if (a2 == a4)
      {
        OUTLINED_FUNCTION_1_40();
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000049, 0x80000001D993D390);
        v9 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v9);

        MEMORY[0x1DA739C30](0x20646E6120, 0xE500000000000000);
        v10 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v10);

        sub_1D98DCEB4(v11, v12, 0xD000000000000062, 0x80000001D993D300, 0xD000000000000016, 0x80000001D993D370);

        return OUTLINED_FUNCTION_3_23();
      }

      if (a2 < a4)
      {
        return OUTLINED_FUNCTION_3_23();
      }

      if (a4 != -1)
      {
        if (a4 + 1 <= a2)
        {
          return v5;
        }

        goto LABEL_19;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (result)
    {
      if (result - 1 >= a3)
      {
        return a3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void sub_1D9904164(int a1, id a2)
{
  v3 = v2;
  v4 = [a2 metadata];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 fingerprint];

  if (!v6)
  {
    return;
  }

  v7 = sub_1D9905330(v6);
  if (v8 >> 60 == 15)
  {
    return;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1D992AE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D992B0B4();
  if (!v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  sub_1D992B134();

  v18 = sub_1D992B0B4();
  if (!v18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = sub_1D992B154();

  v21 = *v3;
  if (*(*v3 + 16) && (v22 = sub_1D9889568(), (v23 & 1) != 0) && *(*(v21 + 56) + 24 * v22) < v20)
  {
    (*(v12 + 8))(v15, v11);
    sub_1D9866358(v9, v10);
  }

  else
  {
    v24 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D989D9E0(v20, v9, v10, v15, isUniquelyReferenced_nonNull_native, v26, v27, v28, v29[0], *v3, v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11]);
    *v3 = v29[1];
    (*(v12 + 8))(v15, v11);
  }
}

void sub_1D9904374(int a1, id a2)
{
  v3 = v2;
  v4 = [a2 metadata];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 fingerprint];

    if (v6)
    {
      v7 = sub_1D9905330(v6);
      if (v8 >> 60 != 15)
      {
        v9 = v7;
        v10 = v8;
        v11 = sub_1D992B0B4();
        if (v11)
        {
          v12 = v11;
          sub_1D992B154();

          v13 = *(v3 + 8);
          swift_isUniquelyReferenced_nonNull_native();
          v14 = *(v3 + 8);
          sub_1D989DB88();
          sub_1D9866358(v9, v10);
          *(v3 + 8) = v14;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_1D9904468(int a1, id a2)
{
  v3 = v2;
  v88 = *MEMORY[0x1E69E9840];
  v4 = [a2 metadata];
  if (!v4)
  {
    goto LABEL_62;
  }

  v5 = v4;
  v6 = [v4 fingerprint];

  if (!v6)
  {
    goto LABEL_62;
  }

  v7 = sub_1D9905330(v6);
  if (v8 >> 60 == 15)
  {
    goto LABEL_62;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1D992B0B4();
  if (!v11)
  {
LABEL_76:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = sub_1D992B154();

  v14 = sub_1D98B0F14(v9, v10, *(v3 + 8));
  v79 = v9;
  if ((v15 & 1) == 0)
  {
    v22 = v14;
    sub_1D98B29B8(v9, v10);
    if (v13 >= v22)
    {
      sub_1D9904E88(v22, v13, &v82);
      v23 = *(v3 + 16);
      if (v87)
      {
        v24 = *(v3 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v80 = *(v3 + 16);
        sub_1D989DC88();
      }

      else
      {
        v28 = v82;
        v29 = v83;
        if (!*(v23 + 16) || (v30 = v84, v31 = v85, v32 = v86, v33 = sub_1D98897E0(v82, v83), (v34 & 1) == 0))
        {
          if (qword_1ECB480B8 != -1)
          {
            swift_once();
          }

          v80 = 0;
          v81 = 0xE000000000000000;
          sub_1D992BD64();
          MEMORY[0x1DA739C30](0xD000000000000028, 0x80000001D993D4B0);
          v45 = sub_1D99053A0();
          MEMORY[0x1DA739C30](v45);

          MEMORY[0x1DA739C30](0x74276E73656F6420, 0xEF2E747369786520);
          sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000062, 0x80000001D993D300, 0xD00000000000001ALL, 0x80000001D993D460);

          v46 = *MEMORY[0x1E69E9840];

          sub_1D9866358(v9, v10);
          return;
        }

        v77 = v30;
        *&v78 = v31;
        v35 = (*(v23 + 56) + 16 * v33);
        v36 = *v35;
        v37 = v35[1];
        v38 = sub_1D98897E0(v28, v29);
        if (v39)
        {
          v40 = v38;
          sub_1D987BA38(v36, v37);
          v41 = *(v3 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v76 = v32;
          v80 = *(v3 + 16);
          v42 = *(v80 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48828, &qword_1D9931B50);
          sub_1D992BE34();
          v43 = (*(v80 + 56) + 16 * v40);
          v44 = v43[1];
          v75 = *v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
          sub_1D98AB5CC();
          sub_1D992BE44();
          sub_1D987106C(v75, v44);
          *(v3 + 16) = v80;
        }

        else
        {
          sub_1D987BA38(v36, v37);
        }

        sub_1D987BA38(v36, v37);
        v66 = *(v3 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v80 = *(v3 + 16);
        sub_1D989DC88();
        *(v3 + 16) = v80;
        swift_isUniquelyReferenced_nonNull_native();
        v80 = *(v3 + 16);
        sub_1D989DC88();
        sub_1D987106C(v36, v37);
      }

      *(v3 + 16) = v80;
      goto LABEL_62;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v68 - v18;
  sub_1D992AD64();
  v20 = sub_1D992AE84();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    v13 = sub_1D992AE24();
    v3 = v25;
    (*(*(v20 - 8) + 8))(v19, v20);
    if (qword_1ECB480B8 == -1)
    {
LABEL_13:
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_1D992BD64();

      v82 = 0xD00000000000002CLL;
      v83 = 0x80000001D993D480;
      MEMORY[0x1DA739C30](v13, v3);

      v26 = v82;
      v27 = v83;
      goto LABEL_58;
    }

LABEL_70:
    swift_once();
    goto LABEL_13;
  }

  sub_1D987625C(v19);
  v3 = v10 >> 62;
  v13 = MEMORY[0x1E69E7CC0];
  switch(v10 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_72;
      }

      v21 = HIDWORD(v9) - v9;
LABEL_26:
      if (!v21)
      {
        goto LABEL_55;
      }

      v80 = MEMORY[0x1E69E7CC0];
      sub_1D986C620();
      v76 = BYTE6(v10);
      v77 = v9;
      v74 = HIDWORD(v9);
      if (v3)
      {
        if (v3 == 2)
        {
          v49 = *(v9 + 16);
        }

        else
        {
          v49 = v77;
        }
      }

      else
      {
        v49 = 0;
      }

      if (v21 < 0)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      v13 = v80;
      v75 = v9 >> 32;
      v78 = xmmword_1D992FCB0;
      v72 = v9 >> 16;
      v73 = v9 >> 8;
      v70 = v9 >> 40;
      v71 = v9 >> 24;
      v69 = HIWORD(v9);
      v68 = HIBYTE(v9);
      break;
    case 2uLL:
      v48 = *(v9 + 16);
      v47 = *(v9 + 24);
      v21 = v47 - v48;
      if (!__OFSUB__(v47, v48))
      {
        goto LABEL_26;
      }

      goto LABEL_73;
    case 3uLL:
      goto LABEL_55;
    default:
      v21 = BYTE6(v10);
      goto LABEL_26;
  }

  do
  {
    if (v3 == 1)
    {
      if (v49 < v77 || v49 >= v75)
      {
        goto LABEL_65;
      }

      v52 = sub_1D992ABC4();
      if (!v52)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v9 = v52;
      v53 = sub_1D992ABE4();
      v54 = v49 - v53;
      if (__OFSUB__(v49, v53))
      {
        goto LABEL_67;
      }

      goto LABEL_51;
    }

    if (v3)
    {
      if (v49 < *(v9 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v49 >= *(v9 + 24))
      {
        goto LABEL_66;
      }

      v55 = sub_1D992ABC4();
      if (!v55)
      {
        goto LABEL_75;
      }

      v9 = v55;
      v56 = sub_1D992ABE4();
      v54 = v49 - v56;
      if (__OFSUB__(v49, v56))
      {
        goto LABEL_68;
      }

LABEL_51:
      v50 = *(v9 + v54);
      goto LABEL_52;
    }

    if (v49 >= v76)
    {
      goto LABEL_64;
    }

    LOBYTE(v82) = v9;
    BYTE1(v82) = v73;
    BYTE2(v82) = v72;
    BYTE3(v82) = v71;
    BYTE4(v82) = v74;
    BYTE5(v82) = v70;
    BYTE6(v82) = v69;
    HIBYTE(v82) = v68;
    LOWORD(v83) = v10;
    BYTE2(v83) = BYTE2(v10);
    BYTE3(v83) = BYTE3(v10);
    BYTE4(v83) = BYTE4(v10);
    BYTE5(v83) = BYTE5(v10);
    v50 = *(&v82 + v49);
LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB490B8, &qword_1D9935610);
    v57 = swift_allocObject();
    *(v57 + 16) = v78;
    *(v57 + 56) = MEMORY[0x1E69E7508];
    *(v57 + 64) = MEMORY[0x1E69E7558];
    *(v57 + 32) = v50;
    v58 = sub_1D992B634();
    v60 = v59;
    v80 = v13;
    v61 = *(v13 + 16);
    if (v61 >= *(v13 + 24) >> 1)
    {
      sub_1D986C620();
      v13 = v80;
    }

    *(v13 + 16) = v61 + 1;
    v62 = v13 + 16 * v61;
    *(v62 + 32) = v58;
    *(v62 + 40) = v60;
    ++v49;
    --v21;
    v9 = v79;
  }

  while (v21);
LABEL_55:
  v82 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v63 = sub_1D992B5E4();
  v65 = v64;

  if (qword_1ECB480B8 != -1)
  {
    swift_once();
  }

  v82 = 0;
  v83 = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000003BLL, 0x80000001D993D420);
  MEMORY[0x1DA739C30](v63, v65);

  v26 = v82;
  v27 = v83;
LABEL_58:
  sub_1D98DCEB4(v26, v27, 0xD000000000000062, 0x80000001D993D300, 0xD00000000000001ALL, 0x80000001D993D460);
  sub_1D9866358(v9, v10);

LABEL_62:
  v67 = *MEMORY[0x1E69E9840];
}

void sub_1D9904E88(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26[0] = a1;
  v26[1] = a2;
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v11 = sub_1D9905004(&v24, a1, a2, *v4);
  v12 = v11;
  v13 = v25;
  if (v25)
  {
    if (*(v9 + 16) >= v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_1D99051C8(v11, v11, a1, a2);
        v14 = 0;
        v15 = 0;
        v16 = 0uLL;
        v17 = 0uLL;
LABEL_9:
        *a3 = v16;
        *(a3 + 16) = v17;
        *(a3 + 32) = v14;
        *(a3 + 40) = v15;
        *(a3 + 48) = v13;
        return;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v24;
  v23 = v24;
  v8(&v22, &v20, &v23, v26);
  sub_1D99050FC(v12);
  if (*(*v4 + 16) < v12)
  {
    goto LABEL_11;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v20;
  v15 = v21;
  sub_1D99051C8(v12, v12, v20, v21);
  if (*(*v4 + 16) >= v12)
  {
    v18 = v22;
    sub_1D99051C8(v12, v12, v22, *(&v22 + 1));
    v17 = v18;
    v16 = v19;
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1D9905004(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = 0;
  v6 = v4 - 1;
  if (v4 > 1)
  {
    v7 = a4 + 32;
    v8 = v4 - 1;
    do
    {
      v9 = v6 / 2;
      if (v6 < -1 || v9 >= v4)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v11 = *(v7 + 16 * v9);
      if (v11 <= a3 && *(&v11 + 1) >= a2)
      {
        *result = *(v7 + 16 * v9);
        *(result + 16) = 0;
        return v9;
      }

      if (v11 <= a3)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9 - 1;
      }

      if (*(&v11 + 1) < a2)
      {
        v5 = v9 + 1;
      }

      else
      {
        v8 = v13;
      }

      v6 = v5 + v8;
      if (__OFADD__(v5, v8))
      {
        goto LABEL_35;
      }
    }

    while (v5 < v8);
    if (v5 < v4)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  if (v4 != 1)
  {
LABEL_30:
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 1;
    return v5;
  }

LABEL_23:
  if (v5 < v4)
  {
    v14 = *(a4 + 16 * v5 + 32);
    if (v14 <= a3 && *(&v14 + 1) >= a2)
    {
      *result = *(a4 + 16 * v5 + 32);
      *(result + 16) = 0;
      return v5;
    }

    if (*(&v14 + 1) < a2)
    {
      v9 = v5 + 1;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 1;
      return v9;
    }

    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1D99050FC(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D990531C(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_1D98BEA3C((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

unint64_t sub_1D9905184()
{
  result = qword_1ECB47910;
  if (!qword_1ECB47910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB47910);
  }

  return result;
}

uint64_t sub_1D99051C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1D98EAE2C(result, 1);

  return sub_1D9905274(v7, a2, 1, a3, a4);
}

char *sub_1D9905274(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 16 * result);
  if (v8)
  {
    v14 = *(v11 + 16);
    v15 = __OFSUB__(v14, a2);
    v16 = v14 - a2;
    if (!v15)
    {
      result = sub_1D98BEA3C((v12 + 16 * a2), v16, &v13[2 * a3]);
      v17 = *(v11 + 16);
      v15 = __OFADD__(v17, v8);
      v18 = v17 + v8;
      if (!v15)
      {
        *(v11 + 16) = v18;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1D9905330(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D992AD84();

  return v3;
}

uint64_t sub_1D99053A0()
{
  sub_1D992BE24();
  MEMORY[0x1DA739C30](3026478, 0xE300000000000000);
  sub_1D992BE24();
  return 0;
}

uint64_t sub_1D9905438(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9905478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D99054D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D9905520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1D9905580()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D99055BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D99055FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D9905654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  OUTLINED_FUNCTION_128();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  OUTLINED_FUNCTION_128();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1D9935818;
  v10[5] = v9;
  sub_1D9906B68(0, 0, v7, &unk_1D9935828, v10);
}

uint64_t sub_1D990575C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 57) = *a2;
  return OUTLINED_FUNCTION_0_3(sub_1D9905780, v2);
}

uint64_t sub_1D9905780()
{
  if ([*(v0 + 16) anyEventType] != 7)
  {
    goto LABEL_5;
  }

  if (qword_1ECB47D40 != -1)
  {
    swift_once();
  }

  if (byte_1ECB496B0 != 1)
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_4_26();
    }

    v10 = sub_1D98DCE30();
    if (*(v10 + 24) == 1)
    {
      v11 = *(v0 + 57);
      v12 = sub_1D9905C6C();
      v13 = *(v10 + 16);
      sub_1D986A454(v12, v14, 0xD000000000000067, 0x80000001D993D500, 0xD000000000000010, 0x80000001D993D570);
    }

    v15 = OUTLINED_FUNCTION_13_15();

    return v16(v15);
  }

  else
  {
LABEL_5:
    v1 = *(v0 + 57);
    v2 = *(v0 + 24);
    v3 = v2[17];
    v4 = v2[18];
    __swift_project_boxed_opaque_existential_1(v2 + 14, v3);
    *(v0 + 56) = v1;
    v5 = *(v4 + 8);
    v17 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 32) = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_2_37(v7);

    return v17(v8, v0 + 56, v3, v4);
  }
}

uint64_t sub_1D99059DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 40) = v0;

  v7 = *(v3 + 24);
  if (v0)
  {
    v8 = sub_1D9905C5C;
  }

  else
  {
    v8 = sub_1D9905AE4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D9905AE4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 24) + 152);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_2_37(v2);

  return sub_1D987BED8(v3);
}

uint64_t sub_1D9905B70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(1);
}

uint64_t sub_1D9905C6C()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000028, 0x80000001D993D680);
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0xD000000000000018, 0x80000001D993A260);
  return 0;
}

uint64_t sub_1D9905D20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D9905D50()
{
  sub_1D9905D20();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D9905D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_3(sub_1D9905D9C, 0);
}

uint64_t sub_1D9905D9C()
{
  OUTLINED_FUNCTION_26_2();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = sub_1D992BF04();

  if (v3 > 3)
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_4_26();
    }

    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    sub_1D992BD64();

    MEMORY[0x1DA739C30](v9, v8);
    MEMORY[0x1DA739C30](0xD000000000000013, 0x80000001D993D4E0);
    sub_1D98DCEB4(0x206E776F6E6B6E55, 0xEF203A6369706F74, 0xD000000000000067, 0x80000001D993D500, 0xD000000000000010, 0x80000001D993D570);

    v10 = OUTLINED_FUNCTION_13_15();

    return v11(v10);
  }

  else
  {
    v4 = *(*(v0 + 40) + OBJC_IVAR___SiriAnalyticsDirectUploadTopic_underlying);
    *(v0 + 64) = v3;
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_2_37(v5);

    return sub_1D990575C(v6, (v0 + 64));
  }
}

uint64_t sub_1D9905F98()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D99060C4, 0, 0);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(v3 & 1);
  }
}

uint64_t sub_1D990616C(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1D992B624();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1D9906258;

  return sub_1D9905D7C(v10, v7, v9);
}

uint64_t sub_1D9906258(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  v8 = v5[6];
  v9 = v5[5];
  v10 = v5[3];
  v11 = v5[2];
  v12 = *v2;
  *v7 = *v2;

  v13 = v5[4];
  if (v3)
  {
    v14 = sub_1D992AC84();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(v5[4], a1 & 1, 0);
  }

  _Block_release(v6[4]);
  v15 = v12[1];

  return v15();
}

id DirectUploadTopicShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DirectUploadTopicShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DirectUploadTopicShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of DirectUploadTopicShim.append(_:topic:)()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_12(v9);
  *v10 = v11;
  v10[1] = sub_1D9906674;

  return v13(v6, v4, v2);
}

uint64_t sub_1D9906674()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1D9906760()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_12(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_24(v6);

  return v9(v8);
}

uint64_t sub_1D99067FC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D98692C4;

  return v7();
}

uint64_t sub_1D99068E4()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_12(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_24(v6);

  return v9(v8);
}

uint64_t sub_1D9906980(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D989EB64;

  return v8();
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1D9906AA4()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_12(v7);
  *v8 = v9;
  v8[1] = sub_1D98692C4;

  return sub_1D9906980(v2, v3, v4, v6);
}

uint64_t sub_1D9906B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1D988C450(a3, v25 - v11);
  v13 = sub_1D992B874();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1D988C380(v12);
  }

  else
  {
    sub_1D992B864();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1D992B814();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D992B6B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D988C380(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D988C380(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D9906E04(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9906EFC;

  return v7(a1);
}

uint64_t sub_1D9906EFC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D9906FE0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_34(v4);

  return v7(v6);
}

uint64_t sub_1D990707C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_34(v4);

  return v7(v6);
}

uint64_t sub_1D990712C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v10 = a3;
  if (!a2)
  {
    MEMORY[0x1DA739C30](a3, a4);
    MEMORY[0x1DA739C30](95, 0xE100000000000000);
    v12 = *(a5 + 16);
    if (v12)
    {
      v22 = v10;
      v23 = v9;
      v24 = a6;
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D986C620();
      v13 = (a5 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v17 = *(v25 + 16);
        v16 = *(v25 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_1D986C620();
        }

        *(v25 + 16) = v17 + 1;
        v18 = v25 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v13 += 3;
        --v12;
      }

      while (v12);
      a6 = v24;
      v10 = v22;
      v9 = v23;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    v19 = sub_1D992B5E4();
    v21 = v20;

    MEMORY[0x1DA739C30](v19, v21);

    result = 1601725545;
    a2 = 0xE400000000000000;
  }

  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v10;
  *(a7 + 24) = v9;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t sub_1D99072FC()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D986C620();
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v16 + 16);
      v7 = *(v16 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_1D986C620();
      }

      *(v16 + 16) = v8 + 1;
      v9 = v16 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v10 = sub_1D992B5E4();
  v12 = v11;

  if (*(v1 + 40))
  {
    v13 = 0x20455551494E5520;
  }

  else
  {
    v13 = 0;
  }

  if (*(v1 + 40))
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  sub_1D992BD64();

  MEMORY[0x1DA739C30](v13, v14);

  MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D993D6B0);
  MEMORY[0x1DA739C30](*v1, *(v1 + 8));
  MEMORY[0x1DA739C30](542002954, 0xE400000000000000);
  MEMORY[0x1DA739C30](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA739C30](10272, 0xE200000000000000);
  MEMORY[0x1DA739C30](v10, v12);

  MEMORY[0x1DA739C30](15145, 0xE200000000000000);
  return 0x20455441455243;
}

uint64_t sub_1D9907534(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9907574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t static UnifiedMessageStreamHelper.identifier()()
{
  v0 = type metadata accessor for ResourceType(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_13();
  v4 = v3 - v2;
  type metadata accessor for PersistentStorage();
  v5 = sub_1D992AD44();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  sub_1D98F97F8();
  v14 = type metadata accessor for DataVault();
  v15 = objc_allocWithZone(v14);
  (*(v8 + 16))(v15 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v13, v5);
  v18.receiver = v15;
  v18.super_class = v14;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v8 + 8))(v13, v5);
  sub_1D98CB418(v4);

  sub_1D98876F0(v4);
  return 0xD000000000000014;
}

uint64_t static UnifiedMessageStreamHelper.ensureDirectoryExists(at:)()
{
  type metadata accessor for PersistentStorage();
  result = sub_1D98F8F10();
  if ((result & 1) == 0)
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();

    v1 = sub_1D992ACA4();
    MEMORY[0x1DA739C30](v1);

    MEMORY[0x1DA739C30](0xD000000000000023, 0x80000001D993D6D0);
    sub_1D98DCEB4(0x726F746365726944, 0xEA00000000002079, 0xD000000000000079, 0x80000001D993D700, 0xD00000000000001ALL, 0x80000001D993D780);
  }

  return result;
}

uint64_t static UnifiedMessageStreamHelper.fileURL()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResourceType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  type metadata accessor for PersistentStorage();
  v7 = sub_1D992AD44();
  v8 = OUTLINED_FUNCTION_6(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  sub_1D98F97F8();
  v16 = type metadata accessor for DataVault();
  v17 = objc_allocWithZone(v16);
  (*(v10 + 16))(v17 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v15, v7);
  v20.receiver = v17;
  v20.super_class = v16;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v10 + 8))(v15, v7);
  sub_1D98CB418(v6);

  sub_1D98C601C(a1);
  return sub_1D98876F0(v6);
}

id UnifiedMessageStreamHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UnifiedMessageStreamHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageStreamHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UnifiedMessageStreamHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageStreamHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9907D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D986DDBC();
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics11SQLSetValueO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((v1 >> 2) & 0x1E) != 0)
  {
    return 32 - ((v1 >> 2) & 0x1E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9907D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 33))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 32) >> 2) & 0x1E | (*(a1 + 32) >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9907DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (4 * (a2 ^ 0x1F)) & 0xF8 | ((a2 ^ 0x1F) << 7);
    }
  }

  return result;
}

uint64_t sub_1D9907E08(uint64_t result, unsigned int a2)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
  }

  return result;
}

uint64_t sub_1D9907E58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9907E98(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D9907EE8()
{
  sub_1D98FE2D0();
  if (!v0)
  {
    return 0;
  }

  sub_1D98B6224();
  v2 = v1;

  return v2;
}

uint64_t static MonotonicTimestamp.now(forClock:)(char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = mach_continuous_time();
  }

  else
  {
    v2 = mach_absolute_time();
  }

  v4 = v1;
  return MonotonicTimestamp.init(cpuTicks:clockType:)(v2, &v4);
}

SiriAnalytics::MonotonicTimestamp::MonotonicClockType_optional __swiftcall MonotonicTimestamp.MonotonicClockType.init(rawValue:)(SiriAnalytics::MonotonicTimestamp::MonotonicClockType_optional rawValue)
{
  if (rawValue.value == SiriAnalytics_MonotonicTimestamp_MonotonicClockType_continuous)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == SiriAnalytics_MonotonicTimestamp_MonotonicClockType_suspending)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MonotonicTimestamp.init(bootSessionUUID:nanoSecondsSinceBoot:clockType:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  sub_1D9879FF8(a1, &v29 - v16);
  OUTLINED_FUNCTION_2_38(v17);
  if (v18)
  {
    if (qword_1ECB47FB0 != -1)
    {
      OUTLINED_FUNCTION_0_50();
    }

    __swift_project_value_buffer(v6, qword_1ECB496F0);
    v19 = OUTLINED_FUNCTION_14_15();
    v20(v19);
    sub_1D987625C(a1);
    OUTLINED_FUNCTION_2_38(v17);
    if (!v18)
    {
      sub_1D987625C(v17);
    }
  }

  else
  {
    sub_1D987625C(a1);
    v21 = *(v8 + 32);
    v22 = OUTLINED_FUNCTION_7_21();
    v23(v22);
  }

  v24 = OUTLINED_FUNCTION_20_8();
  v25(v24);
  v26 = type metadata accessor for MonotonicTimestamp();
  result = OUTLINED_FUNCTION_8_17(v26);
  *(a3 + v28) = v5;
  return result;
}

void MonotonicInterval.init(seconds:minutes:hours:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __int16 a4@<W2>)
{
  v4 = 1000000000 * a2;
  if ((a2 & 0x100000000) != 0)
  {
    v4 = 0;
  }

  if ((a3 & 0x100000000) != 0)
  {
    goto LABEL_7;
  }

  if (!is_mul_ok(60 * a3, 0x3B9ACA00uLL))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = 60000000000 * a3;
  v6 = __CFADD__(v4, v5);
  v4 += v5;
  if (!v6)
  {
LABEL_7:
    if ((a4 & 0x100) != 0 || !__CFADD__(v4, 3600000000000 * a4))
    {
      OUTLINED_FUNCTION_17_12(a1);
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

void static MonotonicInterval.+ infix(_:_:)(void *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  if (__CFADD__(*a2, *a3))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_12(a1);
  }
}

unint64_t sub_1D9908208(unint64_t result)
{
  v1 = result;
  if (qword_1ECB47DD0 != -1)
  {
    result = swift_once();
  }

  if (v1 == -1 || qword_1ECB47DC8 == HIDWORD(qword_1ECB47DC8))
  {
    return v1;
  }

  if (!is_mul_ok(v1, qword_1ECB47DC8))
  {
    return -1;
  }

  if (HIDWORD(qword_1ECB47DC8))
  {
    return v1 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
  }

  __break(1u);
  return result;
}

void static MonotonicInterval.- infix(_:_:)(void *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  if (*a2 < *a3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_12(a1);
  }
}

void MonotonicTimestamp.init(nanoSecondsSinceBoot:clockType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = *v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(&a9 - v30, 1, 1, v31);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_16();
  MEMORY[0x1EEE9AC00](v37);
  sub_1D9879FF8(&a9 - v30, &a9 - v30);
  OUTLINED_FUNCTION_2_38(&a9 - v30);
  if (v38)
  {
    if (qword_1ECB47FB0 != -1)
    {
      OUTLINED_FUNCTION_0_50();
    }

    __swift_project_value_buffer(v31, qword_1ECB496F0);
    v39 = OUTLINED_FUNCTION_14_15();
    v40(v39);
    sub_1D987625C(&a9 - v30);
    OUTLINED_FUNCTION_2_38(&a9 - v30);
    if (!v38)
    {
      sub_1D987625C(&a9 - v30);
    }
  }

  else
  {
    sub_1D987625C(&a9 - v30);
    v41 = *(v33 + 32);
    v42 = OUTLINED_FUNCTION_7_21();
    v43(v42);
  }

  v44 = OUTLINED_FUNCTION_20_8();
  v45(v44);
  v46 = type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_8_17(v46);
  *(v23 + v47) = v25;
  OUTLINED_FUNCTION_7();
}

BOOL sub_1D9908488()
{
  v2 = type metadata accessor for MonotonicTimestamp();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_42();
  v5 = *(v0 + *(v4 + 24));
  if (v5)
  {
    v6 = mach_continuous_time();
  }

  else
  {
    v6 = mach_absolute_time();
  }

  v10 = v5;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v6, &v10);
  v7 = *(v1 + *(v2 + 20));
  sub_1D98C7A84(v1);
  sub_1D992C0F4();
  v8 = *(v0 + *(v2 + 20));
  return (sub_1D992C0E4() & 1) == 0;
}

uint64_t sub_1D9908618@<X0>(_BYTE *a1@<X8>)
{
  result = MonotonicTimestamp.MonotonicClockType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MonotonicTimestamp()
{
  result = qword_1ED8BF4C8;
  if (!qword_1ED8BF4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static MonotonicTimestamp.+ infix(_:_:)()
{
  OUTLINED_FUNCTION_6_2();
  v9 = OUTLINED_FUNCTION_24_9(v7, v8);
  v10 = *(v3 + *(v9 + 20));
  v11 = __CFADD__(v10, v0);
  v12 = v10 + v0;
  if (v11)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0_50();
    goto LABEL_5;
  }

  v13 = v9;
  v35 = v12;
  v36 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_12_17(v18);
  v19 = OUTLINED_FUNCTION_10_16();
  v20(v19);
  v21 = __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v33[2] = v33;
  v34 = *(v3 + *(v13 + 24));
  v22 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_42();
  MEMORY[0x1EEE9AC00](v23);
  v4 = v33 - v0;
  v24 = OUTLINED_FUNCTION_7_21();
  sub_1D9879FF8(v24, v25);
  OUTLINED_FUNCTION_3_24();
  if (!v26)
  {
    sub_1D987625C(v2);
    v29 = OUTLINED_FUNCTION_15_9();
    v30(v29);
    goto LABEL_7;
  }

  if (qword_1ECB47FB0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  __swift_project_value_buffer(v6, qword_1ECB496F0);
  v27 = OUTLINED_FUNCTION_22_11();
  v28(v27);
  sub_1D987625C(v2);
  OUTLINED_FUNCTION_3_24();
  if (!v26)
  {
    sub_1D987625C(v4);
  }

LABEL_7:
  v31 = OUTLINED_FUNCTION_11_20();
  v32(v31);
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_7();
}

void static MonotonicTimestamp.- infix(_:_:)()
{
  OUTLINED_FUNCTION_6_2();
  v9 = OUTLINED_FUNCTION_24_9(v7, v8);
  v10 = *(v3 + *(v9 + 20));
  v11 = v10 >= v0;
  v12 = v10 - v0;
  if (!v11)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0_50();
    goto LABEL_6;
  }

  v13 = v9;
  v35 = v12;
  v36 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_12_17(v18);
  v19 = OUTLINED_FUNCTION_10_16();
  v20(v19);
  v21 = __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v33[2] = v33;
  v34 = *(v3 + *(v13 + 24));
  v22 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_42();
  MEMORY[0x1EEE9AC00](v23);
  v4 = v33 - v0;
  v24 = OUTLINED_FUNCTION_7_21();
  sub_1D9879FF8(v24, v25);
  OUTLINED_FUNCTION_3_24();
  if (!v26)
  {
    sub_1D987625C(v2);
    v29 = OUTLINED_FUNCTION_15_9();
    v30(v29);
    goto LABEL_8;
  }

  if (qword_1ECB47FB0 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  __swift_project_value_buffer(v6, qword_1ECB496F0);
  v27 = OUTLINED_FUNCTION_22_11();
  v28(v27);
  sub_1D987625C(v2);
  OUTLINED_FUNCTION_3_24();
  if (!v26)
  {
    sub_1D987625C(v4);
  }

LABEL_8:
  v31 = OUTLINED_FUNCTION_11_20();
  v32(v31);
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_7();
}

double sub_1D9908E50()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0x100000001;
  mach_timebase_info(v2);
  result = *v2;
  qword_1ECB47DC8 = v2[0];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D9908ED0()
{
  result = qword_1ECB49148;
  if (!qword_1ECB49148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49148);
  }

  return result;
}

unint64_t sub_1D9908F28()
{
  result = qword_1ECB49150;
  if (!qword_1ECB49150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49150);
  }

  return result;
}

uint64_t sub_1D9908FD0()
{
  result = sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MonotonicTimestamp.MonotonicClockType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_11()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  return type metadata accessor for MonotonicTimestamp();
}

uint64_t sub_1D99091A0(unsigned int a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_1D99091C4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D99091A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D99091F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(&v27 - v6, 1, 1, v8);
  v37 = 0;
  v36 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_1D992AE04();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v31 = &v27 - v6;
  v32 = a1;
  v33 = &v37;
  v34 = &v36;
  v35 = v12;
  sub_1D9909A64();
  v14 = sub_1D992B964();
  if (v2)
  {
    goto LABEL_8;
  }

  v30 = &v27;
  v29 = *(v8 - 8);
  v15 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  sub_1D9866D90(&v27 - v6, &v27 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
  if (__swift_getEnumTagSinglePayload(&v27 - v6, 1, v8) == 1)
  {
    sub_1D986B804(&v27 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_7:
    v24 = sub_1D992B484();
    sub_1D986904C(&qword_1ECB479C0, MEMORY[0x1E6999BC0]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E6999BA8], v24);
    swift_willThrow();
LABEL_8:
    sub_1D986B804(v12, &qword_1ECB48710, &qword_1D9931340);

    return sub_1D986B804(v7, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  v28 = a2;
  v19 = *(v29 + 32);
  v19(v17, &v27 - v6, v8);
  v20 = v36;
  if (!v36)
  {
    (*(v29 + 8))(v17, v8);
    goto LABEL_7;
  }

  v21 = v28;
  v19(v28, v17, v8);
  v22 = v37;
  v23 = type metadata accessor for StagedMessage();
  sub_1D9866D90(v12, &v21[v23[7]], &qword_1ECB48710, &qword_1D9931340);
  *&v21[v23[5]] = v22;
  *&v21[v23[6]] = v20;
  sub_1D986B804(v12, &qword_1ECB48710, &qword_1D9931340);
  return sub_1D986B804(v7, &qword_1ECB481D0, &qword_1D992F9F0);
}

void sub_1D990960C(_BYTE *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6)
{
  switch(*a1)
  {
    case 1:
      sub_1D992B164();
      sub_1D986904C(&qword_1ECB47A18, MEMORY[0x1E69CE6A0]);
      sub_1D992B984();
      if (!v6)
      {
        v22 = *a4;
        *a4 = v23[1];
      }

      break;
    case 2:
      MEMORY[0x1EEE9AC00](a1);
      sub_1D992B974();
      break;
    case 3:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v17 - 8);
      v20 = v23 - v19;
      sub_1D992B9A4();
      v12 = v20;
      v13 = a6;
      v14 = &qword_1ECB48710;
      v15 = &qword_1D9931340;
      goto LABEL_5;
    default:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v8 - 8);
      v11 = v23 - v10;
      sub_1D992B9B4();
      v12 = v11;
      v13 = a2;
      v14 = &qword_1ECB481D0;
      v15 = &qword_1D992F9F0;
LABEL_5:
      sub_1D9909AD4(v12, v13, v14, v15);
      break;
  }
}

void sub_1D9909830(uint64_t a1, void **a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CF568]) init];
  if (v4)
  {
    v5 = v4;
    if ([v4 readFrom_])
    {
      v6 = *a2;
      *a2 = v5;
    }

    else
    {
      v7 = sub_1D992B484();
      sub_1D986904C(&qword_1ECB479C0, MEMORY[0x1E6999BC0]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6999BA8], v7);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D9909A64()
{
  result = qword_1ECB47EE8;
  if (!qword_1ECB47EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47EE8);
  }

  return result;
}

uint64_t sub_1D9909AD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_39(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

_BYTE *_s14descr1F5515BB1O6FieldsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D9909C04()
{
  result = qword_1ECB49158;
  if (!qword_1ECB49158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49158);
  }

  return result;
}

id sub_1D9909C68(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    return [a1 removePersistentIdentifiers];
  }

  if (qword_1ECB47AC8 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  v3 = sub_1D98DCE30();
  sub_1D98DD190(0xD000000000000083, 0x80000001D993D7D0, 0xD00000000000001BLL, 0x80000001D993D8E0, v3);

  return 0;
}

uint64_t sub_1D9909D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9909D4C, 0, 0);
}

uint64_t sub_1D9909D4C()
{
  if (sub_1D9909C68(*(v0 + 24)))
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41();
    }

    v1 = *(v0 + 32);
    v2 = *(v0 + 16);
    sub_1D98DCE30();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    sub_1D98DD1DC(0xD000000000000083, 0x80000001D993D7D0, 0xD000000000000026, 0x80000001D993B690, sub_1D990A370, v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    v5 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D9909F78, v5, v4);
  }

  else
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41();
    }

    v6 = *(v0 + 16);
    sub_1D98DCE30();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    sub_1D98DD1DC(0xD000000000000083, 0x80000001D993D7D0, 0xD000000000000026, 0x80000001D993B690, sub_1D990A368, v7);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D9909F78()
{
  sub_1D990A0FC((*(v0 + 32) + 24), 8, 0xA000000000000008, *(v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1D9909FF4, 0, 0);
}

uint64_t sub_1D9909FF4()
{
  sub_1D9890810(0xA000000000000008);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D990A058()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000038, 0x80000001D993D860);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0;
}

uint64_t sub_1D990A0FC(uint64_t *a1, int a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v26 = &type metadata for SensitiveConditionTag;
  v27 = &protocol witness table for SensitiveConditionTag;
  LODWORD(v23) = a2;
  v24 = a3;
  sub_1D98907D8(a3);
  sub_1D98FD694(v14, &v23, a4, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  sub_1D987625C(v14);
  sub_1D987625C(v11);
  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t sub_1D990A21C()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000003CLL, 0x80000001D993D8A0);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0;
}

uint64_t sub_1D990A2C0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D988AED8;

  return sub_1D9909D28(a1, v5, v4);
}

void *sub_1D990A378(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = v2;
  v1[2] = a1;
  return v1;
}