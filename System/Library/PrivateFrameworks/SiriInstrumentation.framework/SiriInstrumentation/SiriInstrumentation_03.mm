void *sub_1A9C65268@<X0>(void *a1@<X8>)
{
  result = sub_1A9CB0FC8();
  *a1 = result;
  return result;
}

void *sub_1A9C652E8@<X0>(void *a1@<X8>)
{
  result = sub_1A9CB1168();
  *a1 = result;
  return result;
}

id SILogicalTimestamp.init(_:)(char *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AA6518F4();
  v4 = [v2 initWithClockIdentifier:v3 nanosecondsSinceBoot:*&a1[OBJC_IVAR___SILogicalTimestampInternal_nanosecondsSinceBoot]];

  return v4;
}

void sub_1A9C6B10C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A9C6B1A0()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B1D8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B210()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  sub_1AA651FB4();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B248()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  sub_1AA651FC4();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B280()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B2B8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B2F0()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  sub_1AA651FB4();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B328()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  sub_1AA651FC4();
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6B360@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A9C6B3C8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1A9C6B394@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1A9C6B42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_1AA651FC4();
}

uint64_t sub_1A9C6B4A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1AA651944();
  __swift_allocate_value_buffer(v3, qword_1EB419B30);
  v4 = __swift_project_value_buffer(v3, qword_1EB419B30);
  sub_1AA6518D4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t SISchemaUUID.toNSUUID()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  SISchemaUUID.asUUID()(&v8 - v3);
  v5 = sub_1AA651944();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  sub_1A9C6B8F8(v4);
  if (qword_1EB3FED10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v5, qword_1EB419B30);
  return (*(*(v5 - 8) + 16))(a1, v6, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t SISchemaUUID.asUUID()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  sub_1A9C6BA10(v1);
  if (v6 >> 60 == 15)
  {
    v7 = sub_1AA651944();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  }

  else
  {
    sub_1A9C6BA9C();
    v9 = OUTLINED_FUNCTION_0_1();
    sub_1A9C6BAE0(v9, v10);
    v11 = OUTLINED_FUNCTION_0_1();
    v13 = sub_1A9C6B998(v11, v12);
    v14 = [v13 si_asNSUUID];

    if (v14)
    {
      sub_1AA651914();
      v15 = OUTLINED_FUNCTION_0_1();
      sub_1A9C6BB38(v15, v16);

      v17 = sub_1AA651944();
      v18 = 0;
    }

    else
    {
      v19 = OUTLINED_FUNCTION_0_1();
      sub_1A9C6BB38(v19, v20);
      v17 = sub_1AA651944();
      v18 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v18, 1, v17);
    return sub_1A9C6BBA4(v5, a1);
  }
}

uint64_t sub_1A9C6B8F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1A9C6B998(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1AA651874();
  v6 = [v4 initWithData_];

  sub_1A9C6BB4C(a1, a2);
  return v6;
}

uint64_t sub_1A9C6BA10(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AA651884();

  return v3;
}

unint64_t sub_1A9C6BA9C()
{
  result = qword_1ED92F788;
  if (!qword_1ED92F788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED92F788);
  }

  return result;
}

uint64_t sub_1A9C6BAE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A9C6BB38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A9C6BB4C(a1, a2);
  }

  return a1;
}

uint64_t sub_1A9C6BB4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A9C6BBA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A9C6BC88(uint64_t a1)
{
  v2 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1A9C6BF8C(v4);
}

uint64_t sub_1A9C6BD54@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  v5 = OUTLINED_FUNCTION_5(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v10 = OBJC_IVAR___SIComponentIdentifier____lazy_storage___uuid;
  swift_beginAccess();
  sub_1A9C6DF78(v1 + v10, v2, &qword_1EB4004E0);
  v11 = sub_1AA651944();
  if (__swift_getEnumTagSinglePayload(v2, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v2, v11);
  }

  sub_1A9C6DFD8(v2, &qword_1EB4004E0);
  v12 = OBJC_IVAR___SIComponentIdentifier__uuid;
  v13 = *(*(v11 - 8) + 16);
  v13(v8, v1 + OBJC_IVAR___SIComponentIdentifier__uuid, v11);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1A9C6BF1C(v8, v1 + v10);
  swift_endAccess();
  return (v13)(a1, v1 + v12, v11);
}

uint64_t sub_1A9C6BF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9C6BF8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1AA651944();
  OUTLINED_FUNCTION_2_0();
  (*(v8 + 32))(v6, a1, v7);
  OUTLINED_FUNCTION_7();
  v9 = OBJC_IVAR___SIComponentIdentifier____lazy_storage___uuid;
  swift_beginAccess();
  sub_1A9C6BF1C(v6, v1 + v9);
  return swift_endAccess();
}

void (*sub_1A9C6C06C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1AA651944();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  sub_1A9C6BD54(v7);
  return sub_1A9C6C140;
}

void sub_1A9C6C140(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1A9C6BF8C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1A9C6BF8C(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1A9C6C228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xED0000656D614E74;
  if (v4 || (sub_1AA651F64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1AA651F64();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A9C6C328(char a1)
{
  sub_1AA651F94();
  MEMORY[0x1AC590960](a1 & 1);
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6C37C(char a1)
{
  if (a1)
  {
    return 1684632949;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1A9C6C3D4()
{
  v1 = *v0;
  sub_1AA651F94();
  MEMORY[0x1AC590960](v1);
  return sub_1AA651FE4();
}

uint64_t sub_1A9C6C420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9C6C228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9C6C468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A9C6C2F8();
  *a1 = result;
  return result;
}

uint64_t sub_1A9C6C490(uint64_t a1)
{
  v2 = sub_1A9C6DE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9C6C4CC(uint64_t a1)
{
  v2 = sub_1A9C6DE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ComponentIdentifier.init(name:uuid:)(int a1, uint64_t a2)
{
  v5 = OBJC_IVAR___SIComponentIdentifier____lazy_storage___uuid;
  v6 = sub_1AA651944();
  __swift_storeEnumTagSinglePayload(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR___SIComponentIdentifier_componentName] = a1;
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[OBJC_IVAR___SIComponentIdentifier__uuid], a2, v6);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ComponentIdentifier();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a2, v6);
  return v8;
}

uint64_t type metadata accessor for ComponentIdentifier()
{
  result = qword_1ED92F728;
  if (!qword_1ED92F728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ComponentIdentifier.init(name:schemaUUID:)(int a1, void *a2)
{
  v3 = v2;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  OUTLINED_FUNCTION_5(v5);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  type metadata accessor for UUIDRepresentation();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v28 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = (v17 - v16);
  v19 = OBJC_IVAR___SIComponentIdentifier____lazy_storage___uuid;
  __swift_storeEnumTagSinglePayload(&v2[OBJC_IVAR___SIComponentIdentifier____lazy_storage___uuid], 1, 1, v13);
  v20 = sub_1A9C6BA10(a2);
  if (v21 >> 60 == 15)
  {
  }

  else
  {
    v22 = v20;
    v23 = v21;
    if (MEMORY[0x1AC590250]() == 16)
    {
      *v12 = v22;
      v12[1] = v23;
      swift_storeEnumTagMultiPayload();
      sub_1A9CBAE10(v8);
      sub_1A9C6DDC4(v12);
      if (__swift_getEnumTagSinglePayload(v8, 1, v13) != 1)
      {
        v26 = *(v28 + 32);
        v26(v18, v8, v13);
        *&v3[OBJC_IVAR___SIComponentIdentifier_componentName] = v29;
        v26(&v3[OBJC_IVAR___SIComponentIdentifier__uuid], v18, v13);
        v27 = type metadata accessor for ComponentIdentifier();
        v30.receiver = v3;
        v30.super_class = v27;
        v24 = objc_msgSendSuper2(&v30, sel_init);

        return v24;
      }

      sub_1A9C6DFD8(v8, &qword_1EB4004E0);
    }

    else
    {

      sub_1A9C6BB38(v22, v23);
    }
  }

  sub_1A9C6DFD8(&v2[v19], &qword_1EB4004E0);
  type metadata accessor for ComponentIdentifier();
  swift_deallocPartialClassInstance();
  return 0;
}

id ComponentIdentifier.__allocating_init(requestLinkInfo:)(void *a1)
{
  v1 = a1;
  v2 = [a1 uuid];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 component];
  v4 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
  v2 = ComponentIdentifier.init(name:schemaUUID:)(v3, v2);
  v5 = v2;

  if (v2)
  {
    v1 = v5;
LABEL_4:
  }

  return v2;
}

void *ComponentIdentifier.__allocating_init(from:)(void *a1)
{
  v3 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v28 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004F0);
  OUTLINED_FUNCTION_0();
  v27 = v12;
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9C6DE64();
  sub_1AA652004();
  if (!v1)
  {
    v26 = v8;
    v17 = v11;
    v19 = v27;
    v18 = v28;
    v32 = 0;
    v30 = sub_1AA651EF4();
    v31 = 1;
    sub_1A9C6E030(&qword_1EB400500);
    v20 = v3;
    sub_1AA651EE4();
    v22 = v18;
    v23 = *(v18 + 16);
    v24 = v26;
    v23(v26, v17, v20);
    v25 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
    v16 = ComponentIdentifier.init(name:uuid:)(v30, v24);
    (*(v22 + 8))(v17, v20);
    (*(v19 + 8))(v15, v29);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

uint64_t sub_1A9C6CDC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400508);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9C6DE64();
  sub_1AA652014();
  v10[15] = 0;
  sub_1AA651F24();
  if (!v1)
  {
    v10[14] = 1;
    sub_1AA651944();
    sub_1A9C6E030(&qword_1EB3FED68);
    sub_1AA651F14();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1A9C6CF64(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A9C6D000@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A9C6CF64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A9C6D02C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1A9C6CF7C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1A9C6D058(void *a1)
{
  v3 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  [a1 writeInt32:*(v1 + OBJC_IVAR___SIComponentIdentifier_componentName) forTag:1];
  sub_1A9C6BD54(v9);
  sub_1AA651C34();
  return (*(v5 + 8))(v9, v3);
}

id static ComponentIdentifier.read(from:)(uint64_t a1)
{
  v3 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  v12 = OUTLINED_FUNCTION_5(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23[-v17];
  v27 = 0;
  v28 = 1;
  __swift_storeEnumTagSinglePayload(&v23[-v17], 1, 1, v3);
  v24 = &v27;
  v25 = a1;
  v26 = v18;
  sub_1A9C6DF24();
  sub_1AA651BF4();
  if ((v28 & 1) == 0)
  {
    v19 = v27;
    sub_1A9C6DF78(v18, v15, &qword_1EB4004E0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v3) != 1)
    {
      (*(v5 + 32))(v1, v15, v3);
      (*(v5 + 16))(v9, v1, v3);
      v22 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      v20 = ComponentIdentifier.init(name:uuid:)(v19, v9);
      (*(v5 + 8))(v1, v3);
      goto LABEL_5;
    }

    sub_1A9C6DFD8(v15, &qword_1EB4004E0);
  }

  v20 = 0;
LABEL_5:
  sub_1A9C6DFD8(v18, &qword_1EB4004E0);
  return v20;
}

id sub_1A9C6D3C4(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  if (*a1)
  {
    sub_1AA651C14();
    return sub_1A9C6BF1C(v10, a4);
  }

  else
  {
    result = [a3 readInt32];
    *a2 = result;
    *(a2 + 4) = 0;
  }

  return result;
}

uint64_t static ComponentIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  if (*(a1 + OBJC_IVAR___SIComponentIdentifier_componentName) == *(a2 + OBJC_IVAR___SIComponentIdentifier_componentName))
  {
    sub_1A9C6BD54(v2);
    sub_1A9C6BD54(v11);
    v13 = sub_1AA651904();
    v14 = *(v7 + 8);
    v14(v11, v5);
    v14(v2, v5);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1A9C6D5BC(uint64_t a1)
{
  sub_1A9C6DF78(a1, v5, &qword_1EB400510);
  if (!v6)
  {
    sub_1A9C6DFD8(v5, &qword_1EB400510);
    goto LABEL_5;
  }

  type metadata accessor for ComponentIdentifier();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = static ComponentIdentifier.== infix(_:_:)(v1, v4);

  return v2 & 1;
}

uint64_t sub_1A9C6D72C()
{
  v0 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  sub_1AA651FF4();
  sub_1AA651FC4();
  sub_1A9C6BD54(v6);
  sub_1A9C6E030(&qword_1ED92F770);
  sub_1AA651A44();
  (*(v2 + 8))(v6, v0);
  return sub_1AA651FD4();
}

uint64_t sub_1A9C6D8AC()
{
  v1 = sub_1AA651944();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR___SIComponentIdentifier_componentName);
  if (v8 > 0x42)
  {
    v9 = @"COMPONENTNAME_UNKNOWN";
    v10 = @"COMPONENTNAME_UNKNOWN";
  }

  else
  {
    v9 = off_1E78B6398[v8];
    v10 = off_1E78B65B0[v8];
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_1AA651AA4();
  v15 = v14;

  MEMORY[0x1AC590480](v13, v15);

  MEMORY[0x1AC590480](2112032, 0xE300000000000000);
  sub_1A9C6BD54(v7);
  sub_1A9C6E030(&qword_1EB400518);
  v16 = sub_1AA651F44();
  MEMORY[0x1AC590480](v16);

  (*(v3 + 8))(v7, v1);
  MEMORY[0x1AC590480](32032, 0xE200000000000000);
  return 8315;
}

id ComponentIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComponentIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A9C6DB84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = ComponentIdentifier.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void __swiftcall ComponentIdentifier.map()(SISchemaComponentIdentifier *__return_ptr retstr)
{
  v2 = sub_1AA651944();
  v3 = OUTLINED_FUNCTION_5(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(SISchemaComponentIdentifier) init];
  if (v7)
  {
    v8 = v7;
    [v7 setComponent_];
    sub_1A9C6E074();
    sub_1A9C6BD54(v6);
    v9 = sub_1A9C6DCB0(v6);
    [v8 setUuid_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1A9C6DCB0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AA6518F4();
  v4 = [v2 initWithNSUUID_];

  sub_1AA651944();
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 8))(a1);
  return v4;
}

id SISchemaTopLevelUnionType.componentIdentifier.getter()
{
  v1 = [v0 getComponentId];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 getComponentName];
    if (v3)
    {
      v4 = v3;
      v5 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      return ComponentIdentifier.init(name:schemaUUID:)(v4, v2);
    }
  }

  return 0;
}

uint64_t sub_1A9C6DDC4(uint64_t a1)
{
  v2 = type metadata accessor for UUIDRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1A9C6DE64()
{
  result = qword_1EB4004F8;
  if (!qword_1EB4004F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4004F8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1A9C6DF24()
{
  result = qword_1EB3FED28;
  if (!qword_1EB3FED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3FED28);
  }

  return result;
}

uint64_t sub_1A9C6DF78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1A9C6DFD8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1A9C6E030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AA651944();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9C6E074()
{
  result = qword_1ED92F780;
  if (!qword_1ED92F780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED92F780);
  }

  return result;
}

void sub_1A9C6E0C0()
{
  sub_1AA651944();
  if (v0 <= 0x3F)
  {
    sub_1A9C6E31C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A9C6E31C()
{
  if (!qword_1ED92F838)
  {
    sub_1AA651944();
    v0 = sub_1AA651C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED92F838);
    }
  }
}

uint64_t sub_1A9C6E394(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1A9C6E41C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A9C6E4FC()
{
  result = qword_1EB400520;
  if (!qword_1EB400520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB400520);
  }

  return result;
}

unint64_t sub_1A9C6E554()
{
  result = qword_1EB400528;
  if (!qword_1EB400528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB400528);
  }

  return result;
}

unint64_t sub_1A9C6E5AC()
{
  result = qword_1EB400530;
  if (!qword_1EB400530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB400530);
  }

  return result;
}

unint64_t sub_1A9C6E604()
{
  result = qword_1EB400538;
  if (!qword_1EB400538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB400538);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

unint64_t sub_1A9C6E6C8()
{
  result = qword_1EB400540;
  if (!qword_1EB400540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB400548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB400540);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void POMMESSchemaPOMMESClientEvent.componentIdentifiers.getter()
{
  OUTLINED_FUNCTION_21();
  v3 = v1;
  sub_1AA651944();
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v62 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v59 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v60 = v12;
  OUTLINED_FUNCTION_8();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v58 - v24;
  v63 = MEMORY[0x1E69E7CC0];
  v26 = [v1 eventMetadata];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 pommesId];

    if (v28)
    {
      SISchemaUUID.toNSUUID()(v23);

      OUTLINED_FUNCTION_19();
      v29 = OUTLINED_FUNCTION_9();
      v30(v29);
      v31 = OUTLINED_FUNCTION_5_0();
      v32(v31, v25, v0);
      objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(21, v2);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_4_0();
      if (*(v33 + 16) >= *(v33 + 24) >> 1)
      {
        sub_1AA651B44();
      }

      sub_1AA651B54();
      OUTLINED_FUNCTION_14();
      v34(v25, v0);
    }
  }

  v35 = [v3 eventMetadata];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 requestId];

    if (v37)
    {
      SISchemaUUID.toNSUUID()(v16);

      OUTLINED_FUNCTION_19();
      v38(v19, v16, v0);
      v39 = OUTLINED_FUNCTION_5_0();
      v40(v39, v19, v0);
      objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(1, v2);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_2_1();
      if (v41)
      {
        OUTLINED_FUNCTION_11();
      }

      OUTLINED_FUNCTION_9();
      sub_1AA651B54();
      OUTLINED_FUNCTION_14();
      v42(v19, v0);
    }
  }

  v43 = [v3 eventMetadata];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 subRequestId];

    if (v45)
    {
      SISchemaUUID.toNSUUID()(v59);

      OUTLINED_FUNCTION_19();
      v46 = v60;
      OUTLINED_FUNCTION_13();
      v47();
      v48 = OUTLINED_FUNCTION_5_0();
      v49(v48, v46, v0);
      objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(43, v2);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_2_1();
      if (v41)
      {
        OUTLINED_FUNCTION_11();
      }

      OUTLINED_FUNCTION_9();
      sub_1AA651B54();
      OUTLINED_FUNCTION_14();
      v50(v46, v0);
    }
  }

  v51 = [v3 eventMetadata];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 searchToolId];

    if (v53)
    {
      SISchemaUUID.toNSUUID()(v61);

      OUTLINED_FUNCTION_19();
      v54 = v62;
      OUTLINED_FUNCTION_13();
      v55();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_18();
      v56();
      v57 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(55, v2);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_2_1();
      if (v41)
      {
        OUTLINED_FUNCTION_11();
      }

      OUTLINED_FUNCTION_9();
      sub_1AA651B54();
      (*(v5 + 8))(v54, v0);
    }
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20();
}

void sub_1A9C6F864()
{
  OUTLINED_FUNCTION_21();
  v49 = v3;
  v5 = v4;
  v6 = v1;
  sub_1AA651944();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v52 = v11;
  OUTLINED_FUNCTION_8();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v48[-v14];
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v50 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v48[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48[-v22];
  v53 = MEMORY[0x1E69E7CC0];
  v24 = [v1 eventMetadata];
  if (v24 && (v25 = v24, v26 = [v24 *v5], v25, v26))
  {
    SISchemaUUID.toNSUUID()(v21);

    OUTLINED_FUNCTION_16();
    v27(v23, v21, v0);
    v28 = OUTLINED_FUNCTION_5_0();
    v29(v28, v23, v0);
    v30 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
    ComponentIdentifier.init(name:uuid:)(v49, v2);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_1();
    v31 = &selRef_domainContexts;
    if (v32)
    {
      sub_1AA651B44();
    }

    OUTLINED_FUNCTION_9();
    sub_1AA651B54();
    (*(v8 + 8))(v23, v0);
  }

  else
  {
    v31 = &selRef_domainContexts;
  }

  v33 = [v6 v31[235]];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 requestId];

    if (v35)
    {
      SISchemaUUID.toNSUUID()(v15);

      OUTLINED_FUNCTION_16();
      v36 = v50;
      v37();
      v38 = OUTLINED_FUNCTION_5_0();
      v39(v38, v36, v0);
      v40 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(1, v2);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_2_1();
      if (v32)
      {
        sub_1AA651B44();
      }

      OUTLINED_FUNCTION_9();
      sub_1AA651B54();
      (*(v8 + 8))(v36, v0);
    }
  }

  v41 = [v6 v31[235]];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 subRequestId];

    if (v43)
    {
      SISchemaUUID.toNSUUID()(v51);

      OUTLINED_FUNCTION_16();
      v44 = v52;
      OUTLINED_FUNCTION_13();
      v45();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_18();
      v46();
      v47 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(43, v2);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_2_1();
      if (v32)
      {
        sub_1AA651B44();
      }

      OUTLINED_FUNCTION_9();
      sub_1AA651B54();
      (*(v8 + 8))(v44, v0);
    }
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20();
}

