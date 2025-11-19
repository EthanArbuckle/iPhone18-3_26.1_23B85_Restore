uint64_t sub_1975C4AB8(char a1)
{
  if (a1)
  {
    return 0x74616E6F4478616DLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1975C4B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975C49E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975C4B38(uint64_t a1)
{
  v2 = sub_1975C4D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975C4B74(uint64_t a1)
{
  v2 = sub_1975C4D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreEvent.Options.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C98, &qword_19761BF58);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = v1[1];
  v16 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C4D20();
  sub_197617260();
  v18 = 0;
  sub_197616E50();
  if (!v2)
  {
    v17 = 1;
    sub_197616E00();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1975C4D20()
{
  result = qword_1EAF34CA0;
  if (!qword_1EAF34CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CA0);
  }

  return result;
}

uint64_t CoreEvent.Options.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CA8, &qword_19761BF60);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C4D20();
  sub_197617240();
  if (!v2)
  {
    v21 = 0;
    v14 = sub_197616DB0();
    v20 = 1;
    v16 = sub_197616D60();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t _s7OptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7OptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

_BYTE *_s7OptionsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975C5084()
{
  result = qword_1EAF34CB0;
  if (!qword_1EAF34CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CB0);
  }

  return result;
}

unint64_t sub_1975C50DC()
{
  result = qword_1EAF34CB8;
  if (!qword_1EAF34CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CB8);
  }

  return result;
}

unint64_t sub_1975C5134()
{
  result = qword_1EAF34CC0;
  if (!qword_1EAF34CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34CC0);
  }

  return result;
}

uint64_t CoreEventRecord.dateCreated.getter()
{
  swift_getKeyPath();
  v1 = sub_1975611B4(&qword_1ED817220, type metadata accessor for CoreEventRecord);
  OUTLINED_FUNCTION_29(v1, v2, v3, v4, v5, v6, v7, v8, v13, v0);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v9, type metadata accessor for CoreEventRecord);
  OUTLINED_FUNCTION_2_11();
  sub_1975611B4(v10, v11);
  sub_197615E50();
}

uint64_t sub_1975C52EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_197615A60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_21_3();
  v13(v12);
  v14 = *a2;
  return CoreEventRecord.dateCreated.setter(v9);
}

uint64_t CoreEventRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  v5 = sub_1975611B4(v3, v4);
  OUTLINED_FUNCTION_13_5(v5, v6, sub_1975C5848, v7, v8, v5, v9, v10, v14, v15, v1, a1, v16, v17);
  sub_197615B10();

  v11 = sub_197615A60();
  OUTLINED_FUNCTION_7_5(v11);
  return (*(v12 + 8))(a1);
}

uint64_t sub_1975C5478(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreEventRecord.id.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1975C54A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CoreEventRecord.id.setter();
}

uint64_t CoreEventRecord.id.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  sub_1975611B4(v0, v1);
  sub_197615B10();
}

uint64_t CoreEventRecord.__allocating_init(id:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CoreEventRecord.init(id:)();
  return v3;
}

uint64_t sub_1975C5600()
{
  swift_getKeyPath();
  sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  sub_197615E70();
}

uint64_t (*CoreEventRecord.id.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CoreEventRecord.id.getter();
  a1[1] = v3;
  return sub_1975C56FC;
}

uint64_t sub_1975C56FC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    CoreEventRecord.id.setter();
  }

  else
  {
    v7 = *a1;
    return CoreEventRecord.id.setter();
  }
}

uint64_t sub_1975C5770()
{
  swift_getKeyPath();
  sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  sub_1975611B4(&qword_1ED816D90, MEMORY[0x1E6969530]);
  sub_197615E70();
}

uint64_t sub_1975C5848()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975C5770();
}

uint64_t sub_1975C5864()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1975C5600();
}

void (*CoreEventRecord.dateCreated.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreEventRecord.dateCreated.getter();
  return sub_1975C5958;
}

void sub_1975C5958(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CoreEventRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CoreEventRecord.dateCreated.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1975C5A0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_19758FC60(v4);
}

void sub_1975C5A6C(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  CoreEventRecord.rules.getter();
  *v1 = v2;
}

uint64_t sub_1975C5A94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CoreEventRecord.rules.setter(v4);
}

void sub_1975C5AE0()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_24_2(v1, v2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CC8, &unk_19761C9F0);
  type metadata accessor for CoreRuleRecord();
  sub_197567D64();
  OUTLINED_FUNCTION_18_5();

  *v0 = 0;
  OUTLINED_FUNCTION_25_2();
}

uint64_t (*CoreEventRecord.rules.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  CoreEventRecord.rules.getter();
  *a1 = v3;
  return sub_1975C5BB4;
}

void sub_1975C5C00()
{
  OUTLINED_FUNCTION_26_3();
  v2 = v1;
  v4 = v3;
  swift_getKeyPath();
  v5 = sub_1975611B4(&qword_1ED817220, type metadata accessor for CoreEventRecord);
  OUTLINED_FUNCTION_29(v5, v6, v7, v8, v9, v10, v11, v12, v14, v0);
  sub_197615B20();

  swift_getKeyPath();
  v4(0);
  OUTLINED_FUNCTION_1_15();
  sub_1975611B4(v13, type metadata accessor for CoreEventRecord);
  v2();
  sub_197615E40();

  OUTLINED_FUNCTION_25_2();
}

void sub_1975C5D08(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  CoreEventRecord.donations.getter();
  *a2 = v4;
}

uint64_t sub_1975C5D34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CoreEventRecord.donations.setter(v4);
}

uint64_t sub_1975C5D80(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_16();
  v5 = sub_1975611B4(v3, v4);
  OUTLINED_FUNCTION_13_5(v5, v6, v7, v8, v9, v5, v10, v11, v13, v14, v1, a1, v15, v16);
  sub_197615B10();
}

void sub_1975C5E2C()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_24_2(v1, v2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CD8, &unk_19761C230);
  type metadata accessor for CoreDonationRecord();
  sub_19758D8AC();
  OUTLINED_FUNCTION_18_5();

  *v0 = 0;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1975C5EB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  OUTLINED_FUNCTION_0_16();
  sub_1975611B4(v7, v8);
  a5();
  sub_197615E60();
}

uint64_t (*CoreEventRecord.donations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  CoreEventRecord.donations.getter();
  *a1 = v3;
  return sub_1975C5FC0;
}

uint64_t sub_1975C5FD8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

unint64_t CoreEventRecord.description.getter()
{
  sub_197616A20();

  v0 = CoreEventRecord.id.getter();
  MEMORY[0x19A8E2A50](v0);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0xD000000000000014;
}

void CoreEventRecord.init(id:)()
{
  OUTLINED_FUNCTION_26_3();
  v1 = *v0;
  v2 = sub_197615A60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CE0, &qword_19761C240);
  OUTLINED_FUNCTION_0_16();
  v13 = sub_1975611B4(v11, v12);
  v0[7] = OUTLINED_FUNCTION_15_3(v13);
  __swift_allocate_boxed_opaque_existential_0(v0 + 3);
  sub_197615DC0();
  sub_19758D4D8(0, 0xE000000000000000, v0 + 3);
  sub_197615A50();
  v14 = v0[7];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v0[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_11();
  sub_1975611B4(v15, v16);
  sub_197615BE0();

  (*(v5 + 8))(v10, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v17 = sub_1976160B0();
  sub_19758D594(v17, v0 + 3);
  OUTLINED_FUNCTION_22_3();
  sub_1975C5AE0();
  OUTLINED_FUNCTION_22_3();
  sub_1975C5E2C();
  sub_197615B30();
  CoreEventRecord.id.setter();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1975C63C4(uint64_t a1, uint64_t *a2)
{
  sub_19755A560(a1, v5);
  v3 = *a2;
  return CoreEventRecord.persistentBackingData.setter(v5);
}

uint64_t (*CoreEventRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t CoreEventRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore15CoreEventRecord___observationRegistrar;
  v2 = sub_197615B40();
  OUTLINED_FUNCTION_7_5(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1975C64D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CoreEventRecord.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t CoreEventRecord.hashValue.getter()
{
  v1 = *v0;
  sub_197617190();
  OUTLINED_FUNCTION_0_16();
  sub_1975611B4(v2, v3);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975C65C4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

uint64_t sub_1975C6664()
{
  v1 = *v0;
  sub_1975611B4(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  return sub_197615E20();
}

void sub_1975C6778()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_14();
  sub_197567F60(v17, v18);
  sub_197615640();
  v20[4] = v4;
  v20[5] = v2;
  sub_197615AE0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v19);
  sub_1975E6D50();
  sub_19755C7C8(v0, &qword_1EAF34AC0, &qword_19761B6F0);
  (*(v11 + 8))(v16, v9);
  OUTLINED_FUNCTION_19_0();
}

void sub_1975C6974()
{
  OUTLINED_FUNCTION_20();
  v26 = v2;
  v24 = v1;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_14();
  sub_197567F60(v22, v23);
  sub_197615640();
  v27 = v7;
  v28 = v5;
  sub_197615AE0();
  sub_1975C6B5C(v26, 0, v0, v15, v25);
  (*(v10 + 8))(v15, v8);
  (*(v18 + 8))(v0, v16);
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975C6B5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a1;
  v26 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  (*(*(v15 - 8) + 16))(v10, a4, v15);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
  v16 = type metadata accessor for CoreEventRecord();
  v17 = sub_197567F60(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  sub_197615D90();
  v34 = v16;
  v35 = v17;
  swift_getKeyPath();
  v36 = 1;
  v37 = 0;
  swift_setAtWritableKeyPath();

  v32 = v16;
  v33 = v17;
  swift_getKeyPath();
  LOBYTE(v36) = a2;
  swift_setAtWritableKeyPath();

  v30 = v16;
  v31 = v17;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_197618C10;
  (*(v19 + 16))(v22 + v21, v28, v18);
  v36 = v22;
  swift_setAtWritableKeyPath();

  v23 = v38;
  v24 = sub_197615C60();
  result = (*(v11 + 8))(v14, v27);
  if (!v23)
  {
    sub_1976087EC(v24);
  }

  return result;
}

void sub_1975C6EF4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  OUTLINED_FUNCTION_5_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_9();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0(v28);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  OUTLINED_FUNCTION_13(v12);
  (*(v13 + 16))(v0, v1, v12);
  v14 = OUTLINED_FUNCTION_5_10();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  type metadata accessor for CoreParameterRecord();
  sub_197567F60(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  OUTLINED_FUNCTION_17_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D30, &unk_1976223E0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_9_7();
  v24 = OUTLINED_FUNCTION_12_7(v23, xmmword_197618C10);
  v25(v24);
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_13_6();
  v26 = OUTLINED_FUNCTION_11_7();
  v27(v26);
  if (!KeyPath)
  {
    sub_1976087EC(v20);
  }

  OUTLINED_FUNCTION_19_0();
}

void sub_1975C71A8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_9();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0(v28);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_13(v12);
  (*(v13 + 16))(v0, v1, v12);
  v14 = OUTLINED_FUNCTION_5_10();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  type metadata accessor for CoreTipRecord();
  sub_197567F60(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  OUTLINED_FUNCTION_17_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_12();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_9_7();
  v24 = OUTLINED_FUNCTION_12_7(v23, xmmword_197618C10);
  v25(v24);
  OUTLINED_FUNCTION_4_12();

  OUTLINED_FUNCTION_13_6();
  v26 = OUTLINED_FUNCTION_11_7();
  v27(v26);
  if (!KeyPath)
  {
    sub_1976087EC(v20);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t CoreParameter.id.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  OUTLINED_FUNCTION_0_14(v3, *(v2 + 16));
  return v4(v1);
}

uint64_t CoreParameter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);
  swift_unownedRelease();
  return v0;
}

uint64_t CoreParameter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1975C7514@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CoreParameter.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1975C7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975C7568, 0, 0);
}

uint64_t sub_1975C7568()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v5[3];
  v8 = v5[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(v5, v7);
  type metadata accessor for CoreParameterRecord();
  sub_1975C91D0(v9, v4, v6, v7, v3, v8, v1, v2);
  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_1975C7784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1975831B8;

  return sub_1975C7540(a1, (v1 + 5), v1 + v7, v4, v5, v6);
}

void sub_1975C78A0(uint64_t *a1)
{
  v1 = *a1;

  static CoreParameter.parameters.setter(v2);
}

void sub_1975C78C0(uint64_t *a1)
{
  v1 = *a1;

  static CoreParameter.modelIdentifiers.setter(v2);
}

uint64_t (*static CoreParameter.modelIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static CoreParameter.modelIdentifiers.getter();
  return sub_1975C7928;
}

void sub_1975C7940()
{
  v0 = static CoreParameter.parameters.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D40, &unk_19761C8D0);
  sub_1976160F0();
  static CoreParameter.parameters.setter(v0);
  v1 = static CoreParameter.modelIdentifiers.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C90, &qword_19761BF48);
  sub_1976160F0();
  static CoreParameter.modelIdentifiers.setter(v1);
}

uint64_t CoreParameterProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  sub_197616A20();

  strcpy(v6, "Parameter(id: ");
  HIBYTE(v6[1]) = -18;
  v4 = (*(*(a2 + 16) + 16))(a1);
  MEMORY[0x19A8E2A50](v4);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v6[0];
}

uint64_t static CoreParameterProtocol.valuesEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1975674F0(a1, v21);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v4 = OUTLINED_FUNCTION_0_17();
    if (v4)
    {
      if (v24)
      {
        OUTLINED_FUNCTION_5_11(v4, v5, v6, v7);
        v8 = v26;
        v9 = v27;
        __swift_project_boxed_opaque_existential_1Tm(v25, v26);
        v10 = default argument 1 of Equatable.isEqual(_:checkReverse:)(v8, v9) & 1;
        v11 = a2;
        v12 = v8;
LABEL_11:
        v19 = Equatable.isEqual(_:checkReverse:)(v11, v10, v12);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        return v19 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(v21, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v23, &qword_1EAF34BE0, &qword_19761BB70);
  sub_1975674F0(a2, v21);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v13 = OUTLINED_FUNCTION_0_17();
    if (v13)
    {
      if (v24)
      {
        OUTLINED_FUNCTION_5_11(v13, v14, v15, v16);
        v17 = v26;
        v18 = v27;
        __swift_project_boxed_opaque_existential_1Tm(v25, v26);
        v10 = default argument 1 of Equatable.isEqual(_:checkReverse:)(v17, v18) & 1;
        v11 = a1;
        v12 = v17;
        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(v21, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v23, &qword_1EAF34BE0, &qword_19761BB70);
  v19 = !*(a1 + 24) && !*(a2 + 24);
  return v19 & 1;
}

uint64_t sub_1975C7CD8(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreParameterRecord.id.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t CoreParameterRecord.id.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = CoreParameterRecord.id.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_24_3();
}

uint64_t CoreParameterRecord.dateCreated.getter()
{
  swift_getKeyPath();
  sub_19755FD88(&qword_1ED817150, type metadata accessor for CoreParameterRecord);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_17();
  sub_19755FD88(v0, type metadata accessor for CoreParameterRecord);
  OUTLINED_FUNCTION_3_16();
  sub_19755FD88(v1, v2);
  sub_197615E50();
}

uint64_t sub_1975C7ED0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_197615A60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_21_3();
  v13(v12);
  v14 = *a2;
  return CoreParameterRecord.dateCreated.setter(v9);
}

uint64_t CoreParameterRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_19755FD88(v2, v3);
  OUTLINED_FUNCTION_15_5();

  v4 = sub_197615A60();
  OUTLINED_FUNCTION_7_5(v4);
  return (*(v5 + 8))(a1);
}

uint64_t sub_1975C804C()
{
  swift_getKeyPath();
  sub_19755FD88(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  sub_19755FD88(&qword_1ED816D90, MEMORY[0x1E6969530]);
  sub_197615E70();
}

void (*CoreParameterRecord.dateCreated.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreParameterRecord.dateCreated.getter();
  return sub_1975C81F8;
}

void sub_1975C81F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CoreParameterRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CoreParameterRecord.dateCreated.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1975C82AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_19757FE10();
}

uint64_t sub_1975C82D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975C804C();
}

