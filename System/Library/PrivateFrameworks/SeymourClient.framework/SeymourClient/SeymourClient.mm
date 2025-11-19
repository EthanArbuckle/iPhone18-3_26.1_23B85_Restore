uint64_t EventHub.init(queue:dispatchStrategy:timerProvider:)(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_1B4E488FC(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1B4DC40A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t XPCClient.__allocating_init(machServiceName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1B4F67F64();

  v6 = [v4 initWithMachServiceName:v5 options:0];

  swift_allocObject();
  v7 = sub_1B4DC42B8(v6, a3);

  return v7;
}

uint64_t sub_1B4DC42B8(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v3 + 32) = v6;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  aBlock = 0x6E65696C43435058;
  v53 = 0xEB00000000203A74;
  v8 = [a1 serviceName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B4F67F74();
    v12 = v11;
  }

  else
  {
    v12 = 0xED00002964656966;
    v10 = 0x69636570736E7528;
  }

  MEMORY[0x1B8C818C0](v10, v12);

  v13 = aBlock;
  v14 = v53;
  type metadata accessor for TransportDispatchService();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  v15[6] = MEMORY[0x1E69E7CC8];
  v15[7] = v16;
  v15[2] = a2;
  v15[4] = v13;
  v15[5] = v14;
  v17 = swift_allocObject();
  v18 = a2;
  v19 = swift_slowAlloc();
  *(v17 + 16) = v19;
  *v19 = 0;
  v15[3] = v17;
  *(v3 + 16) = v15;
  *(v3 + 24) = a1;
  v20 = a1;
  v21 = sub_1B4DCE854();
  v22 = [v21 bundle];
  if (v22 && (v23 = v22, v24 = [v22 identifier], v23, v24))
  {
    v25 = sub_1B4F67F74();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *(v3 + 72) = v25;
  *(v3 + 80) = v27;
  v28 = [v21 name];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1B4F67F74();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  *(v3 + 56) = v30;
  *(v3 + 64) = v32;
  v33 = *(v3 + 24);
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 interfaceWithProtocol_];
  [v35 setRemoteObjectInterface_];

  v37 = *(v3 + 24);
  v38 = [v34 interfaceWithProtocol_];
  [v37 setExportedInterface_];

  v39 = *(v3 + 16);
  v40 = *(v3 + 24);
  type metadata accessor for XPCExportProxy();
  v41 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v42 = v40;
  [v42 setExportedObject_];

  v43 = *(v3 + 24);
  v44 = swift_allocObject();
  swift_weakInit();
  v56 = sub_1B4E5687C;
  v57 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1B4DCA7B0;
  v55 = &block_descriptor_197;
  v45 = _Block_copy(&aBlock);
  v46 = v43;

  [v46 setInterruptionHandler_];
  _Block_release(v45);

  v47 = *(v3 + 24);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = v47;

  v56 = sub_1B4E568AC;
  v57 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1B4DCA7B0;
  v55 = &block_descriptor_201;
  v50 = _Block_copy(&aBlock);

  [v49 setInvalidationHandler_];
  _Block_release(v50);

  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4DC4954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC49F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v15 = a1;
  v14 = 56;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F66F74();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v14, sub_1B4F3743C, v11, ObjectType, v12, a7, MEMORY[0x1E69CCC60], MEMORY[0x1E69CCC68]);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC4AF0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC4B60(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1B4F67C54();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for LogSystem();
  v10 = __swift_project_value_buffer(v9, a4);
  v11 = *(*(v7 - 8) + 16);
  v12 = v10 + *(v9 + 20);

  return v11(v8, v12, v7);
}

uint64_t sub_1B4DC4C34(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for LogSystem();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  sub_1B4DC4E94();
  v5 = sub_1B4F687A4();
  *v4 = v5;
  v6 = *(v3 + 20);
  v7 = v5;
  sub_1B4F67C64();
  v8 = v4 + *(v3 + 24);
  return sub_1B4F67BB4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t type metadata accessor for LogSystem()
{
  result = qword_1EDB721A8;
  if (!qword_1EDB721A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4DC4DF8()
{
  result = sub_1B4DC4E94();
  if (v1 <= 0x3F)
  {
    result = sub_1B4F67C54();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ActivityTracer();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B4DC4E94()
{
  result = qword_1EDB72118[0];
  if (!qword_1EDB72118[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDB72118);
  }

  return result;
}

uint64_t type metadata accessor for ActivityTracer()
{
  result = qword_1EDB723A0;
  if (!qword_1EDB723A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4DC4F2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B4DC4F88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B4DC5054(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B4DC4F2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1B4DC5054(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B4DC6F98(a5, a6);
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
    result = sub_1B4F68A34();
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

unint64_t sub_1B4DC5160()
{
  result = qword_1EDB72110;
  if (!qword_1EDB72110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB72110);
  }

  return result;
}

unint64_t sub_1B4DC51CC(char a1)
{
  v3 = *(v1 + 40);
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F6B310[a1]);
  v4 = sub_1B4F68EC4();

  return sub_1B4DC5244(a1, v4);
}

unint64_t sub_1B4DC5244(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_1B4F6B310[*(*(v2 + 48) + result)] == qword_1B4F6B310[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B4DC52D8()
{
  result = qword_1EDB72108;
  if (!qword_1EDB72108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB72108);
  }

  return result;
}

void *AdminClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

void *sub_1B4DC5384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2[2] = a1;
  a2[3] = a4;
  a2[4] = a5;
  return a2;
}

unint64_t sub_1B4DC53AC()
{
  result = qword_1EDB71F30;
  if (!qword_1EDB71F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71F30);
  }

  return result;
}

void sub_1B4DC5418(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

void *sub_1B4DC5498(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 2;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F66124();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F51570, v11, ObjectType, v12, a7, MEMORY[0x1E69CBE78], MEMORY[0x1E69CBE80]);

  v17 = a1;
  v16 = 3;
  v13 = swift_allocObject();
  swift_weakInit();

  v14 = sub_1B4F64B34();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F515D0, v13, ObjectType, v14, a7, MEMORY[0x1E69CB000], MEMORY[0x1E69CB008]);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC5630()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC5668()
{
  result = sub_1B4F67BD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DC56D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC5758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v18 = a1;
  v17 = 0;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4DC5928();
  TransportDispatching.register<A>(event:handler:)(&v17, sub_1B4F59798, v11, ObjectType, v12, a7, v13, v14);

  v18 = a1;
  v17 = 1;
  v15 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v17, sub_1B4F597A0, v15, ObjectType, v12, a7, v13, v14);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC58F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1B4DC5928()
{
  result = qword_1EDB71458;
  if (!qword_1EDB71458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
    sub_1B4DC53AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71458);
  }

  return result;
}

uint64_t sub_1B4DC59AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC5A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 4;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F65E64();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E9C5CC, v11, ObjectType, v12, a7, MEMORY[0x1E69CB968], MEMORY[0x1E69CB970]);

  v17 = a1;
  v16 = 5;
  v13 = swift_allocObject();
  swift_weakInit();

  v14 = sub_1B4F65F44();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E9C62C, v13, ObjectType, v14, a7, MEMORY[0x1E69CBB68], MEMORY[0x1E69CBB70]);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC5BF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *EstimatedCaloriesClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

uint64_t sub_1B4DC5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC5D24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v20 = a1;
  v19 = 9;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v19, sub_1B4F2F0B8, v11, ObjectType, a7);

  v20 = a1;
  v19 = 6;
  v12 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4F2F0C0, v12, ObjectType, MEMORY[0x1E69CC3F8], a7, MEMORY[0x1E69CC3E8], MEMORY[0x1E69CC3F0]);

  v20 = a1;
  v19 = 7;
  v13 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v19, sub_1B4F2F0C8, v13, ObjectType, a7);

  v20 = a1;
  v19 = 8;
  v14 = swift_allocObject();
  swift_weakInit();

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v16 = sub_1B4E9C248();
  v17 = sub_1B4DC5928();
  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4F2F0D0, v14, ObjectType, v15, a7, v16, v17);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC5FA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1B4DC5FD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41C0, &qword_1B4F6A728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1B4DC604C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B4DC5FD8(v5, 0);
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

  result = sub_1B4F68A34();
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
        v10 = sub_1B4F68034();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B4DC5FD8(v10, 0);
        result = sub_1B4F689A4();
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

uint64_t sub_1B4DC6180(uint64_t result)
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

  result = sub_1B4DF3F98(result, v12, 1, v3);
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

void *ConfigurationClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

uint64_t sub_1B4DC62C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = swift_getObjectType();
  v15 = a6(a1, a4, v6, ObjectType, v14, a2, a3, a5);
  swift_unknownObjectRelease();
  return v15;
}

void *sub_1B4DC6370(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 46;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v16, sub_1B4F5C884, v11, ObjectType, a7);

  v17 = a1;
  v16 = 47;
  v12 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v16, sub_1B4F5C88C, v12, ObjectType, a7);

  v17 = a1;
  v16 = 48;
  v13 = swift_allocObject();
  swift_weakInit();

  v14 = sub_1B4F66454();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F5C894, v13, ObjectType, v14, a7, MEMORY[0x1E69CC1E8], MEMORY[0x1E69CC1F0]);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC6558()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1B4DC65A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v28 = a1;
  v27 = 39;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F66E54();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EB04E8, v11, ObjectType, v12, a7, MEMORY[0x1E69CCB88], MEMORY[0x1E69CCB90]);

  v28 = a1;
  v27 = 41;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = sub_1B4F665B4();
  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EB0548, v13, ObjectType, v14, a7, MEMORY[0x1E69CC4F8], MEMORY[0x1E69CC500]);

  v28 = a1;
  v27 = 38;
  v15 = sub_1B4F65EF4();
  v16 = MEMORY[0x1E69CBB10];
  v17 = MEMORY[0x1E69CBB18];
  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EAD790, 0, ObjectType, v15, a7, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18]);
  v28 = a1;
  v27 = 45;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = sub_1B4F65DB4();
  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EB05A8, v18, ObjectType, v19, a7, MEMORY[0x1E69CB7A8], MEMORY[0x1E69CB7B0]);

  v28 = a1;
  v27 = 37;
  v20 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EB05B0, v20, ObjectType, v15, a7, v16, v17);

  v28 = a1;
  v27 = 42;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = sub_1B4F66464();
  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EB05B8, v21, ObjectType, v22, a7, MEMORY[0x1E69CC220], MEMORY[0x1E69CC228]);

  v28 = a1;
  v27 = 40;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = sub_1B4F664E4();
  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EB05C0, v23, ObjectType, v24, a7, MEMORY[0x1E69CC300], MEMORY[0x1E69CC308]);

  v28 = a1;
  v27 = 44;
  v25 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v27, sub_1B4EB0620, v25, ObjectType, v15, a7, MEMORY[0x1E69CBB10], v17);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC69F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC6A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC6AB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  ObjectType = swift_getObjectType();
  v21 = a1;
  v20 = 53;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = sub_1B4F668C4();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4E442D0, v13, ObjectType, v14, a7, MEMORY[0x1E69CC750], MEMORY[0x1E69CC758]);

  v21 = a1;
  v20 = 54;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = sub_1B4F66624();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4E44330, v15, ObjectType, v16, a7, MEMORY[0x1E69CC550], MEMORY[0x1E69CC558]);

  v21 = a1;
  v20 = 55;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = sub_1B4F673D4();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4E44390, v17, ObjectType, v18, a7, MEMORY[0x1E69CD058], MEMORY[0x1E69CD060]);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC6CB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DC6D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC6DC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v15 = a1;
  v14 = 52;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F66BB4();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v14, sub_1B4F567D0, v11, ObjectType, v12, a7, MEMORY[0x1E69CCAF0], MEMORY[0x1E69CCAF8]);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC6EC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1B4DC6F98(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B4DC604C(a1, a2);
  sub_1B4DC6180(&unk_1F2CD3DC0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_1B4DC6FFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a3[2] = a1;
  a3[3] = a6;
  a3[4] = a7;
  a3[5] = a2;
  a3[6] = a8;
  ObjectType = swift_getObjectType();
  v20 = a1;
  v19 = 11;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = sub_1B4F66184();
  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4E9E650, v12, ObjectType, v13, a7, MEMORY[0x1E69CBF20], MEMORY[0x1E69CBF28]);

  v20 = a1;
  v19 = 10;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = sub_1B4F670E4();
  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4E9E658, v14, ObjectType, v15, a7, MEMORY[0x1E69CCDF0], MEMORY[0x1E69CCDF8]);

  v20 = a1;
  v19 = 13;
  v16 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4E9E660, v16, ObjectType, MEMORY[0x1E69E6158], a7, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458]);

  v20 = a1;
  v19 = 14;
  v17 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v19, sub_1B4E9E668, v17, ObjectType, a7);

  return a3;
}

uint64_t sub_1B4DC725C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1B4DC7294(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a3[2] = a1;
  a3[3] = a6;
  a3[4] = a7;
  a3[5] = a2;
  a3[6] = a8;
  ObjectType = swift_getObjectType();
  v15 = a1;
  v14 = 16;
  v12 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v14, sub_1B4F33C14, v12, ObjectType, a7);

  return a3;
}

uint64_t sub_1B4DC7364()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC73B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1B4DC7438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC74D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v15 = a1;
  v14 = 17;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v14, sub_1B4E59A40, v11, ObjectType, a7);

  v15 = a1;
  v14 = 18;
  v12 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v14, sub_1B4E59A6C, v12, ObjectType, a7);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC7640()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC7678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC76FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v20 = a1;
  v19 = 19;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F67474();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4E21B94, v11, ObjectType, v12, a7, MEMORY[0x1E69CD0F0], MEMORY[0x1E69CD0F8]);

  v20 = a1;
  v19 = 20;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = sub_1B4F67284();
  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4E21BF4, v13, ObjectType, v14, a7, MEMORY[0x1E69CCF78], MEMORY[0x1E69CCF80]);

  v20 = a1;
  v19 = 27;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = sub_1B4F674B4();
  TransportDispatching.register<A>(event:handler:)(&v19, sub_1B4E21C54, v15, ObjectType, v16, a7, MEMORY[0x1E69CD158], MEMORY[0x1E69CD160]);

  v20 = a1;
  v19 = 21;
  v17 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v19, sub_1B4E21CB4, v17, ObjectType, a7);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC797C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *RemoteKeyDeliveryClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

uint64_t sub_1B4DC7A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC7AA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v25 = a1;
  v24 = 23;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F65F84();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v13 = MEMORY[0x1E69CBB80];
  v14 = MEMORY[0x1E69CBB88];
  TransportDispatching.register<A>(event:handler:)(&v24, sub_1B4EB1B48, v11, ObjectType, v12, a7, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88]);

  v25 = a1;
  v24 = 26;
  v15 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v24, sub_1B4EB1BA8, v15, ObjectType, v12, a7, v13, v14);

  v25 = a1;
  v24 = 28;
  v16 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v24, sub_1B4EB1C08, v16, ObjectType, v12, a7, v13, v14);

  v25 = a1;
  v24 = 27;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = sub_1B4F674B4();
  TransportDispatching.register<A>(event:handler:)(&v24, sub_1B4EB1C68, v17, ObjectType, v18, a7, MEMORY[0x1E69CD158], MEMORY[0x1E69CD160]);

  v25 = a1;
  v24 = 22;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = sub_1B4F67524();
  TransportDispatching.register<A>(event:handler:)(&v24, sub_1B4EB1CC8, v19, ObjectType, v20, a7, MEMORY[0x1E69CD1C0], MEMORY[0x1E69CD1C8]);

  v25 = a1;
  v24 = 24;
  v21 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v24, sub_1B4EB1D28, v21, ObjectType, a7);

  v25 = a1;
  v24 = 25;
  v22 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v24, sub_1B4EB1D54, v22, ObjectType, a7);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC7E78()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *ScoreClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