uint64_t _sSo19SISchemaClientEventC19SiriInstrumentationE20componentIdentifiersSayAC19ComponentIdentifierCGvg_0()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4004E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  sub_1AA651944();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v27 = MEMORY[0x1E69E7CC0];
  v15 = [v2 eventMetadata];
  if (!v15 || (v16 = sub_1A9C70548(v15), v17 >> 60 == 15))
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v0);
LABEL_4:
    sub_1A9C6B8F8(v5);
    return MEMORY[0x1E69E7CC0];
  }

  v20 = v16;
  v21 = v17;
  Data.si_uuid()(v16, v17, v5);
  sub_1A9C6BB38(v20, v21);
  if (__swift_getEnumTagSinglePayload(v5, 1, v0) == 1)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_16();
  v22(v14, v5, v0);
  v23 = OUTLINED_FUNCTION_9();
  v24(v23);
  v25 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
  ComponentIdentifier.init(name:uuid:)(2, v11);
  MEMORY[0x1AC5904D0]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AA651B44();
  }

  sub_1AA651B54();
  v18 = v27;
  (*(v7 + 8))(v14, v0);
  return v18;
}

void sub_1A9C6FFD0()
{
  OUTLINED_FUNCTION_21();
  v39[0] = __PAIR64__(v4, v3);
  v40 = v5;
  v7 = v6;
  v8 = v1;
  sub_1AA651944();
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v39 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v39 - v21;
  v41 = MEMORY[0x1E69E7CC0];
  v23 = [v1 eventMetadata];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 *v7];

    if (v25)
    {
      SISchemaUUID.toNSUUID()(v20);

      (*(v10 + 32))(v22, v20, v0);
      v26 = OUTLINED_FUNCTION_5_0();
      v27(v26, v22, v0);
      v28 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(v39[0], v2);
      MEMORY[0x1AC5904D0]();
      OUTLINED_FUNCTION_4_0();
      if (*(v29 + 16) >= *(v29 + 24) >> 1)
      {
        sub_1AA651B44();
      }

      sub_1AA651B54();
      (*(v10 + 8))(v22, v0);
    }
  }

  v30 = [v8 eventMetadata];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 *v40];

    if (v32)
    {
      SISchemaUUID.toNSUUID()(v14);

      v33 = v39[1];
      OUTLINED_FUNCTION_18();
      v34();
      v35 = OUTLINED_FUNCTION_5_0();
      v36(v35, v33, v0);
      v37 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(SHIDWORD(v39[0]), v2);
      MEMORY[0x1AC5904D0]();
      OUTLINED_FUNCTION_4_0();
      if (*(v38 + 16) >= *(v38 + 24) >> 1)
      {
        sub_1AA651B44();
      }

      sub_1AA651B54();
      (*(v10 + 8))(v33, v0);
    }
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20();
}

void sub_1A9C70338()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1AA651944();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  v27[1] = MEMORY[0x1E69E7CC0];
  v20 = [v1 *v7];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 *v5];

    if (v22)
    {
      SISchemaUUID.toNSUUID()(v17);

      OUTLINED_FUNCTION_18();
      v23();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_13();
      v24();
      v25 = objc_allocWithZone(type metadata accessor for ComponentIdentifier());
      ComponentIdentifier.init(name:uuid:)(v3, v13);
      MEMORY[0x1AC5904D0]();
      OUTLINED_FUNCTION_4_0();
      if (*(v26 + 16) >= *(v26 + 24) >> 1)
      {
        sub_1AA651B44();
      }

      sub_1AA651B54();
      (*(v9 + 8))(v19, v0);
    }
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_1A9C70548(void *a1)
{
  v2 = [a1 turnID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1AA651884();

  return v3;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_1AA651B44();
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x1AC5904D0);
}