uint64_t CoreParameterRecord.valueData.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = CoreParameterRecord.valueData.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_24_3();
}

uint64_t sub_1975C8334(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_18_0();
    sub_19757C2FC(v5, v6);
    v7 = OUTLINED_FUNCTION_18_0();
    CoreParameterRecord.valueData.setter(v7, v8);
    v9 = OUTLINED_FUNCTION_18_0();

    return sub_197576558(v9, v10);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_18_0();
    return CoreParameterRecord.valueData.setter(v12, v13);
  }
}

uint64_t CoreParameterRecord.valueType.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = CoreParameterRecord.valueType.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_24_3();
}

uint64_t sub_1975C83FC(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    v8 = OUTLINED_FUNCTION_22();
    a3(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_22();
    return (a3)(v10);
  }
}

uint64_t CoreParameterRecord.rules.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_13();
  sub_19755FD88(v2, v1);
  sub_197615B20();

  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord();
  OUTLINED_FUNCTION_1_17();
  sub_19755FD88(v3, v1);
  sub_197567D64();
  OUTLINED_FUNCTION_21_3();
  sub_197615E40();

  return v0;
}

uint64_t sub_1975C8568(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreParameterRecord.rules.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1975C8590(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CoreParameterRecord.rules.setter();
}

uint64_t CoreParameterRecord.rules.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_19755FD88(v0, v1);
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1975C8660()
{
  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord();
  sub_19755FD88(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  sub_197567D64();
  sub_197615E60();
}

uint64_t sub_1975C871C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975C8660();
}

uint64_t CoreParameterRecord.rules.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CoreParameterRecord.rules.getter();
  return OUTLINED_FUNCTION_24_3();
}

uint64_t sub_1975C877C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CoreParameterRecord.rules.setter();
  }

  else
  {
    v6 = *a1;
    return CoreParameterRecord.rules.setter();
  }
}

unint64_t CoreParameterRecord.description.getter()
{
  sub_197616A20();

  v0 = CoreParameterRecord.id.getter();
  MEMORY[0x19A8E2A50](v0);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t CoreParameterRecord.__allocating_init(id:valueType:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CoreParameterRecord.init(id:valueType:)();
  return v3;
}

void *CoreParameterRecord.init(id:valueType:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_197615A60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D50, &qword_19761CA00);
  OUTLINED_FUNCTION_0_18();
  v14 = sub_19755FD88(v12, v13);
  v0[7] = OUTLINED_FUNCTION_15_3(v14);
  __swift_allocate_boxed_opaque_existential_0(v0 + 3);
  sub_197615DC0();
  v15 = OUTLINED_FUNCTION_16_5();
  sub_197578AEC(v15, 0xE000000000000000, v16);
  sub_197615A50();
  v17 = v0[7];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 3, v1[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_16();
  sub_19755FD88(v18, v19);
  sub_197615BE0();

  (*(v6 + 8))(v11, v3);
  OUTLINED_FUNCTION_16_5();
  sub_197578A00(v20, v21);
  v22 = OUTLINED_FUNCTION_16_5();
  sub_197578AEC(v22, 0xE000000000000000, v23);
  sub_19757890C(v1 + 3, v1 + 17);
  sub_197615B30();
  CoreParameterRecord.id.setter();
  CoreParameterRecord.valueType.setter();
  return v0;
}

uint64_t sub_1975C8B18(uint64_t a1, uint64_t *a2)
{
  sub_19755A560(a1, v5);
  v3 = *a2;
  return CoreParameterRecord.persistentBackingData.setter(v5);
}

uint64_t CoreParameterRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t (*CoreParameterRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t CoreParameterRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore19CoreParameterRecord___observationRegistrar;
  v2 = sub_197615B40();
  OUTLINED_FUNCTION_7_5(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1975C8C7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CoreParameterRecord.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t CoreParameterRecord.hashValue.getter()
{
  v1 = *v0;
  sub_197617190();
  OUTLINED_FUNCTION_0_18();
  sub_19755FD88(v2, v3);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975C8D6C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

uint64_t sub_1975C8E0C()
{
  v1 = *v0;
  sub_19755FD88(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  return sub_197615E20();
}

uint64_t sub_1975C8F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[2] = a3;
  v23[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  OUTLINED_FUNCTION_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v23 - v20;
  swift_getKeyPath();
  sub_197567FA8(&qword_1ED816CD8, MEMORY[0x1E6969530]);
  sub_197615640();
  v23[6] = a1;
  v23[7] = a2;
  v23[9] = v23[0];
  sub_197615AE0();
  sub_1975C6EF4();
  (*(v8 + 8))(v13, v6);
  return (*(v16 + 8))(v21, v14);
}

void *sub_1975C9130()
{

  CoreParameterProtocol.valueType.getter();
  v0 = type metadata accessor for CoreParameterRecord();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return CoreParameterRecord.init(id:valueType:)();
}

void *sub_1975C91C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1975C9130();
}

uint64_t sub_1975C91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v37 = a5;
  v39 = a7;
  v34 = a2;
  v35 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - v13;
  v15 = sub_197615F50();
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreParameter();
  v38 = a6;
  v19 = *(a6 + 16);
  v20 = *(v19 + 16);
  v40 = a1;
  v43 = a4;
  v32 = v20;
  v21 = v20(a4, v19);
  v23 = v22;
  v24 = static CoreParameter.modelIdentifiers.getter();
  sub_19756E674(v21, v23, v24);

  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_19756E748(v14);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x6574656D61726150, 0xEE00203A64692872);
    v25 = v32(v43, v19);
    MEMORY[0x19A8E2A50](v25);

    MEMORY[0x19A8E2A50](0xD000000000000024, 0x80000001976246F0);
    v26 = v41;
    v27 = v42;
    sub_19759228C();
    swift_allocError();
    *v28 = v26;
    v28[1] = v27;
    return swift_willThrow();
  }

  else
  {
    v30 = v33;
    (*(v33 + 32))(v18, v14, v15);
    sub_19757D2C8(v18, v40, v34, v35, v43, v37, v38);
    return (*(v30 + 8))(v18, v15);
  }
}

uint64_t CoreRule.id.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t CoreRule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1975C9560@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CoreRule.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t CoreRule.Category.description.getter()
{
  result = 0x646E756F706D6F63;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x746E657665;
      break;
    case 3:
      result = 0x6574617473;
      break;
    case 4:
      result = 0x6574656D61726170;
      break;
    case 5:
      result = 0x656369766564;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t sub_1975C9658()
{
  result = qword_1EAF34D88;
  if (!qword_1EAF34D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34D88);
  }

  return result;
}

uint64_t sub_1975C96CC@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Category.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8CategoryOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975C9874()
{
  result = qword_1EAF34D90;
  if (!qword_1EAF34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34D90);
  }

  return result;
}

unint64_t sub_1975C98C8()
{
  result = qword_1ED816550;
  if (!qword_1ED816550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816550);
  }

  return result;
}

uint64_t sub_1975C9924(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000197624770 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197616EF0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1975C99C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975C9924(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1975C99F4(uint64_t a1)
{
  v2 = sub_1975C9B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975C9A30(uint64_t a1)
{
  v2 = sub_1975C9B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Options.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34DA0, &qword_19761D088);
  v5 = OUTLINED_FUNCTION_0_21(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C9B94();
  sub_197617260();
  sub_197616E40();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1975C9B94()
{
  result = qword_1EAF34DA8;
  if (!qword_1EAF34DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DA8);
  }

  return result;
}

uint64_t CoreRule.Options.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34DB0, &qword_19761D090);
  v7 = OUTLINED_FUNCTION_0_21(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975C9B94();
  sub_197617240();
  if (!v2)
  {
    v15 = sub_197616DA0();
    (*(v9 + 8))(v13, v3);
    *a2 = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t _s7OptionsVwet_0(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7OptionsVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s7OptionsV10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1975C9F84()
{
  result = qword_1EAF34DB8;
  if (!qword_1EAF34DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DB8);
  }

  return result;
}

unint64_t sub_1975C9FDC()
{
  result = qword_1EAF34DC0;
  if (!qword_1EAF34DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DC0);
  }

  return result;
}

unint64_t sub_1975CA034()
{
  result = qword_1EAF34DC8;
  if (!qword_1EAF34DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34DC8);
  }

  return result;
}

uint64_t CoreRule.Predicate.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___Predicate_id);
  v2 = *(v0 + OBJC_IVAR___Predicate_id + 8);

  return v1;
}

uint64_t CoreRule.Predicate.argument.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___Predicate_argument;
  v3 = *(v1 + OBJC_IVAR___Predicate_argument);
  v4 = *(v1 + OBJC_IVAR___Predicate_argument + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_19759291C(v3, v4, v5);
}

id CoreRule.Predicate.init(compoundOperation:)(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v13 = *a1;
  v5 = v13;
  v6 = CoreRule.Predicate.Operator.rawValue.getter();
  v7 = &v2[OBJC_IVAR___Predicate_id];
  *v7 = v6;
  v7[1] = v8;
  v9 = &v2[OBJC_IVAR___Predicate_argument];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 2;
  *&v2[OBJC_IVAR___Predicate_rawdata] = xmmword_19761D220;
  v2[OBJC_IVAR___Predicate_operation] = v5;
  v10 = &v2[OBJC_IVAR___Predicate_value];
  *v10 = 0u;
  v10[1] = 0u;
  *&v2[OBJC_IVAR___Predicate_queries] = 0;
  *&v2[OBJC_IVAR___Predicate_subpredicates] = 0;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id CoreRule.Predicate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1975CA278(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xE800000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746164776172 && a2 == 0xE700000000000000;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73656972657571 && a2 == 0xE700000000000000;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6964657270627573 && a2 == 0xED00007365746163)
            {

              return 6;
            }

            else
            {
              v12 = sub_197616EF0();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1975CA4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975CA278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975CA4DC(uint64_t a1)
{
  v2 = sub_19756B348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CA518(uint64_t a1)
{
  v2 = sub_19756B348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CoreRule.Predicate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CoreRule.Predicate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E08, &qword_19761D230);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B348();
  sub_197617260();
  v14 = *(v3 + OBJC_IVAR___Predicate_id);
  v15 = *(v3 + OBJC_IVAR___Predicate_id + 8);
  LOBYTE(v21) = 0;
  OUTLINED_FUNCTION_3_18();
  sub_197616E30();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR___Predicate_argument + 8);
    v17 = *(v3 + OBJC_IVAR___Predicate_argument + 16);
    v21 = *(v3 + OBJC_IVAR___Predicate_argument);
    v22 = v16;
    v23 = v17;
    HIBYTE(v20) = 1;
    sub_19759291C(v21, v16, v17);
    sub_1975CA8F0();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E60();
    sub_197580A80(v21, v22, v23);
    LOBYTE(v21) = *(v3 + OBJC_IVAR___Predicate_operation);
    HIBYTE(v20) = 2;
    sub_1975CA944();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E60();
    v18 = *(v3 + OBJC_IVAR___Predicate_rawdata + 8);
    v21 = *(v3 + OBJC_IVAR___Predicate_rawdata);
    v22 = v18;
    HIBYTE(v20) = 3;
    sub_19757C2FC(v21, v18);
    sub_197580F18();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    sub_197576558(v21, v22);
    LOBYTE(v21) = 4;
    sub_19759ECEC();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v21 = *(v3 + OBJC_IVAR___Predicate_queries);
    HIBYTE(v20) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E10, &qword_19761D238);
    sub_19756B3E8(&qword_1ED8167F0, sub_1975CA998);
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v21 = *(v3 + OBJC_IVAR___Predicate_subpredicates);
    HIBYTE(v20) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E18, &qword_19761D240);
    sub_1975CA9EC(&qword_1ED816800, sub_1975CAA54);
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1975CA8F0()
{
  result = qword_1ED816A38;
  if (!qword_1ED816A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A38);
  }

  return result;
}

unint64_t sub_1975CA944()
{
  result = qword_1ED816A28;
  if (!qword_1ED816A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A28);
  }

  return result;
}

unint64_t sub_1975CA998()
{
  result = qword_1ED816A90;
  if (!qword_1ED816A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A90);
  }

  return result;
}

uint64_t sub_1975CA9EC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34E18, &qword_19761D240);
    a2();
    result = OUTLINED_FUNCTION_10_6();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975CAA54()
{
  result = qword_1ED816AA0;
  if (!qword_1ED816AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AA0);
  }

  return result;
}

uint64_t sub_1975CAACC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CoreRule.Predicate.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1975CAB78()
{
  result = qword_1EAF34E28;
  if (!qword_1EAF34E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E28);
  }

  return result;
}

uint64_t CoreRule.Predicate.Argument.id.getter()
{
  if (!*(v0 + 16))
  {
    v1 = 0x28746E756F63;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 0x286C617665;
LABEL_5:
    v3 = v1;
    MEMORY[0x19A8E2A50](*v0, *(v0 + 8));
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    return v3;
  }

  return 0;
}

uint64_t CoreRule.Predicate.Argument.name.getter()
{
  if (*(v0 + 16) <= 1u)
  {
    v3 = v0;
    v2 = *v0;
    v1 = v3[1];
    v4 = OUTLINED_FUNCTION_19();
    sub_19759291C(v4, v5, v6);
  }

  return OUTLINED_FUNCTION_19();
}

uint64_t *CoreRule.Predicate.Argument.init(commonKeyPathKind:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3 >= 4)
  {
    v7 = *result;
    if (qword_1ED815ED8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for logger();
    __swift_project_value_buffer(v8, qword_1ED815EE0);
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000047, 0x8000000197624870);
    v9 = OUTLINED_FUNCTION_22();
    MEMORY[0x19A8E2A50](v9);
    sub_197558864();

    v10 = OUTLINED_FUNCTION_22();
    result = sub_1975CB5AC(v10, v11);
    v4 = 0;
    v5 = 0;
    LOBYTE(v6) = 2;
  }

  else
  {
    v4 = *&aLast[8 * v3];
    v5 = qword_19761DA30[v3];
    v6 = 0x1010001u >> (8 * v3);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t static CoreRule.Predicate.Argument.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_197616EF0();
      v23 = OUTLINED_FUNCTION_22();
      v25 = OUTLINED_FUNCTION_2_16(v23, v24, 0);
      v27 = OUTLINED_FUNCTION_2_16(v25, v26, 0);
      sub_197580A80(v27, v28, 0);
      v18 = OUTLINED_FUNCTION_22();
      v20 = 0;
      goto LABEL_15;
    }

    v57 = OUTLINED_FUNCTION_2_16(v21, v2, 0);
    v59 = OUTLINED_FUNCTION_2_16(v57, v58, 0);
    sub_197580A80(v59, v60, 0);
    v42 = OUTLINED_FUNCTION_19();
    v44 = 0;