uint64_t sub_1B4DC7F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC7F8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v21 = a1;
  v20 = 33;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F65504();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4F02B5C, v11, ObjectType, v12, a7, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398]);

  v21 = a1;
  v20 = 29;
  v13 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v20, sub_1B4F02BBC, v13, ObjectType, a7);

  v21 = a1;
  v20 = 31;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = sub_1B4F678C4();
  v16 = MEMORY[0x1E69CD260];
  v17 = MEMORY[0x1E69CD268];
  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4F02BC4, v14, ObjectType, v15, a7, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268]);

  v21 = a1;
  v20 = 32;
  v18 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v20, sub_1B4F02C24, v18, ObjectType, v15, a7, v16, v17);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC820C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *SiriClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

void *StreamingKeyDeliveryClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

uint64_t sub_1B4DC82F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *SyncClient.init(connection:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC88E4(a1, a4, a5, v5, ObjectType, a2, a3);
}

uint64_t sub_1B4DC8418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC84B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v15 = a1;
  v14 = 50;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v14, sub_1B4EF5D08, v11, ObjectType, a7);

  v15 = a1;
  v14 = 51;
  v12 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v14, sub_1B4EF5D34, v12, ObjectType, a7);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC8620()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = swift_getObjectType();
  v15 = a6(a1, a4, v6, ObjectType, v14, a2, a3, a5);
  swift_unknownObjectRelease();
  return v15;
}

void *MetricClient.init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DC5384(a1, v3, ObjectType, a2, a3);
}

uint64_t sub_1B4DC8744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1B4DC87C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v14 = a1;
  v13 = 12;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v13, sub_1B4F47328, v11, ObjectType, a7);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC88AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1B4DC88E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  return a4;
}

void *sub_1B4DC88F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v14 = a1;
  v13 = 49;
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v13, sub_1B4E2F454, v11, ObjectType, a7);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1B4DC89DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DC8A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

Swift::Void __swiftcall XPCClient.activate()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  if (*(v0 + 48) == 1)
  {
    *(v0 + 48) = 2;
    [*(v0 + 24) resume];
  }

  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void *sub_1B4DC8B60(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D0, &qword_1B4F6D0A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D8, &qword_1B4F6D0B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4DC8CA8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B4DC8B60(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D8, &qword_1B4F6D0B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1B4DC8DB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B4DC8ED4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B4E28D5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B4DC8F18(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1B4DC8ED4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1B4DC91F4(v9, a2, a1, v20);
  }
}

unint64_t sub_1B4DC8ED4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1B4F68E74();

  return sub_1B4DC9188(a1, v4);
}

uint64_t sub_1B4DC8F18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46C8, &qword_1B4F6D0A0);
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_1B4F68E74();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1B4DC9188(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B4DC91F4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_1B4DC9238(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  v2 = *(v1 + 32);
  os_unfair_lock_lock((v2 + 24));
  sub_1B4DF7C34((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1B4DC92A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B4DC933C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1B4DC933C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void *sub_1B4DC9368(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SubscriptionToken();
  v8 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v10 = sub_1B4DF7B68(a1, v8, ObjectType, a2);
  v4[4] = v10;
  sub_1B4DC40A0(a3, (v4 + 5));
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(a2 + 32);
  swift_unknownObjectRetain();
  v12(v14, &type metadata for AnalyticsEventOccurred, v10, sub_1B4F569B8, v11, &type metadata for AnalyticsEventOccurred, &protocol witness table for AnalyticsEventOccurred, ObjectType, a2);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v4;
}

uint64_t sub_1B4DC94A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *AnalyticsEventMonitor.init(eventHub:reporter:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1B4DC9368(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t ContactService.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B4F7C1A0;
  v2 = *MEMORY[0x1E695C310];
  *(v1 + 32) = sub_1B4F67F74();
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x1E695C240];
  *(v1 + 48) = sub_1B4F67F74();
  *(v1 + 56) = v5;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1B4DC95D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t MachTimer.init(state:)(char *a1)
{
  v2 = *a1;
  *(v1 + 16) = 0;
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  sub_1B4F684B4();
  *(v1 + 24) = v5;
  return v1;
}

uint64_t sub_1B4DC9788()
{
  result = sub_1B4F67A34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NetworkEvaluator.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4DC9830(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B4DC9830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v27 = sub_1B4F68644();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4F68624();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v14 = sub_1B4F67D74();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  *(v2 + 65) = 540;
  v28 = a1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v17 = sub_1B4DC9B7C();
  v26[0] = "_fakeOfflineMode";
  v26[1] = v17;
  swift_unknownObjectRetain();
  sub_1B4F67D64();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1B4DC9BC8(&qword_1EDB6DA70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54E8, &qword_1B4F73840);
  sub_1B4DC9C58(&qword_1EDB6DB90, &qword_1EB8F54E8, &qword_1B4F73840);
  sub_1B4F688A4();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8090], v27);
  v18 = sub_1B4F68674();
  *(v3 + 48) = v18;
  objc_allocWithZone(type metadata accessor for NetworkMonitor());
  v19 = v18;
  v20 = sub_1B4DC9CD0(v19);

  *(v3 + 32) = v20;
  type metadata accessor for SubscriptionToken();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F8, &qword_1B4F6CA20);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = MEMORY[0x1E69E7CC0];
  *(v21 + 24) = v29;
  *(v21 + 32) = v22;
  swift_unknownObjectWeakAssign();
  *(v3 + 56) = v21;
  type metadata accessor for UnfairLock();
  v23 = swift_allocObject();
  v24 = swift_slowAlloc();
  *(v23 + 16) = v24;
  *v24 = 0;
  *(v3 + 40) = v23;
  *(v3 + 64) = 2;
  return v3;
}

unint64_t sub_1B4DC9B7C()
{
  result = qword_1EDB71450;
  if (!qword_1EDB71450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB71450);
  }

  return result;
}

uint64_t sub_1B4DC9BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4DC9C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4DC9C58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1B4DC9CD0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = [objc_allocWithZone(SMCAirplaneModeObserver) initWithQueue_];
  *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_airplaneModeObserver] = v5;
  v6 = objc_allocWithZone(type metadata accessor for CoreTelephonyObserver());
  v7 = a1;
  v8 = sub_1B4DC9EF4(v7);

  *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_coreTelephonyObserver] = v8;
  *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue] = v7;
  type metadata accessor for ReachabilityObserver();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 80) = 0x3FB999999999999ALL;
  v10 = sub_1B4F67CD4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v7;
  *(v9 + 88) = sub_1B4F67CC4();
  *(v9 + 96) = v13;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  *(v9 + 72) = 2;
  *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_reachabilityObserver] = v9;
  v14 = type metadata accessor for WiFiObserver();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC13SeymourClient12WiFiObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15[OBJC_IVAR____TtC13SeymourClient12WiFiObserver_isEnabled] = 0;
  v16 = OBJC_IVAR____TtC13SeymourClient12WiFiObserver_wifiInterface;
  v17 = objc_allocWithZone(MEMORY[0x1E69995C8]);
  v18 = v13;
  *&v15[v16] = [v17 init];
  *&v15[OBJC_IVAR____TtC13SeymourClient12WiFiObserver_queue] = v18;
  v21.receiver = v15;
  v21.super_class = v14;
  *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_wifiObserver] = objc_msgSendSuper2(&v21, sel_init);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_1B4DC9EF4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_isCellularDataEnabled] = 0;
  v1[OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_isRoaming] = 0;
  v4 = OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_cellularData;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E6964F78]) init];
  *&v1[OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_queue] = a1;
  v5 = [objc_allocWithZone(SMCCoreTelephonyClient) initWithQueue_];
  *&v1[OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_coreTelephonyClient] = v5;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t NetworkEvaluator.activate()()
{
  swift_allocObject();
  swift_weakInit();

  return sub_1B4F675F4();
}

uint64_t sub_1B4DCA0A8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DCA0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F67D54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67D74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = v12;
    v20 = *(Strong + 48);

    v25 = v20;

    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = sub_1B4DDE6F0;
    v21[4] = v18;
    aBlock[4] = sub_1B4DCC844;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_2;
    v22 = _Block_copy(aBlock);

    sub_1B4F67D64();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B4DC9BC8(&qword_1EDB71F90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DC9C58(&qword_1EDB71F80, &unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4F688A4();
    v23 = v25;
    MEMORY[0x1B8C81F10](0, v17, v11, v22);
    _Block_release(v22);

    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v17, v26);
  }

  else
  {
  }
}