uint64_t ANCSchemaANCAppCategory.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ANCAPPCATEGORY_UNKNOWN";
    v2 = @"ANCAPPCATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B67C8[a1];
    v2 = off_1E78B67E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ANCSchemaANCCategory.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"ANCCATEGORY_UNKNOWN";
    v2 = @"ANCCATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B67F8[a1];
    v2 = off_1E78B6840[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ANCSchemaANCCommunicationApiNotificationType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"ANCCOMMUNICATIONAPINOTIFICATIONTYPE_UNKNOWN";
    v2 = @"ANCCOMMUNICATIONAPINOTIFICATIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6888[a1];
    v2 = off_1E78B68A8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ANCSchemaANCFeatureEnablementStatus.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ANCFEATUREENABLEMENTSTATUS_UNKNOWN";
    v2 = @"ANCFEATUREENABLEMENTSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B68C8[a1];
    v2 = off_1E78B68E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ANCSchemaANCFeatureSupportStatus.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ANCFEATURESUPPORTSTATUS_UNKNOWN";
    v2 = @"ANCFEATURESUPPORTSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B68F8[a1];
    v2 = off_1E78B6910[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ANCSchemaANCMediaType.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"ANCMEDIATYPE_UNKNOWN";
    v2 = @"ANCMEDIATYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6928[a1];
    v2 = off_1E78B6960[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ANCSchemaANCTargetPlatform.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ANCTARGETPLATFORM_UNKNOWN";
    v2 = @"ANCTARGETPLATFORM_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6998[a1];
    v2 = off_1E78B69C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ANCSchemaANCUserResponseCategory.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"ANCUSERRESPONSECATEGORY_UNKNOWN";
    v2 = @"ANCUSERRESPONSECATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B69E8[a1];
    v2 = off_1E78B6A08[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRAppLanguageModelLoadFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"ASRAPPLANGUAGEMODELLOADFAILURE_REASON_UNKNOWN";
    v2 = @"ASRAPPLANGUAGEMODELLOADFAILURE_REASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6A28[a1];
    v2 = off_1E78B6A60[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRCancelReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"ASRCANCELREASON_UNKNOWN";
    v2 = @"ASRCANCELREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6A98[a1];
    v2 = off_1E78B6AB8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRDatapackTask.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"ASRDATAPACKTASK_UNKNOWN";
    v2 = @"ASRDATAPACKTASK_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6AD8[a1];
    v2 = off_1E78B6B20[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASREditMethod.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASREDITMETHOD_UNKNOWN";
    v2 = @"ASREDITMETHOD_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6B68[a1];
    v2 = off_1E78B6B80[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASREditReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"ASREDITREASON_UNKNOWN";
    v2 = @"ASREDITREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6B98[a1];
    v2 = off_1E78B6BB8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASREntityEnrollmentReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"ASRENTITYENROLLMENTREASON_UNKNOWN";
    v2 = @"ASRENTITYENROLLMENTREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6BD8[a1];
    v2 = off_1E78B6BF8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASREntityEnrollmentResult.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASRENTITYENROLLMENTRESULT_UNKNOWN";
    v2 = @"ASRENTITYENROLLMENTRESULT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6C18[a1];
    v2 = off_1E78B6C30[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASREntityTaggerCategory.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"ASRENTITYTAGGERCATEGORY_UNKNOWN";
    v2 = @"ASRENTITYTAGGERCATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6C48[a1];
    v2 = off_1E78B6C68[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRFullPayloadCorrectionErrorType.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"ASRFULLPAYLOADCORRECTIONERRORTYPE_UNKNOWN";
    v2 = @"ASRFULLPAYLOADCORRECTIONERRORTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6C88[a1];
    v2 = off_1E78B6CF0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRPauseReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASRPAUSEREASON_UNKNOWN";
    v2 = @"ASRPAUSEREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6D58[a1];
    v2 = off_1E78B6D70[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRPreheatStatus.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASRPREHEATSTATUS_UNKNOWN";
    v2 = @"ASRPREHEATSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6D88[a1];
    v2 = off_1E78B6DA0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRRescoringDeliberationEventType.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"ASRRESCORINGDELIBERATIONEVENTTYPE_UNKNOWN";
    v2 = @"ASRRESCORINGDELIBERATIONEVENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6DB8[a1];
    v2 = off_1E78B6E00[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRSampledAudioStorageFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ASRSAMPLEDAUDIOSTORAGEFAILUREREASON_UNKNOWN";
    v2 = @"ASRSAMPLEDAUDIOSTORAGEFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6E48[a1];
    v2 = off_1E78B6E70[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRSpeechProfileCategory.description.getter(unsigned int a1)
{
  if (a1 > 0x1C)
  {
    v1 = @"ASRSPEECHPROFILECATEGORY_UNKNOWN";
    v2 = @"ASRSPEECHPROFILECATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B6E98[a1];
    v2 = off_1E78B6F80[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSpeechProfileSchemaASRSpeechProfileUpdateFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"ASRSPEECHPROFILEUPDATEFAILUREREASON_UNKNOWN";
    v2 = @"ASRSPEECHPROFILEUPDATEFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7068[a1];
    v2 = off_1E78B70B8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRSpeechRecognitionHardware.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASRSPEECHRECOGNITIONHARDWARE_UNKNOWN";
    v2 = @"ASRSPEECHRECOGNITIONHARDWARE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7108[a1];
    v2 = off_1E78B7120[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRStartState.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"ASRSTARTSTATE_UNKNOWN";
    v2 = @"ASRSTARTSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7138[a1];
    v2 = off_1E78B7158[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRTaskHint.description.getter(unsigned int a1)
{
  if (a1 > 0x10)
  {
    v1 = @"ASRTASKHINT_UNKNOWN";
    v2 = @"ASRTASKHINT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7178[a1];
    v2 = off_1E78B7200[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASRSchemaASRVisualContextCategory.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASRVISUALCONTEXTCATEGORY_UNKNOWN";
    v2 = @"ASRVISUALCONTEXTCATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7288[a1];
    v2 = off_1E78B72A0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaASTUpdateKind.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASTUPDATEKIND_UNKNOWN";
    v2 = @"ASTUPDATEKIND_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B72B8[a1];
    v2 = off_1E78B72D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASVSchemaASVBackgroundNoiseActivityLevel.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASVBACKGROUNDNOISEACTIVITYLEVEL_UNKNOWN";
    v2 = @"ASVBACKGROUNDNOISEACTIVITYLEVEL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B72E8[a1];
    v2 = off_1E78B7300[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASVSchemaASVInvocationType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"ASVINVOCATIONTYPE_UNKNOWN";
    v2 = @"ASVINVOCATIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7318[a1];
    v2 = off_1E78B7330[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASVSchemaASVSpeakerDistanceType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ASVSPEAKERDISTANCETYPE_UNKNOWN";
    v2 = @"ASVSPEAKERDISTANCETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7348[a1];
    v2 = off_1E78B7370[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ASVSchemaASVUserIntentType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ASVUSERINTENTTYPE_UNKNOWN";
    v2 = @"ASVUSERINTENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7398[a1];
    v2 = off_1E78B73C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaAdaptiveVolumeUserIntent.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ADAPTIVEVOLUMEUSERINTENT_UNKNOWN";
    v2 = @"ADAPTIVEVOLUMEUSERINTENT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B73E8[a1];
    v2 = off_1E78B7410[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaAnnounceNotificationsCarPlayStatus.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ANNOUNCENOTIFICATIONSCARPLAYSTATUS_UNKNOWN";
    v2 = @"ANNOUNCENOTIFICATIONSCARPLAYSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7438[a1];
    v2 = off_1E78B7460[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaAnyEventType.description.getter(unsigned int a1)
{
  if (a1 > 0x71)
  {
    v1 = @"UNKNOWN_EVENT";
    v2 = @"UNKNOWN_EVENT";
  }

  else
  {
    v1 = off_1E78B7488[a1];
    v2 = off_1E78B7818[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaAppleMediaProductsSubscription.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"APPLEMEDIAPRODUCTSSUBSCRIPTION_UNKNOWN";
    v2 = @"APPLEMEDIAPRODUCTSSUBSCRIPTION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7BA8[a1];
    v2 = off_1E78B7BF0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaAssistantViewMode.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"ASSISTANTVIEWMODE_UNKNOWN";
    v2 = @"ASSISTANTVIEWMODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7C38[a1];
    v2 = off_1E78B7C80[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaAudioInputRoute.description.getter(unsigned int a1)
{
  if (a1 > 0xE)
  {
    v1 = @"AUDIOINPUTROUTE_UNKNOWN_AUDIO_INPUT_ROUTE";
    v2 = @"AUDIOINPUTROUTE_UNKNOWN_AUDIO_INPUT_ROUTE";
  }

  else
  {
    v1 = off_1E78B7CC8[a1];
    v2 = off_1E78B7D40[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaAudioOutputRoute.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"AUDIOOUTPUTROUTE_UNKNOWN_AUDIO_OUTPUT_ROUTE";
    v2 = @"AUDIOOUTPUTROUTE_UNKNOWN_AUDIO_OUTPUT_ROUTE";
  }

  else
  {
    v1 = off_1E78B7DB8[a1];
    v2 = off_1E78B7DF8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SIServiceBatchType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"UNKNOWN";
    v2 = @"UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7E38[a1];
    v2 = off_1E78B7E50[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaBluetoothCarPreferredAudioRoute.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_HFP";
    v2 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_HFP";
  }

  else
  {
    v1 = off_1E78B7E68[a1];
    v2 = off_1E78B7E80[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaBuildVariant.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"DEVELOPMENT";
    v2 = @"DEVELOPMENT";
  }

  else
  {
    v1 = off_1E78B7E98[a1];
    v2 = off_1E78B7EC0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaButtonInteractionType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"BUTTONINTERACTIONTYPE_UNKNOWN";
    v2 = @"BUTTONINTERACTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7EE8[a1];
    v2 = off_1E78B7F08[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CAARSchemaCAARDomainProtectionLevel.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CAARDOMAINPROTECTIONLEVEL_UNKNOWN";
    v2 = @"CAARDOMAINPROTECTIONLEVEL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7F28[a1];
    v2 = off_1E78B7F48[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CAMSchemaCAMAction.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"CAMACTION_UNKNOWN";
    v2 = @"CAMACTION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7F68[a1];
    v2 = off_1E78B7FA0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CAMSchemaCAMFeature.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CAMFEATURE_UNKNOWN";
    v2 = @"CAMFEATURE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B7FD8[a1];
    v2 = off_1E78B7FF8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDADataCollectionGroup.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"CDADATACOLLECTIONGROUP_UNKNOWN";
    v2 = @"CDADATACOLLECTIONGROUP_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8018[a1];
    v2 = off_1E78B8040[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDADecision.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CDADECISION_UNKNOWN";
    v2 = @"CDADECISION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8068[a1];
    v2 = off_1E78B8080[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDADeviceClass.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"CDADEVICECLASS_UNKNOWN";
    v2 = @"CDADEVICECLASS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8098[a1];
    v2 = off_1E78B8100[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDAState.description.getter(unsigned int a1)
{
  if (a1 > 0x12)
  {
    v1 = @"CDASTATE_UNKNOWN";
    v2 = @"CDASTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8168[a1];
    v2 = off_1E78B8200[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDATemporalUtilityState.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CDATEMPORALUTILITYSTATE_UNKNOWN";
    v2 = @"CDATEMPORALUTILITYSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8298[a1];
    v2 = off_1E78B82B8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDATrigger.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"CDATRIGGER_UKNOWN";
    v2 = @"CDATRIGGER_UKNOWN";
  }

  else
  {
    v1 = off_1E78B82D8[a1];
    v2 = off_1E78B8320[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDATrumpReason.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"CDATRUMPREASON_UNKNOWN";
    v2 = @"CDATRUMPREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8368[a1];
    v2 = off_1E78B83B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CDASchemaCDAUserFeedbackStatus.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"CDAUSERFEEDBACKSTATUS_UNKNOWN";
    v2 = @"CDAUSERFEEDBACKSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B83F8[a1];
    v2 = off_1E78B8420[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMAssetSetupErrorDomain.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"CDMASSETSETUPERRORDOMAIN_UNKNOWN";
    v2 = @"CDMASSETSETUPERRORDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8448[a1];
    v2 = off_1E78B8490[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMClientSetupErrorDomain.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CDMCLIENTSETUPERRORDOMAIN_UNKNOWN";
    v2 = @"CDMCLIENTSETUPERRORDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B84D8[a1];
    v2 = off_1E78B84F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMClientSetupFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CDMCLIENTSETUPFAILUREREASON_UNKNOWN";
    v2 = @"CDMCLIENTSETUPFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8508[a1];
    v2 = off_1E78B8528[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMClientWarmupErrorDomain.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CDMCLIENTWARMUPERRORDOMAIN_UNKNOWN";
    v2 = @"CDMCLIENTWARMUPERRORDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8548[a1];
    v2 = off_1E78B8560[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMCorrectionType.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"CDMCORRECTIONTYPE_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMMatcherName.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"CDMMATCHERNAME_UNKNOWN";
    v2 = @"CDMMATCHERNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8578[a1];
    v2 = off_1E78B85C8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMMemoryPressure.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CDMMEMORYPRESSURE_UNKNOWN";
    v2 = @"CDMMEMORYPRESSURE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8618[a1];
    v2 = off_1E78B8638[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMParserAlgorithmType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CDMPARSERALGORITHMTYPE_UNKNOWN";
    v2 = @"CDMPARSERALGORITHMTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8658[a1];
    v2 = off_1E78B8678[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMParserIdentifier.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"CDMPARSERIDENTIFIER_UNKNOWN";
    v2 = @"CDMPARSERIDENTIFIER_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8698[a1];
    v2 = off_1E78B86E8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMReformType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"CDMREFORMTYPE_UNKNOWN";
    v2 = @"CDMREFORMTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8738[a1];
    v2 = off_1E78B8760[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMRepetitionType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"CDMREPETITIONTYPE_UNKNOWN";
    v2 = @"CDMREPETITIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8788[a1];
    v2 = off_1E78B87B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMRequestFailureCode.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"CDMREQUESTFAILURECODE_UNKNOWN";
    v2 = @"CDMREQUESTFAILURECODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B87D8[a1];
    v2 = off_1E78B8840[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMRewriteType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"CDMREWRITETYPE_UNKNOWN";
    v2 = @"CDMREWRITETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B88A8[a1];
    v2 = off_1E78B88D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMServiceFailureCode.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"CDMSERVICEFAILURECODE_UNKNOWN";
    v2 = @"CDMSERVICEFAILURECODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B88F8[a1];
    v2 = off_1E78B8928[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMServiceGraphErrorDomain.description.getter(unsigned int a1)
{
  if (a1 > 0x16)
  {
    v1 = @"CDMSERVICEGRAPHERRORDOMAIN_UNKNOWN";
    v2 = @"CDMSERVICEGRAPHERRORDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8958[a1];
    v2 = off_1E78B8A10[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMServiceGraphName.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"CDMSERVICEGRAPHNAME_UNKNOWN";
    v2 = @"CDMSERVICEGRAPHNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8AC8[a1];
    v2 = off_1E78B8B08[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMServiceName.description.getter(unsigned int a1)
{
  if (a1 > 0x2A)
  {
    v1 = @"CDMSERVICENAME_UNKNOWN";
    v2 = @"CDMSERVICENAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8B48[a1];
    v2 = off_1E78B8CA0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMServiceSetupAttemptFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_UNKNOWN";
    v2 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8DF8[a1];
    v2 = off_1E78B8E10[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMServiceType.description.getter(unsigned int a1)
{
  if (a1 > 0x25)
  {
    v1 = @"CDMSERVICETYPE_UNKNOWN";
    v2 = @"CDMSERVICETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B8E28[a1];
    v2 = off_1E78B8F58[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMServiceWarmupAttemptFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CDMSERVICEWARMUPATTEMPTFAILUREREASON_UNKNOWN";
    v2 = @"CDMSERVICEWARMUPATTEMPTFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9088[a1];
    v2 = off_1E78B90A0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMTokenizationInputType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CDMTOKENIZATIONINPUTTYPE_UNKNOWN";
    v2 = @"CDMTOKENIZATIONINPUTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B90B8[a1];
    v2 = off_1E78B90D8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMXPCEventProcessingFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CDMXPCEVENTPROCESSINGFAILUREREASON_UNKNOWN";
    v2 = @"CDMXPCEVENTPROCESSINGFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B90F8[a1];
    v2 = off_1E78B9118[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMXPCEventProcessingType.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"CDMXPCEVENTPROCESSINGTYPE_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMXPCSystemEventType.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"CDMXPCSYSTEMEVENTTYPE_UNKNOWN";
    v2 = @"CDMXPCSYSTEMEVENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9138[a1];
    v2 = off_1E78B9170[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaCDMXPCType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CDMXPCTYPE_UNKNOWN";
    v2 = @"CDMXPCTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B91A8[a1];
    v2 = off_1E78B91C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CloudKitSchemaCKChangeType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CKCHANGETYPE_UNKNOWN";
    v2 = @"CKCHANGETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B91D8[a1];
    v2 = off_1E78B91F8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CloudKitSchemaCKErrorType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"CKERRORTYPE_UNKNOWN";
    v2 = @"CKERRORTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9218[a1];
    v2 = off_1E78B9240[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPAppIntentClassifierModelType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_UNKNOWN";
    v2 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9268[a1];
    v2 = off_1E78B9280[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPComparatorName.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"CLPCOMPARATORNAME_UNKNOWN";
    v2 = @"CLPCOMPARATORNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9298[a1];
    v2 = off_1E78B92D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPError.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CLPERROR_UNKNOWN";
    v2 = @"CLPERROR_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9308[a1];
    v2 = off_1E78B9328[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPEvaluationEnvironment.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CLPEVALUATIONENVIRONMENT_UNKNOWN";
    v2 = @"CLPEVALUATIONENVIRONMENT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9348[a1];
    v2 = off_1E78B9368[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPEvaluationType.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"CLPEVALUATIONTYPE_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPExperimentType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CLPEXPERIMENTTYPE_UNKNOWN";
    v2 = @"CLPEXPERIMENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9388[a1];
    v2 = off_1E78B93A8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPRecipeType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CLPRECIPETYPE_UNKNOWN";
    v2 = @"CLPRECIPETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B93C8[a1];
    v2 = off_1E78B93E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CLPInstSchemaCLPReplayType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CLPREPLAYTYPE_UNKNOWN";
    v2 = @"CLPREPLAYTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B93F8[a1];
    v2 = off_1E78B9418[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CMSchemaCMError.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CMERROR_UNKNOWN";
    v2 = @"CMERROR_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9438[a1];
    v2 = off_1E78B9450[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CMSchemaCMSearchStrategy.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CMSEARCHSTRATEGY_UNKNOWN";
    v2 = @"CMSEARCHSTRATEGY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9468[a1];
    v2 = off_1E78B9480[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CNVSchemaCNVBypassReason.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"CNVBYPASSREASON_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CNVSchemaCNVCancellationReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CNVCANCELLATIONREASON_UNKNOWN";
    v2 = @"CNVCANCELLATIONREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9498[a1];
    v2 = off_1E78B94B8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CNVSchemaCNVEagerStatus.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CNVEAGERSTATUS_UNKNOWN";
    v2 = @"CNVEAGERSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B94D8[a1];
    v2 = off_1E78B94F8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CNVSchemaCNVExecutionFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CNVEXECUTIONFAILURE_UNKNOWN";
    v2 = @"CNVEXECUTIONFAILURE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9518[a1];
    v2 = off_1E78B9530[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CNVSchemaCNVExecutionOverrideDecision.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"CNVEXECUTIONOVERRIDEDECISION_UNKNOWN";
    v2 = @"CNVEXECUTIONOVERRIDEDECISION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9548[a1];
    v2 = off_1E78B9588[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CNVSchemaCNVReformationFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CNVREFORMATIONFAILURE_UNKNOWN";
    v2 = @"CNVREFORMATIONFAILURE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9858[a1];
    v2 = off_1E78B9870[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CNVSchemaCNVTransformer.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"CNVTRANSFORMER_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCallAppType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CALLAPPTYPE_UNKNOWN";
    v2 = @"CALLAPPTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9888[a1];
    v2 = off_1E78B98A8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCallState.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"CALLSTATE_UNKNOWN";
    v2 = @"CALLSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B98C8[a1];
    v2 = off_1E78B98F8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCallType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CALLTYPE_UNKNOWN";
    v2 = @"CALLTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9928[a1];
    v2 = off_1E78B9940[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCarPlayConnection.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"CARPLAYCONNECTION_UNKNOWN";
    v2 = @"CARPLAYCONNECTION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9958[a1];
    v2 = off_1E78B9978[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCardSource.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CARDSOURCE_UNKNOWN_CARD_SOURCE";
    v2 = @"CARDSOURCE_UNKNOWN_CARD_SOURCE";
  }

  else
  {
    v1 = off_1E78B9998[a1];
    v2 = off_1E78B99B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCasinoType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"CASINO_UNKNOWN_CASINO_TYPE";
    v2 = @"CASINO_UNKNOWN_CASINO_TYPE";
  }

  else
  {
    v1 = off_1E78B99C8[a1];
    v2 = off_1E78B99E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaClockIsolationLevel.description.getter(int a1)
{
  v1 = @"UNKNOWN";
  if (a1 == 2)
  {
    v1 = @"ISOLATED";
  }

  if (a1 == 1)
  {
    v2 = @"NONE";
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCompletionStatus.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"COMPLETIONSTATUS_UNKNOWN_COMPLETION_STATUS";
    v2 = @"COMPLETIONSTATUS_UNKNOWN_COMPLETION_STATUS";
  }

  else
  {
    v1 = off_1E78B99F8[a1];
    v2 = off_1E78B9A30[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaComponentInvocationSource.description.getter(unsigned int a1)
{
  if (a1 > 0xD)
  {
    v1 = @"COMPONENTINVOCATIONSOURCE_UNKNOWN";
    v2 = @"COMPONENTINVOCATIONSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9A68[a1];
    v2 = off_1E78B9AD8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaComponentName.description.getter(unsigned int a1)
{
  if (a1 > 0x42)
  {
    v1 = @"COMPONENTNAME_UNKNOWN";
    v2 = @"COMPONENTNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78B9B48[a1];
    v2 = off_1E78B9D60[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaConnectionType.description.getter(unsigned int a1)
{
  if (a1 > 0xE)
  {
    v1 = @"CONNECTIONTYPE_UNKNOWN_CONNECTION_TYPE";
    v2 = @"CONNECTIONTYPE_UNKNOWN_CONNECTION_TYPE";
  }

  else
  {
    v1 = off_1E78B9F78[a1];
    v2 = off_1E78B9FF0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaCountryCode.description.getter(unsigned int a1)
{
  if (a1 > 0xFA)
  {
    v1 = @"COUNTRYCODE_UNKNOWN";
    v2 = @"COUNTRYCODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BA068[a1];
    v2 = off_1E78BA840[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t DHTSchemaDHTTriggerEvent.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"DHTTRIGGEREVENT_UNKNOWN";
    v2 = @"DHTTRIGGEREVENT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB018[a1];
    v2 = off_1E78BB030[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t DIMSchemaDIMSearchDataOptOutState.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"SEARCHDATAOPTOUTSTATE_UNKNOWN";
    v2 = @"SEARCHDATAOPTOUTSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB048[a1];
    v2 = off_1E78BB060[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t DIMSchemaDIMWatchArmOrientation.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"WATCHARMORIENTATION_UNKNOWN";
    v2 = @"WATCHARMORIENTATION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB078[a1];
    v2 = off_1E78BB090[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t DUSchemaDUResponseStatus.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"SUCCESS");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDataCollectionRedactionType.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"REMOTE_STORAGE");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDataSharingOptInState.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"UNKNOWN";
    v2 = @"UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB0A8[a1];
    v2 = off_1E78BB0C8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDeviceFamily.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"DEVICEFAMILY_UNKNOWN";
    v2 = @"DEVICEFAMILY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB0E8[a1];
    v2 = off_1E78BB130[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDeviceSensitivityState.description.getter(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = @"DEVICE_SENSITIVITY_STATE_DEFAULT";
    v2 = @"DEVICE_SENSITIVITY_STATE_DEFAULT";
  }

  else
  {
    v1 = off_1E78BB178[a1];
    v2 = off_1E78BB1D8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDeviceThermalState.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"DEVICETHERMALSTATE_UNKNOWN";
    v2 = @"DEVICETHERMALSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB238[a1];
    v2 = off_1E78BB260[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t DialogEngineSchemaDialogEngineNamedEntityCatId.description.getter(unsigned int a1)
{
  if (a1 > 0x26)
  {
    v1 = @"DIALOGENGINENAMEDENTITYCATID__UNKNOWN";
    v2 = @"DIALOGENGINENAMEDENTITYCATID__UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB288[a1];
    v2 = off_1E78BB3C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t DialogEngineSchemaDialogEngineNamedEntityParameter.description.getter(unsigned int a1)
{
  if (a1 > 0x45)
  {
    v1 = @"DIALOGENGINENAMEDENTITYPARAMETER__UNKNOWN";
    v2 = @"DIALOGENGINENAMEDENTITYPARAMETER__UNKNOWN";
  }

  else
  {
    v1 = off_1E78BB4F8[a1];
    v2 = off_1E78BB728[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDictationEndPointType.description.getter(unsigned int a1)
{
  if (a1 > 0x18)
  {
    v1 = @"DICTATIONENDPOINTTYPE_UNKNOWN_DICTATION_ENDPOINT_TYPE";
    v2 = @"DICTATIONENDPOINTTYPE_UNKNOWN_DICTATION_ENDPOINT_TYPE";
  }

  else
  {
    v1 = off_1E78BB958[a1];
    v2 = off_1E78BBA20[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDictationEuclidAlternativesEventType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"EUCLID_ALTERNATIVES_EVENT_UNKNOWN";
    v2 = @"EUCLID_ALTERNATIVES_EVENT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BBAE8[a1];
    v2 = off_1E78BBB00[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDictationEuclidSpeechAlternativesType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"DICTATIONEUCLIDSPEECHALTERNATIVESTYPE_UNKNOWN";
    v2 = @"DICTATIONEUCLIDSPEECHALTERNATIVESTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BBB18[a1];
    v2 = off_1E78BBB30[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDictationModelSource.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"DICTATIONMODEL_UNKNOWN_DICTATION_MODEL_SOURCE";
    v2 = @"DICTATIONMODEL_UNKNOWN_DICTATION_MODEL_SOURCE";
  }

  else
  {
    v1 = off_1E78BBB48[a1];
    v2 = off_1E78BBB60[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaDismissalReason.description.getter(unsigned int a1)
{
  if (a1 > 0x34)
  {
    v1 = @"DISMISSALREASON_UNKNOWN_DISMISSAL_REASON";
    v2 = @"DISMISSALREASON_UNKNOWN_DISMISSAL_REASON";
  }

  else
  {
    v1 = off_1E78BBB78[a1];
    v2 = off_1E78BBD20[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t EXPSchemaEXPRolloutAllocationStatus.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"EXPROLLOUTALLOCATIONSTATUS_UNKNOWN";
    v2 = @"EXPROLLOUTALLOCATIONSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BBEC8[a1];
    v2 = off_1E78BBEE8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t EXPSiriSchemaEXPSiriDiffOutcome.description.getter(unsigned int a1)
{
  if (a1 > 0x16)
  {
    v1 = @"EXPSIRIDIFFOUTCOME_UNKNOWN";
    v2 = @"EXPSIRIDIFFOUTCOME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BBF08[a1];
    v2 = off_1E78BBFC0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t EXPSchemaEXPTreatmentAllocationStatus.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN";
    v2 = @"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC078[a1];
    v2 = off_1E78BC098[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaEndPointType.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"ENDPOINTTYPE_UNKNOWN_END_POINT_TYPE";
    v2 = @"ENDPOINTTYPE_UNKNOWN_END_POINT_TYPE";
  }

  else
  {
    v1 = off_1E78BC0B8[a1];
    v2 = off_1E78BC0F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaEnhancedVoiceTriggerMode.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ENHANCEDVOICETRIGGERMODE_UNKNOWN";
    v2 = @"ENHANCEDVOICETRIGGERMODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC128[a1];
    v2 = off_1E78BC150[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaEventJoinability.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"JOINABILITY_NONE";
    v2 = @"JOINABILITY_NONE";
  }

  else
  {
    v1 = off_1E78BC178[a1];
    v2 = off_1E78BC1A0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ExecutorSiriSchemaExecutorAppIntentError.description.getter(int a1)
{
  if (!v2 & v1)
  {
    switch(a1)
    {
      case 1:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_PRE_FLIGHT_CHECK_FAILURE";
        goto LABEL_40;
      case 2:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_PRECISE_LOCATION_DISABLED";
        goto LABEL_40;
      case 3:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_LOCATION_DISABLED";
        goto LABEL_40;
      case 4:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_WIFI_DISABLED";
        goto LABEL_40;
      case 5:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_BLUETOOTH_DISABLED";
        goto LABEL_40;
      case 6:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_NETWORK_FAILURE";
        goto LABEL_40;
      case 7:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_PARTIAL_FAILURE";
        goto LABEL_40;
      case 8:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_UNSUPPORTED_ON_DEVICE";
        goto LABEL_40;
      case 9:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_FEATURE_CURRENTLY_RESTRICTED";
        goto LABEL_40;
      case 10:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_ENTITY_NOT_FOUND";
        goto LABEL_40;
      case 11:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_ACTION_NOT_ALLOWED";
        goto LABEL_40;
      case 12:
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_DEVELOPER_DEFINED_ERROR";
        goto LABEL_40;
      default:
        v4 = @"EXECUTORAPPINTENTERROR_UNKNOWN";
        v5 = @"EXECUTORAPPINTENTERROR_RUNTIMEERROR_PROTECTED_APP_UNLOCK_REQUIRED";
        if (a1 == 301)
        {
          v4 = @"EXECUTORAPPINTENTERROR_TOOLEXECUTOR_PREDEFINED";
        }

        if (a1 != 201)
        {
          v5 = v4;
        }

        if (a1 == 200)
        {
          v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_UNKNOWN";
        }

        else
        {
          v3 = v5;
        }

        if (a1 == 200)
        {
          v6 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_UNKNOWN";
        }

        else
        {
          v6 = v5;
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 'd':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONFAILURE_UNKNOWN";
        break;
      case 'e':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_SYSTEMREQUIREMENT_DEVICE_UNLOCK_REQUIRED";
        break;
      case 'f':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_APP_REQUIREMENT_SIGN_IN_REQUIRED";
        break;
      case 'g':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_APP_REQUIREMENT_ACCOUNT_SETUP_REQUIRED";
        break;
      case 'h':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_APP_REQUIREMENT_USER_CONFIRMATION_REQUIRED";
        break;
      case 'i':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_SIRI_PERMISSION_REQUIRED";
        break;
      case 'j':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_SHORTCUTS_PERMISSION_REQUIRED";
        break;
      case 'k':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_PRECISE_LOCATION_PERMISSION_REQUIRED";
        break;
      case 'l':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_LOCATION_PERMISSION_REQUIRED";
        break;
      case 'm':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_WIFI_PERMISSION_REQUIRED";
        break;
      case 'n':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_BLUETOOTH_PERMISSION_REQUIRED";
        break;
      case 'o':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_PHOTOS_PERMISSION_REQUIRED";
        break;
      case 'p':
        v3 = @"EXECUTORAPPINTENTERROR_ACTIONREQUIREMENT_PERMISSIONREQUIREMENT_CONTACTS_PERMISSION_REQUIRED";
        break;
      default:
        JUMPOUT(0);
    }

LABEL_40:
    v6 = v3;
  }

  v7 = v3;
  v8 = v6;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ExecutorSiriSchemaExecutorSearchToolQueryType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"EXECUTORSEARCHTOOLQUERYTYPE_UNKNOWN";
    v2 = @"EXECUTORSEARCHTOOLQUERYTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC1C8[a1];
    v2 = off_1E78BC1E8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t PFAExtensionResult.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"EXTENSIONRESULT_UNKNOWN";
    v2 = @"EXTENSIONRESULT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC208[a1];
    v2 = off_1E78BC230[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLActionResolutionState.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLACTIONRESOLUTIONSTATE_UNKNOWN";
    v2 = @"FLACTIONRESOLUTIONSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC258[a1];
    v2 = off_1E78BC270[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLCandidateOutcome.description.getter(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = @"FLCANDIDATEOUTCOME_UNKNOWN";
    v2 = @"FLCANDIDATEOUTCOME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC288[a1];
    v2 = off_1E78BC2E8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLCandidateResolution.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLCANDIDATERESOLUTION_UNKNOWN";
    v2 = @"FLCANDIDATERESOLUTION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC348[a1];
    v2 = off_1E78BC370[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLEvaluationSource.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"FLEVALUATIONSOURCE_UNKNOWN";
    v2 = @"FLEVALUATIONSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC398[a1];
    v2 = off_1E78BC3E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLEvaluationType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLEVALUATIONTYPE_UNKNOWN";
    v2 = @"FLEVALUATIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC428[a1];
    v2 = off_1E78BC440[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLEvaluationVote.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLEVALUATIONVOTE_UNKNOWN";
    v2 = @"FLEVALUATIONVOTE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC458[a1];
    v2 = off_1E78BC478[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLEvaluator.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"FLEVALUATOR_UNKNOWN";
    v2 = @"FLEVALUATOR_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC498[a1];
    v2 = off_1E78BC4C8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWAppResolutionType.description.getter(unsigned int a1)
{
  if (a1 > 0xE)
  {
    v1 = @"FLOWAPPRESOLUTIONTYPE_UNKNOWN";
    v2 = @"FLOWAPPRESOLUTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC4F8[a1];
    v2 = off_1E78BC570[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWBriefingEnabledFeatures.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"FLOWBRIEFINGENABLEDFEATURES_UNKNOWN";
    v2 = @"FLOWBRIEFINGENABLEDFEATURES_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC5E8[a1];
    v2 = off_1E78BC628[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWBriefingTaskAttribute.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"FLOWBRIEFINGTASKATTRIBUTE_UNKNOWN";
    v2 = @"FLOWBRIEFINGTASKATTRIBUTE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC668[a1];
    v2 = off_1E78BC6D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWEmergencyCallType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWEMERGENCYCALLTYPE_UNKNOWN";
    v2 = @"FLOWEMERGENCYCALLTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC738[a1];
    v2 = off_1E78BC758[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeAutomationCommandErrorReason.description.getter(unsigned int a1)
{
  if (a1 > 0xA)
  {
    v1 = @"FLOWHOMEAUTOMATIONCOMMANDERRORREASON_UNKOWN";
    v2 = @"FLOWHOMEAUTOMATIONCOMMANDERRORREASON_UNKOWN";
  }

  else
  {
    v1 = off_1E78BC778[a1];
    v2 = off_1E78BC7D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeAutomationCommandType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLOWHOMEAUTOMATIONCOMMANDTYPE_UNKNOWN";
    v2 = @"FLOWHOMEAUTOMATIONCOMMANDTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC828[a1];
    v2 = off_1E78BC850[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeAutomationConditionType.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"FLOWHOMEAUTOMATIONCONDITIONTYPE_UNKNOWN";
    v2 = @"FLOWHOMEAUTOMATIONCONDITIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC878[a1];
    v2 = off_1E78BC8A8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeAutomationOutcome.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWHOMEAUTOMATIONOUTCOME_UNKOWN";
    v2 = @"FLOWHOMEAUTOMATIONOUTCOME_UNKOWN";
  }

  else
  {
    v1 = off_1E78BC8D8[a1];
    v2 = off_1E78BC8F8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeAutomationRequestType.description.getter(unsigned int a1)
{
  if (a1 > 0xA)
  {
    v1 = @"FLOWHOMEAUTOMATIONREQUESTTYPE_UNKNOWN";
    v2 = @"FLOWHOMEAUTOMATIONREQUESTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC918[a1];
    v2 = off_1E78BC970[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeCommunicationEntityType.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"FLOWHOMECOMMUNICATIONENTITYTYPE_UNKNOWN";
    v2 = @"FLOWHOMECOMMUNICATIONENTITYTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BC9C8[a1];
    v2 = off_1E78BCA00[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeCommunicationTaskType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLOWHOMECOMMUNICATIONTASKTYPE_UNKNOWN";
    v2 = @"FLOWHOMECOMMUNICATIONTASKTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCA38[a1];
    v2 = off_1E78BCA60[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeContainerType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLOWHOMECONTAINERTYPE_UNKNOWN";
    v2 = @"FLOWHOMECONTAINERTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCA88[a1];
    v2 = off_1E78BCAB0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWHomeKitServiceType.description.getter(unsigned int a1)
{
  if (a1 > 0x2B)
  {
    v1 = @"FLOWHOMEKITSERVICETYPE_UNKNOWN";
    v2 = @"FLOWHOMEKITSERVICETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCAD8[a1];
    v2 = off_1E78BCC38[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWInformationPluginEventType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWINFORMATIONPLUGINEVENTTYPE_UNKNOWN";
    v2 = @"FLOWINFORMATIONPLUGINEVENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCD98[a1];
    v2 = off_1E78BCDB0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWKGQAUsecase.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"FLOWKGQAUSECASE_UNKNOWN";
    v2 = @"FLOWKGQAUSECASE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCDC8[a1];
    v2 = off_1E78BCE08[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWLINKSchemaFLOWLINKActionCancellationInitiator.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWLINKACTIONCANCELLATIONINITIATOR_UNKNOWN";
    v2 = @"FLOWLINKACTIONCANCELLATIONINITIATOR_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCE48[a1];
    v2 = off_1E78BCE60[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWLINKSchemaFLOWLINKEntityDisambiguationReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWLINKENTITYDISAMBIGUATIONREASON_UNKNOWN";
    v2 = @"FLOWLINKENTITYDISAMBIGUATIONREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCE78[a1];
    v2 = off_1E78BCE90[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWLINKSchemaFLOWLINKExecutionError.description.getter(int a1)
{
  switch(a1)
  {
    case 2000:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNKNOWN";
      goto LABEL_23;
    case 2001:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_MALFORMED_ACTION";
      goto LABEL_23;
    case 2002:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_ACTION_NOT_FOUND";
      goto LABEL_23;
    case 2003:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNDEFINED_PARAMETER";
      goto LABEL_23;
    case 2004:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNSUPPORTED_VALUE_TYPE";
      goto LABEL_23;
    case 2005:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_NON_OPTIONAL_PARAMETER_IS_NIL";
      goto LABEL_23;
    case 2006:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_NO_CONTEXT";
      goto LABEL_23;
    case 2007:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_USER_CANCELLED";
      goto LABEL_23;
    case 2008:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNRESOLVED_PARAMETER";
      goto LABEL_23;
    case 2009:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_CUSTOM_DIALOG";
      goto LABEL_23;
    case 2010:
      v1 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_CLIENT_CANCELLED";
LABEL_23:
      v4 = v1;
      break;
    default:
      v2 = @"FLOWLINKEXECUTIONERROR_UNKNOWN";
      v3 = @"FLOWLINKEXECUTIONERROR_DIALOG_GENERATION_ERROR";
      if (a1 == 1)
      {
        v2 = @"FLOWLINKEXECUTIONERROR_LINK_PLUGIN_ERROR";
      }

      if (a1 != 2)
      {
        v3 = v2;
      }

      if (a1 == 3)
      {
        v1 = @"FLOWLINKEXECUTIONERROR_TARGET_BUNDLE_ERROR";
      }

      else
      {
        v1 = v3;
      }

      if (a1 == 3)
      {
        v4 = @"FLOWLINKEXECUTIONERROR_TARGET_BUNDLE_ERROR";
      }

      else
      {
        v4 = v3;
      }

      break;
  }

  v5 = v1;
  v6 = v4;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWLocationAccessPermissionFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"FLOWLOCATIONACCESSPERMISSIONFAILUREREASON_UNKNOWN";
    v2 = @"FLOWLOCATIONACCESSPERMISSIONFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCEA8[a1];
    v2 = off_1E78BCED8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWLocationAccessPermissionStatusResult.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWLOCATIONACCESSPERMISSIONSTATUSRESULT_UNKNOWN";
    v2 = @"FLOWLOCATIONACCESSPERMISSIONSTATUSRESULT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCF08[a1];
    v2 = off_1E78BCF28[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMapsFeature.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"FLOWMAPSFEATURE_UNKNOWN";
    v2 = @"FLOWMAPSFEATURE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BCF48[a1];
    v2 = off_1E78BCFB0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMapsQueryLabel.description.getter(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = @"FLOWMAPSQUERYLABEL_UNKNOWN";
    v2 = @"FLOWMAPSQUERYLABEL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD018[a1];
    v2 = off_1E78BD078[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMediaPlayerChosenExecutionSource.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLOWMEDIAPLAYERCHOSENEXECUTIONSOURCE_UNKNOWN";
    v2 = @"FLOWMEDIAPLAYERCHOSENEXECUTIONSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD0D8[a1];
    v2 = off_1E78BD100[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMediaPlayerContentSource.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWMEDIAPLAYERCONTENTSOURCE_UNKNOWN";
    v2 = @"FLOWMEDIAPLAYERCONTENTSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD128[a1];
    v2 = off_1E78BD140[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMediaPlayerEndpoint.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"FLOWMEDIAPLAYERENDPOINT_UNKNOWN";
    v2 = @"FLOWMEDIAPLAYERENDPOINT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD158[a1];
    v2 = off_1E78BD198[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMediaPlayerPlaylistSubtype.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWMEDIAPLAYERPLAYLISTSUBTYPE_UNKNOWN";
    v2 = @"FLOWMEDIAPLAYERPLAYLISTSUBTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD1D8[a1];
    v2 = off_1E78BD1F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMediaPlayerRadioStationSubtype.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"FLOWMEDIAPLAYERRADIOSTATIONSUBTYPE_UNKNOWN";
    v2 = @"FLOWMEDIAPLAYERRADIOSTATIONSUBTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD208[a1];
    v2 = off_1E78BD250[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"FLOWMEDIAPLAYERSETAIRPLAYROUTESSTATUS_UNKNOWN";
    v2 = @"FLOWMEDIAPLAYERSETAIRPLAYROUTESSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD298[a1];
    v2 = off_1E78BD2D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMediaType.description.getter(unsigned int a1)
{
  if (a1 > 0x1C)
  {
    v1 = @"FLOWMEDIATYPE_UNKNOWN";
    v2 = @"FLOWMEDIATYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD548[a1];
    v2 = off_1E78BD630[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWMessageType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLOWMESSAGETYPE_UNKNOWN";
    v2 = @"FLOWMESSAGETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD718[a1];
    v2 = off_1E78BD740[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPegasusProductArea.description.getter(unsigned int a1)
{
  if (a1 > 0xF)
  {
    v1 = @"FLOWPEGASUSPRODUCTAREA_UNKNOWN";
    v2 = @"FLOWPEGASUSPRODUCTAREA_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD768[a1];
    v2 = off_1E78BD7E8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPegasusProvider.description.getter(unsigned int a1)
{
  if (a1 > 0x10)
  {
    v1 = @"FLOWPEGASUSPROVIDER_UNKNOWN";
    v2 = @"FLOWPEGASUSPROVIDER_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD868[a1];
    v2 = off_1E78BD8F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPersonType.description.getter(unsigned int a1)
{
  if (a1 > 0xE)
  {
    v1 = @"FLOWPERSONTYPE_UNKNOWN";
    v2 = @"FLOWPERSONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD978[a1];
    v2 = off_1E78BD9F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPhoneCallAppType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLOWPHONECALLAPPTYPE_UNKNOWN";
    v2 = @"FLOWPHONECALLAPPTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDA68[a1];
    v2 = off_1E78BDA90[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPhoneCallType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWPHONECALLTYPE_UNKNOWN";
    v2 = @"FLOWPHONECALLTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDAB8[a1];
    v2 = off_1E78BDAD0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPhotosEntityType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWPHOTOSENTITYTYPE_UNKNOWN";
    v2 = @"FLOWPHOTOSENTITYTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDAE8[a1];
    v2 = off_1E78BDB00[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPhotosFaceType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWPHOTOSFACETYPE_UNKNOWN";
    v2 = @"FLOWPHOTOSFACETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDB18[a1];
    v2 = off_1E78BDB38[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWPhotosTaskType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWPHOTOSTASKTYPE_UNKNOWN";
    v2 = @"FLOWPHOTOSTASKTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDB58[a1];
    v2 = off_1E78BDB78[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWProfileSwitchByNameType.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"FLOWPROFILESWITCHBYNAMETYPE_UNKNOWN";
    v2 = @"FLOWPROFILESWITCHBYNAMETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDB98[a1];
    v2 = off_1E78BDBE0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWProfileSwitchFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLOWPROFILESWITCHFAILUREREASON_UNKNOWN";
    v2 = @"FLOWPROFILESWITCHFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDC28[a1];
    v2 = off_1E78BDC50[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWProfileSwitchMethod.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWPROFILESWITCHMETHOD_UNKNOWN";
    v2 = @"FLOWPROFILESWITCHMETHOD_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDC78[a1];
    v2 = off_1E78BDC98[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWProfileSwitchOutcome.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWPROFILESWITCHOUTCOME_UNKNOWN";
    v2 = @"FLOWPROFILESWITCHOUTCOME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDCB8[a1];
    v2 = off_1E78BDCD0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWProtectedAppType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWPROTECTEDAPPTYPE_UNKNOWN";
    v2 = @"FLOWPROTECTEDAPPTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDCE8[a1];
    v2 = off_1E78BDD08[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWReadMessageType.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"FLOWREADMESSAGETYPE_UNKNOWN";
    v2 = @"FLOWREADMESSAGETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDD28[a1];
    v2 = off_1E78BDD70[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWRecipientType.description.getter(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = @"FLOWRECIPIENTTYPE_UNKNOWN";
    v2 = @"FLOWRECIPIENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDDB8[a1];
    v2 = off_1E78BDE18[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWSPORTSUsecase.description.getter(unsigned int a1)
{
  if (a1 > 0x1F)
  {
    v1 = @"FLOWSPORTSUSECASE_UNKNOWN";
    v2 = @"FLOWSPORTSUSECASE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BDE78[a1];
    v2 = off_1E78BDF78[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWSafariTaskType.description.getter(unsigned int a1)
{
  if (a1 > 0xA)
  {
    v1 = @"FLOWSAFARITASKTYPE_UNKOWN";
    v2 = @"FLOWSAFARITASKTYPE_UNKOWN";
  }

  else
  {
    v1 = off_1E78BE078[a1];
    v2 = off_1E78BE0D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWSearchCallHistoryIntent.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWSEARCHCALLHISTORYINTENT_UNKNOWN";
    v2 = @"FLOWSEARCHCALLHISTORYINTENT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BE128[a1];
    v2 = off_1E78BE140[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWSmsAttachmentType.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"FLOWSMSATTACHMENTTYPE_UNKNOWN";
    v2 = @"FLOWSMSATTACHMENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BE158[a1];
    v2 = off_1E78BE1A0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWSportName.description.getter(unsigned int a1)
{
  if (a1 > 0xA)
  {
    v1 = @"FLOWSPORTNAME_UNKNOWN";
    v2 = @"FLOWSPORTNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BE1E8[a1];
    v2 = off_1E78BE240[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWStateType.description.getter(unsigned int a1)
{
  if (a1 > 0xD0)
  {
    v1 = @"FLOWSTATETYPE_UNKNOWN";
    v2 = @"FLOWSTATETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BE298[a1];
    v2 = off_1E78BE920[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWStatusReason.description.getter(unsigned int a1)
{
  if (a1 > 0x62)
  {
    v1 = @"FLOWSTATUSREASON_UNKNOWN";
    v2 = @"FLOWSTATUSREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BEFA8[a1];
    v2 = off_1E78BF2C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLOWSchemaFLOWSummarySourceType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"FLOWSUMMARYSOURCETYPE_UNKNOWN";
    v2 = @"FLOWSUMMARYSOURCETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF5D8[a1];
    v2 = off_1E78BF5F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLTaskPromptStatus.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"FLTASKPROMPTSTATUS_UNKNOWN";
    v2 = @"FLTASKPROMPTSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF608[a1];
    v2 = off_1E78BF630[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLTaskStatus.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"FLTASKSTATUS_UNKNOWN";
    v2 = @"FLTASKSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF658[a1];
    v2 = off_1E78BF6A0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLTrigger.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLTRIGGER_UNKNOWN";
    v2 = @"FLTRIGGER_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF6E8[a1];
    v2 = off_1E78BF708[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t FLSchemaFLUserAlignmentCategory.description.getter(unsigned int a1)
{
  if (a1 > 0xA)
  {
    v1 = @"FLUSERALIGNMENTCATEGORY_UNKNOWN";
    v2 = @"FLUSERALIGNMENTCATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF728[a1];
    v2 = off_1E78BF780[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATAccountType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"GATACCOUNTTYPE_UNKNOWN";
    v2 = @"GATACCOUNTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF7D8[a1];
    v2 = off_1E78BF7F8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATAppIntentName.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"GATAPPINTENTNAME_UNKNOWN";
    v2 = @"GATAPPINTENTNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF818[a1];
    v2 = off_1E78BF838[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATConfirmationDialogName.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"GATCONFIRMATIONDIALOGNAME_UNKNOWN";
    v2 = @"GATCONFIRMATIONDIALOGNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF858[a1];
    v2 = off_1E78BF878[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATConfirmationSnippetOutcome.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"GATCONFIRMATIONSNIPPETOUTCOME_UNKNOWN";
    v2 = @"GATCONFIRMATIONSNIPPETOUTCOME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF898[a1];
    v2 = off_1E78BF8B8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATErrorDomain.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"GATERRORDOMAIN_UNKNOWN";
    v2 = @"GATERRORDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF8D8[a1];
    v2 = off_1E78BF928[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATGeneralMediaType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"GATGENERALMEDIATYPE_UNKNOWN";
    v2 = @"GATGENERALMEDIATYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF978[a1];
    v2 = off_1E78BF9A0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATLLMAgent.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"GATLLMAGENT_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATMediaQnAUseCase.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"GATMEDIAQNAUSECASE_UNKNOWN";
    v2 = @"GATMEDIAQNAUSECASE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BF9C8[a1];
    v2 = off_1E78BF9F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATMediaType.description.getter(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = @"GATMEDIATYPE_UNKNOWN";
    v2 = @"GATMEDIATYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BFA18[a1];
    v2 = off_1E78BFA78[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GATSchemaGATUsecase.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"GATUSECASE_UNKNOWN";
    v2 = @"GATUSECASE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BFAD8[a1];
    v2 = off_1E78BFB10[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSCaller.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"GMSCALLER_UNKNOWN";
    v2 = @"GMSCALLER_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BFB48[a1];
    v2 = off_1E78BFB78[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSErrorDomain.description.getter(unsigned int a1)
{
  if (a1 > 0x30)
  {
    v1 = @"GMSERRORDOMAIN_UNKNOWN";
    v2 = @"GMSERRORDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BFBA8[a1];
    v2 = off_1E78BFD30[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSExternalPartner.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"GMSEXTERNALPARTNER_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSModelLocation.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"GMSMODELLOCATION_UNKNOWN";
    v2 = @"GMSMODELLOCATION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BFEB8[a1];
    v2 = off_1E78BFED0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSModelParty.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"GMSMODELPARTY_UNKNOWN";
    v2 = @"GMSMODELPARTY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BFEE8[a1];
    v2 = off_1E78BFF00[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSOpenAIErrorCode.description.getter(unsigned int a1)
{
  if (a1 > 0x18)
  {
    v1 = @"GMSOPENAIERRORCODE_UNKNOWN";
    v2 = @"GMSOPENAIERRORCODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BFF18[a1];
    v2 = off_1E78BFFE0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSPartnerAccountType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"GMSPARTNERACCOUNTTYPE_UNKNOWN";
    v2 = @"GMSPARTNERACCOUNTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C00A8[a1];
    v2 = off_1E78C00C8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GMSSchemaGMSUsecase.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"GMSUSECASE_UNKNOWN";
    v2 = @"GMSUSECASE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C00E8[a1];
    v2 = off_1E78C0118[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GRRSchemaGRRErrorCode.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"GRRERRORCODE_UNKNOWN";
    v2 = @"GRRERRORCODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0148[a1];
    v2 = off_1E78C0160[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GRRSchemaGRRParseType.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"GRRPARSETYPE_UNKNOWN";
    v2 = @"GRRPARSETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0178[a1];
    v2 = off_1E78C01B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t GRRSchemaGRRSourceType.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"GRRSOURCETYPE_UNKNOWN";
    v2 = @"GRRSOURCETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C01E8[a1];
    v2 = off_1E78C0220[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaGenAIAgent.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"GENAIAGENT_UNKNOWN";
    v2 = @"GENAIAGENT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0258[a1];
    v2 = off_1E78C0288[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaGradingOptInStateChangeSource.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"GRADINGOPTINSTATECHANGESOURCE_UNKNOWN";
    v2 = @"GRADINGOPTINSTATECHANGESOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C02B8[a1];
    v2 = off_1E78C0320[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALAction.description.getter(unsigned int a1)
{
  if (a1 > 0x15)
  {
    v1 = @"HALACTION_UNKNOWN";
    v2 = @"HALACTION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0388[a1];
    v2 = off_1E78C0438[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALActionResult.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"HALACTIONRESULT_UNKNOWN";
    v2 = @"HALACTIONRESULT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C04E8[a1];
    v2 = off_1E78C0508[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALConnectionType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"HALCONNECTIONTYPE_UNKNOWN";
    v2 = @"HALCONNECTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0528[a1];
    v2 = off_1E78C0540[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALContextFetchFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"HALCONTEXTFETCHFAILUREREASON_UNKNOWN";
    v2 = @"HALCONTEXTFETCHFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0558[a1];
    v2 = off_1E78C0578[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALDeviceProximity.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"HALDEVICEPROXIMITY_UNKNOWN";
    v2 = @"HALDEVICEPROXIMITY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0598[a1];
    v2 = off_1E78C05C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALDeviceSharedContext.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"HALDEVICESHAREDCONTEXT_UNKNOWN";
    v2 = @"HALDEVICESHAREDCONTEXT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C05E8[a1];
    v2 = off_1E78C0610[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALDiscoveryType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"HALDISCOVERYTYPE_UNKNOWN";
    v2 = @"HALDISCOVERYTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0638[a1];
    v2 = off_1E78C0658[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALFailureReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"HALFAILUREREASON_UNKNOWN";
    v2 = @"HALFAILUREREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0678[a1];
    v2 = off_1E78C0698[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALHomeKitTarget.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"HALHOMEKITTARGET_UNKNOWN";
    v2 = @"HALHOMEKITTARGET_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C06B8[a1];
    v2 = off_1E78C06F8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALMediaPlayerState.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"HALMEDIAPLAYERSTATE_UNKNOWN";
    v2 = @"HALMEDIAPLAYERSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0738[a1];
    v2 = off_1E78C0770[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HALSchemaHALPowerState.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"HALPOWERSTATE_UNKNOWN";
    v2 = @"HALPOWERSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C07A8[a1];
    v2 = off_1E78C07C8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HomeKitSchemaHKAccessoryCommunicationProtocol.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_UNKNOWN";
    v2 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C07E8[a1];
    v2 = off_1E78C0800[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HomeKitSchemaHKAccessoryOperationType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"HKACCESSORYOPERATIONTYPE_UNKNOWN";
    v2 = @"HKACCESSORYOPERATIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0818[a1];
    v2 = off_1E78C0830[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HomeKitSchemaHKDevicesAudioTopology.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"HKDEVICESAUDIOTOPOLOGY_NONE";
    v2 = @"HKDEVICESAUDIOTOPOLOGY_NONE";
  }

  else
  {
    v1 = off_1E78C0848[a1];
    v2 = off_1E78C0870[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t HomeKitSchemaHKTransportType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"HKTRANSPORTTYPE_UNKNOWN";
    v2 = @"HKTRANSPORTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0898[a1];
    v2 = off_1E78C08C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaHSHangupEnablementState.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"HSHANGUPENABLEMENTSTATE_UNKNOWN";
    v2 = @"HSHANGUPENABLEMENTSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C08E8[a1];
    v2 = off_1E78C0908[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaHomeKitAccessoryType.description.getter(unsigned int a1)
{
  if (a1 > 0x27)
  {
    v1 = @"HOMEKITACCESSORYTYPE_UNKNOWN_HOMEKIT_ACCESSORY_TYPE";
    v2 = @"HOMEKITACCESSORYTYPE_UNKNOWN_HOMEKIT_ACCESSORY_TYPE";
  }

  else
  {
    v1 = off_1E78C0928[a1];
    v2 = off_1E78C0A68[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaHomeKitConfiguration.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"HOMEKITCONFIGURATION_UNKNOWN";
    v2 = @"HOMEKITCONFIGURATION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0BA8[a1];
    v2 = off_1E78C0BC0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IDENTITYSchemaIDENTITYUserClassification.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"IDENTITYUSERCLASSIFICATION_UNKNOWN";
    v2 = @"IDENTITYUSERCLASSIFICATION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0BD8[a1];
    v2 = off_1E78C0C00[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IDENTITYSchemaIDENTITYUserLocation.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"IDENTITYUSERLOCATION_UNKNOWN";
    v2 = @"IDENTITYUSERLOCATION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0C28[a1];
    v2 = off_1E78C0C40[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IDENTITYSchemaIDENTITYUserPresenceSource.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"IDENTITYUSERPRESENCESOURCE_UNKNOWN";
    v2 = @"IDENTITYUSERPRESENCESOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0C58[a1];
    v2 = off_1E78C0C70[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaIERouting.description.getter(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = @"IEROUTING_UNKNOWN";
    v2 = @"IEROUTING_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0C88[a1];
    v2 = off_1E78C0CE8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaIFOutcome.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"IFOUTCOME_UNKNOWN";
    v2 = @"IFOUTCOME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0D48[a1];
    v2 = off_1E78C0DB0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaIFParticipant.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"IFPARTICIPANT_UNKNOWN";
    v2 = @"IFPARTICIPANT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0E18[a1];
    v2 = off_1E78C0E50[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaIFPayload.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"IFPAYLOAD_UNKNOWN";
    v2 = @"IFPAYLOAD_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0E88[a1];
    v2 = off_1E78C0EB8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFPlatformRequestSchemaIFPlatformRequestTarget.description.getter(int a1)
{
  if (a1 == 601)
  {
    v3 = @"IFPLATFORMTARGET_SESSION_COORDINATOR_ACCEPT";
    v4 = @"IFPLATFORMTARGET_SESSION_COORDINATOR_ACCEPT";
  }

  else
  {
    v1 = @"IFPLATFORMREQUESTTARGET_UNKNOWN";
    v2 = @"IFPLATFORMREQUESTTARGET_QUERY_DECORATION_SERVICE_HANDLE";
    if (a1 == 1)
    {
      v1 = @"IFPLATFORMREQUESTTARGET_STANDARD_PLANNER_MAKE_PLAN";
    }

    if (a1 == 501)
    {
      v1 = @"IFPLATFORMREQUESTTARGET_RESPONSE_GENERATION_SERVICE_HANDLE";
    }

    if (a1 == 401)
    {
      v1 = @"IFPLATFORMREQUESTTARGET_PLAN_RESOLVER_SERVICE_HANDLE";
    }

    if (a1 == 301)
    {
      v1 = @"IFPLATFORMREQUESTTARGET_FULL_PLANNER_SERVICE_HANDLE";
    }

    if (a1 == 201)
    {
      v1 = @"IFPLATFORMREQUESTTARGET_PLAN_OVERRIDES_SERVICE_HANDLE";
    }

    if (a1 != 101)
    {
      v2 = v1;
    }

    if (a1 == 2)
    {
      v3 = @"IFPLATFORMREQUESTTARGET_STANDARD_PLANNER_RUN";
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 2)
    {
      v4 = @"IFPLATFORMREQUESTTARGET_STANDARD_PLANNER_RUN";
    }

    else
    {
      v4 = v2;
    }
  }

  v5 = v3;
  v6 = v4;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFPlatformSchemaIFPlatformTarget.description.getter(int a1)
{
  if (a1 == 601)
  {
    v3 = @"IFPLATFORMTARGET_SESSION_COORDINATOR_ACCEPT";
    v4 = @"IFPLATFORMTARGET_SESSION_COORDINATOR_ACCEPT";
  }

  else
  {
    v1 = @"IFPLATFORMTARGET_UNKNOWN";
    v2 = @"IFPLATFORMTARGET_QUERY_DECORATION_SERVICE_SETUP";
    if (a1 == 1)
    {
      v1 = @"IFPLATFORMTARGET_STANDARD_PLANNER_MAKE_PLAN";
    }

    if (a1 == 501)
    {
      v1 = @"IFPLATFORMTARGET_RESPONSE_GENERATION_SERVICE_SETUP";
    }

    if (a1 == 401)
    {
      v1 = @"IFPLATFORMTARGET_PLAN_RESOLVER_SERVICE_SETUP";
    }

    if (a1 == 301)
    {
      v1 = @"IFPLATFORMTARGET_FULL_PLANNER_SERVICE_SETUP";
    }

    if (a1 == 201)
    {
      v1 = @"IFPLATFORMTARGET_PLAN_OVERRIDES_SERVICE_SETUP";
    }

    if (a1 != 101)
    {
      v2 = v1;
    }

    if (a1 == 2)
    {
      v3 = @"IFPLATFORMTARGET_STANDARD_PLANNER_SETUP";
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 2)
    {
      v4 = @"IFPLATFORMTARGET_STANDARD_PLANNER_SETUP";
    }

    else
    {
      v4 = v2;
    }
  }

  v5 = v3;
  v6 = v4;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTActionClass.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"IFTACTIONCLASS_UNKNOWN";
    v2 = @"IFTACTIONCLASS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0EE8[a1];
    v2 = off_1E78C0F08[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"IFTACTIONCONFIRMATIONSYSTEMSTYLEGENERATIVEAIENABLEMENTSOURCE_UNKNOWN";
    v2 = @"IFTACTIONCONFIRMATIONSYSTEMSTYLEGENERATIVEAIENABLEMENTSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0F28[a1];
    v2 = off_1E78C0F50[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTCandidateSource.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"IFTCANDIDATESOURCE_UNKNOWN";
    v2 = @"IFTCANDIDATESOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C0F78[a1];
    v2 = off_1E78C0FC0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTClientApplicationId.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"IFTCLIENTAPPLICATIONID_UNKNOWN";
    v2 = @"IFTCLIENTAPPLICATIONID_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1008[a1];
    v2 = off_1E78C1028[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTParameterNotAllowedReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"IFTPARAMETERNOTALLOWEDREASON_UNKNOWN";
    v2 = @"IFTPARAMETERNOTALLOWEDREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1048[a1];
    v2 = off_1E78C1060[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTPlanSource.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"IFTPLANSOURCE_UNKNOWN";
    v2 = @"IFTPLANSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1078[a1];
    v2 = off_1E78C10A8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTPrimitiveType.description.getter(unsigned int a1)
{
  if (a1 > 0x13)
  {
    v1 = @"IFTPRIMITIVETYPE_UNKNOWN";
    v2 = @"IFTPRIMITIVETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C10D8[a1];
    v2 = off_1E78C1178[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTQueryPayloadType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"IFTQUERYPAYLOADTYPE_UNKNOWN";
    v2 = @"IFTQUERYPAYLOADTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1218[a1];
    v2 = off_1E78C1240[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTSortOrder.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"IFTSORTORDER_UNKNOWN";
    v2 = @"IFTSORTORDER_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1268[a1];
    v2 = off_1E78C1280[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTSystemPromptResolutionInputModality.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_UNKNOWN";
    v2 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1298[a1];
    v2 = off_1E78C12B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"IFTSYSTEMREQUIREMENTAUTHENTICATIONREQUESTAUTHENTICATIONLEVEL_UNKNOWN";
    v2 = @"IFTSYSTEMREQUIREMENTAUTHENTICATIONREQUESTAUTHENTICATIONLEVEL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C12C8[a1];
    v2 = off_1E78C12E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t IFTSchemaIFTToolType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"IFTTOOLTYPE_UNKNOWN";
    v2 = @"IFTTOOLTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C12F8[a1];
    v2 = off_1E78C1318[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEAppResolutionType.description.getter(unsigned int a1)
{
  if (a1 > 0xA)
  {
    v1 = @"INFERENCEAPPRESOLUTIONTYPE_UNKNOWN";
    v2 = @"INFERENCEAPPRESOLUTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1338[a1];
    v2 = off_1E78C1390[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEAppSelectionUserPersona.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"INFERENCEAPPSELECTIONUSERPERSONA_UNKNOWN";
    v2 = @"INFERENCEAPPSELECTIONUSERPERSONA_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C13E8[a1];
    v2 = off_1E78C1420[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCECandidateType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"INFERENCECANDIDATETYPE_UNKNOWN";
    v2 = @"INFERENCECANDIDATETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1458[a1];
    v2 = off_1E78C1470[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEConfirmationResolutionType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"INFERENCECONFIRMATIONRESOLUTIONTYPE_UNKNOWN";
    v2 = @"INFERENCECONFIRMATIONRESOLUTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1488[a1];
    v2 = off_1E78C14B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEContactActionType.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"INFERENCECONTACTACTIONTYPE_UNKNOWN";
    v2 = @"INFERENCECONTACTACTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C14D8[a1];
    v2 = off_1E78C1508[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEContactResolutionDomain.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"INFERENCECONTACTRESOLUTIONDOMAIN_UNKNOWN";
    v2 = @"INFERENCECONTACTRESOLUTIONDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1538[a1];
    v2 = off_1E78C1558[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEContactResolutionType.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"INFERENCECONTACTRESOLUTIONTYPE_UNKNOWN";
    v2 = @"INFERENCECONTACTRESOLUTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1578[a1];
    v2 = off_1E78C15A8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEContactSearchSuggestedType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"INFERENCECONTACTSEARCHSUGGESTEDTYPE_UNKNOWN";
    v2 = @"INFERENCECONTACTSEARCHSUGGESTEDTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C15D8[a1];
    v2 = off_1E78C15F8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEDisambiguationResolutionType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"INFERENCEDISAMBIGUATIONRESOLUTIONTYPE_UNKNOWN";
    v2 = @"INFERENCEDISAMBIGUATIONRESOLUTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1618[a1];
    v2 = off_1E78C1638[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEEntityResolutionType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"INFERENCEENTITYRESOLUTIONTYPE_UNKNOWN";
    v2 = @"INFERENCEENTITYRESOLUTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1658[a1];
    v2 = off_1E78C1678[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEEuclidEntityType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"INFERENCEEUCLIDENTITYTYPE_UNKNOWN";
    v2 = @"INFERENCEEUCLIDENTITYTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1698[a1];
    v2 = off_1E78C16B8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEForcePromptType.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"INFERENCEFORCEPROMPTTYPE_UNKNOWN";
    v2 = @"INFERENCEFORCEPROMPTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C16D8[a1];
    v2 = off_1E78C1720[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEMediaSubscriptionStatus.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"INFERENCEMEDIASUBSCRIPTIONSTATUS_UNKNOWN";
    v2 = @"INFERENCEMEDIASUBSCRIPTIONSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1768[a1];
    v2 = off_1E78C1780[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEOntologySource.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"INFERENCEONTOLOGYSOURCE_UNKNOWN";
    v2 = @"INFERENCEONTOLOGYSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1798[a1];
    v2 = off_1E78C17C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEProjectIntent.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"INFERENCEPROJECTINTENT_UNKNOWN";
    v2 = @"INFERENCEPROJECTINTENT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C17E8[a1];
    v2 = off_1E78C1850[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEPromptTag.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"INFERENCEPROMPTTAG_UNKNOWN";
    v2 = @"INFERENCEPROMPTTAG_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C18B8[a1];
    v2 = off_1E78C18D8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCEResolutionState.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"INFERENCERESOLUTIONSTATE_UNKNOWN";
    v2 = @"INFERENCERESOLUTIONSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C18F8[a1];
    v2 = off_1E78C1920[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCESearchProvider.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"INFERENCESEARCHPROVIDER_UNKNOWN";
    v2 = @"INFERENCESEARCHPROVIDER_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1948[a1];
    v2 = off_1E78C1970[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCESlotType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"INFERENCESLOTTYPE_UNKNOWN";
    v2 = @"INFERENCESLOTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1998[a1];
    v2 = off_1E78C19C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath.description.getter(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = @"INFERENCESMARTENOUGHAPPSELECTIONEXECUTIONPATH_UNKNOWN";
    v2 = @"INFERENCESMARTENOUGHAPPSELECTIONEXECUTIONPATH_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C19E8[a1];
    v2 = off_1E78C1A50[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t INFERENCESchemaINFERENCETaskSuccessType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"INFERENCETASKSUCCESSTYPE_UNKNOWN";
    v2 = @"INFERENCETASKSUCCESSTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1AB8[a1];
    v2 = off_1E78C1AE0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaISOCountryCode.description.getter(unsigned int a1)
{
  if (a1 > 0xFA)
  {
    v1 = @"ISOCOUNTRYCODE_UNKNOWN";
    v2 = @"ISOCOUNTRYCODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C1B08[a1];
    v2 = off_1E78C22E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaISOLanguageCode.description.getter(unsigned int a1)
{
  if (a1 > 0xB9)
  {
    v1 = @"ISOLANGUAGECODE_UNKNOWN";
    v2 = @"ISOLANGUAGECODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C2AB8[a1];
    v2 = off_1E78C3088[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaInvocationAction.description.getter(unsigned int a1)
{
  if (a1 > 0xF)
  {
    v1 = @"INVOCATIONACTION_UNKNOWN_INVOCATION_ACTION";
    v2 = @"INVOCATIONACTION_UNKNOWN_INVOCATION_ACTION";
  }

  else
  {
    v1 = off_1E78C3658[a1];
    v2 = off_1E78C36D8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaInvocationSource.description.getter(unsigned int a1)
{
  if (a1 > 0x67)
  {
    v1 = @"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE";
    v2 = @"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE";
  }

  else
  {
    v1 = off_1E78C3758[a1];
    v2 = off_1E78C3A98[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t JRSchemaJRBucketedDistance.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"JRBUCKETEDDISTANCE_UNKNOWN";
    v2 = @"JRBUCKETEDDISTANCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C3DD8[a1];
    v2 = off_1E78C3E18[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t JRSchemaJRParameterSubType.description.getter(int a1)
{
  if (!v2 & v1)
  {
    switch(a1)
    {
      case 7000:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_UNKNOWN";
        break;
      case 7001:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_EMAIL_MESSAGE";
        break;
      case 7002:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_LIVE_PHOTO";
        break;
      case 7003:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_IMAGE";
        break;
      case 7004:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_VIDEO";
        break;
      case 7005:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_CONTACT";
        break;
      case 7006:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_CALENDAR_EVENT";
        break;
      case 7007:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_MESSAGE";
        break;
      case 7008:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_FILEURL";
        break;
      case 7009:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_SEARCHABLE_ITEM_ALIAS_FILE";
        break;
      default:
        v3 = @"JRPARAMETERSUBTYPE_UNKNOWN";
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 8000:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_UNKNOWN";
        break;
      case 8001:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_FILE";
        break;
      case 8002:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_INTENTS_FILE";
        break;
      case 8003:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_PERSON";
        break;
      case 8004:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_APP";
        break;
      case 8005:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_BOOL";
        break;
      case 8006:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_INT";
        break;
      case 8007:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_NUMBER";
        break;
      case 8008:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_DECIMAL";
        break;
      case 8009:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_DATE";
        break;
      case 8010:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_DATE_COMPONENTS";
        break;
      case 8011:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_MEASUREMENT";
        break;
      case 8012:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_STRING";
        break;
      case 8013:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_ATTRIBUTED_STRING";
        break;
      case 8014:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_CURRENCY_AMOUNT";
        break;
      case 8015:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_PAYMENT_METHOD";
        break;
      case 8016:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_PLACEMARK";
        break;
      case 8017:
        v3 = @"JRPARAMETERSUBTYPE_PRIMITIVE_URL";
        break;
      default:
        JUMPOUT(0);
    }
  }

  v4 = v3;
  v5 = v3;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t LINKSchemaLINKActionPresentationStyle.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"FLOWLINKACTIONPRESENTATIONSTYLE_UNKNOWN";
    v2 = @"FLOWLINKACTIONPRESENTATIONSTYLE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C3E58[a1];
    v2 = off_1E78C3E78[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t LINKSchemaLINKParameterType.description.getter(unsigned int a1)
{
  if (a1 > 0x17)
  {
    v1 = @"LINKPARAMETERTYPE_UNKNOWN";
    v2 = @"LINKPARAMETERTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C3E98[a1];
    v2 = off_1E78C3F58[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t LINKSchemaLINKSystemActionProtocol.description.getter(unsigned int a1)
{
  if (a1 > 0x1A)
  {
    v1 = @"LINKSYSTEMACTIONPROTOCOL_UNKNOWN";
    v2 = @"LINKSYSTEMACTIONPROTOCOL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4018[a1];
    v2 = off_1E78C40F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t LRSchemaLRPreProcessorTriggerReason.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"LRPREPROCESSORTRIGGERREASON_UNKNOWN";
    v2 = @"LRPREPROCESSORTRIGGERREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C41C8[a1];
    v2 = off_1E78C41E8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaLocale.description.getter(unsigned int a1)
{
  if (a1 > 0x3E)
  {
    v1 = @"LOCALE_UNKNOWN_LOCALE";
    v2 = @"LOCALE_UNKNOWN_LOCALE";
  }

  else
  {
    v1 = off_1E78C4208[a1];
    v2 = off_1E78C4400[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaLocationAccessPermission.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"LOCATIONACCESSPERMISSION_UNKNOWN";
    v2 = @"LOCATIONACCESSPERMISSION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C45F8[a1];
    v2 = off_1E78C4630[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaMARRSErrorType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MARRSERRORTYPE_UNKNOWN";
    v2 = @"MARRSERRORTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4668[a1];
    v2 = off_1E78C4680[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaMARRSQueryRewriteType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MARRSQUERYREWRITETYPE_UNKNOWN";
    v2 = @"MARRSQUERYREWRITETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4698[a1];
    v2 = off_1E78C46B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaMARRSRepetitionDetectionRuleType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MARRSREPETITIONDETECTIONRULETYPE_OTHER";
    v2 = @"MARRSREPETITIONDETECTIONRULETYPE_OTHER";
  }

  else
  {
    v1 = off_1E78C46C8[a1];
    v2 = off_1E78C46E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaMARRSRepetitionType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MARRSREPETITIONTYPE_UNKNOWN";
    v2 = @"MARRSREPETITIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C46F8[a1];
    v2 = off_1E78C4718[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHASRAudioCodec.description.getter(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = @"MHASRAUDIOCODEC_UNKNOWN";
    v2 = @"MHASRAUDIOCODEC_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4738[a1];
    v2 = off_1E78C4798[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHASVBackgroundNoiseActivityLevel.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHASVBACKGROUNDNOISEACTIVITYLEVEL_UNKNOWN";
    v2 = @"MHASVBACKGROUNDNOISEACTIVITYLEVEL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C47F8[a1];
    v2 = off_1E78C4810[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHASVInvocationType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHASVINVOCATIONTYPE_UNKNOWN";
    v2 = @"MHASVINVOCATIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4828[a1];
    v2 = off_1E78C4840[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHASVSpeakerDistanceType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MHASVSPEAKERDISTANCETYPE_UNKNOWN";
    v2 = @"MHASVSPEAKERDISTANCETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4858[a1];
    v2 = off_1E78C4880[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHASVUserIntentType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MHASVUSERINTENTTYPE_UNKNOWN";
    v2 = @"MHASVUSERINTENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C48A8[a1];
    v2 = off_1E78C48D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAcousticFalseTriggerMitigationType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHACOUSTICFALSETRIGGERMITIGATOR_TYPE_UNKNOWN";
    v2 = @"MHACOUSTICFALSETRIGGERMITIGATOR_TYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C48F8[a1];
    v2 = off_1E78C4910[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAdBlockerDismissalType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"ADBLOCKERDISMISSALTYPE_UNKNOWN";
    v2 = @"ADBLOCKERDISMISSALTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4928[a1];
    v2 = off_1E78C4950[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAdBlockerSource.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHADBLOCKERSOURCE_UNKNOWN";
    v2 = @"MHADBLOCKERSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4978[a1];
    v2 = off_1E78C4990[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAssistantDaemonAudioInputRoute.description.getter(unsigned int a1)
{
  if (a1 > 0xF)
  {
    v1 = @"AUDIOINPUTROUTE_UNKNOWN";
    v2 = @"AUDIOINPUTROUTE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C49A8[a1];
    v2 = off_1E78C4A28[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAssistantDaemonAudioSource.description.getter(unsigned int a1)
{
  if (a1 > 8)
  {
    v1 = @"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN";
    v2 = @"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4AA8[a1];
    v2 = off_1E78C4AF0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAssistantDaemonAudioTwoShotPromptType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MHASSISTANTDAEMONAUDIOTWOSHOTPROMPTTYPE_UNKNOWN";
    v2 = @"MHASSISTANTDAEMONAUDIOTWOSHOTPROMPTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4B38[a1];
    v2 = off_1E78C4B58[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAssistantDaemonStopRecordingReason.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"MHASSISTANTDAEMONSTOPRECORDINGREASON_UNKNOWN";
    v2 = @"MHASSISTANTDAEMONSTOPRECORDINGREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4B78[a1];
    v2 = off_1E78C4BC8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAttendingEndedReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHATTENDINGENDEDREASON_UNKNOWN";
    v2 = @"MHATTENDINGENDEDREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4C18[a1];
    v2 = off_1E78C4C30[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAttendingStartedReason.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHATTENDINGSTARTEDREASON_UNKNOWN";
    v2 = @"MHATTENDINGSTARTEDREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4C48[a1];
    v2 = off_1E78C4C60[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAudioSessionCategory.description.getter(unsigned int a1)
{
  if (a1 > 0x1B)
  {
    v1 = @"MHAUDIOSESSIONCATEGORY_UNKNOWN";
    v2 = @"MHAUDIOSESSIONCATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4C78[a1];
    v2 = off_1E78C4D58[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHAudioSessionMode.description.getter(unsigned int a1)
{
  if (a1 > 0x1D)
  {
    v1 = @"MHAUDIOSESSIONMODE_UNKNOWN";
    v2 = @"MHAUDIOSESSIONMODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C4E38[a1];
    v2 = off_1E78C4F28[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHBiometricMatchResult.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MHBIOMETRICMATCHRESULT_UNKOWN";
    v2 = @"MHBIOMETRICMATCHRESULT_UNKOWN";
  }

  else
  {
    v1 = off_1E78C5018[a1];
    v2 = off_1E78C5040[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHBluetoothAudioDeviceCategory.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"BLUETOOTHAUDIODEVICECATEGORY_UNKNOWN";
    v2 = @"BLUETOOTHAUDIODEVICECATEGORY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5068[a1];
    v2 = off_1E78C5098[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHBluetoothWirelessSplitterSessionState.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MHBLUETOOTHWIRELESSSPLITTERSESSIONSTATE_UNKNOWN";
    v2 = @"MHBLUETOOTHWIRELESSSPLITTERSESSIONSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C50C8[a1];
    v2 = off_1E78C50E8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHEndpointerAccessibleLevel.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHENDPOINTERACCESSIBLELEVEL_UNKNOWN";
    v2 = @"MHENDPOINTERACCESSIBLELEVEL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5108[a1];
    v2 = off_1E78C5120[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHEndpointerType.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"MHENDPOINTER_TYPE_UNDEFINED";
    v2 = @"MHENDPOINTER_TYPE_UNDEFINED";
  }

  else
  {
    v1 = off_1E78C5138[a1];
    v2 = off_1E78C5178[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHFirstPassEnhancedCarplayTriggerMode.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MHFIRSTPASSENHANCEDCARPLAYTRIGGERMODE_UNKNOWN";
    v2 = @"MHFIRSTPASSENHANCEDCARPLAYTRIGGERMODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C51B8[a1];
    v2 = off_1E78C51D8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHHostPowerState.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MHHOSTPOWERSTATE_UNKNOWN";
    v2 = @"MHHOSTPOWERSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C51F8[a1];
    v2 = off_1E78C5220[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHSelfTriggerSuppressionAudioSource.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHSELFTRIGGERSUPPRESSIONAUDIOSOURCE_UNKNOWN";
    v2 = @"MHSELFTRIGGERSUPPRESSIONAUDIOSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5248[a1];
    v2 = off_1E78C5260[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHSpeechErrorType.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"MHSPEECHERRORTYPE_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHTRPDetectionType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MHTRPDETECTIONTYPE_UNKNOWN";
    v2 = @"MHTRPDETECTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5278[a1];
    v2 = off_1E78C5290[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHUserEngagementModelTriggerMechanism.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MHUSERENGAGEMENTMODELTRIGGERMECHANISM_UNKNOWN";
    v2 = @"MHUSERENGAGEMENTMODELTRIGGERMECHANISM_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C52A8[a1];
    v2 = off_1E78C52C8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHVoiceTriggerFirstPassSource.description.getter(unsigned int a1)
{
  if (a1 > 0xA)
  {
    v1 = @"MHVOICETRIGGERFIRSTPASSSOURCE_UNKNOWN";
    v2 = @"MHVOICETRIGGERFIRSTPASSSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C52E8[a1];
    v2 = off_1E78C5340[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MHSchemaMHVoiceTriggerSecondPassRejectReason.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"MHVOICETRIGGERSECONDPASSREJECTREASON_UNKNOWN";
    v2 = @"MHVOICETRIGGERSECONDPASSREJECTREASON_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5398[a1];
    v2 = off_1E78C53E8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaMILAssetAcquisitionErrorCode.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"MILASSETACQUISITIONERRORCODE_UNKNOWN";
    v2 = @"MILASSETACQUISITIONERRORCODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5438[a1];
    v2 = off_1E78C5478[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaMILAssetAcquisitionModel.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"MILASSETACQUISITIONMODEL_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaMILAssetAcquisitionType.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MILASSETACQUISITIONTYPE_UNKNOWN";
    v2 = @"MILASSETACQUISITIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C54B8[a1];
    v2 = off_1E78C54D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTASRState.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"MTASRSTATE_UNKNOWN";
    v2 = @"MTASRSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C54E8[a1];
    v2 = off_1E78C5518[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTAppConversationTabView.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MTAPPCONVERSATIONTABVIEW_UNKNOWN";
    v2 = @"MTAPPCONVERSATIONTABVIEW_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5548[a1];
    v2 = off_1E78C5560[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTAppDisplayMode.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MTAPPDISPLAYMODE_UNKNOWN";
    v2 = @"MTAPPDISPLAYMODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5578[a1];
    v2 = off_1E78C5598[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTAppTabName.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MTAPPTABNAME_UNKNOWN";
    v2 = @"MTAPPTABNAME_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C55B8[a1];
    v2 = off_1E78C55E0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTAudioChannel.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"MTAPPAUDIOCHANNEL_UNKNOWN";
    v2 = @"MTAPPAUDIOCHANNEL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5608[a1];
    v2 = off_1E78C5638[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTFrameworkRequestRoute.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MTFRAMEWORKREQUESTROUTE_UNKNOWN";
    v2 = @"MTFRAMEWORKREQUESTROUTE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5668[a1];
    v2 = off_1E78C5680[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTFrameworkRequestType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MTFRAMEWORKREQUESTTYPE_UNKNOWN";
    v2 = @"MTFRAMEWORKREQUESTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5698[a1];
    v2 = off_1E78C56C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTInputSource.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MTINPUTSOURCE_UNKNOWN";
    v2 = @"MTINPUTSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C56E8[a1];
    v2 = off_1E78C5710[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTInvocationType.description.getter(unsigned int a1)
{
  if (a1 > 0x13)
  {
    v1 = @"MTINVOCATIONTYPE_UNKNOWN";
    v2 = @"MTINVOCATIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5738[a1];
    v2 = off_1E78C57D8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTSourceOrTargetLanguage.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MTSOURCEORTARGETLANGUAGE_UNKNOWN";
    v2 = @"MTSOURCEORTARGETLANGUAGE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5878[a1];
    v2 = off_1E78C5890[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTTTSPlaybackSpeed.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MTTTSPLAYBACKSPEED_UNKNOWN";
    v2 = @"MTTTSPLAYBACKSPEED_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C58A8[a1];
    v2 = off_1E78C58D0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MTSchemaMTTask.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MTTASK_UNKNOWN";
    v2 = @"MTTASK_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C58F8[a1];
    v2 = off_1E78C5920[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTAssetEndPoint.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"MWTASSETENDPOINT_UNKNOWN";
    v2 = @"MWTASSETENDPOINT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5948[a1];
    v2 = off_1E78C5978[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTAssetLocation.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"MWTASSETLOCATION_UNKNOWN";
    v2 = @"MWTASSETLOCATION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C59A8[a1];
    v2 = off_1E78C59C0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTAssetSource.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"MWTASSETSOURCE_UNKNOWN";
    v2 = @"MWTASSETSOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C59D8[a1];
    v2 = off_1E78C5A10[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTAudioRouteType.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"MWTAUDIOROUTETYPE_UNKNOWN";
    v2 = @"MWTAUDIOROUTETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5A48[a1];
    v2 = off_1E78C5A98[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTCheckpoint.description.getter(unsigned int a1)
{
  if (a1 > 0x1C)
  {
    v1 = @"MWTCHECKPOINT_UNKNOWN";
    v2 = @"MWTCHECKPOINT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5AE8[a1];
    v2 = off_1E78C5BD0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTEndPointType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MWTENDPOINTTYPE_UNKNOWN";
    v2 = @"MWTENDPOINTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5CB8[a1];
    v2 = off_1E78C5CD8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTFormatCodec.description.getter(unsigned int a1)
{
  if (a1 > 0x28)
  {
    v1 = @"MWTFORMATCODEC_UNKNOWN";
    v2 = @"MWTFORMATCODEC_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5CF8[a1];
    v2 = off_1E78C5E40[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTFormatLayout.description.getter(unsigned int a1)
{
  if (a1 > 0xAE)
  {
    v1 = @"MWTFORMATLAYOUT_UNKNOWN";
    v2 = @"MWTFORMATLAYOUT_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C5F88[a1];
    v2 = off_1E78C6500[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTFormatTier.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"MWTFORMATTIER_UNKNOWN";
    v2 = @"MWTFORMATTIER_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6A78[a1];
    v2 = off_1E78C6AA8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTMusicDomain.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MWTMUSICDOMAIN_UNKNOWN";
    v2 = @"MWTMUSICDOMAIN_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6AD8[a1];
    v2 = off_1E78C6B00[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTNetworkConnectionType.description.getter(unsigned int a1)
{
  if (a1 > 0xE)
  {
    v1 = @"MWTNETWORKCONNECTIONTYPE_UNKNOWN";
    v2 = @"MWTNETWORKCONNECTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6B28[a1];
    v2 = off_1E78C6BA0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTPrefetchedMetadataSource.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MWTPREFETCHEDMETADATASOURCE_UNKNOWN";
    v2 = @"MWTPREFETCHEDMETADATASOURCE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6C18[a1];
    v2 = off_1E78C6C40[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTQueueType.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"MWTQUEUETYPE_UNKNOWN";
    v2 = @"MWTQUEUETYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6C68[a1];
    v2 = off_1E78C6CA8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTRouteConfiguration.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"MWTROUTECONFIGURATION_UNKNOWN";
    v2 = @"MWTROUTECONFIGURATION_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6CE8[a1];
    v2 = off_1E78C6D20[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTStreamingContentType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"MWTSTREAMINGCONTENTTYPE_UNKNOWN";
    v2 = @"MWTSTREAMINGCONTENTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6D58[a1];
    v2 = off_1E78C6D80[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTSubscriptionType.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MWTSUBSCRIPTIONTYPE_UNKNOWN";
    v2 = @"MWTSUBSCRIPTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6DA8[a1];
    v2 = off_1E78C6DC8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t MWTSchemaMWTVMCPUSnapshotStage.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"MWTVMCPUSNAPSHOTSTAGE_UNKNOWN";
    v2 = @"MWTVMCPUSNAPSHOTSTAGE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6DE8[a1];
    v2 = off_1E78C6E18[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaMeasurementSystem.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"MEASUREMENTSYSTEM_UNKNOWN";
    v2 = @"MEASUREMENTSYSTEM_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6E48[a1];
    v2 = off_1E78C6E68[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaMediaPlayBackState.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"MEDIAPLAYBACKSTATE_UNKNOWN";
    v2 = @"MEDIAPLAYBACKSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6E88[a1];
    v2 = off_1E78C6EC0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaMediaType.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"MEDIATYPE_UNKNOWN";
    v2 = @"MEDIATYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6EF8[a1];
    v2 = off_1E78C6F38[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaMetricForm.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"METRICFORM_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaMetricName.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"METRIC_UNKNOWN";
    v2 = @"METRIC_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6F78[a1];
    v2 = off_1E78C6FA0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t SISchemaMetricScope.description.getter(int a1)
{
  OUTLINED_FUNCTION_2_2(a1, @"METRICSCOPE_UNKNOWN");
  v2 = v1;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETConnectionMethod.description.getter(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = @"NETCONNECTIONMETHOD_UNKNOWN";
    v2 = @"NETCONNECTIONMETHOD_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C6FC8[a1];
    v2 = off_1E78C7008[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETConnectionMode.description.getter(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = @"NETCONNECTIONMODE_UNKNOWN";
    v2 = @"NETCONNECTIONMODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C7048[a1];
    v2 = off_1E78C7060[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETConnectionState.description.getter(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = @"NETCONNECTIONSTATE_UNKNOWN";
    v2 = @"NETCONNECTIONSTATE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C7078[a1];
    v2 = off_1E78C70B0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETConnectionType.description.getter(unsigned int a1)
{
  if (a1 > 0x17)
  {
    v1 = @"NETCONNECTIONTYPE_UNKNOWN";
    v2 = @"NETCONNECTIONTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C70E8[a1];
    v2 = off_1E78C71A8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETEndpointType.description.getter(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = @"NETENDPOINTTYPE_UNKNOWN";
    v2 = @"NETENDPOINTTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C7268[a1];
    v2 = off_1E78C7298[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETPathStatus.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"NETPATHSTATUS_UNKNOWN";
    v2 = @"NETPATHSTATUS_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C72C8[a1];
    v2 = off_1E78C72F0[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETPathType.description.getter(unsigned int a1)
{
  if (a1 > 4)
  {
    v1 = @"NETPATHTYPE_UNKNOWN";
    v2 = @"NETPATHTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C7318[a1];
    v2 = off_1E78C7340[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETPhyMode.description.getter(unsigned int a1)
{
  if (a1 > 9)
  {
    v1 = @"NETPHYMODE_UNKNOWN";
    v2 = @"NETPHYMODE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C7368[a1];
    v2 = off_1E78C73B8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETProtocol.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"NETPROTOCOL_UNKNOWN";
    v2 = @"NETPROTOCOL_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C7408[a1];
    v2 = off_1E78C7428[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NETSchemaNETQuality.description.getter(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = @"NETQUALITY_UNKNOWN";
    v2 = @"NETQUALITY_UNKNOWN";
  }

  else
  {
    v1 = off_1E78C74A8[a1];
    v2 = off_1E78C74C8[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}