LABEL_24:
    sub_197580A80(v42, v43, v44);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    v40 = OUTLINED_FUNCTION_19();
    sub_197580A80(v40, v41, 2u);
    v42 = 0;
    v43 = 0;
    v44 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v31 = OUTLINED_FUNCTION_22();
    v33 = OUTLINED_FUNCTION_2_16(v31, v32, v7);
    v35 = OUTLINED_FUNCTION_2_16(v33, v34, v4);
    sub_197580A80(v35, v36, v4);
    v37 = OUTLINED_FUNCTION_22();
    sub_197580A80(v37, v38, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    OUTLINED_FUNCTION_19();
    v9 = sub_197616EF0();
    v10 = OUTLINED_FUNCTION_22();
    sub_19759291C(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_1_20();
    sub_19759291C(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_1_20();
    sub_197580A80(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_22();
    v20 = 1;
LABEL_15:
    sub_197580A80(v18, v19, v20);
    return v9 & 1;
  }

  v39 = 1;
  v45 = OUTLINED_FUNCTION_1_20();
  sub_19759291C(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_1_20();
  sub_19759291C(v48, v49, v50);
  v51 = OUTLINED_FUNCTION_1_20();
  sub_197580A80(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_1_20();
  sub_197580A80(v54, v55, v56);
  return v39;
}

uint64_t sub_1975CAF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197616EF0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1975CAFFC(uint64_t a1)
{
  v2 = sub_19756B5B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB038(uint64_t a1)
{
  v2 = sub_19756B5B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CB074(uint64_t a1)
{
  v2 = sub_197571C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB0B0(uint64_t a1)
{
  v2 = sub_197571C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CB0EC(uint64_t a1)
{
  v2 = sub_1975CB5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB128(uint64_t a1)
{
  v2 = sub_1975CB5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CB168(uint64_t a1)
{
  v2 = sub_19756B560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CB1A4(uint64_t a1)
{
  v2 = sub_19756B560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Predicate.Argument.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E38, &qword_19761D410);
  v4 = OUTLINED_FUNCTION_0(v3);
  v43 = v5;
  v44 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v41 = v39 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E40, &qword_19761D418);
  OUTLINED_FUNCTION_0(v42);
  v40 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E48, &qword_19761D420);
  v17 = OUTLINED_FUNCTION_0(v16);
  v39[1] = v18;
  v39[2] = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E50, &qword_19761D428);
  OUTLINED_FUNCTION_0(v47);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v39 - v27;
  v29 = *v1;
  v45 = v1[1];
  v46 = v29;
  v30 = *(v1 + 16);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B5B4();
  sub_197617260();
  if (!v30)
  {
    v48 = 0;
    sub_197571C50();
    OUTLINED_FUNCTION_10_7();
    sub_197616E30();
    v33 = OUTLINED_FUNCTION_7_8();
    v35(v33, v34);
    return (*(v23 + 8))(v28, v30);
  }

  if (v30 == 1)
  {
    v49 = 1;
    sub_1975CB5C0();
    OUTLINED_FUNCTION_10_7();
    v32 = v42;
    sub_197616E30();
    (*(v40 + 8))(v15, v32);
    return (*(v23 + 8))(v28, v30);
  }

  v50 = 2;
  sub_19756B560();
  v37 = v41;
  v38 = v47;
  sub_197616DE0();
  (*(v43 + 8))(v37, v44);
  return (*(v23 + 8))(v28, v38);
}

uint64_t sub_1975CB584@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Argument.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975CB5AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_1975CB5C0()
{
  result = qword_1ED815E90;
  if (!qword_1ED815E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E90);
  }

  return result;
}

uint64_t sub_1975CB614(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975CB654(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1975CB698(uint64_t result, unsigned int a2)
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

unint64_t sub_1975CB6C4()
{
  result = qword_1EAF34E80;
  if (!qword_1EAF34E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E80);
  }

  return result;
}

unint64_t sub_1975CB71C()
{
  result = qword_1EAF34E88;
  if (!qword_1EAF34E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E88);
  }

  return result;
}

unint64_t sub_1975CB774()
{
  result = qword_1EAF34E90;
  if (!qword_1EAF34E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E90);
  }

  return result;
}

uint64_t sub_1975CB7D8()
{
  v0 = sub_1976161E0();
  v2 = v1;
  if (v0 == sub_1976161E0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_4_18();
  }

  return v5 & 1;
}

uint64_t sub_1975CB850(char a1, char a2)
{
  v3 = sub_1975A4D54(a1);
  v5 = v4;
  if (v3 == sub_1975A4D54(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18();
  }

  return v8 & 1;
}

uint64_t sub_1975CB8C8(unsigned __int8 a1, char a2)
{
  v2 = 0xEF736E6F69676552;
  v3 = 0x65726F7453707061;
  v4 = a1;
  v5 = 0x65726F7453707061;
  v6 = 0xEF736E6F69676552;
  switch(v4)
  {
    case 1:
      v5 = 0x53746E65746E6F63;
      v7 = 1970561396;
      goto LABEL_6;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x8000000197623370;
      break;
    case 3:
      v5 = 0x656C6C6174736E69;
      v7 = 1886404964;
LABEL_6:
      v6 = v7 | 0xED00007300000000;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x736E6F69676572;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v5 = 0x6570795472657375;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x53746E65746E6F63;
      v8 = 1970561396;
      goto LABEL_13;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x8000000197623370;
      break;
    case 3:
      v3 = 0x656C6C6174736E69;
      v8 = 1886404964;
LABEL_13:
      v2 = v8 | 0xED00007300000000;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x736E6F69676572;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v3 = 0x6570795472657375;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_197616EF0();
  }

  return v10 & 1;
}

uint64_t sub_1975CBAA0(unsigned __int8 a1, char a2)
{
  v2 = 0x656C746974;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656C746974;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 2036625250;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x736E6F69746361;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1852793705;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 2036625250;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x736E6F69746361;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1852793705;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18();
  }

  return v8 & 1;
}

uint64_t sub_1975CBBD4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6567616D69;
  }

  else
  {
    v3 = 0x6C6F626D7973;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x6567616D69;
  }

  else
  {
    v5 = 0x6C6F626D7973;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18();
  }

  return v8 & 1;
}

uint64_t sub_1975CBC60(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6F43746E65636361;
  }

  else
  {
    v3 = 97;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xEB00000000726F6CLL;
  }

  if (a2)
  {
    v5 = 0x6F43746E65636361;
  }

  else
  {
    v5 = 97;
  }

  if (a2)
  {
    v6 = 0xEB00000000726F6CLL;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18();
  }

  return v8 & 1;
}

uint64_t sub_1975CBCF0(char a1, char a2)
{
  v3 = 0xE100000000000000;
  v4 = 112;
  switch(a1)
  {
    case 1:
      v4 = 0xD000000000000010;
      v3 = 0x8000000197623530;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v4 = 0x6C6F626D7973;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v4 = 1954047348;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 112;
  switch(a2)
  {
    case 1:
      v6 = 0xD000000000000010;
      v5 = 0x8000000197623530;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x6C6F626D7973;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1954047348;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18();
  }

  return v8 & 1;
}

uint64_t sub_1975CBE10(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6579616C70736964;
  }

  else
  {
    v3 = 0x4449706974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xED00006574614464;
  }

  if (a2)
  {
    v5 = 0x6579616C70736964;
  }

  else
  {
    v5 = 0x4449706974;
  }

  if (a2)
  {
    v6 = 0xED00006574614464;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_18();
  }

  return v8 & 1;
}

uint64_t sub_1975CBEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_18();
  }

  return v9 & 1;
}

uint64_t CoreRule.Predicate.Operator.evaluate<A>(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  OUTLINED_FUNCTION_14();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v77[3] = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v77[1] = v77 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v77[2] = v77 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v18 = *v2;
  v19 = OUTLINED_FUNCTION_0_23();
  if ((sub_1975CBEC4(v19, 0, v20) & 1) == 0)
  {
LABEL_5:
    v28 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v28, 1, v29))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8())
      {
        v31 = OUTLINED_FUNCTION_1_21();
        default argument 1 of Equatable.isNotEqual(_:checkReverse:)(v31);
        v32 = OUTLINED_FUNCTION_2_17();
        v27 = Equatable.isNotEqual(_:checkReverse:)(v32, v33, v34);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v79, &qword_1EAF34BE0, &qword_19761BB70);
    }

    v36 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v36, 6, v37))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
      OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8())
      {
        sub_1975558C4(&v79, v81);
        v39 = v82;
        __swift_project_boxed_opaque_existential_1Tm(v81, v82);
        sub_1975674F0(v78, &v79);
        if (v80)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
          if (swift_dynamicCast())
          {
            v40 = v83;
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          sub_19755C404(&v79, &qword_1EAF34340, &unk_19761C8E0);
          v40 = 0;
        }

        v84.value._rawValue = v40;
        v84.is_nil = v39;
        v35 = Equatable.exists(in:)(v84);

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v79, &qword_1EAF34BE0, &qword_19761BB70);
    }

    v41 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v41, 2, v42))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8())
      {
        v44 = OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isLessThan(_:checkReverse:)(v44);
        v45 = OUTLINED_FUNCTION_2_17();
        v49 = Comparable.isLessThan(_:checkReverse:)(v45, v46, v47, v48);
LABEL_32:
        v35 = v49;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm(v81);
        return v35 & 1;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v79, &qword_1EAF34678, &qword_197618EB0);
    }

    v50 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v50, 3, v51))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8())
      {
        v53 = OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isLessThanOrEqual(_:checkReverse:)(v53);
        v54 = OUTLINED_FUNCTION_2_17();
        v49 = Comparable.isLessThanOrEqual(_:checkReverse:)(v54, v55, v56, v57);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v79, &qword_1EAF34678, &qword_197618EB0);
    }

    v58 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v58, 4, v59))
    {
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_6_7();
      v60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8())
      {
        v61 = OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isGreaterThan(_:checkReverse:)(v61);
        v62 = OUTLINED_FUNCTION_2_17();
        v49 = Comparable.isGreaterThan(_:checkReverse:)(v62, v63, v64, v65);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v79, &qword_1EAF34678, &qword_197618EB0);
    }

    v66 = OUTLINED_FUNCTION_0_23();
    if (sub_1975CBEC4(v66, 5, v67))
    {
      v68 = *(v4 + 16);
      OUTLINED_FUNCTION_6_7();
      v68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34680, &qword_197618EB8);
      OUTLINED_FUNCTION_7_9();
      if (OUTLINED_FUNCTION_10_8())
      {
        v69 = OUTLINED_FUNCTION_1_21();
        default argument 1 of Comparable.isGreaterThanOrEqual(_:checkReverse:)(v69);
        v70 = OUTLINED_FUNCTION_2_17();
        v49 = Comparable.isGreaterThanOrEqual(_:checkReverse:)(v70, v71, v72, v73);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_3_19();
      sub_19755C404(&v79, &qword_1EAF34678, &qword_197618EB0);
    }

    else
    {
      v68 = *(v4 + 16);
    }

    OUTLINED_FUNCTION_6_7();
    v68();
    sub_1975C10C4();
    if (swift_dynamicCast())
    {
      v74 = v81[0];
      sub_1975674F0(v78, v81);
      if (v82)
      {
        if (swift_dynamicCast())
        {
          v75 = v79;
          LOBYTE(v81[0]) = v18;
          v35 = sub_1975CC628();

          return v35 & 1;
        }
      }

      else
      {

        sub_19755C404(v81, &qword_1EAF34340, &unk_19761C8E0);
      }
    }

    v35 = 0;
    return v35 & 1;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_6_7();
  v21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
  OUTLINED_FUNCTION_7_9();
  if ((OUTLINED_FUNCTION_10_8() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_19();
    sub_19755C404(&v79, &qword_1EAF34BE0, &qword_19761BB70);
    goto LABEL_5;
  }

  v22 = OUTLINED_FUNCTION_1_21();
  default argument 1 of Equatable.isEqual(_:checkReverse:)(v22, v23);
  v24 = OUTLINED_FUNCTION_2_17();
  v27 = Equatable.isEqual(_:checkReverse:)(v24, v25, v26);
LABEL_8:
  v35 = v27;
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  return v35 & 1;
}

uint64_t sub_1975CC628()
{
  switch(*v0)
  {
    case 0:
      v1 = OUTLINED_FUNCTION_8_12();
      return [v1 v2];
    case 1:
      v11 = OUTLINED_FUNCTION_8_12();
      return [v11 v12] ^ 1;
    case 2:
      v7 = OUTLINED_FUNCTION_8_12();
      v6 = [v7 v8] + 1 == 0;
      goto LABEL_10;
    case 3:
      v9 = OUTLINED_FUNCTION_8_12();
      if ([v9 v10] != -1)
      {
        goto LABEL_9;
      }

      result = 1;
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_8_12();
      v6 = [v4 v5] == 1;
      goto LABEL_10;
    case 5:
      v13 = OUTLINED_FUNCTION_8_12();
      result = [v13 v14];
      if (result != 1)
      {
LABEL_9:
        v15 = OUTLINED_FUNCTION_8_12();
        v6 = [v15 v16] == 0;
LABEL_10:
        result = v6;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1975CC73C()
{
  result = qword_1EAF34E98;
  if (!qword_1EAF34E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34E98);
  }

  return result;
}

uint64_t sub_1975CC7A8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreRule.Predicate.Operator.init(rawValue:)(a1);
}

uint64_t sub_1975CC7B4@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Operator.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1975CC864()
{
  result = qword_1ED816A20;
  if (!qword_1ED816A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A20);
  }

  return result;
}