uint64_t sub_1B4DCA424()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DCA45C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DCA4A8()
{
  result = sub_1B4F65DB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DCA514()
{
  result = sub_1B4F66E84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DCA580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NetworkEvaluator.activateOnQueue()(v10);

    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;

    v13 = sub_1B4F67654();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B4DDE5C8;
    *(v14 + 24) = v12;

    v13(sub_1B4DDDFD0, v14);

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1B4DCA744()
{
  result = sub_1B4F65504();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DCA7B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B4DCA808()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82210;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 117;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F58B0, &qword_1B4F75418);
  v10 = sub_1B4E9E5A0();
  v11 = sub_1B4DCADC0(&qword_1EDB6DB30, &qword_1EB8F58B0, &qword_1B4F75418, sub_1B4DCAE3C);
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  v29 = file;
  sub_1B4DCAC7C();
  v6 = (sub_1B4F68844() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  sub_1B4DCACD0(46, 0xE100000000000000, v5, v4);
  v8 = sub_1B4F680B4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1B8C81870](v8, v10, v12, v14);
  v17 = v16;

  sub_1B4DCACD0(40, 0xE100000000000000, countAndFlagsBits, object);
  v18 = sub_1B4F680B4();
  v19 = MEMORY[0x1B8C81870](v18);
  v21 = v20;

  v22 = sub_1B4F67C34();
  v23 = sub_1B4F685E4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29._countAndFlagsBits = v25;
    *v24 = 67109634;
    v26 = pthread_self();
    *(v24 + 4) = pthread_mach_thread_np(v26);
    *(v24 + 8) = 2082;
    v27 = sub_1B4DC4F88(v15, v17, &v29._countAndFlagsBits);

    *(v24 + 10) = v27;
    *(v24 + 18) = 2082;
    v28 = sub_1B4DC4F88(v19, v21, &v29._countAndFlagsBits);

    *(v24 + 20) = v28;
    _os_log_impl(&dword_1B4DC2000, v22, v23, "[%u] %{public}s::%{public}s", v24, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v25, -1, -1);
    MEMORY[0x1B8C831D0](v24, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1B4DCAC7C()
{
  result = qword_1EDB72480;
  if (!qword_1EDB72480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB72480);
  }

  return result;
}

unint64_t sub_1B4DCACD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1B4F68094() != a1 || v9 != a2)
  {
    v10 = sub_1B4F68D54();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1B4F68004();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1B4DCADC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4DCAE3C()
{
  result = qword_1EDB700B8;
  if (!qword_1EDB700B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB700B8);
  }

  return result;
}

uint64_t XPCClient.sendRequest<A>(_:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v20 - v14;
  v16 = *a1;
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = v16;
  *(v18 + 48) = v5;

  sub_1B4F67624();

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1B4DCB050()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DCB0A8(void *a1)
{
  v5 = *(v1 + OBJC_IVAR____TtC13SeymourClient9XPCServer_requiredEntitlements);
  v8 = *(v5 + 56);
  v7 = v5 + 56;
  v6 = v8;
  v9 = 1 << *(*(v1 + OBJC_IVAR____TtC13SeymourClient9XPCServer_requiredEntitlements) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = *(v1 + OBJC_IVAR____TtC13SeymourClient9XPCServer_requiredEntitlements);

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(v25 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      v3 = *v15;
      v2 = v15[1];

      v16 = sub_1B4F67F64();
      v17 = [a1 valueForEntitlement_];

      if (v17)
      {
        sub_1B4F68894();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29[0] = v27;
      v29[1] = v28;
      if (!*(&v28 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0 || (v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      v11 &= v11 - 1;

      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    sub_1B4DDA43C(v29);
LABEL_18:
    if (qword_1EDB724A8 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        sub_1B4DCCF8C(a1);
        return 1;
      }

      v11 = *(v7 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_19:
  v19 = sub_1B4F67C54();
  __swift_project_value_buffer(v19, qword_1EDB72490);

  v20 = sub_1B4F67C34();
  v21 = sub_1B4F685C4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v29[0] = v23;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    v24 = sub_1B4DC4F88(v3, v2, v29);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_1B4DC2000, v20, v21, "Rejecting connection missing entitlement: %{mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B8C831D0](v23, -1, -1);
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t EventHub.publish<A>(_:atTime:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_1B4F67D54();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1B4F67D74();
  v37 = *(v39 - 8);
  v14 = *(v37 + 64);
  v16 = (MEMORY[0x1EEE9AC00])(v39, v15);
  v36 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16, v20);
  v21 = sub_1B4DCD7F8(a1, a2, a3);
  v23 = v22;
  v24 = (*(a3 + 8))(&v44, a2, a3);
  if (v45)
  {

    if (*(v4 + 24))
    {

      return sub_1B4DCD994(a1, a2, a3);
    }

    else
    {
      v35 = *(v4 + 16);
      (*(v18 + 16))(&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
      v29 = (*(v18 + 80) + 40) & ~*(v18 + 80);
      v30 = swift_allocObject();
      *(v30 + 2) = a2;
      *(v30 + 3) = a3;
      *(v30 + 4) = v5;
      (*(v18 + 32))(&v30[v29], &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      aBlock[4] = sub_1B4DCDC6C;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B4DCA7B0;
      aBlock[3] = &block_descriptor_0;
      v31 = _Block_copy(aBlock);

      v32 = v36;
      sub_1B4F67D64();
      v42 = MEMORY[0x1E69E7CC0];
      sub_1B4DCD900();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
      sub_1B4DCBA40();
      v33 = v38;
      v34 = v41;
      sub_1B4F688A4();
      MEMORY[0x1B8C81F10](0, v32, v33, v31);
      _Block_release(v31);
      (*(v40 + 8))(v33, v34);
      (*(v37 + 8))(v32, v39);
    }
  }

  else
  {
    v27 = *(v4 + 80);
    v28 = MEMORY[0x1EEE9AC00](v24, v25);
    *(&v35 - 8) = a2;
    *(&v35 - 7) = a3;
    *(&v35 - 6) = v21;
    *(&v35 - 5) = v23;
    *(&v35 - 4) = a1;
    *(&v35 - 3) = a4;
    *(&v35 - 2) = v28;
    *(&v35 - 1) = v4;
    os_unfair_lock_lock((v27 + 24));
    sub_1B4E489FC((v27 + 16));
    os_unfair_lock_unlock((v27 + 24));
  }
}

uint64_t sub_1B4DCB808()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1B4DCB8C4(uint64_t a1)
{
  sub_1B4DCBAA4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B4DCB954(uint64_t *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a6;
  *(v12 + 40) = v11;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

unint64_t sub_1B4DCBA40()
{
  result = qword_1EDB71F80;
  if (!qword_1EDB71F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB8F6870, &qword_1B4F710C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71F80);
  }

  return result;
}

void sub_1B4DCBAA4()
{
  if (!qword_1EDB713F0)
  {
    v0 = sub_1B4F678C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB713F0);
    }
  }
}

uint64_t sub_1B4DCBAEC()
{
  result = sub_1B4F678C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DCBB58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B4DCBB98(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 32);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  sub_1B4DCBC38(a3, a4, a1, a2);
  v10 = *(v8 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1B4DCBC38(uint64_t a1, int a2, void (*a3)(uint64_t *), uint64_t a4)
{
  LODWORD(v45) = a2;
  v7 = sub_1B4F67D54();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67D74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  if (*(a1 + 40))
  {
    aBlock = *(a1 + 40);
    LOBYTE(v47) = 0;

    swift_unknownObjectRetain();
    v18(&aBlock);

    return swift_unknownObjectRelease();
  }

  v21 = v45;
  v42 = v11;
  v43 = v17;
  v41 = v13;
  if (*(a1 + 48) != 2)
  {

    v27 = v7;
    v25 = v19;
LABEL_8:
    v45 = v12;
    v28 = v43;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v29 = sub_1B4F67C54();
    __swift_project_value_buffer(v29, qword_1EDB72490);
    v30 = sub_1B4F67C34();
    v31 = sub_1B4F685C4();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v42;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B4DC2000, v30, v31, "TransportServer unavailable", v34, 2u);
      v28 = v43;
      MEMORY[0x1B8C831D0](v34, -1, -1);
    }

    v35 = *(*(a1 + 16) + 16);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1B4DDC994;
    *(v36 + 24) = v25;
    v50 = sub_1B4E567A0;
    v51 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1B4DCA7B0;
    v49 = &block_descriptor_167;
    v37 = _Block_copy(&aBlock);

    v38 = v35;
    sub_1B4F67D64();
    v52 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v28, v33, v37);
    _Block_release(v37);

    (*(v44 + 8))(v33, v27);
    (*(v41 + 8))(v28, v45);
  }

  v40 = v18;
  v22 = *(a1 + 24);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v21 & 1;
  *(v23 + 32) = sub_1B4DDC994;
  *(v23 + 40) = v19;
  v50 = sub_1B4E567A8;
  v51 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1B4E54594;
  v49 = &block_descriptor_173;
  v24 = _Block_copy(&aBlock);
  v25 = v19;

  v26 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v24);
  sub_1B4F68894();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = v7;
    goto LABEL_8;
  }

  aBlock = v52;
  LOBYTE(v47) = 0;
  swift_unknownObjectRetain();
  v40(&aBlock);

  swift_unknownObjectRelease_n();
}

uint64_t sub_1B4DCC214()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B4DCC258(uint64_t a1, uint64_t a2, void *a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = qword_1B4F71988[a4];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = v15;
  v16[6] = a1;
  v16[7] = a2;
  v18[4] = sub_1B4E56654;
  v18[5] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B4E54930;
  v18[3] = &block_descriptor_113;
  v17 = _Block_copy(v18);

  [a3 receiveRequest:v14 data:0 completion:v17];
  _Block_release(v17);
}

uint64_t XPCClient.sendRequest<A>(_:payload:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v37 = a3;
  v41 = a6;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v38, v13);
  v36 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34[-v16];
  v35 = *a1;
  v18 = swift_allocObject();
  v42 = v6;
  *(v18 + 16) = v6;
  *(v18 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  v19 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a2;
  v21 = v37;
  (*(v9 + 16))(v19, v20, v37);
  v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v23 = (v10 + v22 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = swift_allocObject();
  v26 = v39;
  v25 = v40;
  *(v24 + 2) = v21;
  *(v24 + 3) = v26;
  *(v24 + 4) = v25;
  (*(v9 + 32))(&v24[v22], v19, v21);
  *&v24[v23] = v35;
  *&v24[(v23 + 9) & 0xFFFFFFFFFFFFFFF8] = v42;
  v27 = v36;
  v28 = v17;
  v29 = v38;
  (*(v11 + 16))(v36, v17, v38);
  v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v31 = swift_allocObject();
  (*(v11 + 32))(v31 + v30, v27, v29);
  v32 = (v31 + ((v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_1B4DE27BC;
  v32[1] = v24;

  sub_1B4F675F4();
  return (*(v11 + 8))(v28, v29);
}

uint64_t sub_1B4DCC714()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B4DCC74C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL) + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t NetworkEvaluator.activateOnQueue()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v26 - v10;
  v12 = sub_1B4F67DA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 48);
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12);
  v19 = v18;
  LOBYTE(v18) = sub_1B4F67DC4();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    *(*(v2 + 32) + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_delegate + 8) = &off_1F2CDBFF8;
    swift_unknownObjectWeakAssign();
    NetworkMonitor.activate()();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1B4E66338;
    *(v21 + 24) = v2;
    (*(v4 + 16))(v8, v11, v3);
    v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v4 + 32))(v24 + v22, v8, v3);
    v25 = (v24 + v23);
    *v25 = sub_1B4DD91FC;
    v25[1] = v21;

    sub_1B4F675F4();
    return (*(v4 + 8))(v11, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NetworkMonitor.activate()()
{
  v1 = v0;
  v2 = sub_1B4F67DA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2);
  v9 = v8;
  LOBYTE(v8) = sub_1B4F67DC4();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    [*(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_airplaneModeObserver) setDelegate_];
    *(*(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_coreTelephonyObserver) + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_delegate + 8) = &off_1F2CE0128;
    swift_unknownObjectWeakAssign();
    sub_1B4DCCD24();
    *(*(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_wifiObserver) + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_delegate + 8) = &off_1F2CE0150;
    swift_unknownObjectWeakAssign();
    sub_1B4DCE07C();
    *(*(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_reachabilityObserver) + 24) = &off_1F2CE0140;
    swift_unknownObjectWeakAssign();
    return sub_1B4DD3784();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B4DCCD24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_coreTelephonyClient);
  [v1 setDelegate_];
  v2 = *(v0 + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_cellularData);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_1B4DCEB98;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1B4DCEB44;
  v5[3] = &block_descriptor_10;
  v4 = _Block_copy(v5);

  [v2 setCellularDataRestrictionDidUpdateNotifier_];
  _Block_release(v4);
  [v1 activate];
  sub_1B4DCDCCC();
  sub_1B4DCDE40();
}

uint64_t sub_1B4DCCE40()
{
  MEMORY[0x1B8C832C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DCCF8C(void *a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  v5._object = 0x80000001B4F85970;
  v6._object = 0x80000001B4F85A10;
  v6._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v5, v6);
  sub_1B4DC9B7C();
  v7 = sub_1B4F68654();
  type metadata accessor for XPCClient();
  swift_allocObject();
  v8 = a1;
  v9 = sub_1B4DC42B8(v8, v7);

  v10 = objc_opt_self();
  v11 = [v10 interfaceWithProtocol_];
  [v8 setExportedInterface_];

  v12 = [v10 interfaceWithProtocol_];
  [v8 setRemoteObjectInterface_];

  v13 = *(v2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService);
  type metadata accessor for XPCExportProxy();
  v14 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  [v8 setExportedObject_];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v9;
  v27 = sub_1B4F45D94;
  v28 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1B4DCA7B0;
  v26 = &block_descriptor_19;
  v17 = _Block_copy(&aBlock);

  [v8 setInvalidationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v9;
  v27 = sub_1B4F45DDC;
  v28 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1B4DCA7B0;
  v26 = &block_descriptor_38;
  v20 = _Block_copy(&aBlock);

  [v8 setInterruptionHandler_];
  _Block_release(v20);
  v21 = *(v2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_lock);
  os_unfair_lock_lock(*(v21 + 16));
  sub_1B4DCD398(v9, v2);
  os_unfair_lock_unlock(*(v21 + 16));
}

uint64_t sub_1B4DCD358()
{
  MEMORY[0x1B8C832C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B4DCD398(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0x6E65696C43646461;
  v5._object = 0xED0000293A5F2874;
  v6._object = 0x80000001B4F85970;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v6, v5);
  v7 = *(a1 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 2;
    [*(a1 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));
  v8 = OBJC_IVAR____TtC13SeymourClient9XPCServer_clients;
  swift_beginAccess();

  sub_1B4DCE468(&v41, a1);
  swift_endAccess();

  v9 = *(a2 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = sub_1B4F688F4();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  swift_retain_n();
  v11 = sub_1B4F67C34();
  v12 = sub_1B4F685E4();
  if (os_log_type_enabled(v11, v12))
  {
    v37 = v10;
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v13 = 136447234;
    v36 = *(a1 + 24);
    v14 = [v36 serviceName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1B4F67F74();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *&v39[0] = v16;
    *(&v39[0] + 1) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7690, qword_1B4F6C9F0);
    v19 = sub_1B4F687C4();
    v21 = v20;

    v22 = sub_1B4DC4F88(v19, v21, &v41);

    *(v13 + 4) = v22;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v37;
    *(v13 + 22) = 2082;
    v39[0] = *(a1 + 56);
    v23 = sub_1B4F687C4();
    v25 = sub_1B4DC4F88(v23, v24, &v41);

    *(v13 + 24) = v25;
    *(v13 + 32) = 1024;
    LODWORD(v21) = [v36 processIdentifier];

    *(v13 + 34) = v21;

    *(v13 + 38) = 2082;
    v39[0] = *(a1 + 72);
    v26 = sub_1B4F687C4();
    v28 = sub_1B4DC4F88(v26, v27, &v41);

    *(v13 + 40) = v28;
    _os_log_impl(&dword_1B4DC2000, v11, v12, "Added XPC Client (%{public}s) connection [%ld total] from %{public}s [%d/%{public}s]", v13, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v38, -1, -1);
    MEMORY[0x1B8C831D0](v13, -1, -1);
  }

  else
  {
  }

  if (*(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub))
  {
    v29 = *(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub + 8);
    v30 = *(a2 + OBJC_IVAR____TtC13SeymourClient9XPCServer_eventHub);
    ObjectType = swift_getObjectType();
    v32 = [*(a1 + 24) processIdentifier];
    v33 = *(a1 + 56);
    v34 = *(a1 + 80);
    LODWORD(v39[0]) = v32;
    *(&v39[0] + 1) = v33;
    v39[1] = *(a1 + 64);
    v40 = v34;
    v35 = *(v29 + 8);

    v35(v39, &type metadata for XPCServerClientConnected, &protocol witness table for XPCServerClientConnected, ObjectType, v29);
  }
}

uint64_t sub_1B4DCD7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = (*(a3 + 16))(a2, a3);
  (*(v5 + 8))(v8, a2);
  return v9;
}

unint64_t sub_1B4DCD900()
{
  result = qword_1EDB71F90;
  if (!qword_1EDB71F90)
  {
    sub_1B4F67D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71F90);
  }

  return result;
}

uint64_t sub_1B4DCD994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 24))(a2, a3);
  v6 = *(v3 + 72);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  if (*(v7 + 16) && (v8 = sub_1B4DC8ED4(v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v6 + 24));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    v24 = a1;
    do
    {
      sub_1B4DC40A0(v12, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D8, &qword_1B4F6D0B0);
      type metadata accessor for Subscription();
      if (swift_dynamicCast())
      {
        v25(a1);
      }

      else
      {
        if (qword_1EDB724A8 != -1)
        {
          swift_once();
        }

        v13 = sub_1B4F67C54();
        __swift_project_value_buffer(v13, qword_1EDB72490);
        v14 = sub_1B4F67C34();
        v15 = sub_1B4F685C4();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v26[0] = v17;
          *v16 = 136446210;
          v18 = sub_1B4F67F44();
          v20 = v5;
          v21 = sub_1B4DC4F88(v18, v19, v26);

          *(v16 + 4) = v21;
          v5 = v20;
          _os_log_impl(&dword_1B4DC2000, v14, v15, "Invalid subscription for event: %{public}s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
          MEMORY[0x1B8C831D0](v17, -1, -1);
          v22 = v16;
          a1 = v24;
          MEMORY[0x1B8C831D0](v22, -1, -1);
        }
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
  }
}

uint64_t sub_1B4DCDC6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80));
  v4 = v0[4];
  return sub_1B4DCD994(v3, v1, v2);
}

void sub_1B4DCDCCC()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v1 = [*(v0 + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_coreTelephonyClient) cellularDataEnabled_];
  v2 = HIDWORD(v1);
  if (HIDWORD(v1))
  {
    v3 = v1;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB72490);
    v5 = sub_1B4F67C34();
    v6 = sub_1B4F685C4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240448;
      *(v7 + 4) = v3;
      *(v7 + 8) = 1026;
      *(v7 + 10) = v2;
      _os_log_impl(&dword_1B4DC2000, v5, v6, "Core Telephony operation failed with domain: %{public}d and error code: %{public}d", v7, 0xEu);
      MEMORY[0x1B8C831D0](v7, -1, -1);
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_isCellularDataEnabled) = v9 != 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B4DCDE40()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_coreTelephonyClient);
  v17[0] = 0;
  [v1 roaming:&v16 error:v17];
  if (v17[0])
  {
    v2 = qword_1EDB724A8;
    v3 = v17[0];
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB72490);
    v5 = v3;
    v6 = sub_1B4F67C34();
    v7 = sub_1B4F685C4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17[0] = v9;
      *v8 = 136446210;
      v10 = sub_1B4EF5F6C();
      v11 = sub_1B4DCEEBC(&unk_1EB8F6860, sub_1B4EF5F6C);
      v12 = MEMORY[0x1B8C826C0](v10, v11);
      v14 = sub_1B4DC4F88(v12, v13, v17);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1B4DC2000, v6, v7, "Core Telephony operation failed with error: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B8C831D0](v9, -1, -1);
      MEMORY[0x1B8C831D0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_isRoaming) = v16 != 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B4DCE07C()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_wifiInterface);
  [v2 resume];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1B4E9842C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4E97EDC;
  aBlock[3] = &block_descriptor_13;
  v4 = _Block_copy(aBlock);

  [v2 setEventHandler_];
  _Block_release(v4);
  v5 = [v2 powerOn];
  *(v1 + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_isEnabled) = v5;
  aBlock[0] = 0;
  if ([v2 startMonitoringEventType:1 error:aBlock])
  {
    v6 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66C98]();
  }

  else
  {
    v7 = aBlock[0];
    v8 = sub_1B4F647C4();

    swift_willThrow();
    [v2 invalidate];
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4F67C54();
    __swift_project_value_buffer(v9, qword_1EDB72490);
    v10 = v8;
    v11 = sub_1B4F67C34();
    v12 = sub_1B4F685C4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x1B8C826C0]();
      v17 = sub_1B4DC4F88(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B4DC2000, v11, v12, "Failed to start monitoring WiFi power events with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B8C831D0](v14, -1, -1);
      MEMORY[0x1B8C831D0](v13, -1, -1);
    }

    else
    {
    }

    v18 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1B4DCE3B4()
{
  MEMORY[0x1B8C832C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1B4DCE3F0(__int16 a1)
{
  v3 = *(v1 + 40);
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F6A788[a1]);
  v4 = sub_1B4F68EC4();

  return sub_1B4DD29CC(a1, v4);
}

uint64_t sub_1B4DCE468(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1B4F68904();

    if (v8)
    {

      type metadata accessor for XPCClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_1B4F688F4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v21 = sub_1B4E7CE00(v7, result + 1);
        v22 = *(v21 + 16);
        if (*(v21 + 24) <= v22)
        {
          sub_1B4E81E38(v22 + 1);
        }

        sub_1B4E823E4(v23, v21);

        *v3 = v21;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_1B4F68E84();
    v11 = *(a2 + 24);
    sub_1B4F68774();
    v12 = sub_1B4F68EC4();
    v13 = -1 << *(v6 + 32);
    v14 = v12 & ~v13;
    if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      sub_1B4DE1BDC();
      while (1)
      {
        v16 = *(*(*(v6 + 48) + 8 * v14) + 24);
        v17 = *(a2 + 24);

        LOBYTE(v16) = sub_1B4F68764();

        if (v16)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v14);

      return 0;
    }

    else
    {
LABEL_11:
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v3;

      sub_1B4DCE6BC(v20, v14, isUniquelyReferenced_nonNull_native);
      *v3 = v26;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B4DCE6BC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E81E38(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B4E86CE8();
      goto LABEL_12;
    }

    sub_1B4E8B8DC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1B4F68E84();
  v11 = *(v6 + 24);
  sub_1B4F68774();
  result = sub_1B4F68EC4();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for XPCClient();
    sub_1B4DE1BDC();
    do
    {
      v14 = *(*(*(v9 + 48) + 8 * a2) + 24);
      v15 = *(v6 + 24);

      LOBYTE(v14) = sub_1B4F68764();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

id sub_1B4DCE854()
{
  v2 = [v0 processIdentifier];
  v3 = [objc_opt_self() identifierWithPid_];
  if (v3)
  {
    v4 = v3;
    sub_1B4DCE984();
    v5 = v4;
    v2 = sub_1B4DCE9D0(v5);

    if (v1 || [v2 pid] != -1)
    {
    }

    else
    {
      sub_1B4EC6EBC();
      swift_allocError();
      *v8 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1B4EC6EBC();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1B4DCE984()
{
  result = qword_1EDB70120;
  if (!qword_1EDB70120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB70120);
  }

  return result;
}

id sub_1B4DCE9D0(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t EventHub.publish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4F648B4();

  return EventHub.publish<A>(_:atTime:)(a1, a2, a3, v6);
}

uint64_t sub_1B4DCEB44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1B4DCEBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67D54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F67D74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *(result + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_queue);

    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    aBlock[4] = sub_1B4DD5634;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_7;
    v20 = _Block_copy(aBlock);

    sub_1B4F67D64();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B4DCEEBC(&qword_1EDB71F90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v15, v9, v20);
    _Block_release(v20);

    (*(v5 + 8))(v9, v4);
    (*(v11 + 8))(v15, v10);
  }

  return result;
}

uint64_t sub_1B4DCEE80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DCEEBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4DCEF04(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  v5._object = 0x80000001B4F85A90;
  v6._object = 0x80000001B4F85AC0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 116;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66EE4();
  v12 = sub_1B4F66354();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CCC18], MEMORY[0x1E69CCC20], MEMORY[0x1E69CBFC8], MEMORY[0x1E69CBFD0], ObjectType, v8);
}

uint64_t _s13SeymourClient15StorefrontCacheC17queryLanguageCodeSSSgyF_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B4F67F64();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B4F67F74();

  return v3;
}

uint64_t sub_1B4DCF1EC()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t _s13SeymourClient26ContentRestrictionObserverC012queryAllowedC7RatingsShy0A4Core0C6RatingOGyF_0()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    if ([v0 isExplicitContentAllowedOutAsk_])
    {
      v2 = sub_1B4F652C4();
      v3 = sub_1B4DCF590(v2);

      return v3;
    }

    else
    {
      v9 = sub_1B4E2A5A8(&unk_1F2CD4BF0);

      return v9;
    }
  }

  else
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6 = sub_1B4F67C34();
    v7 = sub_1B4F685E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B4DC2000, v6, v7, "[ContentRestrictionObserver] Failed to build shared profile connection, defaulting to clean content", v8, 2u);
      MEMORY[0x1B8C831D0](v8, -1, -1);
    }

    return sub_1B4E2A5A8(&unk_1F2CD4C18);
  }
}