uint64_t sub_1975CC8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_4(a1, a2, a3, a4, a5);
  sub_1975586C0(v5, v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F38, &qword_19761DED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F40, &qword_19761DED8);
  if (!OUTLINED_FUNCTION_6_8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F48, &unk_19761DEE0);
    v7 = OUTLINED_FUNCTION_9_10();
    if (v7)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_1_22(v7, v8, v9, MEMORY[0x1E69E6370], v10, v11, v12, v13, v159, v170, v186);
    v15 = swift_dynamicCast();
    if (v15)
    {
      v14 = v187;
      OUTLINED_FUNCTION_0_24(v15, v16, v17, MEMORY[0x1E69E6370], v18, v19, v20, v21, v160);
      v15 = swift_dynamicCast();
      if (v15)
      {
        OUTLINED_FUNCTION_15_6();
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm((v6 + 32));
        __swift_destroy_boxed_opaque_existential_0Tm(v203);
        return v14 & 1;
      }
    }

    OUTLINED_FUNCTION_1_22(v15, v16, v17, MEMORY[0x1E69E6530], v18, v19, v20, v21, v160, v171, v187);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v29 = v188;
      OUTLINED_FUNCTION_0_24(v22, v23, v24, MEMORY[0x1E69E6530], v25, v26, v27, v28, v161);
      v22 = swift_dynamicCast();
      if (v22)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v22, v23, v24, MEMORY[0x1E69E7230], v25, v26, v27, v28, v161, v172, v188);
    v30 = swift_dynamicCast();
    if (v30)
    {
      v37 = v189;
      OUTLINED_FUNCTION_0_24(v30, v31, v32, MEMORY[0x1E69E7230], v33, v34, v35, v36, v162);
      v30 = swift_dynamicCast();
      if (v30)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1_22(v30, v31, v32, MEMORY[0x1E69E7290], v33, v34, v35, v36, v162, v173, v189);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v37 = v190;
      OUTLINED_FUNCTION_0_24(v39, v40, v41, MEMORY[0x1E69E7290], v42, v43, v44, v45, v163);
      v39 = swift_dynamicCast();
      if (v39)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_1_22(v39, v40, v41, MEMORY[0x1E69E72F0], v42, v43, v44, v45, v163, v174, v190);
    v46 = swift_dynamicCast();
    if (v46)
    {
      v37 = v191;
      OUTLINED_FUNCTION_0_24(v46, v47, v48, MEMORY[0x1E69E72F0], v49, v50, v51, v52, v164);
      v46 = swift_dynamicCast();
      if (v46)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_1_22(v46, v47, v48, MEMORY[0x1E69E7360], v49, v50, v51, v52, v164, v175, v191);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v29 = v192;
      OUTLINED_FUNCTION_0_24(v54, v55, v56, MEMORY[0x1E69E7360], v57, v58, v59, v60, v161);
      v54 = swift_dynamicCast();
      if (v54)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v54, v55, v56, MEMORY[0x1E69E6810], v57, v58, v59, v60, v161, v176, v192);
    v61 = swift_dynamicCast();
    if (v61)
    {
      v29 = v193;
      OUTLINED_FUNCTION_0_24(v61, v62, v63, MEMORY[0x1E69E6810], v64, v65, v66, v67, v161);
      v61 = swift_dynamicCast();
      if (v61)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v61, v62, v63, MEMORY[0x1E69E7508], v64, v65, v66, v67, v161, v177, v193);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v37 = v194;
      OUTLINED_FUNCTION_0_24(v68, v69, v70, MEMORY[0x1E69E7508], v71, v72, v73, v74, v162);
      v68 = swift_dynamicCast();
      if (v68)
      {
LABEL_12:
        v38 = v162;
LABEL_19:
        v53 = v37 == v38;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v68, v69, v70, MEMORY[0x1E69E75F8], v71, v72, v73, v74, v162, v178, v194);
    v75 = swift_dynamicCast();
    if (v75)
    {
      v37 = v195;
      OUTLINED_FUNCTION_0_24(v75, v76, v77, MEMORY[0x1E69E75F8], v78, v79, v80, v81, v163);
      v75 = swift_dynamicCast();
      if (v75)
      {
LABEL_15:
        v38 = v163;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v75, v76, v77, MEMORY[0x1E69E7668], v78, v79, v80, v81, v163, v179, v195);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v37 = v196;
      OUTLINED_FUNCTION_0_24(v82, v83, v84, MEMORY[0x1E69E7668], v85, v86, v87, v88, v164);
      v82 = swift_dynamicCast();
      if (v82)
      {
LABEL_18:
        v38 = v164;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v82, v83, v84, MEMORY[0x1E69E76D8], v85, v86, v87, v88, v164, v180, v196);
    v89 = swift_dynamicCast();
    if (v89)
    {
      v29 = v197;
      OUTLINED_FUNCTION_0_24(v89, v90, v91, MEMORY[0x1E69E76D8], v92, v93, v94, v95, v161);
      v89 = swift_dynamicCast();
      if (v89)
      {
LABEL_32:
        v53 = v29 == v161;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v89, v90, v91, MEMORY[0x1E69E6448], v92, v93, v94, v95, v161, v181, v197);
    v97 = swift_dynamicCast();
    if (v97)
    {
      OUTLINED_FUNCTION_0_24(v97, v98, v99, MEMORY[0x1E69E6448], v100, v101, v102, v103, v165);
      v97 = swift_dynamicCast();
      if (v97)
      {
        v53 = v198 == *&v165;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v97, v98, v99, MEMORY[0x1E69E63B0], v100, v101, v102, v103, v165, v182, SLOBYTE(v198));
    v104 = swift_dynamicCast();
    if (v104)
    {
      OUTLINED_FUNCTION_0_24(v104, v105, v106, MEMORY[0x1E69E63B0], v107, v108, v109, v110, v166);
      v104 = swift_dynamicCast();
      if (v104)
      {
        v53 = v199 == *&v166;
LABEL_33:
        v14 = v53;
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_1_22(v104, v105, v106, MEMORY[0x1E69E6158], v107, v108, v109, v110, v166, v183, SLOBYTE(v199));
    v111 = swift_dynamicCast();
    if (v111)
    {
      OUTLINED_FUNCTION_0_24(v111, v112, v113, MEMORY[0x1E69E6158], v114, v115, v116, v117, v167);
      if (swift_dynamicCast())
      {
        if (v200 == v167 && v202 == v184)
        {
          v14 = 1;
          goto LABEL_63;
        }

        v119 = OUTLINED_FUNCTION_8_13();
LABEL_59:
        v14 = v119;
LABEL_63:

        goto LABEL_36;
      }
    }

    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34398, &qword_197618398);
    OUTLINED_FUNCTION_1_22(v120, v121, v122, v123, v124, v125, v126, v127, v167, v184, v200);
    v128 = OUTLINED_FUNCTION_13_8();
    if (v128)
    {
      OUTLINED_FUNCTION_0_24(v128, v129, v130, v131, v132, v133, v134, v135, v168);
      if (OUTLINED_FUNCTION_13_8())
      {
        v136 = OUTLINED_FUNCTION_14_2();
        sub_1975F0A14(v136, v137);
        goto LABEL_59;
      }
    }

    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A0, &unk_1976183A0);
    OUTLINED_FUNCTION_1_22(v138, v139, v140, v141, v142, v143, v144, v145, v168, v185, v201);
    v146 = OUTLINED_FUNCTION_13_8();
    if (v146)
    {
      OUTLINED_FUNCTION_0_24(v146, v147, v148, v149, v150, v151, v152, v153, v169);
      if (OUTLINED_FUNCTION_13_8())
      {
        v154 = OUTLINED_FUNCTION_14_2();
        v119 = sub_1975CD854(v154, v155, v156, v157, v158);
        goto LABEL_59;
      }
    }

    sub_1975CFB0C(v203, &qword_1EAF34F38, &qword_19761DED0);
    v14 = 0;
    return v14 & 1;
  }

LABEL_4:
  sub_1975CFB0C(v203, &qword_1EAF34F38, &qword_19761DED0);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_1975CCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_4(a1, a2, a3, a4, a5);
  sub_1975586C0(v5, v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F38, &qword_19761DED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F40, &qword_19761DED8);
  if (!OUTLINED_FUNCTION_6_8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F48, &unk_19761DEE0);
    v7 = OUTLINED_FUNCTION_9_10();
    if (v7)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_1_22(v7, v8, v9, MEMORY[0x1E69E6370], v10, v11, v12, v13, v159, v170, v186);
    v15 = swift_dynamicCast();
    if (v15)
    {
      v14 = v187;
      OUTLINED_FUNCTION_0_24(v15, v16, v17, MEMORY[0x1E69E6370], v18, v19, v20, v21, v160);
      v15 = swift_dynamicCast();
      if (v15)
      {
        OUTLINED_FUNCTION_15_6();
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm((v6 + 32));
        __swift_destroy_boxed_opaque_existential_0Tm(v203);
        return v14 & 1;
      }
    }

    OUTLINED_FUNCTION_1_22(v15, v16, v17, MEMORY[0x1E69E6530], v18, v19, v20, v21, v160, v171, v187);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v29 = v188;
      OUTLINED_FUNCTION_0_24(v22, v23, v24, MEMORY[0x1E69E6530], v25, v26, v27, v28, v161);
      v22 = swift_dynamicCast();
      if (v22)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v22, v23, v24, MEMORY[0x1E69E7230], v25, v26, v27, v28, v161, v172, v188);
    v30 = swift_dynamicCast();
    if (v30)
    {
      v37 = v189;
      OUTLINED_FUNCTION_0_24(v30, v31, v32, MEMORY[0x1E69E7230], v33, v34, v35, v36, v162);
      v30 = swift_dynamicCast();
      if (v30)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1_22(v30, v31, v32, MEMORY[0x1E69E7290], v33, v34, v35, v36, v162, v173, v189);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v37 = v190;
      OUTLINED_FUNCTION_0_24(v39, v40, v41, MEMORY[0x1E69E7290], v42, v43, v44, v45, v163);
      v39 = swift_dynamicCast();
      if (v39)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_1_22(v39, v40, v41, MEMORY[0x1E69E72F0], v42, v43, v44, v45, v163, v174, v190);
    v46 = swift_dynamicCast();
    if (v46)
    {
      v37 = v191;
      OUTLINED_FUNCTION_0_24(v46, v47, v48, MEMORY[0x1E69E72F0], v49, v50, v51, v52, v164);
      v46 = swift_dynamicCast();
      if (v46)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_1_22(v46, v47, v48, MEMORY[0x1E69E7360], v49, v50, v51, v52, v164, v175, v191);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v29 = v192;
      OUTLINED_FUNCTION_0_24(v54, v55, v56, MEMORY[0x1E69E7360], v57, v58, v59, v60, v161);
      v54 = swift_dynamicCast();
      if (v54)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v54, v55, v56, MEMORY[0x1E69E6810], v57, v58, v59, v60, v161, v176, v192);
    v61 = swift_dynamicCast();
    if (v61)
    {
      v29 = v193;
      OUTLINED_FUNCTION_0_24(v61, v62, v63, MEMORY[0x1E69E6810], v64, v65, v66, v67, v161);
      v61 = swift_dynamicCast();
      if (v61)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v61, v62, v63, MEMORY[0x1E69E7508], v64, v65, v66, v67, v161, v177, v193);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v37 = v194;
      OUTLINED_FUNCTION_0_24(v68, v69, v70, MEMORY[0x1E69E7508], v71, v72, v73, v74, v162);
      v68 = swift_dynamicCast();
      if (v68)
      {
LABEL_12:
        v38 = v162;
LABEL_19:
        v53 = v37 == v38;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v68, v69, v70, MEMORY[0x1E69E75F8], v71, v72, v73, v74, v162, v178, v194);
    v75 = swift_dynamicCast();
    if (v75)
    {
      v37 = v195;
      OUTLINED_FUNCTION_0_24(v75, v76, v77, MEMORY[0x1E69E75F8], v78, v79, v80, v81, v163);
      v75 = swift_dynamicCast();
      if (v75)
      {
LABEL_15:
        v38 = v163;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v75, v76, v77, MEMORY[0x1E69E7668], v78, v79, v80, v81, v163, v179, v195);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v37 = v196;
      OUTLINED_FUNCTION_0_24(v82, v83, v84, MEMORY[0x1E69E7668], v85, v86, v87, v88, v164);
      v82 = swift_dynamicCast();
      if (v82)
      {
LABEL_18:
        v38 = v164;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v82, v83, v84, MEMORY[0x1E69E76D8], v85, v86, v87, v88, v164, v180, v196);
    v89 = swift_dynamicCast();
    if (v89)
    {
      v29 = v197;
      OUTLINED_FUNCTION_0_24(v89, v90, v91, MEMORY[0x1E69E76D8], v92, v93, v94, v95, v161);
      v89 = swift_dynamicCast();
      if (v89)
      {
LABEL_32:
        v53 = v29 == v161;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v89, v90, v91, MEMORY[0x1E69E6448], v92, v93, v94, v95, v161, v181, v197);
    v97 = swift_dynamicCast();
    if (v97)
    {
      OUTLINED_FUNCTION_0_24(v97, v98, v99, MEMORY[0x1E69E6448], v100, v101, v102, v103, v165);
      v97 = swift_dynamicCast();
      if (v97)
      {
        v53 = v198 == *&v165;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v97, v98, v99, MEMORY[0x1E69E63B0], v100, v101, v102, v103, v165, v182, SLOBYTE(v198));
    v104 = swift_dynamicCast();
    if (v104)
    {
      OUTLINED_FUNCTION_0_24(v104, v105, v106, MEMORY[0x1E69E63B0], v107, v108, v109, v110, v166);
      v104 = swift_dynamicCast();
      if (v104)
      {
        v53 = v199 == *&v166;
LABEL_33:
        v14 = v53;
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_1_22(v104, v105, v106, MEMORY[0x1E69E6158], v107, v108, v109, v110, v166, v183, SLOBYTE(v199));
    v111 = swift_dynamicCast();
    if (v111)
    {
      OUTLINED_FUNCTION_0_24(v111, v112, v113, MEMORY[0x1E69E6158], v114, v115, v116, v117, v167);
      if (swift_dynamicCast())
      {
        if (v200 == v167 && v202 == v184)
        {
          v14 = 1;
          goto LABEL_63;
        }

        v119 = OUTLINED_FUNCTION_8_13();
LABEL_59:
        v14 = v119;
LABEL_63:

        goto LABEL_36;
      }
    }

    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34360, &qword_19761E170);
    OUTLINED_FUNCTION_1_22(v120, v121, v122, v123, v124, v125, v126, v127, v167, v184, v200);
    v128 = OUTLINED_FUNCTION_13_8();
    if (v128)
    {
      OUTLINED_FUNCTION_0_24(v128, v129, v130, v131, v132, v133, v134, v135, v168);
      if (OUTLINED_FUNCTION_13_8())
      {
        v136 = OUTLINED_FUNCTION_14_2();
        sub_1975F0B6C(v136, v137);
        goto LABEL_59;
      }
    }

    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34348, &unk_197618360);
    OUTLINED_FUNCTION_1_22(v138, v139, v140, v141, v142, v143, v144, v145, v168, v185, v201);
    v146 = OUTLINED_FUNCTION_13_8();
    if (v146)
    {
      OUTLINED_FUNCTION_0_24(v146, v147, v148, v149, v150, v151, v152, v153, v169);
      if (OUTLINED_FUNCTION_13_8())
      {
        v154 = OUTLINED_FUNCTION_14_2();
        v119 = sub_1975CD854(v154, v155, v156, v157, v158);
        goto LABEL_59;
      }
    }

    sub_1975CFB0C(v203, &qword_1EAF34F38, &qword_19761DED0);
    v14 = 0;
    return v14 & 1;
  }

LABEL_4:
  sub_1975CFB0C(v203, &qword_1EAF34F38, &qword_19761DED0);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_1975CD320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_4(a1, a2, a3, a4, a5);
  sub_1975586C0(v5, v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F38, &qword_19761DED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F40, &qword_19761DED8);
  if (!OUTLINED_FUNCTION_6_8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F48, &unk_19761DEE0);
    v7 = OUTLINED_FUNCTION_9_10();
    if (v7)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_1_22(v7, v8, v9, MEMORY[0x1E69E6370], v10, v11, v12, v13, v159, v170, v186);
    v15 = swift_dynamicCast();
    if (v15)
    {
      v14 = v187;
      OUTLINED_FUNCTION_0_24(v15, v16, v17, MEMORY[0x1E69E6370], v18, v19, v20, v21, v160);
      v15 = swift_dynamicCast();
      if (v15)
      {
        OUTLINED_FUNCTION_15_6();
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm((v6 + 32));
        __swift_destroy_boxed_opaque_existential_0Tm(v203);
        return v14 & 1;
      }
    }

    OUTLINED_FUNCTION_1_22(v15, v16, v17, MEMORY[0x1E69E6530], v18, v19, v20, v21, v160, v171, v187);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v29 = v188;
      OUTLINED_FUNCTION_0_24(v22, v23, v24, MEMORY[0x1E69E6530], v25, v26, v27, v28, v161);
      v22 = swift_dynamicCast();
      if (v22)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v22, v23, v24, MEMORY[0x1E69E7230], v25, v26, v27, v28, v161, v172, v188);
    v30 = swift_dynamicCast();
    if (v30)
    {
      v37 = v189;
      OUTLINED_FUNCTION_0_24(v30, v31, v32, MEMORY[0x1E69E7230], v33, v34, v35, v36, v162);
      v30 = swift_dynamicCast();
      if (v30)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1_22(v30, v31, v32, MEMORY[0x1E69E7290], v33, v34, v35, v36, v162, v173, v189);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v37 = v190;
      OUTLINED_FUNCTION_0_24(v39, v40, v41, MEMORY[0x1E69E7290], v42, v43, v44, v45, v163);
      v39 = swift_dynamicCast();
      if (v39)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_1_22(v39, v40, v41, MEMORY[0x1E69E72F0], v42, v43, v44, v45, v163, v174, v190);
    v46 = swift_dynamicCast();
    if (v46)
    {
      v37 = v191;
      OUTLINED_FUNCTION_0_24(v46, v47, v48, MEMORY[0x1E69E72F0], v49, v50, v51, v52, v164);
      v46 = swift_dynamicCast();
      if (v46)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_1_22(v46, v47, v48, MEMORY[0x1E69E7360], v49, v50, v51, v52, v164, v175, v191);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v29 = v192;
      OUTLINED_FUNCTION_0_24(v54, v55, v56, MEMORY[0x1E69E7360], v57, v58, v59, v60, v161);
      v54 = swift_dynamicCast();
      if (v54)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v54, v55, v56, MEMORY[0x1E69E6810], v57, v58, v59, v60, v161, v176, v192);
    v61 = swift_dynamicCast();
    if (v61)
    {
      v29 = v193;
      OUTLINED_FUNCTION_0_24(v61, v62, v63, MEMORY[0x1E69E6810], v64, v65, v66, v67, v161);
      v61 = swift_dynamicCast();
      if (v61)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_22(v61, v62, v63, MEMORY[0x1E69E7508], v64, v65, v66, v67, v161, v177, v193);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v37 = v194;
      OUTLINED_FUNCTION_0_24(v68, v69, v70, MEMORY[0x1E69E7508], v71, v72, v73, v74, v162);
      v68 = swift_dynamicCast();
      if (v68)
      {
LABEL_12:
        v38 = v162;
LABEL_19:
        v53 = v37 == v38;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v68, v69, v70, MEMORY[0x1E69E75F8], v71, v72, v73, v74, v162, v178, v194);
    v75 = swift_dynamicCast();
    if (v75)
    {
      v37 = v195;
      OUTLINED_FUNCTION_0_24(v75, v76, v77, MEMORY[0x1E69E75F8], v78, v79, v80, v81, v163);
      v75 = swift_dynamicCast();
      if (v75)
      {
LABEL_15:
        v38 = v163;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v75, v76, v77, MEMORY[0x1E69E7668], v78, v79, v80, v81, v163, v179, v195);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v37 = v196;
      OUTLINED_FUNCTION_0_24(v82, v83, v84, MEMORY[0x1E69E7668], v85, v86, v87, v88, v164);
      v82 = swift_dynamicCast();
      if (v82)
      {
LABEL_18:
        v38 = v164;
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_1_22(v82, v83, v84, MEMORY[0x1E69E76D8], v85, v86, v87, v88, v164, v180, v196);
    v89 = swift_dynamicCast();
    if (v89)
    {
      v29 = v197;
      OUTLINED_FUNCTION_0_24(v89, v90, v91, MEMORY[0x1E69E76D8], v92, v93, v94, v95, v161);
      v89 = swift_dynamicCast();
      if (v89)
      {
LABEL_32:
        v53 = v29 == v161;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v89, v90, v91, MEMORY[0x1E69E6448], v92, v93, v94, v95, v161, v181, v197);
    v97 = swift_dynamicCast();
    if (v97)
    {
      OUTLINED_FUNCTION_0_24(v97, v98, v99, MEMORY[0x1E69E6448], v100, v101, v102, v103, v165);
      v97 = swift_dynamicCast();
      if (v97)
      {
        v53 = v198 == *&v165;
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_1_22(v97, v98, v99, MEMORY[0x1E69E63B0], v100, v101, v102, v103, v165, v182, SLOBYTE(v198));
    v104 = swift_dynamicCast();
    if (v104)
    {
      OUTLINED_FUNCTION_0_24(v104, v105, v106, MEMORY[0x1E69E63B0], v107, v108, v109, v110, v166);
      v104 = swift_dynamicCast();
      if (v104)
      {
        v53 = v199 == *&v166;
LABEL_33:
        v14 = v53;
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_1_22(v104, v105, v106, MEMORY[0x1E69E6158], v107, v108, v109, v110, v166, v183, SLOBYTE(v199));
    v111 = swift_dynamicCast();
    if (v111)
    {
      OUTLINED_FUNCTION_0_24(v111, v112, v113, MEMORY[0x1E69E6158], v114, v115, v116, v117, v167);
      if (swift_dynamicCast())
      {
        if (v200 == v167 && v202 == v184)
        {
          v14 = 1;
          goto LABEL_63;
        }

        v119 = OUTLINED_FUNCTION_8_13();
LABEL_59:
        v14 = v119;
LABEL_63:

        goto LABEL_36;
      }
    }

    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34370, &qword_197618370);
    OUTLINED_FUNCTION_1_22(v120, v121, v122, v123, v124, v125, v126, v127, v167, v184, v200);
    v128 = OUTLINED_FUNCTION_13_8();
    if (v128)
    {
      OUTLINED_FUNCTION_0_24(v128, v129, v130, v131, v132, v133, v134, v135, v168);
      if (OUTLINED_FUNCTION_13_8())
      {
        v136 = OUTLINED_FUNCTION_14_2();
        sub_1975F0BAC(v136, v137);
        goto LABEL_59;
      }
    }

    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34378, &qword_197618378);
    OUTLINED_FUNCTION_1_22(v138, v139, v140, v141, v142, v143, v144, v145, v168, v185, v201);
    v146 = OUTLINED_FUNCTION_13_8();
    if (v146)
    {
      OUTLINED_FUNCTION_0_24(v146, v147, v148, v149, v150, v151, v152, v153, v169);
      if (OUTLINED_FUNCTION_13_8())
      {
        v154 = OUTLINED_FUNCTION_14_2();
        v119 = sub_1975CD854(v154, v155, v156, v157, v158);
        goto LABEL_59;
      }
    }

    sub_1975CFB0C(v203, &qword_1EAF34F38, &qword_19761DED0);
    v14 = 0;
    return v14 & 1;
  }

LABEL_4:
  sub_1975CFB0C(v203, &qword_1EAF34F38, &qword_19761DED0);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_1975CD854(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t (*a4)(_BYTE *, _BYTE *), void (*a5)(_BYTE *))
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v9 = a1 + 32;
      v10 = a2 + 32;
      do
      {
        a3(v9, v14);
        a3(v10, v13);
        v11 = a4(v14, v13);
        a5(v13);
        a5(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v9 += 32;
        v10 += 32;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1975CD944(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_197553D0C();
    v4 = a1 + 32;
    v3 = v40;
    do
    {
      sub_1975C0C8C(v4, &v35);
      if (v38)
      {
        OUTLINED_FUNCTION_21_4();
        *&v29[0] = v5;
        *(&v29[0] + 1) = 0xE900000000000020;
        v6 = 0xE200000000000000;
        v7 = 15677;
        switch(v35)
        {
          case 1:
            v7 = 15649;
            break;
          case 2:
            v6 = 0xE100000000000000;
            v7 = 60;
            break;
          case 3:
            v7 = 15676;
            break;
          case 4:
            v6 = 0xE100000000000000;
            v7 = 62;
            break;
          case 5:
            v7 = 15678;
            break;
          case 6:
            v7 = 28265;
            break;
          case 7:
            v6 = 0xE300000000000000;
            v7 = 6581857;
            break;
          case 8:
            v7 = 29295;
            break;
          case 9:
            v6 = 0xE300000000000000;
            v7 = 7889261;
            break;
          case 10:
            v6 = 0xE300000000000000;
            v7 = 7235949;
            break;
          case 11:
            v7 = OUTLINED_FUNCTION_10_9();
            break;
          case 12:
            v7 = OUTLINED_FUNCTION_17_6();
            break;
          default:
            break;
        }

        MEMORY[0x19A8E2A50](v7, v6);

        MEMORY[0x19A8E2A50](46, 0xE100000000000000);
        MEMORY[0x19A8E2A50](v36, v37);
        v10 = *(&v29[0] + 1);
        v11 = *&v29[0];
      }

      else
      {
        v33 = v36;
        v34 = v37;

        v8 = 0xE100000000000000;
        MEMORY[0x19A8E2A50](32, 0xE100000000000000);
        v9 = 60;
        switch(v35)
        {
          case 1:
            v8 = 0xE200000000000000;
            v9 = 15649;
            break;
          case 2:
            break;
          case 3:
            v8 = 0xE200000000000000;
            v9 = 15676;
            break;
          case 4:
            v9 = 62;
            break;
          case 5:
            v8 = 0xE200000000000000;
            v9 = 15678;
            break;
          case 6:
            v8 = 0xE200000000000000;
            v9 = 28265;
            break;
          case 7:
            v8 = 0xE300000000000000;
            v9 = 6581857;
            break;
          case 8:
            v8 = 0xE200000000000000;
            v9 = 29295;
            break;
          case 9:
            v8 = 0xE300000000000000;
            v9 = 7889261;
            break;
          case 10:
            v8 = 0xE300000000000000;
            v9 = 7235949;
            break;
          case 11:
            v9 = OUTLINED_FUNCTION_10_9();
            break;
          case 12:
            v9 = OUTLINED_FUNCTION_17_6();
            break;
          default:
            v8 = 0xE200000000000000;
            v9 = 15677;
            break;
        }

        MEMORY[0x19A8E2A50](v9, v8);

        MEMORY[0x19A8E2A50](8736, 0xE200000000000000);
        sub_1975CF4F0(&v39, v31, &qword_1EAF34930, &unk_19761DB90);
        if (v32)
        {
          sub_1975586C0(v31, v30);
          if (swift_dynamicCast())
          {
            memset(v29, 0, 32);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
            v12 = sub_197616200();
            v14 = v13;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343D0, &qword_1976183D0);
            if (swift_dynamicCast())
            {
              sub_19756EED8(v29, v28);
              __swift_project_boxed_opaque_existential_1Tm(v28, v28[3]);
              v12 = sub_197616E80();
              v14 = v15;
              __swift_destroy_boxed_opaque_existential_0Tm(v28);
            }

            else
            {
              v16 = v32;
              v17 = __swift_project_boxed_opaque_existential_1Tm(v31, v32);
              v18 = *(*(v16 - 8) + 64);
              MEMORY[0x1EEE9AC00](v17);
              (*(v20 + 16))(&v28[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
              v12 = sub_197616200();
              v14 = v21;
            }
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          sub_19759425C(v31);
        }

        else
        {
          sub_1975CFB0C(v31, &qword_1EAF34930, &unk_19761DB90);
          v12 = 0;
          v14 = 0;
        }

        *&v29[0] = v12;
        *(&v29[0] + 1) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
        v22 = sub_197616200();
        MEMORY[0x19A8E2A50](v22);

        MEMORY[0x19A8E2A50](34, 0xE100000000000000);
        v11 = v33;
        v10 = v34;
      }

      sub_1975C0DA4(&v35);
      v40 = v3;
      v23 = *(v3 + 16);
      if (v23 >= *(v3 + 24) >> 1)
      {
        sub_197553D0C();
        v3 = v40;
      }

      *(v3 + 16) = v23 + 1;
      v24 = v3 + 16 * v23;
      *(v24 + 32) = v11;
      *(v24 + 40) = v10;
      v4 += 64;
      --v2;
    }

    while (v2);
  }

  v35 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_1975CFB68();
  v25 = sub_197616170();

  return v25;
}

uint64_t CoreRule.Predicate.Query.id.getter()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_21_4();
    v10 = v1;
    v11 = 0xE900000000000020;
    LOBYTE(v13) = *v0;
    v2 = CoreRule.Predicate.Operator.rawValue.getter();
    MEMORY[0x19A8E2A50](v2);

    MEMORY[0x19A8E2A50](46, 0xE100000000000000);
    MEMORY[0x19A8E2A50](*(v0 + 8), *(v0 + 16));
    return v10;
  }

  else
  {
    v4 = *(v0 + 16);
    v13 = *(v0 + 8);
    v14 = v4;

    MEMORY[0x19A8E2A50](32, 0xE100000000000000);
    LOBYTE(v10) = *v0;
    v5 = CoreRule.Predicate.Operator.rawValue.getter();
    MEMORY[0x19A8E2A50](v5);

    MEMORY[0x19A8E2A50](8736, 0xE200000000000000);
    sub_1975CF4F0(v0 + 32, &v10, &qword_1EAF34930, &unk_19761DB90);
    if (v12)
    {
      v6 = sub_19759CAB0();
      v8 = v7;
      sub_19759425C(&v10);
    }

    else
    {
      sub_1975CFB0C(&v10, &qword_1EAF34930, &unk_19761DB90);
      v6 = 0;
      v8 = 0;
    }

    v10 = v6;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
    v9 = sub_197616200();
    MEMORY[0x19A8E2A50](v9);

    MEMORY[0x19A8E2A50](34, 0xE100000000000000);
    return v13;
  }
}

BOOL static CoreRule.Predicate.Query.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_1975CBEAC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (sub_197616EF0() & 1) == 0 || a1[24] != a2[24])
  {
    return 0;
  }

  sub_1975CF4F0((a1 + 32), v12, &qword_1EAF34930, &unk_19761DB90);
  sub_1975CF4F0((a2 + 32), &v14, &qword_1EAF34930, &unk_19761DB90);
  if (v13)
  {
    sub_1975CF4F0(v12, v11, &qword_1EAF34930, &unk_19761DB90);
    if (*(&v15 + 1))
    {
      v10[0] = v14;
      v10[1] = v15;
      v8 = sub_1975CC8B8(v11, v10, v5, v6, v7);
      sub_19759425C(v10);
      sub_19759425C(v11);
      sub_1975CFB0C(v12, &qword_1EAF34930, &unk_19761DB90);
      return (v8 & 1) != 0;
    }

    sub_19759425C(v11);
  }

  else if (!*(&v15 + 1))
  {
    sub_1975CFB0C(v12, &qword_1EAF34930, &unk_19761DB90);
    return 1;
  }

  sub_1975CFB0C(v12, &qword_1EAF34EA0, &qword_19761DBA0);
  return 0;
}

uint64_t sub_1975CE1D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197616EF0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1975CE334(char a1)
{
  result = 0x6F6974617265706FLL;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975CE3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975CE1D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975CE3D8(uint64_t a1)
{
  v2 = sub_1975CE868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CE414(uint64_t a1)
{
  v2 = sub_1975CE868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Predicate.Query.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EA8, &qword_19761DBA8);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975CE868();
  sub_197617260();
  v17[15] = *v3;
  v17[14] = 0;
  sub_1975CA944();
  OUTLINED_FUNCTION_16_6();
  sub_197616E60();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    v17[13] = 1;
    sub_197616E30();
    v17[12] = *(v3 + 24);
    v17[11] = 2;
    sub_1975CE8BC();
    OUTLINED_FUNCTION_16_6();
    sub_197616E60();
    v17[10] = 3;
    sub_19759ECEC();
    OUTLINED_FUNCTION_16_6();
    sub_197616E20();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t CoreRule.Predicate.Query.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EC0, &unk_19761DBB0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975CE868();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = 0;
  sub_19756B490();
  OUTLINED_FUNCTION_3_20();
  sub_197616DC0();
  v16[0] = v14;
  LOBYTE(v14) = 1;
  v17 = sub_197616D90();
  v18 = v10;
  v22 = 2;
  sub_1975CE910();
  OUTLINED_FUNCTION_3_20();
  sub_197616DC0();
  v19 = 1;
  v22 = 3;
  sub_19756BBB0();
  OUTLINED_FUNCTION_3_20();
  sub_197616D80();
  v11 = OUTLINED_FUNCTION_3_7();
  v12(v11);
  v20 = v14;
  v21 = v15;
  sub_1975C0C8C(v16, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1975C0DA4(v16);
}

unint64_t sub_1975CE868()
{
  result = qword_1EAF34EB0;
  if (!qword_1EAF34EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EB0);
  }

  return result;
}

unint64_t sub_1975CE8BC()
{
  result = qword_1EAF34EB8;
  if (!qword_1EAF34EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EB8);
  }

  return result;
}

unint64_t sub_1975CE910()
{
  result = qword_1EAF34EC8;
  if (!qword_1EAF34EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EC8);
  }

  return result;
}

uint64_t sub_1975CE964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746C6966 && a2 == 0xE600000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

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

uint64_t sub_1975CEA28(char a1)
{
  if (a1)
  {
    return 0x676E6970756F7267;
  }

  else
  {
    return 0x7265746C6966;
  }
}

uint64_t sub_1975CEA5C(void *a1, int a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EF0, &qword_19761DE98);
  v4 = OUTLINED_FUNCTION_0(v3);
  v30 = v5;
  v31 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34EF8, &qword_19761DEA0);
  OUTLINED_FUNCTION_0(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F00, &qword_19761DEA8);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v29 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975CFA10();
  sub_197617260();
  v27 = (v20 + 8);
  if (v32)
  {
    v34 = 1;
    sub_1975CFA64();
    sub_197616DE0();
    (*(v30 + 8))(v10, v31);
  }

  else
  {
    v33 = 0;
    sub_1975CFAB8();
    sub_197616DE0();
    (*(v12 + 8))(v17, v29);
  }

  return (*v27)(v25, v18);
}

uint64_t sub_1975CECE8(unint64_t a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F20, &qword_19761DEB0);
  OUTLINED_FUNCTION_0(v51);
  v49 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F28, &qword_19761DEB8);
  OUTLINED_FUNCTION_0(v8);
  v48 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F30, &unk_19761DEC0);
  OUTLINED_FUNCTION_0(v15);
  v50 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(a1, *(a1 + 24));
  sub_1975CFA10();
  v23 = v52;
  sub_197617240();
  if (v23)
  {
    goto LABEL_8;
  }

  v46 = v8;
  v47 = v14;
  v52 = a1;
  v24 = v51;
  v25 = sub_197616DD0();
  result = sub_1975CB7D0(v25, 0);
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v34 = sub_197616A70();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E78, &qword_19761D450) + 48);
    *v36 = &_s5QueryV4KindON;
    sub_197616D40();
    sub_197616A60();
    v38 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_18(v34);
    (*(v39 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v21, v15);
    a1 = v52;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return a1;
  }

  v45 = 0;
  if (v28 < (v29 >> 1))
  {
    a1 = *(v27 + v28);
    sub_1975CB7C8(v28 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (a1)
      {
        LODWORD(v48) = a1;
        v54 = 1;
        sub_1975CFA64();
        OUTLINED_FUNCTION_19_3();
        swift_unknownObjectRelease();
        (*(v49 + 8))(v7, v24);
        v41 = OUTLINED_FUNCTION_4_19();
        v42(v41);
        a1 = v48;
      }

      else
      {
        v53 = 0;
        sub_1975CFAB8();
        v40 = v47;
        OUTLINED_FUNCTION_19_3();
        swift_unknownObjectRelease();
        (*(v48 + 8))(v40, v46);
        v43 = OUTLINED_FUNCTION_4_19();
        v44(v43);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975CF19C@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Query.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975CF1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975CE964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975CF1F4(uint64_t a1)
{
  v2 = sub_1975CFA10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CF230(uint64_t a1)
{
  v2 = sub_1975CFA10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CF26C(uint64_t a1)
{
  v2 = sub_1975CFAB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CF2A8(uint64_t a1)
{
  v2 = sub_1975CFAB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CF2E4(uint64_t a1)
{
  v2 = sub_1975CFA64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975CF320(uint64_t a1)
{
  v2 = sub_1975CFA64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975CF35C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1975CECE8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

double static CoreRule.Predicate.Query.filter<A, B>(operation:keyPath:value:)@<D0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v42 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v5 = v42;
  __swift_allocate_boxed_opaque_existential_0(v41);
  OUTLINED_FUNCTION_18(v5);
  (*(v6 + 16))();
  v7 = AnyKeyPath.stringValue.getter();
  v9 = v8;
  v10 = sub_1975CF4F0(v41, v39, &qword_1EAF34340, &unk_19761C8E0);
  *(a3 + 24) = 0;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *a3 = v4;
  if (v40)
  {
    OUTLINED_FUNCTION_22_4(v10, v11, v12, v13, v14, v15, v16, v17, v36[0], v36[1], v36[2], v36[3], v37, *(&v37 + 1), v38, *(&v38 + 1), v39[0]);
    sub_19756D528(v36, &v37);
    v18 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v26, v27, v28, v29, v30, v31, v32, v33);
    v37 = 0u;
    v38 = 0u;
  }

  result = *&v37;
  v35 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v35;
  return result;
}

uint64_t sub_1975CF4F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

double sub_1975CF564@<D0>(void *a1@<X0>, char a2@<W5>, uint64_t a3@<X8>)
{
  v42 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v5 = v42;
  __swift_allocate_boxed_opaque_existential_0(v41);
  OUTLINED_FUNCTION_18(v5);
  (*(v6 + 16))();
  v7 = AnyKeyPath.stringValue.getter();
  v9 = v8;
  v10 = sub_1975CF4F0(v41, v39, &qword_1EAF34340, &unk_19761C8E0);
  *(a3 + 24) = 0;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *a3 = a2;
  if (v40)
  {
    OUTLINED_FUNCTION_22_4(v10, v11, v12, v13, v14, v15, v16, v17, v36[0], v36[1], v36[2], v36[3], v37, *(&v37 + 1), v38, *(&v38 + 1), v39[0]);
    sub_19756D528(v36, &v37);
    v18 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_11_9(v26, v27, v28, v29, v30, v31, v32, v33);
    v37 = 0u;
    v38 = 0u;
  }

  result = *&v37;
  v35 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v35;
  return result;
}

double sub_1975CF6BC@<D0>(char a1@<W4>, uint64_t a2@<X8>)
{
  v4 = AnyKeyPath.stringValue.getter();
  *(a2 + 24) = 1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *a2 = a1;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10TipKitCore10AnyCodableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1975CF734(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1975CF774(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *_s5QueryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975CF8B4()
{
  result = qword_1EAF34ED0;
  if (!qword_1EAF34ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34ED0);
  }

  return result;
}

unint64_t sub_1975CF90C()
{
  result = qword_1EAF34ED8;
  if (!qword_1EAF34ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34ED8);
  }

  return result;
}

unint64_t sub_1975CF964()
{
  result = qword_1EAF34EE0;
  if (!qword_1EAF34EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EE0);
  }

  return result;
}

unint64_t sub_1975CF9BC()
{
  result = qword_1EAF34EE8;
  if (!qword_1EAF34EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34EE8);
  }

  return result;
}

unint64_t sub_1975CFA10()
{
  result = qword_1EAF34F08;
  if (!qword_1EAF34F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F08);
  }

  return result;
}

unint64_t sub_1975CFA64()
{
  result = qword_1EAF34F10;
  if (!qword_1EAF34F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F10);
  }

  return result;
}

unint64_t sub_1975CFAB8()
{
  result = qword_1EAF34F18;
  if (!qword_1EAF34F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F18);
  }

  return result;
}

uint64_t sub_1975CFB0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_18(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1975CFB68()
{
  result = qword_1EAF33ED8;
  if (!qword_1EAF33ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF347B8, &qword_197619800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33ED8);
  }

  return result;
}

_BYTE *sub_1975CFBCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975CFCCC()
{
  result = qword_1EAF34F50;
  if (!qword_1EAF34F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F50);
  }

  return result;
}

unint64_t sub_1975CFD24()
{
  result = qword_1EAF34F58;
  if (!qword_1EAF34F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F58);
  }

  return result;
}

unint64_t sub_1975CFD7C()
{
  result = qword_1EAF34F60;
  if (!qword_1EAF34F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F60);
  }

  return result;
}

unint64_t sub_1975CFDD4()
{
  result = qword_1EAF34F68;
  if (!qword_1EAF34F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F68);
  }

  return result;
}

unint64_t sub_1975CFE2C()
{
  result = qword_1EAF34F70;
  if (!qword_1EAF34F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F70);
  }

  return result;
}

unint64_t sub_1975CFE84()
{
  result = qword_1EAF34F78;
  if (!qword_1EAF34F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F78);
  }

  return result;
}

unint64_t sub_1975CFEDC()
{
  result = qword_1EAF34F80;
  if (!qword_1EAF34F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34F80);
  }

  return result;
}

uint64_t static CoreRule.Predicate.Subpredicate.maxAge(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1975CFF48(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_197553D0C();
    v3 = (a1 + 48);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      if (*v3)
      {
        sub_197616A20();

        v12 = 0xD000000000000015;
        v13 = 0x8000000197624980;
      }

      else
      {
        sub_197616A20();

        OUTLINED_FUNCTION_10_10();
        v12 = v6;
        v13 = 0xEE00202D20776F6ELL;
      }

      v7 = sub_197617280();
      MEMORY[0x19A8E2A50](v7);

      v8 = *(v14 + 16);
      if (v8 >= *(v14 + 24) >> 1)
      {
        sub_197553D0C();
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v12;
      *(v9 + 40) = v13;
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_197559AAC(&qword_1EAF33ED8, &qword_1EAF347B8, &qword_197619800);
  v10 = sub_197616170();

  return v10;
}

unint64_t CoreRule.Predicate.Subpredicate.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    sub_197616A20();

    v6 = 0xD000000000000015;
  }

  else
  {
    sub_197616A20();

    OUTLINED_FUNCTION_10_10();
    v6 = v3;
  }

  v4 = sub_197617280();
  MEMORY[0x19A8E2A50](v4);

  return v6;
}