void sub_1B4DCF3B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_1B4F66E04();
  v12 = v11;
  sub_1B4DD3014(v10, v11);
  v13 = sub_1B4F64884();
  sub_1B4DD2B70(v10, v12);
  v14 = qword_1B4F71988[a5];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_1B4DDE6F0;
  v16[4] = v9;
  aBlock[4] = sub_1B4E56698;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4E54930;
  aBlock[3] = &block_descriptor_132;
  v17 = _Block_copy(aBlock);

  [a4 receiveRequest:v14 data:v13 completion:v17];
  sub_1B4DD2B5C(v10, v12);
  _Block_release(v17);
}

uint64_t sub_1B4DCF590(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B4DCF604();
  result = MEMORY[0x1B8C81DD0](v2, MEMORY[0x1E69CB330], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4DCF658(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1B4DCF604()
{
  result = qword_1EDB71408;
  if (!qword_1EDB71408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71408);
  }

  return result;
}

uint64_t sub_1B4DCF658(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1B4F68E84();
  sub_1B4F652E4();
  sub_1B4F67FE4();

  v8 = sub_1B4F68EC4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + v10);
      v13 = sub_1B4F652E4();
      v15 = v14;
      if (v13 == sub_1B4F652E4() && v15 == v16)
      {
        break;
      }

      v18 = sub_1B4F68D54();

      if (v18)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1B4DCF7E0(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B4DCF7E0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1B4E7D000(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B4E86520(&qword_1EB8F46B0, &qword_1B4F6D088);
      goto LABEL_16;
    }

    sub_1B4E87070(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1B4F68E84();
  sub_1B4F652E4();
  sub_1B4F67FE4();

  result = sub_1B4F68EC4();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2);
      v14 = sub_1B4F652E4();
      v16 = v15;
      if (v14 == sub_1B4F652E4() && v16 == v17)
      {
        goto LABEL_19;
      }

      v19 = sub_1B4F68D54();

      if (v19)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

SeymourClient::TransportRequest_optional __swiftcall TransportRequest.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  switch(rawValue)
  {
    case 0:
      goto LABEL_131;
    case 1:
      v2 = 1;
      goto LABEL_131;
    case 2:
      v2 = 2;
      goto LABEL_131;
    case 3:
      v2 = 3;
      goto LABEL_131;
    case 4:
      v2 = 4;
      goto LABEL_131;
    case 6:
      v2 = 5;
      goto LABEL_131;
    case 7:
      v2 = 6;
      goto LABEL_131;
    case 8:
      v2 = 7;
      goto LABEL_131;
    case 9:
      v2 = 8;
      goto LABEL_131;
    case 10:
      v2 = 9;
      goto LABEL_131;
    case 11:
      v2 = 10;
      goto LABEL_131;
    case 12:
      v2 = 11;
      goto LABEL_131;
    case 100:
      v2 = 12;
      goto LABEL_131;
    case 101:
      v2 = 13;
      goto LABEL_131;
    case 102:
      v2 = 14;
      goto LABEL_131;
    case 103:
      v2 = 15;
      goto LABEL_131;
    case 104:
      v2 = 16;
      goto LABEL_131;
    case 105:
      v2 = 17;
      goto LABEL_131;
    case 106:
      v2 = 18;
      goto LABEL_131;
    case 107:
      v2 = 19;
      goto LABEL_131;
    case 108:
      v2 = 20;
      goto LABEL_131;
    case 109:
      v2 = 21;
      goto LABEL_131;
    case 110:
      v2 = 22;
      goto LABEL_131;
    case 111:
      v2 = 23;
      goto LABEL_131;
    case 112:
      v2 = 24;
      goto LABEL_131;
    case 113:
      v2 = 25;
      goto LABEL_131;
    case 114:
      v2 = 26;
      goto LABEL_131;
    case 115:
      v2 = 27;
      goto LABEL_131;
    case 116:
      v2 = 28;
      goto LABEL_131;
    case 117:
      v2 = 29;
      goto LABEL_131;
    case 118:
      v2 = 30;
      goto LABEL_131;
    case 119:
      v2 = 31;
      goto LABEL_131;
    case 120:
      v2 = 32;
      goto LABEL_131;
    case 121:
      v2 = 33;
      goto LABEL_131;
    case 122:
      v2 = 34;
      goto LABEL_131;
    case 123:
      v2 = 35;
      goto LABEL_131;
    case 124:
      v2 = 36;
      goto LABEL_131;
    case 125:
      v2 = 37;
      goto LABEL_131;
    case 126:
      v2 = 38;
      goto LABEL_131;
    case 127:
      v2 = 39;
      goto LABEL_131;
    case 128:
      v2 = 40;
      goto LABEL_131;
    case 129:
      v2 = 41;
      goto LABEL_131;
    case 130:
      v2 = 42;
      goto LABEL_131;
    case 131:
      v2 = 43;
      goto LABEL_131;
    case 200:
      v2 = 44;
      goto LABEL_131;
    case 201:
      v2 = 45;
      goto LABEL_131;
    case 202:
      v2 = 46;
      goto LABEL_131;
    case 203:
      v2 = 47;
      goto LABEL_131;
    case 204:
      v2 = 48;
      goto LABEL_131;
    case 205:
      v2 = 49;
      goto LABEL_131;
    case 206:
      v2 = 50;
      goto LABEL_131;
    case 207:
      v2 = 51;
      goto LABEL_131;
    case 208:
      v2 = 52;
      goto LABEL_131;
    case 209:
      v2 = 53;
      goto LABEL_131;
    case 210:
      v2 = 54;
      goto LABEL_131;
    case 211:
      v2 = 55;
      goto LABEL_131;
    case 212:
      v2 = 56;
      goto LABEL_131;
    case 213:
      v2 = 57;
      goto LABEL_131;
    case 214:
      v2 = 58;
      goto LABEL_131;
    case 215:
      v2 = 59;
      goto LABEL_131;
    case 216:
      v2 = 60;
      goto LABEL_131;
    case 217:
      v2 = 61;
      goto LABEL_131;
    case 300:
      v2 = 62;
      goto LABEL_131;
    case 301:
      v2 = 63;
      goto LABEL_131;
    case 302:
      v2 = 64;
      goto LABEL_131;
    case 303:
      v2 = 65;
      goto LABEL_131;
    case 304:
      v2 = 66;
      goto LABEL_131;
    case 305:
      v2 = 67;
      goto LABEL_131;
    case 306:
      v2 = 68;
      goto LABEL_131;
    case 307:
      v2 = 69;
      goto LABEL_131;
    case 308:
      v2 = 70;
      goto LABEL_131;
    case 309:
      v2 = 71;
      goto LABEL_131;
    case 310:
      v2 = 72;
      goto LABEL_131;
    case 311:
      v2 = 73;
      goto LABEL_131;
    case 312:
      v2 = 74;
      goto LABEL_131;
    case 313:
      v2 = 75;
      goto LABEL_131;
    case 314:
      v2 = 76;
      goto LABEL_131;
    case 315:
      v2 = 77;
      goto LABEL_131;
    case 316:
      v2 = 78;
      goto LABEL_131;
    case 317:
      v2 = 79;
      goto LABEL_131;
    case 318:
      v2 = 80;
      goto LABEL_131;
    case 319:
      v2 = 81;
      goto LABEL_131;
    case 320:
      v2 = 82;
      goto LABEL_131;
    case 321:
      v2 = 83;
      goto LABEL_131;
    case 322:
      v2 = 84;
      goto LABEL_131;
    case 323:
      v2 = 85;
      goto LABEL_131;
    case 324:
      v2 = 86;
      goto LABEL_131;
    case 325:
      v2 = 87;
      goto LABEL_131;
    case 326:
      v2 = 88;
      goto LABEL_131;
    case 327:
      v2 = 89;
      goto LABEL_131;
    case 328:
      v2 = 90;
      goto LABEL_131;
    case 329:
      v2 = 91;
      goto LABEL_131;
    case 330:
      v2 = 92;
      goto LABEL_131;
    case 331:
      v2 = 93;
      goto LABEL_131;
    case 332:
      v2 = 94;
      goto LABEL_131;
    case 333:
      v2 = 95;
      goto LABEL_131;
    case 334:
      v2 = 96;
      goto LABEL_131;
    case 335:
      v2 = 97;
      goto LABEL_131;
    case 336:
      v2 = 98;
      goto LABEL_131;
    case 337:
      v2 = 99;
      goto LABEL_131;
    case 338:
      v2 = 100;
      goto LABEL_131;
    case 339:
      v2 = 101;
      goto LABEL_131;
    case 340:
      v2 = 102;
      goto LABEL_131;
    case 341:
      v2 = 103;
      goto LABEL_131;
    case 342:
      v2 = 104;
      goto LABEL_131;
    case 343:
      v2 = 105;
      goto LABEL_131;
    case 344:
      v2 = 106;
      goto LABEL_131;
    case 345:
      v2 = 107;
      goto LABEL_131;
    case 346:
      v2 = 108;
      goto LABEL_131;
    case 347:
      v2 = 109;
      goto LABEL_131;
    case 349:
      v2 = 110;
      goto LABEL_131;
    case 350:
      v2 = 111;
      goto LABEL_131;
    case 351:
      v2 = 112;
      goto LABEL_131;
    case 400:
      v2 = 113;
      goto LABEL_131;
    case 401:
      v2 = 114;
      goto LABEL_131;
    case 402:
      v2 = 115;
      goto LABEL_131;
    case 500:
      v2 = 116;
      goto LABEL_131;
    case 501:
      v2 = 117;
      goto LABEL_131;
    case 502:
      v2 = 118;
      goto LABEL_131;
    case 503:
      v2 = 119;
      goto LABEL_131;
    case 504:
      v2 = 120;
      goto LABEL_131;
    case 505:
      v2 = 121;
      goto LABEL_131;
    case 506:
      v2 = 122;
      goto LABEL_131;
    case 700:
      v2 = 123;
      goto LABEL_131;
    case 701:
      v2 = 124;
      goto LABEL_131;
    case 702:
      v2 = 125;
      goto LABEL_131;
    case 703:
      v2 = 126;
      goto LABEL_131;
    case 704:
      v2 = 127;
      goto LABEL_131;
    default:
      v2 = 128;
      switch(rawValue)
      {
        case 705:
          goto LABEL_131;
        case 706:
          v2 = 129;
          goto LABEL_131;
        case 707:
          v2 = 130;
          goto LABEL_131;
        case 708:
          v2 = 131;
          goto LABEL_131;
        case 709:
          v2 = 132;
          goto LABEL_131;
        case 710:
          v2 = 133;
          goto LABEL_131;
        case 711:
          v2 = 134;
          goto LABEL_131;
        case 712:
          v2 = 135;
          goto LABEL_131;
        case 713:
          v2 = 136;
          goto LABEL_131;
        case 714:
          v2 = 137;
          goto LABEL_131;
        case 800:
          v2 = 138;
          goto LABEL_131;
        case 801:
          v2 = 139;
          goto LABEL_131;
        case 802:
          v2 = 140;
          goto LABEL_131;
        case 803:
          v2 = 141;
          goto LABEL_131;
        case 804:
          v2 = 142;
          goto LABEL_131;
        case 805:
          v2 = 143;
          goto LABEL_131;
        case 806:
          v2 = 144;
          goto LABEL_131;
        case 807:
          v2 = 145;
          goto LABEL_131;
        case 808:
          v2 = 146;
          goto LABEL_131;
        case 900:
          v2 = 147;
          goto LABEL_131;
        case 901:
          v2 = 148;
          goto LABEL_131;
        case 902:
          v2 = 149;
          goto LABEL_131;
        case 904:
          v2 = 150;
          goto LABEL_131;
        case 905:
          v2 = 151;
          goto LABEL_131;
        case 1000:
          v2 = 152;
          goto LABEL_131;
        case 1001:
          v2 = 153;
          goto LABEL_131;
        case 1002:
          v2 = 154;
          goto LABEL_131;
        case 1003:
          v2 = 155;
          goto LABEL_131;
        case 1004:
          v2 = 156;
          goto LABEL_131;
        case 1005:
          v2 = 157;
          goto LABEL_131;
        case 1006:
          v2 = 158;
          goto LABEL_131;
        case 1007:
          v2 = 159;
          goto LABEL_131;
        case 1008:
          v2 = 160;
          goto LABEL_131;
        case 1009:
          v2 = 161;
          goto LABEL_131;
        case 1010:
          v2 = 162;
          goto LABEL_131;
        case 1100:
          v2 = 163;
          goto LABEL_131;
        case 1101:
          v2 = 164;
          goto LABEL_131;
        case 1102:
          v2 = 165;
          goto LABEL_131;
        case 1104:
          v2 = 166;
          goto LABEL_131;
        case 1105:
          v2 = 167;
          goto LABEL_131;
        case 1106:
          v2 = 168;
          goto LABEL_131;
        case 1107:
          v2 = 169;
          goto LABEL_131;
        case 1108:
          v2 = 170;
          goto LABEL_131;
        case 1109:
          v2 = 171;
          goto LABEL_131;
        case 1110:
          v2 = 172;
          goto LABEL_131;
        case 1113:
          v2 = 173;
          goto LABEL_131;
        case 1114:
          v2 = 174;
          goto LABEL_131;
        case 1116:
          v2 = 175;
          goto LABEL_131;
        case 1117:
          v2 = 176;
          goto LABEL_131;
        case 1118:
          v2 = 177;
          goto LABEL_131;
        case 1119:
          v2 = 178;
          goto LABEL_131;
        case 1200:
          v2 = 179;
          goto LABEL_131;
        case 1201:
          v2 = 180;
          goto LABEL_131;
        case 1202:
          v2 = 181;
          goto LABEL_131;
        case 1203:
          v2 = 182;
          goto LABEL_131;
        case 1204:
          v2 = 183;
          goto LABEL_131;
        case 1205:
          v2 = 184;
          goto LABEL_131;
        case 1206:
          v2 = 185;
          goto LABEL_131;
        case 1207:
          v2 = 186;
          goto LABEL_131;
        case 1208:
          v2 = 187;
          goto LABEL_131;
        case 1209:
          v2 = 188;
          goto LABEL_131;
        case 1210:
          v2 = 189;
          goto LABEL_131;
        case 1211:
          v2 = 190;
          goto LABEL_131;
        case 1212:
          v2 = 191;
          goto LABEL_131;
        default:
          v2 = 192;
          switch(rawValue)
          {
            case 1213:
              goto LABEL_131;
            case 1214:
              v2 = 193;
              goto LABEL_131;
            case 1215:
              v2 = 194;
              goto LABEL_131;
            case 1216:
              v2 = 195;
              goto LABEL_131;
            case 1217:
              v2 = 196;
              goto LABEL_131;
            case 1218:
              v2 = 197;
              goto LABEL_131;
            case 1219:
              v2 = 198;
              goto LABEL_131;
            case 1220:
              v2 = 199;
              goto LABEL_131;
            case 1221:
              v2 = 200;
              goto LABEL_131;
            case 1222:
              v2 = 201;
              goto LABEL_131;
            case 1224:
              v2 = 202;
              goto LABEL_131;
            case 1226:
              v2 = 203;
              goto LABEL_131;
            case 1227:
              v2 = 204;
              goto LABEL_131;
            case 1228:
              v2 = 205;
              goto LABEL_131;
            case 1229:
              v2 = 206;
              goto LABEL_131;
            case 1230:
              v2 = 207;
              goto LABEL_131;
            case 1231:
              v2 = 208;
              goto LABEL_131;
            case 1232:
              v2 = 209;
              goto LABEL_131;
            case 1233:
              v2 = 210;
              goto LABEL_131;
            case 1234:
              v2 = 211;
              goto LABEL_131;
            case 1235:
              v2 = 212;
              goto LABEL_131;
            case 1236:
              v2 = 213;
              goto LABEL_131;
            case 1237:
              v2 = 214;
              goto LABEL_131;
            case 1238:
              v2 = 215;
              goto LABEL_131;
            case 1239:
              v2 = 216;
              goto LABEL_131;
            case 1240:
              v2 = 217;
              goto LABEL_131;
            case 1241:
              v2 = 218;
              goto LABEL_131;
            case 1242:
              v2 = 219;
              goto LABEL_131;
            case 1243:
              v2 = 220;
              goto LABEL_131;
            case 1244:
              v2 = 221;
              goto LABEL_131;
            case 1245:
              v2 = 222;
              goto LABEL_131;
            case 1246:
              v2 = 223;
              goto LABEL_131;
            case 1300:
              v2 = 224;
              goto LABEL_131;
            case 1301:
              v2 = 225;
              goto LABEL_131;
            case 1302:
              v2 = 226;
              goto LABEL_131;
            case 1303:
              v2 = 227;
              goto LABEL_131;
            case 1304:
              v2 = 228;
              goto LABEL_131;
            case 1305:
              v2 = 229;
              goto LABEL_131;
            case 1306:
              v2 = 230;
              goto LABEL_131;
            case 1307:
              v2 = 231;
              goto LABEL_131;
            case 1308:
              v2 = 232;
              goto LABEL_131;
            case 1400:
              v2 = 233;
              goto LABEL_131;
            case 1401:
              v2 = 234;
              goto LABEL_131;
            case 1402:
              v2 = 235;
              goto LABEL_131;
            case 1403:
              v2 = 236;
              goto LABEL_131;
            case 1404:
              v2 = 237;
              goto LABEL_131;
            case 1500:
              v2 = 238;
              goto LABEL_131;
            case 1501:
              v2 = 239;
              goto LABEL_131;
            case 1502:
              v2 = 240;
              goto LABEL_131;
            case 1503:
              v2 = 241;
              goto LABEL_131;
            case 1504:
              v2 = 242;
              goto LABEL_131;
            case 1505:
              v2 = 243;
              goto LABEL_131;
            case 1506:
              v2 = 244;
              goto LABEL_131;
            case 1507:
              v2 = 245;
              goto LABEL_131;
            case 1508:
              v2 = 246;
              goto LABEL_131;
            case 1509:
              v2 = 247;
              goto LABEL_131;
            case 1510:
              v2 = 248;
              goto LABEL_131;
            case 1511:
              v2 = 249;
              goto LABEL_131;
            case 1512:
              v2 = 250;
              goto LABEL_131;
            case 1513:
              v2 = 251;
              goto LABEL_131;
            case 1514:
              v2 = 252;
              goto LABEL_131;
            case 1515:
              v2 = 253;
              goto LABEL_131;
            case 1516:
              v2 = 254;
              goto LABEL_131;
            case 1517:
              v2 = 255;
              goto LABEL_131;
            default:
              if (rawValue > 1999)
              {
                if (rawValue <= 2399)
                {
                  switch(rawValue)
                  {
                    case 2000:
                      v2 = 280;
                      goto LABEL_131;
                    case 2001:
                      v2 = 281;
                      goto LABEL_131;
                    case 2002:
                      v2 = 282;
                      goto LABEL_131;
                    case 2003:
                      v2 = 283;
                      goto LABEL_131;
                    case 2101:
                      v2 = 284;
                      goto LABEL_131;
                    case 2102:
                      v2 = 285;
                      goto LABEL_131;
                    case 2103:
                      v2 = 286;
                      goto LABEL_131;
                    case 2104:
                      v2 = 287;
                      goto LABEL_131;
                    case 2105:
                      v2 = 288;
                      goto LABEL_131;
                    case 2106:
                      v2 = 289;
                      goto LABEL_131;
                    case 2107:
                      v2 = 290;
                      goto LABEL_131;
                    case 2108:
                      v2 = 291;
                      goto LABEL_131;
                    case 2109:
                      v2 = 292;
                      goto LABEL_131;
                    case 2110:
                      v2 = 293;
                      goto LABEL_131;
                    case 2111:
                      v2 = 294;
                      goto LABEL_131;
                    case 2112:
                      v2 = 295;
                      goto LABEL_131;
                    case 2113:
                      v2 = 296;
                      goto LABEL_131;
                    case 2201:
                      v2 = 297;
                      goto LABEL_131;
                    case 2202:
                      v2 = 298;
                      goto LABEL_131;
                    case 2203:
                      v2 = 299;
                      goto LABEL_131;
                    case 2204:
                      v2 = 300;
                      goto LABEL_131;
                    case 2205:
                      v2 = 301;
                      goto LABEL_131;
                    case 2206:
                      v2 = 302;
                      goto LABEL_131;
                    case 2207:
                      v2 = 303;
                      goto LABEL_131;
                    case 2208:
                      v2 = 304;
                      goto LABEL_131;
                    case 2209:
                      v2 = 305;
                      goto LABEL_131;
                    case 2210:
                      v2 = 306;
                      goto LABEL_131;
                    case 2211:
                      v2 = 307;
                      goto LABEL_131;
                    case 2212:
                      v2 = 308;
                      goto LABEL_131;
                    case 2301:
                      v2 = 309;
                      goto LABEL_131;
                    case 2302:
                      v2 = 310;
                      goto LABEL_131;
                    case 2303:
                      v2 = 311;
                      goto LABEL_131;
                    case 2304:
                      v2 = 312;
                      goto LABEL_131;
                    default:
                      goto LABEL_339;
                  }
                }

                if (rawValue <= 2500)
                {
                  switch(rawValue)
                  {
                    case 2400:
                      v2 = 313;
                      goto LABEL_131;
                    case 2401:
                      v2 = 314;
                      goto LABEL_131;
                    case 2500:
                      v2 = 315;
                      goto LABEL_131;
                  }
                }

                else
                {
                  if (rawValue <= 2502)
                  {
                    if (rawValue == 2501)
                    {
                      v2 = 316;
                    }

                    else
                    {
                      v2 = 317;
                    }

                    goto LABEL_131;
                  }

                  if (rawValue == 2503)
                  {
                    v2 = 318;
                    goto LABEL_131;
                  }

                  if (rawValue == 2504)
                  {
                    v2 = 319;
                    goto LABEL_131;
                  }
                }

                goto LABEL_339;
              }

              if (rawValue > 1899)
              {
                if (rawValue == 1900)
                {
                  v2 = 278;
                  goto LABEL_131;
                }

                if (rawValue == 1901)
                {
                  v2 = 279;
                  goto LABEL_131;
                }

LABEL_339:
                v3 = 351;
                v2 = 320;
                switch(rawValue)
                {
                  case 2505:
                    goto LABEL_131;
                  case 2506:
                    v2 = 321;
                    goto LABEL_131;
                  case 2507:
                    v2 = 322;
                    goto LABEL_131;
                  case 2508:
                    v2 = 323;
                    goto LABEL_131;
                  case 2509:
                    v2 = 324;
                    goto LABEL_131;
                  case 2510:
                    v2 = 325;
                    goto LABEL_131;
                  case 2511:
                    v2 = 326;
                    goto LABEL_131;
                  case 2512:
                    v2 = 327;
                    goto LABEL_131;
                  case 2513:
                    v2 = 328;
                    goto LABEL_131;
                  case 2514:
                    v2 = 329;
                    goto LABEL_131;
                  case 2515:
                    v2 = 330;
                    goto LABEL_131;
                  case 2516:
                    v2 = 331;
                    goto LABEL_131;
                  case 2517:
                    v2 = 332;
                    goto LABEL_131;
                  case 2518:
                    v2 = 333;
                    goto LABEL_131;
                  case 2519:
                    v2 = 334;
                    goto LABEL_131;
                  case 2520:
                    v2 = 335;
                    goto LABEL_131;
                  case 2521:
                    v2 = 336;
                    goto LABEL_131;
                  case 2522:
                    v2 = 337;
                    goto LABEL_131;
                  case 2523:
                    v2 = 338;
                    goto LABEL_131;
                  case 2524:
                    v2 = 339;
                    goto LABEL_131;
                  case 2525:
                    v2 = 340;
                    goto LABEL_131;
                  case 2526:
                    v2 = 341;
                    goto LABEL_131;
                  case 2527:
                    v2 = 342;
                    goto LABEL_131;
                  case 2528:
                    v2 = 343;
                    goto LABEL_131;
                  case 2529:
                    v2 = 344;
                    goto LABEL_131;
                  case 2530:
                    v2 = 345;
                    goto LABEL_131;
                  case 2531:
                    v2 = 346;
                    goto LABEL_131;
                  case 2532:
                    v2 = 347;
                    goto LABEL_131;
                  case 2533:
                    v2 = 348;
                    goto LABEL_131;
                  case 2534:
                    v2 = 349;
                    goto LABEL_131;
                  case 2535:
                    v2 = 350;
                    goto LABEL_131;
                  case 2536:
                    goto LABEL_132;
                  case 2537:
                    *v1 = 352;
                    break;
                  case 2539:
                    *v1 = 353;
                    break;
                  case 2540:
                    *v1 = 354;
                    break;
                  case 2541:
                    *v1 = 355;
                    break;
                  case 2542:
                    *v1 = 356;
                    break;
                  case 2543:
                    *v1 = 357;
                    break;
                  case 2544:
                    *v1 = 358;
                    break;
                  case 2600:
                    *v1 = 359;
                    break;
                  case 2601:
                    *v1 = 360;
                    break;
                  case 2602:
                    *v1 = 361;
                    break;
                  case 2603:
                    *v1 = 362;
                    break;
                  case 2604:
                    *v1 = 363;
                    break;
                  case 2605:
                    *v1 = 364;
                    break;
                  case 2606:
                    *v1 = 365;
                    break;
                  case 2700:
                    *v1 = 366;
                    break;
                  case 2701:
                    *v1 = 367;
                    break;
                  case 2702:
                    *v1 = 368;
                    break;
                  default:
                    *v1 = 369;
                    break;
                }

                return rawValue;
              }

              switch(rawValue)
              {
                case 1600:
                  v2 = 257;
                  break;
                case 1601:
                  v2 = 258;
                  break;
                case 1602:
                  v2 = 259;
                  break;
                case 1603:
                  v2 = 260;
                  break;
                case 1604:
                  v2 = 261;
                  break;
                case 1605:
                  v2 = 262;
                  break;
                case 1606:
                  v2 = 263;
                  break;
                case 1607:
                  v2 = 264;
                  break;
                case 1608:
                  v2 = 265;
                  break;
                case 1609:
                  v2 = 266;
                  break;
                case 1610:
                case 1611:
                case 1612:
                case 1613:
                case 1614:
                case 1615:
                case 1616:
                case 1617:
                case 1618:
                case 1619:
                case 1620:
                case 1621:
                case 1622:
                case 1623:
                case 1624:
                case 1625:
                case 1626:
                case 1627:
                case 1628:
                case 1629:
                case 1630:
                case 1631:
                case 1632:
                case 1633:
                case 1634:
                case 1635:
                case 1636:
                case 1637:
                case 1638:
                case 1639:
                case 1640:
                case 1641:
                case 1642:
                case 1643:
                case 1644:
                case 1645:
                case 1646:
                case 1647:
                case 1648:
                case 1649:
                case 1650:
                case 1651:
                case 1652:
                case 1653:
                case 1654:
                case 1655:
                case 1656:
                case 1657:
                case 1658:
                case 1659:
                case 1660:
                case 1661:
                case 1662:
                case 1663:
                case 1664:
                case 1665:
                case 1666:
                case 1667:
                case 1668:
                case 1669:
                case 1670:
                case 1671:
                case 1672:
                case 1673:
                case 1674:
                case 1675:
                case 1676:
                case 1677:
                case 1678:
                case 1679:
                case 1680:
                case 1681:
                case 1682:
                case 1683:
                case 1684:
                case 1685:
                case 1686:
                case 1687:
                case 1688:
                case 1689:
                case 1690:
                case 1691:
                case 1692:
                case 1693:
                case 1694:
                case 1695:
                case 1696:
                case 1697:
                case 1698:
                case 1699:
                case 1706:
                case 1707:
                case 1708:
                case 1713:
                case 1714:
                case 1715:
                case 1716:
                case 1717:
                case 1718:
                case 1719:
                case 1720:
                case 1721:
                case 1722:
                case 1723:
                case 1724:
                case 1725:
                case 1726:
                case 1727:
                case 1728:
                case 1729:
                case 1730:
                case 1731:
                case 1732:
                case 1733:
                case 1734:
                case 1735:
                case 1736:
                case 1737:
                case 1738:
                case 1739:
                case 1740:
                case 1741:
                case 1742:
                case 1743:
                case 1744:
                case 1745:
                case 1746:
                case 1747:
                case 1748:
                case 1749:
                case 1750:
                case 1751:
                case 1752:
                case 1753:
                case 1754:
                case 1755:
                case 1756:
                case 1757:
                case 1758:
                case 1759:
                case 1760:
                case 1761:
                case 1762:
                case 1763:
                case 1764:
                case 1765:
                case 1766:
                case 1767:
                case 1768:
                case 1769:
                case 1770:
                case 1771:
                case 1772:
                case 1773:
                case 1774:
                case 1775:
                case 1776:
                case 1777:
                case 1778:
                case 1779:
                case 1780:
                case 1781:
                case 1782:
                case 1783:
                case 1784:
                case 1785:
                case 1786:
                case 1787:
                case 1788:
                case 1789:
                case 1790:
                case 1791:
                case 1792:
                case 1793:
                case 1794:
                case 1795:
                case 1796:
                case 1797:
                case 1798:
                case 1799:
                  goto LABEL_339;
                case 1700:
                  v2 = 267;
                  break;
                case 1701:
                  v2 = 268;
                  break;
                case 1702:
                  v2 = 269;
                  break;
                case 1703:
                  v2 = 270;
                  break;
                case 1704:
                  v2 = 271;
                  break;
                case 1705:
                  v2 = 272;
                  break;
                case 1709:
                  v2 = 273;
                  break;
                case 1710:
                  v2 = 274;
                  break;
                case 1711:
                  v2 = 275;
                  break;
                case 1712:
                  v2 = 276;
                  break;
                case 1800:
                  v2 = 277;
                  break;
                default:
                  if (rawValue != 1518)
                  {
                    goto LABEL_339;
                  }

                  v2 = 256;
                  break;
              }

LABEL_131:
              v3 = v2;
LABEL_132:
              *v1 = v3;
              return rawValue;
          }
      }
  }
}

unint64_t sub_1B4DD29CC(__int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_1B4F6A788[*(*(v2 + 48) + 2 * result)] == qword_1B4F6A788[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B4DD2AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A20, qword_1B4F7E000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B4DD2B5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B4DD2B70(a1, a2);
  }

  return a1;
}

uint64_t sub_1B4DD2B70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B4DD2BC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B4DD2C78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t objectdestroy_2Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_5Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6258, &unk_1B4F78860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_4()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];
  if (v4 >> 60 != 15)
  {
    sub_1B4DD2B70(v0[8], v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B4DD3000(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B4DD3014(a1, a2);
  }

  return a1;
}

uint64_t sub_1B4DD3014(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t XPCClient.sendRequest<A, B>(_:payload:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a7;
  v38 = a8;
  v35 = a5;
  v36 = a6;
  v39 = a9;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v31[-v21];
  v32 = *a1;
  v23 = swift_allocObject();
  *(v23 + 16) = v9;
  *(v23 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  (*(v14 + 16))(v16, a2, a3);
  v24 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v25 = (v15 + v24 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v26 = swift_allocObject();
  *(v26 + 2) = a3;
  *(v26 + 3) = a4;
  v27 = v36;
  *(v26 + 4) = v35;
  *(v26 + 5) = v27;
  v28 = v38;
  *(v26 + 6) = v37;
  *(v26 + 7) = v28;
  (*(v14 + 32))(&v26[v24], v16, a3);
  *&v26[v25] = v32;
  *&v26[(v25 + 9) & 0xFFFFFFFFFFFFFFF8] = v9;

  v29 = v33;
  sub_1B4F67624();

  return (*(v34 + 8))(v22, v29);
}

uint64_t sub_1B4DD330C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL) + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void sub_1B4DD33C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B4F67F64();
  v2 = sub_1B4F67F64();
  [v0 setObject:v1 forKey:v2];
}

uint64_t sub_1B4DD347C()
{
  result = sub_1B4F65EF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DD34FC()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F85190;
  v4._object = 0x80000001B4F85350;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 129;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66A24();
  return v8(&v11, v9, MEMORY[0x1E69CC8E8], MEMORY[0x1E69CC8F0], ObjectType, v6);
}

uint64_t sub_1B4DD3680(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4DD36D8()
{
  result = type metadata accessor for MindfulSessionAccumulator.State(319);
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

uint64_t sub_1B4DD3784()
{
  v1 = sub_1B4F67DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 96);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1);
  v8 = v7;
  v9 = sub_1B4F67DC4();
  result = (*(v2 + 8))(v6, v1);
  if (v9)
  {
    swift_beginAccess();
    sub_1B4DD3B0C(v0 + 32, v20);
    if (v21)
    {
      if (v21 == 1)
      {
        sub_1B4DDFFB8(v20);
        return sub_1B4DD4B0C();
      }

      else
      {
        v13 = dispatch_group_create();
        dispatch_group_enter(v13);
        v14 = sub_1B4DD3C38();
        swift_getObjectType();
        sub_1B4F686D4();
        sub_1B4F686E4();
        v18[0] = v13;
        v18[1] = v14;
        v19 = 1;
        swift_beginAccess();
        v15 = v13;
        swift_unknownObjectRetain();
        sub_1B4DD4AA8(v18, v0 + 32);
        swift_endAccess();
        v16 = *(v0 + 88);
        swift_allocObject();
        swift_weakInit();

        sub_1B4F67C94();

        sub_1B4F67CA4();
        sub_1B4DD4B0C();

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1B4F0B204();
      v11 = swift_allocError();
      *v12 = 0;
      *(swift_allocObject() + 16) = v11;
      sub_1B4F67604();
      return __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4DD3A40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DD3A78()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DD3AB4()
{
  sub_1B4DD3B44();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B4DD3B44()
{
  if (!qword_1EDB70110)
  {
    v0 = sub_1B4F64964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB70110);
    }
  }
}

uint64_t MindfulSessionAccumulator.init()()
{
  v1 = OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v3;
  return v0;
}

uint64_t sub_1B4DD3C38()
{
  v56 = sub_1B4F67D44();
  v64 = *(v56 - 8);
  v1 = *(v64 + 64);
  v3 = MEMORY[0x1EEE9AC00](v56, v2);
  v63 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3, v5);
  v62 = &v50 - v6;
  v7 = sub_1B4F67D94();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v59 = &v50 - v13;
  v14 = sub_1B4F67D54();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1B4F67D74();
  v51 = *(v53 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53, v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B4F68684();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B4F67DA4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = (&v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v0;
  v34 = *(v0 + 96);
  *v33 = v34;
  (*(v29 + 104))(v33, *MEMORY[0x1E69E8020], v28);
  v35 = v34;
  LOBYTE(v34) = sub_1B4F67DC4();
  result = (*(v29 + 8))(v33, v28);
  if (v34)
  {
    sub_1B4DD44F4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B4DC9C10(&qword_1EDB71448, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
    sub_1B4DC9C58(&qword_1EDB71478, &qword_1EB8F6530, &unk_1B4F7ADD0);
    sub_1B4F688A4();
    v37 = sub_1B4F68694();
    (*(v23 + 8))(v27, v22);
    ObjectType = swift_getObjectType();
    v39 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B4F0B260;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_40;
    v40 = _Block_copy(aBlock);

    sub_1B4DD4588();
    v41 = v52;
    sub_1B4DD458C();
    sub_1B4F686B4();
    _Block_release(v40);
    (*(v54 + 8))(v41, v55);
    (*(v51 + 8))(v21, v53);

    v42 = v58;
    sub_1B4F67D84();
    v43 = v59;
    sub_1B4F67DB4();
    v44 = v61;
    v45 = *(v60 + 8);
    v45(v42, v61);
    v46 = v62;
    sub_1B4DD48A4(v62);
    v47 = v63;
    sub_1B4DD482C(v63);
    MEMORY[0x1B8C81FE0](v43, v46, v47, ObjectType);
    v48 = *(v64 + 8);
    v49 = v56;
    v48(v47, v56);
    v48(v46, v49);
    v45(v43, v44);
    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall FitnessModeObserver.activate()()
{
  if (*(v0 + 36) == 1)
  {
    v1 = *MEMORY[0x1E696B8F0];
    if (*MEMORY[0x1E696B8F0])
    {
      v2 = v0;
      v3 = objc_opt_self();
      sub_1B4DC9B7C();
      v4 = sub_1B4F68654();
      v5 = swift_allocObject();
      swift_weakInit();
      v12[4] = sub_1B4E6DE58;
      v12[5] = v5;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_1B4DCA7B0;
      v12[3] = &block_descriptor_4;
      v6 = _Block_copy(v12);

      v7 = [v3 registerNotification:v1 queue:v4 callback:v6];
      _Block_release(v6);

      if ([v3 tokenIsValid_])
      {
        *(v2 + 32) = v7;
        *(v2 + 36) = 0;
      }

      else
      {
        if (qword_1EDB724A8 != -1)
        {
          swift_once();
        }

        v8 = sub_1B4F67C54();
        __swift_project_value_buffer(v8, qword_1EDB72490);
        v9 = sub_1B4F67C34();
        v10 = sub_1B4F685C4();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_1B4DC2000, v9, v10, "Failed to register for fitness mode changes", v11, 2u);
          MEMORY[0x1B8C831D0](v11, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B4DD44BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1B4DD44F4()
{
  result = qword_1EDB71440;
  if (!qword_1EDB71440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB71440);
  }

  return result;
}

uint64_t sub_1B4DD4540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4DD458C()
{
  sub_1B4F67D54();
  sub_1B4DD4540(&qword_1EDB71F90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DC9C58(&qword_1EDB71F80, &unk_1EB8F6870, &qword_1B4F710C0);
  return sub_1B4F688A4();
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryActiveWorkoutPlan()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE13F0;

  return v11(a1, a2, a3);
}

uint64_t sub_1B4DD4790(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return WorkoutPlanClient.queryActiveWorkoutPlan()(a1);
}

uint64_t sub_1B4DD482C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1B4F67D44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B4DD48A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1B4F67D44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t WorkoutPlanClient.queryActiveWorkoutPlan()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4DD4938, 0, 0);
}

uint64_t sub_1B4DD4938()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83660;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 320;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F64ED4();
  *v8 = v0;
  v8[1] = sub_1B4EEDDF0;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CB0C8];
  v12 = MEMORY[0x1E69CB0D0];

  return TransportClient.sendRequest<A>(_:)(v10, (v0 + 48), ObjectType, v9, v5, v11, v12);
}

uint64_t sub_1B4DD4B0C()
{
  v1 = sub_1B4F67DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 96);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1);
  v8 = v7;
  LOBYTE(v7) = sub_1B4F67DC4();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    swift_beginAccess();
    sub_1B4DD3B0C(v0 + 32, &v15);
    if (v16)
    {
      if (v16 == 1)
      {
        v10 = v15;
        swift_unknownObjectRelease();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v0;

        return sub_1B4F675F4();
      }

      else
      {
        sub_1B4F0B204();
        v12 = swift_allocError();
        *v13 = 1;
        *(swift_allocObject() + 16) = v12;
        return sub_1B4F67604();
      }
    }

    else
    {
      sub_1B4F67664();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4DD4D28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DD4E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B4DD511C(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t sub_1B4DD4F34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_1B4DD4FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_1B4DD511C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_1B4F67654();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t sub_1B4DD51DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = sub_1B4F67D54();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B4F67D74();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = *(a4 + 96);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B4DDC994;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1B4DDC98C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_15;
  v20 = _Block_copy(aBlock);

  sub_1B4F67D64();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1B4DC9C10(&qword_1EDB71F90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DC9C58(&qword_1EDB71F80, &unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4F688A4();
  sub_1B4F68614();
  _Block_release(v20);
  (*(v23 + 8))(v11, v7);
  (*(v12 + 8))(v16, v22);
}

uint64_t sub_1B4DD54E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4DD552C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t TransportClient.sendRequest<A>(_:)(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  *(v8 + 96) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4DD57CC, 0, 0);
}

void sub_1B4DD5670(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 3)
  {
    sub_1B4F689C4();
    MEMORY[0x1B8C818C0](0xD000000000000027, 0x80000001B4F83CF0);
    type metadata accessor for CTCellularDataRestrictedState(0);
    sub_1B4F68AD4();
    MEMORY[0x1B8C818C0](0xD00000000000002FLL, 0x80000001B4F83D20);
    sub_1B4F68B24();
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();

      if (v4)
      {
        LOBYTE(v5) = 2 - v1;
        NetworkMonitor.cellularDataRestrictedStateChanged(_:)(&v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1B4DD57CC()
{
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1B4E4DC4C;
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0x75716552646E6573, 0xEF293A5F28747365, sub_1B4DD5C28, v2, v7);
}

uint64_t sub_1B4DD58D4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v34 = a7;
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v35 = sub_1B4F682C4();
  v14 = *(v35 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v35, v16);
  v18 = &v33 - v17;
  v36 = sub_1B4F67674();
  v38 = *(v36 - 8);
  v19 = *(v38 + 64);
  v21 = MEMORY[0x1EEE9AC00](v36, v20);
  v23 = &v33 - v22;
  v40 = a3;
  v24 = a7;
  v25 = v39;
  (*(a6 + 24))(&v40, a5, v24, v39, a4, a6, v21);
  v26 = a1;
  v27 = v35;
  (*(v14 + 16))(v18, v26, v35);
  v28 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = a4;
  *(v29 + 3) = a5;
  v30 = v34;
  *(v29 + 4) = a6;
  *(v29 + 5) = v30;
  *(v29 + 6) = v25;
  (*(v14 + 32))(&v29[v28], v18, v27);
  v31 = v36;
  sub_1B4F67644();

  return (*(v38 + 8))(v23, v31);
}

uint64_t sub_1B4DD5B4C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v2 = sub_1B4F682C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B4DD5C3C(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB72490);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B4DC2000, v12, v13, a1, v14, 2u);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  sub_1B4DD5E2C(v10);
  v15 = sub_1B4F67654();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v15(a3, v16);

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1B4DD5E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F0, &qword_1B4F6CD98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v25 - v10;
  v12 = sub_1B4F67DA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 48);
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12);
  v19 = v18;
  LOBYTE(v18) = sub_1B4F67DC4();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v21 = *(v2 + 32);
    NetworkMonitor.queryCurrentNetwork()(v11);
    (*(v4 + 16))(v8, v11, v3);
    v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v23 = swift_allocObject();
    (*(v4 + 32))(v23 + v22, v8, v3);
    v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v24 = sub_1B4E6638C;
    v24[1] = v2;

    sub_1B4F675F4();
    return (*(v4 + 8))(v11, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4DD6128@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4578, &qword_1B4F6CE28);
  v11 = *(v36 - 8);
  v35 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v36, v12);
  v34 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v33 = &v32 - v16;
  sub_1B4DD4B0C();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B4F0AF88;
  *(v17 + 24) = v1;
  (*(v3 + 16))(v7, v10, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v18, v7, v2);
  v21 = (v20 + v19);
  *v21 = sub_1B4DD91FC;
  v21[1] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DD0, &qword_1B4F7AEE0);
  v22 = v33;
  sub_1B4F675F4();
  (*(v3 + 8))(v10, v2);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B4DD99E0;
  *(v23 + 24) = 0;
  v24 = v34;
  v25 = v22;
  v26 = v36;
  (*(v11 + 16))(v34, v22, v36);
  v27 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v28 = (v35 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v11 + 32))(v29 + v27, v24, v26);
  v30 = (v29 + v28);
  *v30 = sub_1B4DD99D8;
  v30[1] = v23;
  sub_1B4F675F4();
  return (*(v11 + 8))(v25, v26);
}

uint64_t sub_1B4DD64E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

const char *sub_1B4DD6548()
{
  v1 = "Brioche";
  v2 = "CustomPlansV2";
  if (*v0 != 2)
  {
    v2 = "Kahana";
  }

  if (!*v0)
  {
    v1 = "SampleContent";
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

uint64_t sub_1B4DD65C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TestProperty.init(_:fallback:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for TestProperty();
  v8 = *(*(a3 - 8) + 32);
  v9 = &a4[*(v7 + 44)];

  return v8(v9, a2, a3);
}

uint64_t sub_1B4DD66D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = sub_1B4F67D34();
  v21[3] = v10;
  v21[4] = &off_1F2CE2310;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a1, v10);
  v12 = *(a2 + 96);
  *v9 = v12;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4);
  v13 = v12;
  LOBYTE(v12) = sub_1B4F67DC4();
  result = (*(v5 + 8))(v9, v4);
  if (v12)
  {
    swift_beginAccess();
    sub_1B4DD3B0C(a2 + 32, &v19);
    if (v20)
    {
      if (v20 == 1)
      {
        v15 = v19;
        swift_getObjectType();
        sub_1B4F686C4();
        sub_1B4DC40A0(v21, v17);
        v18 = 0;
        swift_beginAccess();
        sub_1B4DD4AA8(v17, a2 + 32);
        swift_endAccess();
        dispatch_group_leave(v15);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1B4EF6618();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1B4DC40A0(v21, v17);
      v18 = 0;
      swift_beginAccess();
      sub_1B4DD4AA8(v17, a2 + 32);
      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B4EF6618();
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SeymourClient20ReachabilityObserverC5State33_6D0009E70480D368EA8E5D6C022578E4LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

id static TestProperty.value(for:fallback:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v65 = a6;
  v10 = sub_1B4F687D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v58[-v14];
  v66 = *(a3 - 8);
  v16 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v58[-v23];
  MEMORY[0x1EEE9AC00](v25, v26);
  v63 = &v58[-v27];
  LODWORD(v64) = *a1;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v29 = result;
    MobileGestalt_get_deviceClassNumber();

    if (Platform.internalInstall.getter())
    {
      v61 = v20;
      v30 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v31 = sub_1B4F67F64();
      v32 = [v30 initWithSuiteName_];

      if (!v32)
      {
        return (*(v66 + 16))(v65, a2, a3);
      }

      v69 = v64;
      v33 = UserDefaultsKeys.rawValue.getter();
      (*(a4 + 8))(v32, v33, v34, a3, a4);

      if ((*(v66 + 48))(v15, 1, a3) == 1)
      {

        (*(v11 + 8))(v15, v10);
        return (*(v66 + 16))(v65, a2, a3);
      }

      v60 = v32;
      v37 = *(v66 + 32);
      v38 = v63;
      v37(v63, v15, a3);
      if (sub_1B4F67F54())
      {
        (*(v66 + 8))(v38, a3);

        return (*(v66 + 16))(v65, a2, a3);
      }

      if (qword_1EDB724A8 != -1)
      {
        swift_once();
      }

      v39 = sub_1B4F67C54();
      __swift_project_value_buffer(v39, qword_1EDB72490);
      v40 = *(v66 + 16);
      v40(v24, v38, a3);
      v41 = sub_1B4F67C34();
      v42 = sub_1B4F685E4();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v61;
      if (v43)
      {
        v45 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v68 = v62;
        *v45 = 136315394;
        v67 = v64;
        v64 = v41;
        v46 = UserDefaultsKeys.rawValue.getter();
        v48 = sub_1B4DC4F88(v46, v47, &v68);
        v59 = v42;
        v49 = v37;
        v50 = v48;

        *(v45 + 4) = v50;
        v37 = v49;
        *(v45 + 12) = 2080;
        v40(v44, v24, a3);
        v51 = sub_1B4F67F94();
        v53 = v52;
        (*(v66 + 8))(v24, a3);
        v54 = sub_1B4DC4F88(v51, v53, &v68);

        *(v45 + 14) = v54;
        v55 = v64;
        _os_log_impl(&dword_1B4DC2000, v64, v59, "Non default value set for %s: %s", v45, 0x16u);
        v56 = v62;
        swift_arrayDestroy();
        MEMORY[0x1B8C831D0](v56, -1, -1);
        v57 = v45;
        v38 = v63;
        MEMORY[0x1B8C831D0](v57, -1, -1);
      }

      else
      {

        (*(v66 + 8))(v24, a3);
      }

      return (v37)(v65, v38, a3);
    }

    else
    {
      v35 = v65;
      v36 = *(v66 + 16);

      return v36(v35, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NetworkMonitor.queryCurrentNetwork()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F0, &qword_1B4F6CD98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v28 - v10;
  v12 = sub_1B4F67DA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue];
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12);
  v19 = v18;
  LOBYTE(v18) = sub_1B4F67DC4();
  result = (*(v13 + 8))(v17, v12);
  if (v18)
  {
    v21 = *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_reachabilityObserver];
    sub_1B4DD6128(v11);
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B4EF74AC;
    *(v23 + 24) = v22;
    (*(v4 + 16))(v8, v11, v3);
    v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v25 = swift_allocObject();
    (*(v4 + 32))(v25 + v24, v8, v3);
    v26 = (v25 + ((v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_1B4EF74D0;
    v26[1] = v23;
    v27 = v2;
    sub_1B4F675F4();
    return (*(v4 + 8))(v11, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4DD72A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DD72F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id Platform.internalInstall.getter()
{
  v0 = objc_opt_self();
  v1 = sub_1B4F67FB4();

  v2 = [v0 isInternal_];

  return v2;
}

uint64_t sub_1B4DD7450(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t UserDefaultsKeys.rawValue.getter()
{
  result = 0x726F4D656C696D53;
  switch(*v0)
  {
    case 1:
    case 0x14:
    case 0x2F:
    case 0x45:
      result = 0xD000000000000019;
      break;
    case 2:
    case 0x23:
    case 0x35:
    case 0x3D:
    case 0x4B:
    case 0x4C:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 0x1A:
      result = 0xD000000000000015;
      break;
    case 5:
    case 0xC:
    case 0x2B:
    case 0x3B:
    case 0x47:
    case 0x4A:
    case 0x5B:
      result = 0xD000000000000016;
      break;
    case 6:
    case 0x2A:
      result = 0xD00000000000002DLL;
      break;
    case 7:
    case 0x3E:
      result = 0xD000000000000021;
      break;
    case 8:
    case 0x13:
    case 0x19:
    case 0x32:
    case 0x4E:
    case 0x55:
      result = 0xD00000000000001CLL;
      break;
    case 9:
    case 0x20:
    case 0x21:
    case 0x2D:
    case 0x31:
    case 0x4D:
      result = 0xD00000000000001BLL;
      break;
    case 0xA:
    case 0x26:
    case 0x29:
    case 0x36:
      result = 0xD000000000000023;
      break;
    case 0xB:
    case 0x1D:
    case 0x27:
      result = 0xD00000000000001DLL;
      break;
    case 0xD:
    case 0xF:
      result = 0xD00000000000002ALL;
      break;
    case 0xE:
    case 0x1F:
    case 0x50:
      result = 0xD000000000000017;
      break;
    case 0x10:
    case 0x61:
      result = 0xD000000000000012;
      break;
    case 0x11:
    case 0x12:
    case 0x24:
    case 0x49:
    case 0x5C:
      result = 0xD000000000000010;
      break;
    case 0x15:
      return result;
    case 0x16:
      result = 0x7055654D6D616542;
      break;
    case 0x17:
      result = 0xD000000000000014;
      break;
    case 0x18:
    case 0x28:
    case 0x5A:
      result = 0xD000000000000013;
      break;
    case 0x1B:
      result = 0x6E746946656B6146;
      break;
    case 0x1C:
      result = 0x6C66664F656B6146;
      break;
    case 0x1E:
      result = 0x73627553656B6146;
      break;
    case 0x22:
      result = 0x43706954656B6146;
      break;
    case 0x25:
    case 0x2C:
      result = 0xD000000000000026;
      break;
    case 0x2E:
      result = 0xD000000000000031;
      break;
    case 0x30:
      result = 0x7069546563726F46;
      break;
    case 0x33:
      result = 0xD000000000000011;
      break;
    case 0x34:
      result = 0x795365726F6E6749;
      break;
    case 0x37:
      result = 0xD00000000000001FLL;
      break;
    case 0x38:
      result = 0xD000000000000027;
      break;
    case 0x3A:
    case 0x43:
    case 0x52:
    case 0x54:
    case 0x56:
      result = 0xD000000000000018;
      break;
    case 0x3C:
    case 0x62:
      result = 0xD000000000000022;
      break;
    case 0x3F:
      result = 0xD000000000000011;
      break;
    case 0x40:
      result = 0x6557656E4F646441;
      break;
    case 0x41:
      result = 0xD000000000000011;
      break;
    case 0x42:
      result = 0xD00000000000002BLL;
      break;
    case 0x44:
      result = 0xD000000000000020;
      break;
    case 0x46:
      result = 0xD000000000000011;
      break;
    case 0x48:
      result = 0xD000000000000011;
      break;
    case 0x4F:
      result = 0xD000000000000011;
      break;
    case 0x51:
      result = 0x68747541776F6853;
      break;
    case 0x57:
      result = 0x5474417472617453;
      break;
    case 0x58:
      result = 0xD000000000000028;
      break;
    case 0x5D:
      result = 0xD000000000000024;
      break;
    case 0x5E:
      result = 0x65655368746F6F53;
      break;
    case 0x5F:
      result = 0x616C6544636E7953;
      break;
    case 0x60:
      result = 0x44636E795378614DLL;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_1B4DD7F28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B4DD7F90(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1B4DD7F90(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B4F67F64();
  v7 = [a1 valueForKey_];

  if (!v7)
  {
LABEL_16:
    *&result = 0.0;
    return result;
  }

  sub_1B4F68894();
  swift_unknownObjectRelease();
  sub_1B4DC4F2C(v35, v34);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    return v32[0];
  }

  sub_1B4DC4F2C(v35, v34);
  if (!swift_dynamicCast())
  {
    sub_1B4DC4F2C(v35, v34);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      *&result = *v32;
      return result;
    }

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B4F67C54();
    __swift_project_value_buffer(v10, qword_1EDB72490);
    sub_1B4DC4F2C(v35, v34);
    sub_1B4DC4F2C(v35, v32);

    v11 = sub_1B4F67C34();
    v12 = sub_1B4F685C4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_1B4DC4F88(a2, a3, &v31);
      *(v13 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      swift_getDynamicType();
      v15 = sub_1B4F68F84();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v18 = sub_1B4DC4F88(v15, v17, &v31);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v19 = v33;
      v20 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v21 = *(*(v19 - 8) + 64);
      v22 = MEMORY[0x1EEE9AC00](v20, v20);
      (*(v24 + 16))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v25 = sub_1B4F67F94();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v28 = sub_1B4DC4F88(v25, v27, &v31);

      *(v13 + 24) = v28;
      _os_log_impl(&dword_1B4DC2000, v11, v12, "Couldn't parse Double at %s with type %s and value %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v14, -1, -1);
      MEMORY[0x1B8C831D0](v13, -1, -1);

      v29 = v35;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v29 = v32;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    goto LABEL_16;
  }

  v34[0] = 0;
  v9 = sub_1B4ED72B8(v32[0], v32[1], v34, MEMORY[0x1E69E7CD8]);

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  if (v9)
  {
    return v34[0];
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1B4DD8430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_1B4F67654();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a4;
  v14[5] = a5;

  v13(a9, v14);
}

uint64_t sub_1B4DD84F0()
{
  v21 = v0[12];
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v1 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BC38]);
  v0[14] = v1;
  v2 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BC78]);
  v0[15] = v2;
  v3 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BCC8]);
  v0[16] = v3;
  v4 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BCF8]);
  v0[17] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61A0, &qword_1B4F787B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4F78780;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_1B4DD889C(inited);
  v11 = v10;
  v0[18] = v10;
  swift_setDeallocating();
  v12 = *(inited + 16);
  swift_arrayDestroy();
  v13 = *(v21 + 40);
  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_1B4DDEE70;
  v16 = v0[12];
  v17 = v0[13];
  v18 = v0[11];

  return v20(v11, v18, v16);
}

uint64_t sub_1B4DD8724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B4DD8430(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t sub_1B4DD8804(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1B4DD889C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1B4F688F4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4688, &qword_1B4F6D060);
      v3 = sub_1B4F68994();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1B4F688F4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1B8C82290](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1B4F68754();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1B4DE1044();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1B4F68764();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1B4F68754();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1B4DE1044();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1B4F68764();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1B4DD8B90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return HealthStore.preferredUnits(for:)(a1);
}

uint64_t HealthStore.preferredUnits(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6468, &qword_1B4F790C0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4DD8F20, 0, 0);
}

unint64_t sub_1B4DD8D08()
{
  result = qword_1EDB6DA78;
  if (!qword_1EDB6DA78)
  {
    sub_1B4DD8804(255, &qword_1EDB6DA80, 0x1E696C370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DA78);
  }

  return result;
}

uint64_t sub_1B4DD8D70(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4578, &qword_1B4F6CE28);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v22 - v16;
  if (a2)
  {
    v22[0] = a1;
    v23 = 1;
    v18 = a1;
    a5(v22);
    return sub_1B4DD2BC4(v22, &qword_1EB8F4580, &unk_1B4F6CE30);
  }

  else
  {
    a3(v15);
    v20 = sub_1B4F67654();
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;

    v20(sub_1B4DD9674, v21);

    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_1B4DD8F20()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v1[19];
  v11 = *v1[20];
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  sub_1B4DD8D08();
  v8 = sub_1B4F684F4();
  v1[24] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1B4DDE758;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6470, &qword_1B4F790C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B4DDE5FC;
  v1[13] = &block_descriptor_16;
  [v11 preferredUnitsForQuantityTypes:v8 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B4DD9128()
{
  result = sub_1B4F66184();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SubscriptionToken.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1B4DF7B68(a1, v2, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B4DD91FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B4DD9248()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F86D80;
  v4._object = 0x80000001B4F86DB0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 114;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4DD9334(__int16 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v1;
  (*(v4 + 16))(v7, v11, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v15, v7, v3);
  v18 = (v17 + v16);
  *v18 = sub_1B4E5691C;
  v18[1] = v14;

  sub_1B4F675F4();
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_1B4DD95B8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4DD9894(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1B4DD9674()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

void sub_1B4DD96A8(uint64_t a1, void (*a2)(id *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F0, &qword_1B4F6CD98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - v13;
  sub_1B4E21A90(a1, v22, &qword_1EB8F4580, &unk_1B4F6CE30);
  if (v23)
  {
    v15 = *&v22[0];
    v20 = *&v22[0];
    v21 = 1;
    v16 = *&v22[0];
    a4(&v20);

    sub_1B4DDC730(v20, v21);
  }

  else
  {
    sub_1B4DC933C(v22, &v20);
    a2(&v20);
    v17 = sub_1B4F67654();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    v17(sub_1B4DDA418, v18);

    (*(v10 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  }
}

uint64_t sub_1B4DD98E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4DC40A0(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1B4DC933C(v7, v5 + 32);

  return sub_1B4F675F4();
}

uint64_t sub_1B4DD9980()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1B4DD9A30(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v23 - v15;
  v23 = a1;
  if (a2)
  {
    v24 = 1;
    v17 = a1;
    a5(&v23);
    v18 = MEMORY[0x1E69E7D60];
    v19 = a1;
    v20 = 1;
  }

  else
  {
    swift_unknownObjectRetain();
    a3(&v23);
    v21 = sub_1B4F67654();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(sub_1B4DDDFD0, v22);

    (*(v12 + 8))(v16, v11);
    v18 = MEMORY[0x1E69E7D60];
    v19 = a1;
    v20 = 0;
  }

  sub_1B4DDACF4(v19, v20, v18);
}

void sub_1B4DD9C18(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v9 = 0;
  a1(&v8);
  v6 = v8;
  v7 = v9;

  sub_1B4DDC730(v6, v7);
}

uint64_t sub_1B4DD9CA4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_1B4DC40A0(a1, v9);
  sub_1B4DD9E28(v9, &v10);
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1B4F67CF4() & 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1B4F67CE4() & 1;
  sub_1B4DC40A0(a1, v9);
  sub_1B4DDA024(v9, &v10);
  v7 = v10;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B4DD9D68(uint64_t *a1, __int16 a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

uint64_t sub_1B4DD9E28@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B4F67C74();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v5[13];
  v10(v9, *MEMORY[0x1E6977B50], v4);
  v11 = sub_1B4F67D04();
  v12 = v5[1];
  v12(v9, v4);
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10(v9, *MEMORY[0x1E6977B40], v4);
    v14 = sub_1B4F67D04();
    v12(v9, v4);
    if (v14)
    {
      v13 = 2;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v10(v9, *MEMORY[0x1E6977B38], v4);
      v15 = sub_1B4F67D04();
      v12(v9, v4);
      if (v15)
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }
    }
  }

  *a2 = v13;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B4DDA024@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B4F67D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4F67D24();
  v14 = (*(v5 + 88))(v13, v4);
  if (v14 == *MEMORY[0x1E6977D40])
  {
    v15 = 1;
LABEL_7:
    *a2 = v15;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (v14 == *MEMORY[0x1E6977D30])
  {
    v15 = 2;
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x1E6977D38])
  {
    v15 = 0;
    goto LABEL_7;
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1B4F689C4();
  MEMORY[0x1B8C818C0](0xD00000000000001FLL, 0x80000001B4F81EC0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4F67D24();
  sub_1B4F68AD4();
  (*(v5 + 8))(v10, v4);
  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

void sub_1B4DDA258(uint64_t a1, uint64_t a2, void *a3, __int16 a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_1B4F71988[a4];
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = sub_1B4E5695C;
  v11[4] = v8;
  v13[4] = sub_1B4E56750;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B4E54930;
  v13[3] = &block_descriptor_152;
  v12 = _Block_copy(v13);

  [a3 receiveRequest:v9 data:0 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1B4DDA3B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DDA43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7680, &qword_1B4F795D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4DDA4A4(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_1B4DDA500()
{
  v1 = *v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F82060;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 50;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v10 = sub_1B4E9C4F8();
  v11 = sub_1B4DDAC30();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

void sub_1B4DDA65C(void *a1, char a2, void (*a3)(__int16 *), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  if (a2)
  {
    v24 = a1;
    v25 = 1;
    v17 = a1;
    a5(&v24);
    sub_1B4DDC730(a1, 1);
  }

  else
  {
    v21 = a1 & 0x1FF;
    v22 = BYTE2(a1) & 1;
    v23 = BYTE3(a1);
    a3(&v21);
    v18 = sub_1B4F67654();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1B4DDE050, v19);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_1B4DDA840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4DDA8A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F68B0, &qword_1B4F6CDA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - v12;
  v14 = sub_1B4F67DA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v38 = a1[1];
  v39 = v20;
  v21 = a1[2];
  v36 = a1[3];
  v37 = v21;
  v22 = *(v3 + 48);
  *v19 = v22;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14);
  v23 = v22;
  LOBYTE(v22) = sub_1B4F67DC4();
  result = (*(v15 + 8))(v19, v14);
  if (v22)
  {
    v25 = *(v3 + 32);
    NetworkMonitor.queryInterfaceAvailability()(v13);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v28 = v38;
    *(v27 + 24) = v39;
    *(v27 + 25) = v28;
    v29 = v36;
    *(v27 + 26) = v37;
    *(v27 + 27) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1B4DDDA20;
    *(v30 + 24) = v27;
    (*(v6 + 16))(v10, v13, v5);
    v31 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v32 = (v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    (*(v6 + 32))(v33 + v31, v10, v5);
    v34 = (v33 + v32);
    *v34 = sub_1B4DDD224;
    v34[1] = v30;
    sub_1B4F675F4();
    return (*(v6 + 8))(v13, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4DDABE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

unint64_t sub_1B4DDAC30()
{
  result = qword_1EDB6DAD0;
  if (!qword_1EDB6DAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5890, &qword_1B4F75228);
    sub_1B4DDA840(&qword_1EDB70018, MEMORY[0x1E69CD370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAD0);
  }

  return result;
}

void sub_1B4DDACF4(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t NetworkMonitor.queryInterfaceAvailability()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F0, &qword_1B4F6CD98);
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v43, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F68B0, &qword_1B4F6CDA0);
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v47, v12);
  v44 = v14;
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v46 = &v43 - v16;
  v17 = sub_1B4F67DA4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue];
  *v22 = v23;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v17);
  v24 = v23;
  LOBYTE(v23) = sub_1B4F67DC4();
  result = (*(v18 + 8))(v22, v17);
  if (v23)
  {
    v26 = *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_reachabilityObserver];
    sub_1B4DD6128(v9);
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    v28 = v43;
    (*(v3 + 16))(&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v43);
    v29 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v30 = swift_allocObject();
    (*(v3 + 32))(v30 + v29, &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v31 = (v30 + ((v4 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_1B4EF7510;
    v31[1] = v27;
    v32 = v2;
    v33 = v46;
    sub_1B4F675F4();
    (*(v3 + 8))(v9, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1B4EF74AC;
    *(v35 + 24) = v34;
    v36 = v45;
    v37 = v47;
    (*(v10 + 16))(v45, v33, v47);
    v38 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v39 = (v44 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    (*(v10 + 32))(v40 + v38, v36, v37);
    v41 = (v40 + v39);
    *v41 = sub_1B4EF7560;
    v41[1] = v35;
    v42 = v32;
    sub_1B4F675F4();
    return (*(v10 + 8))(v33, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PlaylistsUpdated()
{
  result = qword_1EDB71A28;
  if (!qword_1EDB71A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4DDB218()
{
  result = sub_1B4F65F44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AdminClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RemoteKeyDeliveryClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MindfulSessionAccumulator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_1B4DDB5C4(v0 + OBJC_IVAR____TtC13SeymourClient25MindfulSessionAccumulator_state);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x1B8C831D0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDB4D0(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F0, &qword_1B4F6CD98) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4DDB440(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1B4DDB5C4(uint64_t a1)
{
  v2 = type metadata accessor for MindfulSessionAccumulator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4DDB620(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68F04();
  a1(v2, v3);
  sub_1B4DDC730(v2, v3);
}

uint64_t SubscriptionToken.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_1B4DF7C54(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  sub_1B4DDC964(v0 + 16);
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_1B4DDB714(void *a1, char a2, void (*a3)(__int16 *), uint64_t a4, void (*a5)(id *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F68B0, &qword_1B4F6CDA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  if (a2)
  {
    v24 = a1;
    v25 = 1;
    v17 = a1;
    a5(&v24);
    sub_1B4DDC730(v24, v25);
  }

  else
  {
    v21 = a1 & 0x1FF;
    v22 = BYTE2(a1) & 1;
    v23 = BYTE3(a1);
    a3(&v21);
    v18 = sub_1B4F67654();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1B4DDA418, v19);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_1B4DDB8D8(char a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_1B4F67DA4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 != 1)
  {
    v35 = a3;
    v36 = a4;
    v19 = *(a4 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
    *v13 = v19;
    v20 = *MEMORY[0x1E69E8020];
    v37 = v9[13];
    v37(v13, v20, v8);
    v21 = v19;
    v22 = sub_1B4F67DC4();
    v23 = v9[1];
    result = v23(v13, v8);
    if (v22)
    {
      v34 = a2;
      v24 = v36;
      v25 = [*(v36 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_airplaneModeObserver) enabled];
      *v13 = v21;
      v37(v13, v20, v8);
      v26 = v21;
      v27 = sub_1B4F67DC4();
      result = v23(v13, v8);
      if (v27)
      {
        v33 = v25;
        v32 = *(*(v24 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_coreTelephonyObserver) + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_isCellularDataEnabled);
        *v13 = v26;
        v37(v13, v20, v8);
        v28 = sub_1B4F67DC4();
        result = v23(v13, v8);
        if (v28)
        {
          v29 = *(*(v24 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_wifiObserver) + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_isEnabled);
          *v13 = v26;
          v37(v13, v20, v8);
          v30 = sub_1B4F67DC4();
          result = v23(v13, v8);
          if (v30)
          {
            sub_1B4DDCE08(&v40);
            sub_1B4DDBEFC(v33, v32, v29, &v40, &v38);
            v38 = v38;
            v39 = 0;
            return v34(&v38);
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1EDB6DF18 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4F67C54();
  __swift_project_value_buffer(v14, qword_1EDB6DF20);
  v15 = sub_1B4F67C34();
  v16 = sub_1B4F685E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B4DC2000, v15, v16, "[NetworkMonitor:InterfaceAvailability] Ethernet interface found", v17, 2u);
    MEMORY[0x1B8C831D0](v17, -1, -1);
  }

  v38 = 0;
  v39 = 0;
  return a2(&v38);
}

uint64_t sub_1B4DDBC7C(char *a1)
{
  v2 = v1;
  v4 = sub_1B4F67DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = *&v2[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue];
  *v9 = v14;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4);
  v15 = v14;
  LOBYTE(v14) = sub_1B4F67DC4();
  (*(v5 + 8))(v9, v4);
  if (v14)
  {
    if (qword_1EDB6DF18 == -1)
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
  v16 = sub_1B4F67C54();
  __swift_project_value_buffer(v16, qword_1EDB6DF20);
  v17 = sub_1B4F67C34();
  v18 = sub_1B4F685E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B4DC2000, v17, v18, "[NetworkMonitor:InterfaceAvailability] Querying interface availability", v19, 2u);
    MEMORY[0x1B8C831D0](v19, -1, -1);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v10;
  *(v20 + 25) = v11;
  *(v20 + 26) = v12;
  *(v20 + 27) = v13;
  v21 = v2;
  return sub_1B4F675F4();
}

uint64_t sub_1B4DDBEC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

void sub_1B4DDBEFC(char a1@<W0>, char a2@<W1>, char a3@<W2>, unsigned __int8 *a4@<X3>, char *a5@<X8>)
{
  v9 = *a4;
  if (qword_1EDB6DF18 != -1)
  {
    swift_once();
  }

  v10 = sub_1B4F67C54();
  __swift_project_value_buffer(v10, qword_1EDB6DF20);
  v11._object = 0x80000001B4F83E30;
  v12._countAndFlagsBits = 0xD000000000000076;
  v12._object = 0x80000001B4F83E60;
  v11._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v11, v12);
  if ((a2 & 1) == 0)
  {
    if (a3)
    {
      v13 = 0;
      goto LABEL_18;
    }

LABEL_13:
    v14 = sub_1B4F67C34();
    v23 = sub_1B4F685E4();
    if (!os_log_type_enabled(v14, v23))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = a3 & 1;
    *(v17 + 8) = 1024;
    *(v17 + 10) = 0;
    v18 = "[NetworkMonitor] Interface unavailable.\nWi-Fi: %{BOOL}d\nCellular data: %{BOOL}d";
    v19 = v23;
    goto LABEL_15;
  }

  if ((a3 & 1) == 0 && v9)
  {
    goto LABEL_13;
  }

  v13 = 0;
  if ((a1 & 1) != 0 && (a3 & 1) == 0)
  {
    v14 = sub_1B4F67C34();
    v15 = sub_1B4F685E4();
    v16 = os_log_type_enabled(v14, v15);
    if (v9)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 67109632;
        *(v17 + 4) = 1;
        *(v17 + 8) = 1024;
        *(v17 + 10) = 0;
        *(v17 + 14) = 1024;
        *(v17 + 16) = 0;
        v18 = "[NetworkMonitor] Interface unavailable.\nAirplane mode: %{BOOL}d\nWi-Fi: %{BOOL}d\nCellular data: %{BOOL}d";
        v19 = v15;
        v20 = v14;
        v21 = v17;
        v22 = 20;
LABEL_16:
        _os_log_impl(&dword_1B4DC2000, v20, v19, v18, v21, v22);
        MEMORY[0x1B8C831D0](v17, -1, -1);
      }

LABEL_17:

      v13 = 1;
      goto LABEL_18;
    }

    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = 1;
    *(v17 + 8) = 1024;
    *(v17 + 10) = 0;
    v18 = "[NetworkMonitor] Interface unavailable.\nAirplane mode: %{BOOL}d\nWi-Fi: %{BOOL}d";
    v19 = v15;
LABEL_15:
    v20 = v14;
    v21 = v17;
    v22 = 14;
    goto LABEL_16;
  }

LABEL_18:
  *a5 = v13;
}

void EventHub.unsubscribe(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(v2, v3);
  v4 = *(v1 + 72);
  os_unfair_lock_lock(v4 + 6);
  sub_1B4E48B1C(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);
}

void sub_1B4DDC1F4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(v2, v3);
  v4 = *(v1 + 72);
  os_unfair_lock_lock(v4 + 6);
  sub_1B4E48E08(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);
}

uint64_t sub_1B4DDC288(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  v8 = HIBYTE(a4);
  v9 = sub_1B4F67D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B4F67D74();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v25, v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&a3[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 17) = BYTE1(a4) & 1;
  *(v20 + 18) = BYTE2(a4) & 1;
  *(v20 + 19) = v8;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  aBlock[4] = sub_1B4DDCD00;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_11;
  v21 = _Block_copy(aBlock);

  v22 = a3;
  sub_1B4F67D64();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B4DCD900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DCBA40();
  sub_1B4F688A4();
  MEMORY[0x1B8C81F10](0, v19, v14, v21);
  _Block_release(v21);
  (*(v10 + 8))(v14, v9);
  (*(v15 + 8))(v19, v25);
}

uint64_t sub_1B4DDC534()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DDC574(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | (*(v2 + 27) << 24);
  if (*(v2 + 25))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1B4DDC288(a1, a2, *(v2 + 16), v4 | v5 | *(v2 + 24));
}

uint64_t sub_1B4DDC5B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1B4DC40A0(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1B4DC933C(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4DDC944(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1B4DDC944((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_1B4DC933C(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

void sub_1B4DDC730(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1B4DDC73C()
{
  v0 = sub_1B4DDC7B4();

  return v0;
}

uint64_t objectdestroy_867Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DDC7B4()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t objectdestroy_864Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1B4DDC7FC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D0, &qword_1B4F6D0A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D8, &qword_1B4F6D0B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4DDC944(void *a1, int64_t a2, char a3)
{
  result = sub_1B4DDC7FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B4DDC994(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t HealthDataClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SessionPreferenceClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1B4DDCA4C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v21 - v16;
  if (a2)
  {
    v21 = a1;
    v22 = 1;
    v18 = a1;
    a5(&v21);
    sub_1B4DDC730(a1, 1);
  }

  else
  {
    a3(v15);
    v19 = sub_1B4F67654();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_1B4DDDFD0, v20);

    (*(v12 + 8))(v17, v11);
  }
}

uint64_t SyncClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RemoteParticipantClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RemoteBrowsingClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t EstimatedCaloriesClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDCD00()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 19);
  *(v0 + 18);
  return sub_1B4DDB8D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t MultiUserClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t UpNextQueueClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SearchClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B4DDCE08@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_cellularData) restrictedState];
  if (result >= 3)
  {
    sub_1B4F689C4();
    MEMORY[0x1B8C818C0](0xD000000000000027, 0x80000001B4F83CF0);
    type metadata accessor for CTCellularDataRestrictedState(0);
    sub_1B4F68AD4();
    MEMORY[0x1B8C818C0](0xD00000000000002FLL, 0x80000001B4F83D20);
    result = sub_1B4F68B24();
    __break(1u);
  }

  else
  {
    *a1 = 2 - result;
  }

  return result;
}

uint64_t SiriClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AchievementClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ScoreClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1B4DDCFDC(void *a1, char a2, void (*a3)(char *), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  if (a2)
  {
    v22 = a1;
    v23 = 1;
    v17 = a1;
    a5(&v22);
    sub_1B4DDC730(a1, 1);
  }

  else
  {
    v21 = a1 & 1;
    a3(&v21);
    v18 = sub_1B4F67654();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1B4DDDFD0, v19);

    (*(v12 + 8))(v16, v11);
  }
}