uint64_t sub_1975D020C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v39 = a1;
  v46 = a4;
  v44 = sub_1976157A0();
  v4 = OUTLINED_FUNCTION_0(v44);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = OUTLINED_FUNCTION_7_10(v9, v39);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  OUTLINED_FUNCTION_13(v45);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_5();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v39 - v28;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_13(v40);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  (*(v24 + 16))(v29, *v39, v22);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_11();
  sub_197559AAC(v33, &qword_1EAF34B28, &qword_19761B8C8);
  sub_1976157E0();
  _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
  (*(v13 + 8))(v18, v10);
  sub_1976157D0();
  (*(v6 + 104))(v43, *MEMORY[0x1E6968C28], v44);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  v35 = v46;
  v46[3] = v34;
  v35[4] = sub_1975920D8();
  __swift_allocate_boxed_opaque_existential_0(v35);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v36, &qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_3_21();
  sub_197559AAC(v37, &qword_1EAF34B20, &unk_19761E5E0);
  OUTLINED_FUNCTION_6_9(&qword_1ED816CD8);
  return sub_1976156C0();
}

uint64_t sub_1975D05E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v40 = a2;
  v36 = a1;
  v41 = sub_1976157A0();
  v6 = OUTLINED_FUNCTION_0(v41);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = OUTLINED_FUNCTION_7_10(v11, v35);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  OUTLINED_FUNCTION_13(v42);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  OUTLINED_FUNCTION_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_13(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  (*(v21 + 16))(v26, *v36, v19);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_11();
  sub_197559AAC(v31, &qword_1EAF34B28, &qword_19761B8C8);
  sub_1976157E0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
  sub_1976157D0();
  (*(v8 + 104))(v39, *MEMORY[0x1E6968C28], v41);
  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B38, &qword_19761E620);
  a5[4] = sub_1975920D8();
  __swift_allocate_boxed_opaque_existential_0(a5);
  OUTLINED_FUNCTION_4_20();
  sub_197559AAC(v32, &qword_1EAF34B30, &qword_19761E5F0);
  OUTLINED_FUNCTION_3_21();
  sub_197559AAC(v33, &qword_1EAF34B20, &unk_19761E5E0);
  OUTLINED_FUNCTION_6_9(&qword_1ED816CD8);
  return sub_1976156C0();
}

uint64_t sub_1975D0968@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FD0, &qword_19761E628);
  a1[4] = sub_1975D1BA8();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1976157D0();
}

uint64_t static CoreRule.Predicate.Subpredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  if (a1[2])
  {
    if (!v8)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  return sub_1976172C0();
}

uint64_t sub_1975D0A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65674178616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6470557265746661 && a2 == 0xEB00000000657461)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

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

uint64_t sub_1975D0AE4(char a1)
{
  if (a1)
  {
    return 0x6470557265746661;
  }

  else
  {
    return 0x65674178616DLL;
  }
}

uint64_t sub_1975D0B20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197616EF0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1975D0B9C(uint64_t a1)
{
  v2 = sub_1975D106C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D0BD8(uint64_t a1)
{
  v2 = sub_1975D106C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975D0C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D0A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D0C44(uint64_t a1)
{
  v2 = sub_1975D1018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D0C80(uint64_t a1)
{
  v2 = sub_1975D1018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1975D0CBC(uint64_t a1)
{
  v2 = sub_1975D10C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D0CF8(uint64_t a1)
{
  v2 = sub_1975D10C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreRule.Predicate.Subpredicate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F88, &qword_19761E180);
  v5 = OUTLINED_FUNCTION_0(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F90, &qword_19761E188);
  v12 = OUTLINED_FUNCTION_0(v11);
  v33 = v13;
  v34 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34F98, &qword_19761E190);
  OUTLINED_FUNCTION_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_5();
  v25 = v1[1];
  v38 = *v1;
  v39 = v25;
  v26 = *(v1 + 16);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D1018();
  sub_197617260();
  if (v26)
  {
    LOBYTE(v40) = 1;
    sub_1975D106C();
    v28 = v35;
    OUTLINED_FUNCTION_11_10();
    sub_197616DE0();
    v40 = v38;
    v41 = v39;
    v29 = v37;
    sub_197616E60();
    (*(v36 + 8))(v28, v29);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_1975D10C0();
    OUTLINED_FUNCTION_11_10();
    sub_197616DE0();
    v40 = v38;
    v41 = v39;
    v30 = v34;
    sub_197616E60();
    (*(v33 + 8))(v18, v30);
  }

  return (*(v21 + 8))(v2, v19);
}

unint64_t sub_1975D1018()
{
  result = qword_1ED8156F0;
  if (!qword_1ED8156F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156F0);
  }

  return result;
}

unint64_t sub_1975D106C()
{
  result = qword_1ED8156C8;
  if (!qword_1ED8156C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156C8);
  }

  return result;
}

unint64_t sub_1975D10C0()
{
  result = qword_1EAF341F0;
  if (!qword_1EAF341F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF341F0);
  }

  return result;
}

uint64_t CoreRule.Predicate.Subpredicate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FA0, &qword_19761E198);
  v5 = OUTLINED_FUNCTION_0(v4);
  v56 = v6;
  v57 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FA8, &qword_19761E1A0);
  OUTLINED_FUNCTION_0(v12);
  v55 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FB0, &unk_19761E1A8);
  OUTLINED_FUNCTION_0(v19);
  v58 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_5();
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D1018();
  v25 = v61;
  sub_197617240();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v53 = v12;
  v54 = v18;
  v61 = a1;
  v26 = v59;
  v27 = sub_197616DD0();
  result = sub_1975CB7D0(v27, 0);
  if (v30 == v31 >> 1)
  {
    goto LABEL_8;
  }

  v52 = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    sub_1975CB7C8(v30 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      v51 = v32;
      if (v32)
      {
        LOBYTE(v60) = 1;
        sub_1975D106C();
        v37 = v11;
        OUTLINED_FUNCTION_11_10();
        v38 = v52;
        sub_197616D30();
        if (!v38)
        {
          v39 = v57;
          OUTLINED_FUNCTION_12_10();
          swift_unknownObjectRelease();
          v47 = v56;
LABEL_13:
          (*(v47 + 8))(v37, v39);
          v48 = OUTLINED_FUNCTION_8_14();
          v49(v48);
          *v26 = v60;
          *(v26 + 16) = v51;
          return __swift_destroy_boxed_opaque_existential_0Tm(v61);
        }
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_1975D10C0();
        v37 = v54;
        OUTLINED_FUNCTION_11_10();
        v44 = v52;
        sub_197616D30();
        if (!v44)
        {
          v39 = v53;
          OUTLINED_FUNCTION_12_10();
          swift_unknownObjectRelease();
          v47 = v55;
          goto LABEL_13;
        }
      }

      v45 = OUTLINED_FUNCTION_8_14();
      v46(v45);
      swift_unknownObjectRelease();
      a1 = v61;
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

LABEL_8:
    v40 = sub_197616A70();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E78, &qword_19761D450) + 48);
    *v42 = &type metadata for CoreRule.Predicate.Subpredicate;
    sub_197616D40();
    sub_197616A60();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v2, v19);
    a1 = v61;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_1975D1638@<X0>(unint64_t *a1@<X8>)
{
  result = CoreRule.Predicate.Subpredicate.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s12SubpredicateOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s12SubpredicateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *_s12SubpredicateO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1975D17E4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1975D1894()
{
  result = qword_1EAF34FB8;
  if (!qword_1EAF34FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FB8);
  }

  return result;
}

unint64_t sub_1975D18EC()
{
  result = qword_1EAF34FC0;
  if (!qword_1EAF34FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FC0);
  }

  return result;
}

unint64_t sub_1975D1944()
{
  result = qword_1EAF34FC8;
  if (!qword_1EAF34FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FC8);
  }

  return result;
}

unint64_t sub_1975D199C()
{
  result = qword_1ED8156D0;
  if (!qword_1ED8156D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156D0);
  }

  return result;
}

unint64_t sub_1975D19F4()
{
  result = qword_1ED8156D8;
  if (!qword_1ED8156D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156D8);
  }

  return result;
}

unint64_t sub_1975D1A4C()
{
  result = qword_1ED8156B8;
  if (!qword_1ED8156B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156B8);
  }

  return result;
}

unint64_t sub_1975D1AA4()
{
  result = qword_1ED8156C0;
  if (!qword_1ED8156C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156C0);
  }

  return result;
}

unint64_t sub_1975D1AFC()
{
  result = qword_1ED8156E0;
  if (!qword_1ED8156E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156E0);
  }

  return result;
}

unint64_t sub_1975D1B54()
{
  result = qword_1ED8156E8;
  if (!qword_1ED8156E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156E8);
  }

  return result;
}

unint64_t sub_1975D1BA8()
{
  result = qword_1EAF34FD8;
  if (!qword_1EAF34FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34FD0, &qword_19761E628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF34FD8);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static CoreRuleProtocol.makeIdentifier(prefix:operation:subrules:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *a3;
  v24 = a2;

  OUTLINED_FUNCTION_1_23();
  LOBYTE(v20[0]) = v5;
  v6 = CoreRule.Predicate.Operator.rawValue.getter();
  MEMORY[0x19A8E2A50](v6);

  MEMORY[0x19A8E2A50](23336, 0xE200000000000000);
  v7 = *(a4 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_197553D0C();
    v8 = v23;
    v9 = a4 + 32;
    do
    {
      sub_19755A560(v9, v20);
      v10 = v21;
      v11 = v22;
      __swift_project_boxed_opaque_existential_1Tm(v20, v21);
      v12 = (*(v11 + 24))(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v23 = v8;
      v15 = *(v8 + 16);
      if (v15 >= *(v8 + 24) >> 1)
      {
        sub_197553D0C();
        v8 = v23;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  v20[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF347B8, &qword_197619800);
  sub_1975CFB68();
  v17 = sub_197616170();
  v19 = v18;

  MEMORY[0x19A8E2A50](v17, v19);

  MEMORY[0x19A8E2A50](10589, 0xE200000000000000);
}

uint64_t static CoreRuleProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_197616EF0();
  }

  return v12 & 1;
}

void sub_1975D1EC4()
{
  v1 = *v0;
  sub_1975D20D0();
  *v0 = v2;
}

void sub_1975D1F14()
{
  v1 = *v0;
  sub_1975D20D0();
  *v0 = v2;
}

uint64_t sub_1975D1FC4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1975D21EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1975D1FE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1975D2304(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1975D2004(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1975D24B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1975D2024(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1975D25D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1975D2044(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1975D26D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1975D2064()
{
  v1 = *v0;
  sub_197553D48();
  *v0 = v2;
}

uint64_t sub_1975D20B0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1975D28CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1975D20D0()
{
  OUTLINED_FUNCTION_4_21();
  if ((v6 & 1) == 0)
  {
    v8 = v3;
    goto LABEL_8;
  }

  v7 = *(v0 + 24);
  v8 = v7 >> 1;
  if ((v7 >> 1) >= v3)
  {
    goto LABEL_8;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= v3)
    {
      v8 = v3;
    }

LABEL_8:
    v9 = *(v0 + 16);
    if (v8 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 32);
      if (v2)
      {
LABEL_13:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_16:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_5_13();
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1975D21EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AA0, &qword_19761E6B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1975BC2B0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349B0, &qword_19761B200);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1975D2304(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35018, &qword_19761E690);
  v10 = *(type metadata accessor for CoreTip.ConstellationAction() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CoreTip.ConstellationAction() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1975BC2D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1975D24B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35020, &qword_19761E698);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1975BC2F0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35028, &unk_19761E6A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D25D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A98, &unk_19761B6C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1975BC318((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D26D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FE8, &qword_19761E660);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_1975BC338((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D27BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35000, &qword_19761E678);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1975BC440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35008, &qword_19761E680);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D28CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FF0, &qword_19761E668);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1975BC440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34FF8, &qword_19761E670);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1975D29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v14, v15, v16);
  v23 = a1;
  v24 = a2;

  OUTLINED_FUNCTION_1_23();
  sub_19756D844(a5, a6);
  v17 = 0xE800000000000000;
  v18 = 0x646E756F706D6F63;
  switch(v22[15])
  {
    case 1:
      break;
    case 2:
      v17 = 0xE500000000000000;
      v18 = 0x746E657665;
      break;
    case 3:
      v17 = 0xE500000000000000;
      v18 = 0x6574617473;
      break;
    case 4:
      v17 = 0xE900000000000072;
      v18 = OUTLINED_FUNCTION_2_18();
      break;
    case 5:
      v17 = 0xE600000000000000;
      v18 = 0x656369766564;
      break;
    default:
      v17 = 0xE700000000000000;
      v18 = OUTLINED_FUNCTION_3_22();
      break;
  }

  MEMORY[0x19A8E2A50](v18, v17);

  OUTLINED_FUNCTION_1_23();
  v19 = (*(a6 + 16))(a5, a6);
  MEMORY[0x19A8E2A50](v19);

  OUTLINED_FUNCTION_1_23();
  MEMORY[0x19A8E2A50](*(a3 + OBJC_IVAR___Predicate_id), *(a3 + OBJC_IVAR___Predicate_id + 8));
  v20 = v23;
  (*(v11 + 8))(v14, a5);
  return v20;
}

unint64_t CoreRule.Status.init(rawValue:)(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t CoreRule.Status.init(isSatisfied:)(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1975D2C24()
{
  result = qword_1EAF35030;
  if (!qword_1EAF35030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35030);
  }

  return result;
}

unint64_t sub_1975D2C78@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CoreRule.Status.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1975D2CA4@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Status.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

_BYTE *_s6StatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t CoreRule.Subrules.init(id:subrules:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t CoreRule.Subrules.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1975D2E2C(uint64_t a1)
{
  result = sub_1975D2E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1975D2E54()
{
  result = qword_1ED8156F8;
  if (!qword_1ED8156F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156F8);
  }

  return result;
}

uint64_t sub_1975D2EA8@<X0>(uint64_t *a1@<X8>)
{
  result = CoreRule.Subrules.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975D2EE0(char a1)
{
  v2 = 0xE800000000000000;
  v3 = 0x646E756F706D6F63;
  switch(a1)
  {
    case 1:
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x746E657665;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6574617473;
      break;
    case 4:
      v2 = 0xE900000000000072;
      v3 = 0x6574656D61726170;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x656369766564;
      break;
    default:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
  }

  MEMORY[0x19A8E2A50](v3, v2);
}

void sub_1975D2FC0(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  CoreRuleRecord.id.getter();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_1975D2FE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CoreRuleRecord.id.setter();
}

uint64_t CoreRuleRecord.id.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v0, v1);
  OUTLINED_FUNCTION_43_2();
  sub_197615B10();
}

uint64_t sub_1975D30EC()
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
  sub_197615E70();
}

uint64_t sub_1975D31A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1975D30EC();
}

uint64_t (*CoreRuleRecord.id.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  CoreRuleRecord.id.getter();
  *a1 = v3;
  a1[1] = v4;
  return sub_1975D3208;
}

uint64_t sub_1975D3208(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    CoreRuleRecord.id.setter();
  }

  else
  {
    v7 = *a1;
    return CoreRuleRecord.id.setter();
  }
}

uint64_t sub_1975D3398(uint64_t a1, uint64_t *a2)
{
  v4 = sub_197615A60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  v12 = *a2;
  return CoreRuleRecord.dateCreated.setter(v10);
}

uint64_t CoreRuleRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v2, v3);
  OUTLINED_FUNCTION_15_5();

  v4 = sub_197615A60();
  OUTLINED_FUNCTION_7_5(v4);
  return (*(v5 + 8))(a1);
}

uint64_t sub_1975D3518()
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
  sub_1975600FC(&qword_1ED816D90, MEMORY[0x1E6969530]);
  sub_197615E70();
}

uint64_t sub_1975D35F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975D3518();
}

void (*CoreRuleRecord.dateCreated.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreRuleRecord.dateCreated.getter();
  return sub_1975D36E0;
}

void sub_1975D36E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CoreRuleRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CoreRuleRecord.dateCreated.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1975D3794@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CoreRuleRecord.predicate.getter(a1);
  *a2 = result;
  return result;
}

void sub_1975D37C0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  CoreRuleRecord.predicate.setter(v2);
}

void CoreRuleRecord.predicate.setter(void *a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v2, v3);
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1975D3890()
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
  sub_197615DF0();
}

uint64_t sub_1975D3930()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975D3890();
}

void (*CoreRuleRecord.predicate.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreRuleRecord.predicate.getter(a1);
  return sub_1975D3994;
}

void sub_1975D3994(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    CoreRuleRecord.predicate.setter(v2);
  }

  else
  {
    CoreRuleRecord.predicate.setter(*a1);
  }
}

uint64_t sub_1975D39FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_197574BA8();
}

uint64_t sub_1975D3A28(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = sub_19757649C();
  *v1 = result;
  return result;
}

uint64_t sub_1975D3A50(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_33_2(a1, a2);

  OUTLINED_FUNCTION_5_14();
  return sub_1975747FC(v2, v3, v4, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3ACC(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_0(a1);
  result = sub_19757F8B8(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1975D3AF4(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_33_2(a1, a2);

  OUTLINED_FUNCTION_4_22();
  return sub_1975747FC(v2, v3, v4, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3B78(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = sub_1975D3B3C();
  *v1 = result;
  return result;
}

uint64_t sub_1975D3BA0(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_33_2(a1, a2);

  OUTLINED_FUNCTION_29_2();
  return sub_1975747FC(v2, v3, v4, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3BE8(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = sub_19759252C();
  *v1 = result;
  return result;
}

uint64_t sub_1975D3C10(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_33_2(a1, a2);

  OUTLINED_FUNCTION_28_2();
  return sub_1975747FC(v2, v3, v4, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1975D3D5C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_0(a1);
  result = sub_1975D3C58(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1975D3D84(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_33_2(a1, a2);

  OUTLINED_FUNCTION_30_4();
  return sub_1975747FC(v2, v3, v4, MEMORY[0x1E69E7CF8]);
}

uint64_t sub_1975D3E00()
{
  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
  sub_197567D64();
  sub_197615E60();
}

uint64_t sub_1975D3EBC(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreRuleRecord.status.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1975D3EE4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CoreRuleRecord.status.setter();
}

uint64_t (*CoreRuleRecord.status.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = CoreRuleRecord.status.getter();
  return sub_1975D3F7C;
}

uint64_t sub_1975D3F7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return CoreRuleRecord.status.setter();
}

uint64_t sub_1975D3FA4(uint64_t a1)
{
  v1 = sub_19757F8B8(a1);
  if (v1)
  {
    v2 = v1;
    sub_1975D3FA4();
    OUTLINED_FUNCTION_42();

    return v2;
  }

  else
  {
  }
}

uint64_t CoreRuleRecord.description.getter()
{
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD000000000000015, 0x80000001976249A0);
  sub_197575854(&v5);
  sub_1975D2EE0(v5);
  MEMORY[0x19A8E2A50](0x203A706974202CLL, 0xE700000000000000);
  if (sub_197576674())
  {
    CoreTipRecord.id.getter();
    v1 = v0;
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x19A8E2A50](v1, v3);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v6;
}

uint64_t CoreRuleRecord.__allocating_init(id:predicate:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CoreRuleRecord.init(id:predicate:)(a1, a2, a3);
  return v9;
}

uint64_t *CoreRuleRecord.init(id:predicate:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  v5 = sub_197615A60();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v3[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35038, &qword_19761E8A8);
  OUTLINED_FUNCTION_0_27();
  v16 = sub_1975600FC(v14, v15);
  v3[7] = OUTLINED_FUNCTION_19_4(v16);
  __swift_allocate_boxed_opaque_existential_0(v3 + 3);
  sub_197615DC0();
  v27 = *v3;
  sub_19756C0A4();
  sub_197615A50();
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_10();
  sub_1975600FC(v17, v18);
  OUTLINED_FUNCTION_27_2();
  sub_197615BE0();

  (*(v8 + 8))(v13, v5);
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_27_2();
  sub_197615BE0();

  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_27_2();
  sub_197615BE0();

  sub_19756C2E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  sub_1976160B0();
  sub_19756C220();
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreTipRecord();
  OUTLINED_FUNCTION_23_4();
  sub_1975600FC(v19, v20);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 17) = 0;
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 18) = 0;
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreParameterRecord();
  OUTLINED_FUNCTION_21_5();
  sub_1975600FC(v21, v22);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 19) = 0;
  OUTLINED_FUNCTION_7_11();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreEventRecord();
  OUTLINED_FUNCTION_20_5();
  sub_1975600FC(v23, v24);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_27_2();
  sub_197615BF0();

  *(v3 + 20) = 0;
  sub_19756C134(v3 + 3, v3 + 21);
  sub_197615B30();
  CoreRuleRecord.id.setter();
  v25 = a3;
  CoreRuleRecord.predicate.setter(a3);

  return v3;
}

uint64_t sub_1975D45A4(uint64_t a1, uint64_t *a2)
{
  sub_19755A560(a1, v5);
  v3 = *a2;
  return CoreRuleRecord.persistentBackingData.setter(v5);
}

uint64_t (*CoreRuleRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t CoreRuleRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore14CoreRuleRecord___observationRegistrar;
  v2 = sub_197615B40();
  OUTLINED_FUNCTION_7_5(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

void sub_1975D46B8(void *a1@<X8>)
{
  v3 = *v1;
  CoreRuleRecord.id.getter();
  *a1 = v4;
  a1[1] = v5;
}

uint64_t CoreRuleRecord.hashValue.getter()
{
  v1 = *v0;
  sub_197617190();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v2, v3);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975D47A4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

uint64_t sub_1975D4844()
{
  v1 = *v0;
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
  return sub_197615E20();
}

uint64_t sub_1975D48B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_1975D49D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975D4A40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975D3E00();
}

uint64_t sub_1975D4A5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_197574C94();
}

uint64_t sub_1975D4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1975737F0(a1, a2, a3, a7, a8, a9);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  sub_19755A560(a4, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35068, &qword_19761ED00);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_10:
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_197616A20();

    v30 = 0xD00000000000002ELL;
    v31 = 0x8000000197624A80;
    v24 = (*(a9 + 24))(a8, a9);
    MEMORY[0x19A8E2A50](v24);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v25 = v30;
    v15 = v31;
    sub_19759228C();
    swift_allocError();
    *v26 = v25;
    v26[1] = v15;
    swift_willThrow();
    return v15;
  }

  CoreRuleRecord.update(tip:parent:)(a5, a6);
  swift_getKeyPath();
  (*(a9 + 32))(&v30, a8, a9);
  sub_197574C4C();

  swift_getKeyPath();
  (*(a9 + 56))(&v30, a8, a9);
  sub_197574C4C();

  v16 = *(v29 + 16);
  if (!v16)
  {
LABEL_11:

    sub_1975D3DCC();
    return v15;
  }

  v28 = MEMORY[0x1E69E7CC0];
  result = sub_197616B00();
  v18 = 0;
  v19 = v29 + 32;
  while (v18 < *(v29 + 16))
  {
    sub_19755A560(v19, &v30);
    v20 = v32;
    v21 = v33;
    v22 = __swift_project_boxed_opaque_existential_1Tm(&v30, v32);
    sub_19757B0DC(v22, 0, v15, a7, v20, v21);
    if (v9)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v30);

      return v15;
    }

    ++v18;
    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
    sub_197616AD0();
    v23 = *(v28 + 16);
    sub_197616B10();
    sub_197616B20();
    result = sub_197616AE0();
    v19 += 40;
    if (v16 == v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1975D4DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 48);

  v10 = v9(a4, a5);
  v11 = type metadata accessor for CoreRuleRecord();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return CoreRuleRecord.init(id:predicate:)(a1, a2, v10);
}

unint64_t sub_1975D4E9C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_5(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    sub_1975D4F2C(&qword_1ED816AE0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1975D4F2C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_5(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

BOOL sub_1975D4F6C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_1975D4F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = CoreRuleRecord.predicate.getter(a1);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  sub_197575854(v13);
  if (LOBYTE(v13[0]) != 1 || (v6 = v5[OBJC_IVAR___Predicate_operation], (v6 - 7) > 1))
  {

LABEL_7:
    sub_19759228C();
    swift_allocError();
    *v7 = 0xD00000000000001ALL;
    v7[1] = 0x8000000197624BC0;
    swift_willThrow();
    return;
  }

  if (v6 == 8)
  {
    sub_1975D4F6C(2u, a2);
  }

  else
  {
    v8 = *(a2 + 16);
    v9 = (a2 + 32);
    do
    {
      if (!v8)
      {
        break;
      }

      v10 = *v9++;
      --v8;
    }

    while (v10 == 2);
  }

  CoreRuleRecord.status.setter();
  if (!*(a2 + 16))
  {
    CoreRuleRecord.status.setter();
  }

  if (CoreRuleRecord.status.getter() == v3)
  {
    goto LABEL_18;
  }

  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for logger();
  __swift_project_value_buffer(v11, qword_1ED816CA0);
  *&v13[0] = 0;
  *(&v13[0] + 1) = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0x3A646928656C7552, 0xE900000000000020);
  CoreRuleRecord.id.getter();
  MEMORY[0x19A8E2A50]();

  MEMORY[0x19A8E2A50](0xD000000000000015, 0x8000000197624B10);
  v15 = CoreRuleRecord.status.getter();
  sub_197616BC0();
  sub_197558864();

  if (!sub_19757F8B8(v12))
  {
LABEL_18:
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_197577780(v13);
    sub_197577AD0(v13);
  }
}

uint64_t CoreTip.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1975D5270@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  result = CoreTip.status.getter(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1975D52AC(__int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_197565498(&v4);
}

void sub_1975D52E4(char a1)
{
  os_unfair_lock_lock((v1 + 108));
  *(v1 + 112) = a1;

  os_unfair_lock_unlock((v1 + 108));
}

void *CoreTip.constellationContent.getter()
{
  OUTLINED_FUNCTION_13_11(OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent);
  v1 = *(v0 + 8);
  v2 = v1;
  os_unfair_lock_unlock(v0);
  return v1;
}

void sub_1975D5360(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1975D5390(v2);
}

void sub_1975D5390(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent);

  *(v1 + 8) = a1;

  os_unfair_lock_unlock(v1);
}

void sub_1975D53DC(double a1)
{
  OUTLINED_FUNCTION_13_11(OBJC_IVAR____TtC10TipKitCore7CoreTip__displayDuration);
  *(v1 + 8) = a1;

  os_unfair_lock_unlock(v1);
}

uint64_t CoreTip.description.getter()
{
  OUTLINED_FUNCTION_9_12();
  v3 = v1;
  MEMORY[0x19A8E2A50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_1975D54D0@<X0>(BOOL *a1@<X8>)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = 2560;
    sub_197565498(&v4);
  }

  *a1 = Strong == 0;
  return result;
}

uint64_t sub_1975D55C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CoreTip.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1975D5618(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  sub_197616590();
  *(v5 + 24) = sub_197616580();
  v7 = sub_197616560();

  return MEMORY[0x1EEE6DFA0](sub_1975D56B4, v7, v6);
}

uint64_t sub_1975D56B4()
{
  v17 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);

  CoreTip.status.getter(&v14);
  v4 = HIBYTE(*(v0 + 32));
  if (v14 == v3)
  {
    if (v4 == 10)
    {
      if (BYTE1(v14) == 10)
      {
        goto LABEL_9;
      }

      LOBYTE(v4) = 10;
    }

    else if (v4 == BYTE1(v14))
    {
      goto LABEL_9;
    }
  }

  v5 = *(v0 + 16);
  LOBYTE(v14) = *(v0 + 32);
  BYTE1(v14) = v4;
  sub_197565498(&v14);
  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = type metadata accessor for logger();
  __swift_project_value_buffer(v8, qword_1ED816CA0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_197616A20();

  OUTLINED_FUNCTION_9_12();
  v14 = v9;
  v15 = v10;
  MEMORY[0x19A8E2A50](*(v6 + 16), *(v6 + 24));
  MEMORY[0x19A8E2A50](0xD000000000000018, 0x8000000197624CB0);
  v16 = v7;
  v11 = CoreTip.Status.description.getter();
  MEMORY[0x19A8E2A50](v11);

  sub_197558864();

LABEL_9:
  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_1975D5884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1975D5948;

  return sub_1975D5618(a1, v4, v5, v7, v6);
}

uint64_t sub_1975D5948()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t CoreTip.ConstellationAction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_21();
}

uint64_t CoreTip.ConstellationAction.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_21();
}

uint64_t CoreTip.ConstellationAction.text.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_21();
}

uint64_t CoreTip.ConstellationAction.attrs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x70uLL);
  memcpy(a1, (v1 + 48), 0x70uLL);
  return sub_1975D5BB4(__dst, v4, &qword_1EAF35148, &unk_19761F320);
}

uint64_t type metadata accessor for CoreTip.ConstellationAction()
{
  result = qword_1ED816430;
  if (!qword_1ED816430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1975D5BB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_21();
  v7(v6);
  return a2;
}

uint64_t sub_1975D5C18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7372747461 && a2 == 0xE500000000000000;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_197616EF0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1975D5DB4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 0x7372747461;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975D5E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D5C18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D5E58(uint64_t a1)
{
  v2 = sub_1975D614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D5E94(uint64_t a1)
{
  v2 = sub_1975D614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.ConstellationAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35150, &qword_19761F330);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D614C();
  sub_197617260();
  v14 = *v3;
  v15 = v3[1];
  __dst[0] = 0;
  OUTLINED_FUNCTION_1_28();
  sub_197616E30();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    __dst[0] = 1;
    OUTLINED_FUNCTION_1_28();
    sub_197616E30();
    v18 = v3[4];
    v19 = v3[5];
    __dst[135] = 2;
    OUTLINED_FUNCTION_1_28();
    sub_197616E30();
    memcpy(__dst, v3 + 6, 0x70uLL);
    memcpy(v24, v3 + 6, sizeof(v24));
    __dst[134] = 3;
    sub_1975D5BB4(__dst, v23, &qword_1EAF35148, &unk_19761F320);
    sub_1975D61A0();
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
    memcpy(v23, v24, sizeof(v23));
    sub_1975D61F4(v23);
    v20 = *(type metadata accessor for CoreTip.ConstellationAction() + 32);
    __dst[133] = 4;
    sub_197615970();
    sub_1975D666C(&qword_1ED8161F0);
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1975D614C()
{
  result = qword_1ED815E88;
  if (!qword_1ED815E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E88);
  }

  return result;
}

unint64_t sub_1975D61A0()
{
  result = qword_1ED8161B0;
  if (!qword_1ED8161B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161B0);
  }

  return result;
}

uint64_t sub_1975D61F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35148, &unk_19761F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CoreTip.ConstellationAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35158, &qword_19761F338);
  v8 = OUTLINED_FUNCTION_0(v7);
  v26 = v9;
  v27 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = type metadata accessor for CoreTip.ConstellationAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D614C();
  v17 = v28;
  sub_197617240();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = a1;
  __src[0] = 0;
  *v15 = sub_197616D90();
  v15[1] = v18;
  __src[0] = 1;
  v15[2] = sub_197616D90();
  v15[3] = v19;
  __src[0] = 2;
  v15[4] = sub_197616D90();
  v15[5] = v20;
  __src[127] = 3;
  sub_1975B1390();
  sub_197616D80();
  v24[1] = 0;
  memcpy(v15 + 6, __src, 0x70uLL);
  sub_197615970();
  __src[126] = 4;
  sub_1975D666C(&qword_1ED816270);
  sub_197616D80();
  v21 = OUTLINED_FUNCTION_0_30();
  v22(v21);
  sub_1975D66B0(v6, v15 + *(v12 + 32));
  sub_1975D6720(v15, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return sub_1975D6784(v15);
}

uint64_t sub_1975D666C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_197615970();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975D66B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975D6720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTip.ConstellationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975D6784(uint64_t a1)
{
  v2 = type metadata accessor for CoreTip.ConstellationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1975D6838()
{
  sub_1975D68D4();
  if (v0 <= 0x3F)
  {
    sub_1975D6924();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1975D68D4()
{
  if (!qword_1ED8161A8)
  {
    v0 = sub_197616860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8161A8);
    }
  }
}

void sub_1975D6924()
{
  if (!qword_1ED8164A8)
  {
    sub_197615970();
    v0 = sub_197616860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8164A8);
    }
  }
}

_BYTE *_s19ConstellationActionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975D6A5C()
{
  result = qword_1EAF35160;
  if (!qword_1EAF35160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35160);
  }

  return result;
}

unint64_t sub_1975D6AB4()
{
  result = qword_1ED815E78;
  if (!qword_1ED815E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E78);
  }

  return result;
}

unint64_t sub_1975D6B0C()
{
  result = qword_1ED815E80;
  if (!qword_1ED815E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E80);
  }

  return result;
}

uint64_t CoreTip.ConstellationAsset.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1975D6B9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197616EF0();

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

uint64_t sub_1975D6C6C(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1975D6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D6B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D6CBC(uint64_t a1)
{
  v2 = sub_1975D6EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D6CF8(uint64_t a1)
{
  v2 = sub_1975D6EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.ConstellationAsset.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35168, &qword_19761F4E0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[0] = *(v1 + 2);
  v16[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D6EB0();
  sub_197617260();
  v19 = v12;
  v18 = 0;
  sub_1975D6F04();
  sub_197616E60();
  if (!v2)
  {
    v17 = 1;
    sub_197616E30();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1975D6EB0()
{
  result = qword_1EAF35170;
  if (!qword_1EAF35170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35170);
  }

  return result;
}

unint64_t sub_1975D6F04()
{
  result = qword_1EAF35178;
  if (!qword_1EAF35178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35178);
  }

  return result;
}

uint64_t CoreTip.ConstellationAsset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35180, &qword_19761F4E8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D6EB0();
  sub_197617240();
  if (!v2)
  {
    v21 = 0;
    sub_1975D710C();
    sub_197616DC0();
    v14 = v22;
    v20 = 1;
    v16 = sub_197616D90();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1975D710C()
{
  result = qword_1EAF35188;
  if (!qword_1EAF35188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35188);
  }

  return result;
}

uint64_t CoreTip.ConstellationAsset.AssetType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_197616D20();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t CoreTip.ConstellationAsset.AssetType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6567616D69;
  }

  else
  {
    result = 0x6C6F626D7973;
  }

  *v0;
  return result;
}

unint64_t sub_1975D7238()
{
  result = qword_1EAF35190;
  if (!qword_1EAF35190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35190);
  }

  return result;
}

uint64_t sub_1975D72A4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreTip.ConstellationAsset.AssetType.init(rawValue:)(a1);
}

uint64_t sub_1975D72B0@<X0>(uint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationAsset.AssetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_1975D73A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1975D7488()
{
  result = qword_1EAF35198;
  if (!qword_1EAF35198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35198);
  }

  return result;
}

unint64_t sub_1975D74E0()
{
  result = qword_1EAF351A0;
  if (!qword_1EAF351A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF351A0);
  }

  return result;
}

unint64_t sub_1975D7538()
{
  result = qword_1EAF351A8;
  if (!qword_1EAF351A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF351A8);
  }

  return result;
}

unint64_t sub_1975D758C()
{
  result = qword_1EAF351B0;
  if (!qword_1EAF351B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF351B0);
  }

  return result;
}

uint64_t CoreTip.ConstellationContent.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___ConstellationContent_asset + 16);
  *a1 = *(v1 + OBJC_IVAR___ConstellationContent_asset);
  *(a1 + 16) = v2;
}

id sub_1975D7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = *(a4 + 16);
  *&v4[OBJC_IVAR___ConstellationContent_title] = a1;
  *&v4[OBJC_IVAR___ConstellationContent_message] = a2;
  *&v4[OBJC_IVAR___ConstellationContent_actions] = a3;
  v11 = &v4[OBJC_IVAR___ConstellationContent_asset];
  *v11 = *a4;
  *(v11 + 2) = v10;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id CoreTip.ConstellationContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1975D773C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197616EF0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1975D7894(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x736E6F69746361;
      break;
    case 3:
      result = 0x7465737361;
      break;
    default:
      return result;
  }

  return result;
}